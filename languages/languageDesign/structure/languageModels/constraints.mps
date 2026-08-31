<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)">
  <persistence version="9" />
  <languages>
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="69b8a993-9b87-4d96-bf0c-3559f4bb0c63" name="jetbrains.mps.lang.slanguage" version="-1" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="4" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="-1" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="-1" />
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="6" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="6xgk" ref="r:6e9ad488-5df2-49e4-8c01-8a7f3812adf7(jetbrains.mps.lang.scopes.runtime)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpcc" ref="r:00000000-0000-4000-0000-011c89590290(jetbrains.mps.lang.structure.plugin)" />
    <import index="35tq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.scope(MPS.Core/)" />
    <import index="ni5j" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.regex(JDK/)" />
    <import index="1oap" ref="r:03d44d4c-3d65-461c-9085-0f48e9569e59(jetbrains.mps.lang.resources.structure)" implicit="true" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
    <import index="31cb" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.module(MPS.Core/)" implicit="true" />
  </imports>
  <registry>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="5979521222239143262" name="jetbrains.mps.lang.resources.structure.IconResourceExpression" flags="ng" index="2SwGe0">
        <child id="5979521222239172928" name="icon" index="2SwzYu" />
      </concept>
      <concept id="8974276187400029883" name="jetbrains.mps.lang.resources.structure.FileIcon" flags="ng" index="1QGGSu">
        <property id="2756621024541341363" name="file" index="1iqoE4" />
      </concept>
    </language>
    <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts">
      <concept id="1161622665029" name="jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_model" flags="nn" index="1Q6Npb" />
    </language>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
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
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
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
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
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
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
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
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="6702802731807420587" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAParent" flags="ig" index="9SLcT" />
      <concept id="1926061574202686115" name="jetbrains.mps.lang.constraints.structure.RefScopeType" flags="ig" index="jmWhJ" />
      <concept id="1926061574202685451" name="jetbrains.mps.lang.constraints.structure.ModelScopeEval" flags="ng" index="jmWr7">
        <child id="1926061574202685452" name="factory" index="jmWr0" />
        <child id="1926061574202685503" name="cacheKey" index="jmWrN" />
      </concept>
      <concept id="8966504967485224688" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode" flags="nn" index="2rP1CM" />
      <concept id="4303308395523343364" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_link" flags="ng" index="2DA6wF" />
      <concept id="4303308395523096213" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_childConcept" flags="ng" index="2DD5aU" />
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1147468630220" name="propertyGetter" index="EtsB7" />
        <child id="1212097481299" name="propertyValidator" index="QCWH9" />
        <child id="1152963095733" name="propertySetter" index="1LXaQT" />
      </concept>
      <concept id="1147467790433" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyGetter" flags="in" index="Eqf_E" />
      <concept id="1147468365020" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" flags="nn" index="EsrRn" />
      <concept id="1227084988347" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeARoot" flags="in" index="2NXJUA" />
      <concept id="1212096972063" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyValidator" flags="in" index="QB0g5" />
      <concept id="1426851521646451314" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_GetInstanceIcon" flags="in" index="XeQIk" />
      <concept id="5564765827938091039" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Scope" flags="ig" index="3dgokm" />
      <concept id="1163200647017" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_referenceNode" flags="nn" index="3kakTB" />
      <concept id="1159285995602" name="jetbrains.mps.lang.constraints.structure.NodeDefaultSearchScope" flags="ng" index="3EP7_v">
        <child id="1159286114227" name="searchScopeFactory" index="3EP$qY" />
      </concept>
      <concept id="1152959968041" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertySetter" flags="in" index="1LLf8_" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="6702802731807532712" name="canBeParent" index="9SGkU" />
        <child id="1227085062429" name="canBeRoot" index="2NY200" />
        <child id="1426851521646478396" name="instanceIcon" index="XeZnq" />
        <child id="1213098023997" name="property" index="1MhHOB" />
        <child id="1213100494875" name="referent" index="1Mr941" />
        <child id="1213101058038" name="defaultScope" index="1MtirG" />
      </concept>
      <concept id="1148687176410" name="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" flags="ng" index="1N5Pfh">
        <reference id="1148687202698" name="applicableLink" index="1N5Vy1" />
        <child id="1148687345559" name="searchScopeFactory" index="1N6uqs" />
      </concept>
      <concept id="1153138554286" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_propertyValue" flags="nn" index="1Wqviy" />
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
      <concept id="6971016359099800069" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldSingleCommentLine" flags="ngI" index="2JaDLO">
        <child id="6971016359099801474" name="commentBody" index="2JaDBN" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690331492" name="jetbrains.mps.baseLanguage.javadoc.structure.DeprecatedBlockDocTag" flags="ng" index="TZ5HI" />
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
    <language id="69b8a993-9b87-4d96-bf0c-3559f4bb0c63" name="jetbrains.mps.lang.slanguage">
      <concept id="6171083915388330090" name="jetbrains.mps.lang.slanguage.structure.AspectModelRefExpression" flags="ng" index="1qvjxa">
        <reference id="6171083915388597767" name="aspect" index="1quiSB" />
        <child id="6171083915388330091" name="lang" index="1qvjxb" />
      </concept>
      <concept id="2030416617761226491" name="jetbrains.mps.lang.slanguage.structure.Model_IsAspectOperation" flags="nn" index="3zA4fs">
        <reference id="2030416617761226680" name="aspect" index="3zA4av" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4705942098322609812" name="jetbrains.mps.lang.smodel.structure.EnumMember_IsOperation" flags="ng" index="21noJN">
        <child id="4705942098322609813" name="member" index="21noJM" />
      </concept>
      <concept id="4705942098322467729" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="ng" index="21nZrQ">
        <reference id="4705942098322467736" name="decl" index="21nZrZ" />
      </concept>
      <concept id="1204834851141" name="jetbrains.mps.lang.smodel.structure.PoundExpression" flags="ng" index="25Kdxt">
        <child id="1204834868751" name="expression" index="25KhWn" />
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
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG">
        <child id="6750920497477046361" name="conceptArgument" index="3MHsoP" />
      </concept>
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="1966870290088668512" name="jetbrains.mps.lang.smodel.structure.Enum_MemberLiteral" flags="ng" index="2ViDtV">
        <reference id="1966870290088668516" name="memberDeclaration" index="2ViDtZ" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz">
        <reference id="6677504323281689839" name="conceptDeclaraton" index="3bZ5Sy" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
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
      <concept id="5779574625830813396" name="jetbrains.mps.lang.smodel.structure.EnumerationIdRefExpression" flags="ng" index="1XH99k">
        <reference id="5779574625830813397" name="enumDeclaration" index="1XH99l" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1196978630214" name="jetbrains.mps.lang.core.structure.IResolveInfo" flags="ngI" index="2Lv6Xg">
        <property id="1196978656277" name="resolveInfo" index="2Lvdk3" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp">
      <concept id="1222260469397" name="jetbrains.mps.baseLanguage.regexp.structure.MatchRegexpOperation" flags="nn" index="2kpEY9" />
      <concept id="1174482808826" name="jetbrains.mps.baseLanguage.regexp.structure.StarRegexp" flags="ng" index="1OCmVF" />
      <concept id="1174484562151" name="jetbrains.mps.baseLanguage.regexp.structure.SeqRegexp" flags="ng" index="1OJ37Q" />
      <concept id="1174485167097" name="jetbrains.mps.baseLanguage.regexp.structure.BinaryRegexp" flags="ng" index="1OLmFC">
        <child id="1174485176897" name="left" index="1OLpdg" />
        <child id="1174485181039" name="right" index="1OLqdY" />
      </concept>
      <concept id="1174485235885" name="jetbrains.mps.baseLanguage.regexp.structure.UnaryRegexp" flags="ng" index="1OLBAW">
        <child id="1174485243418" name="regexp" index="1OLDsb" />
      </concept>
      <concept id="1174510540317" name="jetbrains.mps.baseLanguage.regexp.structure.InlineRegexpExpression" flags="nn" index="1Qi9sc">
        <child id="1174510571016" name="regexp" index="1QigWp" />
      </concept>
      <concept id="1174554186090" name="jetbrains.mps.baseLanguage.regexp.structure.SymbolClassRegexp" flags="ng" index="1SSD1V">
        <child id="1174557628217" name="part" index="1T5LoC" />
      </concept>
      <concept id="1174554211468" name="jetbrains.mps.baseLanguage.regexp.structure.PositiveSymbolClassRegexp" flags="ng" index="1SSJmt" />
      <concept id="1174557878319" name="jetbrains.mps.baseLanguage.regexp.structure.CharacterSymbolClassPart" flags="ng" index="1T6I$Y">
        <property id="1174557887320" name="character" index="1T6KD9" />
      </concept>
      <concept id="1174558301835" name="jetbrains.mps.baseLanguage.regexp.structure.IntervalSymbolClassPart" flags="ng" index="1T8lYq">
        <property id="1174558315290" name="start" index="1T8p8b" />
        <property id="1174558317822" name="end" index="1T8pRJ" />
      </concept>
      <concept id="1174653354106" name="jetbrains.mps.baseLanguage.regexp.structure.RegexpUsingConstruction" flags="ngI" index="1YMW5F">
        <child id="1174653387388" name="regexp" index="1YN4dH" />
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
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
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
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1227022179634" name="jetbrains.mps.baseLanguage.collections.structure.AddLastElementOperation" flags="nn" index="2Ke9KJ" />
      <concept id="1227026082377" name="jetbrains.mps.baseLanguage.collections.structure.RemoveFirstElementOperation" flags="nn" index="2Kt2Hk" />
      <concept id="3357971920378033937" name="jetbrains.mps.baseLanguage.collections.structure.DequeType" flags="in" index="2ThTUU" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="4611582986551314327" name="jetbrains.mps.baseLanguage.collections.structure.OfTypeOperation" flags="nn" index="UnYns">
        <child id="4611582986551314344" name="requestedType" index="UnYnz" />
      </concept>
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="31378964227347002" name="jetbrains.mps.baseLanguage.collections.structure.SelectNotNullOperation" flags="ng" index="1KnU$U" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
    </language>
  </registry>
  <node concept="1M2fIO" id="hDMFHZx">
    <ref role="1M2myG" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
    <node concept="XeQIk" id="1fdcuoJ1213" role="XeZnq">
      <node concept="3clFbS" id="1fdcuoJ1214" role="2VODD2">
        <node concept="3clFbF" id="1OwjcesQ27_" role="3cqZAp">
          <node concept="3K4zz7" id="1OwjcesQ9yN" role="3clFbG">
            <node concept="2OqwBi" id="1OwjcesQ27V" role="3K4Cdx">
              <node concept="EsrRn" id="1OwjcesQ27A" role="2Oq$k0" />
              <node concept="3TrcHB" id="1OwjcesQ281" role="2OqNvi">
                <ref role="3TsBF5" to="tpce:fX9Ktp8" resolve="rootable" />
              </node>
            </node>
            <node concept="2SwGe0" id="14excHa39PN" role="3K4E3e">
              <node concept="1QGGSu" id="1fdcuoJ10dx" role="2SwzYu">
                <property role="1iqoE4" value="${module}/icons/rootableConcept.png" />
              </node>
            </node>
            <node concept="2SwGe0" id="14excHa39Yb" role="3K4GZi">
              <node concept="1QGGSu" id="1fdcuoJ11xP" role="2SwzYu">
                <property role="1iqoE4" value="${module}/icons/structure.png" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1N5Pfh" id="hDMFI8e" role="1Mr941">
      <ref role="1N5Vy1" to="tpce:f_TJDff" resolve="extends" />
      <node concept="3dgokm" id="5Vvmn_QkT3X" role="1N6uqs">
        <node concept="3clFbS" id="5Vvmn_QkT3Y" role="2VODD2">
          <node concept="3SKdUt" id="5Vvmn_QkT3Z" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXnYKz" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXnYK$" role="1PaTwD">
                <property role="3oM_SC" value="don't" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnYK_" role="1PaTwD">
                <property role="3oM_SC" value="allow" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnYKA" role="1PaTwD">
                <property role="3oM_SC" value="cycling" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="5Vvmn_QkT41" role="3cqZAp">
            <node concept="2YIFZM" id="5Vvmn_QkT42" role="3cqZAk">
              <ref role="37wK5l" node="50vK5YaqvY9" resolve="forConceptDeclarationExtends" />
              <ref role="1Pybhc" node="6dmIS6MscR9" resolve="Scopes" />
              <node concept="3kakTB" id="5Vvmn_QkT43" role="37wK5m" />
              <node concept="2rP1CM" id="5Vvmn_QkT44" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2NXJUA" id="hQO6qak" role="2NY200">
      <node concept="3clFbS" id="hQO6qal" role="2VODD2">
        <node concept="3clFbF" id="hQO6HK_" role="3cqZAp">
          <node concept="22lmx$" id="1KFbmnBQpT$" role="3clFbG">
            <node concept="2OqwBi" id="57HLayr_Cwg" role="3uHU7B">
              <node concept="1Q6Npb" id="57HLayr_CuA" role="2Oq$k0" />
              <node concept="3zA4fs" id="57HLayr_C$J" role="2OqNvi">
                <ref role="3zA4av" to="tpcc:2LiUEk8oQ$g" resolve="structure" />
              </node>
            </node>
            <node concept="2YIFZM" id="1KFbmnBQr8p" role="3uHU7w">
              <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
              <ref role="37wK5l" to="w1kc:~SModelStereotype.isGeneratorModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isGeneratorModel" />
              <node concept="1Q6Npb" id="1KFbmnBQr8r" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3EP7_v" id="7FGHIxrATGt" role="1MtirG">
      <node concept="3dgokm" id="5Vvmn_QkT3R" role="3EP$qY">
        <node concept="3clFbS" id="5Vvmn_QkT3S" role="2VODD2">
          <node concept="3clFbF" id="5D5SMhc_1gc" role="3cqZAp">
            <node concept="jmWr7" id="5D5SMhc_1gd" role="3clFbG">
              <node concept="1bVj0M" id="5D5SMhc_1ge" role="jmWr0">
                <node concept="37vLTG" id="5D5SMhc_czp" role="1bW2Oz">
                  <property role="TrG5h" value="m" />
                  <node concept="H_c77" id="5D5SMhc_cBO" role="1tU5fm" />
                </node>
                <node concept="3clFbS" id="5D5SMhc_1gf" role="1bW5cS">
                  <node concept="3clFbF" id="5D5SMhc_1gg" role="3cqZAp">
                    <node concept="10QFUN" id="5D5SMhc_1gh" role="3clFbG">
                      <node concept="jmWhJ" id="5D5SMhc_1gi" role="10QFUM" />
                      <node concept="2YIFZM" id="5D5SMhc_1gj" role="10QFUP">
                        <ref role="1Pybhc" node="6dmIS6MscR9" resolve="Scopes" />
                        <ref role="37wK5l" node="5D5SMhczOUQ" resolve="forConcepts" />
                        <node concept="37vLTw" id="5D5SMhc_cRi" role="37wK5m">
                          <ref role="3cqZAo" node="5D5SMhc_czp" resolve="m" />
                        </node>
                        <node concept="35c_gC" id="5Vvmn_QkT3W" role="37wK5m">
                          <ref role="35c_gD" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="5D5SMhc_1go" role="jmWrN">
                <property role="Xl_RC" value="j.m.l.structure.CD" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9SLcT" id="52LfCqSGu62" role="9SGkU">
      <node concept="3clFbS" id="52LfCqSGu63" role="2VODD2">
        <node concept="3SKdUt" id="52LfCqSGW1n" role="3cqZAp">
          <node concept="1PaTwC" id="52LfCqSGW1o" role="1aUNEU">
            <node concept="3oM_SD" id="52LfCqSGW1p" role="1PaTwD">
              <property role="3oM_SC" value="ConceptPresentationAspectImpl" />
            </node>
            <node concept="3oM_SD" id="52LfCqSGW4X" role="1PaTwD">
              <property role="3oM_SC" value="template" />
            </node>
            <node concept="3oM_SD" id="52LfCqSGW5C" role="1PaTwD">
              <property role="3oM_SC" value="creates" />
            </node>
            <node concept="3oM_SD" id="52LfCqSGW6z" role="1PaTwD">
              <property role="3oM_SC" value="IconResource" />
            </node>
            <node concept="3oM_SD" id="52LfCqSGW8J" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="52LfCqSGW8M" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="52LfCqSGW8R" role="1PaTwD">
              <property role="3oM_SC" value="icon," />
            </node>
            <node concept="3oM_SD" id="52LfCqSGW9K" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="52LfCqSGWaB" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="52LfCqSGWaX" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="52LfCqSGWc8" role="1PaTwD">
              <property role="3oM_SC" value="know" />
            </node>
            <node concept="3oM_SD" id="52LfCqSGWd0" role="1PaTwD">
              <property role="3oM_SC" value="(yet?)" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="52LfCqSGWg3" role="3cqZAp">
          <node concept="1PaTwC" id="52LfCqSGWg4" role="1aUNEU">
            <node concept="3oM_SD" id="52LfCqSGWg5" role="1PaTwD">
              <property role="3oM_SC" value="how" />
            </node>
            <node concept="3oM_SD" id="52LfCqSGWox" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="52LfCqSGWoA" role="1PaTwD">
              <property role="3oM_SC" value="make" />
            </node>
            <node concept="3oM_SD" id="52LfCqSGWpu" role="1PaTwD">
              <property role="3oM_SC" value="resource" />
            </node>
            <node concept="3oM_SD" id="52LfCqSGWqq" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="52LfCqSGWrn" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="52LfCqSGWsc" role="1PaTwD">
              <property role="3oM_SC" value="image" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="52LfCqSG$I0" role="3cqZAp">
          <node concept="22lmx$" id="52LfCqSG_R8" role="3cqZAk">
            <node concept="17QLQc" id="52LfCqSG_y3" role="3uHU7B">
              <node concept="2DA6wF" id="52LfCqSG$Ov" role="3uHU7B" />
              <node concept="359W_D" id="52LfCqSG_$i" role="3uHU7w">
                <ref role="359W_E" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                <ref role="359W_F" to="tpce:5vfjF5cjTVP" resolve="icon" />
              </node>
            </node>
            <node concept="1eOMI4" id="48AItMdBQpe" role="3uHU7w">
              <node concept="1Wc70l" id="48AItMdBPLD" role="1eOMHV">
                <node concept="3fqX7Q" id="48AItMdBDNR" role="3uHU7w">
                  <node concept="2OqwBi" id="48AItMdBDNS" role="3fr31v">
                    <node concept="2DD5aU" id="48AItMdBDNT" role="2Oq$k0" />
                    <node concept="3O6GUB" id="48AItMdBDNU" role="2OqNvi">
                      <node concept="chp4Y" id="48AItMdBDNV" role="3QVz_e">
                        <ref role="cht4Q" to="1oap:7tcRu9qvxgB" resolve="FactoryMethodIcon" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="52LfCqSGC_C" role="3uHU7B">
                  <node concept="2OqwBi" id="52LfCqSGC_E" role="3fr31v">
                    <node concept="2DD5aU" id="52LfCqSGC_F" role="2Oq$k0" />
                    <node concept="3O6GUB" id="52LfCqSGC_G" role="2OqNvi">
                      <node concept="chp4Y" id="52LfCqSGC_H" role="3QVz_e">
                        <ref role="cht4Q" to="1oap:6S5fI02sJjS" resolve="ConstantFieldIcon" />
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
  <node concept="1M2fIO" id="hDMFI9k">
    <ref role="1M2myG" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    <node concept="EnEH3" id="wJ65cZ4ww6" role="1MhHOB">
      <ref role="EomxK" to="tpce:3Ftr4R6BH8A" resolve="sourceCardinality" />
      <node concept="QB0g5" id="wJ65cZ4ww7" role="QCWH9">
        <node concept="3clFbS" id="wJ65cZ4ww8" role="2VODD2">
          <node concept="3clFbF" id="wJ65cZ4wwc" role="3cqZAp">
            <node concept="22lmx$" id="wJ65cZ4zmW" role="3clFbG">
              <node concept="3clFbC" id="59AhiqZb6tj" role="3uHU7w">
                <node concept="2OqwBi" id="3Ftr4R8$mJE" role="3uHU7B">
                  <node concept="1XH99k" id="3Ftr4R8$mJF" role="2Oq$k0">
                    <ref role="1XH99l" to="tpce:3Ftr4R6BFyf" resolve="Cardinality" />
                  </node>
                  <node concept="2ViDtV" id="3Ftr4R8$mJG" role="2OqNvi">
                    <ref role="2ViDtZ" to="tpce:3Ftr4R6BFyh" resolve="_0__1" />
                  </node>
                </node>
                <node concept="1Wqviy" id="wJ65cZ4znq" role="3uHU7w" />
              </node>
              <node concept="22lmx$" id="wJ65cZ4zmB" role="3uHU7B">
                <node concept="3clFbC" id="59AhiqZb6xG" role="3uHU7w">
                  <node concept="2OqwBi" id="3Ftr4R8$mJH" role="3uHU7B">
                    <node concept="1XH99k" id="3Ftr4R8$mJI" role="2Oq$k0">
                      <ref role="1XH99l" to="tpce:3Ftr4R6BFyf" resolve="Cardinality" />
                    </node>
                    <node concept="2ViDtV" id="3Ftr4R8$mJJ" role="2OqNvi">
                      <ref role="2ViDtZ" to="tpce:3Ftr4R6BFyi" resolve="_1" />
                    </node>
                  </node>
                  <node concept="1Wqviy" id="wJ65cZ4zmU" role="3uHU7w" />
                </node>
                <node concept="2OqwBi" id="wJ65cZ4zaP" role="3uHU7B">
                  <node concept="21noJN" id="3Ftr4R8$mH_" role="2OqNvi">
                    <node concept="21nZrQ" id="3Ftr4R8$mHA" role="21noJM">
                      <ref role="21nZrZ" to="tpce:3Ftr4R6BFyo" resolve="aggregation" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="wJ65cZ4wwe" role="2Oq$k0">
                    <node concept="EsrRn" id="wJ65cZ4wwd" role="2Oq$k0" />
                    <node concept="3TrcHB" id="wJ65cZ4wwi" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="dqwjwHwEkt" role="1MhHOB">
      <ref role="EomxK" to="tpce:dqwjwHwEj$" resolve="linkId" />
      <node concept="QB0g5" id="dqwjwHwEku" role="QCWH9">
        <node concept="3clFbS" id="dqwjwHwEkv" role="2VODD2">
          <node concept="3clFbJ" id="4H96pIbDK$O" role="3cqZAp">
            <node concept="3clFbS" id="4H96pIbDK$P" role="3clFbx">
              <node concept="3cpWs6" id="4H96pIbDK$Q" role="3cqZAp">
                <node concept="3clFbT" id="4H96pIbDK$R" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4H96pIbDK$S" role="3clFbw">
              <node concept="1Wqviy" id="4H96pIbDK$T" role="2Oq$k0" />
              <node concept="17RlXB" id="4H96pIbDK$U" role="2OqNvi" />
            </node>
          </node>
          <node concept="3J1_TO" id="dqwjwHwEkw" role="3cqZAp">
            <node concept="3clFbS" id="dqwjwHwEkx" role="1zxBo7">
              <node concept="3clFbF" id="dqwjwHwEky" role="3cqZAp">
                <node concept="2YIFZM" id="dqwjwHwEkz" role="3clFbG">
                  <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
                  <ref role="37wK5l" to="wyt6:~Long.parseLong(java.lang.String)" resolve="parseLong" />
                  <node concept="1Wqviy" id="1aNy2iLFCRS" role="37wK5m" />
                </node>
              </node>
              <node concept="3cpWs6" id="dqwjwHwEkB" role="3cqZAp">
                <node concept="3clFbT" id="dqwjwHwEkC" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3uVAMA" id="dqwjwHwEkD" role="1zxBo5">
              <node concept="XOnhg" id="dqwjwHwEkE" role="1zc67B">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="e" />
                <node concept="nSUau" id="xvs04dG4Mp" role="1tU5fm">
                  <node concept="3uibUv" id="dqwjwHwEkF" role="nSUat">
                    <ref role="3uigEE" to="wyt6:~NumberFormatException" resolve="NumberFormatException" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="dqwjwHwEkG" role="1zc67A">
                <node concept="3cpWs6" id="dqwjwHwEkH" role="3cqZAp">
                  <node concept="3clFbT" id="dqwjwHwEkI" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="3pPFrMaA2YM" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="Eqf_E" id="3pPFrMaA9cl" role="EtsB7">
        <node concept="3clFbS" id="3pPFrMaA9cm" role="2VODD2">
          <node concept="3clFbF" id="3pPFrMaA9uc" role="3cqZAp">
            <node concept="2OqwBi" id="3pPFrMaA9GF" role="3clFbG">
              <node concept="EsrRn" id="3pPFrMaA9ub" role="2Oq$k0" />
              <node concept="3TrcHB" id="3pPFrMaAadu" role="2OqNvi">
                <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1LLf8_" id="3FKyMbOdd58" role="1LXaQT">
        <node concept="3clFbS" id="3FKyMbOdd59" role="2VODD2">
          <node concept="3clFbF" id="3FKyMbOdl3U" role="3cqZAp">
            <node concept="37vLTI" id="3FKyMbOdlSH" role="3clFbG">
              <node concept="1Wqviy" id="3FKyMbOdm0a" role="37vLTx" />
              <node concept="2OqwBi" id="3FKyMbOdlbY" role="37vLTJ">
                <node concept="EsrRn" id="3FKyMbOdl3T" role="2Oq$k0" />
                <node concept="3TrcHB" id="3FKyMbOdloE" role="2OqNvi">
                  <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1N5Pfh" id="hDMFI9l" role="1Mr941">
      <ref role="1N5Vy1" to="tpce:fA0ks94" resolve="specializedLink" />
      <node concept="3dgokm" id="5Vvmn_QkT45" role="1N6uqs">
        <node concept="3clFbS" id="5Vvmn_QkT46" role="2VODD2">
          <node concept="3SKdUt" id="5Vvmn_QkT47" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXnYKB" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXnYKC" role="1PaTwD">
                <property role="3oM_SC" value="links" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnYKD" role="1PaTwD">
                <property role="3oM_SC" value="declared" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnYKE" role="1PaTwD">
                <property role="3oM_SC" value="in" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnYKF" role="1PaTwD">
                <property role="3oM_SC" value="hierarchy" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnYKG" role="1PaTwD">
                <property role="3oM_SC" value="of" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnYKH" role="1PaTwD">
                <property role="3oM_SC" value="enclosing" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnYKI" role="1PaTwD">
                <property role="3oM_SC" value="concept." />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5Vvmn_QkT49" role="3cqZAp">
            <node concept="3clFbS" id="5Vvmn_QkT4a" role="3clFbx">
              <node concept="3cpWs6" id="5Vvmn_QkT4b" role="3cqZAp">
                <node concept="10Nm6u" id="5Vvmn_QkT4c" role="3cqZAk" />
              </node>
            </node>
            <node concept="3clFbC" id="5Vvmn_QkT4d" role="3clFbw">
              <node concept="10Nm6u" id="5Vvmn_QkT4e" role="3uHU7w" />
              <node concept="3kakTB" id="5Vvmn_QkT4f" role="3uHU7B" />
            </node>
          </node>
          <node concept="3cpWs8" id="5Vvmn_QkT4g" role="3cqZAp">
            <node concept="3cpWsn" id="5Vvmn_QkT4h" role="3cpWs9">
              <property role="TrG5h" value="aggregation" />
              <node concept="10P_77" id="5Vvmn_QkT4i" role="1tU5fm" />
              <node concept="2OqwBi" id="5Vvmn_QkT4j" role="33vP2m">
                <node concept="21noJN" id="3Ftr4R8$mHB" role="2OqNvi">
                  <node concept="21nZrQ" id="3Ftr4R8$mHC" role="21noJM">
                    <ref role="21nZrZ" to="tpce:3Ftr4R6BFyo" resolve="aggregation" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5Vvmn_QkT4k" role="2Oq$k0">
                  <node concept="3kakTB" id="5Vvmn_QkT4l" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5Vvmn_QkT4m" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5Vvmn_QkT4p" role="3cqZAp">
            <node concept="3cpWsn" id="5Vvmn_QkT4q" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="2I9FWS" id="5Vvmn_QkT4r" role="1tU5fm">
                <ref role="2I9WkF" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
              </node>
              <node concept="2ShNRf" id="5Vvmn_QkT4s" role="33vP2m">
                <node concept="2T8Vx0" id="5Vvmn_QkT4t" role="2ShVmc">
                  <node concept="2I9FWS" id="5Vvmn_QkT4u" role="2T96Bj">
                    <ref role="2I9WkF" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5Vvmn_QkT4v" role="3cqZAp">
            <node concept="3cpWsn" id="5Vvmn_QkT4w" role="3cpWs9">
              <property role="TrG5h" value="enclosingConcept" />
              <node concept="3Tqbb2" id="5Vvmn_QkT4x" role="1tU5fm">
                <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
              </node>
              <node concept="2OqwBi" id="5Vvmn_QkT4y" role="33vP2m">
                <node concept="2rP1CM" id="5Vvmn_QkT5n" role="2Oq$k0" />
                <node concept="2Xjw5R" id="5Vvmn_QkT4$" role="2OqNvi">
                  <node concept="1xIGOp" id="5Vvmn_QkT4_" role="1xVPHs" />
                  <node concept="1xMEDy" id="5Vvmn_QkT4A" role="1xVPHs">
                    <node concept="chp4Y" id="5Vvmn_QkT4B" role="ri$Ld">
                      <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5Vvmn_QkT4C" role="3cqZAp">
            <node concept="3cpWsn" id="5Vvmn_QkT4D" role="3cpWs9">
              <property role="TrG5h" value="directSupers" />
              <node concept="_YKpA" id="5Vvmn_QkT4E" role="1tU5fm">
                <node concept="3Tqbb2" id="5Vvmn_QkT4F" role="_ZDj9">
                  <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                </node>
              </node>
              <node concept="2OqwBi" id="5Vvmn_QkT4G" role="33vP2m">
                <node concept="3zqWPK" id="70OdufORfyv" role="2OqNvi">
                  <ref role="37wK5l" to="tpcn:hMuxyK2" resolve="getImmediateSuperconcepts" />
                </node>
                <node concept="37vLTw" id="5Vvmn_QkT4I" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Vvmn_QkT4w" resolve="enclosingConcept" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="5Vvmn_QkT4J" role="3cqZAp">
            <node concept="2GrKxI" id="5Vvmn_QkT4K" role="2Gsz3X">
              <property role="TrG5h" value="concept" />
            </node>
            <node concept="37vLTw" id="5Vvmn_QkT4L" role="2GsD0m">
              <ref role="3cqZAo" node="5Vvmn_QkT4D" resolve="directSupers" />
            </node>
            <node concept="3clFbS" id="5Vvmn_QkT4M" role="2LFqv$">
              <node concept="3cpWs8" id="5Vvmn_QkT4N" role="3cqZAp">
                <node concept="3cpWsn" id="5Vvmn_QkT4O" role="3cpWs9">
                  <property role="TrG5h" value="links" />
                  <node concept="2OqwBi" id="5Vvmn_QkT4P" role="33vP2m">
                    <node concept="2GrUjf" id="5Vvmn_QkT4Q" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="5Vvmn_QkT4K" resolve="concept" />
                    </node>
                    <node concept="3zqWPK" id="70OdufORfyx" role="2OqNvi">
                      <ref role="37wK5l" to="tpcn:hEwILKK" resolve="getLinkDeclarations" />
                    </node>
                  </node>
                  <node concept="2I9FWS" id="5Vvmn_QkT4S" role="1tU5fm">
                    <ref role="2I9WkF" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5Vvmn_QkT4T" role="3cqZAp">
                <node concept="2OqwBi" id="5Vvmn_QkT4U" role="3clFbG">
                  <node concept="37vLTw" id="5Vvmn_QkT4V" role="2Oq$k0">
                    <ref role="3cqZAo" node="5Vvmn_QkT4q" resolve="result" />
                  </node>
                  <node concept="X8dFx" id="5Vvmn_QkT4W" role="2OqNvi">
                    <node concept="2OqwBi" id="5Vvmn_QkT4X" role="25WWJ7">
                      <node concept="37vLTw" id="5Vvmn_QkT4Y" role="2Oq$k0">
                        <ref role="3cqZAo" node="5Vvmn_QkT4O" resolve="links" />
                      </node>
                      <node concept="3zZkjj" id="5Vvmn_QkT4Z" role="2OqNvi">
                        <node concept="1bVj0M" id="5Vvmn_QkT50" role="23t8la">
                          <node concept="gl6BB" id="5W7E4fV0WtX" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="5W7E4fV0WtY" role="1tU5fm" />
                          </node>
                          <node concept="3clFbS" id="5Vvmn_QkT53" role="1bW5cS">
                            <node concept="3clFbJ" id="5Vvmn_QkT54" role="3cqZAp">
                              <node concept="3clFbS" id="5Vvmn_QkT55" role="3clFbx">
                                <node concept="3cpWs6" id="5Vvmn_QkT56" role="3cqZAp">
                                  <node concept="2OqwBi" id="5Vvmn_QkT57" role="3cqZAk">
                                    <node concept="21noJN" id="3Ftr4R8$mHD" role="2OqNvi">
                                      <node concept="21nZrQ" id="3Ftr4R8$mHE" role="21noJM">
                                        <ref role="21nZrZ" to="tpce:3Ftr4R6BFyo" resolve="aggregation" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="5Vvmn_QkT58" role="2Oq$k0">
                                      <node concept="37vLTw" id="5Vvmn_QkT59" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5W7E4fV0WtX" resolve="it" />
                                      </node>
                                      <node concept="3TrcHB" id="5Vvmn_QkT5a" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTw" id="5Vvmn_QkT5d" role="3clFbw">
                                <ref role="3cqZAo" node="5Vvmn_QkT4h" resolve="aggregation" />
                              </node>
                            </node>
                            <node concept="3cpWs6" id="5Vvmn_QkT5e" role="3cqZAp">
                              <node concept="2OqwBi" id="5Vvmn_QkT5f" role="3cqZAk">
                                <node concept="21noJN" id="3Ftr4R8$mHF" role="2OqNvi">
                                  <node concept="21nZrQ" id="3Ftr4R8$mHG" role="21noJM">
                                    <ref role="21nZrZ" to="tpce:3Ftr4R6BFyn" resolve="reference" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="5Vvmn_QkT5g" role="2Oq$k0">
                                  <node concept="37vLTw" id="5Vvmn_QkT5h" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5W7E4fV0WtX" resolve="it" />
                                  </node>
                                  <node concept="3TrcHB" id="5Vvmn_QkT5i" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
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
          <node concept="3cpWs6" id="5Vvmn_QkT5l" role="3cqZAp">
            <node concept="2YIFZM" id="5Vvmn_QkT5$" role="3cqZAk">
              <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="37vLTw" id="5Vvmn_QkT5_" role="37wK5m">
                <ref role="3cqZAo" node="5Vvmn_QkT4q" resolve="result" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="hDMFJ$N">
    <property role="3GE5qa" value="enums.old" />
    <ref role="1M2myG" to="tpce:fKAxPRV" resolve="EnumerationDataTypeDeclaration_Old" />
    <node concept="EnEH3" id="hDMFJ$O" role="1MhHOB">
      <ref role="EomxK" to="tpce:hCPDuZq" resolve="hasNoDefaultMember" />
      <node concept="1LLf8_" id="hDMFJ$P" role="1LXaQT">
        <node concept="3clFbS" id="hDMFJ$Q" role="2VODD2">
          <node concept="3clFbF" id="hDMFJ$R" role="3cqZAp">
            <node concept="37vLTI" id="hDMFJ$S" role="3clFbG">
              <node concept="1Wqviy" id="hDMFJ$T" role="37vLTx" />
              <node concept="2OqwBi" id="hDMFJ$U" role="37vLTJ">
                <node concept="EsrRn" id="hDMFJ$V" role="2Oq$k0" />
                <node concept="3TrcHB" id="hDMFJ$W" role="2OqNvi">
                  <ref role="3TsBF5" to="tpce:hCPDuZq" resolve="hasNoDefaultMember" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="hDMFJ$X" role="3cqZAp">
            <node concept="3clFbC" id="hDMFJ$Y" role="3clFbw">
              <node concept="3clFbT" id="hDMFJ$Z" role="3uHU7w">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="1Wqviy" id="hDMFJ_0" role="3uHU7B" />
            </node>
            <node concept="3clFbS" id="hDMFJ_1" role="3clFbx">
              <node concept="3clFbF" id="hDMFJ_2" role="3cqZAp">
                <node concept="37vLTI" id="hDMFJ_3" role="3clFbG">
                  <node concept="10Nm6u" id="hDMFJ_4" role="37vLTx" />
                  <node concept="2OqwBi" id="hDMFJ_5" role="37vLTJ">
                    <node concept="EsrRn" id="hDMFJ_6" role="2Oq$k0" />
                    <node concept="3TrEf2" id="hDMFJ_7" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpce:fKQgatX" resolve="defaultMember" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1N5Pfh" id="hDMFJ_8" role="1Mr941">
      <ref role="1N5Vy1" to="tpce:fKQgatX" resolve="defaultMember" />
      <node concept="3dgokm" id="5Vvmn_QkT0A" role="1N6uqs">
        <node concept="3clFbS" id="5Vvmn_QkT0B" role="2VODD2">
          <node concept="3SKdUt" id="5Vvmn_QkT0C" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXnYKJ" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXnYKK" role="1PaTwD">
                <property role="3oM_SC" value="members" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnYKL" role="1PaTwD">
                <property role="3oM_SC" value="declared" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnYKM" role="1PaTwD">
                <property role="3oM_SC" value="here" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="5Vvmn_QkT0E" role="3cqZAp">
            <node concept="2YIFZM" id="7C6N2UpvdNS" role="3cqZAk">
              <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="2OqwBi" id="7C6N2UpvfCw" role="37wK5m">
                <node concept="3kakTB" id="7C6N2Upvfdp" role="2Oq$k0" />
                <node concept="2Rf3mk" id="7C6N2Upvg61" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2NXJUA" id="hQO839z" role="2NY200">
      <node concept="3clFbS" id="hQO839$" role="2VODD2">
        <node concept="3clFbF" id="hQO839_" role="3cqZAp">
          <node concept="22lmx$" id="1KFbmnBQs$Z" role="3clFbG">
            <node concept="2OqwBi" id="57HLayr_EAO" role="3uHU7B">
              <node concept="1Q6Npb" id="57HLayr_EAP" role="2Oq$k0" />
              <node concept="3zA4fs" id="57HLayr_EAQ" role="2OqNvi">
                <ref role="3zA4av" to="tpcc:2LiUEk8oQ$g" resolve="structure" />
              </node>
            </node>
            <node concept="2YIFZM" id="1KFbmnBQs_5" role="3uHU7w">
              <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
              <ref role="37wK5l" to="w1kc:~SModelStereotype.isGeneratorModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isGeneratorModel" />
              <node concept="1Q6Npb" id="1KFbmnBQs_6" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="hQO7YQv">
    <ref role="1M2myG" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
    <node concept="2NXJUA" id="hQO7Zg8" role="2NY200">
      <node concept="3clFbS" id="hQO7Zg9" role="2VODD2">
        <node concept="3clFbF" id="hQO7Zga" role="3cqZAp">
          <node concept="22lmx$" id="1KFbmnBQs$w" role="3clFbG">
            <node concept="2OqwBi" id="57HLayr_EFO" role="3uHU7B">
              <node concept="1Q6Npb" id="57HLayr_EFP" role="2Oq$k0" />
              <node concept="3zA4fs" id="57HLayr_EFQ" role="2OqNvi">
                <ref role="3zA4av" to="tpcc:2LiUEk8oQ$g" resolve="structure" />
              </node>
            </node>
            <node concept="2YIFZM" id="1KFbmnBQs$A" role="3uHU7w">
              <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
              <ref role="37wK5l" to="w1kc:~SModelStereotype.isGeneratorModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isGeneratorModel" />
              <node concept="1Q6Npb" id="1KFbmnBQs$B" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3EP7_v" id="7FGHIxrAOof" role="1MtirG">
      <node concept="3dgokm" id="5Vvmn_QkT3F" role="3EP$qY">
        <node concept="3clFbS" id="5Vvmn_QkT3G" role="2VODD2">
          <node concept="3clFbF" id="5D5SMhc$Vgb" role="3cqZAp">
            <node concept="jmWr7" id="5D5SMhc$Vg7" role="3clFbG">
              <node concept="1bVj0M" id="5D5SMhc$VrD" role="jmWr0">
                <node concept="37vLTG" id="5D5SMhc_d6F" role="1bW2Oz">
                  <property role="TrG5h" value="m" />
                  <node concept="H_c77" id="5D5SMhc_dd9" role="1tU5fm" />
                </node>
                <node concept="3clFbS" id="5D5SMhc$VrF" role="1bW5cS">
                  <node concept="3clFbF" id="5D5SMhc$VW$" role="3cqZAp">
                    <node concept="10QFUN" id="5D5SMhc$Wxq" role="3clFbG">
                      <node concept="jmWhJ" id="5D5SMhc$WF3" role="10QFUM" />
                      <node concept="2YIFZM" id="5D5SMhc$Wpl" role="10QFUP">
                        <ref role="37wK5l" node="5D5SMhczOUQ" resolve="forConcepts" />
                        <ref role="1Pybhc" node="6dmIS6MscR9" resolve="Scopes" />
                        <node concept="37vLTw" id="5D5SMhc_dpY" role="37wK5m">
                          <ref role="3cqZAo" node="5D5SMhc_d6F" resolve="m" />
                        </node>
                        <node concept="35c_gC" id="5D5SMhc$Wpn" role="37wK5m">
                          <ref role="35c_gD" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="5D5SMhc$WIf" role="jmWrN">
                <property role="Xl_RC" value="j.m.l.structure.ICD" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="hQO85Jr">
    <ref role="1M2myG" to="tpce:fKAz7CR" resolve="ConstrainedDataTypeDeclaration" />
    <node concept="2NXJUA" id="hQO866S" role="2NY200">
      <node concept="3clFbS" id="hQO866T" role="2VODD2">
        <node concept="3clFbF" id="hQO866U" role="3cqZAp">
          <node concept="22lmx$" id="1KFbmnBQs_u" role="3clFbG">
            <node concept="2OqwBi" id="57HLayr_Evv" role="3uHU7B">
              <node concept="1Q6Npb" id="57HLayr_Evw" role="2Oq$k0" />
              <node concept="3zA4fs" id="57HLayr_Evx" role="2OqNvi">
                <ref role="3zA4av" to="tpcc:2LiUEk8oQ$g" resolve="structure" />
              </node>
            </node>
            <node concept="2YIFZM" id="1KFbmnBQs_$" role="3uHU7w">
              <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
              <ref role="37wK5l" to="w1kc:~SModelStereotype.isGeneratorModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isGeneratorModel" />
              <node concept="1Q6Npb" id="1KFbmnBQs__" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="4Ub9wWoJsQo" role="1MhHOB">
      <ref role="EomxK" to="tpce:fKFLfW2" resolve="constraint" />
      <node concept="QB0g5" id="4Ub9wWoJtcj" role="QCWH9">
        <node concept="3clFbS" id="4Ub9wWoJtck" role="2VODD2">
          <node concept="3J1_TO" id="4Ub9wWoJCr_" role="3cqZAp">
            <node concept="3clFbS" id="4Ub9wWoJCrA" role="1zxBo7">
              <node concept="3clFbF" id="1aVJnrWaVek" role="3cqZAp">
                <node concept="2YIFZM" id="4Ub9wWoJATC" role="3clFbG">
                  <ref role="1Pybhc" to="ni5j:~Pattern" resolve="Pattern" />
                  <ref role="37wK5l" to="ni5j:~Pattern.compile(java.lang.String)" resolve="compile" />
                  <node concept="2OqwBi" id="5_LqW2_S33" role="37wK5m">
                    <node concept="1Wqviy" id="4Ub9wWoJAy1" role="2Oq$k0" />
                    <node concept="liA8E" id="xa0by_xy0c" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.translateEscapes()" resolve="translateEscapes" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uVAMA" id="4Ub9wWoJCrB" role="1zxBo5">
              <node concept="XOnhg" id="4Ub9wWoJCrC" role="1zc67B">
                <property role="TrG5h" value="e" />
                <node concept="nSUau" id="4Ub9wWoJCrD" role="1tU5fm">
                  <node concept="3uibUv" id="4Ub9wWoJCxg" role="nSUat">
                    <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="4Ub9wWoJCrE" role="1zc67A">
                <node concept="3cpWs6" id="4Ub9wWoJEjv" role="3cqZAp">
                  <node concept="3clFbT" id="4Ub9wWoJElo" role="3cqZAk" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="4Ub9wWoJDUg" role="3cqZAp">
            <node concept="3clFbT" id="4Ub9wWoJEbk" role="3cqZAk">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="4rXzdWLTGLv">
    <ref role="1M2myG" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    <node concept="EnEH3" id="5w5a4OfWTDI" role="1MhHOB">
      <ref role="EomxK" to="tpce:5OIo7_R7SN0" resolve="conceptId" />
      <node concept="QB0g5" id="5w5a4OfWTOH" role="QCWH9">
        <node concept="3clFbS" id="5w5a4OfWTOI" role="2VODD2">
          <node concept="3clFbJ" id="4H96pIbDlkB" role="3cqZAp">
            <node concept="3clFbS" id="4H96pIbDlkD" role="3clFbx">
              <node concept="3cpWs6" id="4H96pIbDmGa" role="3cqZAp">
                <node concept="3clFbT" id="4H96pIbDmYC" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4H96pIbDlRK" role="3clFbw">
              <node concept="1Wqviy" id="4H96pIbDltW" role="2Oq$k0" />
              <node concept="17RlXB" id="4H96pIbDmz0" role="2OqNvi" />
            </node>
          </node>
          <node concept="3J1_TO" id="5w5a4OfWXx_" role="3cqZAp">
            <node concept="3clFbS" id="5w5a4OfWXxB" role="1zxBo7">
              <node concept="3clFbF" id="5w5a4OfWU5p" role="3cqZAp">
                <node concept="2YIFZM" id="5w5a4OfWUcJ" role="3clFbG">
                  <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
                  <ref role="37wK5l" to="wyt6:~Long.parseLong(java.lang.String)" resolve="parseLong" />
                  <node concept="1Wqviy" id="1aNy2iLFzPE" role="37wK5m" />
                </node>
              </node>
              <node concept="3cpWs6" id="5w5a4OfWY8h" role="3cqZAp">
                <node concept="3clFbT" id="5w5a4OfWYs5" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3uVAMA" id="5w5a4OfWXxC" role="1zxBo5">
              <node concept="XOnhg" id="5w5a4OfWXxE" role="1zc67B">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="e" />
                <node concept="nSUau" id="xvs04dG4Mr" role="1tU5fm">
                  <node concept="3uibUv" id="5w5a4OfWYA5" role="nSUat">
                    <ref role="3uigEE" to="wyt6:~NumberFormatException" resolve="NumberFormatException" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5w5a4OfWXxI" role="1zc67A">
                <node concept="3cpWs6" id="5w5a4OfWZ4g" role="3cqZAp">
                  <node concept="3clFbT" id="5w5a4OfWZor" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="7NTi8jM8Riq" role="1MhHOB">
      <ref role="EomxK" to="tpce:7NTi8jM8Rgz" resolve="languageId" />
      <node concept="QB0g5" id="7NTi8jM8Rir" role="QCWH9">
        <node concept="3clFbS" id="7NTi8jM8Ris" role="2VODD2">
          <node concept="3clFbJ" id="7NTi8jM8Rit" role="3cqZAp">
            <node concept="3clFbS" id="7NTi8jM8Riu" role="3clFbx">
              <node concept="3cpWs6" id="7NTi8jM8Riv" role="3cqZAp">
                <node concept="3clFbT" id="7NTi8jM8Riw" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7NTi8jM8Rix" role="3clFbw">
              <node concept="1Wqviy" id="7NTi8jM8Riy" role="2Oq$k0" />
              <node concept="17RlXB" id="7NTi8jM8Riz" role="2OqNvi" />
            </node>
          </node>
          <node concept="3J1_TO" id="7NTi8jM8Ri$" role="3cqZAp">
            <node concept="3clFbS" id="7NTi8jM8Ri_" role="1zxBo7">
              <node concept="3clFbF" id="7NTi8jM8RiA" role="3cqZAp">
                <node concept="2YIFZM" id="7NTi8jM8SnR" role="3clFbG">
                  <ref role="37wK5l" to="33ny:~UUID.fromString(java.lang.String)" resolve="fromString" />
                  <ref role="1Pybhc" to="33ny:~UUID" resolve="UUID" />
                  <node concept="1Wqviy" id="7NTi8jM8SnS" role="37wK5m" />
                </node>
              </node>
              <node concept="3cpWs6" id="7NTi8jM8RiD" role="3cqZAp">
                <node concept="3clFbT" id="7NTi8jM8RiE" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3uVAMA" id="7NTi8jM8RiF" role="1zxBo5">
              <node concept="XOnhg" id="7NTi8jM8RiG" role="1zc67B">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="e" />
                <node concept="nSUau" id="xvs04dG4Mt" role="1tU5fm">
                  <node concept="3uibUv" id="2zwHbShbHef" role="nSUat">
                    <ref role="3uigEE" to="wyt6:~IllegalArgumentException" resolve="IllegalArgumentException" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7NTi8jM8RiI" role="1zc67A">
                <node concept="3cpWs6" id="7NTi8jM8RiJ" role="3cqZAp">
                  <node concept="3clFbT" id="7NTi8jM8RiK" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3EP7_v" id="7FGHIxrAPQD" role="1MtirG">
      <node concept="3dgokm" id="5Vvmn_QkT3L" role="3EP$qY">
        <node concept="3clFbS" id="5Vvmn_QkT3M" role="2VODD2">
          <node concept="3clFbF" id="5D5SMhc$pjR" role="3cqZAp">
            <node concept="jmWr7" id="5D5SMhc$pjN" role="3clFbG">
              <node concept="1bVj0M" id="5D5SMhc$puB" role="jmWr0">
                <node concept="3clFbS" id="5D5SMhc$puD" role="1bW5cS">
                  <node concept="3clFbF" id="5D5SMhc$pKT" role="3cqZAp">
                    <node concept="10QFUN" id="5D5SMhc$MAh" role="3clFbG">
                      <node concept="jmWhJ" id="5D5SMhc$MKq" role="10QFUM" />
                      <node concept="2YIFZM" id="5D5SMhc$pSA" role="10QFUP">
                        <ref role="37wK5l" node="5D5SMhczOUQ" resolve="forConcepts" />
                        <ref role="1Pybhc" node="6dmIS6MscR9" resolve="Scopes" />
                        <node concept="37vLTw" id="5D5SMhc$pYh" role="37wK5m">
                          <ref role="3cqZAo" node="5D5SMhc$pyS" resolve="m" />
                        </node>
                        <node concept="35c_gC" id="5Vvmn_QkT3Q" role="37wK5m">
                          <ref role="35c_gD" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="5D5SMhc$pyS" role="1bW2Oz">
                  <property role="TrG5h" value="m" />
                  <node concept="H_c77" id="5D5SMhc$pyR" role="1tU5fm" />
                </node>
              </node>
              <node concept="Xl_RD" id="5D5SMhc$U$x" role="jmWrN">
                <property role="Xl_RC" value="j.m.l.structure.ACD" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="4rXzdWLTH1T">
    <ref role="1M2myG" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
    <node concept="EnEH3" id="dqwjwHwLI9" role="1MhHOB">
      <ref role="EomxK" to="tpce:dqwjwHwEjp" resolve="propertyId" />
      <node concept="QB0g5" id="dqwjwHwLIa" role="QCWH9">
        <node concept="3clFbS" id="dqwjwHwLIb" role="2VODD2">
          <node concept="3clFbJ" id="4H96pIbDLgQ" role="3cqZAp">
            <node concept="3clFbS" id="4H96pIbDLgR" role="3clFbx">
              <node concept="3cpWs6" id="4H96pIbDLgS" role="3cqZAp">
                <node concept="3clFbT" id="4H96pIbDLgT" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4H96pIbDLgU" role="3clFbw">
              <node concept="1Wqviy" id="4H96pIbDLgV" role="2Oq$k0" />
              <node concept="17RlXB" id="4H96pIbDLgW" role="2OqNvi" />
            </node>
          </node>
          <node concept="3J1_TO" id="dqwjwHwLIc" role="3cqZAp">
            <node concept="3clFbS" id="dqwjwHwLId" role="1zxBo7">
              <node concept="3clFbF" id="dqwjwHwLIe" role="3cqZAp">
                <node concept="2YIFZM" id="dqwjwHwLIf" role="3clFbG">
                  <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
                  <ref role="37wK5l" to="wyt6:~Long.parseLong(java.lang.String)" resolve="parseLong" />
                  <node concept="1Wqviy" id="1aNy2iLFDAY" role="37wK5m" />
                </node>
              </node>
              <node concept="3cpWs6" id="dqwjwHwLIj" role="3cqZAp">
                <node concept="3clFbT" id="dqwjwHwLIk" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3uVAMA" id="dqwjwHwLIl" role="1zxBo5">
              <node concept="XOnhg" id="dqwjwHwLIm" role="1zc67B">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="e" />
                <node concept="nSUau" id="xvs04dG4Mv" role="1tU5fm">
                  <node concept="3uibUv" id="dqwjwHwLIn" role="nSUat">
                    <ref role="3uigEE" to="wyt6:~NumberFormatException" resolve="NumberFormatException" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="dqwjwHwLIo" role="1zc67A">
                <node concept="3cpWs6" id="dqwjwHwLIp" role="3cqZAp">
                  <node concept="3clFbT" id="dqwjwHwLIq" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="b33kNY4Nug">
    <ref role="1M2myG" to="tpce:fKAxPRU" resolve="DataTypeDeclaration" />
    <node concept="EnEH3" id="6Kv_6E71mHq" role="1MhHOB">
      <ref role="EomxK" to="tpce:6Kv_6E714g3" resolve="datatypeId" />
      <node concept="QB0g5" id="6Kv_6E71mHr" role="QCWH9">
        <node concept="3clFbS" id="6Kv_6E71mHs" role="2VODD2">
          <node concept="3clFbJ" id="6Kv_6E71mHt" role="3cqZAp">
            <node concept="3clFbS" id="6Kv_6E71mHu" role="3clFbx">
              <node concept="3cpWs6" id="6Kv_6E71mHv" role="3cqZAp">
                <node concept="3clFbT" id="6Kv_6E71mHw" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6Kv_6E71mHx" role="3clFbw">
              <node concept="1Wqviy" id="6Kv_6E71mHy" role="2Oq$k0" />
              <node concept="17RlXB" id="6Kv_6E71mHz" role="2OqNvi" />
            </node>
          </node>
          <node concept="3J1_TO" id="6Kv_6E71mH$" role="3cqZAp">
            <node concept="3clFbS" id="6Kv_6E71mH_" role="1zxBo7">
              <node concept="3clFbF" id="6Kv_6E71mHA" role="3cqZAp">
                <node concept="2YIFZM" id="6Kv_6E71mHB" role="3clFbG">
                  <ref role="37wK5l" to="wyt6:~Long.parseLong(java.lang.String)" resolve="parseLong" />
                  <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
                  <node concept="1Wqviy" id="6Kv_6E71mHC" role="37wK5m" />
                </node>
              </node>
              <node concept="3cpWs6" id="6Kv_6E71mHD" role="3cqZAp">
                <node concept="3clFbT" id="6Kv_6E71mHE" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3uVAMA" id="6Kv_6E71mHF" role="1zxBo5">
              <node concept="XOnhg" id="6Kv_6E71mHG" role="1zc67B">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="e" />
                <node concept="nSUau" id="xvs04dG4Mx" role="1tU5fm">
                  <node concept="3uibUv" id="6Kv_6E71mHH" role="nSUat">
                    <ref role="3uigEE" to="wyt6:~NumberFormatException" resolve="NumberFormatException" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6Kv_6E71mHI" role="1zc67A">
                <node concept="3cpWs6" id="6Kv_6E71mHJ" role="3cqZAp">
                  <node concept="3clFbT" id="6Kv_6E71mHK" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="6Kv_6E73v23" role="1MhHOB">
      <ref role="EomxK" to="tpce:6Kv_6E714g4" resolve="languageId" />
      <node concept="QB0g5" id="6Kv_6E73v24" role="QCWH9">
        <node concept="3clFbS" id="6Kv_6E73v25" role="2VODD2">
          <node concept="3clFbJ" id="6Kv_6E73v26" role="3cqZAp">
            <node concept="3clFbS" id="6Kv_6E73v27" role="3clFbx">
              <node concept="3cpWs6" id="6Kv_6E73v28" role="3cqZAp">
                <node concept="3clFbT" id="6Kv_6E73v29" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6Kv_6E73v2a" role="3clFbw">
              <node concept="1Wqviy" id="6Kv_6E73v2b" role="2Oq$k0" />
              <node concept="17RlXB" id="6Kv_6E73v2c" role="2OqNvi" />
            </node>
          </node>
          <node concept="3J1_TO" id="6Kv_6E73v2d" role="3cqZAp">
            <node concept="3clFbS" id="6Kv_6E73v2e" role="1zxBo7">
              <node concept="3clFbF" id="6Kv_6E73v2f" role="3cqZAp">
                <node concept="2YIFZM" id="6Kv_6E73v2g" role="3clFbG">
                  <ref role="37wK5l" to="33ny:~UUID.fromString(java.lang.String)" resolve="fromString" />
                  <ref role="1Pybhc" to="33ny:~UUID" resolve="UUID" />
                  <node concept="1Wqviy" id="6Kv_6E73v2h" role="37wK5m" />
                </node>
              </node>
              <node concept="3cpWs6" id="6Kv_6E73v2i" role="3cqZAp">
                <node concept="3clFbT" id="6Kv_6E73v2j" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3uVAMA" id="6Kv_6E73v2k" role="1zxBo5">
              <node concept="XOnhg" id="6Kv_6E73v2l" role="1zc67B">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="e" />
                <node concept="nSUau" id="xvs04dG4Mz" role="1tU5fm">
                  <node concept="3uibUv" id="6Kv_6E73v2m" role="nSUat">
                    <ref role="3uigEE" to="wyt6:~NumberFormatException" resolve="NumberFormatException" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6Kv_6E73v2n" role="1zc67A">
                <node concept="3cpWs6" id="6Kv_6E73v2o" role="3cqZAp">
                  <node concept="3clFbT" id="6Kv_6E73v2p" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3EP7_v" id="b33kNY4NCE" role="1MtirG">
      <node concept="3dgokm" id="5Vvmn_QkT5A" role="3EP$qY">
        <node concept="3clFbS" id="5Vvmn_QkT5B" role="2VODD2">
          <node concept="3clFbF" id="5Vvmn_QkT5C" role="3cqZAp">
            <node concept="2YIFZM" id="5Vvmn_QkT5D" role="3clFbG">
              <ref role="1Pybhc" node="6dmIS6MscR9" resolve="Scopes" />
              <ref role="37wK5l" node="50vK5YapkBB" resolve="forConcepts" />
              <node concept="2rP1CM" id="5Vvmn_QkT5E" role="37wK5m" />
              <node concept="35c_gC" id="5Vvmn_QkT5F" role="37wK5m">
                <ref role="35c_gD" to="tpce:fKAxPRU" resolve="DataTypeDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6dmIS6MscR9">
    <property role="TrG5h" value="Scopes" />
    <node concept="2YIFZL" id="6dmIS6Msokd" role="jymVt">
      <property role="TrG5h" value="forConceptsInSameLanguage" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3uibUv" id="50vK5Yapkjq" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="37vLTG" id="6dmIS6Msp7c" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="6dmIS6Msp7d" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6dmIS6Mspb8" role="3clF46">
        <property role="TrG5h" value="metaConcept" />
        <node concept="3bZ5Sz" id="6dmIS6Mspfa" role="1tU5fm">
          <ref role="3bZ5Sy" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
        </node>
      </node>
      <node concept="3clFbS" id="6dmIS6Msokg" role="3clF47">
        <node concept="3cpWs8" id="1sHxFwerS_Q" role="3cqZAp">
          <node concept="3cpWsn" id="1sHxFwerS_R" role="3cpWs9">
            <property role="TrG5h" value="language" />
            <node concept="0kSF2" id="1sHxFwerS_S" role="33vP2m">
              <node concept="3uibUv" id="1sHxFwerS_T" role="0kSFW">
                <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
              </node>
              <node concept="2OqwBi" id="1sHxFwerS_U" role="0kSFX">
                <node concept="liA8E" id="1sHxFwerS_V" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                </node>
                <node concept="2JrnkZ" id="1sHxFwerS_W" role="2Oq$k0">
                  <node concept="37vLTw" id="1sHxFwerS_X" role="2JrQYb">
                    <ref role="3cqZAo" node="6dmIS6Msp7c" resolve="model" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="1sHxFwerS_Y" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1sHxFwerTbT" role="3cqZAp">
          <node concept="3clFbC" id="1sHxFwerTbU" role="3clFbw">
            <node concept="10Nm6u" id="1sHxFwerTbV" role="3uHU7w" />
            <node concept="37vLTw" id="1sHxFwerTbW" role="3uHU7B">
              <ref role="3cqZAo" node="1sHxFwerS_R" resolve="language" />
            </node>
          </node>
          <node concept="3clFbS" id="1sHxFwerTbX" role="3clFbx">
            <node concept="3cpWs6" id="1sHxFwerTbY" role="3cqZAp">
              <node concept="2ShNRf" id="1sHxFwerTxF" role="3cqZAk">
                <node concept="1pGfFk" id="1sHxFwerTTu" role="2ShVmc">
                  <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6yYldE4i7e_" role="3cqZAp">
          <node concept="1rXfSq" id="6yYldE4i9jv" role="3cqZAk">
            <ref role="37wK5l" node="1sHxFwerZUW" resolve="structureRootsScope" />
            <node concept="2ShNRf" id="6yYldE4i9jw" role="37wK5m">
              <node concept="2HTt$P" id="6yYldE4i9jx" role="2ShVmc">
                <node concept="3uibUv" id="6yYldE4i9jy" role="2HTBi0">
                  <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                </node>
                <node concept="37vLTw" id="6yYldE4i9jz" role="2HTEbv">
                  <ref role="3cqZAo" node="1sHxFwerS_R" resolve="language" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6yYldE4i9j$" role="37wK5m">
              <ref role="3cqZAo" node="6dmIS6Mspb8" resolve="metaConcept" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6dmIS6Msoby" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="50vK5YapkBB" role="jymVt">
      <property role="TrG5h" value="forConcepts" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="50vK5Yapl0Z" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="50vK5Yapl10" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="50vK5Yapl1k" role="3clF46">
        <property role="TrG5h" value="metaConcept" />
        <node concept="3bZ5Sz" id="50vK5Yapl1J" role="1tU5fm">
          <ref role="3bZ5Sy" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
        </node>
      </node>
      <node concept="3clFbS" id="50vK5YapkBE" role="3clF47">
        <node concept="3cpWs6" id="1sVIztzHLxY" role="3cqZAp">
          <node concept="1rXfSq" id="1sVIztzHMIa" role="3cqZAk">
            <ref role="37wK5l" node="5D5SMhczOUQ" resolve="forConcepts" />
            <node concept="2OqwBi" id="1sVIztzHJnA" role="37wK5m">
              <node concept="37vLTw" id="1sVIztzHJnB" role="2Oq$k0">
                <ref role="3cqZAo" node="50vK5Yapl0Z" resolve="contextNode" />
              </node>
              <node concept="I4A8Y" id="1sVIztzHJnC" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="1sVIztzHO_x" role="37wK5m">
              <ref role="3cqZAo" node="50vK5Yapl1k" resolve="metaConcept" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="50vK5Yapk_q" role="1B3o_S" />
      <node concept="3uibUv" id="50vK5YapkBj" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
    </node>
    <node concept="2YIFZL" id="5D5SMhczOUQ" role="jymVt">
      <property role="TrG5h" value="forConcepts" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="5D5SMhczOUR" role="3clF46">
        <property role="TrG5h" value="contextModel" />
        <node concept="H_c77" id="5D5SMhczQMY" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5D5SMhczOUT" role="3clF46">
        <property role="TrG5h" value="metaConcept" />
        <node concept="3bZ5Sz" id="5D5SMhczOUU" role="1tU5fm">
          <ref role="3bZ5Sy" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
        </node>
      </node>
      <node concept="3clFbS" id="5D5SMhczOUV" role="3clF47">
        <node concept="3clFbJ" id="1sVIztzHPSk" role="3cqZAp">
          <node concept="3clFbS" id="1sVIztzHPSl" role="3clFbx">
            <node concept="3cpWs6" id="1sVIztzHPSm" role="3cqZAp">
              <node concept="2ShNRf" id="1sVIztzHPSn" role="3cqZAk">
                <node concept="1pGfFk" id="1sVIztzHPSo" role="2ShVmc">
                  <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1sVIztzHPSp" role="3clFbw">
            <node concept="10Nm6u" id="1sVIztzHPSq" role="3uHU7w" />
            <node concept="37vLTw" id="1sVIztzHPSr" role="3uHU7B">
              <ref role="3cqZAo" node="5D5SMhczOUR" resolve="contextModel" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5D5SMhczT7j" role="3cqZAp">
          <node concept="3cpWsn" id="5D5SMhczT7k" role="3cpWs9">
            <property role="TrG5h" value="contextModule" />
            <node concept="2OqwBi" id="5D5SMhczT7l" role="33vP2m">
              <node concept="2JrnkZ" id="5D5SMhczUj0" role="2Oq$k0">
                <node concept="37vLTw" id="5D5SMhczTwb" role="2JrQYb">
                  <ref role="3cqZAo" node="5D5SMhczOUR" resolve="contextModel" />
                </node>
              </node>
              <node concept="liA8E" id="5D5SMhczT7n" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
              </node>
            </node>
            <node concept="3uibUv" id="5D5SMhczT7o" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5D5SMhczVmM" role="3cqZAp">
          <node concept="3clFbS" id="5D5SMhczVmO" role="3clFbx">
            <node concept="3cpWs6" id="5D5SMhczXBp" role="3cqZAp">
              <node concept="2ShNRf" id="5D5SMhczY_i" role="3cqZAk">
                <node concept="1pGfFk" id="5D5SMhc$2hr" role="2ShVmc">
                  <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5D5SMhczWJx" role="3clFbw">
            <node concept="10Nm6u" id="5D5SMhczXi0" role="3uHU7w" />
            <node concept="37vLTw" id="5D5SMhczW78" role="3uHU7B">
              <ref role="3cqZAo" node="5D5SMhczT7k" resolve="contextModule" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5D5SMhczT7q" role="3cqZAp">
          <node concept="3cpWsn" id="5D5SMhczT7r" role="3cpWs9">
            <property role="TrG5h" value="visibleModules" />
            <node concept="A3Dl8" id="5D5SMhczT7s" role="1tU5fm">
              <node concept="3uibUv" id="5D5SMhczT7t" role="A3Ik2">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
            <node concept="2OqwBi" id="5D5SMhczT7u" role="33vP2m">
              <node concept="2ShNRf" id="5D5SMhczT7v" role="2Oq$k0">
                <node concept="1pGfFk" id="5D5SMhczT7w" role="2ShVmc">
                  <ref role="37wK5l" to="35tq:~VisibleDepsSearchScope.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository,org.jetbrains.mps.openapi.module.SModule)" resolve="VisibleDepsSearchScope" />
                  <node concept="2OqwBi" id="5D5SMhczT7x" role="37wK5m">
                    <node concept="37vLTw" id="5D5SMhczT7y" role="2Oq$k0">
                      <ref role="3cqZAo" node="5D5SMhczT7k" resolve="contextModule" />
                    </node>
                    <node concept="liA8E" id="5D5SMhczT7z" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SModule.getRepository()" resolve="getRepository" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="5D5SMhczT7$" role="37wK5m">
                    <ref role="3cqZAo" node="5D5SMhczT7k" resolve="contextModule" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5D5SMhczT7_" role="2OqNvi">
                <ref role="37wK5l" to="35tq:~VisibleDepsSearchScope.getModules()" resolve="getModules" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5D5SMhczSxs" role="3cqZAp" />
        <node concept="3cpWs6" id="6yYldE4ia_b" role="3cqZAp">
          <node concept="1rXfSq" id="6yYldE4ibGr" role="3cqZAk">
            <ref role="37wK5l" node="1sHxFwerZUW" resolve="structureRootsScope" />
            <node concept="2OqwBi" id="6yYldE4ibGs" role="37wK5m">
              <node concept="37vLTw" id="6yYldE4ibGt" role="2Oq$k0">
                <ref role="3cqZAo" node="5D5SMhczT7r" resolve="visibleModules" />
              </node>
              <node concept="UnYns" id="6yYldE4ibGu" role="2OqNvi">
                <node concept="3uibUv" id="6yYldE4ibGv" role="UnYnz">
                  <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6yYldE4ibGw" role="37wK5m">
              <ref role="3cqZAo" node="5D5SMhczOUT" resolve="metaConcept" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5D5SMhczOV2" role="1B3o_S" />
      <node concept="3uibUv" id="5D5SMhczOV3" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
    </node>
    <node concept="2tJIrI" id="1sVIztzIjc9" role="jymVt" />
    <node concept="2YIFZL" id="50vK5Yas08Z" role="jymVt">
      <property role="TrG5h" value="forLanguageConcepts" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="50vK5Yas092" role="3clF47">
        <node concept="3cpWs6" id="1sVIztzIm5K" role="3cqZAp">
          <node concept="1rXfSq" id="1sVIztzImDF" role="3cqZAk">
            <ref role="37wK5l" node="50vK5YapkBB" resolve="forConcepts" />
            <node concept="37vLTw" id="1sVIztzIn1n" role="37wK5m">
              <ref role="3cqZAo" node="50vK5Yas0Ci" resolve="contextNode" />
            </node>
            <node concept="37vLTw" id="1sVIztzInFJ" role="37wK5m">
              <ref role="3cqZAo" node="50vK5Yas0P9" resolve="metaConcept" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="50vK5Yas05N" role="1B3o_S" />
      <node concept="3uibUv" id="50vK5Yas08G" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="37vLTG" id="50vK5Yas0Ci" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="5SJcws9kRlD" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="50vK5Yas0P9" role="3clF46">
        <property role="TrG5h" value="metaConcept" />
        <node concept="3bZ5Sz" id="50vK5Yas0Pa" role="1tU5fm">
          <ref role="3bZ5Sy" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
        </node>
      </node>
      <node concept="P$JXv" id="1sVIztzIkoN" role="lGtFl">
        <node concept="TZ5HI" id="1sVIztzIkoO" role="3nqlJM">
          <node concept="1PaTwC" id="1E1X3WHswvO" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHswvP" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="1Vtdud" id="1E1X3WHswvQ" role="1PaTwD">
              <node concept="1VuXuv" id="1E1X3WHswvR" role="1Vtduc">
                <node concept="VXe0Z" id="1sVIztzIlit" role="1VuXuu">
                  <ref role="VXe0S" node="50vK5YapkBB" resolve="forConcepts" />
                </node>
                <node concept="1PaTwC" id="1E1X3WHswvU" role="2JaDBN">
                  <node concept="3oM_SD" id="1E1X3WHswvV" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3oM_SD" id="1E1X3WHswvW" role="1PaTwD">
              <property role="3oM_SC" value="instead" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1sVIztzIkoQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
        <node concept="2B6LJw" id="32ywuM39pan" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~Deprecated.forRemoval()" resolve="forRemoval" />
          <node concept="3clFbT" id="32ywuM39pk5" role="2B70Vg">
            <property role="3clFbU" value="true" />
          </node>
        </node>
        <node concept="2B6LJw" id="32ywuM39pks" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~Deprecated.since()" resolve="since" />
          <node concept="Xl_RD" id="32ywuM39pAy" role="2B70Vg">
            <property role="Xl_RC" value="2023.2" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="3ztslReAezG" role="jymVt">
      <property role="TrG5h" value="forSubconcepts" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3ztslReAezH" role="3clF47">
        <node concept="3clFbJ" id="3ztslReAezI" role="3cqZAp">
          <node concept="3clFbC" id="3ztslReAezJ" role="3clFbw">
            <node concept="37vLTw" id="3ztslReAezK" role="3uHU7B">
              <ref role="3cqZAo" node="3ztslReAe$m" resolve="conceptNode" />
            </node>
            <node concept="10Nm6u" id="3ztslReAezL" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="3ztslReAezM" role="3clFbx">
            <node concept="3cpWs6" id="3ztslReAezN" role="3cqZAp">
              <node concept="2ShNRf" id="3ztslReAezO" role="3cqZAk">
                <node concept="1pGfFk" id="3ztslReAezP" role="2ShVmc">
                  <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3ztslReAezQ" role="3cqZAp" />
        <node concept="3cpWs6" id="3ztslReAezR" role="3cqZAp">
          <node concept="2ShNRf" id="3ztslReAezS" role="3cqZAk">
            <node concept="YeOm9" id="3ztslReAezT" role="2ShVmc">
              <node concept="1Y3b0j" id="3ztslReAezU" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="o8zo:3rV3sBXetA0" resolve="FilteringScope" />
                <ref role="37wK5l" to="o8zo:3rV3sBXetA2" resolve="FilteringScope" />
                <node concept="1rXfSq" id="3ztslReAezV" role="37wK5m">
                  <ref role="37wK5l" node="50vK5YapkBB" resolve="forConcepts" />
                  <node concept="37vLTw" id="3ztslReAezW" role="37wK5m">
                    <ref role="3cqZAo" node="3ztslReAe$o" resolve="contextNode" />
                  </node>
                  <node concept="35c_gC" id="3ztslReAezX" role="37wK5m">
                    <ref role="35c_gD" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                  </node>
                </node>
                <node concept="3Tm1VV" id="3ztslReAezY" role="1B3o_S" />
                <node concept="3clFb_" id="3ztslReAezZ" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="isExcluded" />
                  <node concept="2AHcQZ" id="3ztslReAe$0" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                  <node concept="3Tm1VV" id="3ztslReAe$1" role="1B3o_S" />
                  <node concept="37vLTG" id="3ztslReAe$2" role="3clF46">
                    <property role="TrG5h" value="node" />
                    <node concept="3Tqbb2" id="3ztslReAe$3" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="3ztslReAe$4" role="3clF47">
                    <node concept="3clFbF" id="3ztslReAiqj" role="3cqZAp">
                      <node concept="3fqX7Q" id="3ztslReAiIz" role="3clFbG">
                        <node concept="2OqwBi" id="3ztslReB7QP" role="3fr31v">
                          <node concept="1PxgMI" id="3ztslReB7$O" role="2Oq$k0">
                            <node concept="chp4Y" id="3ztslReB7CJ" role="3oSUPX">
                              <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            </node>
                            <node concept="37vLTw" id="3ztslReAiIC" role="1m5AlR">
                              <ref role="3cqZAo" node="3ztslReAe$2" resolve="node" />
                            </node>
                          </node>
                          <node concept="3zqWPK" id="70OdufORfyz" role="2OqNvi">
                            <ref role="37wK5l" to="tpcn:73yVtVlWOga" resolve="isSubconceptOf" />
                            <node concept="37vLTw" id="70OdufORfy_" role="37wK5m">
                              <ref role="3cqZAo" node="3ztslReAe$m" resolve="conceptNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="10P_77" id="3ztslReAe$j" role="3clF45" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3ztslReAe$k" role="1B3o_S" />
      <node concept="3uibUv" id="3ztslReAe$l" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="37vLTG" id="3ztslReAe$o" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="3ztslReAe$p" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3ztslReAe$m" role="3clF46">
        <property role="TrG5h" value="conceptNode" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="3ztslReAe$n" role="1tU5fm">
          <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="50vK5YaqvY9" role="jymVt">
      <property role="TrG5h" value="forConceptDeclarationExtends" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="1NJXWPlYyRy" role="3clF47">
        <node concept="3cpWs6" id="1NJXWPlYyRz" role="3cqZAp">
          <node concept="1rXfSq" id="1NJXWPlYyR$" role="3cqZAk">
            <ref role="37wK5l" node="1NJXWPlYxFC" resolve="forNonSubconcepts" />
            <node concept="37vLTw" id="1NJXWPlYyR_" role="37wK5m">
              <ref role="3cqZAo" node="50vK5Yaqw3$" resolve="conceptNode" />
            </node>
            <node concept="37vLTw" id="1NJXWPlYyRA" role="37wK5m">
              <ref role="3cqZAo" node="50vK5Yaqw7C" resolve="contextNode" />
            </node>
            <node concept="35c_gC" id="1NJXWPlYyRB" role="37wK5m">
              <ref role="35c_gD" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="50vK5YaqvXg" role="1B3o_S" />
      <node concept="3uibUv" id="50vK5YaqvY7" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="37vLTG" id="50vK5Yaqw3$" role="3clF46">
        <property role="TrG5h" value="conceptNode" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="50vK5YarJ9L" role="1tU5fm">
          <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="50vK5Yaqw7C" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="50vK5Yaqw7M" role="1tU5fm" />
      </node>
    </node>
    <node concept="2YIFZL" id="6AHMUXrggKd" role="jymVt">
      <property role="TrG5h" value="forInterfaceConceptReferenceIntfc" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="2Lvdk3" value="forInterfaceConceptReferenceIntfc" />
      <node concept="3clFbS" id="1NJXWPlYz2F" role="3clF47">
        <node concept="3cpWs6" id="1NJXWPlYz2G" role="3cqZAp">
          <node concept="1rXfSq" id="1NJXWPlYz2H" role="3cqZAk">
            <ref role="37wK5l" node="1NJXWPlYxFC" resolve="forNonSubconcepts" />
            <node concept="37vLTw" id="1NJXWPlYz2I" role="37wK5m">
              <ref role="3cqZAo" node="6AHMUXrggKK" resolve="conceptNode" />
            </node>
            <node concept="37vLTw" id="1NJXWPlYz2J" role="37wK5m">
              <ref role="3cqZAo" node="6AHMUXrggKM" resolve="contextNode" />
            </node>
            <node concept="35c_gC" id="1NJXWPlYz2K" role="37wK5m">
              <ref role="35c_gD" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6AHMUXrggKI" role="1B3o_S" />
      <node concept="3uibUv" id="6AHMUXrggKJ" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="37vLTG" id="6AHMUXrggKK" role="3clF46">
        <property role="TrG5h" value="conceptNode" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="6AHMUXrggKL" role="1tU5fm">
          <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="6AHMUXrggKM" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="6AHMUXrggKN" role="1tU5fm" />
      </node>
    </node>
    <node concept="2YIFZL" id="1NJXWPlYxFC" role="jymVt">
      <property role="TrG5h" value="forNonSubconcepts" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="2Lvdk3" value="forNonSubconcepts" />
      <node concept="3clFbS" id="1NJXWPlYxFD" role="3clF47">
        <node concept="3clFbJ" id="1NJXWPlYxFE" role="3cqZAp">
          <node concept="3clFbC" id="1NJXWPlYxFF" role="3clFbw">
            <node concept="37vLTw" id="1NJXWPlYxFG" role="3uHU7B">
              <ref role="3cqZAo" node="1NJXWPlYxGb" resolve="conceptNode" />
            </node>
            <node concept="10Nm6u" id="1NJXWPlYxFH" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="1NJXWPlYxFI" role="3clFbx">
            <node concept="3cpWs6" id="1NJXWPlYxFJ" role="3cqZAp">
              <node concept="2ShNRf" id="1NJXWPlYxFK" role="3cqZAk">
                <node concept="1pGfFk" id="1NJXWPlYxFL" role="2ShVmc">
                  <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1NJXWPlYxFM" role="3cqZAp" />
        <node concept="3cpWs6" id="1NJXWPlYxFN" role="3cqZAp">
          <node concept="2ShNRf" id="1NJXWPlYxFO" role="3cqZAk">
            <node concept="YeOm9" id="1NJXWPlYxFP" role="2ShVmc">
              <node concept="1Y3b0j" id="1NJXWPlYxFQ" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="o8zo:3rV3sBXetA0" resolve="FilteringScope" />
                <ref role="37wK5l" to="o8zo:3rV3sBXetA2" resolve="FilteringScope" />
                <node concept="1rXfSq" id="1NJXWPlYxFR" role="37wK5m">
                  <ref role="37wK5l" node="50vK5YapkBB" resolve="forConcepts" />
                  <node concept="37vLTw" id="1NJXWPlYxFS" role="37wK5m">
                    <ref role="3cqZAo" node="1NJXWPlYxGd" resolve="contextNode" />
                  </node>
                  <node concept="37vLTw" id="1NJXWPlYyvl" role="37wK5m">
                    <ref role="3cqZAo" node="1NJXWPlYynk" resolve="metaConcept" />
                  </node>
                </node>
                <node concept="3Tm1VV" id="1NJXWPlYxFU" role="1B3o_S" />
                <node concept="3clFb_" id="1NJXWPlYxFV" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="isExcluded" />
                  <node concept="2AHcQZ" id="1NJXWPlYxFW" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                  <node concept="3Tm1VV" id="1NJXWPlYxFX" role="1B3o_S" />
                  <node concept="37vLTG" id="1NJXWPlYxFY" role="3clF46">
                    <property role="TrG5h" value="node" />
                    <node concept="3Tqbb2" id="1NJXWPlYxFZ" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="1NJXWPlYxG0" role="3clF47">
                    <node concept="3clFbF" id="1NJXWPlYxG1" role="3cqZAp">
                      <node concept="2OqwBi" id="1NJXWPlYxG2" role="3clFbG">
                        <node concept="1PxgMI" id="1NJXWPlYxG3" role="2Oq$k0">
                          <node concept="37vLTw" id="1NJXWPlYxG4" role="1m5AlR">
                            <ref role="3cqZAo" node="1NJXWPlYxFY" resolve="node" />
                          </node>
                          <node concept="chp4Y" id="1NJXWPlYxG5" role="3oSUPX">
                            <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                          </node>
                        </node>
                        <node concept="3zqWPK" id="1NJXWPlYxG6" role="2OqNvi">
                          <ref role="37wK5l" to="tpcn:73yVtVlWOga" resolve="isSubconceptOf" />
                          <node concept="37vLTw" id="1NJXWPlYxG7" role="37wK5m">
                            <ref role="3cqZAo" node="1NJXWPlYxGb" resolve="conceptNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="10P_77" id="1NJXWPlYxG8" role="3clF45" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1NJXWPlYxGa" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="37vLTG" id="1NJXWPlYxGb" role="3clF46">
        <property role="TrG5h" value="conceptNode" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="1NJXWPlYxGc" role="1tU5fm">
          <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="1NJXWPlYxGd" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="1NJXWPlYxGe" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1NJXWPlYynk" role="3clF46">
        <property role="TrG5h" value="metaConcept" />
        <node concept="3bZ5Sz" id="1NJXWPlYynm" role="1tU5fm">
          <ref role="3bZ5Sy" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1sHxFwerKCa" role="jymVt" />
    <node concept="2YIFZL" id="1sHxFwerZUW" role="jymVt">
      <property role="TrG5h" value="structureRootsScope" />
      <node concept="3clFbS" id="1sHxFwer$Qe" role="3clF47">
        <node concept="3cpWs6" id="1sHxFwerDqw" role="3cqZAp">
          <node concept="2ShNRf" id="1sHxFwerDrX" role="3cqZAk">
            <node concept="1pGfFk" id="1sHxFwerDSM" role="2ShVmc">
              <ref role="37wK5l" to="o8zo:4k9eBec$Bew" resolve="ModelsScope" />
              <node concept="2OqwBi" id="1sHxFwerC_d" role="37wK5m">
                <node concept="2OqwBi" id="1sHxFwerBaI" role="2Oq$k0">
                  <node concept="37vLTw" id="1sHxFwerAOV" role="2Oq$k0">
                    <ref role="3cqZAo" node="1sHxFwerA77" resolve="languages" />
                  </node>
                  <node concept="3$u5V9" id="1sHxFwerB_b" role="2OqNvi">
                    <node concept="1bVj0M" id="1sHxFwerB_d" role="23t8la">
                      <node concept="3clFbS" id="1sHxFwerB_e" role="1bW5cS">
                        <node concept="3clFbF" id="1sHxFwerBMv" role="3cqZAp">
                          <node concept="1qvjxa" id="1sHxFwerBMt" role="3clFbG">
                            <ref role="1quiSB" to="tpcc:2LiUEk8oQ$g" resolve="structure" />
                            <node concept="37vLTw" id="1sHxFwerBYm" role="1qvjxb">
                              <ref role="3cqZAo" node="5W7E4fV0WtZ" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0WtZ" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0Wu0" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1KnU$U" id="1sHxFwerD4F" role="2OqNvi" />
              </node>
              <node concept="3clFbT" id="1sHxFwerEqi" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="37vLTw" id="1sHxFwerF4P" role="37wK5m">
                <ref role="3cqZAo" node="1sHxFwerAvj" resolve="metaConcept" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1sHxFwerA77" role="3clF46">
        <property role="TrG5h" value="languages" />
        <node concept="A3Dl8" id="1sHxFwerA75" role="1tU5fm">
          <node concept="3uibUv" id="1sHxFwerAcW" role="A3Ik2">
            <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1sHxFwerAvj" role="3clF46">
        <property role="TrG5h" value="metaConcept" />
        <node concept="3bZ5Sz" id="1sHxFwerAvk" role="1tU5fm">
          <ref role="3bZ5Sy" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
        </node>
      </node>
      <node concept="3uibUv" id="1sHxFwer_EM" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="P$JXv" id="1sHxFwerFqs" role="lGtFl">
        <node concept="x79VA" id="1sHxFwerFq_" role="3nqlJM">
          <property role="x79VB" value="" />
          <node concept="1PaTwC" id="1E1X3WHswvX" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHswvY" role="1PaTwD">
              <property role="3oM_SC" value="Scope" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHswvZ" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsww0" role="1PaTwD">
              <property role="3oM_SC" value="covers" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsww1" role="1PaTwD">
              <property role="3oM_SC" value="definite" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsww2" role="1PaTwD">
              <property role="3oM_SC" value="roots" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsww3" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsww4" role="1PaTwD">
              <property role="3oM_SC" value="structure" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsww5" role="1PaTwD">
              <property role="3oM_SC" value="aspect" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="6dmIS6MscUi" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="50vK5YapiiF">
    <property role="TrG5h" value="FullyQualifiedNamedElementsScope" />
    <node concept="3clFbW" id="50vK5YapiA6" role="jymVt">
      <node concept="3cqZAl" id="50vK5YapiA7" role="3clF45" />
      <node concept="3Tm1VV" id="50vK5YapiA8" role="1B3o_S" />
      <node concept="37vLTG" id="50vK5YapiA_" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="A3Dl8" id="50vK5YapiAA" role="1tU5fm">
          <node concept="3Tqbb2" id="50vK5YapiAB" role="A3Ik2">
            <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="50vK5YapiAC" role="3clF47">
        <node concept="XkiVB" id="50vK5YapiAE" role="3cqZAp">
          <ref role="37wK5l" to="6xgk:2DmG$ciAhAo" resolve="SimpleScope" />
          <node concept="37vLTw" id="50vK5YapiAD" role="37wK5m">
            <ref role="3cqZAo" node="50vK5YapiA_" resolve="nodes" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="50vK5YapiAF" role="jymVt">
      <node concept="3cqZAl" id="50vK5YapiAG" role="3clF45" />
      <node concept="3Tm1VV" id="50vK5YapiAH" role="1B3o_S" />
      <node concept="37vLTG" id="50vK5YapiAZ" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="50vK5YapiB0" role="1tU5fm">
          <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
        </node>
      </node>
      <node concept="3clFbS" id="50vK5YapiB1" role="3clF47">
        <node concept="XkiVB" id="50vK5YapiB3" role="3cqZAp">
          <ref role="37wK5l" to="6xgk:2DmG$ciAhAT" resolve="SimpleScope" />
          <node concept="37vLTw" id="50vK5YapiB2" role="37wK5m">
            <ref role="3cqZAo" node="50vK5YapiAZ" resolve="node" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="50vK5YapiFg" role="jymVt" />
    <node concept="3clFb_" id="50vK5Yapiul" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getReferenceText" />
      <node concept="3Tm1VV" id="50vK5Yapium" role="1B3o_S" />
      <node concept="37vLTG" id="50vK5Yapiun" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="50vK5Yapiuo" role="1tU5fm" />
        <node concept="2AHcQZ" id="50vK5Yapiup" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="17QB3L" id="50vK5Yapiuq" role="3clF45" />
      <node concept="2AHcQZ" id="50vK5Yapiur" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="50vK5Yapius" role="3clF47">
        <node concept="3SKdUt" id="6yYldE4i3XC" role="3cqZAp">
          <node concept="1PaTwC" id="6yYldE4i3XD" role="1aUNEU">
            <node concept="3oM_SD" id="6yYldE4i43y" role="1PaTwD">
              <property role="3oM_SC" value="FWIW," />
            </node>
            <node concept="3oM_SD" id="6yYldE4i4CU" role="1PaTwD">
              <property role="3oM_SC" value="SimpleScope.resolve()" />
            </node>
            <node concept="3oM_SD" id="6yYldE4i44r" role="1PaTwD">
              <property role="3oM_SC" value="uses" />
            </node>
            <node concept="3oM_SD" id="6yYldE4i44w" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6yYldE4i45t" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="6yYldE4i45A" role="1PaTwD">
              <property role="3oM_SC" value="method" />
            </node>
            <node concept="3oM_SD" id="6yYldE4i46B" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="6yYldE4i4kO" role="1PaTwD">
              <property role="3oM_SC" value="convert" />
            </node>
            <node concept="3oM_SD" id="6yYldE4i4um" role="1PaTwD">
              <property role="3oM_SC" value="text" />
            </node>
            <node concept="3oM_SD" id="6yYldE4i4$y" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="6yYldE4i4$P" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
            <node concept="3oM_SD" id="6yYldE4i4AQ" role="1PaTwD">
              <property role="3oM_SC" value="back" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="50vK5Yapiut" role="3cqZAp">
          <node concept="2OqwBi" id="50vK5Yapiuu" role="3clFbG">
            <node concept="3zqWPK" id="70OdufORfyD" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:hEwIO9y" resolve="getFqName" />
            </node>
            <node concept="1PxgMI" id="50vK5Yapiuw" role="2Oq$k0">
              <node concept="37vLTw" id="50vK5Yapiux" role="1m5AlR">
                <ref role="3cqZAo" node="50vK5Yapiun" resolve="target" />
              </node>
              <node concept="chp4Y" id="714IaVdH1yv" role="3oSUPX">
                <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="50vK5Yapiuy" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="50vK5YapiiG" role="1B3o_S" />
    <node concept="3uibUv" id="50vK5YapisI" role="1zkMxy">
      <ref role="3uigEE" to="6xgk:2DmG$ciAhAi" resolve="SimpleScope" />
    </node>
    <node concept="3UR2Jj" id="50vK5YarWJT" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHswuY" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHswuZ" role="1PaTwD">
          <property role="3oM_SC" value="A" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswv0" role="1PaTwD">
          <property role="3oM_SC" value="simple" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswv1" role="1PaTwD">
          <property role="3oM_SC" value="scope" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswv2" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswv3" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswv4" role="1PaTwD">
          <property role="3oM_SC" value="sequence" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswv5" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswv6" role="1PaTwD">
          <property role="3oM_SC" value="concepts" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswv7" role="1PaTwD">
          <property role="3oM_SC" value="which" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswv8" role="1PaTwD">
          <property role="3oM_SC" value="uses" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswv9" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswva" role="1PaTwD">
          <property role="3oM_SC" value="concept's" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvb" role="1PaTwD">
          <property role="3oM_SC" value="fully" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvc" role="1PaTwD">
          <property role="3oM_SC" value="qualified" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvd" role="1PaTwD">
          <property role="3oM_SC" value="name" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswve" role="1PaTwD">
          <property role="3oM_SC" value="as" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvf" role="1PaTwD">
          <property role="3oM_SC" value="its" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvg" role="1PaTwD">
          <property role="3oM_SC" value="reference" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvh" role="1PaTwD">
          <property role="3oM_SC" value="text." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHswvi" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHswvj" role="1PaTwD">
          <property role="3oM_SC" value="[artem]" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvk" role="1PaTwD">
          <property role="3oM_SC" value="I" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvl" role="1PaTwD">
          <property role="3oM_SC" value="don't" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvm" role="1PaTwD">
          <property role="3oM_SC" value="quite" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvn" role="1PaTwD">
          <property role="3oM_SC" value="understand" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvo" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvp" role="1PaTwD">
          <property role="3oM_SC" value="benefit" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvq" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvr" role="1PaTwD">
          <property role="3oM_SC" value="this" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvs" role="1PaTwD">
          <property role="3oM_SC" value="scope," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvt" role="1PaTwD">
          <property role="3oM_SC" value="does" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvu" role="1PaTwD">
          <property role="3oM_SC" value="it" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvv" role="1PaTwD">
          <property role="3oM_SC" value="make" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvw" role="1PaTwD">
          <property role="3oM_SC" value="sense" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvx" role="1PaTwD">
          <property role="3oM_SC" value="when" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvy" role="1PaTwD">
          <property role="3oM_SC" value="regular" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvz" role="1PaTwD">
          <property role="3oM_SC" value="refInfo" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswv$" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswv_" role="1PaTwD">
          <property role="3oM_SC" value="not" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvA" role="1PaTwD">
          <property role="3oM_SC" value="enough?" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHswvB" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHswvC" role="1PaTwD">
          <property role="3oM_SC" value="What's" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvD" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvE" role="1PaTwD">
          <property role="3oM_SC" value="process" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvF" role="1PaTwD">
          <property role="3oM_SC" value="preserves" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvG" role="1PaTwD">
          <property role="3oM_SC" value="result" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvH" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvI" role="1PaTwD">
          <property role="3oM_SC" value="getReferenceText()" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvJ" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvK" role="1PaTwD">
          <property role="3oM_SC" value="later" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvL" role="1PaTwD">
          <property role="3oM_SC" value="use" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvM" role="1PaTwD">
          <property role="3oM_SC" value="in" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHswvN" role="1PaTwD">
          <property role="3oM_SC" value="resolve()?" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="50vK5Yaq2E7">
    <property role="TrG5h" value="ConstraintsUtilConcepts" />
    <node concept="2tJIrI" id="1BFxp3HF62E" role="jymVt" />
    <node concept="2YIFZL" id="50vK5YaqpAo" role="jymVt">
      <property role="TrG5h" value="getAvailableLanguageConcepts" />
      <property role="DiZV1" value="false" />
      <node concept="A3Dl8" id="50vK5YaqpAp" role="3clF45">
        <node concept="3Tqbb2" id="50vK5YaqpAq" role="A3Ik2">
          <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
        </node>
      </node>
      <node concept="37vLTG" id="50vK5YaqpAr" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="5SJcws9kRNX" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="50vK5YaqpAt" role="3clF46">
        <property role="TrG5h" value="metaConcept" />
        <node concept="3bZ5Sz" id="50vK5YaqpAu" role="1tU5fm">
          <ref role="3bZ5Sy" to="tpck:h0TrEE$" resolve="INamedConcept" />
        </node>
      </node>
      <node concept="3clFbS" id="50vK5YaqpAv" role="3clF47">
        <node concept="3cpWs8" id="50vK5YaqpAw" role="3cqZAp">
          <node concept="3cpWsn" id="50vK5YaqpAx" role="3cpWs9">
            <property role="TrG5h" value="language" />
            <node concept="0kSF2" id="50vK5YaqpAy" role="33vP2m">
              <node concept="3uibUv" id="50vK5YaqpAz" role="0kSFW">
                <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
              </node>
              <node concept="2OqwBi" id="50vK5YaqpA$" role="0kSFX">
                <node concept="liA8E" id="50vK5YaqpA_" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                </node>
                <node concept="2JrnkZ" id="50vK5YaqpAA" role="2Oq$k0">
                  <node concept="2OqwBi" id="4JZCOBanA7L" role="2JrQYb">
                    <node concept="37vLTw" id="50vK5YaqpAB" role="2Oq$k0">
                      <ref role="3cqZAo" node="50vK5YaqpAr" resolve="contextNode" />
                    </node>
                    <node concept="I4A8Y" id="4JZCOBanAl2" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="50vK5YaqpAC" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="50vK5YaqpAD" role="3cqZAp">
          <node concept="3clFbC" id="50vK5YaqpAE" role="3clFbw">
            <node concept="10Nm6u" id="50vK5YaqpAF" role="3uHU7w" />
            <node concept="37vLTw" id="50vK5YaqpAG" role="3uHU7B">
              <ref role="3cqZAo" node="50vK5YaqpAx" resolve="language" />
            </node>
          </node>
          <node concept="3clFbS" id="50vK5YaqpAH" role="3clFbx">
            <node concept="3cpWs6" id="50vK5YaqpAI" role="3cqZAp">
              <node concept="2YIFZM" id="50vK5YaqpAJ" role="3cqZAk">
                <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="50vK5YaqpAK" role="3cqZAp" />
        <node concept="3cpWs8" id="50vK5YaqpAL" role="3cqZAp">
          <node concept="3cpWsn" id="50vK5YaqpAM" role="3cpWs9">
            <property role="TrG5h" value="languagesToVisit" />
            <node concept="2ThTUU" id="50vK5YaqpAN" role="1tU5fm">
              <node concept="3uibUv" id="50vK5YaqpAO" role="3O5elw">
                <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
              </node>
            </node>
            <node concept="2ShNRf" id="50vK5YaqpAP" role="33vP2m">
              <node concept="2Jqq0_" id="50vK5YaqpAQ" role="2ShVmc">
                <node concept="3uibUv" id="50vK5YaqpAR" role="HW$YZ">
                  <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="50vK5YaqpAS" role="3cqZAp">
          <node concept="3cpWsn" id="50vK5YaqpAT" role="3cpWs9">
            <property role="TrG5h" value="visibleLanguages" />
            <node concept="2ShNRf" id="50vK5YaqpAU" role="33vP2m">
              <node concept="2i4dXS" id="50vK5YaqpAV" role="2ShVmc">
                <node concept="3uibUv" id="50vK5YaqpAW" role="HW$YZ">
                  <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                </node>
              </node>
            </node>
            <node concept="2hMVRd" id="50vK5YaqpAX" role="1tU5fm">
              <node concept="3uibUv" id="50vK5YaqpAY" role="2hN53Y">
                <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="50vK5YaqpAZ" role="3cqZAp">
          <node concept="2OqwBi" id="50vK5YaqpB0" role="3clFbG">
            <node concept="37vLTw" id="50vK5YaqpB1" role="2Oq$k0">
              <ref role="3cqZAo" node="50vK5YaqpAM" resolve="languagesToVisit" />
            </node>
            <node concept="2Ke9KJ" id="50vK5YaqpB2" role="2OqNvi">
              <node concept="37vLTw" id="50vK5YaqpB3" role="25WWJ7">
                <ref role="3cqZAo" node="50vK5YaqpAx" resolve="language" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="50vK5YaqpB4" role="3cqZAp">
          <node concept="2OqwBi" id="50vK5YaqpB5" role="3clFbG">
            <node concept="37vLTw" id="50vK5YaqpB6" role="2Oq$k0">
              <ref role="3cqZAo" node="50vK5YaqpAT" resolve="visibleLanguages" />
            </node>
            <node concept="TSZUe" id="50vK5YaqpB7" role="2OqNvi">
              <node concept="37vLTw" id="50vK5YaqpB8" role="25WWJ7">
                <ref role="3cqZAo" node="50vK5YaqpAx" resolve="language" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="50vK5YaqpB9" role="3cqZAp">
          <node concept="2OqwBi" id="50vK5YaqpBa" role="2$JKZa">
            <node concept="3GX2aA" id="50vK5YaqpBb" role="2OqNvi" />
            <node concept="37vLTw" id="50vK5YaqpBc" role="2Oq$k0">
              <ref role="3cqZAo" node="50vK5YaqpAM" resolve="languagesToVisit" />
            </node>
          </node>
          <node concept="3clFbS" id="50vK5YaqpBd" role="2LFqv$">
            <node concept="3cpWs8" id="50vK5YaqpBe" role="3cqZAp">
              <node concept="3cpWsn" id="50vK5YaqpBf" role="3cpWs9">
                <property role="TrG5h" value="nextLanguage" />
                <node concept="3uibUv" id="50vK5YaqpBg" role="1tU5fm">
                  <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                </node>
                <node concept="2OqwBi" id="50vK5YaqpBh" role="33vP2m">
                  <node concept="2Kt2Hk" id="50vK5YaqpBi" role="2OqNvi" />
                  <node concept="37vLTw" id="50vK5YaqpBj" role="2Oq$k0">
                    <ref role="3cqZAo" node="50vK5YaqpAM" resolve="languagesToVisit" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="50vK5YaqpBk" role="3cqZAp">
              <node concept="2OqwBi" id="50vK5YaqpBl" role="2GsD0m">
                <node concept="37vLTw" id="50vK5YaqpBm" role="2Oq$k0">
                  <ref role="3cqZAo" node="50vK5YaqpBf" resolve="nextLanguage" />
                </node>
                <node concept="liA8E" id="50vK5YaqpBn" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~Language.getExtendedLanguageRefs()" resolve="getExtendedLanguageRefs" />
                </node>
              </node>
              <node concept="2GrKxI" id="50vK5YaqpBo" role="2Gsz3X">
                <property role="TrG5h" value="extendedLangRef" />
              </node>
              <node concept="3clFbS" id="50vK5YaqpBp" role="2LFqv$">
                <node concept="3cpWs8" id="50vK5YaqpBq" role="3cqZAp">
                  <node concept="3cpWsn" id="50vK5YaqpBr" role="3cpWs9">
                    <property role="TrG5h" value="extendedLanguage" />
                    <node concept="3uibUv" id="50vK5YaqpBs" role="1tU5fm">
                      <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                    </node>
                    <node concept="0kSF2" id="50vK5YaqpBt" role="33vP2m">
                      <node concept="3uibUv" id="50vK5YaqpBu" role="0kSFW">
                        <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                      </node>
                      <node concept="2OqwBi" id="50vK5YaqpBv" role="0kSFX">
                        <node concept="liA8E" id="50vK5YaqpBw" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                          <node concept="2OqwBi" id="50vK5YaqpBx" role="37wK5m">
                            <node concept="37vLTw" id="50vK5YaqpBy" role="2Oq$k0">
                              <ref role="3cqZAo" node="50vK5YaqpBf" resolve="nextLanguage" />
                            </node>
                            <node concept="liA8E" id="50vK5YaqpBz" role="2OqNvi">
                              <ref role="37wK5l" to="31cb:~SModuleBase.getRepository()" resolve="getRepository" />
                            </node>
                          </node>
                        </node>
                        <node concept="2GrUjf" id="50vK5YaqpB$" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="50vK5YaqpBo" resolve="extendedLangRef" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="50vK5YaqpB_" role="3cqZAp">
                  <node concept="1Wc70l" id="50vK5YaqpBA" role="3clFbw">
                    <node concept="3fqX7Q" id="50vK5YaqpBB" role="3uHU7w">
                      <node concept="2OqwBi" id="50vK5YaqpBC" role="3fr31v">
                        <node concept="3JPx81" id="50vK5YaqpBD" role="2OqNvi">
                          <node concept="37vLTw" id="50vK5YaqpBE" role="25WWJ7">
                            <ref role="3cqZAo" node="50vK5YaqpBr" resolve="extendedLanguage" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="50vK5YaqpBF" role="2Oq$k0">
                          <ref role="3cqZAo" node="50vK5YaqpAT" resolve="visibleLanguages" />
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="50vK5YaqpBG" role="3uHU7B">
                      <node concept="37vLTw" id="50vK5YaqpBH" role="3uHU7B">
                        <ref role="3cqZAo" node="50vK5YaqpBr" resolve="extendedLanguage" />
                      </node>
                      <node concept="10Nm6u" id="50vK5YaqpBI" role="3uHU7w" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="50vK5YaqpBJ" role="3clFbx">
                    <node concept="3clFbF" id="50vK5YaqpBK" role="3cqZAp">
                      <node concept="2OqwBi" id="50vK5YaqpBL" role="3clFbG">
                        <node concept="TSZUe" id="50vK5YaqpBM" role="2OqNvi">
                          <node concept="37vLTw" id="50vK5YaqpBN" role="25WWJ7">
                            <ref role="3cqZAo" node="50vK5YaqpBr" resolve="extendedLanguage" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="50vK5YaqpBO" role="2Oq$k0">
                          <ref role="3cqZAo" node="50vK5YaqpAT" resolve="visibleLanguages" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="50vK5YaqpBP" role="3cqZAp">
                      <node concept="2OqwBi" id="50vK5YaqpBQ" role="3clFbG">
                        <node concept="2Ke9KJ" id="50vK5YaqpBR" role="2OqNvi">
                          <node concept="37vLTw" id="50vK5YaqpBS" role="25WWJ7">
                            <ref role="3cqZAo" node="50vK5YaqpBr" resolve="extendedLanguage" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="50vK5YaqpBT" role="2Oq$k0">
                          <ref role="3cqZAo" node="50vK5YaqpAM" resolve="languagesToVisit" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="50vK5YaqpBU" role="3cqZAp">
          <node concept="2OqwBi" id="50vK5YaqpCg" role="3cqZAk">
            <node concept="2OqwBi" id="50vK5YaqpCh" role="2Oq$k0">
              <node concept="1KnU$U" id="4UTtJHKvLjI" role="2OqNvi" />
              <node concept="2OqwBi" id="50vK5YaqpCr" role="2Oq$k0">
                <node concept="3$u5V9" id="50vK5YaqpCs" role="2OqNvi">
                  <node concept="1bVj0M" id="50vK5YaqpCt" role="23t8la">
                    <node concept="3clFbS" id="50vK5YaqpCu" role="1bW5cS">
                      <node concept="3clFbF" id="50vK5YaqpCv" role="3cqZAp">
                        <node concept="1qvjxa" id="4UTtJHKvJXa" role="3clFbG">
                          <ref role="1quiSB" to="tpcc:2LiUEk8oQ$g" resolve="structure" />
                          <node concept="37vLTw" id="4UTtJHKvKlZ" role="1qvjxb">
                            <ref role="3cqZAo" node="5W7E4fV0Wu5" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0Wu5" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0Wu6" role="1tU5fm" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="50vK5YaqpC_" role="2Oq$k0">
                  <ref role="3cqZAo" node="50vK5YaqpAT" resolve="visibleLanguages" />
                </node>
              </node>
            </node>
            <node concept="3goQfb" id="50vK5YaqpCA" role="2OqNvi">
              <node concept="1bVj0M" id="50vK5YaqpCB" role="23t8la">
                <node concept="3clFbS" id="50vK5YaqpCC" role="1bW5cS">
                  <node concept="3clFbF" id="50vK5YaqpCD" role="3cqZAp">
                    <node concept="2OqwBi" id="4UTtJHKvM0I" role="3clFbG">
                      <node concept="37vLTw" id="4UTtJHKvLCk" role="2Oq$k0">
                        <ref role="3cqZAo" node="5W7E4fV0Wu7" resolve="it" />
                      </node>
                      <node concept="2RRcyG" id="4UTtJHKvMBm" role="2OqNvi">
                        <node concept="25Kdxt" id="50vK5YaqpCb" role="3MHsoP">
                          <node concept="37vLTw" id="50vK5YaqpCc" role="25KhWn">
                            <ref role="3cqZAo" node="50vK5YaqpAt" resolve="metaConcept" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0Wu7" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0Wu8" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="50vK5Yaqqea" role="1B3o_S" />
      <node concept="P$JXv" id="32ywuM3bB8T" role="lGtFl">
        <node concept="TZ5HI" id="32ywuM3bB8U" role="3nqlJM">
          <node concept="1PaTwC" id="1E1X3WHsww6" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsww7" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsww8" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsww9" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHswwa" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHswwb" role="1PaTwD">
              <property role="3oM_SC" value="MPS" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHswwc" role="1PaTwD">
              <property role="3oM_SC" value="(nor" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHswwd" role="1PaTwD">
              <property role="3oM_SC" value="mbeddr/mps-extensions);" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHswwe" role="1PaTwD">
              <property role="3oM_SC" value="logic" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHswwf" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHswwg" role="1PaTwD">
              <property role="3oM_SC" value="dubious" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHswwh" role="1PaTwD">
              <property role="3oM_SC" value="value," />
            </node>
            <node concept="3oM_SD" id="1E1X3WHswwi" role="1PaTwD">
              <property role="3oM_SC" value="consider" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHswwj" role="1PaTwD">
              <property role="3oM_SC" value="using" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHswwk" role="1PaTwD">
              <property role="3oM_SC" value="VisibleDepsSearchScope" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHswwl" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHswwm" role="1PaTwD">
              <property role="3oM_SC" value="necessary" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="32ywuM3bB8W" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
        <node concept="2B6LJw" id="32ywuM3bBEX" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~Deprecated.forRemoval()" resolve="forRemoval" />
          <node concept="3clFbT" id="32ywuM3bBHh" role="2B70Vg">
            <property role="3clFbU" value="true" />
          </node>
        </node>
        <node concept="2B6LJw" id="32ywuM3bBIu" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~Deprecated.since()" resolve="since" />
          <node concept="Xl_RD" id="32ywuM3bBLi" role="2B70Vg">
            <property role="Xl_RC" value="2023.2" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="50vK5Yaq2E8" role="1B3o_S" />
  </node>
  <node concept="1M2fIO" id="7ERGDLdpEYp">
    <property role="3GE5qa" value="smartReference" />
    <ref role="1M2myG" to="tpce:7ERGDLdoDvC" resolve="SmartReferenceAttribute" />
    <node concept="1N5Pfh" id="7ERGDLdpEYq" role="1Mr941">
      <ref role="1N5Vy1" to="tpce:7ERGDLdoDvH" resolve="charactersticReference" />
      <node concept="3dgokm" id="7ERGDLdpEYu" role="1N6uqs">
        <node concept="3clFbS" id="7ERGDLdpEYw" role="2VODD2">
          <node concept="3clFbF" id="7ERGDLdpF1q" role="3cqZAp">
            <node concept="2YIFZM" id="7ERGDLdq8yE" role="3clFbG">
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="2OqwBi" id="7ERGDLdpFII" role="37wK5m">
                <node concept="1eOMI4" id="7ERGDLdpHb5" role="2Oq$k0">
                  <node concept="1PxgMI" id="7ERGDLdpHxb" role="1eOMHV">
                    <node concept="chp4Y" id="7ERGDLdpH$Y" role="3oSUPX">
                      <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="7ERGDLdpHb1" role="1m5AlR">
                      <node concept="3kakTB" id="7ERGDLdpHb2" role="2Oq$k0" />
                      <node concept="1mfA1w" id="7ERGDLdpHb3" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3zqWPK" id="70OdufORfyF" role="2OqNvi">
                  <ref role="37wK5l" to="tpcn:hEwILL0" resolve="getReferenceLinkDeclarations" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="1eSXJRelhrR">
    <property role="3GE5qa" value="enums" />
    <ref role="1M2myG" to="tpce:2TR3acGo7Lw" resolve="EnumerationMemberDeclaration" />
    <node concept="EnEH3" id="1eSXJRelhrS" role="1MhHOB">
      <ref role="EomxK" to="tpce:1eSXJRel0SS" resolve="memberId" />
      <node concept="QB0g5" id="1eSXJRelhrT" role="QCWH9">
        <node concept="3clFbS" id="1eSXJRelhrU" role="2VODD2">
          <node concept="3clFbJ" id="1eSXJRelhrV" role="3cqZAp">
            <node concept="3clFbS" id="1eSXJRelhrW" role="3clFbx">
              <node concept="3cpWs6" id="1eSXJRelhrX" role="3cqZAp">
                <node concept="3clFbT" id="1eSXJRelhrY" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1eSXJRelhrZ" role="3clFbw">
              <node concept="1Wqviy" id="1eSXJRelhs0" role="2Oq$k0" />
              <node concept="17RlXB" id="1eSXJRelhs1" role="2OqNvi" />
            </node>
          </node>
          <node concept="3J1_TO" id="1eSXJRelhs2" role="3cqZAp">
            <node concept="3clFbS" id="1eSXJRelhs3" role="1zxBo7">
              <node concept="3clFbF" id="1eSXJRelhs4" role="3cqZAp">
                <node concept="2YIFZM" id="1eSXJRelhs5" role="3clFbG">
                  <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
                  <ref role="37wK5l" to="wyt6:~Long.parseLong(java.lang.String)" resolve="parseLong" />
                  <node concept="1Wqviy" id="1eSXJRelhs6" role="37wK5m" />
                </node>
              </node>
              <node concept="3cpWs6" id="1eSXJRelhs7" role="3cqZAp">
                <node concept="3clFbT" id="1eSXJRelhs8" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3uVAMA" id="1eSXJRelhs9" role="1zxBo5">
              <node concept="XOnhg" id="1eSXJRelhsa" role="1zc67B">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="e" />
                <node concept="nSUau" id="xvs04dG4M_" role="1tU5fm">
                  <node concept="3uibUv" id="1eSXJRelhsb" role="nSUat">
                    <ref role="3uigEE" to="wyt6:~NumberFormatException" resolve="NumberFormatException" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="1eSXJRelhsc" role="1zc67A">
                <node concept="3cpWs6" id="1eSXJRelhsd" role="3cqZAp">
                  <node concept="3clFbT" id="1eSXJRelhse" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="VFd4X$D$hf">
    <property role="3GE5qa" value="enums" />
    <ref role="1M2myG" to="tpce:2TR3acGo7Lv" resolve="EnumerationDeclaration" />
    <node concept="1N5Pfh" id="VFd4X$D$pO" role="1Mr941">
      <ref role="1N5Vy1" to="tpce:VFd4XzZw5G" resolve="defaultMember" />
      <node concept="3dgokm" id="VFd4X$D$pW" role="1N6uqs">
        <node concept="3clFbS" id="VFd4X$D$pY" role="2VODD2">
          <node concept="3clFbF" id="VFd4X$D$sY" role="3cqZAp">
            <node concept="2YIFZM" id="VFd4X$D$zP" role="3clFbG">
              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              <node concept="2OqwBi" id="VFd4X$D$R$" role="37wK5m">
                <node concept="3kakTB" id="VFd4X$D$CB" role="2Oq$k0" />
                <node concept="3Tsc0h" id="VFd4X$D_70" role="2OqNvi">
                  <ref role="3TtcxE" to="tpce:2TR3acGo7N1" resolve="members" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2NXJUA" id="VFd4X$D$hg" role="2NY200">
      <node concept="3clFbS" id="VFd4X$D$hh" role="2VODD2">
        <node concept="3clFbF" id="VFd4X$D$hi" role="3cqZAp">
          <node concept="22lmx$" id="VFd4X$D$hj" role="3clFbG">
            <node concept="2OqwBi" id="VFd4X$D$hk" role="3uHU7B">
              <node concept="1Q6Npb" id="VFd4X$D$hl" role="2Oq$k0" />
              <node concept="3zA4fs" id="VFd4X$D$hm" role="2OqNvi">
                <ref role="3zA4av" to="tpcc:2LiUEk8oQ$g" resolve="structure" />
              </node>
            </node>
            <node concept="2YIFZM" id="VFd4X$D$hn" role="3uHU7w">
              <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
              <ref role="37wK5l" to="w1kc:~SModelStereotype.isGeneratorModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isGeneratorModel" />
              <node concept="1Q6Npb" id="VFd4X$D$ho" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="1ob16QT2zdm">
    <ref role="1M2myG" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
    <node concept="EnEH3" id="1ob16QT2zdn" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="1ob16QT2BfW" role="QCWH9">
        <node concept="3clFbS" id="1ob16QT2BfX" role="2VODD2">
          <node concept="3clFbF" id="1ob16QTyQaL" role="3cqZAp">
            <node concept="2OqwBi" id="1ob16QTyQ$9" role="3clFbG">
              <node concept="1Wqviy" id="1ob16QTyQaJ" role="2Oq$k0" />
              <node concept="2kpEY9" id="1ob16QTyRgS" role="2OqNvi">
                <node concept="1Qi9sc" id="1ob16QTyRgU" role="1YN4dH">
                  <node concept="1OJ37Q" id="1ob16QTyTfW" role="1QigWp">
                    <node concept="1SSJmt" id="1ob16QTyRsu" role="1OLpdg">
                      <node concept="1T8lYq" id="1ob16QTyRC7" role="1T5LoC">
                        <property role="1T8p8b" value="a" />
                        <property role="1T8pRJ" value="z" />
                      </node>
                      <node concept="1T8lYq" id="1ob16QTySbj" role="1T5LoC">
                        <property role="1T8p8b" value="A" />
                        <property role="1T8pRJ" value="Z" />
                      </node>
                      <node concept="1T6I$Y" id="1ob16QTyVjD" role="1T5LoC">
                        <property role="1T6KD9" value="$" />
                      </node>
                      <node concept="1T6I$Y" id="1ob16QTySXs" role="1T5LoC">
                        <property role="1T6KD9" value="_" />
                      </node>
                    </node>
                    <node concept="1OCmVF" id="1ob16QTyU2K" role="1OLqdY">
                      <node concept="1SSJmt" id="1ob16QTyTrB" role="1OLDsb">
                        <node concept="1T8lYq" id="1ob16QTyTrC" role="1T5LoC">
                          <property role="1T8p8b" value="a" />
                          <property role="1T8pRJ" value="z" />
                        </node>
                        <node concept="1T8lYq" id="1ob16QTyTrD" role="1T5LoC">
                          <property role="1T8p8b" value="A" />
                          <property role="1T8pRJ" value="Z" />
                        </node>
                        <node concept="1T8lYq" id="1ob16QTyTMR" role="1T5LoC">
                          <property role="1T8p8b" value="0" />
                          <property role="1T8pRJ" value="9" />
                        </node>
                        <node concept="1T6I$Y" id="1ob16QTyTrE" role="1T5LoC">
                          <property role="1T6KD9" value="$" />
                        </node>
                        <node concept="1T6I$Y" id="1ob16QTyTrF" role="1T5LoC">
                          <property role="1T6KD9" value="_" />
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
  <node concept="1M2fIO" id="nddphzEM0Q">
    <property role="3GE5qa" value="deprecatedAnnotation" />
    <ref role="1M2myG" to="tpce:nddphzyHx5" resolve="ExperimentalAPINodeAttribute" />
  </node>
  <node concept="1M2fIO" id="6TyNL3imAC1">
    <ref role="1M2myG" to="tpce:6TyNL3imAnw" resolve="INamedAspect" />
    <node concept="EnEH3" id="6TyNL3imAC2" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="6TyNL3imAC4" role="QCWH9">
        <node concept="3clFbS" id="6TyNL3imAC5" role="2VODD2">
          <node concept="3clFbF" id="6TyNL3imAG0" role="3cqZAp">
            <node concept="2OqwBi" id="6TyNL3imAG1" role="3clFbG">
              <node concept="1Wqviy" id="6TyNL3imAG2" role="2Oq$k0" />
              <node concept="2kpEY9" id="6TyNL3imAG3" role="2OqNvi">
                <node concept="1Qi9sc" id="6TyNL3imAG4" role="1YN4dH">
                  <node concept="1OJ37Q" id="6TyNL3imAG5" role="1QigWp">
                    <node concept="1SSJmt" id="6TyNL3imAG6" role="1OLpdg">
                      <node concept="1T8lYq" id="6TyNL3imAG7" role="1T5LoC">
                        <property role="1T8p8b" value="a" />
                        <property role="1T8pRJ" value="z" />
                      </node>
                      <node concept="1T8lYq" id="6TyNL3imAG8" role="1T5LoC">
                        <property role="1T8p8b" value="A" />
                        <property role="1T8pRJ" value="Z" />
                      </node>
                      <node concept="1T6I$Y" id="6TyNL3imBkp" role="1T5LoC">
                        <property role="1T6KD9" value="$" />
                      </node>
                      <node concept="1T6I$Y" id="6TyNL3imAGa" role="1T5LoC">
                        <property role="1T6KD9" value="_" />
                      </node>
                    </node>
                    <node concept="1OCmVF" id="6TyNL3imAGb" role="1OLqdY">
                      <node concept="1SSJmt" id="6TyNL3imAGc" role="1OLDsb">
                        <node concept="1T8lYq" id="6TyNL3imAGd" role="1T5LoC">
                          <property role="1T8p8b" value="a" />
                          <property role="1T8pRJ" value="z" />
                        </node>
                        <node concept="1T8lYq" id="6TyNL3imAGe" role="1T5LoC">
                          <property role="1T8p8b" value="A" />
                          <property role="1T8pRJ" value="Z" />
                        </node>
                        <node concept="1T8lYq" id="6TyNL3imAGf" role="1T5LoC">
                          <property role="1T8p8b" value="0" />
                          <property role="1T8pRJ" value="9" />
                        </node>
                        <node concept="1T6I$Y" id="6TyNL3imBlE" role="1T5LoC">
                          <property role="1T6KD9" value="$" />
                        </node>
                        <node concept="1T6I$Y" id="6TyNL3imAGh" role="1T5LoC">
                          <property role="1T6KD9" value="_" />
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
  <node concept="1M2fIO" id="2Fn9rKChsSp">
    <property role="3GE5qa" value="descriptor" />
    <ref role="1M2myG" to="tpce:49lEozayI3W" resolve="StructureAspectDeputy" />
    <node concept="2NXJUA" id="2Fn9rKChsTg" role="2NY200">
      <node concept="3clFbS" id="2Fn9rKChsTh" role="2VODD2">
        <node concept="3clFbF" id="2Fn9rKCidDi" role="3cqZAp">
          <node concept="2YIFZM" id="2Fn9rKCidE6" role="3clFbG">
            <ref role="37wK5l" to="w1kc:~SModelStereotype.isDescriptorModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isDescriptorModel" />
            <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
            <node concept="1Q6Npb" id="2Fn9rKCidEN" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="6AHMUXrghT8">
    <property role="TrG5h" value="InterfaceConceptReference_Constraints" />
    <ref role="1M2myG" to="tpce:h0PrWoo" resolve="InterfaceConceptReference" />
    <node concept="1N5Pfh" id="6AHMUXrghT9" role="1Mr941">
      <ref role="1N5Vy1" to="tpce:h0PrY0D" />
      <node concept="3dgokm" id="6AHMUXrghTa" role="1N6uqs">
        <node concept="3clFbS" id="6AHMUXrghTc" role="2VODD2">
          <node concept="3SKdUt" id="6AHMUXrghTd" role="3cqZAp">
            <node concept="1PaTwC" id="6AHMUXrghTh" role="1aUNEU">
              <node concept="3oM_SD" id="6AHMUXrghTj" role="1PaTwD">
                <property role="3oM_SC" value="don't" />
              </node>
              <node concept="3oM_SD" id="6AHMUXrghTk" role="1PaTwD">
                <property role="3oM_SC" value="allow" />
              </node>
              <node concept="3oM_SD" id="6AHMUXrghTl" role="1PaTwD">
                <property role="3oM_SC" value="cycling" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="6AHMUXrghTm" role="3cqZAp">
            <node concept="2YIFZM" id="6AHMUXrghTn" role="3cqZAk">
              <ref role="37wK5l" node="6AHMUXrggKd" resolve="forInterfaceConceptReferenceIntfc" />
              <ref role="1Pybhc" node="6dmIS6MscR9" resolve="Scopes" />
              <node concept="2OqwBi" id="6AHMUXrghTo" role="37wK5m">
                <node concept="2rP1CM" id="6AHMUXrghTr" role="2Oq$k0" />
                <node concept="2Xjw5R" id="6AHMUXrghTs" role="2OqNvi">
                  <node concept="1xIGOp" id="6AHMUXrghTv" role="1xVPHs" />
                  <node concept="1xMEDy" id="6AHMUXrghTw" role="1xVPHs">
                    <node concept="chp4Y" id="6AHMUXrghTy" role="ri$Ld">
                      <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2rP1CM" id="6AHMUXrghTz" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

