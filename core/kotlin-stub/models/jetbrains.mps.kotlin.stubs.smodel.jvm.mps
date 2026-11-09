<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:bdaa2532-d0d0-46ce-8145-d47be9b807a4(jetbrains.mps.kotlin.stubs.smodel.jvm)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="acfc188d-d5d6-4598-b370-6f4a983f05b2" name="jetbrains.mps.baseLanguage.methodReferences" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="5" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
  </languages>
  <imports>
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="1ltj" ref="r:aa7e8178-3b66-4295-bcce-165c85d78006(jetbrains.mps.baseLanguage.javastub)" />
    <import index="45y3" ref="r:eafb5d8e-2952-4826-b4ad-be2b9011f598(jetbrains.mps.baseLanguage.javastub.asm)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="g3pb" ref="r:d76e16ee-a528-4ca0-b2d6-9eed9a9b1d1c(jetbrains.mps.kotlin.stubs.smodel.metadata)" />
    <import index="t3el" ref="r:46b5a205-6da9-4b5a-ac93-05f04740d2d2(jetbrains.mps.kotlin.stubs.smodel.references)" />
    <import index="48vp" ref="r:c0bc7504-314a-4a6f-850a-c38847b9f916(jetbrains.mps.baseLanguage.kotlinRefs.structure)" />
    <import index="dd86" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:org.jetbrains.org.objectweb.asm.tree(MPS.IDEA/)" />
  </imports>
  <registry>
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
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1188214545140" name="jetbrains.mps.baseLanguage.structure.AnnotationInstanceValue" flags="ng" index="2B6LJw">
        <child id="1188214607812" name="value" index="2B70Vg" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068431790191" name="jetbrains.mps.baseLanguage.structure.Expression" flags="nn" index="33vP2n" />
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
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
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
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
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
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
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
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785110" name="jetbrains.mps.lang.quotation.structure.AbstractAntiquotation" flags="ngI" index="2c44t0">
        <child id="1196350785111" name="expression" index="2c44t1" />
      </concept>
      <concept id="1196350785112" name="jetbrains.mps.lang.quotation.structure.Antiquotation" flags="ng" index="2c44te" />
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="acfc188d-d5d6-4598-b370-6f4a983f05b2" name="jetbrains.mps.baseLanguage.methodReferences">
      <concept id="7915009415671748557" name="jetbrains.mps.baseLanguage.methodReferences.structure.MethodReferenceTypeTargetExpression" flags="ng" index="2FaPjH">
        <child id="7915009415671751864" name="type" index="2FaQuo" />
      </concept>
      <concept id="237887375562511215" name="jetbrains.mps.baseLanguage.methodReferences.structure.MethodReference" flags="ng" index="37Ijox" />
      <concept id="3507059745126391419" name="jetbrains.mps.baseLanguage.methodReferences.structure.IMethodReference" flags="ngI" index="3UZKCU">
        <reference id="237887375562511297" name="method" index="37Ijqf" />
        <child id="962278442658307079" name="target" index="wWaWy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1201872418428" name="jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation" flags="nn" index="3lbrtF" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="3kLGH8A6aep">
    <property role="TrG5h" value="KotlinAwareClassifierLoader" />
    <property role="3GE5qa" value="" />
    <node concept="3clFbW" id="3kLGH8ABaqm" role="jymVt">
      <node concept="3cqZAl" id="3kLGH8ABaqn" role="3clF45" />
      <node concept="3Tmbuc" id="3kLGH8ABrpg" role="1B3o_S" />
      <node concept="37vLTG" id="3kLGH8ABaqA" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="3uibUv" id="3kLGH8ABaqB" role="1tU5fm">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="37vLTG" id="3kLGH8ABaqC" role="3clF46">
        <property role="TrG5h" value="outer" />
        <node concept="3uibUv" id="3kLGH8ABaqD" role="1tU5fm">
          <ref role="3uigEE" to="1ltj:3X3rDwN7qLn" resolve="ClassifierLoader" />
        </node>
      </node>
      <node concept="37vLTG" id="3kLGH8ABaqE" role="3clF46">
        <property role="TrG5h" value="innerClassStruct" />
        <node concept="3uibUv" id="3kLGH8ABaqF" role="1tU5fm">
          <ref role="3uigEE" to="45y3:3b7viGsBAFA" resolve="ASMInnerClass" />
        </node>
      </node>
      <node concept="3clFbS" id="3kLGH8ABaqG" role="3clF47">
        <node concept="XkiVB" id="3kLGH8ABbBD" role="3cqZAp">
          <ref role="37wK5l" to="1ltj:3Eq_PkM8Pci" resolve="ClassifierLoader" />
          <node concept="37vLTw" id="3kLGH8ABaqI" role="37wK5m">
            <ref role="3cqZAo" node="3kLGH8ABaqA" resolve="file" />
          </node>
          <node concept="37vLTw" id="3kLGH8ABaqJ" role="37wK5m">
            <ref role="3cqZAo" node="3kLGH8ABaqC" resolve="outer" />
          </node>
          <node concept="37vLTw" id="3kLGH8ABaqK" role="37wK5m">
            <ref role="3cqZAo" node="3kLGH8ABaqE" resolve="innerClassStruct" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3kLGH8ABxj8" role="jymVt" />
    <node concept="3clFbW" id="3kLGH8ABapn" role="jymVt">
      <node concept="3cqZAl" id="3kLGH8ABapo" role="3clF45" />
      <node concept="3Tm1VV" id="3kLGH8ABaqa" role="1B3o_S" />
      <node concept="37vLTG" id="3kLGH8ABaqb" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="3uibUv" id="3kLGH8ABaqc" role="1tU5fm">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="37vLTG" id="3kLGH8ABaqd" role="3clF46">
        <property role="TrG5h" value="onlyPublic" />
        <node concept="10P_77" id="3kLGH8ABaqe" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3kLGH8ABaqf" role="3clF46">
        <property role="TrG5h" value="skipPrivate" />
        <node concept="10P_77" id="3kLGH8ABaqg" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3kLGH8ABaqh" role="3clF47">
        <node concept="XkiVB" id="3kLGH8ABaqi" role="3cqZAp">
          <ref role="37wK5l" to="1ltj:3Eq_PkM6kzb" resolve="ClassifierLoader" />
          <node concept="37vLTw" id="3kLGH8ABaqj" role="37wK5m">
            <ref role="3cqZAo" node="3kLGH8ABaqb" resolve="file" />
          </node>
          <node concept="37vLTw" id="3kLGH8ABaqk" role="37wK5m">
            <ref role="3cqZAo" node="3kLGH8ABaqd" resolve="onlyPublic" />
          </node>
          <node concept="37vLTw" id="3kLGH8ABaql" role="37wK5m">
            <ref role="3cqZAo" node="3kLGH8ABaqf" resolve="skipPrivate" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3kLGH8ABb0D" role="jymVt" />
    <node concept="3clFb_" id="3Eq_PkM6JJR" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="updateClassifier" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3Eq_PkM6JJU" role="3clF47">
        <node concept="3SKdUt" id="3b7viGstEUg" role="3cqZAp">
          <node concept="1PaTwC" id="3b7viGstEUh" role="1aUNEU">
            <node concept="3oM_SD" id="3b7viGstEUi" role="1PaTwD">
              <property role="3oM_SC" value="XXX" />
            </node>
            <node concept="3oM_SD" id="3b7viGstFvB" role="1PaTwD">
              <property role="3oM_SC" value="perhaps," />
            </node>
            <node concept="3oM_SD" id="3b7viGstFwI" role="1PaTwD">
              <property role="3oM_SC" value="Kotlin" />
            </node>
            <node concept="3oM_SD" id="3b7viGstFxO" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="3b7viGstFyU" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="3b7viGstFyV" role="1PaTwD">
              <property role="3oM_SC" value="place" />
            </node>
            <node concept="3oM_SD" id="3b7viGstFyW" role="1PaTwD">
              <property role="3oM_SC" value="where" />
            </node>
            <node concept="3oM_SD" id="3b7viGstF$i" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="3b7viGstF$j" role="1PaTwD">
              <property role="3oM_SC" value="could" />
            </node>
            <node concept="3oM_SD" id="3b7viGstF_p" role="1PaTwD">
              <property role="3oM_SC" value="make" />
            </node>
            <node concept="3oM_SD" id="3b7viGstF_E" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="3b7viGstFAw" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="3b7viGstFAL" role="1PaTwD">
              <property role="3oM_SC" value="at" />
            </node>
            <node concept="3oM_SD" id="3b7viGstFB2" role="1PaTwD">
              <property role="3oM_SC" value="least" />
            </node>
            <node concept="3oM_SD" id="3b7viGstFBS" role="1PaTwD">
              <property role="3oM_SC" value="some" />
            </node>
            <node concept="3oM_SD" id="3b7viGstFCY" role="1PaTwD">
              <property role="3oM_SC" value="compiler-injected" />
            </node>
            <node concept="3oM_SD" id="3b7viGstFHj" role="1PaTwD">
              <property role="3oM_SC" value="methods?" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3Eq_PkM8bmr" role="3cqZAp">
          <node concept="3cpWsn" id="3Eq_PkM8bms" role="3cpWs9">
            <property role="TrG5h" value="ac" />
            <node concept="3uibUv" id="3Eq_PkM8bmt" role="1tU5fm">
              <ref role="3uigEE" to="45y3:6hYzBiUOvui" resolve="ASMClass" />
            </node>
            <node concept="2ShNRf" id="3Eq_PkM8bmu" role="33vP2m">
              <node concept="1pGfFk" id="3Eq_PkM8bmv" role="2ShVmc">
                <ref role="37wK5l" to="45y3:3b7viGsh0uo" resolve="ASMClass" />
                <node concept="37vLTw" id="3Eq_PkM8btW" role="37wK5m">
                  <ref role="3cqZAo" to="1ltj:3Eq_PkM71kX" resolve="myClassReader" />
                </node>
                <node concept="2OqwBi" id="3b7viGsoztt" role="37wK5m">
                  <node concept="2OqwBi" id="3b7viGsor0$" role="2Oq$k0">
                    <node concept="2OqwBi" id="3b7viGsohyP" role="2Oq$k0">
                      <node concept="2YIFZM" id="3b7viGsofWo" role="2Oq$k0">
                        <ref role="37wK5l" to="45y3:3b7viGsloDm" resolve="builder" />
                        <ref role="1Pybhc" to="45y3:3b7viGsgJ6E" resolve="ClassReaderOptions" />
                      </node>
                      <node concept="liA8E" id="3b7viGsojOr" role="2OqNvi">
                        <ref role="37wK5l" to="45y3:3b7viGsgKp3" resolve="withMethodParameters" />
                        <node concept="3clFbT" id="3b7viGsonSF" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3b7viGsotee" role="2OqNvi">
                      <ref role="37wK5l" to="45y3:3b7viGsq3ZS" resolve="withCompilerInjectedMembers" />
                      <node concept="3clFbT" id="3b7viGsovka" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3b7viGsoAEH" role="2OqNvi">
                    <ref role="37wK5l" to="45y3:3b7viGsgLkX" resolve="build" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4BmeqPDL5I9" role="3cqZAp">
          <node concept="3cpWsn" id="4BmeqPDL5Ia" role="3cpWs9">
            <property role="TrG5h" value="doc" />
            <node concept="3uibUv" id="4BmeqPDL5Ib" role="1tU5fm">
              <ref role="3uigEE" to="1ltj:4BmeqPDFxVO" resolve="Documentation" />
            </node>
            <node concept="2OqwBi" id="7vMfhZe5VcA" role="33vP2m">
              <node concept="37vLTw" id="7vMfhZe5V1J" role="2Oq$k0">
                <ref role="3cqZAo" node="7vMfhZe5R7k" resolve="docSupplier" />
              </node>
              <node concept="liA8E" id="7vMfhZe5Vt1" role="2OqNvi">
                <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object)" resolve="apply" />
                <node concept="37vLTw" id="7vMfhZe5VwJ" role="37wK5m">
                  <ref role="3cqZAo" node="3Eq_PkM8bms" resolve="ac" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Eq_PkM8bmx" role="3cqZAp">
          <node concept="2OqwBi" id="3Eq_PkM8bmy" role="3clFbG">
            <node concept="2ShNRf" id="3Eq_PkM8bmz" role="2Oq$k0">
              <node concept="1pGfFk" id="3Eq_PkM8bm$" role="2ShVmc">
                <ref role="37wK5l" node="3kLGH8A88nz" resolve="KotlinAwareClassifierUpdater" />
                <node concept="37vLTw" id="3Eq_PkM8bm_" role="37wK5m">
                  <ref role="3cqZAo" node="3Eq_PkM8bms" resolve="ac" />
                </node>
                <node concept="3clFbT" id="3kLGH8A6w6D" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="37vLTw" id="4BmeqPDLBYa" role="37wK5m">
                  <ref role="3cqZAo" node="4BmeqPDL5Ia" resolve="doc" />
                </node>
                <node concept="37vLTw" id="3kLGH8A_4Ia" role="37wK5m">
                  <ref role="3cqZAo" node="3kLGH8A_0dk" resolve="visitorContext" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3Eq_PkM8bmC" role="2OqNvi">
              <ref role="37wK5l" to="1ltj:2qqFBg4QxV7" resolve="update" />
              <node concept="37vLTw" id="3Eq_PkM8bmD" role="37wK5m">
                <ref role="3cqZAo" node="3kLGH8A_7X7" resolve="classifier" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1FuQft8fXv4" role="3cqZAp">
          <node concept="3cpWsn" id="1FuQft8fXv5" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <node concept="3uibUv" id="1FuQft8fXv6" role="1tU5fm">
              <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
            </node>
            <node concept="2OqwBi" id="1FuQft8g4nR" role="33vP2m">
              <node concept="37vLTw" id="1FuQft8g3ug" role="2Oq$k0">
                <ref role="3cqZAo" to="1ltj:3Eq_PkM7hTB" resolve="myFile" />
              </node>
              <node concept="liA8E" id="1FuQft8g7y2" role="2OqNvi">
                <ref role="37wK5l" to="3ju5:~IFile.getParent()" resolve="getParent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="3Eq_PkMaPw5" role="3cqZAp">
          <node concept="3clFbS" id="3Eq_PkMaPw6" role="2LFqv$">
            <node concept="3clFbJ" id="1FuQft8g8zZ" role="3cqZAp">
              <node concept="3clFbS" id="1FuQft8g8$1" role="3clFbx">
                <node concept="3SKdUt" id="1FuQft8gc38" role="3cqZAp">
                  <node concept="1PaTwC" id="1FuQft8gc39" role="1aUNEU">
                    <node concept="3oM_SD" id="1FuQft8gc3a" role="1PaTwD">
                      <property role="3oM_SC" value="I" />
                    </node>
                    <node concept="3oM_SD" id="1FuQft8gddI" role="1PaTwD">
                      <property role="3oM_SC" value="didn't" />
                    </node>
                    <node concept="3oM_SD" id="1FuQft8gdeP" role="1PaTwD">
                      <property role="3oM_SC" value="expose" />
                    </node>
                    <node concept="3oM_SD" id="1FuQft8gdfV" role="1PaTwD">
                      <property role="3oM_SC" value="mySkipPrivate" />
                    </node>
                    <node concept="3oM_SD" id="1FuQft8gdjH" role="1PaTwD">
                      <property role="3oM_SC" value="as" />
                    </node>
                    <node concept="3oM_SD" id="1FuQft8gdlC" role="1PaTwD">
                      <property role="3oM_SC" value="I" />
                    </node>
                    <node concept="3oM_SD" id="1FuQft8gdmI" role="1PaTwD">
                      <property role="3oM_SC" value="see" />
                    </node>
                    <node concept="3oM_SD" id="1FuQft8gdmZ" role="1PaTwD">
                      <property role="3oM_SC" value="KotlinAwareClassifierUpdater" />
                    </node>
                    <node concept="3oM_SD" id="1FuQft8gdwZ" role="1PaTwD">
                      <property role="3oM_SC" value="forces" />
                    </node>
                    <node concept="3oM_SD" id="1FuQft8gdx0" role="1PaTwD">
                      <property role="3oM_SC" value="skipPrivate==true," />
                    </node>
                    <node concept="3oM_SD" id="1FuQft8gd$g" role="1PaTwD">
                      <property role="3oM_SC" value="above" />
                    </node>
                  </node>
                </node>
                <node concept="3N13vt" id="1FuQft8geUD" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="1FuQft8g9Fy" role="3clFbw">
                <node concept="37vLTw" id="1FuQft8g8$M" role="2Oq$k0">
                  <ref role="3cqZAo" node="3Eq_PkMaPwv" resolve="cn" />
                </node>
                <node concept="liA8E" id="1FuQft8gaSg" role="2OqNvi">
                  <ref role="37wK5l" to="45y3:3b7viGsBHHr" resolve="isPrivate" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3b7viGsImcL" role="3cqZAp">
              <node concept="3cpWsn" id="3b7viGsImcM" role="3cpWs9">
                <property role="TrG5h" value="fileName" />
                <node concept="3uibUv" id="3b7viGsIlBl" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="3b7viGsImcN" role="33vP2m">
                  <node concept="37vLTw" id="3b7viGsImcO" role="2Oq$k0">
                    <ref role="3cqZAo" node="3Eq_PkMaPwv" resolve="cn" />
                  </node>
                  <node concept="liA8E" id="3b7viGsImcP" role="2OqNvi">
                    <ref role="37wK5l" to="45y3:3b7viGsHBpC" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3Eq_PkM8mgT" role="3cqZAp">
              <node concept="3cpWsn" id="3Eq_PkM8mgU" role="3cpWs9">
                <property role="TrG5h" value="index" />
                <node concept="10Oyi0" id="3Eq_PkM8mgV" role="1tU5fm" />
                <node concept="2OqwBi" id="3Eq_PkM8mgW" role="33vP2m">
                  <node concept="37vLTw" id="3b7viGsImcQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="3b7viGsImcM" resolve="fileName" />
                  </node>
                  <node concept="liA8E" id="3Eq_PkM8mgY" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.lastIndexOf(int)" resolve="lastIndexOf" />
                    <node concept="1Xhbcc" id="3Eq_PkM8mgZ" role="37wK5m">
                      <property role="1XhdNS" value="/" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3Eq_PkM8mh0" role="3cqZAp">
              <node concept="3clFbS" id="3Eq_PkM8mh1" role="3clFbx">
                <node concept="3clFbF" id="3Eq_PkM8mh2" role="3cqZAp">
                  <node concept="37vLTI" id="3Eq_PkM8mh3" role="3clFbG">
                    <node concept="2OqwBi" id="3Eq_PkM8mh4" role="37vLTx">
                      <node concept="37vLTw" id="3Eq_PkM8mh5" role="2Oq$k0">
                        <ref role="3cqZAo" node="3b7viGsImcM" resolve="fileName" />
                      </node>
                      <node concept="liA8E" id="3Eq_PkM8mh6" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                        <node concept="3cpWs3" id="3Eq_PkM8mh7" role="37wK5m">
                          <node concept="3cmrfG" id="3Eq_PkM8mh8" role="3uHU7w">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="37vLTw" id="3Eq_PkM8mh9" role="3uHU7B">
                            <ref role="3cqZAo" node="3Eq_PkM8mgU" resolve="index" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="3Eq_PkM8mha" role="37vLTJ">
                      <ref role="3cqZAo" node="3b7viGsImcM" resolve="fileName" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="3Eq_PkM8mhb" role="3clFbw">
                <node concept="3cmrfG" id="3Eq_PkM8mhc" role="3uHU7w">
                  <property role="3cmrfH" value="-1" />
                </node>
                <node concept="37vLTw" id="3Eq_PkM8mhd" role="3uHU7B">
                  <ref role="3cqZAo" node="3Eq_PkM8mgU" resolve="index" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1FuQft8gX4h" role="3cqZAp">
              <node concept="3cpWsn" id="1FuQft8gX4i" role="3cpWs9">
                <property role="TrG5h" value="kl" />
                <node concept="3uibUv" id="1FuQft8gX4j" role="1tU5fm">
                  <ref role="3uigEE" node="3kLGH8A6aep" resolve="KotlinAwareClassifierLoader" />
                </node>
                <node concept="2ShNRf" id="1FuQft8gZVV" role="33vP2m">
                  <node concept="1pGfFk" id="1FuQft8h4A5" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="3kLGH8ABaqm" resolve="KotlinAwareClassifierLoader" />
                    <node concept="2OqwBi" id="3kLGH8AAOC5" role="37wK5m">
                      <node concept="37vLTw" id="3kLGH8AAOC6" role="2Oq$k0">
                        <ref role="3cqZAo" node="1FuQft8fXv5" resolve="parent" />
                      </node>
                      <node concept="liA8E" id="3kLGH8AAOC7" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~IFile.findChild(java.lang.String)" resolve="findChild" />
                        <node concept="3cpWs3" id="3kLGH8AAOC8" role="37wK5m">
                          <node concept="Xl_RD" id="3kLGH8AAOC9" role="3uHU7w">
                            <property role="Xl_RC" value=".class" />
                          </node>
                          <node concept="37vLTw" id="3kLGH8AAOCa" role="3uHU7B">
                            <ref role="3cqZAo" node="3b7viGsImcM" resolve="fileName" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Xjq3P" id="1FuQft8hb6s" role="37wK5m" />
                    <node concept="37vLTw" id="1FuQft8hhLh" role="37wK5m">
                      <ref role="3cqZAo" node="3Eq_PkMaPwv" resolve="cn" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3Eq_PkMaPw7" role="3cqZAp">
              <node concept="3cpWsn" id="3Eq_PkMaPw8" role="3cpWs9">
                <property role="TrG5h" value="inner" />
                <node concept="3Tqbb2" id="3Eq_PkMaPw9" role="1tU5fm">
                  <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
                </node>
                <node concept="2OqwBi" id="3Eq_PkMaPwa" role="33vP2m">
                  <node concept="37vLTw" id="3Eq_PkMaPwb" role="2Oq$k0">
                    <ref role="3cqZAo" node="1FuQft8gX4i" resolve="kl" />
                  </node>
                  <node concept="liA8E" id="3Eq_PkMaPwc" role="2OqNvi">
                    <ref role="37wK5l" to="1ltj:3Eq_PkM6pEt" resolve="createClassifier" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3Eq_PkMaPwd" role="3cqZAp">
              <node concept="3clFbS" id="3Eq_PkMaPwe" role="3clFbx">
                <node concept="3clFbF" id="3Eq_PkMaPwf" role="3cqZAp">
                  <node concept="2OqwBi" id="3Eq_PkMaPwg" role="3clFbG">
                    <node concept="2OqwBi" id="3Eq_PkMaPwh" role="2Oq$k0">
                      <node concept="3Tsc0h" id="3Eq_PkMaPwi" role="2OqNvi">
                        <ref role="3TtcxE" to="tpee:4EqhHTp4Mw3" resolve="member" />
                      </node>
                      <node concept="37vLTw" id="3Eq_PkMaRkq" role="2Oq$k0">
                        <ref role="3cqZAo" node="3kLGH8A_7X7" resolve="classifier" />
                      </node>
                    </node>
                    <node concept="TSZUe" id="3Eq_PkMaPwk" role="2OqNvi">
                      <node concept="37vLTw" id="3Eq_PkMaPwl" role="25WWJ7">
                        <ref role="3cqZAo" node="3Eq_PkMaPw8" resolve="inner" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3Eq_PkMaPwm" role="3cqZAp">
                  <node concept="2OqwBi" id="3Eq_PkMaPwn" role="3clFbG">
                    <node concept="liA8E" id="3Eq_PkMaPwp" role="2OqNvi">
                      <ref role="37wK5l" node="3Eq_PkM6JJR" resolve="updateClassifier" />
                      <node concept="37vLTw" id="3Eq_PkMaPwq" role="37wK5m">
                        <ref role="3cqZAo" node="3Eq_PkMaPw8" resolve="inner" />
                      </node>
                      <node concept="37vLTw" id="3Eq_PkMaPwr" role="37wK5m">
                        <ref role="3cqZAo" node="3kLGH8A_0dk" resolve="visitorContext" />
                      </node>
                      <node concept="37vLTw" id="7vMfhZe5VAY" role="37wK5m">
                        <ref role="3cqZAo" node="7vMfhZe5R7k" resolve="docSupplier" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="1FuQft8hnQF" role="2Oq$k0">
                      <ref role="3cqZAo" node="1FuQft8gX4i" resolve="kl" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="3Eq_PkMaPws" role="3clFbw">
                <node concept="10Nm6u" id="3Eq_PkMaPwt" role="3uHU7w" />
                <node concept="37vLTw" id="3Eq_PkMaPwu" role="3uHU7B">
                  <ref role="3cqZAo" node="3Eq_PkMaPw8" resolve="inner" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3Eq_PkMaPwv" role="1Duv9x">
            <property role="TrG5h" value="cn" />
            <node concept="3uibUv" id="3Eq_PkMaPww" role="1tU5fm">
              <ref role="3uigEE" to="45y3:3b7viGsBAFA" resolve="ASMInnerClass" />
            </node>
          </node>
          <node concept="2OqwBi" id="1FuQft8fS8n" role="1DdaDG">
            <node concept="37vLTw" id="1FuQft8fRIr" role="2Oq$k0">
              <ref role="3cqZAo" node="3Eq_PkM8bms" resolve="ac" />
            </node>
            <node concept="liA8E" id="1FuQft8fT3a" role="2OqNvi">
              <ref role="37wK5l" to="45y3:6QdPgJ4wYZz" resolve="getInnerClasses" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3Eq_PkM6IL2" role="1B3o_S" />
      <node concept="3cqZAl" id="3Eq_PkM6JJP" role="3clF45" />
      <node concept="37vLTG" id="3kLGH8A_7X7" role="3clF46">
        <property role="TrG5h" value="classifier" />
        <node concept="3Tqbb2" id="3kLGH8A_7X9" role="1tU5fm">
          <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
        </node>
      </node>
      <node concept="37vLTG" id="3kLGH8A_0dk" role="3clF46">
        <property role="TrG5h" value="visitorContext" />
        <node concept="3uibUv" id="3kLGH8A_0Cn" role="1tU5fm">
          <ref role="3uigEE" to="g3pb:6ZbwqG7V1gA" resolve="KtReadContext" />
        </node>
      </node>
      <node concept="37vLTG" id="7vMfhZe5R7k" role="3clF46">
        <property role="TrG5h" value="docSupplier" />
        <node concept="3uibUv" id="7vMfhZe5TM4" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
          <node concept="3uibUv" id="7vMfhZe5Uu0" role="11_B2D">
            <ref role="3uigEE" to="45y3:6hYzBiUOvui" resolve="ASMClass" />
          </node>
          <node concept="3uibUv" id="7vMfhZe5UyS" role="11_B2D">
            <ref role="3uigEE" to="1ltj:4BmeqPDFxVO" resolve="Documentation" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="3kLGH8A6aeq" role="1B3o_S" />
    <node concept="3uibUv" id="3kLGH8A_uv2" role="1zkMxy">
      <ref role="3uigEE" to="1ltj:3X3rDwN7qLn" resolve="ClassifierLoader" />
    </node>
    <node concept="3UR2Jj" id="4vxAdYG16M5" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHs$Ve" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs$Vf" role="1PaTwD">
          <property role="3oM_SC" value="This" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Vg" role="1PaTwD">
          <property role="3oM_SC" value="utility" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Vh" role="1PaTwD">
          <property role="3oM_SC" value="allows" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Vi" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Vj" role="1PaTwD">
          <property role="3oM_SC" value="load" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Vk" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Vl" role="1PaTwD">
          <property role="3oM_SC" value="java" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Vm" role="1PaTwD">
          <property role="3oM_SC" value="class" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Vn" role="1PaTwD">
          <property role="3oM_SC" value="similarly" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Vo" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Vp" role="1PaTwD">
          <property role="3oM_SC" value="how" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Vq" role="1PaTwD">
          <property role="3oM_SC" value="java" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Vr" role="1PaTwD">
          <property role="3oM_SC" value="stubs" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Vs" role="1PaTwD">
          <property role="3oM_SC" value="proceed." />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Vt" role="1PaTwD">
          <property role="3oM_SC" value="It" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Vu" role="1PaTwD">
          <property role="3oM_SC" value="allows" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Vv" role="1PaTwD">
          <property role="3oM_SC" value="on" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Vw" role="1PaTwD">
          <property role="3oM_SC" value="top" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Vx" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Vy" role="1PaTwD">
          <property role="3oM_SC" value="that" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Vz" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs$V$" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs$V_" role="1PaTwD">
          <property role="3oM_SC" value="refer" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$VA" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$VB" role="1PaTwD">
          <property role="3oM_SC" value="both" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$VC" role="1PaTwD">
          <property role="3oM_SC" value="kotlin" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$VD" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$VE" role="1PaTwD">
          <property role="3oM_SC" value="java" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$VF" role="1PaTwD">
          <property role="3oM_SC" value="constructs," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$VG" role="1PaTwD">
          <property role="3oM_SC" value="using" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$VH" role="1PaTwD">
          <property role="3oM_SC" value="VisitorContext" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$VI" role="1PaTwD">
          <property role="3oM_SC" value="API" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$VJ" role="1PaTwD">
          <property role="3oM_SC" value="(updateClassifier(node," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$VK" role="1PaTwD">
          <property role="3oM_SC" value="VisitorContext," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$VL" role="1PaTwD">
          <property role="3oM_SC" value="Function)" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs$VM" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs$VN" role="1PaTwD">
          <property role="3oM_SC" value="needs" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$VO" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$VP" role="1PaTwD">
          <property role="3oM_SC" value="be" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$VQ" role="1PaTwD">
          <property role="3oM_SC" value="called" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$VR" role="1PaTwD">
          <property role="3oM_SC" value="instead" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$VS" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$VT" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$VU" role="1PaTwD">
          <property role="3oM_SC" value="parent" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$VV" role="1PaTwD">
          <property role="3oM_SC" value="updateClassifier" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$VW" role="1PaTwD">
          <property role="3oM_SC" value="method" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$VX" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$VY" role="1PaTwD">
          <property role="3oM_SC" value="that)." />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3kLGH8A76v2">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="KotlinAwareClassifierUpdater" />
    <node concept="312cEg" id="3kLGH8A89YN" role="jymVt">
      <property role="TrG5h" value="mySolvingContext" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3kLGH8A89YO" role="1B3o_S" />
      <node concept="3uibUv" id="3kLGH8A89YQ" role="1tU5fm">
        <ref role="3uigEE" to="g3pb:6ZbwqG7V1gA" resolve="KtReadContext" />
      </node>
    </node>
    <node concept="2tJIrI" id="3kLGH8A8aQP" role="jymVt" />
    <node concept="3clFbW" id="3kLGH8A88nz" role="jymVt">
      <node concept="37vLTG" id="3kLGH8A88n$" role="3clF46">
        <property role="TrG5h" value="asmClass" />
        <node concept="3uibUv" id="3kLGH8A88n_" role="1tU5fm">
          <ref role="3uigEE" to="45y3:6hYzBiUOvui" resolve="ASMClass" />
        </node>
      </node>
      <node concept="37vLTG" id="3kLGH8A88nA" role="3clF46">
        <property role="TrG5h" value="skipPrivate" />
        <node concept="10P_77" id="3kLGH8A88nB" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3kLGH8A88nE" role="3clF46">
        <property role="TrG5h" value="doc" />
        <node concept="3uibUv" id="3kLGH8A88nF" role="1tU5fm">
          <ref role="3uigEE" to="1ltj:4BmeqPDFxVO" resolve="Documentation" />
        </node>
        <node concept="2AHcQZ" id="3kLGH8A88nG" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="37vLTG" id="3kLGH8A89NP" role="3clF46">
        <property role="TrG5h" value="solvingContext" />
        <node concept="3uibUv" id="3kLGH8A89VI" role="1tU5fm">
          <ref role="3uigEE" to="g3pb:6ZbwqG7V1gA" resolve="KtReadContext" />
        </node>
      </node>
      <node concept="3cqZAl" id="3kLGH8A88nH" role="3clF45" />
      <node concept="3Tm1VV" id="3kLGH8A88nI" role="1B3o_S" />
      <node concept="3clFbS" id="3kLGH8A88ou" role="3clF47">
        <node concept="XkiVB" id="3kLGH8A88ov" role="3cqZAp">
          <ref role="37wK5l" to="1ltj:2esXIF0VWPY" resolve="ClassifierUpdater" />
          <node concept="37vLTw" id="3kLGH8A88ow" role="37wK5m">
            <ref role="3cqZAo" node="3kLGH8A88n$" resolve="asmClass" />
          </node>
          <node concept="37vLTw" id="3kLGH8A88ox" role="37wK5m">
            <ref role="3cqZAo" node="3kLGH8A88nA" resolve="skipPrivate" />
          </node>
          <node concept="10Nm6u" id="3kLGH8A89Ab" role="37wK5m" />
          <node concept="37vLTw" id="3kLGH8A88oz" role="37wK5m">
            <ref role="3cqZAo" node="3kLGH8A88nE" resolve="doc" />
          </node>
        </node>
        <node concept="3clFbF" id="3kLGH8A89YR" role="3cqZAp">
          <node concept="37vLTI" id="3kLGH8A89YT" role="3clFbG">
            <node concept="37vLTw" id="3kLGH8A89YW" role="37vLTJ">
              <ref role="3cqZAo" node="3kLGH8A89YN" resolve="mySolvingContext" />
            </node>
            <node concept="37vLTw" id="3kLGH8A89YX" role="37vLTx">
              <ref role="3cqZAo" node="3kLGH8A89NP" resolve="solvingContext" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5VFMxkdXKWi" role="jymVt" />
    <node concept="2YIFZL" id="5VFMxkdY0wh" role="jymVt">
      <property role="TrG5h" value="convertToKotlinNorm" />
      <node concept="3clFbS" id="5VFMxkdY0wj" role="3clF47">
        <node concept="3cpWs6" id="5VFMxkdY3Di" role="3cqZAp">
          <node concept="2OqwBi" id="5VFMxkdY6J6" role="3cqZAk">
            <node concept="2OqwBi" id="5VFMxkdY46O" role="2Oq$k0">
              <node concept="37vLTw" id="5VFMxkdY3Hu" role="2Oq$k0">
                <ref role="3cqZAo" node="5VFMxkdY2SE" resolve="name" />
              </node>
              <node concept="liA8E" id="5VFMxkdY4PH" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.replaceAll(java.lang.String,java.lang.String)" resolve="replaceAll" />
                <node concept="Xl_RD" id="5VFMxkdY5jQ" role="37wK5m">
                  <property role="Xl_RC" value="\\." />
                </node>
                <node concept="Xl_RD" id="5VFMxkdY65i" role="37wK5m">
                  <property role="Xl_RC" value="/" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="5VFMxkdY7Vh" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.replaceAll(java.lang.String,java.lang.String)" resolve="replaceAll" />
              <node concept="Xl_RD" id="5VFMxkdY8kN" role="37wK5m">
                <property role="Xl_RC" value="\\$" />
              </node>
              <node concept="Xl_RD" id="5VFMxkdY9DY" role="37wK5m">
                <property role="Xl_RC" value="." />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="5VFMxkdY0wl" role="3clF45" />
      <node concept="3Tm1VV" id="5VFMxkdY0wk" role="1B3o_S" />
      <node concept="37vLTG" id="5VFMxkdY2SE" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="5VFMxkdY2SD" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5VFMxkdXM3s" role="jymVt" />
    <node concept="3clFb_" id="2esXIF0VXl3" role="jymVt">
      <property role="TrG5h" value="createAnnotation" />
      <node concept="3Tmbuc" id="3kLGH8A9goB" role="1B3o_S" />
      <node concept="3Tqbb2" id="4sm8lF4oA1v" role="3clF45">
        <ref role="ehGHo" to="tpee:hiAHcMF" resolve="AnnotationInstance" />
      </node>
      <node concept="37vLTG" id="2esXIF0VXl6" role="3clF46">
        <property role="TrG5h" value="annotation" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="2lsWr_dJgKU" role="1tU5fm">
          <ref role="3uigEE" to="45y3:5WfLFAl1Lft" resolve="ASMAnnotation" />
        </node>
      </node>
      <node concept="3clFbS" id="2esXIF0VXla" role="3clF47">
        <node concept="3cpWs8" id="2esXIF0VXlg" role="3cqZAp">
          <node concept="3cpWsn" id="2esXIF0VXlh" role="3cpWs9">
            <property role="TrG5h" value="c" />
            <node concept="3uibUv" id="2lsWr_dJgKJ" role="1tU5fm">
              <ref role="3uigEE" to="45y3:6hYzBiUOtHU" resolve="ASMClassType" />
            </node>
            <node concept="10QFUN" id="2esXIF0VXlj" role="33vP2m">
              <node concept="2OqwBi" id="2esXIF0VXlk" role="10QFUP">
                <node concept="37vLTw" id="2BHiRxgm7g3" role="2Oq$k0">
                  <ref role="3cqZAo" node="2esXIF0VXl6" resolve="annotation" />
                </node>
                <node concept="liA8E" id="2esXIF0VXlm" role="2OqNvi">
                  <ref role="37wK5l" to="45y3:5WfLFAl1Liy" resolve="getType" />
                </node>
              </node>
              <node concept="3uibUv" id="2lsWr_dJgKK" role="10QFUM">
                <ref role="3uigEE" to="45y3:6hYzBiUOtHU" resolve="ASMClassType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3kLGH8Aagih" role="3cqZAp" />
        <node concept="3SKdUt" id="3kLGH8AahTP" role="3cqZAp">
          <node concept="1PaTwC" id="3kLGH8AahTQ" role="1aUNEU">
            <node concept="3oM_SD" id="3kLGH8AaiFs" role="1PaTwD">
              <property role="3oM_SC" value="We" />
            </node>
            <node concept="3oM_SD" id="3kLGH8AaiFu" role="1PaTwD">
              <property role="3oM_SC" value="create" />
            </node>
            <node concept="3oM_SD" id="3kLGH8AaiGL" role="1PaTwD">
              <property role="3oM_SC" value="annotation" />
            </node>
            <node concept="3oM_SD" id="3kLGH8AaiGP" role="1PaTwD">
              <property role="3oM_SC" value="depending" />
            </node>
            <node concept="3oM_SD" id="3kLGH8AaiI1" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="3kLGH8AaiI7" role="1PaTwD">
              <property role="3oM_SC" value="concept" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4gkrGq8rJ5o" role="3cqZAp">
          <node concept="2OqwBi" id="3kLGH8A91q4" role="3cqZAk">
            <node concept="37vLTw" id="3kLGH8A91q5" role="2Oq$k0">
              <ref role="3cqZAo" node="3kLGH8A89YN" resolve="mySolvingContext" />
            </node>
            <node concept="liA8E" id="3kLGH8A91q6" role="2OqNvi">
              <ref role="37wK5l" to="g3pb:6ZbwqG7V6XZ" resolve="createClassReference" />
              <node concept="1rXfSq" id="5VFMxkdYrso" role="37wK5m">
                <ref role="37wK5l" node="5VFMxkdY0wh" resolve="convertToKotlinNorm" />
                <node concept="2OqwBi" id="5VFMxkdYu$9" role="37wK5m">
                  <node concept="37vLTw" id="5VFMxkdYtrF" role="2Oq$k0">
                    <ref role="3cqZAo" node="2esXIF0VXlh" resolve="c" />
                  </node>
                  <node concept="liA8E" id="5VFMxkdYwtg" role="2OqNvi">
                    <ref role="37wK5l" to="45y3:6hYzBiUOtIh" resolve="getName" />
                  </node>
                </node>
              </node>
              <node concept="1bVj0M" id="4wP929RM85q" role="37wK5m">
                <node concept="3clFbS" id="4wP929RM85s" role="1bW5cS">
                  <node concept="3cpWs8" id="4wP929RMtjS" role="3cqZAp">
                    <node concept="3cpWsn" id="4wP929RMtjT" role="3cpWs9">
                      <property role="TrG5h" value="node" />
                      <node concept="3Tqbb2" id="4wP929RMsqT" role="1tU5fm">
                        <ref role="ehGHo" to="tpee:hiAHcMF" resolve="AnnotationInstance" />
                      </node>
                      <node concept="2OqwBi" id="4wP929RMtjU" role="33vP2m">
                        <node concept="37vLTw" id="4wP929RMtjV" role="2Oq$k0">
                          <ref role="3cqZAo" node="4wP929RMa2B" resolve="stereotype" />
                        </node>
                        <node concept="liA8E" id="4wP929RMtjW" role="2OqNvi">
                          <ref role="37wK5l" to="t3el:1Uhah3iXADl" resolve="createJavaAnnotation" />
                          <node concept="37vLTw" id="4wP929RMtjX" role="37wK5m">
                            <ref role="3cqZAo" node="4wP929RMfzs" resolve="resolveInfo" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="4wP929RNzlk" role="3cqZAp" />
                  <node concept="3clFbJ" id="4wP929RMCvE" role="3cqZAp">
                    <node concept="3clFbS" id="4wP929RMCvG" role="3clFbx">
                      <node concept="3SKdUt" id="4wP929RMRlX" role="3cqZAp">
                        <node concept="1PaTwC" id="4wP929RMRlY" role="1aUNEU">
                          <node concept="3oM_SD" id="5pwU7dH5_wn" role="1PaTwD">
                            <property role="3oM_SC" value="here," />
                          </node>
                          <node concept="3oM_SD" id="4wP929RMUCi" role="1PaTwD">
                            <property role="3oM_SC" value="it" />
                          </node>
                          <node concept="3oM_SD" id="4wP929RMUCm" role="1PaTwD">
                            <property role="3oM_SC" value="assumes" />
                          </node>
                          <node concept="3oM_SD" id="4wP929RMYdb" role="1PaTwD">
                            <property role="3oM_SC" value="annotation" />
                          </node>
                          <node concept="3oM_SD" id="4wP929RMYdh" role="1PaTwD">
                            <property role="3oM_SC" value="is" />
                          </node>
                          <node concept="3oM_SD" id="4wP929RMYdo" role="1PaTwD">
                            <property role="3oM_SC" value="a" />
                          </node>
                          <node concept="3oM_SD" id="4wP929RMYdw" role="1PaTwD">
                            <property role="3oM_SC" value="java" />
                          </node>
                          <node concept="3oM_SD" id="4wP929RMZW3" role="1PaTwD">
                            <property role="3oM_SC" value="one," />
                          </node>
                          <node concept="3oM_SD" id="4wP929RMZWd" role="1PaTwD">
                            <property role="3oM_SC" value="because" />
                          </node>
                          <node concept="3oM_SD" id="4wP929RN5Ni" role="1PaTwD">
                            <property role="3oM_SC" value="kotlin" />
                          </node>
                          <node concept="3oM_SD" id="4wP929RN8s9" role="1PaTwD">
                            <property role="3oM_SC" value="is" />
                          </node>
                          <node concept="3oM_SD" id="4wP929RN9QY" role="1PaTwD">
                            <property role="3oM_SC" value="not" />
                          </node>
                          <node concept="3oM_SD" id="4wP929RNaLK" role="1PaTwD">
                            <property role="3oM_SC" value="supported" />
                          </node>
                          <node concept="3oM_SD" id="4wP929RNdn0" role="1PaTwD">
                            <property role="3oM_SC" value="there" />
                          </node>
                          <node concept="3oM_SD" id="4wP929RNgow" role="1PaTwD">
                            <property role="3oM_SC" value="yet" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="2esXIF0VXlv" role="3cqZAp">
                        <node concept="3cpWsn" id="2esXIF0VXlw" role="3cpWs9">
                          <property role="TrG5h" value="values" />
                          <node concept="3rvAFt" id="4sm8lF4oA1I" role="1tU5fm">
                            <node concept="17QB3L" id="4sm8lF4oA1M" role="3rvQeY" />
                            <node concept="3uibUv" id="4sm8lF4oA1N" role="3rvSg0">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                          </node>
                          <node concept="1eOMI4" id="4sm8lF4oA8T" role="33vP2m">
                            <node concept="10QFUN" id="4sm8lF4oA8U" role="1eOMHV">
                              <node concept="2OqwBi" id="4sm8lF4oA8V" role="10QFUP">
                                <node concept="37vLTw" id="2BHiRxgm_nH" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2esXIF0VXl6" resolve="annotation" />
                                </node>
                                <node concept="liA8E" id="4sm8lF4oA8X" role="2OqNvi">
                                  <ref role="37wK5l" to="45y3:5WfLFAl1Lii" resolve="getValues" />
                                </node>
                              </node>
                              <node concept="3rvAFt" id="4sm8lF4oA8Y" role="10QFUM">
                                <node concept="17QB3L" id="4sm8lF4oA8Z" role="3rvQeY" />
                                <node concept="3uibUv" id="4sm8lF4oA90" role="3rvSg0">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1DcWWT" id="2esXIF0VXlB" role="3cqZAp">
                        <node concept="2OqwBi" id="2esXIF0VXlC" role="1DdaDG">
                          <node concept="37vLTw" id="3GM_nagTuak" role="2Oq$k0">
                            <ref role="3cqZAo" node="2esXIF0VXlw" resolve="values" />
                          </node>
                          <node concept="3lbrtF" id="4sm8lF4oA1P" role="2OqNvi" />
                        </node>
                        <node concept="3cpWsn" id="2esXIF0VXlF" role="1Duv9x">
                          <property role="TrG5h" value="method" />
                          <node concept="17QB3L" id="2esXIF0VXlG" role="1tU5fm" />
                        </node>
                        <node concept="3clFbS" id="2esXIF0VXlH" role="2LFqv$">
                          <node concept="3cpWs8" id="4sm8lF4oA22" role="3cqZAp">
                            <node concept="3cpWsn" id="4sm8lF4oA23" role="3cpWs9">
                              <property role="TrG5h" value="value" />
                              <node concept="3Tqbb2" id="4sm8lF4oA24" role="1tU5fm">
                                <ref role="ehGHo" to="tpee:hiB6LFO" resolve="AnnotationInstanceValue" />
                              </node>
                              <node concept="2c44tf" id="4sm8lF4oA25" role="33vP2m">
                                <node concept="2B6LJw" id="4sm8lF4oA26" role="2c44tc">
                                  <node concept="33vP2n" id="4sm8lF4oA27" role="2B70Vg">
                                    <node concept="2c44te" id="4sm8lF4oA2z" role="lGtFl">
                                      <node concept="1rXfSq" id="4hiugqyzf_6" role="2c44t1">
                                        <ref role="37wK5l" node="3kLGH8AaoDp" resolve="getValueAsExpression" />
                                        <node concept="3EllGN" id="4sm8lF4oA2A" role="37wK5m">
                                          <node concept="37vLTw" id="3GM_nagTuEZ" role="3ElVtu">
                                            <ref role="3cqZAo" node="2esXIF0VXlF" resolve="method" />
                                          </node>
                                          <node concept="37vLTw" id="3GM_nagTwrH" role="3ElQJh">
                                            <ref role="3cqZAo" node="2esXIF0VXlw" resolve="values" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="4wP929RO9kB" role="3cqZAp" />
                          <node concept="3SKdUt" id="4wP929RRaoR" role="3cqZAp">
                            <node concept="1PaTwC" id="4wP929RRaoS" role="1aUNEU">
                              <node concept="3oM_SD" id="4wP929RRcbo" role="1PaTwD">
                                <property role="3oM_SC" value="Bypass" />
                              </node>
                              <node concept="3oM_SD" id="4wP929RReK2" role="1PaTwD">
                                <property role="3oM_SC" value="addAnnotationMethodReference" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="4wP929ROk4X" role="3cqZAp">
                            <node concept="3clFbS" id="4wP929ROk4Z" role="3clFbx">
                              <node concept="3SKdUt" id="4wP929ROE6l" role="3cqZAp">
                                <node concept="1PaTwC" id="4wP929ROE6m" role="1aUNEU">
                                  <node concept="3oM_SD" id="4wP929ROG38" role="1PaTwD">
                                    <property role="3oM_SC" value="Should" />
                                  </node>
                                  <node concept="3oM_SD" id="4wP929ROIH8" role="1PaTwD">
                                    <property role="3oM_SC" value="be" />
                                  </node>
                                  <node concept="3oM_SD" id="4wP929ROIHw" role="1PaTwD">
                                    <property role="3oM_SC" value="in" />
                                  </node>
                                  <node concept="3oM_SD" id="4wP929ROIH$" role="1PaTwD">
                                    <property role="3oM_SC" value="same" />
                                  </node>
                                  <node concept="3oM_SD" id="4wP929ROJUO" role="1PaTwD">
                                    <property role="3oM_SC" value="model" />
                                  </node>
                                  <node concept="3oM_SD" id="4wP929ROLmr" role="1PaTwD">
                                    <property role="3oM_SC" value="as" />
                                  </node>
                                  <node concept="3oM_SD" id="4wP929ROM$2" role="1PaTwD">
                                    <property role="3oM_SC" value="the" />
                                  </node>
                                  <node concept="3oM_SD" id="4wP929RR$Qy" role="1PaTwD">
                                    <property role="3oM_SC" value="declaring" />
                                  </node>
                                  <node concept="3oM_SD" id="4wP929RR$QF" role="1PaTwD">
                                    <property role="3oM_SC" value="class" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="4wP929ROB0$" role="3cqZAp">
                                <node concept="3cpWsn" id="4wP929ROB0_" role="3cpWs9">
                                  <property role="TrG5h" value="modelReference" />
                                  <node concept="3uibUv" id="4wP929ROA5I" role="1tU5fm">
                                    <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                                  </node>
                                  <node concept="2OqwBi" id="4wP929ROB0A" role="33vP2m">
                                    <node concept="2OqwBi" id="4wP929ROB0B" role="2Oq$k0">
                                      <node concept="1eOMI4" id="4wP929ROB0C" role="2Oq$k0">
                                        <node concept="10QFUN" id="4wP929ROB0D" role="1eOMHV">
                                          <node concept="3uibUv" id="4wP929ROB0E" role="10QFUM">
                                            <ref role="3uigEE" to="mhbf:~ResolveInfo$PS" resolve="ResolveInfo.PS" />
                                          </node>
                                          <node concept="37vLTw" id="4wP929ROB0F" role="10QFUP">
                                            <ref role="3cqZAo" node="4wP929RMfzs" resolve="resolveInfo" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="4wP929ROB0G" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~ResolveInfo$PS.getTargetNode()" resolve="getTargetNode" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="4wP929ROB0H" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNodeReference.getModelReference()" resolve="getModelReference" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="4wP929RRn3R" role="3cqZAp">
                                <node concept="2OqwBi" id="4wP929RRn3S" role="3clFbG">
                                  <node concept="2JrnkZ" id="4wP929RRn3T" role="2Oq$k0">
                                    <node concept="37vLTw" id="4wP929RRn3U" role="2JrQYb">
                                      <ref role="3cqZAo" node="4sm8lF4oA23" resolve="value" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4wP929RRn3V" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.setReference(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.ResolveInfo)" resolve="setReference" />
                                    <node concept="359W_D" id="4wP929RRn3W" role="37wK5m">
                                      <ref role="359W_E" to="tpee:hiB6LFO" resolve="AnnotationInstanceValue" />
                                      <ref role="359W_F" to="tpee:hiB6Ojz" resolve="key" />
                                    </node>
                                    <node concept="2YIFZM" id="4wP929RP87t" role="37wK5m">
                                      <ref role="37wK5l" to="mhbf:~ResolveInfo.of(org.jetbrains.mps.openapi.model.SNodeReference,java.lang.String)" resolve="of" />
                                      <ref role="1Pybhc" to="mhbf:~ResolveInfo" resolve="ResolveInfo" />
                                      <node concept="2ShNRf" id="4wP929RP9Up" role="37wK5m">
                                        <node concept="1pGfFk" id="4wP929RPgKZ" role="2ShVmc">
                                          <property role="373rjd" value="true" />
                                          <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference,org.jetbrains.mps.openapi.model.SNodeId)" resolve="SNodePointer" />
                                          <node concept="37vLTw" id="4wP929RPk1O" role="37wK5m">
                                            <ref role="3cqZAo" node="4wP929ROB0_" resolve="modelReference" />
                                          </node>
                                          <node concept="2YIFZM" id="4wP929RPu0K" role="37wK5m">
                                            <ref role="1Pybhc" to="1ltj:6hYzBiUOvcI" resolve="ASMNodeId" />
                                            <ref role="37wK5l" to="1ltj:6hYzBiUOvf2" resolve="createAnnotationMethodId" />
                                            <node concept="2OqwBi" id="4wP929RPu0L" role="37wK5m">
                                              <node concept="37vLTw" id="4wP929RPu0M" role="2Oq$k0">
                                                <ref role="3cqZAo" node="2esXIF0VXlh" resolve="c" />
                                              </node>
                                              <node concept="liA8E" id="4wP929RPu0N" role="2OqNvi">
                                                <ref role="37wK5l" to="45y3:6hYzBiUOtIh" resolve="getName" />
                                              </node>
                                            </node>
                                            <node concept="37vLTw" id="4wP929RPu0O" role="37wK5m">
                                              <ref role="3cqZAo" node="2esXIF0VXlF" resolve="method" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="4wP929RPNZn" role="37wK5m">
                                        <ref role="3cqZAo" node="2esXIF0VXlF" resolve="method" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1Wc70l" id="4wP929RQa_6" role="3clFbw">
                              <node concept="2ZW3vV" id="4wP929ROnNF" role="3uHU7B">
                                <node concept="3uibUv" id="4wP929ROpAJ" role="2ZW6by">
                                  <ref role="3uigEE" to="mhbf:~ResolveInfo$PS" resolve="ResolveInfo.PS" />
                                </node>
                                <node concept="37vLTw" id="4wP929ROlXy" role="2ZW6bz">
                                  <ref role="3cqZAo" node="4wP929RMfzs" resolve="resolveInfo" />
                                </node>
                              </node>
                              <node concept="3y3z36" id="4wP929RQeRl" role="3uHU7w">
                                <node concept="10Nm6u" id="4wP929RQgNl" role="3uHU7w" />
                                <node concept="2OqwBi" id="4wP929RQcMk" role="3uHU7B">
                                  <node concept="2OqwBi" id="4wP929RQcMl" role="2Oq$k0">
                                    <node concept="1eOMI4" id="4wP929RQcMm" role="2Oq$k0">
                                      <node concept="10QFUN" id="4wP929RQcMn" role="1eOMHV">
                                        <node concept="3uibUv" id="4wP929RQcMo" role="10QFUM">
                                          <ref role="3uigEE" to="mhbf:~ResolveInfo$PS" resolve="ResolveInfo.PS" />
                                        </node>
                                        <node concept="37vLTw" id="4wP929RQcMp" role="10QFUP">
                                          <ref role="3cqZAo" node="4wP929RMfzs" resolve="resolveInfo" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="4wP929RQcMq" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~ResolveInfo$PS.getTargetNode()" resolve="getTargetNode" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4wP929RQcMr" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNodeReference.getModelReference()" resolve="getModelReference" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="9aQIb" id="4wP929RPQdm" role="9aQIa">
                              <node concept="3clFbS" id="4wP929RPQdn" role="9aQI4">
                                <node concept="3clFbF" id="4wP929RQJcs" role="3cqZAp">
                                  <node concept="2OqwBi" id="4wP929RQRmH" role="3clFbG">
                                    <node concept="2JrnkZ" id="4wP929RQOML" role="2Oq$k0">
                                      <node concept="37vLTw" id="4wP929RQJcq" role="2JrQYb">
                                        <ref role="3cqZAo" node="4sm8lF4oA23" resolve="value" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="4wP929RQThc" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.setReference(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.ResolveInfo)" resolve="setReference" />
                                      <node concept="359W_D" id="4wP929RQXhV" role="37wK5m">
                                        <ref role="359W_E" to="tpee:hiB6LFO" resolve="AnnotationInstanceValue" />
                                        <ref role="359W_F" to="tpee:hiB6Ojz" resolve="key" />
                                      </node>
                                      <node concept="2YIFZM" id="4wP929RPVNr" role="37wK5m">
                                        <ref role="37wK5l" to="mhbf:~ResolveInfo.of(java.lang.String)" resolve="of" />
                                        <ref role="1Pybhc" to="mhbf:~ResolveInfo" resolve="ResolveInfo" />
                                        <node concept="37vLTw" id="4wP929RPXEs" role="37wK5m">
                                          <ref role="3cqZAo" node="2esXIF0VXlF" resolve="method" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="4wP929RObrM" role="3cqZAp" />
                          <node concept="3clFbF" id="2esXIF0VXm5" role="3cqZAp">
                            <node concept="2OqwBi" id="4sm8lF4oA1S" role="3clFbG">
                              <node concept="2OqwBi" id="2esXIF0VXm6" role="2Oq$k0">
                                <node concept="37vLTw" id="3GM_nagT_Yi" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4wP929RMtjT" resolve="node" />
                                </node>
                                <node concept="3Tsc0h" id="4sm8lF4oA1R" role="2OqNvi">
                                  <ref role="3TtcxE" to="tpee:hiB76_Z" resolve="value" />
                                </node>
                              </node>
                              <node concept="TSZUe" id="4sm8lF4oA1W" role="2OqNvi">
                                <node concept="37vLTw" id="3GM_nagTybR" role="25WWJ7">
                                  <ref role="3cqZAo" node="4sm8lF4oA23" resolve="value" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="2esXIF0VXma" role="3cqZAp">
                        <node concept="37vLTw" id="3GM_nagT_Wa" role="3cqZAk">
                          <ref role="3cqZAo" node="4wP929RMtjT" resolve="node" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4wP929RMGyR" role="3clFbw">
                      <node concept="37vLTw" id="4wP929RMEig" role="2Oq$k0">
                        <ref role="3cqZAo" node="4wP929RMtjT" resolve="node" />
                      </node>
                      <node concept="3x8VRR" id="4wP929RMIGi" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="4wP929RN_9Z" role="3cqZAp" />
                  <node concept="3cpWs6" id="4wP929RNB09" role="3cqZAp">
                    <node concept="37vLTw" id="4wP929RMtjY" role="3cqZAk">
                      <ref role="3cqZAo" node="4wP929RMtjT" resolve="node" />
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="4wP929RMa2B" role="1bW2Oz">
                  <property role="TrG5h" value="stereotype" />
                  <node concept="2jxLKc" id="4wP929RMa2C" role="1tU5fm" />
                </node>
                <node concept="gl6BB" id="4wP929RMfzs" role="1bW2Oz">
                  <property role="TrG5h" value="resolveInfo" />
                  <node concept="2jxLKc" id="4wP929RMfzt" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3kLGH8A76wa" role="jymVt" />
    <node concept="3Tm1VV" id="3kLGH8A76v3" role="1B3o_S" />
    <node concept="3uibUv" id="3kLGH8A77Lw" role="1zkMxy">
      <ref role="3uigEE" to="1ltj:2esXIF0VWPW" resolve="ClassifierUpdater" />
    </node>
    <node concept="3clFb_" id="3kLGH8AaoDp" role="jymVt">
      <property role="TrG5h" value="getValueAsExpression" />
      <node concept="3Tmbuc" id="3kLGH8AaoDq" role="1B3o_S" />
      <node concept="3Tqbb2" id="3kLGH8AaoDr" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
      </node>
      <node concept="37vLTG" id="3kLGH8AaoDs" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="3kLGH8AaoDt" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="3kLGH8AaoIw" role="3clF47">
        <node concept="3clFbJ" id="2esXIF0VXpJ" role="3cqZAp">
          <node concept="2ZW3vV" id="2esXIF0VXpK" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgmarZ" role="2ZW6bz">
              <ref role="3cqZAo" node="3kLGH8AaoDs" resolve="value" />
            </node>
            <node concept="3uibUv" id="2lsWr_dJgKP" role="2ZW6by">
              <ref role="3uigEE" to="45y3:6hYzBiUOvji" resolve="ASMEnumValue" />
            </node>
          </node>
          <node concept="3clFbS" id="2esXIF0VXpN" role="3clFbx">
            <node concept="3cpWs8" id="2esXIF0VXpO" role="3cqZAp">
              <node concept="3cpWsn" id="2esXIF0VXpP" role="3cpWs9">
                <property role="TrG5h" value="enumValue" />
                <node concept="3uibUv" id="2esXIF0VXpQ" role="1tU5fm">
                  <ref role="3uigEE" to="45y3:6hYzBiUOvji" resolve="ASMEnumValue" />
                </node>
                <node concept="10QFUN" id="2esXIF0VXpR" role="33vP2m">
                  <node concept="37vLTw" id="2BHiRxgmiZZ" role="10QFUP">
                    <ref role="3cqZAo" node="3kLGH8AaoDs" resolve="value" />
                  </node>
                  <node concept="3uibUv" id="2esXIF0VXpT" role="10QFUM">
                    <ref role="3uigEE" to="45y3:6hYzBiUOvji" resolve="ASMEnumValue" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4sm8lF4oA7o" role="3cqZAp">
              <node concept="3cpWsn" id="4sm8lF4oA7p" role="3cpWs9">
                <property role="TrG5h" value="c" />
                <node concept="3uibUv" id="4sm8lF4oA7q" role="1tU5fm">
                  <ref role="3uigEE" to="45y3:6hYzBiUOtHU" resolve="ASMClassType" />
                </node>
                <node concept="10QFUN" id="4sm8lF4oA7r" role="33vP2m">
                  <node concept="2OqwBi" id="4sm8lF4oA7s" role="10QFUP">
                    <node concept="37vLTw" id="3GM_nagTt1A" role="2Oq$k0">
                      <ref role="3cqZAo" node="2esXIF0VXpP" resolve="enumValue" />
                    </node>
                    <node concept="liA8E" id="4sm8lF4oA7u" role="2OqNvi">
                      <ref role="37wK5l" to="45y3:6hYzBiUOvjH" resolve="getType" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="4sm8lF4oA7v" role="10QFUM">
                    <ref role="3uigEE" to="45y3:6hYzBiUOtHU" resolve="ASMClassType" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3kLGH8Av7iJ" role="3cqZAp">
              <node concept="3cpWsn" id="3kLGH8Av7iK" role="3cpWs9">
                <property role="TrG5h" value="enumClassName" />
                <node concept="17QB3L" id="3kLGH8Ax7h9" role="1tU5fm" />
                <node concept="1rXfSq" id="5VFMxkdYao6" role="33vP2m">
                  <ref role="37wK5l" node="5VFMxkdY0wh" resolve="convertToKotlinNorm" />
                  <node concept="2OqwBi" id="5VFMxkdYl0G" role="37wK5m">
                    <node concept="37vLTw" id="5VFMxkdYcDC" role="2Oq$k0">
                      <ref role="3cqZAo" node="4sm8lF4oA7p" resolve="c" />
                    </node>
                    <node concept="liA8E" id="5VFMxkdYnuu" role="2OqNvi">
                      <ref role="37wK5l" to="45y3:6hYzBiUOtIh" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3kLGH8Ax8LV" role="3cqZAp" />
            <node concept="3SKdUt" id="3kLGH8AwYrr" role="3cqZAp">
              <node concept="1PaTwC" id="3kLGH8AwYrs" role="1aUNEU">
                <node concept="3oM_SD" id="3kLGH8AwZ_H" role="1PaTwD">
                  <property role="3oM_SC" value="TODO" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZNr" role="1PaTwD">
                  <property role="3oM_SC" value="here," />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZNu" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZNy" role="1PaTwD">
                  <property role="3oM_SC" value="get" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZNB" role="1PaTwD">
                  <property role="3oM_SC" value="two" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZNH" role="1PaTwD">
                  <property role="3oM_SC" value="stereotype" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZNO" role="1PaTwD">
                  <property role="3oM_SC" value="variables," />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZNW" role="1PaTwD">
                  <property role="3oM_SC" value="though" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZOq" role="1PaTwD">
                  <property role="3oM_SC" value="it" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZO$" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZOJ" role="1PaTwD">
                  <property role="3oM_SC" value="unlikely" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZOV" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZP8" role="1PaTwD">
                  <property role="3oM_SC" value="get" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZPm" role="1PaTwD">
                  <property role="3oM_SC" value="both" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZP_" role="1PaTwD">
                  <property role="3oM_SC" value="java" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZPP" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZQ6" role="1PaTwD">
                  <property role="3oM_SC" value="kotlin" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZQo" role="1PaTwD">
                  <property role="3oM_SC" value="results" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZQF" role="1PaTwD">
                  <property role="3oM_SC" value="at" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZQZ" role="1PaTwD">
                  <property role="3oM_SC" value="once," />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZS1" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZSn" role="1PaTwD">
                  <property role="3oM_SC" value="may" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZSI" role="1PaTwD">
                  <property role="3oM_SC" value="find" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZT6" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZTv" role="1PaTwD">
                  <property role="3oM_SC" value="better" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZTT" role="1PaTwD">
                  <property role="3oM_SC" value="way" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZUk" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZUK" role="1PaTwD">
                  <property role="3oM_SC" value="handle" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZVd" role="1PaTwD">
                  <property role="3oM_SC" value="that" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZVF" role="1PaTwD">
                  <property role="3oM_SC" value="(getting" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZWa" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZWE" role="1PaTwD">
                  <property role="3oM_SC" value="node" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZXb" role="1PaTwD">
                  <property role="3oM_SC" value="id," />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZXH" role="1PaTwD">
                  <property role="3oM_SC" value="adding" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZYg" role="1PaTwD">
                  <property role="3oM_SC" value=".name" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZYO" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="3kLGH8AwZZp" role="1PaTwD">
                  <property role="3oM_SC" value="instance?)" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2esXIF0VXql" role="3cqZAp">
              <node concept="2OqwBi" id="3kLGH8Awskx" role="3cqZAk">
                <node concept="37vLTw" id="3kLGH8Awsky" role="2Oq$k0">
                  <ref role="3cqZAo" node="3kLGH8A89YN" resolve="mySolvingContext" />
                </node>
                <node concept="liA8E" id="3kLGH8Awskz" role="2OqNvi">
                  <ref role="37wK5l" to="g3pb:6ZbwqG7V6XZ" resolve="createClassReference" />
                  <node concept="37vLTw" id="3kLGH8Awsk$" role="37wK5m">
                    <ref role="3cqZAo" node="3kLGH8Av7iK" resolve="enumClassName" />
                  </node>
                  <node concept="1bVj0M" id="3kLGH8Awsk_" role="37wK5m">
                    <node concept="3clFbS" id="3kLGH8AwskA" role="1bW5cS">
                      <node concept="3SKdUt" id="3kLGH8AwEBf" role="3cqZAp">
                        <node concept="1PaTwC" id="3kLGH8AwEBg" role="1aUNEU">
                          <node concept="3oM_SD" id="3kLGH8AwGni" role="1PaTwD">
                            <property role="3oM_SC" value="Resolve" />
                          </node>
                          <node concept="3oM_SD" id="3kLGH8AwGnk" role="1PaTwD">
                            <property role="3oM_SC" value="constant" />
                          </node>
                          <node concept="3oM_SD" id="3kLGH8AwHVn" role="1PaTwD">
                            <property role="3oM_SC" value="reference" />
                          </node>
                          <node concept="3oM_SD" id="3kLGH8AwJvk" role="1PaTwD">
                            <property role="3oM_SC" value="as" />
                          </node>
                          <node concept="3oM_SD" id="3kLGH8AwJvp" role="1PaTwD">
                            <property role="3oM_SC" value="well" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="3kLGH8AwskB" role="3cqZAp">
                        <node concept="2OqwBi" id="3kLGH8AwskC" role="3clFbG">
                          <node concept="37vLTw" id="3kLGH8AwskD" role="2Oq$k0">
                            <ref role="3cqZAo" node="3kLGH8A89YN" resolve="mySolvingContext" />
                          </node>
                          <node concept="liA8E" id="3kLGH8AwskE" role="2OqNvi">
                            <ref role="37wK5l" to="g3pb:6ZbwqG7V6XZ" resolve="createClassReference" />
                            <node concept="3cpWs3" id="3kLGH8AwskF" role="37wK5m">
                              <node concept="2OqwBi" id="3kLGH8AwskG" role="3uHU7w">
                                <node concept="37vLTw" id="3kLGH8AwskH" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2esXIF0VXpP" resolve="enumValue" />
                                </node>
                                <node concept="liA8E" id="3kLGH8AwskI" role="2OqNvi">
                                  <ref role="37wK5l" to="45y3:6hYzBiUOvjP" resolve="getConstant" />
                                </node>
                              </node>
                              <node concept="3cpWs3" id="3kLGH8AwskJ" role="3uHU7B">
                                <node concept="37vLTw" id="5VFMxkdYglQ" role="3uHU7B">
                                  <ref role="3cqZAo" node="3kLGH8Av7iK" resolve="enumClassName" />
                                </node>
                                <node concept="Xl_RD" id="3kLGH8AwskL" role="3uHU7w">
                                  <property role="Xl_RC" value="." />
                                </node>
                              </node>
                            </node>
                            <node concept="1bVj0M" id="3kLGH8AwskM" role="37wK5m">
                              <node concept="3clFbS" id="3kLGH8AwskN" role="1bW5cS">
                                <node concept="3SKdUt" id="3kLGH8AwskO" role="3cqZAp">
                                  <node concept="1PaTwC" id="3kLGH8AwskP" role="1aUNEU">
                                    <node concept="3oM_SD" id="3kLGH8AwNTP" role="1PaTwD">
                                      <property role="3oM_SC" value="Create" />
                                    </node>
                                    <node concept="3oM_SD" id="3kLGH8AwRF6" role="1PaTwD">
                                      <property role="3oM_SC" value="from" />
                                    </node>
                                    <node concept="3oM_SD" id="3kLGH8AwTFJ" role="1PaTwD">
                                      <property role="3oM_SC" value="second" />
                                    </node>
                                    <node concept="3oM_SD" id="3kLGH8AwTFN" role="1PaTwD">
                                      <property role="3oM_SC" value="stereotype" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="3kLGH8AwskQ" role="3cqZAp">
                                  <node concept="2OqwBi" id="3kLGH8AwskR" role="3clFbG">
                                    <node concept="37vLTw" id="3kLGH8AwskS" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3kLGH8AwskW" resolve="stereotype" />
                                    </node>
                                    <node concept="liA8E" id="3kLGH8AwskT" role="2OqNvi">
                                      <ref role="37wK5l" to="t3el:1Uhah3iXBfK" resolve="createJavaEnumConstantReference" />
                                      <node concept="37vLTw" id="3kLGH8AwskU" role="37wK5m">
                                        <ref role="3cqZAo" node="3kLGH8Awsl2" resolve="enumResolveInfo" />
                                      </node>
                                      <node concept="37vLTw" id="3kLGH8AwskV" role="37wK5m">
                                        <ref role="3cqZAo" node="3kLGH8AwskY" resolve="constantResolveInfo" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="71Ad6gR1Bxt" role="3cqZAp">
                                  <node concept="10Nm6u" id="71Ad6gR1Bxr" role="3clFbG" />
                                </node>
                              </node>
                              <node concept="gl6BB" id="3kLGH8AwskW" role="1bW2Oz">
                                <property role="TrG5h" value="stereotype" />
                                <node concept="2jxLKc" id="3kLGH8AwskX" role="1tU5fm" />
                              </node>
                              <node concept="gl6BB" id="3kLGH8AwskY" role="1bW2Oz">
                                <property role="TrG5h" value="constantResolveInfo" />
                                <node concept="2jxLKc" id="3kLGH8AwskZ" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="3kLGH8Awsl0" role="1bW2Oz">
                      <property role="TrG5h" value="klass" />
                      <node concept="2jxLKc" id="3kLGH8Awsl1" role="1tU5fm" />
                    </node>
                    <node concept="gl6BB" id="3kLGH8Awsl2" role="1bW2Oz">
                      <property role="TrG5h" value="enumResolveInfo" />
                      <node concept="2jxLKc" id="3kLGH8Awsl3" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3kLGH8AaCRs" role="3cqZAp" />
        <node concept="3clFbJ" id="2esXIF0VXqK" role="3cqZAp">
          <node concept="2ZW3vV" id="2esXIF0VXqL" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgm6Tg" role="2ZW6bz">
              <ref role="3cqZAo" node="3kLGH8AaoDs" resolve="value" />
            </node>
            <node concept="3uibUv" id="2lsWr_dJgKQ" role="2ZW6by">
              <ref role="3uigEE" to="45y3:6hYzBiUOtHU" resolve="ASMClassType" />
            </node>
          </node>
          <node concept="3clFbS" id="2esXIF0VXqO" role="3clFbx">
            <node concept="3cpWs6" id="3kLGH8A$qow" role="3cqZAp">
              <node concept="2OqwBi" id="3kLGH8A$i3k" role="3cqZAk">
                <node concept="37vLTw" id="3kLGH8A$i3l" role="2Oq$k0">
                  <ref role="3cqZAo" node="3kLGH8A89YN" resolve="mySolvingContext" />
                </node>
                <node concept="liA8E" id="3kLGH8A$i3m" role="2OqNvi">
                  <ref role="37wK5l" to="g3pb:6ZbwqG7V6XZ" resolve="createClassReference" />
                  <node concept="1rXfSq" id="5VFMxkdYy3E" role="37wK5m">
                    <ref role="37wK5l" node="5VFMxkdY0wh" resolve="convertToKotlinNorm" />
                    <node concept="2OqwBi" id="5VFMxkdYy3F" role="37wK5m">
                      <node concept="liA8E" id="5VFMxkdYy3H" role="2OqNvi">
                        <ref role="37wK5l" to="45y3:6hYzBiUOtIh" resolve="getName" />
                      </node>
                      <node concept="1eOMI4" id="5VFMxkdYDbQ" role="2Oq$k0">
                        <node concept="10QFUN" id="5VFMxkdYB1d" role="1eOMHV">
                          <node concept="3uibUv" id="5VFMxkdYGsg" role="10QFUM">
                            <ref role="3uigEE" to="45y3:6hYzBiUOtHU" resolve="ASMClassType" />
                          </node>
                          <node concept="37vLTw" id="5VFMxkdY$FF" role="10QFUP">
                            <ref role="3cqZAo" node="3kLGH8AaoDs" resolve="value" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37Ijox" id="3kLGH8A$i3t" role="37wK5m">
                    <ref role="37Ijqf" to="t3el:3kLGH8Az_B6" resolve="createJavaClassQualifierReference" />
                    <node concept="2FaPjH" id="3kLGH8A$i3u" role="wWaWy">
                      <node concept="3uibUv" id="3kLGH8A$i3v" role="2FaQuo">
                        <ref role="3uigEE" to="t3el:1Uhah3iWXyo" resolve="ClassStereotype" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3kLGH8AauD5" role="3cqZAp" />
        <node concept="3clFbF" id="3kLGH8AaoI$" role="3cqZAp">
          <node concept="3nyPlj" id="3kLGH8AaoIz" role="3clFbG">
            <ref role="37wK5l" to="1ltj:2esXIF0VXmc" resolve="getValueAsExpression" />
            <node concept="37vLTw" id="3kLGH8AaoIy" role="37wK5m">
              <ref role="3cqZAo" node="3kLGH8AaoDs" resolve="value" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3kLGH8AaoIx" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2esXIF0VXrX" role="jymVt">
      <property role="TrG5h" value="getTypeByASMType" />
      <node concept="3Tmbuc" id="3kLGH8AbOFQ" role="1B3o_S" />
      <node concept="3Tqbb2" id="4sm8lF4ovnn" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
      <node concept="37vLTG" id="2esXIF0VXs0" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3uibUv" id="2esXIF0VXs1" role="1tU5fm">
          <ref role="3uigEE" to="45y3:6hYzBiUOvjd" resolve="ASMType" />
        </node>
      </node>
      <node concept="37vLTG" id="2esXIF0VXs2" role="3clF46">
        <property role="TrG5h" value="method" />
        <node concept="3Tqbb2" id="4sm8lF4oA8E" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="2esXIF0VXs4" role="3clF46">
        <property role="TrG5h" value="classifier" />
        <node concept="3Tqbb2" id="4sm8lF4oA8F" role="1tU5fm">
          <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
        </node>
      </node>
      <node concept="3clFbS" id="2esXIF0VXs8" role="3clF47">
        <node concept="3clFbJ" id="2esXIF0VXv8" role="3cqZAp">
          <node concept="2ZW3vV" id="2esXIF0VXv9" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxglaXS" role="2ZW6bz">
              <ref role="3cqZAo" node="2esXIF0VXs0" resolve="type" />
            </node>
            <node concept="3uibUv" id="2esXIF0VXvb" role="2ZW6by">
              <ref role="3uigEE" to="45y3:6hYzBiUOtHU" resolve="ASMClassType" />
            </node>
          </node>
          <node concept="3clFbS" id="2esXIF0VXvc" role="3clFbx">
            <node concept="3cpWs8" id="2esXIF0VXvd" role="3cqZAp">
              <node concept="3cpWsn" id="2esXIF0VXve" role="3cpWs9">
                <property role="TrG5h" value="klass" />
                <node concept="3uibUv" id="2esXIF0VXvf" role="1tU5fm">
                  <ref role="3uigEE" to="45y3:6hYzBiUOtHU" resolve="ASMClassType" />
                </node>
                <node concept="10QFUN" id="2esXIF0VXvg" role="33vP2m">
                  <node concept="37vLTw" id="2BHiRxgmaGm" role="10QFUP">
                    <ref role="3cqZAo" node="2esXIF0VXs0" resolve="type" />
                  </node>
                  <node concept="3uibUv" id="2esXIF0VXvi" role="10QFUM">
                    <ref role="3uigEE" to="45y3:6hYzBiUOtHU" resolve="ASMClassType" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3kLGH8AbBTu" role="3cqZAp">
              <node concept="3cpWsn" id="3kLGH8AbBTv" role="3cpWs9">
                <property role="TrG5h" value="typeNode" />
                <node concept="3Tqbb2" id="3kLGH8AbBov" role="1tU5fm">
                  <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                </node>
                <node concept="2OqwBi" id="3kLGH8AbBTw" role="33vP2m">
                  <node concept="37vLTw" id="3kLGH8AbBTx" role="2Oq$k0">
                    <ref role="3cqZAo" node="3kLGH8A89YN" resolve="mySolvingContext" />
                  </node>
                  <node concept="liA8E" id="3kLGH8AbBTy" role="2OqNvi">
                    <ref role="37wK5l" to="g3pb:6ZbwqG7V6XZ" resolve="createClassReference" />
                    <node concept="1rXfSq" id="5VFMxkdYKz8" role="37wK5m">
                      <ref role="37wK5l" node="5VFMxkdY0wh" resolve="convertToKotlinNorm" />
                      <node concept="2OqwBi" id="5VFMxkdYKz9" role="37wK5m">
                        <node concept="37vLTw" id="5VFMxkdYKza" role="2Oq$k0">
                          <ref role="3cqZAo" node="2esXIF0VXve" resolve="klass" />
                        </node>
                        <node concept="liA8E" id="5VFMxkdYKzb" role="2OqNvi">
                          <ref role="37wK5l" to="45y3:6hYzBiUOtIh" resolve="getName" />
                        </node>
                      </node>
                    </node>
                    <node concept="37Ijox" id="3kLGH8AbBTA" role="37wK5m">
                      <ref role="37Ijqf" to="t3el:1Uhah3iXxYs" resolve="createJavaType" />
                      <node concept="2FaPjH" id="3kLGH8AbBTB" role="wWaWy">
                        <node concept="3uibUv" id="3kLGH8AbBTC" role="2FaQuo">
                          <ref role="3uigEE" to="t3el:1Uhah3iWXyo" resolve="ClassStereotype" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3kLGH8AbI1k" role="3cqZAp">
              <node concept="37vLTw" id="3kLGH8AbJ5C" role="3cqZAk">
                <ref role="3cqZAo" node="3kLGH8AbBTv" resolve="typeNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3kLGH8AcdJ_" role="3cqZAp" />
        <node concept="3SKdUt" id="3kLGH8Accs4" role="3cqZAp">
          <node concept="1PaTwC" id="3kLGH8Accs5" role="1aUNEU">
            <node concept="3oM_SD" id="3kLGH8Acf3b" role="1PaTwD">
              <property role="3oM_SC" value="Supertype" />
            </node>
            <node concept="3oM_SD" id="3kLGH8Acf3d" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="3kLGH8Acf3g" role="1PaTwD">
              <property role="3oM_SC" value="supports" />
            </node>
            <node concept="3oM_SD" id="3kLGH8Acf3k" role="1PaTwD">
              <property role="3oM_SC" value="classifier" />
            </node>
            <node concept="3oM_SD" id="3kLGH8Acf8r" role="1PaTwD">
              <property role="3oM_SC" value="type" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2esXIF0VXvx" role="3cqZAp">
          <node concept="2ZW3vV" id="2esXIF0VXvy" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxghgAf" role="2ZW6bz">
              <ref role="3cqZAo" node="2esXIF0VXs0" resolve="type" />
            </node>
            <node concept="3uibUv" id="2esXIF0VXv$" role="2ZW6by">
              <ref role="3uigEE" to="45y3:6hYzBiUOvsN" resolve="ASMParameterizedType" />
            </node>
          </node>
          <node concept="3clFbS" id="2esXIF0VXv_" role="3clFbx">
            <node concept="3cpWs8" id="2esXIF0VXvA" role="3cqZAp">
              <node concept="3cpWsn" id="2esXIF0VXvB" role="3cpWs9">
                <property role="TrG5h" value="pt" />
                <node concept="3uibUv" id="2esXIF0VXvC" role="1tU5fm">
                  <ref role="3uigEE" to="45y3:6hYzBiUOvsN" resolve="ASMParameterizedType" />
                </node>
                <node concept="10QFUN" id="2esXIF0VXvD" role="33vP2m">
                  <node concept="37vLTw" id="2BHiRxgma8T" role="10QFUP">
                    <ref role="3cqZAo" node="2esXIF0VXs0" resolve="type" />
                  </node>
                  <node concept="3uibUv" id="2esXIF0VXvF" role="10QFUM">
                    <ref role="3uigEE" to="45y3:6hYzBiUOvsN" resolve="ASMParameterizedType" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4sm8lF4oA9I" role="3cqZAp">
              <node concept="3cpWsn" id="4sm8lF4oA9J" role="3cpWs9">
                <property role="TrG5h" value="rawType" />
                <node concept="3Tqbb2" id="4sm8lF4oA9K" role="1tU5fm">
                  <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                </node>
                <node concept="1rXfSq" id="4hiugqyze$y" role="33vP2m">
                  <ref role="37wK5l" node="2esXIF0VXrX" resolve="getTypeByASMType" />
                  <node concept="2OqwBi" id="4sm8lF4oA9N" role="37wK5m">
                    <node concept="37vLTw" id="3GM_nagTAhA" role="2Oq$k0">
                      <ref role="3cqZAo" node="2esXIF0VXvB" resolve="pt" />
                    </node>
                    <node concept="liA8E" id="4sm8lF4oA9P" role="2OqNvi">
                      <ref role="37wK5l" to="45y3:6hYzBiUOvtq" resolve="getRawType" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2BHiRxgm9Lc" role="37wK5m">
                    <ref role="3cqZAo" node="2esXIF0VXs2" resolve="method" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxgm6St" role="37wK5m">
                    <ref role="3cqZAo" node="2esXIF0VXs4" resolve="classifier" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3kLGH8AcGMs" role="3cqZAp">
              <node concept="3clFbS" id="3kLGH8AcGMu" role="3clFbx">
                <node concept="3clFbF" id="2esXIF0VXvS" role="3cqZAp">
                  <node concept="1rXfSq" id="4hiugqyyWzG" role="3clFbG">
                    <ref role="37wK5l" to="1ltj:2esXIF0VXxN" resolve="addTypeParameters" />
                    <node concept="2OqwBi" id="2esXIF0VXvU" role="37wK5m">
                      <node concept="37vLTw" id="3GM_nagTwQW" role="2Oq$k0">
                        <ref role="3cqZAo" node="2esXIF0VXvB" resolve="pt" />
                      </node>
                      <node concept="liA8E" id="2esXIF0VXvW" role="2OqNvi">
                        <ref role="37wK5l" to="45y3:6hYzBiUOvtU" resolve="getActualTypeArguments" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2BHiRxgmvLx" role="37wK5m">
                      <ref role="3cqZAo" node="2esXIF0VXs2" resolve="method" />
                    </node>
                    <node concept="37vLTw" id="2BHiRxgm_ml" role="37wK5m">
                      <ref role="3cqZAo" node="2esXIF0VXs4" resolve="classifier" />
                    </node>
                    <node concept="1PxgMI" id="3kLGH8AcThL" role="37wK5m">
                      <node concept="chp4Y" id="3kLGH8AcURz" role="3oSUPX">
                        <ref role="cht4Q" to="tpee:g7uibYu" resolve="ClassifierType" />
                      </node>
                      <node concept="37vLTw" id="3GM_nagTvQ4" role="1m5AlR">
                        <ref role="3cqZAo" node="4sm8lF4oA9J" resolve="rawType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3kLGH8AcMwF" role="3clFbw">
                <node concept="37vLTw" id="3kLGH8AcKK4" role="2Oq$k0">
                  <ref role="3cqZAo" node="4sm8lF4oA9J" resolve="rawType" />
                </node>
                <node concept="1mIQ4w" id="3kLGH8AcO5H" role="2OqNvi">
                  <node concept="chp4Y" id="3kLGH8AcPpg" role="cj9EA">
                    <ref role="cht4Q" to="tpee:g7uibYu" resolve="ClassifierType" />
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="3kLGH8AcXKq" role="3eNLev">
                <node concept="2OqwBi" id="3kLGH8Ad0$m" role="3eO9$A">
                  <node concept="37vLTw" id="3kLGH8AcZ7t" role="2Oq$k0">
                    <ref role="3cqZAo" node="4sm8lF4oA9J" resolve="rawType" />
                  </node>
                  <node concept="1mIQ4w" id="3kLGH8Ad2bR" role="2OqNvi">
                    <node concept="chp4Y" id="3kLGH8Ad3t$" role="cj9EA">
                      <ref role="cht4Q" to="48vp:6zWVWr22PLG" resolve="KotlinClassifierType" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="3kLGH8AcXKs" role="3eOfB_">
                  <node concept="3clFbF" id="3kLGH8AdIqr" role="3cqZAp">
                    <node concept="1rXfSq" id="3kLGH8AdIqq" role="3clFbG">
                      <ref role="37wK5l" node="2esXIF0VXxN" resolve="addKtTypeParameters" />
                      <node concept="2OqwBi" id="3kLGH8AdL4o" role="37wK5m">
                        <node concept="37vLTw" id="3kLGH8AdJQ1" role="2Oq$k0">
                          <ref role="3cqZAo" node="2esXIF0VXvB" resolve="pt" />
                        </node>
                        <node concept="liA8E" id="3kLGH8AdNfg" role="2OqNvi">
                          <ref role="37wK5l" to="45y3:6hYzBiUOvtU" resolve="getActualTypeArguments" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3kLGH8AdQsT" role="37wK5m">
                        <ref role="3cqZAo" node="2esXIF0VXs2" resolve="method" />
                      </node>
                      <node concept="37vLTw" id="3kLGH8AdQBx" role="37wK5m">
                        <ref role="3cqZAo" node="2esXIF0VXs4" resolve="classifier" />
                      </node>
                      <node concept="1PxgMI" id="3kLGH8AdUTy" role="37wK5m">
                        <node concept="chp4Y" id="3kLGH8AdWn9" role="3oSUPX">
                          <ref role="cht4Q" to="48vp:6zWVWr22PLG" resolve="KotlinClassifierType" />
                        </node>
                        <node concept="37vLTw" id="3kLGH8AdSS6" role="1m5AlR">
                          <ref role="3cqZAo" node="4sm8lF4oA9J" resolve="rawType" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2esXIF0VXw0" role="3cqZAp">
              <node concept="37vLTw" id="3GM_nagTwXn" role="3cqZAk">
                <ref role="3cqZAo" node="4sm8lF4oA9J" resolve="rawType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3kLGH8AbdsV" role="3cqZAp">
          <node concept="3nyPlj" id="3kLGH8AbeLh" role="3cqZAk">
            <ref role="37wK5l" to="1ltj:2esXIF0VXrX" resolve="getTypeByASMType" />
            <node concept="37vLTw" id="3kLGH8Abh2M" role="37wK5m">
              <ref role="3cqZAo" node="2esXIF0VXs0" resolve="type" />
            </node>
            <node concept="37vLTw" id="3kLGH8AbioE" role="37wK5m">
              <ref role="3cqZAo" node="2esXIF0VXs2" resolve="method" />
            </node>
            <node concept="37vLTw" id="3kLGH8AbjQo" role="37wK5m">
              <ref role="3cqZAo" node="2esXIF0VXs4" resolve="classifier" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3kLGH8Advs$" role="jymVt" />
    <node concept="3clFb_" id="2esXIF0VXxN" role="jymVt">
      <property role="TrG5h" value="addKtTypeParameters" />
      <node concept="3Tmbuc" id="3kLGH8AcqkF" role="1B3o_S" />
      <node concept="3cqZAl" id="2esXIF0VXxP" role="3clF45" />
      <node concept="37vLTG" id="2esXIF0VXxQ" role="3clF46">
        <property role="TrG5h" value="typeParameters" />
        <node concept="3uibUv" id="2esXIF0VXxR" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3qUE_q" id="2esXIF0VXxS" role="11_B2D">
            <node concept="3uibUv" id="2esXIF0VXxT" role="3qUE_r">
              <ref role="3uigEE" to="45y3:6hYzBiUOvjd" resolve="ASMType" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2esXIF0VXxU" role="3clF46">
        <property role="TrG5h" value="method" />
        <node concept="3Tqbb2" id="4sm8lF4oAaU" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="2esXIF0VXxW" role="3clF46">
        <property role="TrG5h" value="classifier" />
        <node concept="3Tqbb2" id="4sm8lF4oAaW" role="1tU5fm">
          <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
        </node>
      </node>
      <node concept="37vLTG" id="2esXIF0VXxY" role="3clF46">
        <property role="TrG5h" value="result" />
        <node concept="3Tqbb2" id="4sm8lF4oAaV" role="1tU5fm">
          <ref role="ehGHo" to="48vp:6zWVWr22PLG" resolve="KotlinClassifierType" />
        </node>
      </node>
      <node concept="3clFbS" id="2esXIF0VXy0" role="3clF47">
        <node concept="3SKdUt" id="3kLGH8AdZhV" role="3cqZAp">
          <node concept="1PaTwC" id="3kLGH8AdZhW" role="1aUNEU">
            <node concept="3oM_SD" id="3kLGH8Ae0QM" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="3kLGH8Ae0QO" role="1PaTwD">
              <property role="3oM_SC" value="make" />
            </node>
            <node concept="3oM_SD" id="3kLGH8Ae0QR" role="1PaTwD">
              <property role="3oM_SC" value="parent" />
            </node>
            <node concept="3oM_SD" id="3kLGH8Ae0QV" role="1PaTwD">
              <property role="3oM_SC" value="method" />
            </node>
            <node concept="3oM_SD" id="3kLGH8Ae0R0" role="1PaTwD">
              <property role="3oM_SC" value="generic?" />
            </node>
            <node concept="3oM_SD" id="3kLGH8Ae640" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="3kLGH8Ae647" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="3kLGH8Ae64v" role="1PaTwD">
              <property role="3oM_SC" value="link" />
            </node>
            <node concept="3oM_SD" id="3kLGH8Ae658" role="1PaTwD">
              <property role="3oM_SC" value="changes" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2esXIF0VXy1" role="3cqZAp">
          <node concept="3cpWsn" id="2esXIF0VXy2" role="3cpWs9">
            <property role="TrG5h" value="toAdd" />
            <node concept="2I9FWS" id="4sm8lF4oAaZ" role="1tU5fm">
              <ref role="2I9WkF" to="tpee:fz3vP1H" resolve="Type" />
            </node>
            <node concept="2ShNRf" id="4sm8lF4oAb1" role="33vP2m">
              <node concept="2T8Vx0" id="4sm8lF4oAb2" role="2ShVmc">
                <node concept="2I9FWS" id="4sm8lF4oAb3" role="2T96Bj">
                  <ref role="2I9WkF" to="tpee:fz3vP1H" resolve="Type" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="2esXIF0VXy8" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxglliF" role="1DdaDG">
            <ref role="3cqZAo" node="2esXIF0VXxQ" resolve="typeParameters" />
          </node>
          <node concept="3cpWsn" id="2esXIF0VXya" role="1Duv9x">
            <property role="TrG5h" value="tv" />
            <node concept="3uibUv" id="2esXIF0VXyb" role="1tU5fm">
              <ref role="3uigEE" to="45y3:6hYzBiUOvjd" resolve="ASMType" />
            </node>
          </node>
          <node concept="3clFbS" id="2esXIF0VXyc" role="2LFqv$">
            <node concept="3cpWs8" id="2esXIF0VXyd" role="3cqZAp">
              <node concept="3cpWsn" id="2esXIF0VXye" role="3cpWs9">
                <property role="TrG5h" value="type" />
                <node concept="3Tqbb2" id="4sm8lF4oAaX" role="1tU5fm">
                  <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                </node>
                <node concept="1rXfSq" id="4hiugqyzeGU" role="33vP2m">
                  <ref role="37wK5l" node="2esXIF0VXrX" resolve="getTypeByASMType" />
                  <node concept="37vLTw" id="3GM_nagTrly" role="37wK5m">
                    <ref role="3cqZAo" node="2esXIF0VXya" resolve="tv" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxglB4S" role="37wK5m">
                    <ref role="3cqZAo" node="2esXIF0VXxU" resolve="method" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxglKX1" role="37wK5m">
                    <ref role="3cqZAo" node="2esXIF0VXxW" resolve="classifier" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2esXIF0VXyn" role="3cqZAp">
              <node concept="3clFbC" id="2esXIF0VXyo" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTBSU" role="3uHU7B">
                  <ref role="3cqZAo" node="2esXIF0VXye" resolve="type" />
                </node>
                <node concept="10Nm6u" id="2esXIF0VXyq" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="2esXIF0VXyr" role="3clFbx">
                <node concept="3clFbF" id="2esXIF0VXys" role="3cqZAp">
                  <node concept="2OqwBi" id="2esXIF0VXyt" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTyry" role="2Oq$k0">
                      <ref role="3cqZAo" node="2esXIF0VXy2" resolve="toAdd" />
                    </node>
                    <node concept="liA8E" id="2esXIF0VXyv" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.clear()" resolve="clear" />
                    </node>
                  </node>
                </node>
                <node concept="3zACq4" id="2esXIF0VXyw" role="3cqZAp" />
              </node>
            </node>
            <node concept="3clFbF" id="2esXIF0VXyx" role="3cqZAp">
              <node concept="2OqwBi" id="2esXIF0VXyy" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTt9Z" role="2Oq$k0">
                  <ref role="3cqZAo" node="2esXIF0VXy2" resolve="toAdd" />
                </node>
                <node concept="liA8E" id="2esXIF0VXy$" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="3GM_nagTwyy" role="37wK5m">
                    <ref role="3cqZAo" node="2esXIF0VXye" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4sm8lF4oAb5" role="3cqZAp">
          <node concept="2OqwBi" id="4sm8lF4oAbc" role="3clFbG">
            <node concept="2OqwBi" id="4sm8lF4oAb7" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxgm9l1" role="2Oq$k0">
                <ref role="3cqZAo" node="2esXIF0VXxY" resolve="result" />
              </node>
              <node concept="3Tsc0h" id="4sm8lF4oAbb" role="2OqNvi">
                <ref role="3TtcxE" to="48vp:g91_B6F" resolve="parameter" />
              </node>
            </node>
            <node concept="X8dFx" id="4sm8lF4oAbg" role="2OqNvi">
              <node concept="37vLTw" id="3GM_nagTBKy" role="25WWJ7">
                <ref role="3cqZAo" node="2esXIF0VXy2" resolve="toAdd" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3kLGH8AcWjz" role="jymVt" />
    <node concept="3clFb_" id="3kLGH8A7uHy" role="jymVt">
      <property role="TrG5h" value="addClassifierReference" />
      <node concept="3Tmbuc" id="3kLGH8A7uHz" role="1B3o_S" />
      <node concept="3cqZAl" id="3kLGH8A7uH$" role="3clF45" />
      <node concept="37vLTG" id="3kLGH8A7uH_" role="3clF46">
        <property role="TrG5h" value="sourceNode" />
        <node concept="3Tqbb2" id="3kLGH8A7uHA" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3kLGH8A7uHB" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="3uibUv" id="3kLGH8A7uHC" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
      </node>
      <node concept="37vLTG" id="3kLGH8A7uHD" role="3clF46">
        <property role="TrG5h" value="clsType" />
        <node concept="3uibUv" id="3kLGH8A7uHE" role="1tU5fm">
          <ref role="3uigEE" to="45y3:6hYzBiUOtHU" resolve="ASMClassType" />
        </node>
      </node>
      <node concept="3clFbS" id="3kLGH8A7uIv" role="3clF47">
        <node concept="3SKdUt" id="3kLGH8A7uL0" role="3cqZAp">
          <node concept="1PaTwC" id="3kLGH8A7uL1" role="1aUNEU">
            <node concept="3oM_SD" id="3kLGH8A7vqH" role="1PaTwD">
              <property role="3oM_SC" value="no-op:" />
            </node>
            <node concept="3oM_SD" id="3kLGH8A7w7H" role="1PaTwD">
              <property role="3oM_SC" value="overriden" />
            </node>
            <node concept="3oM_SD" id="3kLGH8A7w8_" role="1PaTwD">
              <property role="3oM_SC" value="case" />
            </node>
            <node concept="3oM_SD" id="3kLGH8A7w9l" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="3kLGH8A7w9q" role="1PaTwD">
              <property role="3oM_SC" value="case" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3kLGH8A7uIw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3UR2Jj" id="4vxAdYG1AQv" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHs$VZ" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs$W0" role="1PaTwD">
          <property role="3oM_SC" value="Loads" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$W1" role="1PaTwD">
          <property role="3oM_SC" value="deeply" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$W2" role="1PaTwD">
          <property role="3oM_SC" value="java" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$W3" role="1PaTwD">
          <property role="3oM_SC" value="content" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$W4" role="1PaTwD">
          <property role="3oM_SC" value="from" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$W5" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$W6" role="1PaTwD">
          <property role="3oM_SC" value="class" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$W7" role="1PaTwD">
          <property role="3oM_SC" value="file." />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$W8" role="1PaTwD">
          <property role="3oM_SC" value="This" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$W9" role="1PaTwD">
          <property role="3oM_SC" value="extends" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Wa" role="1PaTwD">
          <property role="3oM_SC" value="regular" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Wb" role="1PaTwD">
          <property role="3oM_SC" value="ClassifierUpdater" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Wc" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Wd" role="1PaTwD">
          <property role="3oM_SC" value="use" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$We" role="1PaTwD">
          <property role="3oM_SC" value="VisitorContext" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Wf" role="1PaTwD">
          <property role="3oM_SC" value="API" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Wg" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs$Wh" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs$Wi" role="1PaTwD">
          <property role="3oM_SC" value="create" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Wj" role="1PaTwD">
          <property role="3oM_SC" value="references" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Wk" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Wl" role="1PaTwD">
          <property role="3oM_SC" value="either" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Wm" role="1PaTwD">
          <property role="3oM_SC" value="kotlin" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Wn" role="1PaTwD">
          <property role="3oM_SC" value="or" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Wo" role="1PaTwD">
          <property role="3oM_SC" value="java" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Wp" role="1PaTwD">
          <property role="3oM_SC" value="declarations" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Wq" role="1PaTwD">
          <property role="3oM_SC" value="when" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$Wr" role="1PaTwD">
          <property role="3oM_SC" value="necessary." />
        </node>
      </node>
    </node>
  </node>
</model>

