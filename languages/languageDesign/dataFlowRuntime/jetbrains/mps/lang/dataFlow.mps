<?xml version="1.0" encoding="UTF-8"?>
<model ref="2af156ab-65c1-4a62-bd0d-ea734f71eab6/r:a1d8bbbf-d4f0-431f-8dcd-a6badc777315(jetbrains.mps.dataFlow.runtime/jetbrains.mps.lang.dataFlow)">
  <persistence version="9" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
  </languages>
  <imports>
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="8qxk" ref="r:3dddb2c7-b2ba-4381-896a-2e702ca1fb6e(jetbrains.mps.lang.dataFlow.framework)" />
    <import index="9fia" ref="r:48cf50db-7ea3-4b1e-ab16-c3d84cbcf0df(jetbrains.mps.lang.dataFlow.framework.instructions)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
        <child id="1188214630783" name="value" index="2B76xF" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1188214545140" name="jetbrains.mps.baseLanguage.structure.AnnotationInstanceValue" flags="ng" index="2B6LJw">
        <reference id="1188214555875" name="key" index="2B6OnR" />
        <child id="1188214607812" name="value" index="2B70Vg" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
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
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
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
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
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
      <concept id="8276990574909231788" name="jetbrains.mps.baseLanguage.structure.FinallyClause" flags="ng" index="1wplmZ">
        <child id="8276990574909234106" name="finallyBody" index="1wplMD" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
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
        <child id="8276990574886367509" name="finallyClause" index="1zxBo6" />
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
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
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
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="6971016359099800069" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldSingleCommentLine" flags="ngI" index="2JaDLO">
        <child id="6971016359099801474" name="commentBody" index="2JaDBN" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690331492" name="jetbrains.mps.baseLanguage.javadoc.structure.DeprecatedBlockDocTag" flags="ng" index="TZ5HI" />
      <concept id="8465538089690324397" name="jetbrains.mps.baseLanguage.javadoc.structure.SinceBlockDocTag" flags="ng" index="TZ7YB">
        <property id="8465538089690324399" name="text" index="TZ7Y_" />
      </concept>
      <concept id="2217234381367530195" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocReference" flags="ng" index="VXe0Z">
        <reference id="2217234381367530196" name="methodDeclaration" index="VXe0S" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
      <concept id="5085607816306582224" name="jetbrains.mps.baseLanguage.javadoc.structure.InlineTagCommentTextElement" flags="ng" index="1Vtdud">
        <child id="5085607816306582225" name="tag" index="1Vtduc" />
      </concept>
      <concept id="5085607816306647746" name="jetbrains.mps.baseLanguage.javadoc.structure.LinkInlineDocTagTE" flags="ng" index="1VuXuv">
        <child id="5085607816306647747" name="reference" index="1VuXuu" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1180457458947" name="jetbrains.mps.lang.smodel.structure.Concept_GetAllSuperConcepts" flags="nn" index="3oJPKh" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
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
  <node concept="312cEu" id="3HJD4JbIvBk">
    <property role="TrG5h" value="MPSProgramBuilder" />
    <node concept="3Tm1VV" id="3HJD4JbIvBl" role="1B3o_S" />
    <node concept="3uibUv" id="3HJD4JbIvBm" role="1zkMxy">
      <ref role="3uigEE" to="8qxk:3yaa4ph8ul5" resolve="StructuralProgramBuilder" />
      <node concept="3uibUv" id="3HJD4JbIvBn" role="11_B2D">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
    </node>
    <node concept="312cEg" id="3HJD4JbIvBr" role="jymVt">
      <property role="TrG5h" value="myMayBeUnreachable" />
      <node concept="10P_77" id="3HJD4JbIvBs" role="1tU5fm" />
      <node concept="3Tm6S6" id="3HJD4JbIvBt" role="1B3o_S" />
      <node concept="3clFbT" id="3HJD4JbIvBu" role="33vP2m" />
    </node>
    <node concept="312cEg" id="4UWoudWMC_y" role="jymVt">
      <property role="TrG5h" value="myCache" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4UWoudWM_bU" role="1B3o_S" />
      <node concept="3uibUv" id="4UWoudWMB$l" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="4UWoudWMC28" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
        <node concept="3uibUv" id="4UWoudWMCzJ" role="11_B2D">
          <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
        </node>
      </node>
      <node concept="2ShNRf" id="4UWoudWMDUU" role="33vP2m">
        <node concept="1pGfFk" id="4UWoudWMIcN" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="qrAFe9jpfC" role="jymVt">
      <property role="TrG5h" value="myModuleRegistry" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="qrAFe9jpfA" role="1B3o_S" />
      <node concept="3uibUv" id="qrAFe9jpfB" role="1tU5fm">
        <ref role="3uigEE" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
      </node>
    </node>
    <node concept="2tJIrI" id="qrAFe9j894" role="jymVt" />
    <node concept="3clFbW" id="4mpxoQud1f6" role="jymVt">
      <node concept="3cqZAl" id="4mpxoQud1f7" role="3clF45" />
      <node concept="3clFbS" id="4mpxoQud1f9" role="3clF47">
        <node concept="3clFbF" id="4OKSZMEZqYl" role="3cqZAp">
          <node concept="37vLTI" id="4OKSZMEZryP" role="3clFbG">
            <node concept="10Nm6u" id="4OKSZMEZsg3" role="37vLTx" />
            <node concept="37vLTw" id="4OKSZMEZqYk" role="37vLTJ">
              <ref role="3cqZAo" node="qrAFe9jpfC" resolve="myModuleRegistry" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4OKSZMEZWsK" role="3cqZAp">
          <node concept="1PaTwC" id="4OKSZMEZWsL" role="1aUNEU">
            <node concept="3oM_SD" id="4OKSZMEZWsM" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="4OKSZMEZWsP" role="1PaTwD">
              <property role="3oM_SC" value="1" />
            </node>
            <node concept="3oM_SD" id="4OKSZMEZXcU" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="4OKSZMEZWts" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="4OKSZMF1Exv" role="1PaTwD">
              <property role="3oM_SC" value="mbeddr.core.modules.typesystem," />
            </node>
            <node concept="3oM_SD" id="4OKSZMF1Exw" role="1PaTwD">
              <property role="3oM_SC" value="15" />
            </node>
            <node concept="3oM_SD" id="4OKSZMF1ExL" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="4OKSZMF1Eyn" role="1PaTwD">
              <property role="3oM_SC" value="MPS" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4mpxoQud12h" role="1B3o_S" />
      <node concept="P$JXv" id="4OKSZMF07Uw" role="lGtFl">
        <node concept="TZ5HI" id="4OKSZMF1aC7" role="3nqlJM">
          <node concept="1PaTwC" id="1E1X3WHsAzz" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsAz$" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="1Vtdud" id="1E1X3WHsAz_" role="1PaTwD">
              <node concept="1VuXuv" id="1E1X3WHsAzA" role="1Vtduc">
                <node concept="VXe0Z" id="4OKSZMF1aCd" role="1VuXuu">
                  <ref role="VXe0S" node="4OKSZMEZ3OG" resolve="MPSProgramBuilder" />
                </node>
                <node concept="1PaTwC" id="1E1X3WHsAzD" role="2JaDBN">
                  <node concept="3oM_SD" id="1E1X3WHsAzE" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3oM_SD" id="1E1X3WHsAzF" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4OKSZMF07Uz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
        <node concept="2B6LJw" id="4OKSZMF08vE" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~Deprecated.forRemoval()" resolve="forRemoval" />
          <node concept="3clFbT" id="4OKSZMF08Di" role="2B70Vg">
            <property role="3clFbU" value="true" />
          </node>
        </node>
        <node concept="2B6LJw" id="4OKSZMF08DC" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~Deprecated.since()" resolve="since" />
          <node concept="Xl_RD" id="4OKSZMF08Hq" role="2B70Vg">
            <property role="Xl_RC" value="2025.1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="4mpxoQud1uV" role="jymVt">
      <node concept="37vLTG" id="4mpxoQud1HG" role="3clF46">
        <property role="TrG5h" value="builder" />
        <node concept="3uibUv" id="4mpxoQud1HH" role="1tU5fm">
          <ref role="3uigEE" to="9fia:3yaa4ph8ubY" resolve="InstructionBuilder" />
        </node>
      </node>
      <node concept="3cqZAl" id="4mpxoQud1uW" role="3clF45" />
      <node concept="3clFbS" id="4mpxoQud1uX" role="3clF47">
        <node concept="XkiVB" id="4mpxoQud1II" role="3cqZAp">
          <ref role="37wK5l" to="8qxk:3yaa4ph8umc" resolve="StructuralProgramBuilder" />
          <node concept="37vLTw" id="4mpxoQud21k" role="37wK5m">
            <ref role="3cqZAo" node="4mpxoQud1HG" resolve="builder" />
          </node>
        </node>
        <node concept="3clFbF" id="4OKSZMEZsT4" role="3cqZAp">
          <node concept="37vLTI" id="4OKSZMEZsT5" role="3clFbG">
            <node concept="10Nm6u" id="4OKSZMEZsT6" role="37vLTx" />
            <node concept="37vLTw" id="4OKSZMEZsT7" role="37vLTJ">
              <ref role="3cqZAo" node="qrAFe9jpfC" resolve="myModuleRegistry" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4OKSZMF1DwN" role="3cqZAp">
          <node concept="1PaTwC" id="4OKSZMF1DwO" role="1aUNEU">
            <node concept="3oM_SD" id="4OKSZMF1DwP" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="4OKSZMF1DwQ" role="1PaTwD">
              <property role="3oM_SC" value="uses" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4mpxoQud1v6" role="1B3o_S" />
      <node concept="P$JXv" id="4OKSZMF072P" role="lGtFl">
        <node concept="TZ5HI" id="4OKSZMF18cQ" role="3nqlJM">
          <node concept="1PaTwC" id="1E1X3WHsAzG" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsAzH" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="1Vtdud" id="1E1X3WHsAzI" role="1PaTwD">
              <node concept="1VuXuv" id="1E1X3WHsAzJ" role="1Vtduc">
                <node concept="VXe0Z" id="4OKSZMF18cW" role="1VuXuu">
                  <ref role="VXe0S" node="4OKSZMEZ3OG" resolve="MPSProgramBuilder" />
                </node>
                <node concept="1PaTwC" id="1E1X3WHsAzM" role="2JaDBN">
                  <node concept="3oM_SD" id="1E1X3WHsAzN" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3oM_SD" id="1E1X3WHsAzO" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4OKSZMF072S" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
        <node concept="2B6LJw" id="4OKSZMF07_F" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~Deprecated.forRemoval()" resolve="forRemoval" />
          <node concept="3clFbT" id="4OKSZMF07Jj" role="2B70Vg">
            <property role="3clFbU" value="true" />
          </node>
        </node>
        <node concept="2B6LJw" id="4OKSZMF07Jk" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~Deprecated.since()" resolve="since" />
          <node concept="Xl_RD" id="4OKSZMF07N_" role="2B70Vg">
            <property role="Xl_RC" value="2025.1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="qrAFe9j8zl" role="jymVt">
      <node concept="3cqZAl" id="qrAFe9j8zm" role="3clF45" />
      <node concept="3clFbS" id="qrAFe9j8zo" role="3clF47">
        <node concept="3clFbF" id="qrAFe9jpfJ" role="3cqZAp">
          <node concept="37vLTI" id="qrAFe9jpfK" role="3clFbG">
            <node concept="2OqwBi" id="qrAFe9jpfL" role="37vLTJ">
              <node concept="Xjq3P" id="qrAFe9jpfM" role="2Oq$k0" />
              <node concept="2OwXpG" id="qrAFe9jpfN" role="2OqNvi">
                <ref role="2Oxat5" node="qrAFe9jpfC" resolve="myModuleRegistry" />
              </node>
            </node>
            <node concept="3K4zz7" id="4OKSZMF06hZ" role="37vLTx">
              <node concept="10Nm6u" id="4OKSZMF06i0" role="3K4E3e" />
              <node concept="2YIFZM" id="4OKSZMF06i1" role="3K4GZi">
                <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository)" resolve="getInstance" />
                <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                <node concept="37vLTw" id="4OKSZMF06i2" role="37wK5m">
                  <ref role="3cqZAo" node="qrAFe9jp9r" resolve="repository" />
                </node>
              </node>
              <node concept="3clFbC" id="4OKSZMF06i3" role="3K4Cdx">
                <node concept="10Nm6u" id="4OKSZMF06i4" role="3uHU7w" />
                <node concept="37vLTw" id="4OKSZMF06i5" role="3uHU7B">
                  <ref role="3cqZAo" node="qrAFe9jp9r" resolve="repository" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4OKSZMF1CxA" role="3cqZAp">
          <node concept="1PaTwC" id="4OKSZMF1CxB" role="1aUNEU">
            <node concept="3oM_SD" id="4OKSZMF1CxC" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="4OKSZMF1CxD" role="1PaTwD">
              <property role="3oM_SC" value="uses" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="qrAFe9j8t3" role="1B3o_S" />
      <node concept="37vLTG" id="qrAFe9jp9r" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="qrAFe9jp9q" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="P$JXv" id="4OKSZMF02pU" role="lGtFl">
        <node concept="TZ5HI" id="4OKSZMF16g6" role="3nqlJM">
          <node concept="1PaTwC" id="1E1X3WHsAzP" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsAzQ" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="1Vtdud" id="1E1X3WHsAzR" role="1PaTwD">
              <node concept="1VuXuv" id="1E1X3WHsAzS" role="1Vtduc">
                <node concept="VXe0Z" id="4OKSZMF16gc" role="1VuXuu">
                  <ref role="VXe0S" node="4OKSZMEZ3OG" resolve="MPSProgramBuilder" />
                </node>
                <node concept="1PaTwC" id="1E1X3WHsAzV" role="2JaDBN">
                  <node concept="3oM_SD" id="1E1X3WHsAzW" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3oM_SD" id="1E1X3WHsAzX" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4OKSZMF02pX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
        <node concept="2B6LJw" id="4OKSZMF05Z_" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~Deprecated.forRemoval()" resolve="forRemoval" />
          <node concept="3clFbT" id="4OKSZMF068C" role="2B70Vg">
            <property role="3clFbU" value="true" />
          </node>
        </node>
        <node concept="2B6LJw" id="4OKSZMF068D" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~Deprecated.since()" resolve="since" />
          <node concept="Xl_RD" id="4OKSZMF06e4" role="2B70Vg">
            <property role="Xl_RC" value="2025.1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="3LlMlIU2hez" role="jymVt">
      <property role="TrG5h" value="StructuralProgramBuilder" />
      <node concept="3cqZAl" id="3LlMlIU2he$" role="3clF45" />
      <node concept="3Tm1VV" id="3LlMlIU2he_" role="1B3o_S" />
      <node concept="37vLTG" id="3LlMlIU2hqt" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="3LlMlIU2hr6" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="3LlMlIU2heB" role="3clF46">
        <property role="TrG5h" value="builder" />
        <node concept="3uibUv" id="3LlMlIU2heC" role="1tU5fm">
          <ref role="3uigEE" to="9fia:3yaa4ph8ubY" resolve="InstructionBuilder" />
        </node>
      </node>
      <node concept="3clFbS" id="3LlMlIU2heD" role="3clF47">
        <node concept="XkiVB" id="3LlMlIU2heF" role="3cqZAp">
          <ref role="37wK5l" to="8qxk:3yaa4ph8umc" resolve="StructuralProgramBuilder" />
          <node concept="37vLTw" id="3LlMlIU2heE" role="37wK5m">
            <ref role="3cqZAo" node="3LlMlIU2heB" resolve="builder" />
          </node>
        </node>
        <node concept="3clFbF" id="3LlMlIU2hW9" role="3cqZAp">
          <node concept="37vLTI" id="3LlMlIU2hWa" role="3clFbG">
            <node concept="2OqwBi" id="3LlMlIU2hWb" role="37vLTJ">
              <node concept="Xjq3P" id="3LlMlIU2hWc" role="2Oq$k0" />
              <node concept="2OwXpG" id="3LlMlIU2hWd" role="2OqNvi">
                <ref role="2Oxat5" node="qrAFe9jpfC" resolve="myModuleRegistry" />
              </node>
            </node>
            <node concept="3K4zz7" id="4OKSZMEZXsE" role="37vLTx">
              <node concept="10Nm6u" id="4OKSZMEZXsF" role="3K4E3e" />
              <node concept="2YIFZM" id="4OKSZMEZXsG" role="3K4GZi">
                <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository)" resolve="getInstance" />
                <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                <node concept="37vLTw" id="4OKSZMEZXsH" role="37wK5m">
                  <ref role="3cqZAo" node="3LlMlIU2hqt" resolve="repository" />
                </node>
              </node>
              <node concept="3clFbC" id="4OKSZMEZXsI" role="3K4Cdx">
                <node concept="10Nm6u" id="4OKSZMEZXsJ" role="3uHU7w" />
                <node concept="37vLTw" id="4OKSZMEZXsK" role="3uHU7B">
                  <ref role="3cqZAo" node="3LlMlIU2hqt" resolve="repository" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4OKSZMF1C04" role="3cqZAp">
          <node concept="1PaTwC" id="4OKSZMF1C05" role="1aUNEU">
            <node concept="3oM_SD" id="4OKSZMF1C06" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="4OKSZMF1CvT" role="1PaTwD">
              <property role="3oM_SC" value="uses" />
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="4OKSZMEZY6d" role="lGtFl">
        <node concept="TZ5HI" id="4OKSZMEZY6e" role="3nqlJM">
          <node concept="1PaTwC" id="1E1X3WHsAzY" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsAzZ" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="1Vtdud" id="1E1X3WHsA$0" role="1PaTwD">
              <node concept="1VuXuv" id="1E1X3WHsA$1" role="1Vtduc">
                <node concept="VXe0Z" id="4OKSZMF15DZ" role="1VuXuu">
                  <ref role="VXe0S" node="4OKSZMEZ3OG" resolve="MPSProgramBuilder" />
                </node>
                <node concept="1PaTwC" id="1E1X3WHsA$4" role="2JaDBN">
                  <node concept="3oM_SD" id="1E1X3WHsA$5" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3oM_SD" id="1E1X3WHsA$6" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4OKSZMEZY6g" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
        <node concept="2B6LJw" id="4OKSZMEZYDd" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~Deprecated.forRemoval()" resolve="forRemoval" />
          <node concept="3clFbT" id="4OKSZMEZYMP" role="2B70Vg">
            <property role="3clFbU" value="true" />
          </node>
        </node>
        <node concept="2B6LJw" id="4OKSZMEZYNb" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~Deprecated.since()" resolve="since" />
          <node concept="Xl_RD" id="4OKSZMEZYQM" role="2B70Vg">
            <property role="Xl_RC" value="2025.1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4OKSZMEYY3M" role="jymVt" />
    <node concept="3clFbW" id="6UdHCtZMMPI" role="jymVt">
      <property role="TrG5h" value="StructuralProgramBuilder" />
      <node concept="3cqZAl" id="6UdHCtZMMPJ" role="3clF45" />
      <node concept="3Tm1VV" id="6UdHCtZMMPK" role="1B3o_S" />
      <node concept="37vLTG" id="6UdHCtZMMPL" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="6UdHCtZMMPM" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="6UdHCtZMMPN" role="3clF46">
        <property role="TrG5h" value="builder" />
        <node concept="3uibUv" id="6UdHCtZMMPO" role="1tU5fm">
          <ref role="3uigEE" to="9fia:3yaa4ph8ubY" resolve="InstructionBuilder" />
        </node>
      </node>
      <node concept="37vLTG" id="6UdHCtZMNik" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="6UdHCtZMNpD" role="1tU5fm">
          <ref role="3uigEE" to="8qxk:3yaa4ph8uUg" resolve="ProgramBuilderContext" />
        </node>
      </node>
      <node concept="3clFbS" id="6UdHCtZMMPP" role="3clF47">
        <node concept="XkiVB" id="6UdHCtZMMPQ" role="3cqZAp">
          <ref role="37wK5l" to="8qxk:3yaa4ph8ulI" resolve="StructuralProgramBuilder" />
          <node concept="37vLTw" id="6UdHCtZMMPR" role="37wK5m">
            <ref role="3cqZAo" node="6UdHCtZMMPN" resolve="builder" />
          </node>
          <node concept="37vLTw" id="6UdHCtZMNVN" role="37wK5m">
            <ref role="3cqZAo" node="6UdHCtZMNik" resolve="context" />
          </node>
        </node>
        <node concept="3clFbF" id="6UdHCtZMMPS" role="3cqZAp">
          <node concept="37vLTI" id="6UdHCtZMMPT" role="3clFbG">
            <node concept="2OqwBi" id="6UdHCtZMMPU" role="37vLTJ">
              <node concept="Xjq3P" id="6UdHCtZMMPV" role="2Oq$k0" />
              <node concept="2OwXpG" id="6UdHCtZMMPW" role="2OqNvi">
                <ref role="2Oxat5" node="qrAFe9jpfC" resolve="myModuleRegistry" />
              </node>
            </node>
            <node concept="3K4zz7" id="4OKSZMEZQLT" role="37vLTx">
              <node concept="10Nm6u" id="4OKSZMEZRr8" role="3K4E3e" />
              <node concept="2YIFZM" id="4OKSZMEZSE8" role="3K4GZi">
                <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository)" resolve="getInstance" />
                <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                <node concept="37vLTw" id="4OKSZMEZTTh" role="37wK5m">
                  <ref role="3cqZAo" node="6UdHCtZMMPL" resolve="repository" />
                </node>
              </node>
              <node concept="3clFbC" id="4OKSZMEZPSI" role="3K4Cdx">
                <node concept="10Nm6u" id="4OKSZMEZQdX" role="3uHU7w" />
                <node concept="37vLTw" id="6UdHCtZMMPX" role="3uHU7B">
                  <ref role="3cqZAo" node="6UdHCtZMMPL" resolve="repository" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4OKSZMEZV2z" role="3cqZAp">
          <node concept="1PaTwC" id="4OKSZMEZV2$" role="1aUNEU">
            <node concept="3oM_SD" id="4OKSZMEZVCy" role="1PaTwD">
              <property role="3oM_SC" value="there's" />
            </node>
            <node concept="3oM_SD" id="4OKSZMEZVCN" role="1PaTwD">
              <property role="3oM_SC" value="1" />
            </node>
            <node concept="3oM_SD" id="4OKSZMEZVCP" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="4OKSZMEZVDr" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="4OKSZMEZVDs" role="1PaTwD">
              <property role="3oM_SC" value="mbeddr" />
            </node>
            <node concept="3oM_SD" id="4OKSZMEZVHb" role="1PaTwD">
              <property role="3oM_SC" value="(mpsutil.df.runtime)," />
            </node>
            <node concept="3oM_SD" id="4OKSZMF1Ezt" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="4OKSZMF1Ezu" role="1PaTwD">
              <property role="3oM_SC" value="1" />
            </node>
            <node concept="3oM_SD" id="4OKSZMF1E$T" role="1PaTwD">
              <property role="3oM_SC" value="legacy" />
            </node>
            <node concept="3oM_SD" id="4OKSZMF1E_J" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="4OKSZMF1E_K" role="1PaTwD">
              <property role="3oM_SC" value="MPS" />
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="4OKSZMEZ109" role="lGtFl">
        <node concept="TZ5HI" id="4OKSZMEZ10a" role="3nqlJM">
          <node concept="1PaTwC" id="1E1X3WHsA$7" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsA$8" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsA$9" role="1PaTwD">
              <property role="3oM_SC" value="alternative" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsA$a" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsA$b" role="1PaTwD">
              <property role="3oM_SC" value="takes" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsA$c" role="1PaTwD">
              <property role="3oM_SC" value="ComponentHost" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4OKSZMEZ10c" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
        <node concept="2B6LJw" id="4OKSZMEZ1vu" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~Deprecated.since()" resolve="since" />
          <node concept="Xl_RD" id="4OKSZMEZ1yF" role="2B70Vg">
            <property role="Xl_RC" value="2025.1" />
          </node>
        </node>
        <node concept="2B6LJw" id="4OKSZMEZ1zX" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~Deprecated.forRemoval()" resolve="forRemoval" />
          <node concept="3clFbT" id="4OKSZMEZ1CI" role="2B70Vg">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4OKSZMEZ7aU" role="jymVt" />
    <node concept="3clFbW" id="4OKSZMEZ3OG" role="jymVt">
      <property role="TrG5h" value="StructuralProgramBuilder" />
      <node concept="3cqZAl" id="4OKSZMEZ3OH" role="3clF45" />
      <node concept="3Tm1VV" id="4OKSZMEZ3OI" role="1B3o_S" />
      <node concept="37vLTG" id="4OKSZMEZ3OL" role="3clF46">
        <property role="TrG5h" value="builder" />
        <node concept="3uibUv" id="4OKSZMEZ3OM" role="1tU5fm">
          <ref role="3uigEE" to="9fia:3yaa4ph8ubY" resolve="InstructionBuilder" />
        </node>
      </node>
      <node concept="37vLTG" id="4OKSZMEZ3ON" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="4OKSZMEZ3OO" role="1tU5fm">
          <ref role="3uigEE" to="8qxk:3yaa4ph8uUg" resolve="ProgramBuilderContext" />
        </node>
      </node>
      <node concept="37vLTG" id="4OKSZMEZ3OJ" role="3clF46">
        <property role="TrG5h" value="mpsPlatform" />
        <node concept="3uibUv" id="4OKSZMEZ3OK" role="1tU5fm">
          <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
        </node>
      </node>
      <node concept="3clFbS" id="4OKSZMEZ3OP" role="3clF47">
        <node concept="XkiVB" id="4OKSZMEZ3OQ" role="3cqZAp">
          <ref role="37wK5l" to="8qxk:3yaa4ph8ulI" resolve="StructuralProgramBuilder" />
          <node concept="37vLTw" id="4OKSZMEZ3OR" role="37wK5m">
            <ref role="3cqZAo" node="4OKSZMEZ3OL" resolve="builder" />
          </node>
          <node concept="37vLTw" id="4OKSZMEZ3OS" role="37wK5m">
            <ref role="3cqZAo" node="4OKSZMEZ3ON" resolve="context" />
          </node>
        </node>
        <node concept="3clFbF" id="4OKSZMEZ3OT" role="3cqZAp">
          <node concept="37vLTI" id="4OKSZMEZ3OU" role="3clFbG">
            <node concept="2OqwBi" id="4OKSZMEZ3OV" role="37vLTJ">
              <node concept="Xjq3P" id="4OKSZMEZ3OW" role="2Oq$k0" />
              <node concept="2OwXpG" id="4OKSZMEZ3OX" role="2OqNvi">
                <ref role="2Oxat5" node="qrAFe9jpfC" resolve="myModuleRegistry" />
              </node>
            </node>
            <node concept="2OqwBi" id="4OKSZMEZLfh" role="37vLTx">
              <node concept="37vLTw" id="4OKSZMEZ3OY" role="2Oq$k0">
                <ref role="3cqZAo" node="4OKSZMEZ3OJ" resolve="mpsPlatform" />
              </node>
              <node concept="liA8E" id="4OKSZMEZLTm" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="4OKSZMEZNlD" role="37wK5m">
                  <ref role="3VsUkX" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="4OKSZMEZcZ9" role="lGtFl">
        <node concept="TZ7YB" id="4OKSZMEZe2o" role="3nqlJM">
          <property role="TZ7Y_" value="" />
          <node concept="1PaTwC" id="1E1X3WHsA$d" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsA$e" role="1PaTwD">
              <property role="3oM_SC" value="2025.1" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3LlMlIU2hrS" role="jymVt" />
    <node concept="3clFb_" id="3LlMlIU252u" role="jymVt">
      <property role="TrG5h" value="createContext" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="3LlMlIU252v" role="3clF46">
        <property role="TrG5h" value="node" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tqbb2" id="3LlMlIU28Bp" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3LlMlIU252x" role="3clF47">
        <node concept="3cpWs6" id="3LlMlIU252y" role="3cqZAp">
          <node concept="2ShNRf" id="3LlMlIU252C" role="3cqZAk">
            <node concept="1pGfFk" id="3LlMlIU252D" role="2ShVmc">
              <ref role="37wK5l" node="3HJD4JbIvKC" resolve="DataFlowBuilderContext" />
              <node concept="37vLTw" id="3LlMlIU252$" role="37wK5m">
                <ref role="3cqZAo" node="3LlMlIU252v" resolve="node" />
              </node>
              <node concept="Xjq3P" id="3LlMlIU252_" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="3LlMlIU252A" role="1B3o_S" />
      <node concept="3uibUv" id="3LlMlIU252B" role="3clF45">
        <ref role="3uigEE" node="3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
      </node>
    </node>
    <node concept="2tJIrI" id="3LlMlIU24Ru" role="jymVt" />
    <node concept="3clFb_" id="3HJD4JbIvBE" role="jymVt">
      <property role="TrG5h" value="doBuild" />
      <node concept="3Tmbuc" id="3HJD4JbIvBF" role="1B3o_S" />
      <node concept="3cqZAl" id="3HJD4JbIvBG" role="3clF45" />
      <node concept="37vLTG" id="3HJD4JbIvBH" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="3HJD4JbIvBI" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="3HJD4JbIvBJ" role="3clF47">
        <node concept="3clFbJ" id="3HJD4JbIvBK" role="3cqZAp">
          <node concept="3clFbC" id="3HJD4JbIvBL" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgm6pG" role="3uHU7B">
              <ref role="3cqZAo" node="3HJD4JbIvBH" resolve="node" />
            </node>
            <node concept="10Nm6u" id="3HJD4JbIvBN" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="3HJD4JbIvBO" role="3clFbx">
            <node concept="3cpWs6" id="3HJD4JbIvBP" role="3cqZAp" />
          </node>
        </node>
        <node concept="3cpWs8" id="3HJD4JbIvBQ" role="3cqZAp">
          <node concept="3cpWsn" id="3HJD4JbIvBR" role="3cpWs9">
            <property role="TrG5h" value="snode" />
            <node concept="3Tqbb2" id="7laMVk8YvqW" role="1tU5fm" />
            <node concept="37vLTw" id="2BHiRxglp42" role="33vP2m">
              <ref role="3cqZAo" node="3HJD4JbIvBH" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="3HJD4JbIvC4" role="3cqZAp">
          <node concept="3cpWsn" id="3HJD4JbIvC6" role="1Duv9x">
            <property role="TrG5h" value="concept" />
            <node concept="3bZ5Sz" id="6hI7daPNX6r" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="3HJD4JbIvC8" role="2LFqv$">
            <node concept="3cpWs8" id="2ULNtK17Rgs" role="3cqZAp">
              <node concept="3cpWsn" id="2ULNtK17Rgt" role="3cpWs9">
                <property role="TrG5h" value="dataFlowBuilder" />
                <node concept="3uibUv" id="2$3McZ113kB" role="1tU5fm">
                  <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
                </node>
                <node concept="1rXfSq" id="2ULNtK17Rgu" role="33vP2m">
                  <ref role="37wK5l" node="qrAFe9jgjN" resolve="getDataFlowBuilder" />
                  <node concept="37vLTw" id="2ULNtK17Rgv" role="37wK5m">
                    <ref role="3cqZAo" node="3HJD4JbIvC6" resolve="concept" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2$3McZ10D_3" role="3cqZAp">
              <node concept="3clFbS" id="2$3McZ10D_5" role="3clFbx">
                <node concept="3clFbF" id="3HJD4JbIvCo" role="3cqZAp">
                  <node concept="2OqwBi" id="2ULNtK17WlI" role="3clFbG">
                    <node concept="37vLTw" id="2ULNtK17W6w" role="2Oq$k0">
                      <ref role="3cqZAo" node="2ULNtK17Rgt" resolve="dataFlowBuilder" />
                    </node>
                    <node concept="liA8E" id="7qfA_WyyrD0" role="2OqNvi">
                      <ref role="37wK5l" to="8qxk:3yaa4ph8uyd" resolve="build" />
                      <node concept="1rXfSq" id="2ULNtK181Mh" role="37wK5m">
                        <ref role="37wK5l" node="3LlMlIU252u" resolve="createContext" />
                        <node concept="37vLTw" id="2ULNtK181Mi" role="37wK5m">
                          <ref role="3cqZAo" node="3HJD4JbIvBR" resolve="snode" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3zACq4" id="3HJD4JbIvCx" role="3cqZAp" />
              </node>
              <node concept="3y3z36" id="2$3McZ10E0H" role="3clFbw">
                <node concept="10Nm6u" id="2$3McZ10E3Q" role="3uHU7w" />
                <node concept="37vLTw" id="2$3McZ10DK0" role="3uHU7B">
                  <ref role="3cqZAo" node="2ULNtK17Rgt" resolve="dataFlowBuilder" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6hI7daPNWfY" role="1DdaDG">
            <node concept="2OqwBi" id="6hI7daPNLZt" role="2Oq$k0">
              <node concept="37vLTw" id="6hI7daPNLB9" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJD4JbIvBR" resolve="snode" />
              </node>
              <node concept="2yIwOk" id="6hI7daPNW43" role="2OqNvi" />
            </node>
            <node concept="3oJPKh" id="6hI7daPNWto" role="2OqNvi">
              <node concept="1xIGOp" id="6hI7daPOr8K" role="1xVPHs" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_sScU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3HJD4JbIvCy" role="jymVt">
      <property role="TrG5h" value="emitMayBeUnreachable" />
      <node concept="3Tm1VV" id="3HJD4JbIvCz" role="1B3o_S" />
      <node concept="3cqZAl" id="3HJD4JbIvC$" role="3clF45" />
      <node concept="37vLTG" id="3HJD4JbIvC_" role="3clF46">
        <property role="TrG5h" value="r" />
        <node concept="3uibUv" id="3HJD4JbIvCA" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="3clFbS" id="3HJD4JbIvCB" role="3clF47">
        <node concept="3cpWs8" id="3HJD4JbIvCC" role="3cqZAp">
          <node concept="3cpWsn" id="3HJD4JbIvCD" role="3cpWs9">
            <property role="TrG5h" value="oldMayBeUnreachable" />
            <node concept="10P_77" id="3HJD4JbIvCE" role="1tU5fm" />
            <node concept="2OqwBi" id="3HJD4JbIvCF" role="33vP2m">
              <node concept="2OwXpG" id="3HJD4JbIvCG" role="2OqNvi">
                <ref role="2Oxat5" node="3HJD4JbIvBr" resolve="myMayBeUnreachable" />
              </node>
              <node concept="Xjq3P" id="3HJD4JbIvCH" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3HJD4JbIvCI" role="3cqZAp">
          <node concept="37vLTI" id="3HJD4JbIvCJ" role="3clFbG">
            <node concept="2OqwBi" id="3HJD4JbIvCK" role="37vLTJ">
              <node concept="2OwXpG" id="3HJD4JbIvCL" role="2OqNvi">
                <ref role="2Oxat5" node="3HJD4JbIvBr" resolve="myMayBeUnreachable" />
              </node>
              <node concept="Xjq3P" id="3HJD4JbIvCM" role="2Oq$k0" />
            </node>
            <node concept="3clFbT" id="3HJD4JbIvCN" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="3HJD4JbIvCO" role="3cqZAp">
          <node concept="3clFbS" id="3HJD4JbIvCW" role="1zxBo7">
            <node concept="3clFbF" id="3HJD4JbIvCX" role="3cqZAp">
              <node concept="2OqwBi" id="3HJD4JbIvCY" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxglqe3" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJD4JbIvC_" resolve="r" />
                </node>
                <node concept="liA8E" id="3HJD4JbIvD0" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Runnable.run()" resolve="run" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="xvs04dG9XU" role="1zxBo6">
            <node concept="3clFbS" id="3HJD4JbIvCP" role="1wplMD">
              <node concept="3clFbF" id="3HJD4JbIvCQ" role="3cqZAp">
                <node concept="37vLTI" id="3HJD4JbIvCR" role="3clFbG">
                  <node concept="2OqwBi" id="3HJD4JbIvCS" role="37vLTJ">
                    <node concept="2OwXpG" id="3HJD4JbIvCT" role="2OqNvi">
                      <ref role="2Oxat5" node="3HJD4JbIvBr" resolve="myMayBeUnreachable" />
                    </node>
                    <node concept="Xjq3P" id="3HJD4JbIvCU" role="2Oq$k0" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTAp_" role="37vLTx">
                    <ref role="3cqZAo" node="3HJD4JbIvCD" resolve="oldMayBeUnreachable" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3HJD4JbIvD1" role="jymVt">
      <property role="TrG5h" value="onInstructionEmitted" />
      <node concept="3Tmbuc" id="3HJD4JbIvD2" role="1B3o_S" />
      <node concept="3cqZAl" id="3HJD4JbIvD3" role="3clF45" />
      <node concept="37vLTG" id="3HJD4JbIvD4" role="3clF46">
        <property role="TrG5h" value="instruction" />
        <node concept="3uibUv" id="3HJD4JbIvD5" role="1tU5fm">
          <ref role="3uigEE" to="9fia:3yaa4ph8tQC" resolve="Instruction" />
        </node>
      </node>
      <node concept="3clFbS" id="3HJD4JbIvD6" role="3clF47">
        <node concept="3clFbF" id="3HJD4JbIvD7" role="3cqZAp">
          <node concept="3nyPlj" id="3HJD4JbIvD8" role="3clFbG">
            <ref role="37wK5l" to="8qxk:3yaa4ph8uxp" resolve="onInstructionEmitted" />
            <node concept="37vLTw" id="2BHiRxgmpfz" role="37wK5m">
              <ref role="3cqZAo" node="3HJD4JbIvD4" resolve="instruction" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3HJD4JbIvDa" role="3cqZAp">
          <node concept="22lmx$" id="3HJD4JbIvDb" role="3clFbw">
            <node concept="2OqwBi" id="3HJD4JbIvDc" role="3uHU7B">
              <node concept="2OwXpG" id="3HJD4JbIvDd" role="2OqNvi">
                <ref role="2Oxat5" node="3HJD4JbIvBr" resolve="myMayBeUnreachable" />
              </node>
              <node concept="Xjq3P" id="3HJD4JbIvDe" role="2Oq$k0" />
            </node>
            <node concept="2ZW3vV" id="3HJD4JbIvDf" role="3uHU7w">
              <node concept="37vLTw" id="2BHiRxghiGD" role="2ZW6bz">
                <ref role="3cqZAo" node="3HJD4JbIvD4" resolve="instruction" />
              </node>
              <node concept="3uibUv" id="3HJD4JbIvDh" role="2ZW6by">
                <ref role="3uigEE" to="9fia:3yaa4ph8uhD" resolve="EndTryInstruction" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3HJD4JbIvDi" role="3clFbx">
            <node concept="3clFbF" id="3HJD4JbIvDj" role="3cqZAp">
              <node concept="2OqwBi" id="3HJD4JbIvDk" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxgkWlG" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJD4JbIvD4" resolve="instruction" />
                </node>
                <node concept="liA8E" id="3HJD4JbIvDm" role="2OqNvi">
                  <ref role="37wK5l" to="9fia:3yaa4ph8tWj" resolve="putUserObject" />
                  <node concept="10M0yZ" id="3HJD4JbIvDn" role="37wK5m">
                    <ref role="1PxDUh" node="3HJD4JbIw9v" resolve="DataFlow" />
                    <ref role="3cqZAo" node="3HJD4JbIw9x" resolve="MAY_BE_UNREACHABLE" />
                  </node>
                  <node concept="3clFbT" id="3HJD4JbIvDo" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_sScT" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="qrAFe9jg0P" role="jymVt" />
    <node concept="3clFb_" id="qrAFe9jgjN" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDataFlowBuilder" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="qrAFe9jgjQ" role="3clF47">
        <node concept="3cpWs8" id="qrAFe9jprH" role="3cqZAp">
          <node concept="3cpWsn" id="qrAFe9jprI" role="3cpWs9">
            <property role="TrG5h" value="langRegistry" />
            <node concept="3uibUv" id="qrAFe9jprG" role="1tU5fm">
              <ref role="3uigEE" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
            </node>
            <node concept="3K4zz7" id="qrAFe9jraf" role="33vP2m">
              <node concept="3y3z36" id="qrAFe9jr_5" role="3K4Cdx">
                <node concept="10Nm6u" id="qrAFe9jrLx" role="3uHU7w" />
                <node concept="37vLTw" id="qrAFe9jrnO" role="3uHU7B">
                  <ref role="3cqZAo" node="qrAFe9jpfC" resolve="myModuleRegistry" />
                </node>
              </node>
              <node concept="37vLTw" id="4OKSZMF0e5l" role="3K4E3e">
                <ref role="3cqZAo" node="qrAFe9jpfC" resolve="myModuleRegistry" />
              </node>
              <node concept="2YIFZM" id="qrAFe9jrXZ" role="3K4GZi">
                <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance()" resolve="getInstance" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4UWoudWLXHo" role="3cqZAp" />
        <node concept="3clFbJ" id="4UWoudWML4w" role="3cqZAp">
          <node concept="3clFbS" id="4UWoudWML4y" role="3clFbx">
            <node concept="3SKdUt" id="4UWoudWOx78" role="3cqZAp">
              <node concept="1PaTwC" id="4UWoudWOx79" role="1aUNEU">
                <node concept="3oM_SD" id="4UWoudWOx7a" role="1PaTwD">
                  <property role="3oM_SC" value="XXX" />
                </node>
                <node concept="3oM_SD" id="4UWoudWOzEx" role="1PaTwD">
                  <property role="3oM_SC" value="would" />
                </node>
                <node concept="3oM_SD" id="4UWoudWOzCf" role="1PaTwD">
                  <property role="3oM_SC" value="be" />
                </node>
                <node concept="3oM_SD" id="4UWoudWOzD6" role="1PaTwD">
                  <property role="3oM_SC" value="nice" />
                </node>
                <node concept="3oM_SD" id="4UWoudWOzEN" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="4UWoudWOzEO" role="1PaTwD">
                  <property role="3oM_SC" value="have" />
                </node>
                <node concept="3oM_SD" id="4UWoudWOzFq" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="4UWoudWOzFF" role="1PaTwD">
                  <property role="3oM_SC" value="method" />
                </node>
                <node concept="3oM_SD" id="4UWoudWOzGh" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="4UWoudWOzGi" role="1PaTwD">
                  <property role="3oM_SC" value="visit" />
                </node>
                <node concept="3oM_SD" id="4UWoudWOzHo" role="1PaTwD">
                  <property role="3oM_SC" value="concept" />
                </node>
                <node concept="3oM_SD" id="4UWoudWOzHY" role="1PaTwD">
                  <property role="3oM_SC" value="hierarchy" />
                </node>
                <node concept="3oM_SD" id="4UWoudWOzJ$" role="1PaTwD">
                  <property role="3oM_SC" value="right" />
                </node>
                <node concept="3oM_SD" id="4UWoudWOzKa" role="1PaTwD">
                  <property role="3oM_SC" value="away" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4UWoudWM68l" role="3cqZAp">
              <node concept="2OqwBi" id="4UWoudWM84H" role="3clFbG">
                <node concept="37vLTw" id="4UWoudWM68j" role="2Oq$k0">
                  <ref role="3cqZAo" node="qrAFe9jprI" resolve="langRegistry" />
                </node>
                <node concept="liA8E" id="4UWoudWM9n_" role="2OqNvi">
                  <ref role="37wK5l" to="vndm:~LanguageRegistry.withAvailableAspects(java.util.stream.Stream,java.lang.Class,java.util.function.Consumer)" resolve="withAvailableAspects" />
                  <node concept="2YIFZM" id="4UWoudWMexa" role="37wK5m">
                    <ref role="37wK5l" to="1ctc:~Stream.of(java.lang.Object...)" resolve="of" />
                    <ref role="1Pybhc" to="1ctc:~Stream" resolve="Stream" />
                    <node concept="2OqwBi" id="qrAFe9iHkq" role="37wK5m">
                      <node concept="37vLTw" id="qrAFe9jgGa" role="2Oq$k0">
                        <ref role="3cqZAo" node="qrAFe9jg$2" resolve="concept" />
                      </node>
                      <node concept="liA8E" id="qrAFe9iHks" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                      </node>
                    </node>
                  </node>
                  <node concept="3VsKOn" id="4UWoudWMpC0" role="37wK5m">
                    <ref role="3VsUkX" to="8qxk:3yaa4ph8uS5" resolve="DataFlowAspectDescriptor" />
                  </node>
                  <node concept="1bVj0M" id="4UWoudWMkXx" role="37wK5m">
                    <node concept="gl6BB" id="4UWoudWMkXG" role="1bW2Oz">
                      <property role="TrG5h" value="dfa" />
                      <node concept="2jxLKc" id="4UWoudWMkXH" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="4UWoudWMkYr" role="1bW5cS">
                      <node concept="3cpWs8" id="qrAFe9iJ$$" role="3cqZAp">
                        <node concept="3cpWsn" id="qrAFe9iJ$_" role="3cpWs9">
                          <property role="TrG5h" value="dataFlowBuilders" />
                          <node concept="3uibUv" id="qrAFe9iJ$t" role="1tU5fm">
                            <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                            <node concept="3uibUv" id="qrAFe9iJ$w" role="11_B2D">
                              <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="qrAFe9iJ$A" role="33vP2m">
                            <node concept="37vLTw" id="4UWoudWNqXP" role="2Oq$k0">
                              <ref role="3cqZAo" node="4UWoudWMkXG" resolve="dfa" />
                            </node>
                            <node concept="liA8E" id="qrAFe9iJ$F" role="2OqNvi">
                              <ref role="37wK5l" to="8qxk:4UWoudWLEid" resolve="getDataFlowBuilders" />
                              <node concept="37vLTw" id="qrAFe9jgUI" role="37wK5m">
                                <ref role="3cqZAo" node="qrAFe9jg$2" resolve="concept" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2Gpval" id="3dfXoLlnj6d" role="3cqZAp">
                        <node concept="2GrKxI" id="3dfXoLlnj6f" role="2Gsz3X">
                          <property role="TrG5h" value="contextMode" />
                        </node>
                        <node concept="2OqwBi" id="4UWoudWNG3g" role="2GsD0m">
                          <node concept="1rXfSq" id="4UWoudWNG3h" role="2Oq$k0">
                            <ref role="37wK5l" to="8qxk:3yaa4ph8uxX" resolve="getBuilderContext" />
                          </node>
                          <node concept="liA8E" id="4UWoudWNG3i" role="2OqNvi">
                            <ref role="37wK5l" to="8qxk:3yaa4ph8uUi" resolve="getBuilderModes" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="3dfXoLlnj6j" role="2LFqv$">
                          <node concept="2Gpval" id="3dfXoLlnkxF" role="3cqZAp">
                            <node concept="2GrKxI" id="3dfXoLlnkxH" role="2Gsz3X">
                              <property role="TrG5h" value="builder" />
                            </node>
                            <node concept="37vLTw" id="3dfXoLlnler" role="2GsD0m">
                              <ref role="3cqZAo" node="qrAFe9iJ$_" resolve="dataFlowBuilders" />
                            </node>
                            <node concept="3clFbS" id="3dfXoLlnkxL" role="2LFqv$">
                              <node concept="3clFbJ" id="2p$3d4Hjz5$" role="3cqZAp">
                                <node concept="3clFbS" id="2p$3d4Hjz5A" role="3clFbx">
                                  <node concept="3clFbF" id="4UWoudWNKyn" role="3cqZAp">
                                    <node concept="2OqwBi" id="4UWoudWNMis" role="3clFbG">
                                      <node concept="37vLTw" id="4UWoudWNKyl" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4UWoudWMC_y" resolve="myCache" />
                                      </node>
                                      <node concept="liA8E" id="4UWoudWNPB5" role="2OqNvi">
                                        <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                                        <node concept="37vLTw" id="4UWoudWNRql" role="37wK5m">
                                          <ref role="3cqZAo" node="qrAFe9jg$2" resolve="concept" />
                                        </node>
                                        <node concept="2GrUjf" id="4UWoudWNU2n" role="37wK5m">
                                          <ref role="2Gs0qQ" node="3dfXoLlnkxH" resolve="builder" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs6" id="2p$3d4HjDLi" role="3cqZAp" />
                                </node>
                                <node concept="2OqwBi" id="2p$3d4Hj$Hl" role="3clFbw">
                                  <node concept="2OqwBi" id="2p$3d4HjzBg" role="2Oq$k0">
                                    <node concept="2GrUjf" id="2p$3d4HjzwO" role="2Oq$k0">
                                      <ref role="2Gs0qQ" node="3dfXoLlnkxH" resolve="builder" />
                                    </node>
                                    <node concept="liA8E" id="2p$3d4Hj$1J" role="2OqNvi">
                                      <ref role="37wK5l" to="8qxk:3yaa4ph8uyj" resolve="getModes" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="2p$3d4HjAIf" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~Collection.contains(java.lang.Object)" resolve="contains" />
                                    <node concept="2GrUjf" id="2p$3d4HjB50" role="37wK5m">
                                      <ref role="2Gs0qQ" node="3dfXoLlnj6f" resolve="contextMode" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2Gpval" id="2p$3d4HjHYE" role="3cqZAp">
                        <node concept="2GrKxI" id="2p$3d4HjHYF" role="2Gsz3X">
                          <property role="TrG5h" value="builder" />
                        </node>
                        <node concept="37vLTw" id="2p$3d4HjHYG" role="2GsD0m">
                          <ref role="3cqZAo" node="qrAFe9iJ$_" resolve="dataFlowBuilders" />
                        </node>
                        <node concept="3clFbS" id="2p$3d4HjHYH" role="2LFqv$">
                          <node concept="3clFbJ" id="2p$3d4HjHYI" role="3cqZAp">
                            <node concept="3clFbS" id="2p$3d4HjHYJ" role="3clFbx">
                              <node concept="3clFbF" id="4UWoudWNYWN" role="3cqZAp">
                                <node concept="2OqwBi" id="4UWoudWO3_e" role="3clFbG">
                                  <node concept="37vLTw" id="4UWoudWNYWL" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4UWoudWMC_y" resolve="myCache" />
                                  </node>
                                  <node concept="liA8E" id="4UWoudWO6Qw" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                                    <node concept="37vLTw" id="4UWoudWO8IU" role="37wK5m">
                                      <ref role="3cqZAo" node="qrAFe9jg$2" resolve="concept" />
                                    </node>
                                    <node concept="2GrUjf" id="4UWoudWOc3j" role="37wK5m">
                                      <ref role="2Gs0qQ" node="2p$3d4HjHYF" resolve="builder" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs6" id="2p$3d4HjHYK" role="3cqZAp" />
                            </node>
                            <node concept="2OqwBi" id="2p$3d4HjHYM" role="3clFbw">
                              <node concept="2OqwBi" id="2p$3d4HjHYN" role="2Oq$k0">
                                <node concept="2GrUjf" id="2p$3d4HjHYO" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="2p$3d4HjHYF" resolve="builder" />
                                </node>
                                <node concept="liA8E" id="2p$3d4HjHYP" role="2OqNvi">
                                  <ref role="37wK5l" to="8qxk:3yaa4ph8uyj" resolve="getModes" />
                                </node>
                              </node>
                              <node concept="liA8E" id="2p$3d4HjPdE" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Collection.isEmpty()" resolve="isEmpty" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="4UWoudWOkT7" role="3cqZAp">
                        <node concept="2OqwBi" id="4UWoudWOkT8" role="3clFbG">
                          <node concept="37vLTw" id="4UWoudWOkT9" role="2Oq$k0">
                            <ref role="3cqZAo" node="4UWoudWMC_y" resolve="myCache" />
                          </node>
                          <node concept="liA8E" id="4UWoudWOkTa" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                            <node concept="37vLTw" id="4UWoudWOkTb" role="37wK5m">
                              <ref role="3cqZAo" node="qrAFe9jg$2" resolve="concept" />
                            </node>
                            <node concept="10Nm6u" id="4UWoudWOn_j" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="4UWoudWMUUB" role="3clFbw">
            <node concept="2OqwBi" id="4UWoudWMUUD" role="3fr31v">
              <node concept="37vLTw" id="4UWoudWMUUE" role="2Oq$k0">
                <ref role="3cqZAo" node="4UWoudWMC_y" resolve="myCache" />
              </node>
              <node concept="liA8E" id="4UWoudWMUUF" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object)" resolve="containsKey" />
                <node concept="37vLTw" id="4UWoudWMUUG" role="37wK5m">
                  <ref role="3cqZAo" node="qrAFe9jg$2" resolve="concept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4UWoudWMWAp" role="3cqZAp">
          <node concept="2OqwBi" id="4UWoudWMZOr" role="3cqZAk">
            <node concept="37vLTw" id="4UWoudWMYMX" role="2Oq$k0">
              <ref role="3cqZAo" node="4UWoudWMC_y" resolve="myCache" />
            </node>
            <node concept="liA8E" id="4UWoudWN3fs" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
              <node concept="37vLTw" id="4UWoudWN56b" role="37wK5m">
                <ref role="3cqZAo" node="qrAFe9jg$2" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="qrAFe9jgds" role="1B3o_S" />
      <node concept="37vLTG" id="qrAFe9jg$2" role="3clF46">
        <property role="TrG5h" value="concept" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="qrAFe9jg$1" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="3uibUv" id="2$3McZ10ORN" role="3clF45">
        <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
      </node>
    </node>
    <node concept="3UR2Jj" id="7q5dBpSdq1s" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsAz1" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsAz2" role="1PaTwD">
          <property role="3oM_SC" value="XXX" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAz3" role="1PaTwD">
          <property role="3oM_SC" value="likely," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAz4" role="1PaTwD">
          <property role="3oM_SC" value="we" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAz5" role="1PaTwD">
          <property role="3oM_SC" value="need" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAz6" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAz7" role="1PaTwD">
          <property role="3oM_SC" value="factory" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAz8" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAz9" role="1PaTwD">
          <property role="3oM_SC" value="MPSProgramBuilder" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAza" role="1PaTwD">
          <property role="3oM_SC" value="registered" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAzb" role="1PaTwD">
          <property role="3oM_SC" value="as" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAzc" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAzd" role="1PaTwD">
          <property role="3oM_SC" value="CoreComponent," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAze" role="1PaTwD">
          <property role="3oM_SC" value="so" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAzf" role="1PaTwD">
          <property role="3oM_SC" value="that" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAzg" role="1PaTwD">
          <property role="3oM_SC" value="we" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAzh" role="1PaTwD">
          <property role="3oM_SC" value="can" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAzi" role="1PaTwD">
          <property role="3oM_SC" value="supply" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAzj" role="1PaTwD">
          <property role="3oM_SC" value="proper" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAzk" role="1PaTwD">
          <property role="3oM_SC" value="LanguageRegistry" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAzl" role="1PaTwD">
          <property role="3oM_SC" value="instance" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsAzm" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsAzn" role="1PaTwD">
          <property role="3oM_SC" value="in" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAzo" role="1PaTwD">
          <property role="3oM_SC" value="here" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAzp" role="1PaTwD">
          <property role="3oM_SC" value="without" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAzq" role="1PaTwD">
          <property role="3oM_SC" value="need" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAzr" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAzs" role="1PaTwD">
          <property role="3oM_SC" value="force" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAzt" role="1PaTwD">
          <property role="3oM_SC" value="clients" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAzu" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAzv" role="1PaTwD">
          <property role="3oM_SC" value="care" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAzw" role="1PaTwD">
          <property role="3oM_SC" value="about" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAzx" role="1PaTwD">
          <property role="3oM_SC" value="proper" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAzy" role="1PaTwD">
          <property role="3oM_SC" value="context." />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3HJD4JbIvKw">
    <property role="TrG5h" value="DataFlowBuilderContext" />
    <node concept="3Tm1VV" id="3HJD4JbIvKx" role="1B3o_S" />
    <node concept="312cEg" id="3HJD4JbIvKy" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <node concept="3uibUv" id="3HJD4JbIvKz" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3Tm6S6" id="3HJD4JbIvK$" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3HJD4JbIvK_" role="jymVt">
      <property role="TrG5h" value="myBuilder" />
      <node concept="3uibUv" id="3HJD4JbIvKA" role="1tU5fm">
        <ref role="3uigEE" node="3HJD4JbIvBk" resolve="MPSProgramBuilder" />
      </node>
      <node concept="3Tm6S6" id="3HJD4JbIvKB" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="3HJD4JbIvKC" role="jymVt">
      <node concept="3Tm1VV" id="3HJD4JbIvKD" role="1B3o_S" />
      <node concept="37vLTG" id="3HJD4JbIvKE" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="3HJD4JbIvKF" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJD4JbIvKG" role="3clF46">
        <property role="TrG5h" value="builder" />
        <node concept="3uibUv" id="3HJD4JbIvKH" role="1tU5fm">
          <ref role="3uigEE" node="3HJD4JbIvBk" resolve="MPSProgramBuilder" />
        </node>
      </node>
      <node concept="3clFbS" id="3HJD4JbIvKI" role="3clF47">
        <node concept="3clFbF" id="3HJD4JbIvKJ" role="3cqZAp">
          <node concept="37vLTI" id="3HJD4JbIvKK" role="3clFbG">
            <node concept="2OqwBi" id="3HJD4JbIvKL" role="37vLTJ">
              <node concept="2OwXpG" id="3HJD4JbIvKM" role="2OqNvi">
                <ref role="2Oxat5" node="3HJD4JbIvKy" resolve="myNode" />
              </node>
              <node concept="Xjq3P" id="3HJD4JbIvKN" role="2Oq$k0" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm6M5" role="37vLTx">
              <ref role="3cqZAo" node="3HJD4JbIvKE" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3HJD4JbIvKP" role="3cqZAp">
          <node concept="37vLTI" id="3HJD4JbIvKQ" role="3clFbG">
            <node concept="2OqwBi" id="3HJD4JbIvKR" role="37vLTJ">
              <node concept="2OwXpG" id="3HJD4JbIvKS" role="2OqNvi">
                <ref role="2Oxat5" node="3HJD4JbIvK_" resolve="myBuilder" />
              </node>
              <node concept="Xjq3P" id="3HJD4JbIvKT" role="2Oq$k0" />
            </node>
            <node concept="37vLTw" id="2BHiRxgkWBW" role="37vLTx">
              <ref role="3cqZAo" node="3HJD4JbIvKG" resolve="builder" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="EQtaUM29K9" role="3clF45" />
    </node>
    <node concept="3clFb_" id="3HJD4JbIvKV" role="jymVt">
      <property role="TrG5h" value="getBuilder" />
      <node concept="3Tm1VV" id="3HJD4JbIvKW" role="1B3o_S" />
      <node concept="3uibUv" id="3HJD4JbIvKX" role="3clF45">
        <ref role="3uigEE" node="3HJD4JbIvBk" resolve="MPSProgramBuilder" />
      </node>
      <node concept="3clFbS" id="3HJD4JbIvKY" role="3clF47">
        <node concept="3cpWs6" id="3HJD4JbIvKZ" role="3cqZAp">
          <node concept="2OqwBi" id="3HJD4JbIvL0" role="3cqZAk">
            <node concept="2OwXpG" id="3HJD4JbIvL1" role="2OqNvi">
              <ref role="2Oxat5" node="3HJD4JbIvK_" resolve="myBuilder" />
            </node>
            <node concept="Xjq3P" id="3HJD4JbIvL2" role="2Oq$k0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3HJD4JbIvL3" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="3HJD4JbIvL4" role="1B3o_S" />
      <node concept="3uibUv" id="3HJD4JbIvL5" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3clFbS" id="3HJD4JbIvL6" role="3clF47">
        <node concept="3cpWs6" id="3HJD4JbIvL7" role="3cqZAp">
          <node concept="2OqwBi" id="3HJD4JbIvL8" role="3cqZAk">
            <node concept="2OwXpG" id="3HJD4JbIvL9" role="2OqNvi">
              <ref role="2Oxat5" node="3HJD4JbIvKy" resolve="myNode" />
            </node>
            <node concept="Xjq3P" id="3HJD4JbIvLa" role="2Oq$k0" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3HJD4JbIw7C">
    <property role="TrG5h" value="DataflowBuilderException" />
    <node concept="3Tm1VV" id="3HJD4JbIw7D" role="1B3o_S" />
    <node concept="3uibUv" id="3HJD4JbIw7E" role="1zkMxy">
      <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
    </node>
    <node concept="3clFbW" id="3HJD4JbIw7F" role="jymVt">
      <node concept="3Tm1VV" id="3HJD4JbIw7G" role="1B3o_S" />
      <node concept="37vLTG" id="3HJD4JbIw7H" role="3clF46">
        <property role="TrG5h" value="s" />
        <node concept="17QB3L" id="3MUxWWhZPsH" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3HJD4JbIw7J" role="3clF47">
        <node concept="XkiVB" id="3HJD4JbIw7K" role="3cqZAp">
          <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
          <node concept="37vLTw" id="2BHiRxgm6ZD" role="37wK5m">
            <ref role="3cqZAo" node="3HJD4JbIw7H" resolve="s" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="EQtaUM29K7" role="3clF45" />
    </node>
  </node>
  <node concept="312cEu" id="3HJD4JbIw9v">
    <property role="TrG5h" value="DataFlow" />
    <node concept="3Tm1VV" id="3HJD4JbIw9w" role="1B3o_S" />
    <node concept="Wx3nA" id="3HJD4JbIw9x" role="jymVt">
      <property role="TrG5h" value="MAY_BE_UNREACHABLE" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="3MUxWWhZPst" role="1tU5fm" />
      <node concept="Xl_RD" id="3HJD4JbIw9z" role="33vP2m">
        <property role="Xl_RC" value="mayBeUnreachable" />
      </node>
      <node concept="3Tm1VV" id="4xFfMh6SVWH" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="3HJD4JbIw9$" role="jymVt">
      <node concept="3Tm1VV" id="3HJD4JbIw9_" role="1B3o_S" />
      <node concept="3clFbS" id="3HJD4JbIw9A" role="3clF47" />
      <node concept="3cqZAl" id="EQtaUM29Ka" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="3HJD4JbIw9P" role="jymVt">
      <property role="TrG5h" value="buildProgram" />
      <node concept="3Tm1VV" id="3HJD4JbIw9Q" role="1B3o_S" />
      <node concept="3uibUv" id="3HJD4JbIw9R" role="3clF45">
        <ref role="3uigEE" to="8qxk:3yaa4ph8tzc" resolve="Program" />
      </node>
      <node concept="37vLTG" id="3HJD4JbIw9S" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="3HJD4JbIw9T" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="3HJD4JbIw9U" role="3clF47">
        <node concept="3cpWs6" id="3HJD4JbIw9V" role="3cqZAp">
          <node concept="2OqwBi" id="qrAFe9jSKo" role="3cqZAk">
            <node concept="2ShNRf" id="qrAFe9jSKp" role="2Oq$k0">
              <node concept="1pGfFk" id="qrAFe9jSKq" role="2ShVmc">
                <ref role="37wK5l" node="4mpxoQud1f6" resolve="MPSProgramBuilder" />
              </node>
            </node>
            <node concept="liA8E" id="qrAFe9jSKs" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8umS" resolve="buildProgram" />
              <node concept="37vLTw" id="qrAFe9k5pL" role="37wK5m">
                <ref role="3cqZAo" node="3HJD4JbIw9S" resolve="node" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="3HJD4JbIwbD" role="jymVt">
      <property role="TrG5h" value="getExpectedReturns" />
      <node concept="3Tm1VV" id="3HJD4JbIwbE" role="1B3o_S" />
      <node concept="3uibUv" id="3HJD4JbIwbF" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="3HJD4JbIwbG" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJD4JbIwbH" role="3clF46">
        <property role="TrG5h" value="program" />
        <node concept="3uibUv" id="3HJD4JbIwbI" role="1tU5fm">
          <ref role="3uigEE" to="8qxk:3yaa4ph8tzc" resolve="Program" />
        </node>
      </node>
      <node concept="3clFbS" id="3HJD4JbIwbJ" role="3clF47">
        <node concept="3cpWs8" id="3HJD4JbIwbK" role="3cqZAp">
          <node concept="3cpWsn" id="3HJD4JbIwbL" role="3cpWs9">
            <property role="TrG5h" value="expectedReturns" />
            <node concept="3uibUv" id="3HJD4JbIwbM" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="3HJD4JbIwbN" role="11_B2D">
                <ref role="3uigEE" to="9fia:3yaa4ph8tQC" resolve="Instruction" />
              </node>
            </node>
            <node concept="2OqwBi" id="3HJD4JbIwbO" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxgl5d0" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJD4JbIwbH" resolve="program" />
              </node>
              <node concept="liA8E" id="3HJD4JbIwbQ" role="2OqNvi">
                <ref role="37wK5l" to="8qxk:3yaa4ph8tIs" resolve="getExpectedReturns" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3HJD4JbIwbR" role="3cqZAp">
          <node concept="3cpWsn" id="3HJD4JbIwbS" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="3HJD4JbIwbT" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="3HJD4JbIwbU" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="2ShNRf" id="3HJD4JbIwbV" role="33vP2m">
              <node concept="1pGfFk" id="3HJD4JbIwbW" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                <node concept="3uibUv" id="3HJD4JbIwbX" role="1pMfVU">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="3HJD4JbIwbY" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTxU1" role="1DdaDG">
            <ref role="3cqZAo" node="3HJD4JbIwbL" resolve="expectedReturns" />
          </node>
          <node concept="3cpWsn" id="3HJD4JbIwc0" role="1Duv9x">
            <property role="TrG5h" value="instr" />
            <node concept="3uibUv" id="3HJD4JbIwc1" role="1tU5fm">
              <ref role="3uigEE" to="9fia:3yaa4ph8tQC" resolve="Instruction" />
            </node>
          </node>
          <node concept="3clFbS" id="3HJD4JbIwc2" role="2LFqv$">
            <node concept="3clFbF" id="3HJD4JbIwc3" role="3cqZAp">
              <node concept="2OqwBi" id="3HJD4JbIwc4" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTyWv" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJD4JbIwbS" resolve="result" />
                </node>
                <node concept="liA8E" id="3HJD4JbIwc6" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="10QFUN" id="3HJD4JbIwc7" role="37wK5m">
                    <node concept="2OqwBi" id="3HJD4JbIwc8" role="10QFUP">
                      <node concept="37vLTw" id="3GM_nagTwBd" role="2Oq$k0">
                        <ref role="3cqZAo" node="3HJD4JbIwc0" resolve="instr" />
                      </node>
                      <node concept="liA8E" id="3HJD4JbIwca" role="2OqNvi">
                        <ref role="37wK5l" to="9fia:3yaa4ph8tRD" resolve="getSource" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="3HJD4JbIwcb" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3HJD4JbIwcc" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTsak" role="3cqZAk">
            <ref role="3cqZAo" node="3HJD4JbIwbS" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2$LRSQtS62d" role="jymVt" />
    <node concept="2YIFZL" id="3HJD4JbIwce" role="jymVt">
      <property role="TrG5h" value="getUninitializedReads" />
      <node concept="3Tm1VV" id="3HJD4JbIwcf" role="1B3o_S" />
      <node concept="3uibUv" id="3HJD4JbIwcg" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="3HJD4JbIwch" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJD4JbIwci" role="3clF46">
        <property role="TrG5h" value="program" />
        <node concept="3uibUv" id="3HJD4JbIwcj" role="1tU5fm">
          <ref role="3uigEE" to="8qxk:3yaa4ph8tzc" resolve="Program" />
        </node>
      </node>
      <node concept="3clFbS" id="3HJD4JbIwck" role="3clF47">
        <node concept="3cpWs8" id="3HJD4JbIwcl" role="3cqZAp">
          <node concept="3cpWsn" id="3HJD4JbIwcm" role="3cpWs9">
            <property role="TrG5h" value="reads" />
            <node concept="3uibUv" id="3HJD4JbIwcn" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="3HJD4JbIwco" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="2ShNRf" id="3HJD4JbIwcp" role="33vP2m">
              <node concept="1pGfFk" id="3HJD4JbIwcq" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                <node concept="3uibUv" id="3HJD4JbIwcr" role="1pMfVU">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="3HJD4JbIwcs" role="3cqZAp">
          <node concept="2OqwBi" id="3HJD4JbIwct" role="1DdaDG">
            <node concept="37vLTw" id="2BHiRxgm8ja" role="2Oq$k0">
              <ref role="3cqZAo" node="3HJD4JbIwci" resolve="program" />
            </node>
            <node concept="liA8E" id="3HJD4JbIwcv" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8tJ8" resolve="getUninitializedReads" />
            </node>
          </node>
          <node concept="3cpWsn" id="3HJD4JbIwcw" role="1Duv9x">
            <property role="TrG5h" value="read" />
            <node concept="3uibUv" id="3HJD4JbIwcx" role="1tU5fm">
              <ref role="3uigEE" to="9fia:3yaa4ph8uFE" resolve="ReadInstruction" />
            </node>
          </node>
          <node concept="3clFbS" id="3HJD4JbIwcy" role="2LFqv$">
            <node concept="3clFbF" id="3HJD4JbIwcz" role="3cqZAp">
              <node concept="2OqwBi" id="3HJD4JbIwc$" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTu9g" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJD4JbIwcm" resolve="reads" />
                </node>
                <node concept="liA8E" id="3HJD4JbIwcA" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="10QFUN" id="3HJD4JbIwcB" role="37wK5m">
                    <node concept="2OqwBi" id="3HJD4JbIwcC" role="10QFUP">
                      <node concept="37vLTw" id="3GM_nagTvLW" role="2Oq$k0">
                        <ref role="3cqZAo" node="3HJD4JbIwcw" resolve="read" />
                      </node>
                      <node concept="liA8E" id="3HJD4JbIwcE" role="2OqNvi">
                        <ref role="37wK5l" to="9fia:3yaa4ph8tRD" resolve="getSource" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="3HJD4JbIwcF" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3HJD4JbIwcG" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTrzy" role="3cqZAk">
            <ref role="3cqZAo" node="3HJD4JbIwcm" resolve="reads" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="16taZ9EC5R5" role="jymVt" />
    <node concept="2YIFZL" id="4gNLpVtobGZ" role="jymVt">
      <property role="TrG5h" value="isInitializedRewritten" />
      <node concept="10P_77" id="4gNLpVtojUJ" role="3clF45" />
      <node concept="3Tm1VV" id="4gNLpVtobH1" role="1B3o_S" />
      <node concept="3clFbS" id="4gNLpVtobH2" role="3clF47">
        <node concept="3cpWs8" id="4gNLpVtojUP" role="3cqZAp">
          <node concept="3cpWsn" id="4gNLpVtojUQ" role="3cpWs9">
            <property role="TrG5h" value="writeInstruction" />
            <node concept="3uibUv" id="4gNLpVtojUR" role="1tU5fm">
              <ref role="3uigEE" to="9fia:3yaa4ph8uM7" resolve="WriteInstruction" />
            </node>
            <node concept="10Nm6u" id="4gNLpVtojUT" role="33vP2m" />
          </node>
        </node>
        <node concept="1DcWWT" id="4gNLpVtojUV" role="3cqZAp">
          <node concept="3clFbS" id="4gNLpVtojUW" role="2LFqv$">
            <node concept="3clFbJ" id="4gNLpVtojVq" role="3cqZAp">
              <node concept="3clFbS" id="4gNLpVtojVr" role="3clFbx">
                <node concept="3clFbF" id="4gNLpVtojVK" role="3cqZAp">
                  <node concept="37vLTI" id="4gNLpVtojVM" role="3clFbG">
                    <node concept="10QFUN" id="4gNLpVtojVP" role="37vLTx">
                      <node concept="3uibUv" id="4gNLpVtojVQ" role="10QFUM">
                        <ref role="3uigEE" to="9fia:3yaa4ph8uM7" resolve="WriteInstruction" />
                      </node>
                      <node concept="37vLTw" id="3GM_nagT_Vz" role="10QFUP">
                        <ref role="3cqZAo" node="4gNLpVtojUZ" resolve="instruction" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3GM_nagTwud" role="37vLTJ">
                      <ref role="3cqZAo" node="4gNLpVtojUQ" resolve="writeInstruction" />
                    </node>
                  </node>
                </node>
                <node concept="3zACq4" id="4gNLpVtojVU" role="3cqZAp" />
              </node>
              <node concept="1Wc70l" id="4gNLpVtojVz" role="3clFbw">
                <node concept="3clFbC" id="4gNLpVtojVG" role="3uHU7w">
                  <node concept="37vLTw" id="2BHiRxgmwWD" role="3uHU7w">
                    <ref role="3cqZAo" node="4gNLpVtojUM" resolve="write" />
                  </node>
                  <node concept="2OqwBi" id="4gNLpVtojVB" role="3uHU7B">
                    <node concept="37vLTw" id="3GM_nagT$6e" role="2Oq$k0">
                      <ref role="3cqZAo" node="4gNLpVtojUZ" resolve="instruction" />
                    </node>
                    <node concept="liA8E" id="4gNLpVtojVF" role="2OqNvi">
                      <ref role="37wK5l" to="9fia:3yaa4ph8tRD" resolve="getSource" />
                    </node>
                  </node>
                </node>
                <node concept="2ZW3vV" id="4gNLpVtojVv" role="3uHU7B">
                  <node concept="3uibUv" id="4gNLpVtojVy" role="2ZW6by">
                    <ref role="3uigEE" to="9fia:3yaa4ph8uM7" resolve="WriteInstruction" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTvk9" role="2ZW6bz">
                    <ref role="3cqZAo" node="4gNLpVtojUZ" resolve="instruction" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4gNLpVtojVc" role="1DdaDG">
            <node concept="37vLTw" id="2BHiRxglwxt" role="2Oq$k0">
              <ref role="3cqZAo" node="4gNLpVtojUK" resolve="program" />
            </node>
            <node concept="liA8E" id="4gNLpVtojVi" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8tEm" resolve="getInstructionsFor" />
              <node concept="37vLTw" id="2BHiRxgm6x6" role="37wK5m">
                <ref role="3cqZAo" node="4gNLpVtojUM" resolve="write" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4gNLpVtojUZ" role="1Duv9x">
            <property role="TrG5h" value="instruction" />
            <node concept="3uibUv" id="4gNLpVtojV4" role="1tU5fm">
              <ref role="3uigEE" to="9fia:3yaa4ph8tQC" resolve="Instruction" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4gNLpVtojVX" role="3cqZAp">
          <node concept="3clFbS" id="4gNLpVtojVY" role="3clFbx">
            <node concept="3cpWs6" id="4gNLpVtojW6" role="3cqZAp">
              <node concept="2OqwBi" id="4gNLpVtojW9" role="3cqZAk">
                <node concept="37vLTw" id="2BHiRxgmKM2" role="2Oq$k0">
                  <ref role="3cqZAo" node="4gNLpVtojUK" resolve="program" />
                </node>
                <node concept="liA8E" id="4gNLpVtojWd" role="2OqNvi">
                  <ref role="37wK5l" to="8qxk:3yaa4ph8tJV" resolve="isInitializedRewritten" />
                  <node concept="37vLTw" id="3GM_nagTzU4" role="37wK5m">
                    <ref role="3cqZAo" node="4gNLpVtojUQ" resolve="writeInstruction" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4gNLpVtojW2" role="3clFbw">
            <node concept="10Nm6u" id="4gNLpVtojW5" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTyyi" role="3uHU7B">
              <ref role="3cqZAo" node="4gNLpVtojUQ" resolve="writeInstruction" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4gNLpVtojWh" role="3cqZAp">
          <node concept="3clFbT" id="4gNLpVtojWj" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4gNLpVtojUK" role="3clF46">
        <property role="TrG5h" value="program" />
        <node concept="3uibUv" id="4gNLpVtojUL" role="1tU5fm">
          <ref role="3uigEE" to="8qxk:3yaa4ph8tzc" resolve="Program" />
        </node>
      </node>
      <node concept="37vLTG" id="4gNLpVtojUM" role="3clF46">
        <property role="TrG5h" value="write" />
        <node concept="3uibUv" id="4gNLpVtojUO" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="3HJD4JbIwcI" role="jymVt">
      <property role="TrG5h" value="getUsedVariables" />
      <node concept="3Tm1VV" id="3HJD4JbIwcJ" role="1B3o_S" />
      <node concept="3uibUv" id="3HJD4JbIwcK" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="3HJD4JbIwcL" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJD4JbIwcM" role="3clF46">
        <property role="TrG5h" value="program" />
        <node concept="3uibUv" id="3HJD4JbIwcN" role="1tU5fm">
          <ref role="3uigEE" to="8qxk:3yaa4ph8tzc" resolve="Program" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJD4JbIwcO" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="3HJD4JbIwcP" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="3HJD4JbIwcQ" role="3clF47">
        <node concept="3cpWs8" id="3HJD4JbIwcR" role="3cqZAp">
          <node concept="3cpWsn" id="3HJD4JbIwcS" role="3cpWs9">
            <property role="TrG5h" value="readVars" />
            <node concept="3uibUv" id="3HJD4JbIwcT" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="3HJD4JbIwcU" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="2ShNRf" id="3HJD4JbIwcV" role="33vP2m">
              <node concept="1pGfFk" id="3HJD4JbIwcW" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                <node concept="3uibUv" id="3HJD4JbIwcX" role="1pMfVU">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7ZSwRqEKRjV" role="3cqZAp">
          <node concept="3cpWsn" id="7ZSwRqEKRjU" role="3cpWs9">
            <property role="TrG5h" value="faintReads" />
            <node concept="3uibUv" id="7ZSwRqEKRjW" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="7ZSwRqEKRjX" role="11_B2D">
                <ref role="3uigEE" to="9fia:3yaa4ph8uFE" resolve="ReadInstruction" />
              </node>
            </node>
            <node concept="2OqwBi" id="7ZSwRqEKRkn" role="33vP2m">
              <node concept="37vLTw" id="7ZSwRqEKRk1" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJD4JbIwcM" resolve="program" />
              </node>
              <node concept="liA8E" id="7ZSwRqEKRko" role="2OqNvi">
                <ref role="37wK5l" to="8qxk:7ZSwRqEJjYS" resolve="getFaintSelfReads" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7ZSwRqEKXbf" role="3cqZAp">
          <node concept="2OqwBi" id="7ZSwRqEKXca" role="1DdaDG">
            <node concept="37vLTw" id="7ZSwRqEKXbH" role="2Oq$k0">
              <ref role="3cqZAo" node="3HJD4JbIwcM" resolve="program" />
            </node>
            <node concept="liA8E" id="7ZSwRqEKXcb" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8t$L" resolve="getInstructions" />
            </node>
          </node>
          <node concept="3cpWsn" id="7ZSwRqEKXbB" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="3uibUv" id="7ZSwRqEKXbD" role="1tU5fm">
              <ref role="3uigEE" to="9fia:3yaa4ph8tQC" resolve="Instruction" />
            </node>
          </node>
          <node concept="3clFbS" id="7ZSwRqEKXbh" role="2LFqv$">
            <node concept="3clFbJ" id="7ZSwRqEKXbi" role="3cqZAp">
              <node concept="1Wc70l" id="7ZSwRqEKXbj" role="3clFbw">
                <node concept="2ZW3vV" id="7ZSwRqEKXbm" role="3uHU7B">
                  <node concept="37vLTw" id="7ZSwRqEKXbk" role="2ZW6bz">
                    <ref role="3cqZAo" node="7ZSwRqEKXbB" resolve="i" />
                  </node>
                  <node concept="3uibUv" id="7ZSwRqEKXbl" role="2ZW6by">
                    <ref role="3uigEE" to="9fia:3yaa4ph8uFE" resolve="ReadInstruction" />
                  </node>
                </node>
                <node concept="3fqX7Q" id="7ZSwRqEKXbn" role="3uHU7w">
                  <node concept="2OqwBi" id="7ZSwRqEKXeh" role="3fr31v">
                    <node concept="37vLTw" id="7ZSwRqEKXbL" role="2Oq$k0">
                      <ref role="3cqZAo" node="7ZSwRqEKRjU" resolve="faintReads" />
                    </node>
                    <node concept="liA8E" id="7ZSwRqEKXei" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object)" resolve="contains" />
                      <node concept="10QFUN" id="7ZSwRqEKXej" role="37wK5m">
                        <node concept="37vLTw" id="7ZSwRqEKXek" role="10QFUP">
                          <ref role="3cqZAo" node="7ZSwRqEKXbB" resolve="i" />
                        </node>
                        <node concept="3uibUv" id="7ZSwRqEKXel" role="10QFUM">
                          <ref role="3uigEE" to="9fia:3yaa4ph8uFE" resolve="ReadInstruction" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7ZSwRqEKXbt" role="3clFbx">
                <node concept="3clFbF" id="7ZSwRqEKXbu" role="3cqZAp">
                  <node concept="2OqwBi" id="7ZSwRqEKXgr" role="3clFbG">
                    <node concept="37vLTw" id="7ZSwRqEKXbS" role="2Oq$k0">
                      <ref role="3cqZAo" node="3HJD4JbIwcS" resolve="readVars" />
                    </node>
                    <node concept="liA8E" id="7ZSwRqEKXgs" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                      <node concept="10QFUN" id="7ZSwRqEKXgt" role="37wK5m">
                        <node concept="2OqwBi" id="7ZSwRqEKXgJ" role="10QFUP">
                          <node concept="1eOMI4" id="7ZSwRqEKXgv" role="2Oq$k0">
                            <node concept="10QFUN" id="7ZSwRqEKXgw" role="1eOMHV">
                              <node concept="37vLTw" id="7ZSwRqEKXgx" role="10QFUP">
                                <ref role="3cqZAo" node="7ZSwRqEKXbB" resolve="i" />
                              </node>
                              <node concept="3uibUv" id="7ZSwRqEKXgy" role="10QFUM">
                                <ref role="3uigEE" to="9fia:3yaa4ph8uFE" resolve="ReadInstruction" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="7ZSwRqEKXgK" role="2OqNvi">
                            <ref role="37wK5l" to="9fia:3yaa4ph8uGr" resolve="getVariable" />
                          </node>
                        </node>
                        <node concept="3uibUv" id="7ZSwRqEKXgz" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3HJD4JbIwdm" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagT$in" role="3cqZAk">
            <ref role="3cqZAo" node="3HJD4JbIwcS" resolve="readVars" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="3HJD4JbIwdo" role="jymVt">
      <property role="TrG5h" value="getUnusedAssignments" />
      <node concept="3Tm1VV" id="3HJD4JbIwdp" role="1B3o_S" />
      <node concept="3uibUv" id="3HJD4JbIwdq" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="3HJD4JbIwdr" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJD4JbIwds" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="3HJD4JbIwdt" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="3HJD4JbIwdu" role="3clF47">
        <node concept="3cpWs6" id="3HJD4JbIwdv" role="3cqZAp">
          <node concept="2YIFZM" id="3HJD4JbIwdw" role="3cqZAk">
            <ref role="1Pybhc" node="3HJD4JbIw9v" resolve="DataFlow" />
            <ref role="37wK5l" node="3HJD4JbIwdz" resolve="getUnusedAssignments" />
            <node concept="2YIFZM" id="3HJD4JbIwdx" role="37wK5m">
              <ref role="1Pybhc" node="3HJD4JbIw9v" resolve="DataFlow" />
              <ref role="37wK5l" node="3HJD4JbIw9P" resolve="buildProgram" />
              <node concept="37vLTw" id="2BHiRxglMKd" role="37wK5m">
                <ref role="3cqZAo" node="3HJD4JbIwds" resolve="node" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="3HJD4JbIwdz" role="jymVt">
      <property role="TrG5h" value="getUnusedAssignments" />
      <node concept="3Tm1VV" id="3HJD4JbIwd$" role="1B3o_S" />
      <node concept="3uibUv" id="3HJD4JbIwd_" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="3HJD4JbIwdA" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJD4JbIwdB" role="3clF46">
        <property role="TrG5h" value="program" />
        <node concept="3uibUv" id="3HJD4JbIwdC" role="1tU5fm">
          <ref role="3uigEE" to="8qxk:3yaa4ph8tzc" resolve="Program" />
        </node>
      </node>
      <node concept="3clFbS" id="3HJD4JbIwdD" role="3clF47">
        <node concept="3cpWs8" id="3HJD4JbIwdE" role="3cqZAp">
          <node concept="3cpWsn" id="3HJD4JbIwdF" role="3cpWs9">
            <property role="TrG5h" value="unusedAssignments" />
            <node concept="3uibUv" id="3HJD4JbIwdG" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="3HJD4JbIwdH" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="2ShNRf" id="3HJD4JbIwdI" role="33vP2m">
              <node concept="1pGfFk" id="3HJD4JbIwdJ" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                <node concept="3uibUv" id="3HJD4JbIwdK" role="1pMfVU">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="3HJD4JbIwdL" role="3cqZAp">
          <node concept="2OqwBi" id="3HJD4JbIwdM" role="1DdaDG">
            <node concept="37vLTw" id="2BHiRxghfuU" role="2Oq$k0">
              <ref role="3cqZAo" node="3HJD4JbIwdB" resolve="program" />
            </node>
            <node concept="liA8E" id="3HJD4JbIwdO" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8tKg" resolve="getUnusedAssignments" />
            </node>
          </node>
          <node concept="3cpWsn" id="3HJD4JbIwdP" role="1Duv9x">
            <property role="TrG5h" value="write" />
            <node concept="3uibUv" id="3HJD4JbIwdQ" role="1tU5fm">
              <ref role="3uigEE" to="9fia:3yaa4ph8uM7" resolve="WriteInstruction" />
            </node>
          </node>
          <node concept="3clFbS" id="3HJD4JbIwdR" role="2LFqv$">
            <node concept="3clFbF" id="3HJD4JbIwdS" role="3cqZAp">
              <node concept="2OqwBi" id="3HJD4JbIwdT" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTBLn" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJD4JbIwdF" resolve="unusedAssignments" />
                </node>
                <node concept="liA8E" id="3HJD4JbIwdV" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="10QFUN" id="3HJD4JbIwdW" role="37wK5m">
                    <node concept="2OqwBi" id="3HJD4JbIwdX" role="10QFUP">
                      <node concept="37vLTw" id="3GM_nagTACo" role="2Oq$k0">
                        <ref role="3cqZAo" node="3HJD4JbIwdP" resolve="write" />
                      </node>
                      <node concept="liA8E" id="3HJD4JbIwdZ" role="2OqNvi">
                        <ref role="37wK5l" to="9fia:3yaa4ph8tRD" resolve="getSource" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="3HJD4JbIwe0" role="10QFUM">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3HJD4JbIwe1" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTANc" role="3cqZAk">
            <ref role="3cqZAo" node="3HJD4JbIwdF" resolve="unusedAssignments" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3HJD4JbIwf_">
    <property role="TrG5h" value="DataFlowBuilder" />
    <property role="1sVAO0" value="true" />
    <node concept="3uibUv" id="3yaa4phaGNC" role="EKbjA">
      <ref role="3uigEE" to="8qxk:3yaa4ph8uyb" resolve="IDataFlowBuilder" />
    </node>
    <node concept="2tJIrI" id="4dNj9j_5KJa" role="jymVt" />
    <node concept="3Tm1VV" id="3HJD4JbIwfA" role="1B3o_S" />
    <node concept="3clFb_" id="4dNj9j_5Kld" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="build" />
      <node concept="3Tm1VV" id="4dNj9j_5Kle" role="1B3o_S" />
      <node concept="3cqZAl" id="4dNj9j_5Klf" role="3clF45" />
      <node concept="37vLTG" id="4dNj9j_5Klg" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="4dNj9j_5Klh" role="1tU5fm">
          <ref role="3uigEE" node="3HJD4JbIvKw" resolve="DataFlowBuilderContext" />
        </node>
      </node>
      <node concept="3clFbS" id="4dNj9j_5Klj" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="3nqUySdi9nS" role="jymVt" />
    <node concept="3clFb_" id="3nqUySdi9pO" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getModes" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="3nqUySdi9pP" role="1B3o_S" />
      <node concept="3uibUv" id="3nqUySdi9pR" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="53eBnx6YQ2u" role="11_B2D">
          <ref role="3uigEE" to="8qxk:3yaa4ph8tQx" resolve="IDataFlowModeId" />
        </node>
      </node>
      <node concept="3clFbS" id="3nqUySdi9pT" role="3clF47">
        <node concept="3clFbF" id="3nqUySdi9w9" role="3cqZAp">
          <node concept="2YIFZM" id="3nqUySdi9yG" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="3uibUv" id="53eBnx6YQig" role="3PaCim">
              <ref role="3uigEE" to="8qxk:3yaa4ph8tQx" resolve="IDataFlowModeId" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3nqUySdi9pU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2ULNtK16PUg">
    <property role="TrG5h" value="MPSProgramFactory" />
    <node concept="312cEg" id="4nuJlNnWZ39" role="jymVt">
      <property role="TrG5h" value="myContext" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4nuJlNnWZ37" role="1B3o_S" />
      <node concept="3uibUv" id="4nuJlNnWZ38" role="1tU5fm">
        <ref role="3uigEE" to="8qxk:3yaa4ph8uUg" resolve="ProgramBuilderContext" />
      </node>
    </node>
    <node concept="312cEg" id="3D2zx$UvRGa" role="jymVt">
      <property role="TrG5h" value="myPlatform" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3D2zx$UvRGb" role="1B3o_S" />
      <node concept="3uibUv" id="3D2zx$UvRGd" role="1tU5fm">
        <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
      </node>
    </node>
    <node concept="2tJIrI" id="3D2zx$UvPzV" role="jymVt" />
    <node concept="3Tm1VV" id="2ULNtK16PUh" role="1B3o_S" />
    <node concept="3clFbW" id="7e7F6PQDk2Q" role="jymVt">
      <node concept="3cqZAl" id="7e7F6PQDk2R" role="3clF45" />
      <node concept="3Tm1VV" id="7e7F6PQDk2S" role="1B3o_S" />
      <node concept="3clFbS" id="7e7F6PQDk2T" role="3clF47">
        <node concept="3clFbF" id="3D2zx$UvSZ9" role="3cqZAp">
          <node concept="37vLTI" id="3D2zx$UvTeI" role="3clFbG">
            <node concept="10Nm6u" id="3D2zx$UvTmG" role="37vLTx" />
            <node concept="37vLTw" id="3D2zx$UvSZ7" role="37vLTJ">
              <ref role="3cqZAo" node="3D2zx$UvRGa" resolve="myPlatform" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7e7F6PQDk2U" role="3cqZAp">
          <node concept="37vLTI" id="7e7F6PQDk2V" role="3clFbG">
            <node concept="2ShNRf" id="7e7F6PQDk2W" role="37vLTx">
              <node concept="1pGfFk" id="7e7F6PQDk2X" role="2ShVmc">
                <ref role="37wK5l" to="8qxk:3yaa4ph8uH7" resolve="ProgramBuilderContextImpl" />
                <node concept="37vLTw" id="7e7F6PQDk2Y" role="37wK5m">
                  <ref role="3cqZAo" node="7e7F6PQDk32" resolve="modes" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7e7F6PQDk2Z" role="37vLTJ">
              <node concept="Xjq3P" id="7e7F6PQDk30" role="2Oq$k0" />
              <node concept="2OwXpG" id="7e7F6PQDk31" role="2OqNvi">
                <ref role="2Oxat5" node="4nuJlNnWZ39" resolve="myContext" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7e7F6PQDk32" role="3clF46">
        <property role="TrG5h" value="modes" />
        <node concept="3uibUv" id="7e7F6PQDk33" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
          <node concept="3uibUv" id="7e7F6PQDlVK" role="11_B2D">
            <ref role="3uigEE" to="8qxk:3yaa4ph8tQx" resolve="IDataFlowModeId" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="3D2zx$UvTuO" role="lGtFl">
        <node concept="TZ5HI" id="3D2zx$UvTuP" role="3nqlJM">
          <node concept="1PaTwC" id="1E1X3WHsA$f" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsA$g" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="1Vtdud" id="1E1X3WHsA$h" role="1PaTwD">
              <node concept="1VuXuv" id="1E1X3WHsA$i" role="1Vtduc">
                <node concept="VXe0Z" id="3D2zx$UvUmZ" role="1VuXuu">
                  <ref role="VXe0S" node="3D2zx$UvQGk" resolve="MPSProgramFactory" />
                </node>
                <node concept="1PaTwC" id="1E1X3WHsA$l" role="2JaDBN">
                  <node concept="3oM_SD" id="1E1X3WHsA$m" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3oM_SD" id="1E1X3WHsA$n" role="1PaTwD">
              <property role="3oM_SC" value="instead," />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsA$o" role="1PaTwD">
              <property role="3oM_SC" value="or" />
            </node>
            <node concept="1Vtdud" id="1E1X3WHsA$p" role="1PaTwD">
              <node concept="1VuXuv" id="1E1X3WHsA$q" role="1Vtduc">
                <node concept="VXe0Z" id="3D2zx$UvUI9" role="1VuXuu">
                  <ref role="VXe0S" to="vndm:~LanguageRegistry.withAvailableExtensions(java.lang.Class,jetbrains.mps.smodel.runtime.ModuleRuntime$Extension$MatchRequest,java.util.function.Consumer)" resolve="withAvailableExtensions" />
                </node>
                <node concept="1PaTwC" id="1E1X3WHsA$t" role="2JaDBN">
                  <node concept="3oM_SD" id="1E1X3WHsA$u" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3oM_SD" id="1E1X3WHsA$v" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsA$w" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsA$x" role="1PaTwD">
              <property role="3oM_SC" value="pre-initialized" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsA$y" role="1PaTwD">
              <property role="3oM_SC" value="instance" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsA$z" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsA$$" role="1PaTwD">
              <property role="3oM_SC" value="you" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsA$_" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsA$A" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsA$B" role="1PaTwD">
              <property role="3oM_SC" value="specific" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsA$C" role="1PaTwD">
              <property role="3oM_SC" value="modes" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3D2zx$UvTuR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
        <node concept="2B6LJw" id="3D2zx$UvT$$" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~Deprecated.forRemoval()" resolve="forRemoval" />
          <node concept="3clFbT" id="3D2zx$UvTB8" role="2B70Vg">
            <property role="3clFbU" value="true" />
          </node>
        </node>
        <node concept="2B6LJw" id="3D2zx$UvTBu" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~Deprecated.since()" resolve="since" />
          <node concept="Xl_RD" id="3D2zx$UvUJU" role="2B70Vg">
            <property role="Xl_RC" value="2025.1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3D2zx$UvR1c" role="jymVt" />
    <node concept="3clFbW" id="3D2zx$UvQGk" role="jymVt">
      <node concept="3cqZAl" id="3D2zx$UvQGl" role="3clF45" />
      <node concept="3Tm1VV" id="3D2zx$UvQGm" role="1B3o_S" />
      <node concept="3clFbS" id="3D2zx$UvQGn" role="3clF47">
        <node concept="3clFbF" id="3D2zx$UvRGe" role="3cqZAp">
          <node concept="37vLTI" id="3D2zx$UvRGg" role="3clFbG">
            <node concept="37vLTw" id="3D2zx$UvRGj" role="37vLTJ">
              <ref role="3cqZAo" node="3D2zx$UvRGa" resolve="myPlatform" />
            </node>
            <node concept="37vLTw" id="3D2zx$UvRGk" role="37vLTx">
              <ref role="3cqZAo" node="3D2zx$UvRlC" resolve="mpsPlatform" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3D2zx$UvQGo" role="3cqZAp">
          <node concept="37vLTI" id="3D2zx$UvQGp" role="3clFbG">
            <node concept="2ShNRf" id="3D2zx$UvQGq" role="37vLTx">
              <node concept="1pGfFk" id="3D2zx$UvQGr" role="2ShVmc">
                <ref role="37wK5l" to="8qxk:3yaa4ph8uH7" resolve="ProgramBuilderContextImpl" />
                <node concept="37vLTw" id="3D2zx$UvQGs" role="37wK5m">
                  <ref role="3cqZAo" node="3D2zx$UvQGw" resolve="modes" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3D2zx$UvS$G" role="37vLTJ">
              <ref role="3cqZAo" node="4nuJlNnWZ39" resolve="myContext" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3D2zx$UvRlC" role="3clF46">
        <property role="TrG5h" value="mpsPlatform" />
        <node concept="3uibUv" id="3D2zx$UvRvA" role="1tU5fm">
          <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
        </node>
      </node>
      <node concept="37vLTG" id="3D2zx$UvQGw" role="3clF46">
        <property role="TrG5h" value="modes" />
        <node concept="3uibUv" id="3D2zx$UvQGx" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
          <node concept="3uibUv" id="3D2zx$UvQGy" role="11_B2D">
            <ref role="3uigEE" to="8qxk:3yaa4ph8tQx" resolve="IDataFlowModeId" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3D2zx$UvQpc" role="jymVt" />
    <node concept="3uibUv" id="2ULNtK16Q6O" role="EKbjA">
      <ref role="3uigEE" to="8qxk:3yaa4ph8uCL" resolve="ProgramFactory" />
      <node concept="3uibUv" id="2ULNtK1a9j4" role="11_B2D">
        <ref role="3uigEE" to="8qxk:3yaa4ph8uTO" resolve="NamedAnalyzerId" />
      </node>
    </node>
    <node concept="3clFb_" id="2ULNtK16Qzo" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createProgram" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="2ULNtK179BX" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="2ULNtK179DL" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="2ULNtK16Qzp" role="1B3o_S" />
      <node concept="3uibUv" id="2ULNtK16Qzu" role="3clF45">
        <ref role="3uigEE" to="8qxk:3yaa4ph8tzc" resolve="Program" />
      </node>
      <node concept="3clFbS" id="2ULNtK16Qzv" role="3clF47">
        <node concept="3cpWs8" id="4OKSZMF0mGZ" role="3cqZAp">
          <node concept="3cpWsn" id="4OKSZMF0mH0" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="4OKSZMF0mxQ" role="1tU5fm">
              <ref role="3uigEE" node="3HJD4JbIvBk" resolve="MPSProgramBuilder" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4OKSZMF0joY" role="3cqZAp">
          <node concept="3clFbS" id="4OKSZMF0jp0" role="3clFbx">
            <node concept="3clFbF" id="4OKSZMF0ogM" role="3cqZAp">
              <node concept="37vLTI" id="4OKSZMF0p8p" role="3clFbG">
                <node concept="2ShNRf" id="4OKSZMF0pyL" role="37vLTx">
                  <node concept="1pGfFk" id="4OKSZMF0r0s" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="4OKSZMEZ3OG" resolve="MPSProgramBuilder" />
                    <node concept="2ShNRf" id="4OKSZMF0sGD" role="37wK5m">
                      <node concept="HV5vD" id="4OKSZMF0sGE" role="2ShVmc">
                        <ref role="HV5vE" to="9fia:3yaa4ph8ubY" resolve="InstructionBuilder" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4OKSZMF0tFX" role="37wK5m">
                      <ref role="3cqZAo" node="4nuJlNnWZ39" resolve="myContext" />
                    </node>
                    <node concept="37vLTw" id="4OKSZMF0rMv" role="37wK5m">
                      <ref role="3cqZAo" node="3D2zx$UvRGa" resolve="myPlatform" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4OKSZMF0ogK" role="37vLTJ">
                  <ref role="3cqZAo" node="4OKSZMF0mH0" resolve="builder" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4OKSZMF0kl3" role="3clFbw">
            <node concept="10Nm6u" id="4OKSZMF0kMp" role="3uHU7w" />
            <node concept="37vLTw" id="4OKSZMF0jOh" role="3uHU7B">
              <ref role="3cqZAo" node="3D2zx$UvRGa" resolve="myPlatform" />
            </node>
          </node>
          <node concept="9aQIb" id="4OKSZMF0u6a" role="9aQIa">
            <node concept="3clFbS" id="4OKSZMF0u6b" role="9aQI4">
              <node concept="3clFbF" id="4OKSZMF0n8G" role="3cqZAp">
                <node concept="37vLTI" id="4OKSZMF0n8I" role="3clFbG">
                  <node concept="2ShNRf" id="4OKSZMF0mH1" role="37vLTx">
                    <node concept="1pGfFk" id="4OKSZMF0mH2" role="2ShVmc">
                      <ref role="37wK5l" node="6UdHCtZMMPI" resolve="MPSProgramBuilder" />
                      <node concept="10QFUN" id="4OKSZMF0xdU" role="37wK5m">
                        <node concept="3uibUv" id="4OKSZMF0x_F" role="10QFUM">
                          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                        </node>
                        <node concept="10Nm6u" id="4OKSZMF0mH3" role="10QFUP" />
                      </node>
                      <node concept="2ShNRf" id="4OKSZMF0mH4" role="37wK5m">
                        <node concept="HV5vD" id="4OKSZMF0mH5" role="2ShVmc">
                          <ref role="HV5vE" to="9fia:3yaa4ph8ubY" resolve="InstructionBuilder" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4OKSZMF0mH6" role="37wK5m">
                        <ref role="3cqZAo" node="4nuJlNnWZ39" resolve="myContext" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="4OKSZMF0n8M" role="37vLTJ">
                    <ref role="3cqZAo" node="4OKSZMF0mH0" resolve="builder" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2ULNtK16HAb" role="3cqZAp">
          <node concept="2OqwBi" id="2ULNtK16HEm" role="3cqZAk">
            <node concept="37vLTw" id="4OKSZMF0mH7" role="2Oq$k0">
              <ref role="3cqZAo" node="4OKSZMF0mH0" resolve="builder" />
            </node>
            <node concept="liA8E" id="2ULNtK16HEp" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8umS" resolve="buildProgram" />
              <node concept="37vLTw" id="2ULNtK1a7HS" role="37wK5m">
                <ref role="3cqZAo" node="2ULNtK179BX" resolve="node" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2ULNtK16Qzw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4OKSZMEXKUA" role="jymVt" />
    <node concept="3clFb_" id="2ULNtK16Qzx" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="prepareProgram" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="2ULNtK16Qzy" role="1B3o_S" />
      <node concept="3cqZAl" id="2ULNtK16Qz$" role="3clF45" />
      <node concept="37vLTG" id="2ULNtK16QzB" role="3clF46">
        <property role="TrG5h" value="program" />
        <node concept="3uibUv" id="2ULNtK16QzD" role="1tU5fm">
          <ref role="3uigEE" to="8qxk:3yaa4ph8tzc" resolve="Program" />
        </node>
      </node>
      <node concept="37vLTG" id="2ULNtK1a5yv" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="2ULNtK1a5HL" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2ULNtK1a9y$" role="3clF46">
        <property role="TrG5h" value="analyzerId" />
        <node concept="3uibUv" id="2ULNtK1a9LW" role="1tU5fm">
          <ref role="3uigEE" to="8qxk:3yaa4ph8uTO" resolve="NamedAnalyzerId" />
        </node>
      </node>
      <node concept="3clFbS" id="2ULNtK16QzE" role="3clF47">
        <node concept="3clFbF" id="2ULNtK16sJ3" role="3cqZAp">
          <node concept="2OqwBi" id="2ULNtK16sJ4" role="3clFbG">
            <node concept="2ShNRf" id="2ULNtK16sJ5" role="2Oq$k0">
              <node concept="1pGfFk" id="2ULNtK16sJ6" role="2ShVmc">
                <ref role="37wK5l" to="8qxk:3yaa4ph8u2z" resolve="AnalyzerRules" />
                <node concept="2OqwBi" id="2ULNtK1aa7t" role="37wK5m">
                  <node concept="37vLTw" id="2ULNtK1aa1U" role="2Oq$k0">
                    <ref role="3cqZAo" node="2ULNtK1a9y$" resolve="analyzerId" />
                  </node>
                  <node concept="liA8E" id="2ULNtK1aanB" role="2OqNvi">
                    <ref role="37wK5l" to="8qxk:3yaa4ph8uU5" resolve="getAnalyzerFqName" />
                  </node>
                </node>
                <node concept="2YIFZM" id="4nuJlNnX0r8" role="37wK5m">
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <node concept="37vLTw" id="4nuJlNnX0wj" role="37wK5m">
                    <ref role="3cqZAo" node="2ULNtK1a5yv" resolve="node" />
                  </node>
                </node>
                <node concept="37vLTw" id="2ULNtK174g1" role="37wK5m">
                  <ref role="3cqZAo" node="2ULNtK16QzB" resolve="program" />
                </node>
                <node concept="37vLTw" id="4nuJlNnWZYL" role="37wK5m">
                  <ref role="3cqZAo" node="4nuJlNnWZ39" resolve="myContext" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2ULNtK16sJh" role="2OqNvi">
              <ref role="37wK5l" to="8qxk:3yaa4ph8u33" resolve="apply" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2ULNtK16QzF" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4OKSZMEXKe9" role="jymVt" />
    <node concept="3clFb_" id="4OKSZMEXLix" role="jymVt">
      <property role="TrG5h" value="newFactory" />
      <node concept="3Tm1VV" id="4OKSZMEXLiz" role="1B3o_S" />
      <node concept="3uibUv" id="4OKSZMEXNrL" role="3clF45">
        <ref role="3uigEE" node="2ULNtK16PUg" resolve="MPSProgramFactory" />
      </node>
      <node concept="37vLTG" id="4OKSZMEXLiA" role="3clF46">
        <property role="TrG5h" value="modes" />
        <node concept="3uibUv" id="4OKSZMEXLiB" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
          <node concept="3uibUv" id="4OKSZMEXLiH" role="11_B2D">
            <ref role="3uigEE" to="8qxk:3yaa4ph8tQx" resolve="IDataFlowModeId" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="4OKSZMEXLiJ" role="3clF47">
        <node concept="3cpWs6" id="4OKSZMEXM1t" role="3cqZAp">
          <node concept="2ShNRf" id="4OKSZMEXMu_" role="3cqZAk">
            <node concept="1pGfFk" id="4OKSZMEXPcy" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" node="3D2zx$UvQGk" resolve="MPSProgramFactory" />
              <node concept="37vLTw" id="4OKSZMEXPLc" role="37wK5m">
                <ref role="3cqZAo" node="3D2zx$UvRGa" resolve="myPlatform" />
              </node>
              <node concept="37vLTw" id="4OKSZMEXQzY" role="37wK5m">
                <ref role="3cqZAo" node="4OKSZMEXLiA" resolve="modes" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4OKSZMEXLiK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4OKSZMEXKea" role="jymVt" />
    <node concept="3clFb_" id="cpjZ0egoPL" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getContext" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="cpjZ0egoPO" role="3clF47">
        <node concept="3clFbF" id="cpjZ0egoXZ" role="3cqZAp">
          <node concept="37vLTw" id="cpjZ0egoXY" role="3clFbG">
            <ref role="3cqZAo" node="4nuJlNnWZ39" resolve="myContext" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="cpjZ0egoyN" role="1B3o_S" />
      <node concept="3uibUv" id="cpjZ0egoDf" role="3clF45">
        <ref role="3uigEE" to="8qxk:3yaa4ph8uUg" resolve="ProgramBuilderContext" />
      </node>
    </node>
  </node>
</model>

