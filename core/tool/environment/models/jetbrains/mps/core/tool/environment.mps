<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2876f1ee-0b45-4db5-8c09-0682cdee5c67(jetbrains.mps.tool.environment)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="false" />
  <languages>
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="acfc188d-d5d6-4598-b370-6f4a983f05b2" name="jetbrains.mps.baseLanguage.methodReferences" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="je6q" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.library.contributor(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="32g5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.library(MPS.Core/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="fyhk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps(MPS.Core/)" />
    <import index="zf81" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.net(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="vqh0" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.make(MPS.Core/)" />
    <import index="3qmy" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.classloading(MPS.Core/)" />
    <import index="mk8z" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.progress(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="v9gs" ref="r:a139668a-5a0e-46e2-a802-102190e497e5(jetbrains.mps.core.tool.environment.util)" />
    <import index="4o98" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.core.platform(MPS.Core/)" />
    <import index="asz6" ref="r:067fd2c9-d009-4506-91db-a69992d65964(jetbrains.mps.tool.common)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
    <import index="ni5j" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.regex(JDK/)" />
    <import index="zfbc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio(JDK/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="w0gx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.structure.modules(MPS.Core/)" />
    <import index="et5u" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.messages(MPS.Core/)" />
    <import index="bd8o" ref="3a8d80d2-32d9-f1f2-4443-6a1111e12ef3/java:com.intellij.openapi.application(MPS.Boot/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="embf" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.jar(JDK/)" />
    <import index="w827" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs.openapi(MPS.Core/)" />
    <import index="wwqx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.logging(MPS.Core/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1219920932475" name="jetbrains.mps.baseLanguage.structure.VariableArityType" flags="in" index="8X2XB">
        <child id="1219921048460" name="componentType" index="8Xvag" />
      </concept>
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="7485977462274819189" name="jetbrains.mps.baseLanguage.structure.FormatOperation" flags="ng" index="2cAKMz">
        <child id="7485977462274819664" name="arguments" index="2cAKU6" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
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
      <concept id="1177666668936" name="jetbrains.mps.baseLanguage.structure.DoWhileStatement" flags="nn" index="MpOyq">
        <child id="1177666688034" name="condition" index="MpTkK" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
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
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
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
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
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
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
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
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
      </concept>
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
        <child id="1160998916832" name="message" index="1gVpfI" />
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
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
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
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1184950988562" name="jetbrains.mps.baseLanguage.structure.ArrayCreator" flags="nn" index="3$_iS1">
        <child id="1184951007469" name="componentType" index="3$_nBY" />
        <child id="1184952969026" name="dimensionExpression" index="3$GQph" />
      </concept>
      <concept id="1184952934362" name="jetbrains.mps.baseLanguage.structure.DimensionExpression" flags="nn" index="3$GHV9">
        <child id="1184953288404" name="expression" index="3$I4v7" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="5351203823916832286" name="jetbrains.mps.baseLanguage.structure.ResourceVariable" flags="ng" index="3J1hQo" />
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
        <child id="5351203823916750334" name="resource" index="3J1_TS" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
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
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <property id="890797661671409019" name="forceMultiLine" index="3yWfEV" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5858074156537516430" name="jetbrains.mps.baseLanguage.javadoc.structure.ReturnBlockDocTag" flags="ng" index="x79VA">
        <property id="5858074156537516431" name="text" index="x79VB" />
      </concept>
      <concept id="6832197706140896242" name="jetbrains.mps.baseLanguage.javadoc.structure.FieldDocComment" flags="ng" index="z59LJ" />
      <concept id="6832197706140518104" name="jetbrains.mps.baseLanguage.javadoc.structure.DocMethodParameterReference" flags="ng" index="zr_55" />
      <concept id="6832197706140518103" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseParameterReference" flags="ng" index="zr_5a">
        <reference id="6832197706140518108" name="param" index="zr_51" />
      </concept>
      <concept id="6971016359099800069" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldSingleCommentLine" flags="ngI" index="2JaDLO">
        <child id="6971016359099801474" name="commentBody" index="2JaDBN" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690881930" name="jetbrains.mps.baseLanguage.javadoc.structure.ParameterBlockDocTag" flags="ng" index="TUZQ0">
        <property id="8465538089690881934" name="text" index="TUZQ4" />
        <child id="6832197706140518123" name="parameter" index="zr_5Q" />
      </concept>
      <concept id="8465538089690331492" name="jetbrains.mps.baseLanguage.javadoc.structure.DeprecatedBlockDocTag" flags="ng" index="TZ5HI" />
      <concept id="2217234381367190443" name="jetbrains.mps.baseLanguage.javadoc.structure.SeeBlockDocTag" flags="ng" index="VUp57">
        <property id="2217234381367190444" name="text" index="VUp50" />
        <child id="2217234381367190458" name="reference" index="VUp5m" />
      </concept>
      <concept id="2217234381367530212" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocReference" flags="ng" index="VXe08">
        <reference id="2217234381367530213" name="classifier" index="VXe09" />
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
    <language id="acfc188d-d5d6-4598-b370-6f4a983f05b2" name="jetbrains.mps.baseLanguage.methodReferences">
      <concept id="237887375562511215" name="jetbrains.mps.baseLanguage.methodReferences.structure.MethodReference" flags="ng" index="37Ijox" />
      <concept id="3507059745126391419" name="jetbrains.mps.baseLanguage.methodReferences.structure.IMethodReference" flags="ngI" index="3UZKCU">
        <reference id="237887375562511297" name="method" index="37Ijqf" />
        <child id="962278442658307079" name="target" index="wWaWy" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261755" name="throwable" index="RRSow" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
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
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
      <concept id="6934061334344388674" name="jetbrains.mps.lang.text.structure.NumberedLine" flags="ng" index="3WpeL9" />
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="2526372162255441536" name="jetbrains.mps.baseLanguage.collections.structure.AsUnmodifiableOperation" flags="nn" index="26Dbio" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1226934395923" name="jetbrains.mps.baseLanguage.collections.structure.ClearSetOperation" flags="nn" index="2EZike" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1240216724530" name="jetbrains.mps.baseLanguage.collections.structure.LinkedHashMapCreator" flags="nn" index="32Fmki" />
      <concept id="1240217271293" name="jetbrains.mps.baseLanguage.collections.structure.LinkedHashSetCreator" flags="nn" index="32HrFt" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1201872418428" name="jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation" flags="nn" index="3lbrtF" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="3HP615" id="HKKzfMjqRV">
    <property role="TrG5h" value="Environment" />
    <node concept="3clFb_" id="2BGPXkEw$sz" role="jymVt">
      <property role="TrG5h" value="createEmptyProject" />
      <node concept="3uibUv" id="$Ws9FwrZnH" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3Tm1VV" id="2BGPXkEw$s_" role="1B3o_S" />
      <node concept="3clFbS" id="2BGPXkEw$sA" role="3clF47" />
      <node concept="2AHcQZ" id="2BGPXkEw$sB" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="P$JXv" id="2BGPXkEw$sF" role="lGtFl">
        <node concept="x79VA" id="2BGPXkEw$sI" role="3nqlJM">
          <property role="x79VB" value="" />
          <node concept="1PaTwC" id="1E1X3WHs_S2" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHs_S3" role="1PaTwD">
              <property role="3oM_SC" value="newly" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_S4" role="1PaTwD">
              <property role="3oM_SC" value="created" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_S5" role="1PaTwD">
              <property role="3oM_SC" value="Project." />
            </node>
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_RV" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_RW" role="1PaTwD">
            <property role="3oM_SC" value="Creates" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_RX" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_RY" role="1PaTwD">
            <property role="3oM_SC" value="opens" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_RZ" role="1PaTwD">
            <property role="3oM_SC" value="an" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_S0" role="1PaTwD">
            <property role="3oM_SC" value="empty" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_S1" role="1PaTwD">
            <property role="3oM_SC" value="project" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkEw$y$" role="jymVt" />
    <node concept="3clFb_" id="6rx4kZDk5oX" role="jymVt">
      <property role="TrG5h" value="createProject" />
      <node concept="3uibUv" id="6rx4kZDk5pd" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3Tm1VV" id="6rx4kZDk5p0" role="1B3o_S" />
      <node concept="3clFbS" id="6rx4kZDk5p1" role="3clF47" />
      <node concept="2AHcQZ" id="5A5jZrz4e0G" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="2BGPXkEtDT7" role="3clF46">
        <property role="TrG5h" value="strategy" />
        <node concept="3uibUv" id="2BGPXkEtLvF" role="1tU5fm">
          <ref role="3uigEE" node="5A5jZrz4rws" resolve="ProjectStrategy" />
        </node>
        <node concept="2AHcQZ" id="2BGPXkEtDWu" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="P$JXv" id="2BGPXkEtDXD" role="lGtFl">
        <node concept="x79VA" id="2BGPXkEtDXJ" role="3nqlJM">
          <property role="x79VB" value="" />
          <node concept="1PaTwC" id="1E1X3WHs_Si" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHs_Sj" role="1PaTwD">
              <property role="3oM_SC" value="newly" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_Sk" role="1PaTwD">
              <property role="3oM_SC" value="created" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_Sl" role="1PaTwD">
              <property role="3oM_SC" value="Project" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_Sm" role="1PaTwD">
              <property role="3oM_SC" value="constructed" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_Sn" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_So" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_Sp" role="1PaTwD">
              <property role="3oM_SC" value="strategy" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_Sq" role="1PaTwD">
              <property role="3oM_SC" value="suggests." />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_Sr" role="1PaTwD">
              <property role="3oM_SC" value="It" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_Ss" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_St" role="1PaTwD">
              <property role="3oM_SC" value="already" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_Su" role="1PaTwD">
              <property role="3oM_SC" value="opened." />
            </node>
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_S6" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_S7" role="1PaTwD">
            <property role="3oM_SC" value="Creates" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_S8" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_S9" role="1PaTwD">
            <property role="3oM_SC" value="project" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Sa" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Sb" role="1PaTwD">
            <property role="3oM_SC" value="opens" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Sc" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Sd" role="1PaTwD">
            <property role="3oM_SC" value="according" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Se" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Sf" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Sg" role="1PaTwD">
            <property role="3oM_SC" value="given" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Sh" role="1PaTwD">
            <property role="3oM_SC" value="strategy" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5A5jZrz4e44" role="jymVt" />
    <node concept="3clFb_" id="6rx4kZDjWg4" role="jymVt">
      <property role="TrG5h" value="openProject" />
      <node concept="37vLTG" id="6rx4kZDk2U6" role="3clF46">
        <property role="TrG5h" value="projectFile" />
        <node concept="3uibUv" id="6rx4kZDk5o3" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
        <node concept="2AHcQZ" id="5A5jZrz4dXY" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3uibUv" id="6rx4kZDk2U4" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3Tm1VV" id="6rx4kZDjWg7" role="1B3o_S" />
      <node concept="3clFbS" id="6rx4kZDjWg8" role="3clF47" />
      <node concept="2AHcQZ" id="5A5jZrz4dZN" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="3hj1t46fwe9" role="jymVt" />
    <node concept="3clFb_" id="3hj1t46fvYr" role="jymVt">
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="closeProject" />
      <node concept="3clFbS" id="3hj1t46fvYu" role="3clF47" />
      <node concept="3Tm1VV" id="3hj1t46fvYv" role="1B3o_S" />
      <node concept="3cqZAl" id="3hj1t46fvWy" role="3clF45" />
      <node concept="37vLTG" id="3hj1t46fw6f" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3hj1t46fw6e" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="3hj1t46fwc8" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="P$JXv" id="3hj1t46fwgd" role="lGtFl">
        <node concept="TUZQ0" id="3hj1t46fwgg" role="3nqlJM">
          <property role="TUZQ4" value="" />
          <node concept="zr_55" id="3hj1t46fwgi" role="zr_5Q">
            <ref role="zr_51" node="3hj1t46fw6f" resolve="project" />
          </node>
          <node concept="1PaTwC" id="1E1X3WHs_T3" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHs_T4" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_T5" role="1PaTwD">
              <property role="3oM_SC" value="instance" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_T6" role="1PaTwD">
              <property role="3oM_SC" value="obtained" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_T7" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_T8" role="1PaTwD">
              <property role="3oM_SC" value="{@link" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_T9" role="1PaTwD">
              <property role="3oM_SC" value="#openProject(java.io.File)}" />
            </node>
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_Sv" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_Sw" role="1PaTwD">
            <property role="3oM_SC" value="Discards" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Sx" role="1PaTwD">
            <property role="3oM_SC" value="previously" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Sy" role="1PaTwD">
            <property role="3oM_SC" value="opened" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Sz" role="1PaTwD">
            <property role="3oM_SC" value="project." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_S$" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_S_" role="1PaTwD">
            <property role="3oM_SC" value="Environment" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_SA" role="1PaTwD">
            <property role="3oM_SC" value="does" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_SB" role="1PaTwD">
            <property role="3oM_SC" value="its" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_SC" role="1PaTwD">
            <property role="3oM_SC" value="best" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_SD" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_SE" role="1PaTwD">
            <property role="3oM_SC" value="close" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_SF" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_SG" role="1PaTwD">
            <property role="3oM_SC" value="project" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_SH" role="1PaTwD">
            <property role="3oM_SC" value="but" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_SI" role="1PaTwD">
            <property role="3oM_SC" value="may" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_SJ" role="1PaTwD">
            <property role="3oM_SC" value="choose" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_SK" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_SL" role="1PaTwD">
            <property role="3oM_SC" value="ignore" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_SM" role="1PaTwD">
            <property role="3oM_SC" value="request" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_SN" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_SO" role="1PaTwD">
            <property role="3oM_SC" value="certain" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_SP" role="1PaTwD">
            <property role="3oM_SC" value="scenarions" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_SQ" role="1PaTwD">
            <property role="3oM_SC" value="(like" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_SR" role="1PaTwD">
            <property role="3oM_SC" value="in-process" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_SS" role="1PaTwD">
            <property role="3oM_SC" value="test" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_ST" role="1PaTwD">
            <property role="3oM_SC" value="execution," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_SU" role="1PaTwD">
            <property role="3oM_SC" value="when" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_SV" role="1PaTwD">
            <property role="3oM_SC" value="closing" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_SW" role="1PaTwD">
            <property role="3oM_SC" value="an" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_SX" role="1PaTwD">
            <property role="3oM_SC" value="active" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_SY" role="1PaTwD">
            <property role="3oM_SC" value="project" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_SZ" role="1PaTwD">
            <property role="3oM_SC" value="may" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_T0" role="1PaTwD">
            <property role="3oM_SC" value="affect" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_T1" role="1PaTwD">
            <property role="3oM_SC" value="user" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_T2" role="1PaTwD">
            <property role="3oM_SC" value="experience)" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3hj1t46fvUE" role="jymVt" />
    <node concept="3clFb_" id="6rx4kZDk5rd" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="6rx4kZDk5rf" role="3clF45" />
      <node concept="3Tm1VV" id="6rx4kZDk5rg" role="1B3o_S" />
      <node concept="3clFbS" id="6rx4kZDk5rh" role="3clF47" />
      <node concept="P$JXv" id="3pEStHM5KfL" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs_Ta" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_Tb" role="1PaTwD">
            <property role="3oM_SC" value="disposes" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Tc" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Td" role="1PaTwD">
            <property role="3oM_SC" value="environment" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Te" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Tf" role="1PaTwD">
            <property role="3oM_SC" value="real," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Tg" role="1PaTwD">
            <property role="3oM_SC" value="does" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Th" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Ti" role="1PaTwD">
            <property role="3oM_SC" value="consider" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Tj" role="1PaTwD">
            <property role="3oM_SC" value="ref" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Tk" role="1PaTwD">
            <property role="3oM_SC" value="counts" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5A5jZrz36b7" role="jymVt" />
    <node concept="3clFb_" id="3eUNqOk4fPx" role="jymVt">
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="flushAllEvents" />
      <node concept="3clFbS" id="3eUNqOk4fP$" role="3clF47" />
      <node concept="3Tm1VV" id="3eUNqOk4fP_" role="1B3o_S" />
      <node concept="3cqZAl" id="3eUNqOk4fNs" role="3clF45" />
      <node concept="P$JXv" id="3eUNqOk4fSi" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs_Tl" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_Tm" role="1PaTwD">
            <property role="3oM_SC" value="flushes" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Tn" role="1PaTwD">
            <property role="3oM_SC" value="all" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_To" role="1PaTwD">
            <property role="3oM_SC" value="#invokeAndLater" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Tp" role="1PaTwD">
            <property role="3oM_SC" value="calls" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Tq" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Tr" role="1PaTwD">
            <property role="3oM_SC" value="all" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Ts" role="1PaTwD">
            <property role="3oM_SC" value="ModelAccess" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Tt" role="1PaTwD">
            <property role="3oM_SC" value="event" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Tu" role="1PaTwD">
            <property role="3oM_SC" value="queue" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Tv" role="1PaTwD">
            <property role="3oM_SC" value="if" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Tw" role="1PaTwD">
            <property role="3oM_SC" value="needed" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="8Pnvxglo9c" role="jymVt" />
    <node concept="3clFb_" id="8Pnvxgloc_" role="jymVt">
      <property role="TrG5h" value="getPlatform" />
      <node concept="3uibUv" id="8Pnvxglohb" role="3clF45">
        <ref role="3uigEE" to="4o98:~Platform" resolve="Platform" />
      </node>
      <node concept="3Tm1VV" id="8PnvxglocC" role="1B3o_S" />
      <node concept="3clFbS" id="8PnvxglocD" role="3clF47" />
      <node concept="P$JXv" id="8Pnvxglp3V" role="lGtFl">
        <node concept="x79VA" id="8Pnvxglp3Y" role="3nqlJM">
          <property role="x79VB" value="" />
          <node concept="1PaTwC" id="1E1X3WHs_Tx" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHs_Ty" role="1PaTwD">
              <property role="3oM_SC" value="MPS" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_Tz" role="1PaTwD">
              <property role="3oM_SC" value="(its" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_T$" role="1PaTwD">
              <property role="3oM_SC" value="platform" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_T_" role="1PaTwD">
              <property role="3oM_SC" value="aspect)" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_TA" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_TB" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_TC" role="1PaTwD">
              <property role="3oM_SC" value="tooling" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_TD" role="1PaTwD">
              <property role="3oM_SC" value="environment," />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_TE" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_TF" role="1PaTwD">
              <property role="3oM_SC" value="null" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_TG" role="1PaTwD">
              <property role="3oM_SC" value="when" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_TH" role="1PaTwD">
              <property role="3oM_SC" value="initialized." />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="HKKzfMjqRW" role="1B3o_S" />
    <node concept="3UR2Jj" id="3eUNqOk4h9m" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHs_KU" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_KV" role="1PaTwD">
          <property role="3oM_SC" value="Intended" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_KW" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_KX" role="1PaTwD">
          <property role="3oM_SC" value="be" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_KY" role="1PaTwD">
          <property role="3oM_SC" value="used" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_KZ" role="1PaTwD">
          <property role="3oM_SC" value="in" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_L0" role="1PaTwD">
          <property role="3oM_SC" value="headless" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_L1" role="1PaTwD">
          <property role="3oM_SC" value="runs," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_L2" role="1PaTwD">
          <property role="3oM_SC" value="represents" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_L3" role="1PaTwD">
          <property role="3oM_SC" value="working" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_L4" role="1PaTwD">
          <property role="3oM_SC" value="MPS" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_L5" role="1PaTwD">
          <property role="3oM_SC" value="environment." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_L6" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_L7" role="1PaTwD">
          <property role="3oM_SC" value="Currently" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_L8" role="1PaTwD">
          <property role="3oM_SC" value="it" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_L9" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_La" role="1PaTwD">
          <property role="3oM_SC" value="cached" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Lb" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Lc" role="1PaTwD">
          <property role="3oM_SC" value="all" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Ld" role="1PaTwD">
          <property role="3oM_SC" value="tests" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Le" role="1PaTwD">
          <property role="3oM_SC" value="in" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Lf" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Lg" role="1PaTwD">
          <property role="3oM_SC" value="case" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Lh" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Li" role="1PaTwD">
          <property role="3oM_SC" value="group" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Lj" role="1PaTwD">
          <property role="3oM_SC" value="test" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Lk" role="1PaTwD">
          <property role="3oM_SC" value="runs" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Ll" role="1PaTwD">
          <property role="3oM_SC" value="(suites)." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_Lm" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_Ln" role="1PaTwD">
          <property role="3oM_SC" value="To" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Lo" role="1PaTwD">
          <property role="3oM_SC" value="initialize" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Lp" role="1PaTwD">
          <property role="3oM_SC" value="environment" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Lq" role="1PaTwD">
          <property role="3oM_SC" value="in" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Lr" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Ls" role="1PaTwD">
          <property role="3oM_SC" value="lazy" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Lt" role="1PaTwD">
          <property role="3oM_SC" value="way" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Lu" role="1PaTwD">
          <property role="3oM_SC" value="(trying" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Lv" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Lw" role="1PaTwD">
          <property role="3oM_SC" value="get" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Lx" role="1PaTwD">
          <property role="3oM_SC" value="cached" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Ly" role="1PaTwD">
          <property role="3oM_SC" value="environment" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Lz" role="1PaTwD">
          <property role="3oM_SC" value="if" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_L$" role="1PaTwD">
          <property role="3oM_SC" value="available)" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_L_" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_LA" role="1PaTwD">
          <property role="3oM_SC" value="use" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_LB" role="1PaTwD">
          <property role="3oM_SC" value="MPSEnvironment" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_LC" role="1PaTwD">
          <property role="3oM_SC" value="or" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_LD" role="1PaTwD">
          <property role="3oM_SC" value="IdeaEnvironment" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_LE" role="1PaTwD">
          <property role="3oM_SC" value="#getOrCreate" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_LF" role="1PaTwD">
          <property role="3oM_SC" value="methods." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_LG" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_LH" role="1PaTwD">
          <property role="3oM_SC" value="Use" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_LI" role="1PaTwD">
          <property role="3oM_SC" value="MPSEnvironment" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_LJ" role="1PaTwD">
          <property role="3oM_SC" value="if" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_LK" role="1PaTwD">
          <property role="3oM_SC" value="you" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_LL" role="1PaTwD">
          <property role="3oM_SC" value="do" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_LM" role="1PaTwD">
          <property role="3oM_SC" value="not" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_LN" role="1PaTwD">
          <property role="3oM_SC" value="need" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_LO" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_LP" role="1PaTwD">
          <property role="3oM_SC" value="idea" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_LQ" role="1PaTwD">
          <property role="3oM_SC" value="platform," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_LR" role="1PaTwD">
          <property role="3oM_SC" value="IdeaEnvironment" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_LS" role="1PaTwD">
          <property role="3oM_SC" value="otherwise." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_LT" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_LU" role="1PaTwD">
          <property role="3oM_SC" value="These" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_LV" role="1PaTwD">
          <property role="3oM_SC" value="methods" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_LW" role="1PaTwD">
          <property role="3oM_SC" value="use" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_LX" role="1PaTwD">
          <property role="3oM_SC" value="ref" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_LY" role="1PaTwD">
          <property role="3oM_SC" value="counting" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_LZ" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_M0" role="1PaTwD">
          <property role="3oM_SC" value="dispose" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_M1" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_M2" role="1PaTwD">
          <property role="3oM_SC" value="environment" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_M3" role="1PaTwD">
          <property role="3oM_SC" value="in" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_M4" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_M5" role="1PaTwD">
          <property role="3oM_SC" value="right" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_M6" role="1PaTwD">
          <property role="3oM_SC" value="time" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_M7" role="1PaTwD">
          <property role="3oM_SC" value="(at" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_M8" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_M9" role="1PaTwD">
          <property role="3oM_SC" value="end" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Ma" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Mb" role="1PaTwD">
          <property role="3oM_SC" value="suite" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Mc" role="1PaTwD">
          <property role="3oM_SC" value="or" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Md" role="1PaTwD">
          <property role="3oM_SC" value="at" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Me" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Mf" role="1PaTwD">
          <property role="3oM_SC" value="end" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Mg" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Mh" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Mi" role="1PaTwD">
          <property role="3oM_SC" value="test);" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_Mj" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_Mk" role="1PaTwD">
          <property role="3oM_SC" value="they" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Ml" role="1PaTwD">
          <property role="3oM_SC" value="call" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Mm" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Mn" role="1PaTwD">
          <property role="3oM_SC" value="method" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Mo" role="1PaTwD">
          <property role="3oM_SC" value="#retain" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Mp" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Mq" role="1PaTwD">
          <property role="3oM_SC" value="increase" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Mr" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Ms" role="1PaTwD">
          <property role="3oM_SC" value="reference" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Mt" role="1PaTwD">
          <property role="3oM_SC" value="counter." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_Mu" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_Mv" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_Mw" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_Mx" role="1PaTwD">
          <property role="3oM_SC" value="The" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_My" role="1PaTwD">
          <property role="3oM_SC" value="common" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Mz" role="1PaTwD">
          <property role="3oM_SC" value="pattern" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_M$" role="1PaTwD">
          <property role="3oM_SC" value="in" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_M_" role="1PaTwD">
          <property role="3oM_SC" value="tests" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_MA" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_MB" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_MC" role="1PaTwD">
          <property role="3oM_SC" value="call" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_MD" role="1PaTwD">
          <property role="3oM_SC" value="#getOrCreate" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_ME" role="1PaTwD">
          <property role="3oM_SC" value="method" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_MF" role="1PaTwD">
          <property role="3oM_SC" value="in" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_MG" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_MH" role="1PaTwD">
          <property role="3oM_SC" value="@BeforeClass" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_MI" role="1PaTwD">
          <property role="3oM_SC" value="section," />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_MJ" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_MK" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_ML" role="1PaTwD">
          <property role="3oM_SC" value="call" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_MM" role="1PaTwD">
          <property role="3oM_SC" value="#release" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_MN" role="1PaTwD">
          <property role="3oM_SC" value="method" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_MO" role="1PaTwD">
          <property role="3oM_SC" value="in" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_MP" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_MQ" role="1PaTwD">
          <property role="3oM_SC" value="@AfterClass" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_MR" role="1PaTwD">
          <property role="3oM_SC" value="section." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_MS" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_MT" role="1PaTwD">
          <property role="3oM_SC" value="There" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_MU" role="1PaTwD">
          <property role="3oM_SC" value="are" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_MV" role="1PaTwD">
          <property role="3oM_SC" value="helping" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_MW" role="1PaTwD">
          <property role="3oM_SC" value="base" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_MX" role="1PaTwD">
          <property role="3oM_SC" value="classes:" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_MY" role="1PaTwD">
          <property role="3oM_SC" value="PlatformMpsTest" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_MZ" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_N0" role="1PaTwD">
          <property role="3oM_SC" value="CoreMpsTest" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_N1" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_N2" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_N3" role="1PaTwD">
          <property role="3oM_SC" value="IdeaEnvironment" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_N4" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_N5" role="1PaTwD">
          <property role="3oM_SC" value="MpsEnvironment" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_N6" role="1PaTwD">
          <property role="3oM_SC" value="correspondingly." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_N7" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_N8" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_N9" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_Na" role="1PaTwD">
          <property role="3oM_SC" value="AP:" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Nb" role="1PaTwD">
          <property role="3oM_SC" value="TODO" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Nc" role="1PaTwD">
          <property role="3oM_SC" value="consider" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Nd" role="1PaTwD">
          <property role="3oM_SC" value="merging" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Ne" role="1PaTwD">
          <property role="3oM_SC" value="all" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Nf" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Ng" role="1PaTwD">
          <property role="3oM_SC" value="project" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Nh" role="1PaTwD">
          <property role="3oM_SC" value="creation" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Ni" role="1PaTwD">
          <property role="3oM_SC" value="methods" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_Nj" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_Nk" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_Nl" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_Nm" role="1PaTwD">
          <property role="3oM_SC" value="There" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Nn" role="1PaTwD">
          <property role="3oM_SC" value="are" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_No" role="1PaTwD">
          <property role="3oM_SC" value="two" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Np" role="1PaTwD">
          <property role="3oM_SC" value="base" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Nq" role="1PaTwD">
          <property role="3oM_SC" value="implementations," />
        </node>
        <node concept="1Vtdud" id="1E1X3WHs_Nr" role="1PaTwD">
          <node concept="1VuXuv" id="1E1X3WHs_Ns" role="1Vtduc">
            <node concept="VXe08" id="1_D5Bk1Ony1" role="1VuXuu">
              <ref role="VXe09" node="3eUNqOk4feo" resolve="EnvironmentBase" />
            </node>
            <node concept="1PaTwC" id="1E1X3WHs_Nv" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHs_Nw" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Nx" role="1PaTwD">
          <property role="3oM_SC" value="which" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Ny" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Nz" role="1PaTwD">
          <property role="3oM_SC" value="deemed" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_N$" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_N_" role="1PaTwD">
          <property role="3oM_SC" value="full-fledged" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_NA" role="1PaTwD">
          <property role="3oM_SC" value="runtime" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_NB" role="1PaTwD">
          <property role="3oM_SC" value="instances," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_NC" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_ND" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_NE" role="1PaTwD">
          <property role="3oM_SC" value=" " />
        </node>
        <node concept="1Vtdud" id="1E1X3WHs_NF" role="1PaTwD">
          <node concept="1VuXuv" id="1E1X3WHs_NG" role="1Vtduc">
            <node concept="VXe08" id="1_D5Bk1Ou$b" role="1VuXuu">
              <ref role="VXe09" node="1_D5Bk1O3_5" resolve="AbstractEnvironment" />
            </node>
            <node concept="1PaTwC" id="1E1X3WHs_NJ" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHs_NK" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_NL" role="1PaTwD">
          <property role="3oM_SC" value="generally" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_NM" role="1PaTwD">
          <property role="3oM_SC" value="intended" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_NN" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_NO" role="1PaTwD">
          <property role="3oM_SC" value="lightweight," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_NP" role="1PaTwD">
          <property role="3oM_SC" value="API-like" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_NQ" role="1PaTwD">
          <property role="3oM_SC" value="access" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_NR" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_NS" role="1PaTwD">
          <property role="3oM_SC" value="existing" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_NT" role="1PaTwD">
          <property role="3oM_SC" value="runtime" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_NU" role="1PaTwD">
          <property role="3oM_SC" value="instance." />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6rx4kZDk5A9">
    <property role="TrG5h" value="EnvironmentConfig" />
    <node concept="312cEg" id="6rx4kZDkyzy" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myPlugins" />
      <property role="3TUv4t" value="true" />
      <node concept="2hMVRd" id="5hfNQWynLQa" role="1tU5fm">
        <node concept="3uibUv" id="7bo6V6sLrrY" role="2hN53Y">
          <ref role="3uigEE" to="asz6:r$A3E5vV_o" resolve="PluginData" />
        </node>
      </node>
      <node concept="2ShNRf" id="6rx4kZDky$Q" role="33vP2m">
        <node concept="32HrFt" id="5hfNQWynNC7" role="2ShVmc">
          <node concept="3uibUv" id="7bo6V6sLsVK" role="HW$YZ">
            <ref role="3uigEE" to="asz6:r$A3E5vV_o" resolve="PluginData" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6rx4kZDkyys" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="6rx4kZDkaHn" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myMacros" />
      <property role="3TUv4t" value="true" />
      <node concept="2ShNRf" id="6rx4kZDkaL$" role="33vP2m">
        <node concept="32Fmki" id="MVJ1IE86k5" role="2ShVmc">
          <node concept="17QB3L" id="MVJ1IE88NM" role="3rHrn6" />
          <node concept="3uibUv" id="MVJ1IE89O6" role="3rHtpV">
            <ref role="3uigEE" to="guwi:~File" resolve="File" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6rx4kZDka_J" role="1B3o_S" />
      <node concept="3rvAFt" id="6rx4kZDkaCG" role="1tU5fm">
        <node concept="3uibUv" id="6rx4kZDkaHl" role="3rvSg0">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
        <node concept="17QB3L" id="6rx4kZDkaF2" role="3rvQeY" />
      </node>
    </node>
    <node concept="312cEg" id="6rx4kZDkyOs" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myLibs" />
      <property role="3TUv4t" value="true" />
      <node concept="2hMVRd" id="5hfNQWynExA" role="1tU5fm">
        <node concept="17QB3L" id="DMIDDhgtyF" role="2hN53Y" />
      </node>
      <node concept="2ShNRf" id="6rx4kZDkyPW" role="33vP2m">
        <node concept="32HrFt" id="5hfNQWynHY3" role="2ShVmc">
          <node concept="17QB3L" id="DMIDDhgv7Q" role="HW$YZ" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6rx4kZDkyII" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="12CYGR0ZRIB" role="jymVt" />
    <node concept="312cEg" id="12CYGR0ZIor" role="jymVt">
      <property role="TrG5h" value="myCreatePluginClassLoaders" />
      <node concept="3Tm6S6" id="12CYGR0ZHew" role="1B3o_S" />
      <node concept="10P_77" id="12CYGR0ZIlq" role="1tU5fm" />
      <node concept="3clFbT" id="12CYGR0ZJHr" role="33vP2m">
        <property role="3clFbU" value="true" />
      </node>
      <node concept="z59LJ" id="12CYGR0ZSUJ" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs_QO" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_QP" role="1PaTwD">
            <property role="3oM_SC" value="due" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_QQ" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_QR" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_QS" role="1PaTwD">
            <property role="3oM_SC" value="support" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_QT" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_QU" role="1PaTwD">
            <property role="3oM_SC" value="IDEA" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_QV" role="1PaTwD">
            <property role="3oM_SC" value="we" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_QW" role="1PaTwD">
            <property role="3oM_SC" value="are" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_QX" role="1PaTwD">
            <property role="3oM_SC" value="able" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_QY" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_QZ" role="1PaTwD">
            <property role="3oM_SC" value="support" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_R0" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_R1" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_R2" role="1PaTwD">
            <property role="3oM_SC" value="MPS" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_R3" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_R4" role="1PaTwD">
            <property role="3oM_SC" value="fixme" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_R5" role="1PaTwD">
            <property role="3oM_SC" value="implement" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_R6" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_R7" role="1PaTwD">
            <property role="3oM_SC" value="MpsEnv" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4UQyhJFi2v7" role="jymVt">
      <property role="TrG5h" value="myAutomaticPluginsDiscoveryMode" />
      <node concept="3Tm6S6" id="4UQyhJFi1$Y" role="1B3o_S" />
      <node concept="10P_77" id="4UQyhJFi2r6" role="1tU5fm" />
      <node concept="3clFbT" id="4UQyhJFi3$m" role="33vP2m" />
      <node concept="z59LJ" id="4UQyhJFie83" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs_R8" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_R9" role="1PaTwD">
            <property role="3oM_SC" value="Whether" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Ra" role="1PaTwD">
            <property role="3oM_SC" value="we" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Rb" role="1PaTwD">
            <property role="3oM_SC" value="are" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Rc" role="1PaTwD">
            <property role="3oM_SC" value="going" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Rd" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Re" role="1PaTwD">
            <property role="3oM_SC" value="load" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Rf" role="1PaTwD">
            <property role="3oM_SC" value="all" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Rg" role="1PaTwD">
            <property role="3oM_SC" value="preinstalled" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Rh" role="1PaTwD">
            <property role="3oM_SC" value="plugins," />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_Ri" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_Rj" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Rk" role="1PaTwD">
            <property role="3oM_SC" value="bundled" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Rl" role="1PaTwD">
            <property role="3oM_SC" value="plugins," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Rm" role="1PaTwD">
            <property role="3oM_SC" value="plugins" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Rn" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Ro" role="1PaTwD">
            <property role="3oM_SC" value="cp," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Rp" role="1PaTwD">
            <property role="3oM_SC" value="plugins" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Rq" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Rr" role="1PaTwD">
            <property role="3oM_SC" value="plugin.path" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Rs" role="1PaTwD">
            <property role="3oM_SC" value="system" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Rt" role="1PaTwD">
            <property role="3oM_SC" value="property," />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_Ru" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_Rv" role="1PaTwD">
            <property role="3oM_SC" value="By" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Rw" role="1PaTwD">
            <property role="3oM_SC" value="default" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Rx" role="1PaTwD">
            <property role="3oM_SC" value="set" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Ry" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Rz" role="1PaTwD">
            <property role="3oM_SC" value="false" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_R$" role="1PaTwD">
            <property role="3oM_SC" value="because" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_R_" role="1PaTwD">
            <property role="3oM_SC" value="we" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_RA" role="1PaTwD">
            <property role="3oM_SC" value="are" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_RB" role="1PaTwD">
            <property role="3oM_SC" value="unable" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_RC" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_RD" role="1PaTwD">
            <property role="3oM_SC" value="run" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_RE" role="1PaTwD">
            <property role="3oM_SC" value="without" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_RF" role="1PaTwD">
            <property role="3oM_SC" value="errors" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_RG" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_RH" role="1PaTwD">
            <property role="3oM_SC" value="our" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_RI" role="1PaTwD">
            <property role="3oM_SC" value="tests" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_RJ" role="1PaTwD">
            <property role="3oM_SC" value="when" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_RK" role="1PaTwD">
            <property role="3oM_SC" value="all" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_RL" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_RM" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_RN" role="1PaTwD">
            <property role="3oM_SC" value="plugins" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_RO" role="1PaTwD">
            <property role="3oM_SC" value="are" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_RP" role="1PaTwD">
            <property role="3oM_SC" value="on." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_RQ" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_RR" role="1PaTwD">
            <property role="3oM_SC" value="Probably" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_RS" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_RT" role="1PaTwD">
            <property role="3oM_SC" value="should" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_RU" role="1PaTwD">
            <property role="3oM_SC" value="change." />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="28TMbOSF0ab" role="jymVt">
      <property role="TrG5h" value="myTestModeOn" />
      <node concept="3Tm6S6" id="28TMbOSEYQA" role="1B3o_S" />
      <node concept="10P_77" id="28TMbOSF06_" role="1tU5fm" />
      <node concept="3clFbT" id="28TMbOSF1me" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="6rx4kZDkayQ" role="jymVt" />
    <node concept="3clFbW" id="3YQ3dO9lyd8" role="jymVt">
      <node concept="3Tm6S6" id="3YQ3dO9lyp2" role="1B3o_S" />
      <node concept="3cqZAl" id="3YQ3dO9lydb" role="3clF45" />
      <node concept="3clFbS" id="3YQ3dO9lydd" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4UQyhJFi5kG" role="jymVt" />
    <node concept="3clFb_" id="4UQyhJFic1B" role="jymVt">
      <property role="TrG5h" value="areLoadingPluginsAutomatically" />
      <node concept="3clFbS" id="4UQyhJFic1E" role="3clF47">
        <node concept="3cpWs6" id="4UQyhJFid7H" role="3cqZAp">
          <node concept="37vLTw" id="4UQyhJFid8V" role="3cqZAk">
            <ref role="3cqZAo" node="4UQyhJFi2v7" resolve="myAutomaticPluginsDiscoveryMode" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4UQyhJFi6I8" role="1B3o_S" />
      <node concept="10P_77" id="4UQyhJFi7$B" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3eUNqOk73fg" role="jymVt" />
    <node concept="3clFb_" id="5UWB9tjYeB" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPlugins" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="2hMVRd" id="5hfNQWynSrh" role="3clF45">
        <node concept="3uibUv" id="7bo6V6sLurL" role="2hN53Y">
          <ref role="3uigEE" to="asz6:r$A3E5vV_o" resolve="PluginData" />
        </node>
      </node>
      <node concept="3clFbS" id="5UWB9tjYeE" role="3clF47">
        <node concept="3clFbJ" id="4UQyhJFi9Vt" role="3cqZAp">
          <node concept="3clFbS" id="4UQyhJFi9Vv" role="3clFbx">
            <node concept="YS8fn" id="4UQyhJFib06" role="3cqZAp">
              <node concept="2ShNRf" id="4UQyhJFib11" role="YScLw">
                <node concept="1pGfFk" id="4UQyhJFibBU" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                  <node concept="Xl_RD" id="4UQyhJFibEN" role="37wK5m">
                    <property role="Xl_RC" value="The flag 'myAutoLoadPluginsMode' is set, nothing to return" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="4UQyhJFiaUm" role="3clFbw">
            <ref role="3cqZAo" node="4UQyhJFi2v7" resolve="myAutomaticPluginsDiscoveryMode" />
          </node>
        </node>
        <node concept="3cpWs6" id="MVJ1IE7WZh" role="3cqZAp">
          <node concept="2OqwBi" id="MVJ1IE7WZi" role="3cqZAk">
            <node concept="26Dbio" id="MVJ1IE7WZj" role="2OqNvi" />
            <node concept="37vLTw" id="MVJ1IE7WZk" role="2Oq$k0">
              <ref role="3cqZAo" node="6rx4kZDkyzy" resolve="myPlugins" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5UWB9tjYcj" role="1B3o_S" />
      <node concept="2AHcQZ" id="2$4oShLakR9" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="2jln2Vr3Ctz" role="jymVt" />
    <node concept="3clFb_" id="5UWB9tk4n9" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getMacros" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="5UWB9tk4nc" role="3clF47">
        <node concept="3cpWs6" id="MVJ1IE7WQ3" role="3cqZAp">
          <node concept="2YIFZM" id="MVJ1IE7WQ4" role="3cqZAk">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableMap(java.util.Map)" resolve="unmodifiableMap" />
            <node concept="37vLTw" id="MVJ1IE7WQ5" role="37wK5m">
              <ref role="3cqZAo" node="6rx4kZDkaHn" resolve="myMacros" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5UWB9tk2Nw" role="1B3o_S" />
      <node concept="3rvAFt" id="5UWB9tk2PQ" role="3clF45">
        <node concept="3uibUv" id="5UWB9tk4n7" role="3rvSg0">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
        <node concept="17QB3L" id="5UWB9tk2PW" role="3rvQeY" />
      </node>
    </node>
    <node concept="2tJIrI" id="2jln2Vr3B3k" role="jymVt" />
    <node concept="3clFb_" id="5UWB9tkma7" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getLibs" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="2hMVRd" id="5hfNQWynTMJ" role="3clF45">
        <node concept="17QB3L" id="DMIDDhgwpH" role="2hN53Y" />
      </node>
      <node concept="3clFbS" id="5UWB9tkmaa" role="3clF47">
        <node concept="3cpWs6" id="MVJ1IE7WwT" role="3cqZAp">
          <node concept="2OqwBi" id="MVJ1IE7WwU" role="3cqZAk">
            <node concept="37vLTw" id="MVJ1IE7WwV" role="2Oq$k0">
              <ref role="3cqZAo" node="6rx4kZDkyOs" resolve="myLibs" />
            </node>
            <node concept="26Dbio" id="MVJ1IE7WwW" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5UWB9tkm4s" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="12CYGR0ZJNx" role="jymVt" />
    <node concept="3clFb_" id="12CYGR0ZMV5" role="jymVt">
      <property role="TrG5h" value="doesCreatePluginClassLoaders" />
      <node concept="3clFbS" id="12CYGR0ZMV8" role="3clF47">
        <node concept="3cpWs6" id="12CYGR0ZO2p" role="3cqZAp">
          <node concept="37vLTw" id="12CYGR0ZO3z" role="3cqZAk">
            <ref role="3cqZAo" node="12CYGR0ZIor" resolve="myCreatePluginClassLoaders" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="12CYGR0ZLyP" role="1B3o_S" />
      <node concept="10P_77" id="12CYGR0ZMS4" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3YQ3dO9ly4R" role="jymVt" />
    <node concept="3clFb_" id="6rx4kZDk6GC" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addPlugin" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="6rx4kZDk6GF" role="3clF47">
        <node concept="3clFbJ" id="5P325eDotty" role="3cqZAp">
          <node concept="3clFbS" id="5P325eDott$" role="3clFbx">
            <node concept="RRSsy" id="5P325eDovjm" role="3cqZAp">
              <property role="RRSoG" value="gZ5fksE/warn" />
              <node concept="2YIFZM" id="5P325eDo_RX" role="RRSoy">
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="Xl_RD" id="5P325eDo_RY" role="37wK5m">
                  <property role="Xl_RC" value="Not adding the plugin=%s; path=%s, since the automatic mode is on" />
                </node>
                <node concept="37vLTw" id="1kADmUn6XqX" role="37wK5m">
                  <ref role="3cqZAo" node="3FVfMMI0_S2" resolve="id" />
                </node>
                <node concept="37vLTw" id="5P325eDo_RZ" role="37wK5m">
                  <ref role="3cqZAo" node="7lKcB_1uNEu" resolve="path" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="5P325eDoucE" role="3clFbw">
            <ref role="3cqZAo" node="4UQyhJFi2v7" resolve="myAutomaticPluginsDiscoveryMode" />
          </node>
        </node>
        <node concept="3cpWs8" id="7lKcB_1uGKF" role="3cqZAp">
          <node concept="3cpWsn" id="7lKcB_1uGKG" role="3cpWs9">
            <property role="TrG5h" value="pluginLocation" />
            <node concept="3uibUv" id="7lKcB_1uGKH" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="7lKcB_1uGKI" role="33vP2m">
              <node concept="1pGfFk" id="7lKcB_1uGKJ" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                <node concept="37vLTw" id="5avE1b7w9zg" role="37wK5m">
                  <ref role="3cqZAo" node="7lKcB_1uNEu" resolve="path" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1ROuiHUGi_" role="3cqZAp">
          <node concept="3clFbS" id="1ROuiHUGiB" role="3clFbx">
            <node concept="RRSsy" id="1ROuiHUJAX" role="3cqZAp">
              <property role="RRSoG" value="gZ5fksE/warn" />
              <node concept="2YIFZM" id="1ROuiHUJM7" role="RRSoy">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <node concept="Xl_RD" id="1ROuiHUJAZ" role="37wK5m">
                  <property role="Xl_RC" value="Can't load plugin. Plugin file or folder was not found: %s" />
                </node>
                <node concept="37vLTw" id="5zGxXCm8Yyr" role="37wK5m">
                  <ref role="3cqZAo" node="7lKcB_1uNEu" resolve="path" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7lKcB_1uZak" role="3cqZAp">
              <node concept="Xjq3P" id="7lKcB_1v0NI" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="1ROuiHUGq0" role="3clFbw">
            <node concept="2OqwBi" id="1ROuiHUGq2" role="3fr31v">
              <node concept="37vLTw" id="5avE1b7wilO" role="2Oq$k0">
                <ref role="3cqZAo" node="7lKcB_1uGKG" resolve="pluginLocation" />
              </node>
              <node concept="liA8E" id="1ROuiHUGq7" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7lKcB_1utTp" role="3cqZAp" />
        <node concept="3clFbF" id="6rx4kZDkzxM" role="3cqZAp">
          <node concept="2OqwBi" id="6rx4kZDk$lq" role="3clFbG">
            <node concept="TSZUe" id="6rx4kZDkBM4" role="2OqNvi">
              <node concept="2ShNRf" id="3FVfMMI0AQJ" role="25WWJ7">
                <node concept="1pGfFk" id="3FVfMMI0Z2f" role="2ShVmc">
                  <ref role="37wK5l" to="asz6:4OPNMy23eT$" resolve="PluginData" />
                  <node concept="2OqwBi" id="7lKcB_1v2sN" role="37wK5m">
                    <node concept="37vLTw" id="5avE1b7wh0v" role="2Oq$k0">
                      <ref role="3cqZAo" node="7lKcB_1uGKG" resolve="pluginLocation" />
                    </node>
                    <node concept="liA8E" id="5avE1b7whtG" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3FVfMMI0ZxU" role="37wK5m">
                    <ref role="3cqZAo" node="3FVfMMI0_S2" resolve="id" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6rx4kZDkzxL" role="2Oq$k0">
              <ref role="3cqZAo" node="6rx4kZDkyzy" resolve="myPlugins" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6rx4kZDk8ma" role="3cqZAp">
          <node concept="Xjq3P" id="6rx4kZDk8m9" role="3clFbG" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6rx4kZDk6Gv" role="1B3o_S" />
      <node concept="3uibUv" id="6rx4kZDk6GA" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
      <node concept="37vLTG" id="7lKcB_1uNEu" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="17QB3L" id="7lKcB_1uP88" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3FVfMMI0_S2" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="3FVfMMI0_Sc" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2jln2Vr3IKK" role="jymVt" />
    <node concept="3clFb_" id="6rx4kZDk6LY" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addMacro" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="6rx4kZDk6M1" role="3clF47">
        <node concept="3clFbF" id="6rx4kZDkwQl" role="3cqZAp">
          <node concept="37vLTI" id="6rx4kZDky2N" role="3clFbG">
            <node concept="37vLTw" id="6rx4kZDky8A" role="37vLTx">
              <ref role="3cqZAo" node="6rx4kZDk6Mi" resolve="macroValue" />
            </node>
            <node concept="3EllGN" id="6rx4kZDkxxR" role="37vLTJ">
              <node concept="37vLTw" id="6rx4kZDkxBv" role="3ElVtu">
                <ref role="3cqZAo" node="6rx4kZDk6Me" resolve="macroName" />
              </node>
              <node concept="37vLTw" id="6rx4kZDkwQk" role="3ElQJh">
                <ref role="3cqZAo" node="6rx4kZDkaHn" resolve="myMacros" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6rx4kZDk8mo" role="3cqZAp">
          <node concept="Xjq3P" id="6rx4kZDk8mn" role="3clFbG" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6rx4kZDk6Ka" role="1B3o_S" />
      <node concept="3uibUv" id="6rx4kZDk6LW" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
      <node concept="37vLTG" id="6rx4kZDk6Me" role="3clF46">
        <property role="TrG5h" value="macroName" />
        <node concept="17QB3L" id="6rx4kZDk6Md" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6rx4kZDk6Mi" role="3clF46">
        <property role="TrG5h" value="macroValue" />
        <node concept="3uibUv" id="6rx4kZDk8lf" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2jln2Vr3HBE" role="jymVt" />
    <node concept="3clFb_" id="6rx4kZDk8ph" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addLib" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="6rx4kZDk8pk" role="3clF47">
        <node concept="3clFbF" id="MVJ1IE7Ze$" role="3cqZAp">
          <node concept="2OqwBi" id="MVJ1IE7ZAR" role="3clFbG">
            <node concept="37vLTw" id="MVJ1IE7Zey" role="2Oq$k0">
              <ref role="3cqZAo" node="6rx4kZDkyOs" resolve="myLibs" />
            </node>
            <node concept="TSZUe" id="MVJ1IE80zE" role="2OqNvi">
              <node concept="37vLTw" id="MVJ1IE81Ng" role="25WWJ7">
                <ref role="3cqZAo" node="6rx4kZDk8zb" resolve="libPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6rx4kZDk8zu" role="3cqZAp">
          <node concept="Xjq3P" id="6rx4kZDk8zt" role="3clFbG" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6rx4kZDk8oP" role="1B3o_S" />
      <node concept="3uibUv" id="6rx4kZDk8pf" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
      <node concept="37vLTG" id="6rx4kZDk8zb" role="3clF46">
        <property role="TrG5h" value="libPath" />
        <node concept="17QB3L" id="DMIDDhgxQL" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="12CYGR0ZONm" role="jymVt" />
    <node concept="3clFb_" id="12CYGR0ZVly" role="jymVt">
      <property role="TrG5h" value="setCreatePluginClassLoaders" />
      <node concept="3clFbS" id="12CYGR0ZVl_" role="3clF47">
        <node concept="3clFbF" id="12CYGR0ZXSA" role="3cqZAp">
          <node concept="37vLTI" id="12CYGR0ZYiG" role="3clFbG">
            <node concept="37vLTw" id="12CYGR0ZYnP" role="37vLTx">
              <ref role="3cqZAo" node="12CYGR0ZWtT" resolve="value" />
            </node>
            <node concept="37vLTw" id="12CYGR0ZXS_" role="37vLTJ">
              <ref role="3cqZAo" node="12CYGR0ZIor" resolve="myCreatePluginClassLoaders" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="12CYGR0ZZUv" role="3cqZAp">
          <node concept="Xjq3P" id="12CYGR0ZZVa" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="12CYGR0ZQkB" role="1B3o_S" />
      <node concept="3uibUv" id="12CYGR0ZREz" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
      <node concept="37vLTG" id="12CYGR0ZWtT" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="10P_77" id="12CYGR0ZWtS" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="3x_lgCAhpx_" role="jymVt" />
    <node concept="3clFb_" id="6rx4kZDkOYs" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="withDefaultSamples" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="6rx4kZDkOYv" role="3clF47">
        <node concept="3clFbF" id="5UWB9tjEsh" role="3cqZAp">
          <node concept="1rXfSq" id="5UWB9tjEsg" role="3clFbG">
            <ref role="37wK5l" node="6rx4kZDk6LY" resolve="addMacro" />
            <node concept="Xl_RD" id="5UWB9tjEsD" role="37wK5m">
              <property role="Xl_RC" value="samples_home" />
            </node>
            <node concept="2ShNRf" id="6rx4kZDlrwg" role="37wK5m">
              <node concept="1pGfFk" id="6rx4kZDlvjI" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="File" />
                <node concept="2YIFZM" id="6rx4kZDlwez" role="37wK5m">
                  <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                  <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String)" resolve="getProperty" />
                  <node concept="Xl_RD" id="6rx4kZDlwiJ" role="37wK5m">
                    <property role="Xl_RC" value="user.dir" />
                  </node>
                </node>
                <node concept="Xl_RD" id="6rx4kZDlwTv" role="37wK5m">
                  <property role="Xl_RC" value="samples" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6rx4kZDkOWZ" role="1B3o_S" />
      <node concept="3uibUv" id="6rx4kZDkOYq" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
    </node>
    <node concept="2tJIrI" id="MVJ1IE6_iq" role="jymVt" />
    <node concept="3clFb_" id="5UWB9tiBhc" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="withDefaultPlugins" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="5UWB9tiBhf" role="3clF47">
        <node concept="3cpWs6" id="3oGpQhnFvdS" role="3cqZAp">
          <node concept="2OqwBi" id="2btCvgzGaeQ" role="3cqZAk">
            <node concept="2OqwBi" id="2btCvgzG7mH" role="2Oq$k0">
              <node concept="2OqwBi" id="16v2a1850Tv" role="2Oq$k0">
                <node concept="1rXfSq" id="3oGpQhnFwHD" role="2Oq$k0">
                  <ref role="37wK5l" node="6BLo1MgrFYe" resolve="withCorePlugin" />
                </node>
                <node concept="liA8E" id="16v2a1852RX" role="2OqNvi">
                  <ref role="37wK5l" node="16v2a184MZE" resolve="withRepositoryPlugin" />
                </node>
              </node>
              <node concept="liA8E" id="2btCvgzG8Er" role="2OqNvi">
                <ref role="37wK5l" node="2btCvgzFoBq" resolve="withTestingPlugin" />
              </node>
            </node>
            <node concept="liA8E" id="2btCvgzGbP3" role="2OqNvi">
              <ref role="37wK5l" node="2btCvgzFJ_H" resolve="withMakePlugin" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5UWB9tiBfe" role="1B3o_S" />
      <node concept="3uibUv" id="5UWB9tiBha" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
    </node>
    <node concept="2tJIrI" id="6BLo1MgrxLw" role="jymVt" />
    <node concept="3clFb_" id="6BLo1MgrCpf" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="withVcsPlugin" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6BLo1MgrCpg" role="3clF47">
        <node concept="3cpWs6" id="6BLo1MgrCph" role="3cqZAp">
          <node concept="2OqwBi" id="2btCvgzGq3g" role="3cqZAk">
            <node concept="2OqwBi" id="3l54ejtXnRV" role="2Oq$k0">
              <node concept="2OqwBi" id="7ZTspgD769p" role="2Oq$k0">
                <node concept="liA8E" id="7ZTspgD77w6" role="2OqNvi">
                  <ref role="37wK5l" node="7ZTspgD72Ha" resolve="withSubversionPlugin" />
                </node>
                <node concept="2OqwBi" id="5Ks7c$vfHVI" role="2Oq$k0">
                  <node concept="1rXfSq" id="6BLo1MgrCpi" role="2Oq$k0">
                    <ref role="37wK5l" node="5avE1b7v6tC" resolve="addDistributedPlugin" />
                    <node concept="Xl_RD" id="6BLo1MgrCpj" role="37wK5m">
                      <property role="Xl_RC" value="mps-vcs" />
                    </node>
                    <node concept="Xl_RD" id="6BLo1MgrCpk" role="37wK5m">
                      <property role="Xl_RC" value="jetbrains.mps.vcs" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5Ks7c$vfImO" role="2OqNvi">
                    <ref role="37wK5l" node="6BLo1MgrGos" resolve="withGit4IdeaPlugin" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3l54ejtXqRm" role="2OqNvi">
                <ref role="37wK5l" node="245jbU$BLCn" resolve="withGit4IdeaStubsPlugin" />
              </node>
            </node>
            <node concept="liA8E" id="2btCvgzGqU1" role="2OqNvi">
              <ref role="37wK5l" node="6BLo1MgrFYe" resolve="withCorePlugin" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6BLo1MgrCpl" role="1B3o_S" />
      <node concept="3uibUv" id="6BLo1MgrCpm" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ZTspgD70wj" role="jymVt" />
    <node concept="3clFb_" id="7ZTspgD72Ha" role="jymVt">
      <property role="TrG5h" value="withSubversionPlugin" />
      <node concept="3clFbS" id="7ZTspgD72Hb" role="3clF47">
        <node concept="3cpWs6" id="7ZTspgD72Hc" role="3cqZAp">
          <node concept="1rXfSq" id="7ZTspgD72Hd" role="3cqZAk">
            <ref role="37wK5l" node="5avE1b7v6tC" resolve="addDistributedPlugin" />
            <node concept="Xl_RD" id="7ZTspgD72He" role="37wK5m">
              <property role="Xl_RC" value="vcs-svn" />
            </node>
            <node concept="Xl_RD" id="7ZTspgD72Hf" role="37wK5m">
              <property role="Xl_RC" value="Subversion" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7ZTspgD72Hg" role="1B3o_S" />
      <node concept="3uibUv" id="7ZTspgD72Hh" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
    </node>
    <node concept="2tJIrI" id="6BLo1MgrCMa" role="jymVt" />
    <node concept="3clFb_" id="6BLo1MgrFYe" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="withCorePlugin" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6BLo1MgrFYf" role="3clF47">
        <node concept="3cpWs6" id="6BLo1MgrFYg" role="3cqZAp">
          <node concept="1rXfSq" id="6BLo1MgrFYh" role="3cqZAk">
            <ref role="37wK5l" node="5avE1b7v6tC" resolve="addDistributedPlugin" />
            <node concept="Xl_RD" id="6BLo1MgrFYi" role="37wK5m">
              <property role="Xl_RC" value="mps-core" />
            </node>
            <node concept="Xl_RD" id="6BLo1MgrFYj" role="37wK5m">
              <property role="Xl_RC" value="jetbrains.mps.core" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6BLo1MgrFYk" role="1B3o_S" />
      <node concept="3uibUv" id="6BLo1MgrFYl" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jpAAQ6WDgQ" role="jymVt" />
    <node concept="3clFb_" id="16v2a184MZE" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="withRepositoryPlugin" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="16v2a184MZF" role="3clF47">
        <node concept="3cpWs6" id="16v2a184MZG" role="3cqZAp">
          <node concept="1rXfSq" id="16v2a184WFe" role="3cqZAk">
            <ref role="37wK5l" node="5avE1b7v6tC" resolve="addDistributedPlugin" />
            <node concept="Xl_RD" id="16v2a184MZM" role="37wK5m">
              <property role="Xl_RC" value="mps-repository" />
            </node>
            <node concept="Xl_RD" id="16v2a184MZN" role="37wK5m">
              <property role="Xl_RC" value="jetbrains.mps.repository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="16v2a184MZO" role="1B3o_S" />
      <node concept="3uibUv" id="16v2a184MZP" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
    </node>
    <node concept="2tJIrI" id="16v2a184MZD" role="jymVt" />
    <node concept="3clFb_" id="5jpAAQ6WBiG" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="withIDEPlugin" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5jpAAQ6WBiH" role="3clF47">
        <node concept="3cpWs6" id="5jpAAQ6WBiI" role="3cqZAp">
          <node concept="2OqwBi" id="3CfuMAm1Qdv" role="3cqZAk">
            <node concept="1rXfSq" id="5jpAAQ6WBiJ" role="2Oq$k0">
              <ref role="37wK5l" node="5avE1b7v6tC" resolve="addDistributedPlugin" />
              <node concept="Xl_RD" id="5jpAAQ6WBiK" role="37wK5m">
                <property role="Xl_RC" value="mps-rcp" />
              </node>
              <node concept="Xl_RD" id="5jpAAQ6WBiL" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.rcp" />
              </node>
            </node>
            <node concept="liA8E" id="3CfuMAm1RpZ" role="2OqNvi">
              <ref role="37wK5l" node="5avE1b7v6tC" resolve="addDistributedPlugin" />
              <node concept="Xl_RD" id="3CfuMAm1Tpi" role="37wK5m">
                <property role="Xl_RC" value="mps-ide" />
              </node>
              <node concept="Xl_RD" id="3CfuMAm1Tpj" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.ide" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5jpAAQ6WBiM" role="1B3o_S" />
      <node concept="3uibUv" id="5jpAAQ6WBiN" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
    </node>
    <node concept="2tJIrI" id="2btCvgzFLl1" role="jymVt" />
    <node concept="3clFb_" id="2btCvgzFJ_H" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="withMakePlugin" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2btCvgzFJ_I" role="3clF47">
        <node concept="3cpWs6" id="2btCvgzFPl$" role="3cqZAp">
          <node concept="2OqwBi" id="rB9yNGkm2m" role="3cqZAk">
            <node concept="2OqwBi" id="2btCvgzFRtS" role="2Oq$k0">
              <node concept="1rXfSq" id="2btCvgzFQg3" role="2Oq$k0">
                <ref role="37wK5l" node="6BLo1MgrFYe" resolve="withCorePlugin" />
              </node>
              <node concept="liA8E" id="2btCvgzFSuX" role="2OqNvi">
                <ref role="37wK5l" node="5avE1b7v6tC" resolve="addDistributedPlugin" />
                <node concept="Xl_RD" id="2btCvgzFTbQ" role="37wK5m">
                  <property role="Xl_RC" value="mps-make" />
                </node>
                <node concept="Xl_RD" id="2btCvgzFYS1" role="37wK5m">
                  <property role="Xl_RC" value="jetbrains.mps.ide.make" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="rB9yNGko0t" role="2OqNvi">
              <ref role="37wK5l" node="5avE1b7v6tC" resolve="addDistributedPlugin" />
              <node concept="Xl_RD" id="rB9yNGkpB9" role="37wK5m">
                <property role="Xl_RC" value="java" />
              </node>
              <node concept="Xl_RD" id="rB9yNGku4L" role="37wK5m">
                <property role="Xl_RC" value="com.intellij.java" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2btCvgzFJ_N" role="1B3o_S" />
      <node concept="3uibUv" id="2btCvgzFJ_O" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
    </node>
    <node concept="2tJIrI" id="2btCvgzFpPP" role="jymVt" />
    <node concept="3clFb_" id="2btCvgzFoBq" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="withTestingPlugin" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2btCvgzFoBr" role="3clF47">
        <node concept="3cpWs6" id="2btCvgzFG60" role="3cqZAp">
          <node concept="2OqwBi" id="2btCvgzFG61" role="3cqZAk">
            <node concept="liA8E" id="2btCvgzFG63" role="2OqNvi">
              <ref role="37wK5l" node="5avE1b7v6tC" resolve="addDistributedPlugin" />
              <node concept="Xl_RD" id="2btCvgzFG64" role="37wK5m">
                <property role="Xl_RC" value="mps-testing" />
              </node>
              <node concept="Xl_RD" id="2btCvgzFG65" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.testing" />
              </node>
            </node>
            <node concept="2OqwBi" id="2_zhCSIFvHE" role="2Oq$k0">
              <node concept="2OqwBi" id="5jpAAQ6WKFQ" role="2Oq$k0">
                <node concept="1rXfSq" id="2btCvgzFG62" role="2Oq$k0">
                  <ref role="37wK5l" node="6BLo1MgrFYe" resolve="withCorePlugin" />
                </node>
                <node concept="liA8E" id="5jpAAQ6WMn_" role="2OqNvi">
                  <ref role="37wK5l" node="5jpAAQ6WBiG" resolve="withIDEPlugin" />
                </node>
              </node>
              <node concept="liA8E" id="2_zhCSIFwWR" role="2OqNvi">
                <ref role="37wK5l" node="5avE1b7v6tC" resolve="addDistributedPlugin" />
                <node concept="Xl_RD" id="2_zhCSIFxWL" role="37wK5m">
                  <property role="Xl_RC" value="mps-junit5" />
                </node>
                <node concept="Xl_RD" id="2_zhCSIFC5R" role="37wK5m">
                  <property role="Xl_RC" value="jetbrains.mps.junit5" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2btCvgzFoBw" role="1B3o_S" />
      <node concept="3uibUv" id="2btCvgzFoBx" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
    </node>
    <node concept="2tJIrI" id="6BLo1MgrGor" role="jymVt" />
    <node concept="3clFb_" id="6BLo1MgrGos" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="withGit4IdeaPlugin" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6BLo1MgrGot" role="3clF47">
        <node concept="3cpWs6" id="6BLo1MgrGou" role="3cqZAp">
          <node concept="1rXfSq" id="6BLo1MgrOXz" role="3cqZAk">
            <ref role="37wK5l" node="5avE1b7v6tC" resolve="addDistributedPlugin" />
            <node concept="Xl_RD" id="6BLo1MgrPn1" role="37wK5m">
              <property role="Xl_RC" value="vcs-git" />
            </node>
            <node concept="Xl_RD" id="6BLo1MgrSoh" role="37wK5m">
              <property role="Xl_RC" value="Git4Idea" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6BLo1MgrGoy" role="1B3o_S" />
      <node concept="3uibUv" id="6BLo1MgrGoz" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
    </node>
    <node concept="2tJIrI" id="245jbU$BLIk" role="jymVt" />
    <node concept="3clFb_" id="245jbU$BLCn" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="withGit4IdeaStubsPlugin" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="245jbU$BLCo" role="3clF47">
        <node concept="3cpWs6" id="245jbU$BLCp" role="3cqZAp">
          <node concept="1rXfSq" id="245jbU$BLCq" role="3cqZAk">
            <ref role="37wK5l" node="5avE1b7v6tC" resolve="addDistributedPlugin" />
            <node concept="Xl_RD" id="245jbU$BLCr" role="37wK5m">
              <property role="Xl_RC" value="mps-git4idea" />
            </node>
            <node concept="Xl_RD" id="245jbU$BLCs" role="37wK5m">
              <property role="Xl_RC" value="jetbrains.mps.git4idea.stubs" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="245jbU$BLCt" role="1B3o_S" />
      <node concept="3uibUv" id="245jbU$BLCu" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
    </node>
    <node concept="2tJIrI" id="ECLZhkqBgL" role="jymVt" />
    <node concept="3clFb_" id="ECLZhkqBgM" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="withBuildPlugin" />
      <node concept="3clFbS" id="ECLZhkqBgN" role="3clF47">
        <node concept="3cpWs6" id="ECLZhkqBgO" role="3cqZAp">
          <node concept="2OqwBi" id="2btCvgzGmNs" role="3cqZAk">
            <node concept="1rXfSq" id="ECLZhkqBgP" role="2Oq$k0">
              <ref role="37wK5l" node="5avE1b7v6tC" resolve="addDistributedPlugin" />
              <node concept="Xl_RD" id="ECLZhkqBgQ" role="37wK5m">
                <property role="Xl_RC" value="mps-build" />
              </node>
              <node concept="Xl_RD" id="ECLZhkqBgR" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build" />
              </node>
            </node>
            <node concept="liA8E" id="2btCvgzGoqM" role="2OqNvi">
              <ref role="37wK5l" node="6BLo1MgrFYe" resolve="withCorePlugin" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="ECLZhkqBgS" role="1B3o_S" />
      <node concept="3uibUv" id="ECLZhkqBgT" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
    </node>
    <node concept="2tJIrI" id="5n6GrsWj4O7" role="jymVt" />
    <node concept="3clFb_" id="5n6GrsWj66a" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="withKotlinPlugin" />
      <node concept="3clFbS" id="5n6GrsWj66b" role="3clF47">
        <node concept="3cpWs6" id="5n6GrsWj66c" role="3cqZAp">
          <node concept="2OqwBi" id="2btCvgzGl7i" role="3cqZAk">
            <node concept="1rXfSq" id="5n6GrsWj66d" role="2Oq$k0">
              <ref role="37wK5l" node="5avE1b7v6tC" resolve="addDistributedPlugin" />
              <node concept="Xl_RD" id="5n6GrsWj66e" role="37wK5m">
                <property role="Xl_RC" value="mps-kotlin" />
              </node>
              <node concept="Xl_RD" id="5n6GrsWj66f" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.kotlin" />
              </node>
            </node>
            <node concept="liA8E" id="2btCvgzGm6m" role="2OqNvi">
              <ref role="37wK5l" node="6BLo1MgrFYe" resolve="withCorePlugin" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5n6GrsWj66g" role="1B3o_S" />
      <node concept="3uibUv" id="5n6GrsWj66h" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
    </node>
    <node concept="2tJIrI" id="6uGRett36_g" role="jymVt" />
    <node concept="3clFb_" id="6uGRett37Lr" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="withJavaPlugin" />
      <node concept="3clFbS" id="6uGRett37Ls" role="3clF47">
        <node concept="3cpWs6" id="6uGRett37Lt" role="3cqZAp">
          <node concept="2OqwBi" id="2btCvgzGi8q" role="3cqZAk">
            <node concept="1rXfSq" id="6uGRett37Lu" role="2Oq$k0">
              <ref role="37wK5l" node="5avE1b7v6tC" resolve="addDistributedPlugin" />
              <node concept="Xl_RD" id="6uGRett37Lv" role="37wK5m">
                <property role="Xl_RC" value="mps-java" />
              </node>
              <node concept="Xl_RD" id="6uGRett37Lw" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.ide.java" />
              </node>
            </node>
            <node concept="liA8E" id="2btCvgzGjXe" role="2OqNvi">
              <ref role="37wK5l" node="6BLo1MgrFYe" resolve="withCorePlugin" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6uGRett37Lx" role="1B3o_S" />
      <node concept="3uibUv" id="6uGRett37Ly" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
    </node>
    <node concept="2tJIrI" id="1CvX25dz887" role="jymVt" />
    <node concept="3clFb_" id="1CvX25dz6g2" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="withDebuggerPlugin" />
      <node concept="3clFbS" id="1CvX25dz6g3" role="3clF47">
        <node concept="3clFbJ" id="2bvzdxLP7Cv" role="3cqZAp">
          <node concept="3clFbS" id="2bvzdxLP7D6" role="3clFbx">
            <node concept="3SKdUt" id="6maaEP0wjzI" role="3cqZAp">
              <node concept="1PaTwC" id="6maaEP0wjzJ" role="1aUNEU">
                <node concept="3oM_SD" id="6maaEP0wj_1" role="1PaTwD">
                  <property role="3oM_SC" value="we're" />
                </node>
                <node concept="3oM_SD" id="6maaEP0wj_3" role="1PaTwD">
                  <property role="3oM_SC" value="running" />
                </node>
                <node concept="3oM_SD" id="6maaEP0wj_6" role="1PaTwD">
                  <property role="3oM_SC" value="from" />
                </node>
                <node concept="3oM_SD" id="6maaEP0wj_a" role="1PaTwD">
                  <property role="3oM_SC" value="app" />
                </node>
                <node concept="3oM_SD" id="6maaEP0wj_f" role="1PaTwD">
                  <property role="3oM_SC" value="bundle/installed" />
                </node>
                <node concept="3oM_SD" id="6maaEP0wjCd" role="1PaTwD">
                  <property role="3oM_SC" value="app" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2bvzdxLPfmV" role="3cqZAp">
              <node concept="2OqwBi" id="2bvzdxLPfmW" role="3cqZAk">
                <node concept="liA8E" id="2bvzdxLPfmX" role="2OqNvi">
                  <ref role="37wK5l" node="5avE1b7v6tC" resolve="addDistributedPlugin" />
                  <node concept="Xl_RD" id="2bvzdxLPfmY" role="37wK5m">
                    <property role="Xl_RC" value="mps-execution-api" />
                  </node>
                  <node concept="Xl_RD" id="2bvzdxLPfmZ" role="37wK5m">
                    <property role="Xl_RC" value="jetbrains.mps.execution.api" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2bvzdxLPfn0" role="2Oq$k0">
                  <node concept="1rXfSq" id="2bvzdxLPfn1" role="2Oq$k0">
                    <ref role="37wK5l" node="5avE1b7v6tC" resolve="addDistributedPlugin" />
                    <node concept="Xl_RD" id="2bvzdxLPfn2" role="37wK5m">
                      <property role="Xl_RC" value="mps-debugger-api" />
                    </node>
                    <node concept="Xl_RD" id="2bvzdxLPfn3" role="37wK5m">
                      <property role="Xl_RC" value="jetbrains.mps.debugger.api" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2bvzdxLPfn4" role="2OqNvi">
                    <ref role="37wK5l" node="5avE1b7v6tC" resolve="addDistributedPlugin" />
                    <node concept="Xl_RD" id="2bvzdxLPfn5" role="37wK5m">
                      <property role="Xl_RC" value="mps-debugger-java" />
                    </node>
                    <node concept="Xl_RD" id="2bvzdxLPfn6" role="37wK5m">
                      <property role="Xl_RC" value="jetbrains.mps.debugger.java" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="2bvzdxLPbBE" role="9aQIa">
            <node concept="3clFbS" id="2bvzdxLPbBF" role="9aQI4">
              <node concept="3cpWs6" id="1CvX25dz6g4" role="3cqZAp">
                <node concept="2OqwBi" id="5g8XZ9ose7e" role="3cqZAk">
                  <node concept="liA8E" id="5g8XZ9osfHx" role="2OqNvi">
                    <ref role="37wK5l" node="5avE1b7v6tC" resolve="addDistributedPlugin" />
                    <node concept="Xl_RD" id="5g8XZ9osgFv" role="37wK5m">
                      <property role="Xl_RC" value="execution-api" />
                    </node>
                    <node concept="Xl_RD" id="5g8XZ9oslNj" role="37wK5m">
                      <property role="Xl_RC" value="jetbrains.mps.execution.api" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1CvX25dznAc" role="2Oq$k0">
                    <node concept="1rXfSq" id="1CvX25dz6g5" role="2Oq$k0">
                      <ref role="37wK5l" node="5avE1b7v6tC" resolve="addDistributedPlugin" />
                      <node concept="Xl_RD" id="1CvX25dz6g6" role="37wK5m">
                        <property role="Xl_RC" value="debugger-api" />
                      </node>
                      <node concept="Xl_RD" id="1CvX25dz6g7" role="37wK5m">
                        <property role="Xl_RC" value="jetbrains.mps.debugger.api" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1CvX25dzoTL" role="2OqNvi">
                      <ref role="37wK5l" node="5avE1b7v6tC" resolve="addDistributedPlugin" />
                      <node concept="Xl_RD" id="1CvX25dzpVL" role="37wK5m">
                        <property role="Xl_RC" value="debugger-java" />
                      </node>
                      <node concept="Xl_RD" id="1CvX25dzs8j" role="37wK5m">
                        <property role="Xl_RC" value="jetbrains.mps.debugger.java" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="7EsLhjgusaZ" role="3clFbw">
            <node concept="2YIFZM" id="7EsLhjgusb1" role="3fr31v">
              <ref role="37wK5l" to="18ew:~PathManager.isFromSources()" resolve="isFromSources" />
              <ref role="1Pybhc" to="18ew:~PathManager" resolve="PathManager" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1CvX25dz6g8" role="1B3o_S" />
      <node concept="3uibUv" id="1CvX25dz6g9" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
    </node>
    <node concept="2tJIrI" id="10LLDHmfbtF" role="jymVt" />
    <node concept="3clFb_" id="10LLDHmf9nE" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="withExecutionPlugins" />
      <node concept="3clFbS" id="10LLDHmf9nF" role="3clF47">
        <node concept="3cpWs8" id="10LLDHmfsnC" role="3cqZAp">
          <node concept="3cpWsn" id="10LLDHmfsnD" role="3cpWs9">
            <property role="TrG5h" value="ec" />
            <node concept="3uibUv" id="10LLDHmfrrN" role="1tU5fm">
              <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
            </node>
            <node concept="2OqwBi" id="714o3OXVc3w" role="33vP2m">
              <node concept="2OqwBi" id="10LLDHmfsnE" role="2Oq$k0">
                <node concept="1rXfSq" id="10LLDHmfsnF" role="2Oq$k0">
                  <ref role="37wK5l" node="1CvX25dz6g2" resolve="withDebuggerPlugin" />
                </node>
                <node concept="liA8E" id="10LLDHmfsnG" role="2OqNvi">
                  <ref role="37wK5l" node="2btCvgzFoBq" resolve="withTestingPlugin" />
                </node>
              </node>
              <node concept="liA8E" id="714o3OXVlCz" role="2OqNvi">
                <ref role="37wK5l" node="ECLZhkqBgM" resolve="withBuildPlugin" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="10LLDHmf9nG" role="3cqZAp">
          <node concept="3clFbS" id="10LLDHmf9nH" role="3clFbx">
            <node concept="3SKdUt" id="10LLDHmf9nI" role="3cqZAp">
              <node concept="1PaTwC" id="10LLDHmfurs" role="1aUNEU">
                <node concept="3oM_SD" id="10LLDHmfurt" role="1PaTwD">
                  <property role="3oM_SC" value="same" />
                </node>
                <node concept="3oM_SD" id="10LLDHmfwDN" role="1PaTwD">
                  <property role="3oM_SC" value="idea" />
                </node>
                <node concept="3oM_SD" id="10LLDHmfwDR" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                </node>
                <node concept="3oM_SD" id="10LLDHmfwEb" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="10LLDHmfwEw" role="1PaTwD">
                  <property role="3oM_SC" value="withDebuggerPlugin," />
                </node>
                <node concept="3oM_SD" id="10LLDHmfwFA" role="1PaTwD">
                  <property role="3oM_SC" value="above" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="10LLDHmfRYI" role="3cqZAp">
              <node concept="2OqwBi" id="10LLDHmfQOp" role="3cqZAk">
                <node concept="2OqwBi" id="10LLDHmfQOq" role="2Oq$k0">
                  <node concept="37vLTw" id="10LLDHmfQOr" role="2Oq$k0">
                    <ref role="3cqZAo" node="10LLDHmfsnD" resolve="ec" />
                  </node>
                  <node concept="liA8E" id="10LLDHmfQOs" role="2OqNvi">
                    <ref role="37wK5l" node="5avE1b7v6tC" resolve="addDistributedPlugin" />
                    <node concept="Xl_RD" id="10LLDHmfQOt" role="37wK5m">
                      <property role="Xl_RC" value="mps-execution-languages" />
                    </node>
                    <node concept="Xl_RD" id="10LLDHmfQOu" role="37wK5m">
                      <property role="Xl_RC" value="jetbrains.mps.execution.languages" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="10LLDHmfQOv" role="2OqNvi">
                  <ref role="37wK5l" node="5avE1b7v6tC" resolve="addDistributedPlugin" />
                  <node concept="Xl_RD" id="10LLDHmg0L$" role="37wK5m">
                    <property role="Xl_RC" value="mps-execution-configurations" />
                  </node>
                  <node concept="Xl_RD" id="10LLDHmg4hg" role="37wK5m">
                    <property role="Xl_RC" value="jetbrains.mps.execution.configurations" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="10LLDHmf9o3" role="9aQIa">
            <node concept="3clFbS" id="10LLDHmf9o4" role="9aQI4">
              <node concept="3cpWs6" id="10LLDHmga5U" role="3cqZAp">
                <node concept="2OqwBi" id="10LLDHmga5V" role="3cqZAk">
                  <node concept="2OqwBi" id="10LLDHmga5W" role="2Oq$k0">
                    <node concept="37vLTw" id="10LLDHmga5X" role="2Oq$k0">
                      <ref role="3cqZAo" node="10LLDHmfsnD" resolve="ec" />
                    </node>
                    <node concept="liA8E" id="10LLDHmga5Y" role="2OqNvi">
                      <ref role="37wK5l" node="5avE1b7v6tC" resolve="addDistributedPlugin" />
                      <node concept="Xl_RD" id="10LLDHmga5Z" role="37wK5m">
                        <property role="Xl_RC" value="execution-languages" />
                      </node>
                      <node concept="Xl_RD" id="10LLDHmga60" role="37wK5m">
                        <property role="Xl_RC" value="jetbrains.mps.execution.languages" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="10LLDHmga61" role="2OqNvi">
                    <ref role="37wK5l" node="5avE1b7v6tC" resolve="addDistributedPlugin" />
                    <node concept="Xl_RD" id="10LLDHmga62" role="37wK5m">
                      <property role="Xl_RC" value="execution-configurations" />
                    </node>
                    <node concept="Xl_RD" id="10LLDHmga63" role="37wK5m">
                      <property role="Xl_RC" value="jetbrains.mps.execution.configurations" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="10LLDHmf9oh" role="3clFbw">
            <node concept="2YIFZM" id="10LLDHmf9oi" role="3fr31v">
              <ref role="37wK5l" to="18ew:~PathManager.isFromSources()" resolve="isFromSources" />
              <ref role="1Pybhc" to="18ew:~PathManager" resolve="PathManager" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="10LLDHmf9oj" role="1B3o_S" />
      <node concept="3uibUv" id="10LLDHmf9ok" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
    </node>
    <node concept="2tJIrI" id="5P325eDp3Iw" role="jymVt" />
    <node concept="3clFb_" id="2btCvgzFdFi" role="jymVt">
      <property role="TrG5h" value="withModelCheckerPlugin" />
      <node concept="3clFbS" id="2btCvgzFdFl" role="3clF47">
        <node concept="3cpWs6" id="2btCvgzFhoS" role="3cqZAp">
          <node concept="1rXfSq" id="2btCvgzFhoY" role="3cqZAk">
            <ref role="37wK5l" node="5avE1b7v6tC" resolve="addDistributedPlugin" />
            <node concept="Xl_RD" id="2btCvgzFhoZ" role="37wK5m">
              <property role="Xl_RC" value="mps-modelchecker" />
            </node>
            <node concept="Xl_RD" id="2btCvgzFhp0" role="37wK5m">
              <property role="Xl_RC" value="jetbrains.mps.ide.modelchecker" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2btCvgzFc4c" role="1B3o_S" />
      <node concept="3uibUv" id="2btCvgzFdAk" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
    </node>
    <node concept="2tJIrI" id="4asrSzSFlSi" role="jymVt" />
    <node concept="3clFb_" id="4asrSzSFl5Q" role="jymVt">
      <property role="TrG5h" value="withMigrationPlugin" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="4asrSzSFl5R" role="3clF47">
        <node concept="3SKdUt" id="4142FbgXL4Y" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9fQ" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9fR" role="1PaTwD">
              <property role="3oM_SC" value="migration" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9fS" role="1PaTwD">
              <property role="3oM_SC" value="plugin" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9fT" role="1PaTwD">
              <property role="3oM_SC" value="depends" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9fU" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9fV" role="1PaTwD">
              <property role="3oM_SC" value="modelchecker," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9fW" role="1PaTwD">
              <property role="3oM_SC" value="add" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9fX" role="1PaTwD">
              <property role="3oM_SC" value="both" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4asrSzSFl5S" role="3cqZAp">
          <node concept="2OqwBi" id="24$ppaoQR8X" role="3cqZAk">
            <node concept="2OqwBi" id="4142FbgXEl9" role="2Oq$k0">
              <node concept="liA8E" id="4142FbgXElc" role="2OqNvi">
                <ref role="37wK5l" node="5avE1b7v6tC" resolve="addDistributedPlugin" />
                <node concept="Xl_RD" id="4asrSzSFl5U" role="37wK5m">
                  <property role="Xl_RC" value="mps-migration" />
                </node>
                <node concept="Xl_RD" id="4asrSzSFl5V" role="37wK5m">
                  <property role="Xl_RC" value="jetbrains.mps.ide.migration.workbench" />
                </node>
              </node>
              <node concept="1rXfSq" id="2btCvgzGgJl" role="2Oq$k0">
                <ref role="37wK5l" node="2btCvgzFdFi" resolve="withModelCheckerPlugin" />
              </node>
            </node>
            <node concept="liA8E" id="24$ppaoQSU_" role="2OqNvi">
              <ref role="37wK5l" node="5avE1b7v6tC" resolve="addDistributedPlugin" />
              <node concept="Xl_RD" id="69JNUj8e$Er" role="37wK5m">
                <property role="Xl_RC" value="mps-project-migrations" />
              </node>
              <node concept="Xl_RD" id="69JNUj8e$Es" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.ide.mpsmigration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4asrSzSFl5W" role="1B3o_S" />
      <node concept="3uibUv" id="4asrSzSFl5X" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
    </node>
    <node concept="2tJIrI" id="5avE1b7v7v3" role="jymVt" />
    <node concept="3clFb_" id="7YybdScOBt7" role="jymVt">
      <property role="TrG5h" value="withAutomaticPluginDiscovery" />
      <node concept="3clFbS" id="7YybdScOBta" role="3clF47">
        <node concept="3clFbF" id="7YybdScOFPU" role="3cqZAp">
          <node concept="37vLTI" id="7YybdScOKbN" role="3clFbG">
            <node concept="3clFbT" id="7YybdScOKXt" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="5P325eDpcAL" role="37vLTJ">
              <ref role="3cqZAo" node="4UQyhJFi2v7" resolve="myAutomaticPluginsDiscoveryMode" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7YybdScOLtJ" role="3cqZAp">
          <node concept="Xjq3P" id="7YybdScOLup" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7YybdScO_Jq" role="1B3o_S" />
      <node concept="3uibUv" id="7YybdScOBoN" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
    </node>
    <node concept="2tJIrI" id="7YybdScOzZ3" role="jymVt" />
    <node concept="3clFb_" id="5avE1b7v6tC" role="jymVt">
      <property role="TrG5h" value="addDistributedPlugin" />
      <node concept="3uibUv" id="5avE1b7vaxR" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
      <node concept="3Tm6S6" id="5avE1b7v8We" role="1B3o_S" />
      <node concept="3clFbS" id="5avE1b7v6tG" role="3clF47">
        <node concept="3SKdUt" id="5avE1b7wGQz" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9fY" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9fZ" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9g0" role="1PaTwD">
              <property role="3oM_SC" value="internal" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9g1" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9g2" role="1PaTwD">
              <property role="3oM_SC" value="only," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9g3" role="1PaTwD">
              <property role="3oM_SC" value="accepts" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9g4" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9g5" role="1PaTwD">
              <property role="3oM_SC" value="folder" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9g6" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9g7" role="1PaTwD">
              <property role="3oM_SC" value="/plugins" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5avE1b7w6Gq" role="3cqZAp">
          <node concept="3cpWsn" id="5avE1b7w6Go" role="3cpWs9">
            <property role="TrG5h" value="preinstalledPluginFolder" />
            <node concept="3uibUv" id="5avE1b7w6Gm" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="5avE1b7w6Gw" role="33vP2m">
              <node concept="1pGfFk" id="5avE1b7w6Gu" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                <node concept="2YIFZM" id="5avE1b7w6Gs" role="37wK5m">
                  <ref role="1Pybhc" to="18ew:~PathManager" resolve="PathManager" />
                  <ref role="37wK5l" to="18ew:~PathManager.getPreInstalledPluginsPath()" resolve="getPreInstalledPluginsPath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5avE1b7vkR9" role="3cqZAp">
          <node concept="1rXfSq" id="5avE1b7vgXQ" role="3cqZAk">
            <ref role="37wK5l" node="6rx4kZDk6GC" resolve="addPlugin" />
            <node concept="2OqwBi" id="5avE1b7viZ_" role="37wK5m">
              <node concept="2ShNRf" id="5avE1b7wL73" role="2Oq$k0">
                <node concept="1pGfFk" id="5avE1b7wL74" role="2ShVmc">
                  <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                  <node concept="37vLTw" id="5avE1b7wL75" role="37wK5m">
                    <ref role="3cqZAo" node="5avE1b7w6Go" resolve="preinstalledPluginFolder" />
                  </node>
                  <node concept="37vLTw" id="5avE1b7wL76" role="37wK5m">
                    <ref role="3cqZAo" node="5avE1b7vfVt" resolve="folder" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5avE1b7vkF2" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
              </node>
            </node>
            <node concept="37vLTw" id="5avE1b7vp0a" role="37wK5m">
              <ref role="3cqZAo" node="5avE1b7vmHU" resolve="id" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5avE1b7vfVt" role="3clF46">
        <property role="TrG5h" value="folder" />
        <node concept="3uibUv" id="5avE1b7vfVs" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="5avE1b7vmHU" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="3uibUv" id="5avE1b7vnTy" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3_WtNdZj_XO" role="jymVt" />
    <node concept="3clFb_" id="5mza6QqhjgL" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="withBootstrapLibraries" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="5mza6QqhjgO" role="3clF47">
        <node concept="2Gpval" id="KL8AqljyKy" role="3cqZAp">
          <node concept="2GrKxI" id="KL8AqljyKz" role="2Gsz3X">
            <property role="TrG5h" value="path" />
          </node>
          <node concept="3clFbS" id="KL8AqljyK$" role="2LFqv$">
            <node concept="3clFbF" id="5mza6Qqhqt8" role="3cqZAp">
              <node concept="1rXfSq" id="5mza6Qqhqt7" role="3clFbG">
                <ref role="37wK5l" node="6rx4kZDk8ph" resolve="addLib" />
                <node concept="2GrUjf" id="DMIDDhgyTO" role="37wK5m">
                  <ref role="2Gs0qQ" node="KL8AqljyKz" resolve="path" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2YIFZM" id="4TNBaKVrsVy" role="2GsD0m">
            <ref role="1Pybhc" to="18ew:~PathManager" resolve="PathManager" />
            <ref role="37wK5l" to="18ew:~PathManager.getBootstrapPaths()" resolve="getBootstrapPaths" />
          </node>
        </node>
        <node concept="3clFbF" id="5mza6QqhEZj" role="3cqZAp">
          <node concept="1rXfSq" id="5mza6QqhEZi" role="3clFbG">
            <ref role="37wK5l" node="6rx4kZDk8ph" resolve="addLib" />
            <node concept="2YIFZM" id="4TNBaKVrsVz" role="37wK5m">
              <ref role="1Pybhc" to="18ew:~PathManager" resolve="PathManager" />
              <ref role="37wK5l" to="18ew:~PathManager.getLanguagesPath()" resolve="getLanguagesPath" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="vtY7r$cCwn" role="3cqZAp">
          <node concept="Xjq3P" id="vtY7r$cDHs" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5mza6Qqhje6" role="1B3o_S" />
      <node concept="3uibUv" id="5mza6QqhjgJ" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
    </node>
    <node concept="2tJIrI" id="5hfNQWynUT4" role="jymVt" />
    <node concept="3clFb_" id="5hfNQWynXUe" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="withWorkbenchPath" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5hfNQWynXUh" role="3clF47">
        <node concept="3clFbF" id="5hfNQWynZeU" role="3cqZAp">
          <node concept="1rXfSq" id="5hfNQWynZeV" role="3clFbG">
            <ref role="37wK5l" node="6rx4kZDk8ph" resolve="addLib" />
            <node concept="2YIFZM" id="7F6rovmpvXz" role="37wK5m">
              <ref role="1Pybhc" to="18ew:~PathManager" resolve="PathManager" />
              <ref role="37wK5l" to="18ew:~PathManager.getWorkbenchPath()" resolve="getWorkbenchPath" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5hfNQWynZf0" role="3cqZAp">
          <node concept="Xjq3P" id="5hfNQWynZf1" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5hfNQWynWAu" role="1B3o_S" />
      <node concept="3uibUv" id="5hfNQWynXQT" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
    </node>
    <node concept="2tJIrI" id="3YQ3dO9lgmv" role="jymVt" />
    <node concept="2YIFZL" id="6rx4kZDkZ7z" role="jymVt">
      <property role="TrG5h" value="defaultConfig" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="6rx4kZDkZ7A" role="3clF47">
        <node concept="3clFbF" id="6rx4kZDl0nw" role="3cqZAp">
          <node concept="2OqwBi" id="5hfNQWyo8Zw" role="3clFbG">
            <node concept="2OqwBi" id="5mza6QqhMY8" role="2Oq$k0">
              <node concept="liA8E" id="5mza6QqhOc9" role="2OqNvi">
                <ref role="37wK5l" node="5mza6QqhjgL" resolve="withBootstrapLibraries" />
              </node>
              <node concept="2OqwBi" id="5UWB9tjCfP" role="2Oq$k0">
                <node concept="liA8E" id="5UWB9tjDfO" role="2OqNvi">
                  <ref role="37wK5l" node="5UWB9tiBhc" resolve="withDefaultPlugins" />
                </node>
                <node concept="2OqwBi" id="6rx4kZDl0_d" role="2Oq$k0">
                  <node concept="liA8E" id="6rx4kZDl1IQ" role="2OqNvi">
                    <ref role="37wK5l" node="6rx4kZDkOYs" resolve="withDefaultSamples" />
                  </node>
                  <node concept="2ShNRf" id="6rx4kZDl0nu" role="2Oq$k0">
                    <node concept="1pGfFk" id="7zHHKD7wAox" role="2ShVmc">
                      <ref role="37wK5l" node="3YQ3dO9lyd8" resolve="EnvironmentConfig" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="5hfNQWyo9hH" role="2OqNvi">
              <ref role="37wK5l" node="5hfNQWynXUe" resolve="withWorkbenchPath" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6rx4kZDkZ4c" role="1B3o_S" />
      <node concept="3uibUv" id="6rx4kZDkZ5S" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
    </node>
    <node concept="2tJIrI" id="2$4oShLa$jK" role="jymVt" />
    <node concept="2YIFZL" id="2$4oShLawGj" role="jymVt">
      <property role="TrG5h" value="defaultConfigWithAutoDiscoveryPluginsMode" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="2$4oShLawGk" role="3clF47">
        <node concept="3cpWs6" id="7YybdScOTt$" role="3cqZAp">
          <node concept="2OqwBi" id="7YybdScOUmW" role="3cqZAk">
            <node concept="2OqwBi" id="7YybdScOU6c" role="2Oq$k0">
              <node concept="2OqwBi" id="7YybdScOTUW" role="2Oq$k0">
                <node concept="2OqwBi" id="7YybdScOTCK" role="2Oq$k0">
                  <node concept="1rXfSq" id="7YybdScOTy6" role="2Oq$k0">
                    <ref role="37wK5l" node="3YQ3dO9lg_M" resolve="emptyConfig" />
                  </node>
                  <node concept="liA8E" id="7YybdScOTN9" role="2OqNvi">
                    <ref role="37wK5l" node="6rx4kZDkOYs" resolve="withDefaultSamples" />
                  </node>
                </node>
                <node concept="liA8E" id="7YybdScOTZS" role="2OqNvi">
                  <ref role="37wK5l" node="5mza6QqhjgL" resolve="withBootstrapLibraries" />
                </node>
              </node>
              <node concept="liA8E" id="7YybdScOUjE" role="2OqNvi">
                <ref role="37wK5l" node="5hfNQWynXUe" resolve="withWorkbenchPath" />
              </node>
            </node>
            <node concept="liA8E" id="7YybdScOU$b" role="2OqNvi">
              <ref role="37wK5l" node="7YybdScOBt7" resolve="withAutomaticPluginDiscovery" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2$4oShLawGw" role="1B3o_S" />
      <node concept="3uibUv" id="2$4oShLawGx" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
      <node concept="P$JXv" id="2$4oShLa_j5" role="lGtFl">
        <node concept="x79VA" id="2$4oShLa_j8" role="3nqlJM">
          <property role="x79VB" value="" />
          <node concept="1PaTwC" id="1E1X3WHs_TI" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHs_TJ" role="1PaTwD">
              <property role="3oM_SC" value="EnvironmentConfig" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_TK" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_TL" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_TM" role="1PaTwD">
              <property role="3oM_SC" value="explicitly" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_TN" role="1PaTwD">
              <property role="3oM_SC" value="specified" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_TO" role="1PaTwD">
              <property role="3oM_SC" value="plugins." />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_TP" role="1PaTwD">
              <property role="3oM_SC" value="At" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_TQ" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_TR" role="1PaTwD">
              <property role="3oM_SC" value="time" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_TS" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_TT" role="1PaTwD">
              <property role="3oM_SC" value="writing" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_TU" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_TV" role="1PaTwD">
              <property role="3oM_SC" value="meant" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_TW" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_TX" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_TY" role="1PaTwD">
              <property role="3oM_SC" value="platform" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_TZ" role="1PaTwD">
              <property role="3oM_SC" value="will" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_U0" role="1PaTwD">
              <property role="3oM_SC" value="load" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_U1" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_U2" role="1PaTwD">
              <property role="3oM_SC" value="plugins" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_U3" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_U4" role="1PaTwD">
              <property role="3oM_SC" value="cp," />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_U5" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_U6" role="1PaTwD">
              <property role="3oM_SC" value="plugins" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_U7" role="1PaTwD">
              <property role="3oM_SC" value="path," />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_U8" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_U9" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_Ua" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_Ub" role="1PaTwD">
              <property role="3oM_SC" value="system" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_Uc" role="1PaTwD">
              <property role="3oM_SC" value="property." />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1RTSjGsvmX0" role="jymVt" />
    <node concept="2YIFZL" id="3YQ3dO9lg_M" role="jymVt">
      <property role="TrG5h" value="emptyConfig" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="3YQ3dO9lg_P" role="3clF47">
        <node concept="3clFbF" id="3YQ3dO9lgLy" role="3cqZAp">
          <node concept="2ShNRf" id="3YQ3dO9lgLw" role="3clFbG">
            <node concept="1pGfFk" id="7zHHKD7wAY_" role="2ShVmc">
              <ref role="37wK5l" node="3YQ3dO9lyd8" resolve="EnvironmentConfig" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3YQ3dO9lgqe" role="1B3o_S" />
      <node concept="3uibUv" id="3YQ3dO9lgs9" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
      <node concept="P$JXv" id="63LKn8yO2Hb" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs_Ud" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_Ue" role="1PaTwD">
            <property role="3oM_SC" value="fixme:" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Uf" role="1PaTwD">
            <property role="3oM_SC" value="currently" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Ug" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Uh" role="1PaTwD">
            <property role="3oM_SC" value="repository" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Ui" role="1PaTwD">
            <property role="3oM_SC" value="within" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Uj" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Uk" role="1PaTwD">
            <property role="3oM_SC" value="'empty" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Ul" role="1PaTwD">
            <property role="3oM_SC" value="environment'" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Um" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Un" role="1PaTwD">
            <property role="3oM_SC" value="inconsistent" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Uo" role="1PaTwD">
            <property role="3oM_SC" value="(mps-core" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Up" role="1PaTwD">
            <property role="3oM_SC" value="plugin" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Uq" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Ur" role="1PaTwD">
            <property role="3oM_SC" value="needed)," />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_Us" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_Ut" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Uu" role="1PaTwD">
            <property role="3oM_SC" value="use" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Uv" role="1PaTwD">
            <property role="3oM_SC" value="defaultConfig" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="6rx4kZDk5Aa" role="1B3o_S" />
    <node concept="3UR2Jj" id="3eUNqOk6xny" role="lGtFl">
      <node concept="VUp57" id="3eUNqOk6xPi" role="3nqlJM">
        <property role="VUp50" value="" />
        <node concept="VXe08" id="3eUNqOk6Ga5" role="VUp5m">
          <ref role="VXe09" node="HKKzfMjqRV" resolve="Environment" />
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_O8" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_O9" role="1PaTwD" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_NV" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_NW" role="1PaTwD">
          <property role="3oM_SC" value="Represents" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_NX" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_NY" role="1PaTwD">
          <property role="3oM_SC" value="configuration" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_NZ" role="1PaTwD">
          <property role="3oM_SC" value="options" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_O0" role="1PaTwD">
          <property role="3oM_SC" value="list" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_O1" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_O2" role="1PaTwD">
          <property role="3oM_SC" value="an" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_O3" role="1PaTwD">
          <property role="3oM_SC" value="environment," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_O4" role="1PaTwD">
          <property role="3oM_SC" value="used" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_O5" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_O6" role="1PaTwD">
          <property role="3oM_SC" value="Builder" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_O7" role="1PaTwD">
          <property role="3oM_SC" value="pattern" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="28TMbOSET_P" role="jymVt" />
    <node concept="3clFb_" id="28TMbOSEVXt" role="jymVt">
      <property role="TrG5h" value="withTestModeOn" />
      <node concept="3clFbS" id="28TMbOSEVXw" role="3clF47">
        <node concept="3clFbF" id="28TMbOSEXei" role="3cqZAp">
          <node concept="37vLTI" id="28TMbOSF1YD" role="3clFbG">
            <node concept="3clFbT" id="28TMbOSF23R" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="28TMbOSF6EU" role="37vLTJ">
              <ref role="3cqZAo" node="28TMbOSF0ab" resolve="myTestModeOn" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="28TMbOSF2db" role="3cqZAp">
          <node concept="Xjq3P" id="28TMbOSF2dM" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="28TMbOSEUR9" role="1B3o_S" />
      <node concept="3uibUv" id="28TMbOSEVT2" role="3clF45">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
    </node>
    <node concept="2tJIrI" id="28TMbOSF2eq" role="jymVt" />
    <node concept="3clFb_" id="28TMbOSF4Ad" role="jymVt">
      <property role="TrG5h" value="isTestMode" />
      <node concept="3clFbS" id="28TMbOSF4Ag" role="3clF47">
        <node concept="3cpWs6" id="28TMbOSF5qY" role="3cqZAp">
          <node concept="37vLTw" id="28TMbOSF5rF" role="3cqZAk">
            <ref role="3cqZAo" node="28TMbOSF0ab" resolve="myTestModeOn" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="28TMbOSF3vQ" role="1B3o_S" />
      <node concept="10P_77" id="28TMbOSF4yT" role="3clF45" />
    </node>
  </node>
  <node concept="312cEu" id="6rx4kZDk6yp">
    <property role="TrG5h" value="MpsEnvironment" />
    <property role="1EXbeo" value="true" />
    <node concept="312cEg" id="11RXB4md7v2" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myPlatform" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="11RXB4md4I7" role="1B3o_S" />
      <node concept="3uibUv" id="Y1BBlvzRN4" role="1tU5fm">
        <ref role="3uigEE" to="4o98:~Platform" resolve="Platform" />
      </node>
    </node>
    <node concept="312cEg" id="1ROuiHZhIq" role="jymVt">
      <property role="TrG5h" value="myPlugins" />
      <node concept="3Tm6S6" id="1ROuiHZhIr" role="1B3o_S" />
      <node concept="3uibUv" id="1ROuiHZbqn" role="1tU5fm">
        <ref role="3uigEE" node="1ROuiHUyBT" resolve="PlatformPlugins" />
      </node>
    </node>
    <node concept="2tJIrI" id="2VDNdDcdPEp" role="jymVt" />
    <node concept="3clFbW" id="6rx4kZDkRyV" role="jymVt">
      <node concept="3cqZAl" id="6rx4kZDkRz7" role="3clF45" />
      <node concept="3clFbS" id="6rx4kZDkRz9" role="3clF47">
        <node concept="XkiVB" id="3eUNqOk4zhg" role="3cqZAp">
          <ref role="37wK5l" node="3eUNqOk4feY" resolve="EnvironmentBase" />
          <node concept="37vLTw" id="3eUNqOk7xtc" role="37wK5m">
            <ref role="3cqZAo" node="5UWB9tkqkd" resolve="config" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5UWB9tkqkd" role="3clF46">
        <property role="TrG5h" value="config" />
        <node concept="3uibUv" id="5UWB9tkqkc" role="1tU5fm">
          <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
        </node>
        <node concept="2AHcQZ" id="3eUNqOk6hQ6" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3x_lgCAloNG" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3eUNqOk7fxT" role="jymVt" />
    <node concept="3clFb_" id="3eUNqOk7hpY" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="init" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3eUNqOk7hq1" role="3clF47">
        <node concept="3SKdUt" id="107wlcQnGTx" role="3cqZAp">
          <node concept="1PaTwC" id="107wlcQnGTy" role="1aUNEU">
            <node concept="3oM_SD" id="107wlcQnGTz" role="1PaTwD">
              <property role="3oM_SC" value="please" />
            </node>
            <node concept="3oM_SD" id="107wlcQnHp3" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="107wlcQnHpl" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="107wlcQnHpm" role="1PaTwD">
              <property role="3oM_SC" value="j.m.bl.logging" />
            </node>
            <node concept="3oM_SD" id="107wlcQnHqB" role="1PaTwD">
              <property role="3oM_SC" value="language" />
            </node>
            <node concept="3oM_SD" id="107wlcQnHqS" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="107wlcQnHqT" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="107wlcQnHqU" role="1PaTwD">
              <property role="3oM_SC" value="class" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="107wlcQnDOL" role="3cqZAp">
          <node concept="2OqwBi" id="107wlcQnDOM" role="3clFbG">
            <node concept="2YIFZM" id="107wlcQnDON" role="2Oq$k0">
              <ref role="37wK5l" to="wwqx:~Logger.getLogger(java.lang.Class)" resolve="getLogger" />
              <ref role="1Pybhc" to="wwqx:~Logger" resolve="Logger" />
              <node concept="1rXfSq" id="107wlcQnDOO" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
              </node>
            </node>
            <node concept="liA8E" id="107wlcQnDOP" role="2OqNvi">
              <ref role="37wK5l" to="wwqx:~Logger.info(java.lang.String)" resolve="info" />
              <node concept="Xl_RD" id="5lulEoOd9oU" role="37wK5m">
                <property role="Xl_RC" value="Creating MPS environment" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5KQbV2Rzfu$" role="3cqZAp">
          <node concept="1PaTwC" id="5KQbV2Rzfu_" role="1aUNEU">
            <node concept="3oM_SD" id="5KQbV2Rzgqv" role="1PaTwD">
              <property role="3oM_SC" value="paths" />
            </node>
            <node concept="3oM_SD" id="5KQbV2Rzgsd" role="1PaTwD">
              <property role="3oM_SC" value="selector" />
            </node>
            <node concept="3oM_SD" id="5KQbV2RzgQ_" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5KQbV2RzgRF" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5KQbV2RzgRW" role="1PaTwD">
              <property role="3oM_SC" value="single" />
            </node>
            <node concept="3oM_SD" id="5KQbV2Rzgt6" role="1PaTwD">
              <property role="3oM_SC" value="property" />
            </node>
            <node concept="3oM_SD" id="5KQbV2Rzgu0" role="1PaTwD">
              <property role="3oM_SC" value="allows" />
            </node>
            <node concept="3oM_SD" id="5KQbV2RzguV" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5KQbV2RzgvR" role="1PaTwD">
              <property role="3oM_SC" value="define" />
            </node>
            <node concept="3oM_SD" id="5KQbV2RzgGP" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5KQbV2RzgHO" role="1PaTwD">
              <property role="3oM_SC" value="locations" />
            </node>
            <node concept="3oM_SD" id="5KQbV2Rzg$U" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="5KQbV2RzgIO" role="1PaTwD">
              <property role="3oM_SC" value="logs/caches/other" />
            </node>
            <node concept="3oM_SD" id="5KQbV2RzgLx" role="1PaTwD">
              <property role="3oM_SC" value="system" />
            </node>
            <node concept="3oM_SD" id="5KQbV2RzgLH" role="1PaTwD">
              <property role="3oM_SC" value="files" />
            </node>
            <node concept="3oM_SD" id="5KQbV2RzgMK" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5KQbV2RzgMY" role="1PaTwD">
              <property role="3oM_SC" value="MPS" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5KQbV2RzhGl" role="3cqZAp">
          <node concept="1PaTwC" id="5KQbV2RzhGm" role="1aUNEU">
            <node concept="3oM_SD" id="5KQbV2RzimN" role="1PaTwD">
              <property role="3oM_SC" value="see" />
            </node>
            <node concept="3oM_SD" id="5KQbV2RzinI" role="1PaTwD">
              <property role="3oM_SC" value="https://intellij-support.jetbrains.com/hc/en-us/articles/206544519-Directories-used-by-the-IDE-to-store-settings-caches-plugins-and-logs" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2aedWm2K5hP" role="3cqZAp">
          <node concept="2YIFZM" id="2aedWm2K5Hm" role="3clFbG">
            <ref role="37wK5l" to="wyt6:~System.setProperty(java.lang.String,java.lang.String)" resolve="setProperty" />
            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
            <node concept="Xl_RD" id="2aedWm2K66J" role="37wK5m">
              <property role="Xl_RC" value="java.awt.headless" />
            </node>
            <node concept="2OqwBi" id="2aedWm2Kcds" role="37wK5m">
              <node concept="10M0yZ" id="2aedWm2Kb5q" role="2Oq$k0">
                <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
                <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
              <node concept="liA8E" id="2aedWm2KfCm" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Boolean.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1HNHfSAwfxM" role="3cqZAp">
          <node concept="3clFbS" id="1HNHfSAwfxO" role="3clFbx">
            <node concept="3clFbF" id="1HNHfSAw$Vx" role="3cqZAp">
              <node concept="2YIFZM" id="1HNHfSAwBsS" role="3clFbG">
                <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                <ref role="37wK5l" to="wyt6:~System.setProperty(java.lang.String,java.lang.String)" resolve="setProperty" />
                <node concept="10M0yZ" id="6qQvQxZ$r0l" role="37wK5m">
                  <ref role="1PxDUh" to="bd8o:~PathManager" resolve="PathManager" />
                  <ref role="3cqZAo" to="bd8o:~PathManager.PROPERTY_PATHS_SELECTOR" resolve="PROPERTY_PATHS_SELECTOR" />
                </node>
                <node concept="Xl_RD" id="1HNHfSAwJYy" role="37wK5m">
                  <property role="Xl_RC" value="MPSNoPlatform" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1HNHfSAwvmM" role="3clFbw">
            <node concept="10Nm6u" id="1HNHfSAwxWD" role="3uHU7w" />
            <node concept="2YIFZM" id="1HNHfSAwmM9" role="3uHU7B">
              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
              <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String)" resolve="getProperty" />
              <node concept="10M0yZ" id="6qQvQxZ$oQf" role="37wK5m">
                <ref role="3cqZAo" to="bd8o:~PathManager.PROPERTY_PATHS_SELECTOR" resolve="PROPERTY_PATHS_SELECTOR" />
                <ref role="1PxDUh" to="bd8o:~PathManager" resolve="PathManager" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1HNHfSAx$zJ" role="3cqZAp" />
        <node concept="3clFbF" id="11RXB4mdbcQ" role="3cqZAp">
          <node concept="37vLTI" id="11RXB4mdbIw" role="3clFbG">
            <node concept="2YIFZM" id="Y1BBlvzSbI" role="37vLTx">
              <ref role="1Pybhc" to="4o98:~PlatformFactory" resolve="PlatformFactory" />
              <ref role="37wK5l" to="4o98:~PlatformFactory.initPlatform(jetbrains.mps.core.platform.PlatformOptionsBuilder)" resolve="initPlatform" />
              <node concept="Rm8GO" id="Y1BBlvzSdt" role="37wK5m">
                <ref role="Rm8GQ" to="4o98:~PlatformOptionsBuilder.ALL" resolve="ALL" />
                <ref role="1Px2BO" to="4o98:~PlatformOptionsBuilder" resolve="PlatformOptionsBuilder" />
              </node>
            </node>
            <node concept="37vLTw" id="11RXB4mdbcP" role="37vLTJ">
              <ref role="3cqZAo" node="11RXB4md7v2" resolve="myPlatform" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1ROuiHZheY" role="3cqZAp">
          <node concept="37vLTI" id="1ROuiHZhf0" role="3clFbG">
            <node concept="2ShNRf" id="1ROuiHZbyd" role="37vLTx">
              <node concept="1pGfFk" id="1ROuiHZc2N" role="2ShVmc">
                <ref role="37wK5l" node="1ROuiHUyCX" resolve="PlatformPlugins" />
                <node concept="37vLTw" id="1ROuiHZc3O" role="37wK5m">
                  <ref role="3cqZAo" node="3eUNqOk7wUa" resolve="myConfig" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1ROuiHZiQY" role="37vLTJ">
              <ref role="3cqZAo" node="1ROuiHZhIq" resolve="myPlugins" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3eUNqOk7iCY" role="3cqZAp">
          <node concept="3nyPlj" id="3eUNqOk7iCX" role="3clFbG">
            <ref role="37wK5l" node="3eUNqOk6clf" resolve="init" />
            <node concept="37vLTw" id="1Pvl5nre6m5" role="37wK5m">
              <ref role="3cqZAo" node="11RXB4md7v2" resolve="myPlatform" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3eUNqOk7h2h" role="1B3o_S" />
      <node concept="3cqZAl" id="3eUNqOk7hpW" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1ROuiHSTK6" role="jymVt" />
    <node concept="3clFb_" id="1ROuiHSUm7" role="jymVt">
      <property role="TrG5h" value="initLibraries" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="1ROuiHSUm8" role="3clF46">
        <property role="TrG5h" value="libInitializer" />
        <node concept="3uibUv" id="1ROuiHSUm9" role="1tU5fm">
          <ref role="3uigEE" to="32g5:~LibraryInitializer" resolve="LibraryInitializer" />
        </node>
        <node concept="2AHcQZ" id="1ROuiHSUma" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tmbuc" id="1ROuiHSUn3" role="1B3o_S" />
      <node concept="3cqZAl" id="1ROuiHSUn4" role="3clF45" />
      <node concept="3clFbS" id="1ROuiHSUn5" role="3clF47">
        <node concept="3SKdUt" id="1ROuiHZkA_" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9g8" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9g9" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ga" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gb" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gc" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gd" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ge" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gf" role="1PaTwD">
              <property role="3oM_SC" value="root" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gg" role="1PaTwD">
              <property role="3oM_SC" value="CL" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gh" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gi" role="1PaTwD">
              <property role="3oM_SC" value="initialized" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gj" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gk" role="1PaTwD">
              <property role="3oM_SC" value="super.init()." />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gl" role="1PaTwD">
              <property role="3oM_SC" value="Once" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gm" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gn" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9go" role="1PaTwD">
              <property role="3oM_SC" value="rid" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gp" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gq" role="1PaTwD">
              <property role="3oM_SC" value="its" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gr" role="1PaTwD">
              <property role="3oM_SC" value="uses" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gs" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gt" role="1PaTwD">
              <property role="3oM_SC" value="IdeaEnvironment," />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1ROuiHZl3p" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9gu" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9gv" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gw" role="1PaTwD">
              <property role="3oM_SC" value="move" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gx" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gy" role="1PaTwD">
              <property role="3oM_SC" value="field" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gz" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9g$" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9g_" role="1PaTwD">
              <property role="3oM_SC" value="init" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gA" role="1PaTwD">
              <property role="3oM_SC" value="CLs" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gB" role="1PaTwD">
              <property role="3oM_SC" value="along" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gC" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gD" role="1PaTwD">
              <property role="3oM_SC" value="field" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gE" role="1PaTwD">
              <property role="3oM_SC" value="initialization" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1ROuiHZcmP" role="3cqZAp">
          <node concept="2OqwBi" id="1ROuiHZczW" role="3clFbG">
            <node concept="37vLTw" id="1ROuiHZj59" role="2Oq$k0">
              <ref role="3cqZAo" node="1ROuiHZhIq" resolve="myPlugins" />
            </node>
            <node concept="liA8E" id="1ROuiHZcJC" role="2OqNvi">
              <ref role="37wK5l" node="1ROuiHXSUR" resolve="buildClassLoaders" />
              <node concept="1rXfSq" id="1ROuiHZcKY" role="37wK5m">
                <ref role="37wK5l" node="5mffBJ2WBJ9" resolve="getRootClassLoader" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1ROuiHSV4q" role="3cqZAp">
          <node concept="3cpWsn" id="1ROuiHSV4r" role="3cpWs9">
            <property role="TrG5h" value="libContribs" />
            <property role="3TUv4t" value="true" />
            <node concept="_YKpA" id="1ROuiHSV4s" role="1tU5fm">
              <node concept="3uibUv" id="1ROuiHSV4t" role="_ZDj9">
                <ref role="3uigEE" to="je6q:~LibraryContributor" resolve="LibraryContributor" />
              </node>
            </node>
            <node concept="2ShNRf" id="1ROuiHSV4u" role="33vP2m">
              <node concept="Tc6Ow" id="1ROuiHSV4v" role="2ShVmc">
                <node concept="3uibUv" id="1ROuiHSV4w" role="HW$YZ">
                  <ref role="3uigEE" to="je6q:~LibraryContributor" resolve="LibraryContributor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1ROuiHSV4x" role="3cqZAp">
          <node concept="3cpWsn" id="1ROuiHSV4y" role="3cpWs9">
            <property role="TrG5h" value="helper" />
            <node concept="3uibUv" id="1ROuiHSV4z" role="1tU5fm">
              <ref role="3uigEE" node="3eUNqOk8qK6" resolve="LibraryContributorHelper" />
            </node>
            <node concept="2ShNRf" id="1ROuiHSV4$" role="33vP2m">
              <node concept="1pGfFk" id="1ROuiHSV4_" role="2ShVmc">
                <ref role="37wK5l" node="42pPXbiGsoN" resolve="LibraryContributorHelper" />
                <node concept="2OqwBi" id="6oGbDMFIcTA" role="37wK5m">
                  <node concept="2OqwBi" id="6oGbDMFI8Xf" role="2Oq$k0">
                    <node concept="37vLTw" id="6oGbDMFI8gF" role="2Oq$k0">
                      <ref role="3cqZAo" node="11RXB4md7v2" resolve="myPlatform" />
                    </node>
                    <node concept="liA8E" id="6oGbDMFIbaP" role="2OqNvi">
                      <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                      <node concept="3VsKOn" id="6oGbDMFIcco" role="37wK5m">
                        <ref role="3VsUkX" to="3ju5:~VFSManager" resolve="VFSManager" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="6oGbDMFIdyd" role="2OqNvi">
                    <ref role="37wK5l" to="3ju5:~VFSManager.getUmbrellaFileSystemJavaIO()" resolve="getUmbrellaFileSystemJavaIO" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1ROuiHSV4C" role="3cqZAp">
          <node concept="3clFbS" id="1ROuiHSV4D" role="3clFbx">
            <node concept="3clFbF" id="1ROuiHSV4E" role="3cqZAp">
              <node concept="2OqwBi" id="1ROuiHSV4F" role="3clFbG">
                <node concept="37vLTw" id="1ROuiHSV4G" role="2Oq$k0">
                  <ref role="3cqZAo" node="1ROuiHSV4r" resolve="libContribs" />
                </node>
                <node concept="TSZUe" id="1ROuiHSV4H" role="2OqNvi">
                  <node concept="2OqwBi" id="1ROuiHSV4I" role="25WWJ7">
                    <node concept="37vLTw" id="1ROuiHSV4J" role="2Oq$k0">
                      <ref role="3cqZAo" node="1ROuiHSV4y" resolve="helper" />
                    </node>
                    <node concept="liA8E" id="1ROuiHSV4K" role="2OqNvi">
                      <ref role="37wK5l" node="3eUNqOk8lkP" resolve="createLibContributorForLibs" />
                      <node concept="2OqwBi" id="1ROuiHYue_" role="37wK5m">
                        <node concept="37vLTw" id="1ROuiHYtSE" role="2Oq$k0">
                          <ref role="3cqZAo" node="3eUNqOk7wUa" resolve="myConfig" />
                        </node>
                        <node concept="liA8E" id="1ROuiHYw7G" role="2OqNvi">
                          <ref role="37wK5l" node="5UWB9tkma7" resolve="getLibs" />
                        </node>
                      </node>
                      <node concept="1rXfSq" id="1ROuiHZ8Tg" role="37wK5m">
                        <ref role="37wK5l" node="5mffBJ2WBJ9" resolve="getRootClassLoader" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1ROuiHSV4L" role="3clFbw">
            <node concept="2OqwBi" id="1ROuiHSV4M" role="2Oq$k0">
              <node concept="37vLTw" id="1ROuiHSV4N" role="2Oq$k0">
                <ref role="3cqZAo" node="3eUNqOk7wUa" resolve="myConfig" />
              </node>
              <node concept="liA8E" id="1ROuiHSV4O" role="2OqNvi">
                <ref role="37wK5l" node="5UWB9tkma7" resolve="getLibs" />
              </node>
            </node>
            <node concept="3GX2aA" id="1ROuiHSV4P" role="2OqNvi" />
          </node>
        </node>
        <node concept="3SKdUt" id="1ROuiHZt01" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9gF" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9gG" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gH" role="1PaTwD">
              <property role="3oM_SC" value="at" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gI" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gJ" role="1PaTwD">
              <property role="3oM_SC" value="moment," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gK" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gL" role="1PaTwD">
              <property role="3oM_SC" value="always" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gM" role="1PaTwD">
              <property role="3oM_SC" value="build" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gN" role="1PaTwD">
              <property role="3oM_SC" value="CP" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gO" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gP" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gQ" role="1PaTwD">
              <property role="3oM_SC" value="plugin," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gR" role="1PaTwD">
              <property role="3oM_SC" value="despite" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gS" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gT" role="1PaTwD">
              <property role="3oM_SC" value="fact" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gU" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gV" role="1PaTwD">
              <property role="3oM_SC" value="could" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gW" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gX" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gY" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9gZ" role="1PaTwD">
              <property role="3oM_SC" value="global" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9h0" role="1PaTwD">
              <property role="3oM_SC" value="CP" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9h1" role="1PaTwD">
              <property role="3oM_SC" value="already" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1ROuiHZtur" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9h2" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9h3" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9h4" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9h5" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9h6" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9h7" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9h8" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9h9" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ha" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9hb" role="1PaTwD">
              <property role="3oM_SC" value="respect" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9hc" role="1PaTwD">
              <property role="3oM_SC" value="global" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9hd" role="1PaTwD">
              <property role="3oM_SC" value="CP" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9he" role="1PaTwD">
              <property role="3oM_SC" value="scenario" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9hf" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9hg" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9hh" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9hi" role="1PaTwD">
              <property role="3oM_SC" value="rootCL" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9hj" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9hk" role="1PaTwD">
              <property role="3oM_SC" value="plugin" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9hl" role="1PaTwD">
              <property role="3oM_SC" value="CL" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9hm" role="1PaTwD">
              <property role="3oM_SC" value="directly" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9hn" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ho" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9hp" role="1PaTwD">
              <property role="3oM_SC" value="case" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1ROuiHSV4S" role="3cqZAp">
          <node concept="3clFbS" id="1ROuiHSV4T" role="3clFbx">
            <node concept="3clFbF" id="1ROuiHSV4U" role="3cqZAp">
              <node concept="2OqwBi" id="1ROuiHSV4V" role="3clFbG">
                <node concept="37vLTw" id="1ROuiHSV4W" role="2Oq$k0">
                  <ref role="3cqZAo" node="1ROuiHSV4r" resolve="libContribs" />
                </node>
                <node concept="TSZUe" id="1ROuiHSV4X" role="2OqNvi">
                  <node concept="2OqwBi" id="1ROuiHSV4Y" role="25WWJ7">
                    <node concept="37vLTw" id="1ROuiHSV4Z" role="2Oq$k0">
                      <ref role="3cqZAo" node="1ROuiHSV4y" resolve="helper" />
                    </node>
                    <node concept="liA8E" id="1ROuiHSV50" role="2OqNvi">
                      <ref role="37wK5l" node="3eUNqOk8kWA" resolve="createLibContributorForPlugins" />
                      <node concept="37vLTw" id="1ROuiHZIIR" role="37wK5m">
                        <ref role="3cqZAo" node="1ROuiHZhIq" resolve="myPlugins" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="1ROuiHZFVg" role="3clFbw">
            <node concept="2OqwBi" id="1ROuiHZGQ3" role="3fr31v">
              <node concept="37vLTw" id="1ROuiHZG_e" role="2Oq$k0">
                <ref role="3cqZAo" node="1ROuiHZhIq" resolve="myPlugins" />
              </node>
              <node concept="liA8E" id="1ROuiHZIGz" role="2OqNvi">
                <ref role="37wK5l" node="1ROuiHZySq" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1ROuiHSV5c" role="3cqZAp">
          <node concept="2OqwBi" id="1ROuiHSV5d" role="3clFbG">
            <node concept="37vLTw" id="1ROuiHSV5e" role="2Oq$k0">
              <ref role="3cqZAo" node="1ROuiHSUm8" resolve="libInitializer" />
            </node>
            <node concept="liA8E" id="1ROuiHSV5f" role="2OqNvi">
              <ref role="37wK5l" to="32g5:~LibraryInitializer.load(java.util.List)" resolve="load" />
              <node concept="37vLTw" id="1ROuiHSV5g" role="37wK5m">
                <ref role="3cqZAo" node="1ROuiHSV4r" resolve="libContribs" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1ROuiHSUn6" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3eUNqOk7icx" role="jymVt" />
    <node concept="3Tm1VV" id="6rx4kZDk6yq" role="1B3o_S" />
    <node concept="3clFb_" id="6rx4kZDk6_W" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="doOpenProject" />
      <node concept="2AHcQZ" id="1w0tHxV7u87" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="6rx4kZDk6_X" role="3clF46">
        <property role="TrG5h" value="projectFile" />
        <node concept="3uibUv" id="6rx4kZDk6_Y" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
        <node concept="2AHcQZ" id="2BGPXkEwtJh" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3uibUv" id="6rx4kZDk6_Z" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3Tm1VV" id="6rx4kZDk6A0" role="1B3o_S" />
      <node concept="3clFbS" id="6rx4kZDk6A2" role="3clF47">
        <node concept="3cpWs8" id="KL8AqljyJ1" role="3cqZAp">
          <node concept="3cpWsn" id="KL8AqljyJ2" role="3cpWs9">
            <property role="TrG5h" value="project" />
            <node concept="3uibUv" id="KL8AqljyJ3" role="1tU5fm">
              <ref role="3uigEE" to="v9gs:2doG_VG59Hc" resolve="FileMPSProject" />
            </node>
            <node concept="2ShNRf" id="KL8AqljyJ4" role="33vP2m">
              <node concept="1pGfFk" id="KL8AqljyJ5" role="2ShVmc">
                <ref role="37wK5l" to="v9gs:2doG_VG59Hq" resolve="FileMPSProject" />
                <node concept="37vLTw" id="2BHiRxghfvG" role="37wK5m">
                  <ref role="3cqZAo" node="6rx4kZDk6_X" resolve="projectFile" />
                </node>
                <node concept="37vLTw" id="76OnFPC95a6" role="37wK5m">
                  <ref role="3cqZAo" node="11RXB4md7v2" resolve="myPlatform" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="442MknbZXaS" role="3cqZAp">
          <node concept="2OqwBi" id="442MknbZXXP" role="3clFbG">
            <node concept="37vLTw" id="442MknbZXaQ" role="2Oq$k0">
              <ref role="3cqZAo" node="KL8AqljyJ2" resolve="project" />
            </node>
            <node concept="liA8E" id="442MknbZYSW" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~ProjectBase.projectOpened()" resolve="projectOpened" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="yBZlauNILg" role="3cqZAp">
          <node concept="37vLTw" id="yBZlauNILh" role="3cqZAk">
            <ref role="3cqZAo" node="KL8AqljyJ2" resolve="project" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5A5jZrz4erm" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1w0tHxV7$Z$" role="jymVt" />
    <node concept="3clFb_" id="2BGPXkEx5SI" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createEmptyProject" />
      <node concept="3uibUv" id="2BGPXkEx5SJ" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3Tm1VV" id="2BGPXkEx5SK" role="1B3o_S" />
      <node concept="2AHcQZ" id="2BGPXkEx5SM" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2BGPXkEx5SS" role="3clF47">
        <node concept="3clFbF" id="6LlhC3WMkIY" role="3cqZAp">
          <node concept="1rXfSq" id="6LlhC3WMkIW" role="3clFbG">
            <ref role="37wK5l" node="6LlhC3WLEQ3" resolve="checkInitialized" />
          </node>
        </node>
        <node concept="3clFbF" id="107wlcQn$FQ" role="3cqZAp">
          <node concept="2OqwBi" id="107wlcQnALa" role="3clFbG">
            <node concept="2YIFZM" id="107wlcQn_HJ" role="2Oq$k0">
              <ref role="37wK5l" to="wwqx:~Logger.getLogger(java.lang.Class)" resolve="getLogger" />
              <ref role="1Pybhc" to="wwqx:~Logger" resolve="Logger" />
              <node concept="1rXfSq" id="107wlcQnAcb" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
              </node>
            </node>
            <node concept="liA8E" id="107wlcQnBru" role="2OqNvi">
              <ref role="37wK5l" to="wwqx:~Logger.info(java.lang.String)" resolve="info" />
              <node concept="Xl_RD" id="kMLKV374WC" role="37wK5m">
                <property role="Xl_RC" value="Creating an empty project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5A5jZrz4f7E" role="3cqZAp">
          <node concept="3cpWsn" id="5A5jZrz4f7F" role="3cpWs9">
            <property role="TrG5h" value="projectFile" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="5A5jZrz4f7G" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2YIFZM" id="15VbAzMFyzS" role="33vP2m">
              <ref role="1Pybhc" to="18ew:~FileUtil" resolve="FileUtil" />
              <ref role="37wK5l" to="18ew:~FileUtil.createTmpDir()" resolve="createTmpDir" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5A5jZrz4f7V" role="3cqZAp">
          <node concept="2OqwBi" id="5A5jZrz4f7W" role="3clFbG">
            <node concept="37vLTw" id="5A5jZrz4f7X" role="2Oq$k0">
              <ref role="3cqZAo" node="5A5jZrz4f7F" resolve="projectFile" />
            </node>
            <node concept="liA8E" id="5A5jZrz4f7Y" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~File.deleteOnExit()" resolve="deleteOnExit" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3pEStHM5kxU" role="3cqZAp">
          <node concept="3cpWsn" id="3pEStHM5kxV" role="3cpWs9">
            <property role="TrG5h" value="project" />
            <node concept="3uibUv" id="3pEStHM5kxW" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
            <node concept="1rXfSq" id="3pEStHM5kLr" role="33vP2m">
              <ref role="37wK5l" node="6rx4kZDk5DH" resolve="openProject" />
              <node concept="37vLTw" id="3pEStHM5kUm" role="37wK5m">
                <ref role="3cqZAo" node="5A5jZrz4f7F" resolve="projectFile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5A5jZrz4gaS" role="3cqZAp">
          <node concept="37vLTw" id="5A5jZrz4gaT" role="3cqZAk">
            <ref role="3cqZAo" node="3pEStHM5kxV" resolve="project" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5mffBJ2WqSl" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6jVPebMP3yU" role="jymVt" />
    <node concept="3clFb_" id="6rx4kZDk6Aj" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="doDispose" />
      <node concept="2AHcQZ" id="1w0tHxV7ETk" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3cqZAl" id="6rx4kZDk6Ak" role="3clF45" />
      <node concept="3Tm1VV" id="6rx4kZDk6Al" role="1B3o_S" />
      <node concept="3clFbS" id="6rx4kZDk6An" role="3clF47">
        <node concept="3clFbF" id="11RXB4mdlCD" role="3cqZAp">
          <node concept="2OqwBi" id="11RXB4mdmrF" role="3clFbG">
            <node concept="37vLTw" id="11RXB4mdlCC" role="2Oq$k0">
              <ref role="3cqZAo" node="11RXB4md7v2" resolve="myPlatform" />
            </node>
            <node concept="liA8E" id="11RXB4mdnne" role="2OqNvi">
              <ref role="37wK5l" to="4o98:~Platform.dispose()" resolve="dispose" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="11RXB4mdnX_" role="3cqZAp">
          <node concept="37vLTI" id="11RXB4mdq1K" role="3clFbG">
            <node concept="10Nm6u" id="11RXB4mdqyY" role="37vLTx" />
            <node concept="37vLTw" id="11RXB4mdnX$" role="37vLTJ">
              <ref role="3cqZAo" node="11RXB4md7v2" resolve="myPlatform" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3eUNqOk6plH" role="jymVt" />
    <node concept="3uibUv" id="3eUNqOk4_SD" role="1zkMxy">
      <ref role="3uigEE" node="3eUNqOk4feo" resolve="EnvironmentBase" />
    </node>
    <node concept="3clFb_" id="3eUNqOk6n3T" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="flushAllEvents" />
      <node concept="3Tm1VV" id="3eUNqOk6n3V" role="1B3o_S" />
      <node concept="3cqZAl" id="3eUNqOk6n3W" role="3clF45" />
      <node concept="3clFbS" id="3eUNqOk6n41" role="3clF47">
        <node concept="3SKdUt" id="3eUNqOk6nwC" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9hq" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9hr" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9hs" role="1PaTwD">
              <property role="3oM_SC" value="nothing" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6LlhC3WMjRd" role="3cqZAp">
          <node concept="1rXfSq" id="6LlhC3WMjRb" role="3clFbG">
            <ref role="37wK5l" node="6LlhC3WLEQ3" resolve="checkInitialized" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3eUNqOk6pLg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="8Pnvxglke9" role="jymVt" />
    <node concept="3clFb_" id="8PnvxglhX7" role="jymVt">
      <property role="TrG5h" value="getPlatform" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="8PnvxglhX8" role="3clF47">
        <node concept="3cpWs6" id="8PnvxglhX9" role="3cqZAp">
          <node concept="37vLTw" id="8PnvxglhXa" role="3cqZAk">
            <ref role="3cqZAo" node="11RXB4md7v2" resolve="myPlatform" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="8PnvxglhXb" role="1B3o_S" />
      <node concept="3uibUv" id="8PnvxglhXc" role="3clF45">
        <ref role="3uigEE" to="4o98:~Platform" resolve="Platform" />
      </node>
      <node concept="2AHcQZ" id="8Pnvxglq0O" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3eUNqOk9bzg" role="jymVt" />
  </node>
  <node concept="312cEu" id="yBZlauH8zE">
    <property role="TrG5h" value="ProjectContainer" />
    <property role="2bfB8j" value="false" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="312cEg" id="yBZlauH8zG" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myProjects" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="yBZlauH8zH" role="1B3o_S" />
      <node concept="2hMVRd" id="yBZlauH8zI" role="1tU5fm">
        <node concept="3uibUv" id="yBZlauH8zJ" role="2hN53Y">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2iqAsxGjyn8" role="jymVt">
      <property role="TrG5h" value="myProjectManager" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2iqAsxGjyk1" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~ProjectManager" resolve="ProjectManager" />
      </node>
      <node concept="3Tm6S6" id="2iqAsxGj$bY" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="yBZlauH8zK" role="jymVt" />
    <node concept="3clFbW" id="yBZlauH8zL" role="jymVt">
      <node concept="3cqZAl" id="yBZlauH8zM" role="3clF45" />
      <node concept="3clFbS" id="yBZlauH8zN" role="3clF47">
        <node concept="3clFbF" id="yBZlauH8zO" role="3cqZAp">
          <node concept="37vLTI" id="yBZlauH8zP" role="3clFbG">
            <node concept="2ShNRf" id="yBZlauH8zQ" role="37vLTx">
              <node concept="32HrFt" id="5QGPY0Gd635" role="2ShVmc">
                <node concept="3uibUv" id="5QGPY0Gd6mb" role="HW$YZ">
                  <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="yBZlauH8zT" role="37vLTJ">
              <ref role="3cqZAo" node="yBZlauH8zG" resolve="myProjects" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2iqAsxGj$l5" role="3cqZAp">
          <node concept="37vLTI" id="2iqAsxGj$Gy" role="3clFbG">
            <node concept="2OqwBi" id="2iqAsxGj_2D" role="37vLTx">
              <node concept="37vLTw" id="2iqAsxGj$RV" role="2Oq$k0">
                <ref role="3cqZAo" node="2iqAsxGjt6F" resolve="platform" />
              </node>
              <node concept="liA8E" id="2iqAsxGj_d7" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="2iqAsxGj_Yr" role="37wK5m">
                  <ref role="3VsUkX" to="z1c3:~ProjectManager" resolve="ProjectManager" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2iqAsxGj$l3" role="37vLTJ">
              <ref role="3cqZAo" node="2iqAsxGjyn8" resolve="myProjectManager" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ylsT8BFimo" role="3cqZAp">
          <node concept="2OqwBi" id="6ylsT8BFipK" role="3clFbG">
            <node concept="liA8E" id="6ylsT8BFis4" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~ProjectManager.addProjectListener(jetbrains.mps.project.ProjectManagerListener)" resolve="addProjectListener" />
              <node concept="Xjq3P" id="6ylsT8BFisS" role="37wK5m" />
            </node>
            <node concept="37vLTw" id="2iqAsxGjA$V" role="2Oq$k0">
              <ref role="3cqZAo" node="2iqAsxGjyn8" resolve="myProjectManager" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2iqAsxGjt6F" role="3clF46">
        <property role="TrG5h" value="platform" />
        <node concept="3uibUv" id="2iqAsxGjt6E" role="1tU5fm">
          <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="yBZlauH8zV" role="jymVt" />
    <node concept="3clFb_" id="yBZlauH8zW" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="yBZlauH8zX" role="3clF47">
        <node concept="3SKdUt" id="9GeULsSuTL" role="3cqZAp">
          <node concept="1PaTwC" id="9GeULsSuTM" role="1aUNEU">
            <node concept="3oM_SD" id="9GeULsSw4z" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="9GeULsSw4_" role="1PaTwD">
              <property role="3oM_SC" value="clear()" />
            </node>
            <node concept="3oM_SD" id="9GeULsSw4C" role="1PaTwD">
              <property role="3oM_SC" value="would" />
            </node>
            <node concept="3oM_SD" id="9GeULsSw4G" role="1PaTwD">
              <property role="3oM_SC" value="never" />
            </node>
            <node concept="3oM_SD" id="9GeULsSw4L" role="1PaTwD">
              <property role="3oM_SC" value="work," />
            </node>
            <node concept="3oM_SD" id="9GeULsSw4R" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="9GeULsSw4Y" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="9GeULsSw56" role="1PaTwD">
              <property role="3oM_SC" value="disposes" />
            </node>
            <node concept="3oM_SD" id="9GeULsSw5T" role="1PaTwD">
              <property role="3oM_SC" value="projects" />
            </node>
            <node concept="3oM_SD" id="9GeULsSw63" role="1PaTwD">
              <property role="3oM_SC" value="before" />
            </node>
            <node concept="3oM_SD" id="9GeULsSw6e" role="1PaTwD">
              <property role="3oM_SC" value="removing" />
            </node>
            <node concept="3oM_SD" id="9GeULsSw6q" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="9GeULsSw6B" role="1PaTwD">
              <property role="3oM_SC" value="listener" />
            </node>
            <node concept="3oM_SD" id="9GeULsSw6P" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="9GeULsSxwT" role="3cqZAp">
          <node concept="1PaTwC" id="9GeULsSxwU" role="1aUNEU">
            <node concept="3oM_SD" id="9GeULsSzA9" role="1PaTwD">
              <property role="3oM_SC" value=" " />
            </node>
            <node concept="3oM_SD" id="9GeULsSzAb" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="9GeULsSzAe" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="9GeULsSzAi" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="9GeULsSzA$" role="1PaTwD">
              <property role="3oM_SC" value="modifies" />
            </node>
            <node concept="3oM_SD" id="9GeULsSzAE" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="9GeULsSzAL" role="1PaTwD">
              <property role="3oM_SC" value="set" />
            </node>
            <node concept="3oM_SD" id="9GeULsSzAT" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="9GeULsSzB2" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="9GeULsSzBc" role="1PaTwD">
              <property role="3oM_SC" value="projects." />
            </node>
            <node concept="3oM_SD" id="9GeULsSzBn" role="1PaTwD">
              <property role="3oM_SC" value="Seems" />
            </node>
            <node concept="3oM_SD" id="9GeULsSzBz" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="9GeULsSzBK" role="1PaTwD">
              <property role="3oM_SC" value="even" />
            </node>
            <node concept="3oM_SD" id="9GeULsSzBY" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="9GeULsSzCd" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="9GeULsSzCt" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="9GeULsSzCI" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="9GeULsSzD0" role="1PaTwD">
              <property role="3oM_SC" value="keep" />
            </node>
            <node concept="3oM_SD" id="9GeULsSzDj" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="9GeULsSzDB" role="1PaTwD">
              <property role="3oM_SC" value="class," />
            </node>
            <node concept="3oM_SD" id="9GeULsSzDW" role="1PaTwD">
              <property role="3oM_SC" value="clear()" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="9GeULsSzFH" role="3cqZAp">
          <node concept="1PaTwC" id="9GeULsSzFI" role="1aUNEU">
            <node concept="3oM_SD" id="9GeULsS_62" role="1PaTwD">
              <property role="3oM_SC" value=" " />
            </node>
            <node concept="3oM_SD" id="9GeULsS_64" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="9GeULsS_67" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="9GeULsS_6b" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="9GeULsS_6g" role="1PaTwD">
              <property role="3oM_SC" value="code" />
            </node>
            <node concept="3oM_SD" id="9GeULsS_6m" role="1PaTwD">
              <property role="3oM_SC" value="have" />
            </node>
            <node concept="3oM_SD" id="9GeULsS_6t" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="9GeULsS_6_" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="9GeULsS_6I" role="1PaTwD">
              <property role="3oM_SC" value="done" />
            </node>
            <node concept="3oM_SD" id="9GeULsS_6S" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="9GeULsS_73" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="9GeULsS_7E" role="1PaTwD">
              <property role="3oM_SC" value="IdeaEnvironment.doDispose()" />
            </node>
            <node concept="3oM_SD" id="9GeULsS_7T" role="1PaTwD">
              <property role="3oM_SC" value="fashion," />
            </node>
            <node concept="3oM_SD" id="9GeULsS_87" role="1PaTwD">
              <property role="3oM_SC" value="i.e" />
            </node>
            <node concept="3oM_SD" id="9GeULsS_8m" role="1PaTwD">
              <property role="3oM_SC" value="Env" />
            </node>
            <node concept="3oM_SD" id="9GeULsS_8A" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="9GeULsS_9s" role="1PaTwD">
              <property role="3oM_SC" value="dispose/close" />
            </node>
            <node concept="3oM_SD" id="9GeULsS_9I" role="1PaTwD">
              <property role="3oM_SC" value="projects" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="yBZlauH8zY" role="3cqZAp">
          <node concept="1rXfSq" id="yBZlauH8zZ" role="3clFbG">
            <ref role="37wK5l" node="yBZlauH8$3" resolve="clear" />
          </node>
        </node>
        <node concept="3clFbF" id="6ylsT8BFiud" role="3cqZAp">
          <node concept="2OqwBi" id="6ylsT8BFivG" role="3clFbG">
            <node concept="liA8E" id="6ylsT8BFiy6" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~ProjectManager.removeProjectListener(jetbrains.mps.project.ProjectManagerListener)" resolve="removeProjectListener" />
              <node concept="Xjq3P" id="6ylsT8BFiyU" role="37wK5m" />
            </node>
            <node concept="37vLTw" id="2iqAsxGjALL" role="2Oq$k0">
              <ref role="3cqZAo" node="2iqAsxGjyn8" resolve="myProjectManager" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="yBZlauH8$0" role="1B3o_S" />
      <node concept="3cqZAl" id="yBZlauH8$1" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="yBZlauH8$2" role="jymVt" />
    <node concept="3clFb_" id="yBZlauH8$3" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="clear" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="yBZlauH8$4" role="3clF47">
        <node concept="3J1_TO" id="yBZlauH8$5" role="3cqZAp">
          <node concept="3uVAMA" id="yBZlauH8$6" role="1zxBo5">
            <node concept="XOnhg" id="yBZlauH8$c" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="xvs04dGzE6" role="1tU5fm">
                <node concept="3uibUv" id="yBZlauH8$d" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="yBZlauH8$7" role="1zc67A">
              <node concept="3clFbF" id="yBZlauH8$8" role="3cqZAp">
                <node concept="2OqwBi" id="yBZlauH8$9" role="3clFbG">
                  <node concept="37vLTw" id="yBZlauH8$a" role="2Oq$k0">
                    <ref role="3cqZAo" node="yBZlauH8$c" resolve="e" />
                  </node>
                  <node concept="liA8E" id="yBZlauH8$b" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="yBZlauH8$e" role="1zxBo7">
            <node concept="1DcWWT" id="yBZlauH8$f" role="3cqZAp">
              <node concept="3clFbS" id="yBZlauH8$g" role="2LFqv$">
                <node concept="1gVbGN" id="yBZlauH8$h" role="3cqZAp">
                  <node concept="1Wc70l" id="yBZlauH8$i" role="1gVkn0">
                    <node concept="3fqX7Q" id="yBZlauH8$j" role="3uHU7w">
                      <node concept="2OqwBi" id="yBZlauH8$k" role="3fr31v">
                        <node concept="37vLTw" id="yBZlauH8$l" role="2Oq$k0">
                          <ref role="3cqZAo" node="yBZlauH8$D" resolve="project" />
                        </node>
                        <node concept="liA8E" id="yBZlauH8$m" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.isDisposed()" resolve="isDisposed" />
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="yBZlauH8$n" role="3uHU7B">
                      <node concept="37vLTw" id="yBZlauH8$o" role="3uHU7B">
                        <ref role="3cqZAo" node="yBZlauH8$D" resolve="project" />
                      </node>
                      <node concept="10Nm6u" id="yBZlauH8$p" role="3uHU7w" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="yBZlauH8$q" role="1gVpfI">
                    <property role="Xl_RC" value="Project has been already disposed" />
                  </node>
                </node>
                <node concept="3clFbF" id="yBZlauH8$z" role="3cqZAp">
                  <node concept="2OqwBi" id="yBZlauH8$$" role="3clFbG">
                    <node concept="37vLTw" id="yBZlauH8$_" role="2Oq$k0">
                      <ref role="3cqZAo" node="yBZlauH8$D" resolve="project" />
                    </node>
                    <node concept="liA8E" id="yBZlauH8$A" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.dispose()" resolve="dispose" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="yBZlauH8$D" role="1Duv9x">
                <property role="TrG5h" value="project" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="yBZlauH8$E" role="1tU5fm">
                  <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
                </node>
              </node>
              <node concept="37vLTw" id="yBZlauH8$F" role="1DdaDG">
                <ref role="3cqZAo" node="yBZlauH8zG" resolve="myProjects" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="yBZlauH8$G" role="3cqZAp">
          <node concept="2OqwBi" id="yBZlauH8$H" role="3clFbG">
            <node concept="37vLTw" id="yBZlauH8$I" role="2Oq$k0">
              <ref role="3cqZAo" node="yBZlauH8zG" resolve="myProjects" />
            </node>
            <node concept="2EZike" id="yBZlauH8$J" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="yBZlauH8$K" role="1B3o_S" />
      <node concept="3cqZAl" id="yBZlauH8$L" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="yBZlauH8$M" role="jymVt" />
    <node concept="3clFb_" id="yBZlauH8$N" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getProjects" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="yBZlauH8$O" role="3clF47">
        <node concept="3clFbF" id="yBZlauH8$P" role="3cqZAp">
          <node concept="37vLTw" id="yBZlauH8$Q" role="3clFbG">
            <ref role="3cqZAo" node="yBZlauH8zG" resolve="myProjects" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="yBZlauH8$R" role="1B3o_S" />
      <node concept="2hMVRd" id="yBZlauH8$S" role="3clF45">
        <node concept="3uibUv" id="yBZlauH8$T" role="2hN53Y">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="yBZlauH8$U" role="jymVt" />
    <node concept="3clFb_" id="yBZlauH8$V" role="jymVt">
      <property role="TrG5h" value="getProject" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="yBZlauH8$W" role="3clF47">
        <node concept="1gVbGN" id="2BGPXkEvLgY" role="3cqZAp">
          <node concept="3y3z36" id="2BGPXkEvLgZ" role="1gVkn0">
            <node concept="10Nm6u" id="2BGPXkEvLh0" role="3uHU7w" />
            <node concept="37vLTw" id="2BGPXkEvLh1" role="3uHU7B">
              <ref role="3cqZAo" node="yBZlauH8zG" resolve="myProjects" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="yBZlauH8_0" role="3cqZAp">
          <node concept="2GrKxI" id="yBZlauH8_1" role="2Gsz3X">
            <property role="TrG5h" value="project" />
          </node>
          <node concept="37vLTw" id="yBZlauH8_2" role="2GsD0m">
            <ref role="3cqZAo" node="yBZlauH8zG" resolve="myProjects" />
          </node>
          <node concept="3clFbS" id="yBZlauH8_3" role="2LFqv$">
            <node concept="3clFbJ" id="yBZlauH8_4" role="3cqZAp">
              <node concept="3clFbS" id="yBZlauH8_5" role="3clFbx">
                <node concept="3cpWs6" id="yBZlauH8_6" role="3cqZAp">
                  <node concept="2GrUjf" id="yBZlauH8_7" role="3cqZAk">
                    <ref role="2Gs0qQ" node="yBZlauH8_1" resolve="project" />
                  </node>
                </node>
              </node>
              <node concept="1rXfSq" id="15VbAzMFAsh" role="3clFbw">
                <ref role="37wK5l" node="7iFq8OZTge6" resolve="projectHasPath" />
                <node concept="1eOMI4" id="15VbAzMFB6h" role="37wK5m">
                  <node concept="10QFUN" id="15VbAzMFB6i" role="1eOMHV">
                    <node concept="2GrUjf" id="15VbAzMFB6g" role="10QFUP">
                      <ref role="2Gs0qQ" node="yBZlauH8_1" resolve="project" />
                    </node>
                    <node concept="3uibUv" id="15VbAzMFB6f" role="10QFUM">
                      <ref role="3uigEE" to="z1c3:~FileBasedProject" resolve="FileBasedProject" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="yBZlauH8_a" role="37wK5m">
                  <ref role="3cqZAo" node="yBZlauH8_i" resolve="projectFile" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1RTSjGs$07X" role="3cqZAp">
          <node concept="10Nm6u" id="1RTSjGs$1mf" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="yBZlauH8_g" role="1B3o_S" />
      <node concept="3uibUv" id="yBZlauH8_h" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="37vLTG" id="yBZlauH8_i" role="3clF46">
        <property role="TrG5h" value="projectFile" />
        <node concept="3uibUv" id="yBZlauH8_j" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
        <node concept="2AHcQZ" id="2BGPXkEusdw" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2BGPXkEvLRu" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="yBZlauH8_k" role="jymVt" />
    <node concept="3clFb_" id="yBZlauH8_l" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addProject" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="yBZlauH8_m" role="3clF47">
        <node concept="1gVbGN" id="yBZlauH8_n" role="3cqZAp">
          <node concept="3fqX7Q" id="yBZlauH8_o" role="1gVkn0">
            <node concept="2OqwBi" id="yBZlauH8_p" role="3fr31v">
              <node concept="37vLTw" id="yBZlauH8_q" role="2Oq$k0">
                <ref role="3cqZAo" node="yBZlauH8zG" resolve="myProjects" />
              </node>
              <node concept="3JPx81" id="yBZlauH8_r" role="2OqNvi">
                <node concept="37vLTw" id="yBZlauH8_s" role="25WWJ7">
                  <ref role="3cqZAo" node="yBZlauH8_A" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="35NalRS7iMD" role="3cqZAp">
          <node concept="3clFbS" id="35NalRS7iMF" role="3clFbx">
            <node concept="RRSsy" id="3jYQuSB37rx" role="3cqZAp">
              <property role="RRSoG" value="gZ5fksE/warn" />
              <node concept="Xl_RD" id="35NalRS7js_" role="RRSoy">
                <property role="Xl_RC" value="ProjectContainer is too big" />
              </node>
            </node>
          </node>
          <node concept="3eOSWO" id="35NalRS7jqx" role="3clFbw">
            <node concept="3cmrfG" id="35NalRS7jqM" role="3uHU7w">
              <property role="3cmrfH" value="100" />
            </node>
            <node concept="1rXfSq" id="35NalRS7iR$" role="3uHU7B">
              <ref role="37wK5l" node="yBZlauH8A0" resolve="size" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="yBZlauH8_t" role="3cqZAp">
          <node concept="2OqwBi" id="yBZlauH8_u" role="3clFbG">
            <node concept="37vLTw" id="5NI3kHNexrx" role="2Oq$k0">
              <ref role="3cqZAo" node="yBZlauH8zG" resolve="myProjects" />
            </node>
            <node concept="TSZUe" id="yBZlauH8_y" role="2OqNvi">
              <node concept="37vLTw" id="yBZlauH8_z" role="25WWJ7">
                <ref role="3cqZAo" node="yBZlauH8_A" resolve="project" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5NI3kHNeuhr" role="1B3o_S" />
      <node concept="3cqZAl" id="yBZlauH8__" role="3clF45" />
      <node concept="37vLTG" id="yBZlauH8_A" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="yBZlauH8_B" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="yBZlauH8_C" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="yBZlauH8_D" role="jymVt" />
    <node concept="3clFb_" id="yBZlauH8_E" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="removeProject" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="yBZlauH8_F" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="yBZlauH8_G" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="yBZlauH8_H" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="yBZlauH8_I" role="3clF47">
        <node concept="1gVbGN" id="yBZlauH8_J" role="3cqZAp">
          <node concept="2OqwBi" id="yBZlauH8_K" role="1gVkn0">
            <node concept="37vLTw" id="yBZlauH8_L" role="2Oq$k0">
              <ref role="3cqZAo" node="yBZlauH8zG" resolve="myProjects" />
            </node>
            <node concept="3JPx81" id="yBZlauH8_M" role="2OqNvi">
              <node concept="37vLTw" id="yBZlauH8_N" role="25WWJ7">
                <ref role="3cqZAo" node="yBZlauH8_F" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="yBZlauH8_O" role="3cqZAp">
          <node concept="2OqwBi" id="yBZlauH8_P" role="3clFbG">
            <node concept="37vLTw" id="yBZlauH8_Q" role="2Oq$k0">
              <ref role="3cqZAo" node="yBZlauH8zG" resolve="myProjects" />
            </node>
            <node concept="3dhRuq" id="yBZlauH8_R" role="2OqNvi">
              <node concept="37vLTw" id="yBZlauH8_S" role="25WWJ7">
                <ref role="3cqZAo" node="yBZlauH8_F" resolve="project" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5NI3kHNeuFB" role="1B3o_S" />
      <node concept="3cqZAl" id="yBZlauH8_Y" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="yBZlauH8_Z" role="jymVt" />
    <node concept="3clFb_" id="yBZlauH8A0" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="size" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="yBZlauH8A1" role="3clF47">
        <node concept="3cpWs6" id="35NalRS7iFk" role="3cqZAp">
          <node concept="2OqwBi" id="35NalRS7iFl" role="3cqZAk">
            <node concept="37vLTw" id="35NalRS7iFm" role="2Oq$k0">
              <ref role="3cqZAo" node="yBZlauH8zG" resolve="myProjects" />
            </node>
            <node concept="34oBXx" id="35NalRS7iFn" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="yBZlauH8A6" role="1B3o_S" />
      <node concept="10Oyi0" id="35NalRS7hQ4" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="yBZlauH8A8" role="jymVt" />
    <node concept="2YIFZL" id="7iFq8OZTge6" role="jymVt">
      <property role="TrG5h" value="projectHasPath" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="7iFq8OZTge7" role="3clF47">
        <node concept="3cpWs8" id="7iFq8OZTge8" role="3cqZAp">
          <node concept="3cpWsn" id="7iFq8OZTge9" role="3cpWs9">
            <property role="TrG5h" value="projectFile" />
            <node concept="3uibUv" id="7iFq8OZTgea" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2OqwBi" id="7iFq8OZTgeb" role="33vP2m">
              <node concept="37vLTw" id="7iFq8OZTgec" role="2Oq$k0">
                <ref role="3cqZAo" node="7iFq8OZTgeN" resolve="project" />
              </node>
              <node concept="liA8E" id="7iFq8OZTged" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~FileBasedProject.getProjectFile()" resolve="getProjectFile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7iFq8OZTgel" role="3cqZAp">
          <node concept="3uVAMA" id="7iFq8OZTgeC" role="1zxBo5">
            <node concept="XOnhg" id="7iFq8OZTgeH" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="xvs04dGzE8" role="1tU5fm">
                <node concept="3uibUv" id="7iFq8OZTgeI" role="nSUat">
                  <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7iFq8OZTgeD" role="1zc67A">
              <node concept="RRSsy" id="3jYQuSB37rB" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="7iFq8OZTgeF" role="RRSoy">
                  <property role="Xl_RC" value="Cannot access the project file in container" />
                </node>
                <node concept="37vLTw" id="7iFq8OZTgeG" role="RRSow">
                  <ref role="3cqZAo" node="7iFq8OZTgeH" resolve="e" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7iFq8OZTgem" role="1zxBo7">
            <node concept="3cpWs8" id="7iFq8OZTgen" role="3cqZAp">
              <node concept="3cpWsn" id="7iFq8OZTgeo" role="3cpWs9">
                <property role="TrG5h" value="myProjectPath" />
                <node concept="17QB3L" id="7iFq8OZTgep" role="1tU5fm" />
                <node concept="2OqwBi" id="7iFq8OZTgeq" role="33vP2m">
                  <node concept="37vLTw" id="7iFq8OZTger" role="2Oq$k0">
                    <ref role="3cqZAo" node="7iFq8OZTge9" resolve="projectFile" />
                  </node>
                  <node concept="liA8E" id="7iFq8OZTges" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~File.getCanonicalPath()" resolve="getCanonicalPath" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7iFq8OZTgez" role="3cqZAp">
              <node concept="2YIFZM" id="2BGPXkEulfF" role="3cqZAk">
                <ref role="1Pybhc" to="33ny:~Objects" resolve="Objects" />
                <ref role="37wK5l" to="33ny:~Objects.equals(java.lang.Object,java.lang.Object)" resolve="equals" />
                <node concept="37vLTw" id="2BGPXkEumf1" role="37wK5m">
                  <ref role="3cqZAo" node="7iFq8OZTgeo" resolve="myProjectPath" />
                </node>
                <node concept="2OqwBi" id="35NalRS7g1h" role="37wK5m">
                  <node concept="37vLTw" id="2BGPXkEunV4" role="2Oq$k0">
                    <ref role="3cqZAo" node="7iFq8OZTgeP" resolve="path" />
                  </node>
                  <node concept="liA8E" id="35NalRS7hra" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~File.getCanonicalPath()" resolve="getCanonicalPath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7iFq8OZTgeJ" role="3cqZAp">
          <node concept="3clFbT" id="7iFq8OZTgeK" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2BGPXkEtSGT" role="1B3o_S" />
      <node concept="10P_77" id="7iFq8OZTgeM" role="3clF45" />
      <node concept="37vLTG" id="7iFq8OZTgeN" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="15VbAzMFzlf" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~FileBasedProject" resolve="FileBasedProject" />
        </node>
      </node>
      <node concept="37vLTG" id="7iFq8OZTgeP" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="7iFq8OZTgeQ" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
        <node concept="2AHcQZ" id="2BGPXkEtYQm" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5NI3kHNetax" role="jymVt" />
    <node concept="3uibUv" id="5NI3kHNerbd" role="EKbjA">
      <ref role="3uigEE" to="z1c3:~ProjectManagerListener" resolve="ProjectManagerListener" />
    </node>
    <node concept="3clFb_" id="6ylsT8BF6Uf" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="projectClosed" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="6ylsT8BF6Ug" role="1B3o_S" />
      <node concept="3cqZAl" id="6ylsT8BF6Ui" role="3clF45" />
      <node concept="37vLTG" id="6ylsT8BF6Uj" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="6ylsT8BF6Uk" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="6ylsT8BF6Ul" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="6ylsT8BF6Um" role="3clF47">
        <node concept="3clFbF" id="6ylsT8BFbm1" role="3cqZAp">
          <node concept="1rXfSq" id="6ylsT8BFbm0" role="3clFbG">
            <ref role="37wK5l" node="yBZlauH8_E" resolve="removeProject" />
            <node concept="37vLTw" id="6ylsT8BFbo3" role="37wK5m">
              <ref role="3cqZAo" node="6ylsT8BF6Uj" resolve="project" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6ylsT8BFapO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6ylsT8BF9KF" role="jymVt" />
    <node concept="3clFb_" id="6ylsT8BF6Un" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="projectOpened" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="6ylsT8BF6Uo" role="1B3o_S" />
      <node concept="3cqZAl" id="6ylsT8BF6Uq" role="3clF45" />
      <node concept="37vLTG" id="6ylsT8BF6Ur" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="6ylsT8BF6Us" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="6ylsT8BF6Ut" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="6ylsT8BF6Uu" role="3clF47">
        <node concept="3clFbF" id="6ylsT8BFbpX" role="3cqZAp">
          <node concept="1rXfSq" id="6ylsT8BFbpW" role="3clFbG">
            <ref role="37wK5l" node="yBZlauH8_l" resolve="addProject" />
            <node concept="37vLTw" id="6ylsT8BFbrZ" role="37wK5m">
              <ref role="3cqZAo" node="6ylsT8BF6Ur" resolve="project" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6ylsT8BFaXg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3eUNqOk4feo">
    <property role="TrG5h" value="EnvironmentBase" />
    <property role="1sVAO0" value="true" />
    <property role="1EXbeo" value="false" />
    <node concept="2tJIrI" id="5A5jZrz7BoC" role="jymVt" />
    <node concept="312cEg" id="3eUNqOk7wUa" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myConfig" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="3eUNqOk7wRx" role="1B3o_S" />
      <node concept="3uibUv" id="3eUNqOk7wTA" role="1tU5fm">
        <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
    </node>
    <node concept="312cEg" id="6LlhC3WLD99" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myInitialized" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="6LlhC3WLCN7" role="1B3o_S" />
      <node concept="10P_77" id="6LlhC3WLD7Y" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="yBZlauHaA8" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myProjectContainer" />
      <node concept="3Tm6S6" id="yBZlauGXHh" role="1B3o_S" />
      <node concept="3uibUv" id="yBZlauGZuM" role="1tU5fm">
        <ref role="3uigEE" node="yBZlauH8zE" resolve="ProjectContainer" />
      </node>
    </node>
    <node concept="312cEg" id="3x_lgCAcKqs" role="jymVt">
      <property role="TrG5h" value="myRootClassLoader" />
      <node concept="3Tm6S6" id="3x_lgCAcKqq" role="1B3o_S" />
      <node concept="3uibUv" id="3x_lgCAcKqr" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
      </node>
      <node concept="10Nm6u" id="3x_lgCAcX3z" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="4Plof0GDxEi" role="jymVt" />
    <node concept="2YIFZL" id="4Plof0GDw7T" role="jymVt">
      <property role="TrG5h" value="initializeLog" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4Plof0GDw7U" role="3clF47">
        <node concept="3clFbF" id="107wlcQqkhn" role="3cqZAp">
          <node concept="2OqwBi" id="107wlcQqkhk" role="3clFbG">
            <node concept="10M0yZ" id="107wlcQqkhl" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
            </node>
            <node concept="liA8E" id="107wlcQqkhm" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="Xl_RD" id="107wlcQqkyc" role="37wK5m">
                <property role="Xl_RC" value="Don't use this method, use LogInitializer directly, and only if your code truly need to manage log initialization (usually - no)" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7o_691ts_nD" role="3cqZAp">
          <node concept="3uVAMA" id="7o_691ts_nE" role="1zxBo5">
            <node concept="XOnhg" id="7o_691ts_nF" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="7o_691ts_nG" role="1tU5fm">
                <node concept="3uibUv" id="7o_691ts_nH" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7o_691ts_nI" role="1zc67A">
              <node concept="3clFbF" id="7o_691ts_nJ" role="3cqZAp">
                <node concept="2OqwBi" id="7o_691ts_nK" role="3clFbG">
                  <node concept="10M0yZ" id="7o_691ts_nL" role="2Oq$k0">
                    <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                    <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                  </node>
                  <node concept="liA8E" id="7o_691ts_nM" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                    <node concept="Xl_RD" id="7o_691ts_nN" role="37wK5m">
                      <property role="Xl_RC" value="Could not initialize log" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7o_691ts_nO" role="3cqZAp">
                <node concept="2OqwBi" id="7o_691ts_nP" role="3clFbG">
                  <node concept="37vLTw" id="7o_691ts_nQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="7o_691ts_nF" resolve="e" />
                  </node>
                  <node concept="liA8E" id="7o_691ts_nR" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace(java.io.PrintStream)" resolve="printStackTrace" />
                    <node concept="10M0yZ" id="7o_691ts_nS" role="37wK5m">
                      <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                      <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7o_691ts_nT" role="1zxBo7">
            <node concept="3clFbF" id="2MkJkJgf$so" role="3cqZAp">
              <node concept="2YIFZM" id="2MkJkJgfCHK" role="3clFbG">
                <ref role="37wK5l" to="v9gs:4B1FZuRjhXP" resolve="init" />
                <ref role="1Pybhc" to="v9gs:4B1FZuRjhXN" resolve="LogInitializer" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4Plof0GDw8e" role="1B3o_S" />
      <node concept="3cqZAl" id="4Plof0GDw8f" role="3clF45" />
      <node concept="P$JXv" id="107wlcQqkQC" role="lGtFl">
        <node concept="TZ5HI" id="107wlcQqkQD" role="3nqlJM">
          <node concept="1PaTwC" id="1E1X3WHs_Uw" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHs_Ux" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_Uy" role="1PaTwD">
              <property role="3oM_SC" value="method" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_Uz" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_U$" role="1PaTwD">
              <property role="3oM_SC" value="been" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_U_" role="1PaTwD">
              <property role="3oM_SC" value="replaced" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_UA" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_UB" role="1PaTwD">
              <property role="3oM_SC" value="explicit" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_UC" role="1PaTwD">
              <property role="3oM_SC" value="LogInitializer.init()" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_UD" role="1PaTwD">
              <property role="3oM_SC" value="call" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_UE" role="1PaTwD">
              <property role="3oM_SC" value="*BEFORE*" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_UF" role="1PaTwD">
              <property role="3oM_SC" value="any" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_UG" role="1PaTwD">
              <property role="3oM_SC" value="env" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_UH" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_UI" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_UJ" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_UK" role="1PaTwD">
              <property role="3oM_SC" value="initialized." />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="107wlcQqkQF" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
        <node concept="2B6LJw" id="107wlcQrEkX" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~Deprecated.since()" resolve="since" />
          <node concept="Xl_RD" id="107wlcQrEm0" role="2B70Vg">
            <property role="Xl_RC" value="2025.3" />
          </node>
        </node>
        <node concept="2B6LJw" id="107wlcQrEJR" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~Deprecated.forRemoval()" resolve="forRemoval" />
          <node concept="3clFbT" id="107wlcQrEME" role="2B70Vg">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2HmhDwzk30X" role="jymVt" />
    <node concept="3clFbW" id="3eUNqOk4feY" role="jymVt">
      <node concept="3cqZAl" id="3eUNqOk4feZ" role="3clF45" />
      <node concept="3clFbS" id="3eUNqOk4ff1" role="3clF47">
        <node concept="3clFbF" id="28TMbOSF8vp" role="3cqZAp">
          <node concept="37vLTI" id="28TMbOSF8JC" role="3clFbG">
            <node concept="37vLTw" id="28TMbOSF8Ld" role="37vLTx">
              <ref role="3cqZAo" node="3eUNqOk7wX9" resolve="config" />
            </node>
            <node concept="37vLTw" id="28TMbOSF8vl" role="37vLTJ">
              <ref role="3cqZAo" node="3eUNqOk7wUa" resolve="myConfig" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="28TMbOSEMM8" role="3cqZAp">
          <node concept="3clFbS" id="28TMbOSEMMa" role="3clFbx">
            <node concept="3clFbF" id="28TMbOSENT1" role="3cqZAp">
              <node concept="2YIFZM" id="28TMbOSENTk" role="3clFbG">
                <ref role="1Pybhc" to="fyhk:~RuntimeFlags" resolve="RuntimeFlags" />
                <ref role="37wK5l" to="fyhk:~RuntimeFlags.setTestMode(jetbrains.mps.TestMode)" resolve="setTestMode" />
                <node concept="Rm8GO" id="28TMbOSENW4" role="37wK5m">
                  <ref role="Rm8GQ" to="fyhk:~TestMode.USUAL" resolve="USUAL" />
                  <ref role="1Px2BO" to="fyhk:~TestMode" resolve="TestMode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="28TMbOSF95h" role="3clFbw">
            <node concept="liA8E" id="28TMbOSF9f4" role="2OqNvi">
              <ref role="37wK5l" node="28TMbOSF4Ad" resolve="isTestMode" />
            </node>
            <node concept="37vLTw" id="28TMbOSF9oE" role="2Oq$k0">
              <ref role="3cqZAo" node="3eUNqOk7wUa" resolve="myConfig" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3eUNqOk4feL" role="1B3o_S" />
      <node concept="37vLTG" id="3eUNqOk7wX9" role="3clF46">
        <property role="TrG5h" value="config" />
        <node concept="3uibUv" id="3eUNqOk7wX8" role="1tU5fm">
          <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
        </node>
        <node concept="2AHcQZ" id="3eUNqOk7x2Q" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="28TMbOSELL7" role="jymVt" />
    <node concept="3clFb_" id="3eUNqOk6clf" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="init" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3Tmbuc" id="1Pvl5nrejeK" role="1B3o_S" />
      <node concept="3clFbS" id="3eUNqOk6cli" role="3clF47">
        <node concept="3clFbJ" id="3pEStHM4f3P" role="3cqZAp">
          <node concept="3clFbS" id="3pEStHM4f3R" role="3clFbx">
            <node concept="YS8fn" id="3pEStHM4fan" role="3cqZAp">
              <node concept="2ShNRf" id="3pEStHM4fb0" role="YScLw">
                <node concept="1pGfFk" id="3oT7WQ905aN" role="2ShVmc">
                  <ref role="37wK5l" node="3oT7WQ903sx" resolve="EnvironmentBase.EnvironmentInitializedTwiceException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="3pEStHM4f6S" role="3clFbw">
            <ref role="3cqZAo" node="6LlhC3WLD99" resolve="myInitialized" />
          </node>
        </node>
        <node concept="3clFbF" id="3x_lgCAcKqz" role="3cqZAp">
          <node concept="37vLTI" id="3x_lgCAcKq$" role="3clFbG">
            <node concept="37vLTw" id="3x_lgCAdZnd" role="37vLTJ">
              <ref role="3cqZAo" node="3x_lgCAcKqs" resolve="myRootClassLoader" />
            </node>
            <node concept="1rXfSq" id="3x_lgCAcKqC" role="37vLTx">
              <ref role="37wK5l" node="3x_lgCAcjqZ" resolve="createRootClassLoader" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2iqAsxGkeDV" role="3cqZAp">
          <node concept="37vLTI" id="2iqAsxGkfi7" role="3clFbG">
            <node concept="2ShNRf" id="2iqAsxGkjp9" role="37vLTx">
              <node concept="1pGfFk" id="2iqAsxGkjoN" role="2ShVmc">
                <ref role="37wK5l" node="yBZlauH8zL" resolve="ProjectContainer" />
                <node concept="37vLTw" id="2iqAsxGkk1c" role="37wK5m">
                  <ref role="3cqZAo" node="1Pvl5nre0KE" resolve="mpsPlatform" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2iqAsxGkeDT" role="37vLTJ">
              <ref role="3cqZAo" node="yBZlauHaA8" resolve="myProjectContainer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3eUNqOk8PRy" role="3cqZAp">
          <node concept="1rXfSq" id="3eUNqOk8PRw" role="3clFbG">
            <ref role="37wK5l" node="2jln2VqY69D" resolve="initMacros" />
            <node concept="2OqwBi" id="1Pvl5nrearw" role="37wK5m">
              <node concept="37vLTw" id="1Pvl5nreain" role="2Oq$k0">
                <ref role="3cqZAo" node="1Pvl5nre0KE" resolve="mpsPlatform" />
              </node>
              <node concept="liA8E" id="1Pvl5nreaHJ" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="1Pvl5nreaM7" role="37wK5m">
                  <ref role="3VsUkX" to="z1c3:~PathMacros" resolve="PathMacros" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="RRSsy" id="3jYQuSB36Bm" role="3cqZAp">
          <property role="RRSoG" value="h1akgim/info" />
          <node concept="Xl_RD" id="3HZVFd9gI6h" role="RRSoy">
            <property role="Xl_RC" value="Initializing libraries" />
          </node>
        </node>
        <node concept="3clFbF" id="1Pvl5nre9AW" role="3cqZAp">
          <node concept="1rXfSq" id="1Pvl5nre9AX" role="3clFbG">
            <ref role="37wK5l" node="2jln2VqYj4c" resolve="initLibraries" />
            <node concept="2OqwBi" id="1Pvl5nre9AY" role="37wK5m">
              <node concept="liA8E" id="1Pvl5nre9AZ" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="1Pvl5nre9B0" role="37wK5m">
                  <ref role="3VsUkX" to="32g5:~LibraryInitializer" resolve="LibraryInitializer" />
                </node>
              </node>
              <node concept="37vLTw" id="1Pvl5nrea9_" role="2Oq$k0">
                <ref role="3cqZAo" node="1Pvl5nre0KE" resolve="mpsPlatform" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6LlhC3WLDuK" role="3cqZAp">
          <node concept="37vLTI" id="6LlhC3WLDBi" role="3clFbG">
            <node concept="3clFbT" id="6LlhC3WLDCv" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="6LlhC3WLDuI" role="37vLTJ">
              <ref role="3cqZAo" node="6LlhC3WLD99" resolve="myInitialized" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3eUNqOk6cld" role="3clF45" />
      <node concept="37vLTG" id="1Pvl5nre0KE" role="3clF46">
        <property role="TrG5h" value="mpsPlatform" />
        <node concept="3uibUv" id="1Pvl5nre0KD" role="1tU5fm">
          <ref role="3uigEE" to="4o98:~Platform" resolve="Platform" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3eUNqOk7Hw1" role="jymVt" />
    <node concept="3clFb_" id="2jln2VqY69D" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="initMacros" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="2jln2VqY69G" role="3clF47">
        <node concept="3cpWs8" id="5mza6QqkOGW" role="3cqZAp">
          <node concept="3cpWsn" id="5mza6QqkOGZ" role="3cpWs9">
            <property role="TrG5h" value="macros" />
            <node concept="2ShNRf" id="5mza6QqkPeH" role="33vP2m">
              <node concept="1pGfFk" id="3eUNqOk8ynm" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <node concept="17QB3L" id="3eUNqOk8yG_" role="1pMfVU" />
                <node concept="17QB3L" id="3eUNqOk8yOt" role="1pMfVU" />
              </node>
            </node>
            <node concept="3uibUv" id="3eUNqOk8wHs" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <node concept="17QB3L" id="3eUNqOk8wWK" role="11_B2D" />
              <node concept="17QB3L" id="3eUNqOk8xhz" role="11_B2D" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3eUNqOk8Qpp" role="3cqZAp">
          <node concept="3cpWsn" id="3eUNqOk8Qpq" role="3cpWs9">
            <property role="TrG5h" value="macrosConfig" />
            <node concept="3rvAFt" id="3eUNqOk8Qpa" role="1tU5fm">
              <node concept="3uibUv" id="3eUNqOk8Qpg" role="3rvSg0">
                <ref role="3uigEE" to="guwi:~File" resolve="File" />
              </node>
              <node concept="17QB3L" id="3eUNqOk8Qpf" role="3rvQeY" />
            </node>
            <node concept="2OqwBi" id="3eUNqOk8Qpr" role="33vP2m">
              <node concept="liA8E" id="3eUNqOk8Qps" role="2OqNvi">
                <ref role="37wK5l" node="5UWB9tk4n9" resolve="getMacros" />
              </node>
              <node concept="37vLTw" id="3eUNqOk8Qpt" role="2Oq$k0">
                <ref role="3cqZAo" node="3eUNqOk7wUa" resolve="myConfig" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="5mza6QqkPQg" role="3cqZAp">
          <node concept="2OqwBi" id="5mza6Qql6$q" role="2GsD0m">
            <node concept="3lbrtF" id="5mza6Qql8pq" role="2OqNvi" />
            <node concept="37vLTw" id="3eUNqOk8Qpu" role="2Oq$k0">
              <ref role="3cqZAo" node="3eUNqOk8Qpq" resolve="macrosConfig" />
            </node>
          </node>
          <node concept="2GrKxI" id="5mza6QqkPQi" role="2Gsz3X">
            <property role="TrG5h" value="name" />
          </node>
          <node concept="3clFbS" id="5mza6QqkPQm" role="2LFqv$">
            <node concept="3clFbF" id="5mza6QqkRjL" role="3cqZAp">
              <node concept="37vLTI" id="5mza6QqkSlv" role="3clFbG">
                <node concept="2OqwBi" id="5mza6QqkZY0" role="37vLTx">
                  <node concept="liA8E" id="5mza6Qql3Fl" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                  </node>
                  <node concept="3EllGN" id="5mza6QqkV7X" role="2Oq$k0">
                    <node concept="2GrUjf" id="5mza6QqkV8p" role="3ElVtu">
                      <ref role="2Gs0qQ" node="5mza6QqkPQi" resolve="name" />
                    </node>
                    <node concept="37vLTw" id="3eUNqOk8QZY" role="3ElQJh">
                      <ref role="3cqZAo" node="3eUNqOk8Qpq" resolve="macrosConfig" />
                    </node>
                  </node>
                </node>
                <node concept="3EllGN" id="5mza6QqkRYt" role="37vLTJ">
                  <node concept="2GrUjf" id="5mza6QqkRYJ" role="3ElVtu">
                    <ref role="2Gs0qQ" node="5mza6QqkPQi" resolve="name" />
                  </node>
                  <node concept="37vLTw" id="5mza6QqkRjK" role="3ElQJh">
                    <ref role="3cqZAo" node="5mza6QqkOGZ" resolve="macros" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="KL8AqljyKb" role="3cqZAp">
          <node concept="2OqwBi" id="KL8AqljyKc" role="3clFbG">
            <node concept="37vLTw" id="1Pvl5nrecMW" role="2Oq$k0">
              <ref role="3cqZAo" node="1Pvl5nreaRM" resolve="macroComponent" />
            </node>
            <node concept="liA8E" id="KL8AqljyKe" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~PathMacros.addMacrosProvider(jetbrains.mps.project.PathMacrosProvider)" resolve="addMacrosProvider" />
              <node concept="1rXfSq" id="4JRAuHL9cSF" role="37wK5m">
                <ref role="37wK5l" node="5mza6Qqg6Rs" resolve="createMapMacrosProvider" />
                <node concept="37vLTw" id="4JRAuHL9cSG" role="37wK5m">
                  <ref role="3cqZAo" node="5mza6QqkOGZ" resolve="macros" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2jln2VqY4EW" role="1B3o_S" />
      <node concept="37vLTG" id="1Pvl5nreaRM" role="3clF46">
        <property role="TrG5h" value="macroComponent" />
        <node concept="3uibUv" id="1Pvl5nreaRL" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~PathMacros" resolve="PathMacros" />
        </node>
      </node>
      <node concept="3cqZAl" id="4JRAuHL9g18" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3eUNqOk7$mT" role="jymVt" />
    <node concept="2YIFZL" id="5mza6Qqg6Rs" role="jymVt">
      <property role="TrG5h" value="createMapMacrosProvider" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="5mza6Qqg6Rv" role="3clF47">
        <node concept="3cpWs8" id="KL8AqljyJk" role="3cqZAp">
          <node concept="3cpWsn" id="KL8AqljyJl" role="3cpWs9">
            <property role="TrG5h" value="realMacros" />
            <node concept="3uibUv" id="KL8AqljyJm" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <node concept="17QB3L" id="KL8AqljyJn" role="11_B2D" />
              <node concept="17QB3L" id="KL8AqljyJo" role="11_B2D" />
            </node>
            <node concept="2ShNRf" id="KL8AqljyJp" role="33vP2m">
              <node concept="1pGfFk" id="KL8AqljyJq" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <node concept="17QB3L" id="KL8AqljyJr" role="1pMfVU" />
                <node concept="17QB3L" id="KL8AqljyJs" role="1pMfVU" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="KL8AqljyJt" role="3cqZAp">
          <node concept="2OqwBi" id="3eUNqOk8LAs" role="1DdaDG">
            <node concept="37vLTw" id="5mza6Qqg9B9" role="2Oq$k0">
              <ref role="3cqZAo" node="5mza6Qqg7gI" resolve="macros" />
            </node>
            <node concept="liA8E" id="3eUNqOk8MlX" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.keySet()" resolve="keySet" />
            </node>
          </node>
          <node concept="3cpWsn" id="KL8AqljyJx" role="1Duv9x">
            <property role="TrG5h" value="macroName" />
            <property role="3TUv4t" value="false" />
            <node concept="17QB3L" id="KL8AqljyJy" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="KL8AqljyJz" role="2LFqv$">
            <node concept="3cpWs8" id="2jln2Vr2O3n" role="3cqZAp">
              <node concept="3cpWsn" id="2jln2Vr2O3o" role="3cpWs9">
                <property role="TrG5h" value="macroValue" />
                <node concept="17QB3L" id="2jln2Vr2O3d" role="1tU5fm" />
                <node concept="3EllGN" id="2jln2Vr2O3p" role="33vP2m">
                  <node concept="37vLTw" id="2jln2Vr2O3q" role="3ElVtu">
                    <ref role="3cqZAo" node="KL8AqljyJx" resolve="macroName" />
                  </node>
                  <node concept="37vLTw" id="2jln2Vr2O3r" role="3ElQJh">
                    <ref role="3cqZAo" node="5mza6Qqg7gI" resolve="macros" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="1Pvl5nrflJa" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXo9hH" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXo9hI" role="1PaTwD">
                  <property role="3oM_SC" value="XXX" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9hJ" role="1PaTwD">
                  <property role="3oM_SC" value="anyone" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9hK" role="1PaTwD">
                  <property role="3oM_SC" value="knows" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9hL" role="1PaTwD">
                  <property role="3oM_SC" value="why" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9hM" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9hN" role="1PaTwD">
                  <property role="3oM_SC" value="care" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9hO" role="1PaTwD">
                  <property role="3oM_SC" value="that" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9hP" role="1PaTwD">
                  <property role="3oM_SC" value="much" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9hQ" role="1PaTwD">
                  <property role="3oM_SC" value="about" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9hR" role="1PaTwD">
                  <property role="3oM_SC" value="'canonical'" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9hS" role="1PaTwD">
                  <property role="3oM_SC" value="directory" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9hT" role="1PaTwD">
                  <property role="3oM_SC" value="path" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9hU" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9hV" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9hW" role="1PaTwD">
                  <property role="3oM_SC" value="macro" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9hX" role="1PaTwD">
                  <property role="3oM_SC" value="value?" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9hY" role="1PaTwD">
                  <property role="3oM_SC" value="I" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9hZ" role="1PaTwD">
                  <property role="3oM_SC" value="see" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9i0" role="1PaTwD">
                  <property role="3oM_SC" value="no" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9i1" role="1PaTwD">
                  <property role="3oM_SC" value="reason" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9i2" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9i3" role="1PaTwD">
                  <property role="3oM_SC" value="enforce" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9i4" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9i5" role="1PaTwD">
                  <property role="3oM_SC" value="at" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9i6" role="1PaTwD">
                  <property role="3oM_SC" value="all" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2jln2Vr2Far" role="3cqZAp">
              <node concept="3cpWsn" id="2jln2Vr2Fas" role="3cpWs9">
                <property role="TrG5h" value="path" />
                <node concept="3uibUv" id="2jln2Vr2Fat" role="1tU5fm">
                  <ref role="3uigEE" to="v9gs:7vzkp06OD_v" resolve="CanonicalPath" />
                </node>
                <node concept="2ShNRf" id="2jln2Vr2Fo9" role="33vP2m">
                  <node concept="1pGfFk" id="2jln2Vr2NE3" role="2ShVmc">
                    <ref role="37wK5l" to="v9gs:7vzkp06OD_x" resolve="CanonicalPath" />
                    <node concept="37vLTw" id="2jln2Vr2O3s" role="37wK5m">
                      <ref role="3cqZAo" node="2jln2Vr2O3o" resolve="macroValue" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2jln2Vr2OZv" role="3cqZAp">
              <node concept="3clFbS" id="2jln2Vr2OZy" role="3clFbx">
                <node concept="3clFbF" id="KL8AqljyJV" role="3cqZAp">
                  <node concept="2OqwBi" id="KL8AqljyJW" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTAcW" role="2Oq$k0">
                      <ref role="3cqZAo" node="KL8AqljyJl" resolve="realMacros" />
                    </node>
                    <node concept="liA8E" id="KL8AqljyJY" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                      <node concept="37vLTw" id="3GM_nagTy9O" role="37wK5m">
                        <ref role="3cqZAo" node="KL8AqljyJx" resolve="macroName" />
                      </node>
                      <node concept="2OqwBi" id="2jln2Vr2Pxx" role="37wK5m">
                        <node concept="37vLTw" id="2jln2Vr2PtC" role="2Oq$k0">
                          <ref role="3cqZAo" node="2jln2Vr2Fas" resolve="path" />
                        </node>
                        <node concept="liA8E" id="2jln2Vr2PGU" role="2OqNvi">
                          <ref role="37wK5l" to="v9gs:2jln2Vr1ksE" resolve="getValue" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2jln2Vr2P58" role="3clFbw">
                <node concept="37vLTw" id="2jln2Vr2P3N" role="2Oq$k0">
                  <ref role="3cqZAo" node="2jln2Vr2Fas" resolve="path" />
                </node>
                <node concept="liA8E" id="2jln2Vr2Pbo" role="2OqNvi">
                  <ref role="37wK5l" to="v9gs:2jln2Vr1dnx" resolve="isValidDirectory" />
                </node>
              </node>
              <node concept="9aQIb" id="4JRAuHL96K8" role="9aQIa">
                <node concept="3clFbS" id="4JRAuHL96K9" role="9aQI4">
                  <node concept="RRSsy" id="4JRAuHL96Vd" role="3cqZAp">
                    <property role="RRSoG" value="gZ5fh_4/error" />
                    <node concept="3cpWs3" id="4JRAuHL970V" role="RRSoy">
                      <node concept="3cpWs3" id="4JRAuHL97t7" role="3uHU7B">
                        <node concept="37vLTw" id="4JRAuHL97uR" role="3uHU7w">
                          <ref role="3cqZAo" node="KL8AqljyJx" resolve="macroName" />
                        </node>
                        <node concept="Xl_RD" id="4JRAuHL9711" role="3uHU7B">
                          <property role="Xl_RC" value="The macro '" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="4JRAuHL9713" role="3uHU7w">
                        <property role="Xl_RC" value="' to non-existent location" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5mza6QqgbGd" role="3cqZAp">
          <node concept="2ShNRf" id="KL8AqljyK8" role="3clFbG">
            <node concept="1pGfFk" id="KL8AqljyK9" role="2ShVmc">
              <ref role="37wK5l" to="v9gs:57xhZj4qVL7" resolve="MapPathMacrosProvider" />
              <node concept="37vLTw" id="3GM_nagT_wH" role="37wK5m">
                <ref role="3cqZAo" node="KL8AqljyJl" resolve="realMacros" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3eUNqOk8ufG" role="1B3o_S" />
      <node concept="3uibUv" id="5mza6Qqg6Rq" role="3clF45">
        <ref role="3uigEE" to="v9gs:57xhZj4qVKZ" resolve="MapPathMacrosProvider" />
      </node>
      <node concept="37vLTG" id="5mza6Qqg7gI" role="3clF46">
        <property role="TrG5h" value="macros" />
        <node concept="3uibUv" id="3eUNqOk8A5I" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="17QB3L" id="3eUNqOk8Aoe" role="11_B2D" />
          <node concept="17QB3L" id="3eUNqOk8Aoo" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3eUNqOk8t9z" role="jymVt" />
    <node concept="3clFb_" id="2jln2VqYj4c" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="initLibraries" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="5A5jZryYTCG" role="3clF46">
        <property role="TrG5h" value="libInitializer" />
        <node concept="3uibUv" id="7hYILd4VBy4" role="1tU5fm">
          <ref role="3uigEE" to="32g5:~LibraryInitializer" resolve="LibraryInitializer" />
        </node>
        <node concept="2AHcQZ" id="5mffBJ2W9Mw" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2jln2VqYj4f" role="3clF47" />
      <node concept="3Tmbuc" id="1sAB67TxiU3" role="1B3o_S" />
      <node concept="3cqZAl" id="1sAB67TxhdC" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3eUNqOk8Whh" role="jymVt" />
    <node concept="3clFb_" id="5mffBJ2WBJ9" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getRootClassLoader" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="true" />
      <property role="2aFKle" value="false" />
      <node concept="3Tmbuc" id="5mffBJ2WBJa" role="1B3o_S" />
      <node concept="3uibUv" id="5mffBJ2WBJb" role="3clF45">
        <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
      </node>
      <node concept="2AHcQZ" id="5mffBJ2WBJc" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="5mffBJ2WBJd" role="3clF47">
        <node concept="3cpWs6" id="3x_lgCAd0rY" role="3cqZAp">
          <node concept="37vLTw" id="3x_lgCAd42k" role="3cqZAk">
            <ref role="3cqZAo" node="3x_lgCAcKqs" resolve="myRootClassLoader" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="5mffBJ2WqCc" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs_UL" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_UM" role="1PaTwD">
            <property role="3oM_SC" value="Root" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_UN" role="1PaTwD">
            <property role="3oM_SC" value="class" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_UO" role="1PaTwD">
            <property role="3oM_SC" value="loader:" />
          </node>
        </node>
        <node concept="3WpeL9" id="442MknbZPPl" role="1Vez_I">
          <node concept="3oM_SD" id="442MknbZPPn" role="1PaTwD">
            <property role="3oM_SC" value="As" />
          </node>
          <node concept="3oM_SD" id="442MknbZPPo" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="442MknbZPPp" role="1PaTwD">
            <property role="3oM_SC" value="root" />
          </node>
          <node concept="3oM_SD" id="442MknbZPPq" role="1PaTwD">
            <property role="3oM_SC" value="class" />
          </node>
          <node concept="3oM_SD" id="442MknbZPPr" role="1PaTwD">
            <property role="3oM_SC" value="loader" />
          </node>
          <node concept="3oM_SD" id="442MknbZPPs" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="442MknbZPPt" role="1PaTwD">
            <property role="3oM_SC" value="libraries" />
          </node>
          <node concept="3oM_SD" id="442MknbZPPu" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="442MknbZPPv" role="1PaTwD">
            <property role="3oM_SC" value="LibraryInitializer" />
          </node>
        </node>
        <node concept="3WpeL9" id="442MknbZQqE" role="1Vez_I">
          <node concept="3oM_SD" id="442MknbZQqG" role="1PaTwD">
            <property role="3oM_SC" value="As" />
          </node>
          <node concept="3oM_SD" id="442MknbZQqH" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="442MknbZQqI" role="1PaTwD">
            <property role="3oM_SC" value="root" />
          </node>
          <node concept="3oM_SD" id="442MknbZQqJ" role="1PaTwD">
            <property role="3oM_SC" value="class" />
          </node>
          <node concept="3oM_SD" id="442MknbZQqK" role="1PaTwD">
            <property role="3oM_SC" value="loader" />
          </node>
          <node concept="3oM_SD" id="442MknbZQqL" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="442MknbZQqM" role="1PaTwD">
            <property role="3oM_SC" value="dumb" />
          </node>
          <node concept="3oM_SD" id="442MknbZQqN" role="1PaTwD">
            <property role="3oM_SC" value="idea" />
          </node>
          <node concept="3oM_SD" id="442MknbZQqO" role="1PaTwD">
            <property role="3oM_SC" value="plugin" />
          </node>
          <node concept="3oM_SD" id="442MknbZQqP" role="1PaTwD">
            <property role="3oM_SC" value="facet" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3x_lgCAcg5z" role="jymVt" />
    <node concept="3clFb_" id="3x_lgCAcjqZ" role="jymVt">
      <property role="TrG5h" value="createRootClassLoader" />
      <property role="1EzhhJ" value="false" />
      <node concept="3uibUv" id="3x_lgCAcoIx" role="3clF45">
        <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
      </node>
      <node concept="3Tmbuc" id="3x_lgCAcmHR" role="1B3o_S" />
      <node concept="3clFbS" id="3x_lgCAcjr3" role="3clF47">
        <node concept="3SKdUt" id="4142FbgUAAL" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9i7" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9i8" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9i9" role="1PaTwD">
              <property role="3oM_SC" value="idea" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ia" role="1PaTwD">
              <property role="3oM_SC" value="plugins" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ib" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ic" role="1PaTwD">
              <property role="3oM_SC" value="actual" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9id" role="1PaTwD">
              <property role="3oM_SC" value="(global," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ie" role="1PaTwD">
              <property role="3oM_SC" value="shared)" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9if" role="1PaTwD">
              <property role="3oM_SC" value="classpath" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ig" role="1PaTwD">
              <property role="3oM_SC" value="(both" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ih" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ii" role="1PaTwD">
              <property role="3oM_SC" value="Mps" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ij" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ik" role="1PaTwD">
              <property role="3oM_SC" value="Idea" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9il" role="1PaTwD">
              <property role="3oM_SC" value="env)," />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="12CYGR0Zkwi" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9im" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9in" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9io" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ip" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9iq" role="1PaTwD">
              <property role="3oM_SC" value="yet" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ir" role="1PaTwD">
              <property role="3oM_SC" value="another" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9is" role="1PaTwD">
              <property role="3oM_SC" value="CL" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4142FbgUDDc" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9it" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9iu" role="1PaTwD">
              <property role="3oM_SC" value="however," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9iv" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9iw" role="1PaTwD">
              <property role="3oM_SC" value="doesn't" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ix" role="1PaTwD">
              <property role="3oM_SC" value="look" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9iy" role="1PaTwD">
              <property role="3oM_SC" value="right" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9iz" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9i$" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9i_" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9iA" role="1PaTwD">
              <property role="3oM_SC" value="CL" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9iB" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9iC" role="1PaTwD">
              <property role="3oM_SC" value="DumbIdeaPluginFacet" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="12CYGR0ZlUt" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9iD" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9iE" role="1PaTwD">
              <property role="3oM_SC" value="(supposed" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9iF" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9iG" role="1PaTwD">
              <property role="3oM_SC" value="load" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9iH" role="1PaTwD">
              <property role="3oM_SC" value="classes" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9iI" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9iJ" role="1PaTwD">
              <property role="3oM_SC" value="any" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9iK" role="1PaTwD">
              <property role="3oM_SC" value="idea" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9iL" role="1PaTwD">
              <property role="3oM_SC" value="plugin)" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4142FbgUG3i" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9iM" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9iN" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9iO" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9iP" role="1PaTwD">
              <property role="3oM_SC" value="languages/solutions" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9iQ" role="1PaTwD">
              <property role="3oM_SC" value="referenced" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9iR" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9iS" role="1PaTwD">
              <property role="3oM_SC" value="&lt;library&gt;" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9iT" role="1PaTwD">
              <property role="3oM_SC" value="tag" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="12CYGR0ZnkF" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9iU" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9iV" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9iW" role="1PaTwD">
              <property role="3oM_SC" value="(these" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9iX" role="1PaTwD">
              <property role="3oM_SC" value="shall" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9iY" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9iZ" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9j0" role="1PaTwD">
              <property role="3oM_SC" value="CP" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9j1" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9j2" role="1PaTwD">
              <property role="3oM_SC" value="idea" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9j3" role="1PaTwD">
              <property role="3oM_SC" value="plugins)." />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9j4" role="1PaTwD">
              <property role="3oM_SC" value="With" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9j5" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9j6" role="1PaTwD">
              <property role="3oM_SC" value="single" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4142FbgUH$0" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9j7" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9j8" role="1PaTwD">
              <property role="3oM_SC" value="global" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9j9" role="1PaTwD">
              <property role="3oM_SC" value="CP" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ja" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9jb" role="1PaTwD">
              <property role="3oM_SC" value="have" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9jc" role="1PaTwD">
              <property role="3oM_SC" value="at" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9jd" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9je" role="1PaTwD">
              <property role="3oM_SC" value="moment," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9jf" role="1PaTwD">
              <property role="3oM_SC" value="it's" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9jg" role="1PaTwD">
              <property role="3oM_SC" value="hard" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9jh" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ji" role="1PaTwD">
              <property role="3oM_SC" value="make" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9jj" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9jk" role="1PaTwD">
              <property role="3oM_SC" value="distinction," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9jl" role="1PaTwD">
              <property role="3oM_SC" value="though." />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4142FbgUtfw" role="3cqZAp">
          <node concept="2OqwBi" id="2hWPXztVlrA" role="3cqZAk">
            <node concept="3VsKOn" id="2hWPXztVlrB" role="2Oq$k0">
              <ref role="3VsUkX" to="32g5:~LibraryInitializer" resolve="LibraryInitializer" />
            </node>
            <node concept="liA8E" id="2hWPXztVlrC" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Class.getClassLoader()" resolve="getClassLoader" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3x_lgCAdcvX" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="3x_lgCAgy3i" role="jymVt" />
    <node concept="3clFb_" id="6rx4kZDk5DQ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createProject" />
      <node concept="2AHcQZ" id="3HZVFd9cIuX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3uibUv" id="6rx4kZDk5DR" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3Tm1VV" id="6rx4kZDk5DS" role="1B3o_S" />
      <node concept="3clFbS" id="6rx4kZDk5DU" role="3clF47">
        <node concept="3clFbF" id="6LlhC3WLI8_" role="3cqZAp">
          <node concept="1rXfSq" id="6LlhC3WLI8z" role="3clFbG">
            <ref role="37wK5l" node="6LlhC3WLEQ3" resolve="checkInitialized" />
          </node>
        </node>
        <node concept="3cpWs6" id="2BGPXkEwZOq" role="3cqZAp">
          <node concept="2OqwBi" id="2BGPXkEx0GP" role="3cqZAk">
            <node concept="37vLTw" id="2BGPXkEx0ys" role="2Oq$k0">
              <ref role="3cqZAo" node="2BGPXkEtLSZ" resolve="strategy" />
            </node>
            <node concept="liA8E" id="2BGPXkEx17W" role="2OqNvi">
              <ref role="37wK5l" node="5A5jZrz4rwV" resolve="create" />
              <node concept="Xjq3P" id="2BGPXkEx1vq" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5A5jZrz4Coj" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="2BGPXkEtLSZ" role="3clF46">
        <property role="TrG5h" value="strategy" />
        <node concept="3uibUv" id="2BGPXkEtLSY" role="1tU5fm">
          <ref role="3uigEE" node="5A5jZrz4rws" resolve="ProjectStrategy" />
        </node>
        <node concept="2AHcQZ" id="2BGPXkEtMwc" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3pEStHM6vQz" role="jymVt" />
    <node concept="3clFb_" id="r3D6QYaVAR" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getOpenedProject" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="true" />
      <node concept="3clFbS" id="r3D6QYaVAS" role="3clF47">
        <node concept="3clFbF" id="6LlhC3WMqWw" role="3cqZAp">
          <node concept="1rXfSq" id="6LlhC3WMqWx" role="3clFbG">
            <ref role="37wK5l" node="6LlhC3WLEQ3" resolve="checkInitialized" />
          </node>
        </node>
        <node concept="3cpWs6" id="r3D6QYaVAT" role="3cqZAp">
          <node concept="2OqwBi" id="r3D6QYaVAU" role="3cqZAk">
            <node concept="37vLTw" id="r3D6QYaVAV" role="2Oq$k0">
              <ref role="3cqZAo" node="yBZlauHaA8" resolve="myProjectContainer" />
            </node>
            <node concept="liA8E" id="r3D6QYaVAW" role="2OqNvi">
              <ref role="37wK5l" node="yBZlauH8$V" resolve="getProject" />
              <node concept="37vLTw" id="r3D6QYaVAX" role="37wK5m">
                <ref role="3cqZAo" node="r3D6QYaVB0" resolve="projectFile" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4$cQ78HnOms" role="1B3o_S" />
      <node concept="3uibUv" id="2BGPXkEvmx_" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="37vLTG" id="r3D6QYaVB0" role="3clF46">
        <property role="TrG5h" value="projectFile" />
        <node concept="3uibUv" id="r3D6QYaVB1" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
        <node concept="2AHcQZ" id="1RTSjGszUP4" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2BGPXkEvSWL" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="P$JXv" id="3pEStHM6wpF" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs_Vc" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_Vd" role="1PaTwD">
            <property role="3oM_SC" value="Contract:" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_Ve" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_Vf" role="1PaTwD">
            <property role="3oM_SC" value="Returns" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Vg" role="1PaTwD">
            <property role="3oM_SC" value="null" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Vh" role="1PaTwD">
            <property role="3oM_SC" value="if" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Vi" role="1PaTwD">
            <property role="3oM_SC" value="there" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Vj" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Vk" role="1PaTwD">
            <property role="3oM_SC" value="no" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Vl" role="1PaTwD">
            <property role="3oM_SC" value="opened" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Vm" role="1PaTwD">
            <property role="3oM_SC" value="project" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Vn" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Vo" role="1PaTwD">
            <property role="3oM_SC" value="such" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Vp" role="1PaTwD">
            <property role="3oM_SC" value="File" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3pEStHM59DF" role="jymVt" />
    <node concept="3clFb_" id="6rx4kZDk5DH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="openProject" />
      <node concept="2AHcQZ" id="3HZVFd9cFkc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="6rx4kZDk5DI" role="3clF46">
        <property role="TrG5h" value="projectFile" />
        <node concept="3uibUv" id="6rx4kZDk5DJ" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
        <node concept="2AHcQZ" id="2BGPXkEwpwd" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3uibUv" id="6rx4kZDk5DK" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3Tm1VV" id="6rx4kZDk5DL" role="1B3o_S" />
      <node concept="3clFbS" id="6rx4kZDk5DN" role="3clF47">
        <node concept="3clFbF" id="6LlhC3WMpvU" role="3cqZAp">
          <node concept="1rXfSq" id="6LlhC3WMpvS" role="3clFbG">
            <ref role="37wK5l" node="6LlhC3WLEQ3" resolve="checkInitialized" />
          </node>
        </node>
        <node concept="3cpWs8" id="r3D6QYaVAE" role="3cqZAp">
          <node concept="3cpWsn" id="r3D6QYaVAF" role="3cpWs9">
            <property role="TrG5h" value="lastUsedProject" />
            <node concept="3uibUv" id="r3D6QYaVAG" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
            <node concept="1rXfSq" id="2BGPXkEwocr" role="33vP2m">
              <ref role="37wK5l" node="r3D6QYaVAR" resolve="getOpenedProject" />
              <node concept="37vLTw" id="2BGPXkEwo$w" role="37wK5m">
                <ref role="3cqZAo" node="6rx4kZDk5DI" resolve="projectFile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="r3D6QYaVAA" role="3cqZAp">
          <node concept="3clFbS" id="r3D6QYaVAB" role="3clFbx">
            <node concept="RRSsy" id="3jYQuSB36Bs" role="3cqZAp">
              <property role="RRSoG" value="h1akgim/info" />
              <node concept="Xl_RD" id="r3D6QYaVAD" role="RRSoy">
                <property role="Xl_RC" value="Using the last created project" />
              </node>
            </node>
            <node concept="3cpWs6" id="r3D6QYaVAL" role="3cqZAp">
              <node concept="37vLTw" id="r3D6QYaVAM" role="3cqZAk">
                <ref role="3cqZAo" node="r3D6QYaVAF" resolve="lastUsedProject" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="r3D6QYaVAN" role="9aQIa">
            <node concept="3clFbS" id="r3D6QYaVAO" role="9aQI4">
              <node concept="RRSsy" id="3jYQuSB36By" role="3cqZAp">
                <property role="RRSoG" value="h1akgim/info" />
                <node concept="Xl_RD" id="1w0tHxV8MTB" role="RRSoy">
                  <property role="Xl_RC" value="Opening a new project" />
                </node>
              </node>
              <node concept="3cpWs8" id="6rx4kZDlA0R" role="3cqZAp">
                <node concept="3cpWsn" id="6rx4kZDlA0S" role="3cpWs9">
                  <property role="TrG5h" value="project" />
                  <node concept="1rXfSq" id="3pEStHM5dr5" role="33vP2m">
                    <ref role="37wK5l" node="3pEStHM5adi" resolve="doOpenProject" />
                    <node concept="37vLTw" id="3pEStHM5dQH" role="37wK5m">
                      <ref role="3cqZAo" node="6rx4kZDk5DI" resolve="projectFile" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="6rx4kZDlA0T" role="1tU5fm">
                    <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3oBsYseZD0" role="3cqZAp">
                <node concept="1rXfSq" id="3oBsYseZCY" role="3clFbG">
                  <ref role="37wK5l" node="3eUNqOk4fPx" resolve="flushAllEvents" />
                </node>
              </node>
              <node concept="3cpWs6" id="5lulEoOe9fD" role="3cqZAp">
                <node concept="37vLTw" id="5lulEoOeajM" role="3cqZAk">
                  <ref role="3cqZAo" node="6rx4kZDlA0S" resolve="project" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2BGPXkEwqAP" role="3clFbw">
            <node concept="10Nm6u" id="2BGPXkEwqTT" role="3uHU7w" />
            <node concept="37vLTw" id="2BGPXkEwqdO" role="3uHU7B">
              <ref role="3cqZAo" node="r3D6QYaVAF" resolve="lastUsedProject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5A5jZrz4DL6" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="3hj1t46f$PU" role="jymVt" />
    <node concept="3clFb_" id="3hj1t46fASQ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="closeProject" />
      <node concept="3Tm1VV" id="3hj1t46fASS" role="1B3o_S" />
      <node concept="3cqZAl" id="3hj1t46fAST" role="3clF45" />
      <node concept="37vLTG" id="3hj1t46fASU" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3hj1t46fASV" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="3hj1t46fASW" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="3hj1t46fAT4" role="3clF47">
        <node concept="3clFbF" id="3hj1t46fCQV" role="3cqZAp">
          <node concept="1rXfSq" id="3hj1t46fCQU" role="3clFbG">
            <ref role="37wK5l" node="6LlhC3WLEQ3" resolve="checkInitialized" />
          </node>
        </node>
        <node concept="3clFbF" id="3hj1t46fD1Z" role="3cqZAp">
          <node concept="2OqwBi" id="3hj1t46fDg1" role="3clFbG">
            <node concept="37vLTw" id="3hj1t46fD1X" role="2Oq$k0">
              <ref role="3cqZAo" node="3hj1t46fASU" resolve="project" />
            </node>
            <node concept="liA8E" id="3hj1t46fDAL" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.dispose()" resolve="dispose" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3hj1t46fAT5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3pEStHM4Tl5" role="jymVt" />
    <node concept="3clFb_" id="3pEStHM4yBP" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="doDispose" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3pEStHM4yBS" role="3clF47" />
      <node concept="3Tmbuc" id="3pEStHM4yBM" role="1B3o_S" />
      <node concept="3cqZAl" id="3pEStHM4yBK" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3pEStHM5aP8" role="jymVt" />
    <node concept="3clFb_" id="3pEStHM5adi" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="doOpenProject" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3pEStHM5adj" role="3clF47" />
      <node concept="3Tmbuc" id="3pEStHM5adk" role="1B3o_S" />
      <node concept="3uibUv" id="3pEStHM5ehw" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="37vLTG" id="3pEStHM5d1C" role="3clF46">
        <property role="TrG5h" value="projectFile" />
        <node concept="3uibUv" id="3pEStHM5d1B" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
        <node concept="2AHcQZ" id="3pEStHM5eFO" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3pEStHM4sjw" role="jymVt" />
    <node concept="3clFb_" id="3eUNqOk4$fg" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="dispose" />
      <property role="od$2w" value="true" />
      <property role="DiZV1" value="true" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3eUNqOk4$fj" role="3clF47">
        <node concept="3clFbF" id="6LlhC3WLI61" role="3cqZAp">
          <node concept="1rXfSq" id="6LlhC3WLI5Z" role="3clFbG">
            <ref role="37wK5l" node="6LlhC3WLEQ3" resolve="checkInitialized" />
          </node>
        </node>
        <node concept="RRSsy" id="3jYQuSB36BC" role="3cqZAp">
          <node concept="Xl_RD" id="1K136DJB53w" role="RRSoy">
            <property role="Xl_RC" value="Disposing environment" />
          </node>
        </node>
        <node concept="3clFbF" id="2eqc2bym5Cz" role="3cqZAp">
          <node concept="1rXfSq" id="2eqc2bym5C$" role="3clFbG">
            <ref role="37wK5l" node="3pEStHM4yBP" resolve="doDispose" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3eUNqOk4$fe" role="3clF45" />
      <node concept="3Tm1VV" id="3eUNqOk4Hwk" role="1B3o_S" />
      <node concept="2AHcQZ" id="3pEStHM4a_q" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5A5jZrz7wfO" role="jymVt" />
    <node concept="2tJIrI" id="6LlhC3WLDVq" role="jymVt" />
    <node concept="3clFb_" id="6LlhC3WLEQ3" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="checkInitialized" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="true" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6LlhC3WLEQ6" role="3clF47">
        <node concept="3clFbJ" id="6LlhC3WLFcr" role="3cqZAp">
          <node concept="3clFbS" id="6LlhC3WLFcs" role="3clFbx">
            <node concept="YS8fn" id="6LlhC3WLFng" role="3cqZAp">
              <node concept="2ShNRf" id="6LlhC3WLGUb" role="YScLw">
                <node concept="1pGfFk" id="6LlhC3WLHuX" role="2ShVmc">
                  <ref role="37wK5l" node="6LlhC3WLGNE" resolve="EnvironmentBase.EnvironmentNotInitializedException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6LlhC3WLFkj" role="3clFbw">
            <node concept="37vLTw" id="6LlhC3WLFld" role="3fr31v">
              <ref role="3cqZAo" node="6LlhC3WLD99" resolve="myInitialized" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="6LlhC3WLIoe" role="1B3o_S" />
      <node concept="3cqZAl" id="6LlhC3WLEQ1" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3oT7WQ9021p" role="jymVt" />
    <node concept="312cEu" id="6LlhC3WLGjY" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <property role="TrG5h" value="EnvironmentNotInitializedException" />
      <node concept="3Tm6S6" id="6LlhC3WLFZI" role="1B3o_S" />
      <node concept="3uibUv" id="3oT7WQ903sr" role="1zkMxy">
        <ref role="3uigEE" node="3oT7WQ8ZQQP" resolve="EnvironmentSetupException" />
      </node>
      <node concept="3clFbW" id="6LlhC3WLGNE" role="jymVt">
        <node concept="3cqZAl" id="6LlhC3WLGNF" role="3clF45" />
        <node concept="3clFbS" id="6LlhC3WLGNH" role="3clF47">
          <node concept="XkiVB" id="6LlhC3WLGST" role="3cqZAp">
            <ref role="37wK5l" node="3oT7WQ8ZVnO" resolve="EnvironmentSetupException" />
            <node concept="Xl_RD" id="6LlhC3WLHy0" role="37wK5m">
              <property role="Xl_RC" value="#init() method must be called before using an environment" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="6LlhC3WLGM3" role="1B3o_S" />
      </node>
    </node>
    <node concept="2tJIrI" id="3oT7WQ903Nz" role="jymVt" />
    <node concept="312cEu" id="3oT7WQ903su" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <property role="TrG5h" value="EnvironmentInitializedTwiceException" />
      <node concept="3Tm6S6" id="3oT7WQ903sv" role="1B3o_S" />
      <node concept="3uibUv" id="3oT7WQ903sw" role="1zkMxy">
        <ref role="3uigEE" node="3oT7WQ8ZQQP" resolve="EnvironmentSetupException" />
      </node>
      <node concept="3clFbW" id="3oT7WQ903sx" role="jymVt">
        <node concept="3cqZAl" id="3oT7WQ903sy" role="3clF45" />
        <node concept="3clFbS" id="3oT7WQ903sz" role="3clF47">
          <node concept="XkiVB" id="3oT7WQ903s$" role="3cqZAp">
            <ref role="37wK5l" node="3oT7WQ8ZVnO" resolve="EnvironmentSetupException" />
            <node concept="Xl_RD" id="3oT7WQ903s_" role="37wK5m">
              <property role="Xl_RC" value="Double initialization" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="3oT7WQ903sA" role="1B3o_S" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3eUNqOk4fep" role="1B3o_S" />
    <node concept="3uibUv" id="3eUNqOk4$cv" role="EKbjA">
      <ref role="3uigEE" node="HKKzfMjqRV" resolve="Environment" />
    </node>
    <node concept="3UR2Jj" id="6LlhC3WKGFP" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHs_Oa" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_Ob" role="1PaTwD">
          <property role="3oM_SC" value="Base" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Oc" role="1PaTwD">
          <property role="3oM_SC" value="class" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Od" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Oe" role="1PaTwD">
          <property role="3oM_SC" value="all" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Of" role="1PaTwD">
          <property role="3oM_SC" value="environments," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Og" role="1PaTwD">
          <property role="3oM_SC" value="represents" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Oh" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Oi" role="1PaTwD">
          <property role="3oM_SC" value="caching" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Oj" role="1PaTwD">
          <property role="3oM_SC" value="environment." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_Ok" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_Ol" role="1PaTwD">
          <property role="3oM_SC" value="The" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Om" role="1PaTwD">
          <property role="3oM_SC" value="contract:" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_On" role="1PaTwD">
          <property role="3oM_SC" value="only" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Oo" role="1PaTwD">
          <property role="3oM_SC" value="one" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Op" role="1PaTwD">
          <property role="3oM_SC" value="environment" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Oq" role="1PaTwD">
          <property role="3oM_SC" value="must" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Or" role="1PaTwD">
          <property role="3oM_SC" value="be" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Os" role="1PaTwD">
          <property role="3oM_SC" value="alive," />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_Ot" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_Ou" role="1PaTwD">
          <property role="3oM_SC" value="it" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Ov" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Ow" role="1PaTwD">
          <property role="3oM_SC" value="being" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Ox" role="1PaTwD">
          <property role="3oM_SC" value="stored" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Oy" role="1PaTwD">
          <property role="3oM_SC" value="in" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Oz" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_O$" role="1PaTwD">
          <property role="3oM_SC" value="special" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_O_" role="1PaTwD">
          <property role="3oM_SC" value="EnvironmentContainer" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_OA" role="1PaTwD">
          <property role="3oM_SC" value="class." />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3eUNqOk8qK6">
    <property role="TrG5h" value="LibraryContributorHelper" />
    <node concept="Wx3nA" id="4937uxYQn8n" role="jymVt">
      <property role="TrG5h" value="MODULES_PREFIX" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="57xhZj4x9Aa" role="1tU5fm" />
      <node concept="3Tm6S6" id="2Koq9V0qeTj" role="1B3o_S" />
      <node concept="Xl_RD" id="4937uxYQn8q" role="33vP2m">
        <property role="Xl_RC" value="!/modules" />
      </node>
    </node>
    <node concept="312cEg" id="1ROuiHYzCP" role="jymVt">
      <property role="TrG5h" value="fs" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1ROuiHYzCQ" role="1B3o_S" />
      <node concept="3uibUv" id="1ROuiHYAWy" role="1tU5fm">
        <ref role="3uigEE" to="w827:~FileSystem" resolve="FileSystem" />
      </node>
    </node>
    <node concept="2tJIrI" id="42pPXbiGpCL" role="jymVt" />
    <node concept="3clFbW" id="42pPXbiGsoN" role="jymVt">
      <node concept="3cqZAl" id="42pPXbiGsoP" role="3clF45" />
      <node concept="3clFbS" id="42pPXbiGsoQ" role="3clF47">
        <node concept="3clFbF" id="42pPXbiGx8R" role="3cqZAp">
          <node concept="37vLTI" id="42pPXbiGxPk" role="3clFbG">
            <node concept="37vLTw" id="42pPXbiGxWe" role="37vLTx">
              <ref role="3cqZAo" node="42pPXbiGwNH" resolve="fs" />
            </node>
            <node concept="2OqwBi" id="42pPXbiGxgj" role="37vLTJ">
              <node concept="Xjq3P" id="42pPXbiGx8Q" role="2Oq$k0" />
              <node concept="2OwXpG" id="42pPXbiGxz1" role="2OqNvi">
                <ref role="2Oxat5" node="1ROuiHYzCP" resolve="fs" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="42pPXbiGwNH" role="3clF46">
        <property role="TrG5h" value="fs" />
        <node concept="3uibUv" id="42pPXbiGwNG" role="1tU5fm">
          <ref role="3uigEE" to="w827:~FileSystem" resolve="FileSystem" />
        </node>
        <node concept="2AHcQZ" id="42pPXbiGx2_" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="42pPXbiH6hG" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1ROuiHYQSU" role="jymVt" />
    <node concept="3clFb_" id="3eUNqOk927J" role="jymVt">
      <property role="TrG5h" value="getPluginLibDescriptors" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="1ROuiHYm2K" role="3clF46">
        <property role="TrG5h" value="pp" />
        <node concept="3uibUv" id="1ROuiHYm2J" role="1tU5fm">
          <ref role="3uigEE" node="1ROuiHUyBT" resolve="PlatformPlugins" />
        </node>
      </node>
      <node concept="3clFbS" id="4937uxYQnrs" role="3clF47">
        <node concept="3cpWs8" id="4937uxYQnry" role="3cqZAp">
          <node concept="3cpWsn" id="4937uxYQnrz" role="3cpWs9">
            <property role="TrG5h" value="paths" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="4937uxYQnr$" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="6SLhIWeHr3" role="11_B2D">
                <ref role="3uigEE" to="je6q:~LibDescriptor" resolve="LibDescriptor" />
              </node>
            </node>
            <node concept="2ShNRf" id="4937uxYQnrA" role="33vP2m">
              <node concept="1pGfFk" id="4937uxYQnrB" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~LinkedHashSet.&lt;init&gt;()" resolve="LinkedHashSet" />
                <node concept="3uibUv" id="6SLhIWeHNg" role="1pMfVU">
                  <ref role="3uigEE" to="je6q:~LibDescriptor" resolve="LibDescriptor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3FVfMMI1m_x" role="3cqZAp" />
        <node concept="1DcWWT" id="4937uxYQnrI" role="3cqZAp">
          <node concept="2OqwBi" id="1ROuiHWz7P" role="1DdaDG">
            <node concept="37vLTw" id="1ROuiHYny9" role="2Oq$k0">
              <ref role="3cqZAo" node="1ROuiHYm2K" resolve="pp" />
            </node>
            <node concept="liA8E" id="1ROuiHW_Tp" role="2OqNvi">
              <ref role="37wK5l" node="1ROuiHWjgk" resolve="found" />
            </node>
          </node>
          <node concept="3cpWsn" id="4937uxYQnrN" role="1Duv9x">
            <property role="TrG5h" value="descriptor" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="1ROuiHWBuA" role="1tU5fm">
              <ref role="3uigEE" node="1ROuiHVPT6" resolve="PlatformPlugins.Descriptor" />
            </node>
          </node>
          <node concept="3clFbS" id="4937uxYQnrP" role="2LFqv$">
            <node concept="3cpWs8" id="4937uxYQns0" role="3cqZAp">
              <node concept="3cpWsn" id="4937uxYQns1" role="3cpWs9">
                <property role="TrG5h" value="pluginCL" />
                <property role="3TUv4t" value="true" />
                <node concept="2OqwBi" id="1ROuiHYoad" role="33vP2m">
                  <node concept="37vLTw" id="1ROuiHYnUa" role="2Oq$k0">
                    <ref role="3cqZAo" node="4937uxYQnrN" resolve="descriptor" />
                  </node>
                  <node concept="liA8E" id="1ROuiHYpiw" role="2OqNvi">
                    <ref role="37wK5l" node="1ROuiHXC4d" resolve="classLoader" />
                  </node>
                </node>
                <node concept="3uibUv" id="2pweB8M5uI9" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="1ROuiHX11B" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXo9jm" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXo9jn" role="1PaTwD">
                  <property role="3oM_SC" value="XXX" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jo" role="1PaTwD">
                  <property role="3oM_SC" value="next" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jp" role="1PaTwD">
                  <property role="3oM_SC" value="code" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jq" role="1PaTwD">
                  <property role="3oM_SC" value="assumes" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jr" role="1PaTwD">
                  <property role="3oM_SC" value="that" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9js" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jt" role="1PaTwD">
                  <property role="3oM_SC" value="each" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9ju" role="1PaTwD">
                  <property role="3oM_SC" value=".jar" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jv" role="1PaTwD">
                  <property role="3oM_SC" value="under" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jw" role="1PaTwD">
                  <property role="3oM_SC" value="lib/" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jx" role="1PaTwD">
                  <property role="3oM_SC" value="there" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jy" role="1PaTwD">
                  <property role="3oM_SC" value="are" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jz" role="1PaTwD">
                  <property role="3oM_SC" value="MPS" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9j$" role="1PaTwD">
                  <property role="3oM_SC" value="modules" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9j_" role="1PaTwD">
                  <property role="3oM_SC" value="bundled" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jA" role="1PaTwD">
                  <property role="3oM_SC" value="inside" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jB" role="1PaTwD">
                  <property role="3oM_SC" value="(!/modules)." />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="1ROuiHX23k" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXo9jC" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXo9jD" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jE" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jF" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jG" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jH" role="1PaTwD">
                  <property role="3oM_SC" value="Would" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jI" role="1PaTwD">
                  <property role="3oM_SC" value="like" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jJ" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jK" role="1PaTwD">
                  <property role="3oM_SC" value="find" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jL" role="1PaTwD">
                  <property role="3oM_SC" value="out" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jM" role="1PaTwD">
                  <property role="3oM_SC" value="if" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jN" role="1PaTwD">
                  <property role="3oM_SC" value="it's" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jO" role="1PaTwD">
                  <property role="3oM_SC" value="still" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jP" role="1PaTwD">
                  <property role="3oM_SC" value="relevant," />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jQ" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jR" role="1PaTwD">
                  <property role="3oM_SC" value="it" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jS" role="1PaTwD">
                  <property role="3oM_SC" value="looks" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jT" role="1PaTwD">
                  <property role="3oM_SC" value="like" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jU" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jV" role="1PaTwD">
                  <property role="3oM_SC" value="bad" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jW" role="1PaTwD">
                  <property role="3oM_SC" value="idea" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jX" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jY" role="1PaTwD">
                  <property role="3oM_SC" value="mix" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9jZ" role="1PaTwD">
                  <property role="3oM_SC" value="lib/" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9k0" role="1PaTwD">
                  <property role="3oM_SC" value="classpath" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9k1" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9k2" role="1PaTwD">
                  <property role="3oM_SC" value="module" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo9k3" role="1PaTwD">
                  <property role="3oM_SC" value="locations" />
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="4937uxYQnsd" role="3cqZAp">
              <node concept="2OqwBi" id="1ROuiHXo5I" role="1DdaDG">
                <node concept="37vLTw" id="1ROuiHXnO$" role="2Oq$k0">
                  <ref role="3cqZAo" node="4937uxYQnrN" resolve="descriptor" />
                </node>
                <node concept="2OwXpG" id="1ROuiHXo$D" role="2OqNvi">
                  <ref role="2Oxat5" node="1ROuiHVQiR" resolve="cp" />
                </node>
              </node>
              <node concept="3cpWsn" id="4937uxYQnsi" role="1Duv9x">
                <property role="TrG5h" value="cpf" />
                <property role="3TUv4t" value="false" />
                <node concept="3uibUv" id="4937uxYQnsj" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~File" resolve="File" />
                </node>
              </node>
              <node concept="3clFbS" id="4937uxYQnsk" role="2LFqv$">
                <node concept="3clFbJ" id="1ROuiHXpMq" role="3cqZAp">
                  <node concept="3clFbS" id="1ROuiHXpMs" role="3clFbx">
                    <node concept="3clFbF" id="4937uxYQnsv" role="3cqZAp">
                      <node concept="2OqwBi" id="4937uxYQnsw" role="3clFbG">
                        <node concept="37vLTw" id="3GM_nagTsgR" role="2Oq$k0">
                          <ref role="3cqZAo" node="4937uxYQnrz" resolve="paths" />
                        </node>
                        <node concept="liA8E" id="4937uxYQnsy" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                          <node concept="2ShNRf" id="4937uxYQnsz" role="37wK5m">
                            <node concept="1pGfFk" id="4937uxYQns$" role="2ShVmc">
                              <ref role="37wK5l" to="je6q:~LibDescriptor.&lt;init&gt;(jetbrains.mps.vfs.IFile,java.lang.ClassLoader)" resolve="LibDescriptor" />
                              <node concept="2OqwBi" id="6UQiGMPoqZQ" role="37wK5m">
                                <node concept="liA8E" id="6UQiGMPorB2" role="2OqNvi">
                                  <ref role="37wK5l" to="w827:~FileSystem.getFile(java.lang.String)" resolve="getFile" />
                                  <node concept="3cpWs3" id="4937uxYQns_" role="37wK5m">
                                    <node concept="2OqwBi" id="4937uxYQnsA" role="3uHU7B">
                                      <node concept="37vLTw" id="3GM_nagTwhk" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4937uxYQnsi" resolve="cpf" />
                                      </node>
                                      <node concept="liA8E" id="4937uxYQnsC" role="2OqNvi">
                                        <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="r$A3E5xA8_" role="3uHU7w">
                                      <ref role="3cqZAo" node="4937uxYQn8n" resolve="MODULES_PREFIX" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTw" id="1ROuiHZ7tG" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1ROuiHYzCP" resolve="fs" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="3GM_nagTtKK" role="37wK5m">
                                <ref role="3cqZAo" node="4937uxYQns1" resolve="pluginCL" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1ROuiHXqXR" role="3clFbw">
                    <node concept="2OqwBi" id="1ROuiHXqfX" role="2Oq$k0">
                      <node concept="37vLTw" id="1ROuiHXpUv" role="2Oq$k0">
                        <ref role="3cqZAo" node="4937uxYQnsi" resolve="cpf" />
                      </node>
                      <node concept="liA8E" id="1ROuiHXqF1" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~File.getName()" resolve="getName" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1ROuiHXs8_" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                      <node concept="Xl_RD" id="1ROuiHXs9U" role="37wK5m">
                        <property role="Xl_RC" value=".jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="1ROuiHX7HN" role="3cqZAp">
              <node concept="3clFbS" id="1ROuiHX7HQ" role="2LFqv$">
                <node concept="3clFbF" id="4937uxYQnt8" role="3cqZAp">
                  <node concept="2OqwBi" id="4937uxYQnt9" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTwX5" role="2Oq$k0">
                      <ref role="3cqZAo" node="4937uxYQnrz" resolve="paths" />
                    </node>
                    <node concept="liA8E" id="4937uxYQntb" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                      <node concept="2ShNRf" id="4937uxYQntc" role="37wK5m">
                        <node concept="1pGfFk" id="4937uxYQntd" role="2ShVmc">
                          <ref role="37wK5l" to="je6q:~LibDescriptor.&lt;init&gt;(jetbrains.mps.vfs.IFile,java.lang.ClassLoader)" resolve="LibDescriptor" />
                          <node concept="2OqwBi" id="42pPXbiGKnu" role="37wK5m">
                            <node concept="37vLTw" id="42pPXbiGHnB" role="2Oq$k0">
                              <ref role="3cqZAo" node="1ROuiHYzCP" resolve="fs" />
                            </node>
                            <node concept="liA8E" id="42pPXbiGOW$" role="2OqNvi">
                              <ref role="37wK5l" to="w827:~FileSystem.getFile(java.io.File)" resolve="getFile" />
                              <node concept="37vLTw" id="42pPXbiGRzi" role="37wK5m">
                                <ref role="3cqZAo" node="1ROuiHX7HR" resolve="langLib" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="3GM_nagTwv_" role="37wK5m">
                            <ref role="3cqZAo" node="4937uxYQns1" resolve="pluginCL" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="1ROuiHX7HR" role="1Duv9x">
                <property role="TrG5h" value="langLib" />
                <node concept="3uibUv" id="1ROuiHX7HV" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~File" resolve="File" />
                </node>
              </node>
              <node concept="2OqwBi" id="1ROuiHX7HW" role="1DdaDG">
                <node concept="37vLTw" id="1ROuiHX7HX" role="2Oq$k0">
                  <ref role="3cqZAo" node="4937uxYQnrN" resolve="descriptor" />
                </node>
                <node concept="2OwXpG" id="1ROuiHX7HY" role="2OqNvi">
                  <ref role="2Oxat5" node="1ROuiHVQLj" resolve="modules" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4937uxYQnti" role="3cqZAp">
          <node concept="2YIFZM" id="2Koq9V0s3Zq" role="3cqZAk">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableSet(java.util.Set)" resolve="unmodifiableSet" />
            <node concept="37vLTw" id="2Koq9V0s3Zr" role="37wK5m">
              <ref role="3cqZAo" node="4937uxYQnrz" resolve="paths" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4937uxYQnrq" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="6SLhIWeHpN" role="11_B2D">
          <ref role="3uigEE" to="je6q:~LibDescriptor" resolve="LibDescriptor" />
        </node>
      </node>
      <node concept="3Tm6S6" id="2Koq9V0qFSc" role="1B3o_S" />
      <node concept="P$JXv" id="2$4oShLb7in" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs_Vq" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_Vr" role="1PaTwD">
            <property role="3oM_SC" value="The" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Vs" role="1PaTwD">
            <property role="3oM_SC" value="logic" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Vt" role="1PaTwD">
            <property role="3oM_SC" value="here" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Vu" role="1PaTwD">
            <property role="3oM_SC" value="intersects" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Vv" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Vw" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Vx" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Vy" role="1PaTwD">
            <property role="3oM_SC" value="IDEA" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Vz" role="1PaTwD">
            <property role="3oM_SC" value="platform." />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_V$" role="1PaTwD">
            <property role="3oM_SC" value="Here," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_V_" role="1PaTwD">
            <property role="3oM_SC" value="we" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_VA" role="1PaTwD">
            <property role="3oM_SC" value="build" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_VB" role="1PaTwD">
            <property role="3oM_SC" value="plugin" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_VC" role="1PaTwD">
            <property role="3oM_SC" value="classpath" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_VD" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_VE" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_VF" role="1PaTwD">
            <property role="3oM_SC" value="contribute" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_VG" role="1PaTwD">
            <property role="3oM_SC" value="mps" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_VH" role="1PaTwD">
            <property role="3oM_SC" value="modules" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_VI" role="1PaTwD">
            <property role="3oM_SC" value="from" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_VJ" role="1PaTwD">
            <property role="3oM_SC" value="plugins," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_VK" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_VL" role="1PaTwD">
            <property role="3oM_SC" value="tasks" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_VM" role="1PaTwD">
            <property role="3oM_SC" value="accomplished" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_VN" role="1PaTwD">
            <property role="3oM_SC" value="by" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_VO" role="1PaTwD">
            <property role="3oM_SC" value="IDEA" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_VP" role="1PaTwD">
            <property role="3oM_SC" value="itself" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_VQ" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_VR" role="1PaTwD">
            <property role="3oM_SC" value="'big'" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_VS" role="1PaTwD">
            <property role="3oM_SC" value="MPS" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_VT" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_VU" role="1PaTwD">
            <property role="3oM_SC" value="IdeaEnvironment" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_VV" role="1PaTwD">
            <property role="3oM_SC" value="scenarios" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3eUNqOk8ZnD" role="jymVt" />
    <node concept="2tJIrI" id="3eUNqOk8ZeV" role="jymVt" />
    <node concept="3clFb_" id="3eUNqOk8kWA" role="jymVt">
      <property role="TrG5h" value="createLibContributorForPlugins" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="P$JXv" id="1ROuiI0hTi" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs_VW" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_VX" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_VY" role="1PaTwD">
            <property role="3oM_SC" value="method" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_VZ" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_W0" role="1PaTwD">
            <property role="3oM_SC" value="intended" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_W1" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_W2" role="1PaTwD">
            <property role="3oM_SC" value="MpsEnvironment" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_W3" role="1PaTwD">
            <property role="3oM_SC" value="use" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_W4" role="1PaTwD">
            <property role="3oM_SC" value="only," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_W5" role="1PaTwD">
            <property role="3oM_SC" value="when" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_W6" role="1PaTwD">
            <property role="3oM_SC" value="we" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_W7" role="1PaTwD">
            <property role="3oM_SC" value="need" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_W8" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_W9" role="1PaTwD">
            <property role="3oM_SC" value="duplicate" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Wa" role="1PaTwD">
            <property role="3oM_SC" value="IDEA's" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Wb" role="1PaTwD">
            <property role="3oM_SC" value="platform" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Wc" role="1PaTwD">
            <property role="3oM_SC" value="plugin" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Wd" role="1PaTwD">
            <property role="3oM_SC" value="mechanism" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_We" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_Wf" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1ROuiHYqx6" role="3clF46">
        <property role="TrG5h" value="pp" />
        <node concept="3uibUv" id="1ROuiHYqx7" role="1tU5fm">
          <ref role="3uigEE" node="1ROuiHUyBT" resolve="PlatformPlugins" />
        </node>
      </node>
      <node concept="3clFbS" id="2Koq9V0qGPu" role="3clF47">
        <node concept="3cpWs6" id="2Koq9V0rXbG" role="3cqZAp">
          <node concept="2YIFZM" id="4TNBaKVramd" role="3cqZAk">
            <ref role="37wK5l" to="v9gs:3eUNqOk8DM1" resolve="fromSet" />
            <ref role="1Pybhc" to="v9gs:57xhZj4tkXA" resolve="SetLibraryContributor" />
            <node concept="Xl_RD" id="2ky3Rs1tnLJ" role="37wK5m">
              <property role="Xl_RC" value="Plugin contributor" />
            </node>
            <node concept="1rXfSq" id="2ky3Rs1tnLK" role="37wK5m">
              <ref role="37wK5l" node="3eUNqOk927J" resolve="getPluginLibDescriptors" />
              <node concept="37vLTw" id="1ROuiHYqZx" role="37wK5m">
                <ref role="3cqZAo" node="1ROuiHYqx6" resolve="pp" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2Koq9V0rX6k" role="3clF45">
        <ref role="3uigEE" to="je6q:~LibraryContributor" resolve="LibraryContributor" />
      </node>
    </node>
    <node concept="2tJIrI" id="3eUNqOk8hTw" role="jymVt" />
    <node concept="3clFb_" id="3eUNqOk8lkP" role="jymVt">
      <property role="TrG5h" value="createLibContributorForLibs" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="1ROuiHYss3" role="3clF46">
        <property role="TrG5h" value="libs" />
        <node concept="A3Dl8" id="1ROuiHYw$E" role="1tU5fm">
          <node concept="17QB3L" id="1ROuiHYwA_" role="A3Ik2" />
        </node>
      </node>
      <node concept="37vLTG" id="1ROuiHYsXz" role="3clF46">
        <property role="TrG5h" value="defaultCL" />
        <node concept="3uibUv" id="1ROuiHYtsE" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
        </node>
      </node>
      <node concept="3clFbS" id="5mza6QqledO" role="3clF47">
        <node concept="3cpWs8" id="1ROuiHYDbN" role="3cqZAp">
          <node concept="3cpWsn" id="1ROuiHYDbO" role="3cpWs9">
            <property role="TrG5h" value="paths" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="1ROuiHYDbP" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="1ROuiHYDbQ" role="11_B2D">
                <ref role="3uigEE" to="je6q:~LibDescriptor" resolve="LibDescriptor" />
              </node>
            </node>
            <node concept="2ShNRf" id="1ROuiHYDbR" role="33vP2m">
              <node concept="1pGfFk" id="1ROuiHYDbS" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~LinkedHashSet.&lt;init&gt;()" resolve="LinkedHashSet" />
                <node concept="3uibUv" id="1ROuiHYDbT" role="1pMfVU">
                  <ref role="3uigEE" to="je6q:~LibDescriptor" resolve="LibDescriptor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="2Koq9V0rgqE" role="3cqZAp">
          <node concept="37vLTw" id="1ROuiHYyXu" role="2GsD0m">
            <ref role="3cqZAo" node="1ROuiHYss3" resolve="libs" />
          </node>
          <node concept="2GrKxI" id="2Koq9V0rgqG" role="2Gsz3X">
            <property role="TrG5h" value="lib" />
          </node>
          <node concept="3clFbS" id="2Koq9V0rgqI" role="2LFqv$">
            <node concept="3clFbF" id="1ROuiHYDzP" role="3cqZAp">
              <node concept="2OqwBi" id="1ROuiHYE3n" role="3clFbG">
                <node concept="37vLTw" id="1ROuiHYDzN" role="2Oq$k0">
                  <ref role="3cqZAo" node="1ROuiHYDbO" resolve="paths" />
                </node>
                <node concept="liA8E" id="1ROuiHYPd1" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="2ShNRf" id="1ROuiHYPd4" role="37wK5m">
                    <node concept="1pGfFk" id="1ROuiHYPd5" role="2ShVmc">
                      <ref role="37wK5l" to="je6q:~LibDescriptor.&lt;init&gt;(jetbrains.mps.vfs.IFile,java.lang.ClassLoader)" resolve="LibDescriptor" />
                      <node concept="2OqwBi" id="42pPXbiH11M" role="37wK5m">
                        <node concept="37vLTw" id="42pPXbiGYJ4" role="2Oq$k0">
                          <ref role="3cqZAo" node="1ROuiHYzCP" resolve="fs" />
                        </node>
                        <node concept="liA8E" id="42pPXbiH3K3" role="2OqNvi">
                          <ref role="37wK5l" to="w827:~FileSystem.getFile(java.io.File)" resolve="getFile" />
                          <node concept="2ShNRf" id="1ROuiHYQ1n" role="37wK5m">
                            <node concept="1pGfFk" id="1ROuiHYQEW" role="2ShVmc">
                              <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                              <node concept="2GrUjf" id="1ROuiHYQJD" role="37wK5m">
                                <ref role="2Gs0qQ" node="2Koq9V0rgqG" resolve="lib" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="1ROuiHYPxD" role="37wK5m">
                        <ref role="3cqZAo" node="1ROuiHYsXz" resolve="defaultCL" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2Koq9V0rahV" role="3cqZAp">
          <node concept="2YIFZM" id="1ROuiHYXS2" role="3cqZAk">
            <ref role="37wK5l" to="v9gs:3eUNqOk8DM1" resolve="fromSet" />
            <ref role="1Pybhc" to="v9gs:57xhZj4tkXA" resolve="SetLibraryContributor" />
            <node concept="Xl_RD" id="1ROuiHYXS3" role="37wK5m">
              <property role="Xl_RC" value="Library contributor" />
            </node>
            <node concept="37vLTw" id="1ROuiHYZkq" role="37wK5m">
              <ref role="3cqZAo" node="1ROuiHYDbO" resolve="paths" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2Koq9V0rWSV" role="3clF45">
        <ref role="3uigEE" to="je6q:~LibraryContributor" resolve="LibraryContributor" />
      </node>
      <node concept="3Tm1VV" id="3eUNqOk94t9" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3eUNqOk8YXc" role="jymVt" />
  </node>
  <node concept="3HP615" id="5A5jZrz4rws">
    <property role="3GE5qa" value="strategy" />
    <property role="TrG5h" value="ProjectStrategy" />
    <node concept="3clFb_" id="5A5jZrz4rwV" role="jymVt">
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="create" />
      <node concept="3clFbS" id="5A5jZrz4rwY" role="3clF47" />
      <node concept="3Tm1VV" id="5A5jZrz4rwZ" role="1B3o_S" />
      <node concept="3uibUv" id="5A5jZrz4rwR" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="2AHcQZ" id="5A5jZrz77ei" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="2BGPXkEwHNi" role="3clF46">
        <property role="TrG5h" value="env" />
        <node concept="3uibUv" id="2BGPXkEwHNh" role="1tU5fm">
          <ref role="3uigEE" node="HKKzfMjqRV" resolve="Environment" />
        </node>
        <node concept="2AHcQZ" id="2BGPXkEwHNS" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2BGPXkEv84x" role="jymVt">
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="isApplicable" />
      <node concept="3clFbS" id="2BGPXkEv84$" role="3clF47" />
      <node concept="3Tm1VV" id="2BGPXkEv84_" role="1B3o_S" />
      <node concept="10P_77" id="2BGPXkEv84g" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="5A5jZrz4rwt" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5A5jZrz799S">
    <property role="3GE5qa" value="strategy" />
    <property role="TrG5h" value="ProjectStrategyBase" />
    <property role="1sVAO0" value="true" />
    <node concept="3clFb_" id="2BGPXkEv8wr" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isApplicable" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2BGPXkEv8wu" role="3clF47">
        <node concept="3cpWs6" id="2BGPXkEv8CL" role="3cqZAp">
          <node concept="3clFbT" id="2BGPXkEv8Dn" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2BGPXkEv8rg" role="1B3o_S" />
      <node concept="10P_77" id="2BGPXkEv8wp" role="3clF45" />
      <node concept="2AHcQZ" id="2BGPXkEv8DM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkEw6yS" role="jymVt" />
    <node concept="3clFb_" id="2BGPXkEw6UA" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="create" />
      <node concept="3Tm1VV" id="2BGPXkEw6UC" role="1B3o_S" />
      <node concept="3uibUv" id="2BGPXkEw6UD" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="2AHcQZ" id="2BGPXkEw6UE" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2BGPXkEw6UF" role="3clF47">
        <node concept="3clFbJ" id="2BGPXkEw7cy" role="3cqZAp">
          <node concept="3clFbS" id="2BGPXkEw7c$" role="3clFbx">
            <node concept="3cpWs8" id="2BGPXkEwKmB" role="3cqZAp">
              <node concept="3cpWsn" id="2BGPXkEwKmC" role="3cpWs9">
                <property role="TrG5h" value="emptyProject" />
                <node concept="3uibUv" id="2BGPXkEwKmy" role="1tU5fm">
                  <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
                </node>
                <node concept="2OqwBi" id="2BGPXkEwKmD" role="33vP2m">
                  <node concept="37vLTw" id="2BGPXkEwKmE" role="2Oq$k0">
                    <ref role="3cqZAo" node="2BGPXkEwEdb" resolve="env" />
                  </node>
                  <node concept="liA8E" id="2BGPXkEwKmF" role="2OqNvi">
                    <ref role="37wK5l" node="2BGPXkEw$sz" resolve="createEmptyProject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2BGPXkEw7fy" role="3cqZAp">
              <node concept="1rXfSq" id="2BGPXkEw8mf" role="3cqZAk">
                <ref role="37wK5l" node="2BGPXkEw7SQ" resolve="construct" />
                <node concept="2OqwBi" id="25EyDezdY0J" role="37wK5m">
                  <node concept="37vLTw" id="25EyDezdXK$" role="2Oq$k0">
                    <ref role="3cqZAo" node="2BGPXkEwEdb" resolve="env" />
                  </node>
                  <node concept="liA8E" id="25EyDezdY$u" role="2OqNvi">
                    <ref role="37wK5l" node="8Pnvxgloc_" resolve="getPlatform" />
                  </node>
                </node>
                <node concept="37vLTw" id="2BGPXkEwK_d" role="37wK5m">
                  <ref role="3cqZAo" node="2BGPXkEwKmC" resolve="emptyProject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="2BGPXkEw7dR" role="3clFbw">
            <ref role="37wK5l" node="2BGPXkEv8wr" resolve="isApplicable" />
          </node>
        </node>
        <node concept="YS8fn" id="2BGPXkEw8zK" role="3cqZAp">
          <node concept="2ShNRf" id="2BGPXkEw8Dk" role="YScLw">
            <node concept="1pGfFk" id="2BGPXkEw9eH" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
              <node concept="3cpWs3" id="3nWS7UXt2WU" role="37wK5m">
                <node concept="Xl_RD" id="2BGPXkEw9fN" role="3uHU7w">
                  <property role="Xl_RC" value=" is not applicable -- cannot create project" />
                </node>
                <node concept="3cpWs3" id="3nWS7UXsYcZ" role="3uHU7B">
                  <node concept="Xl_RD" id="3nWS7UXt2Cg" role="3uHU7B">
                    <property role="Xl_RC" value="Strategy " />
                  </node>
                  <node concept="Xjq3P" id="3nWS7UXt3c2" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2BGPXkEwEdb" role="3clF46">
        <property role="TrG5h" value="env" />
        <node concept="3uibUv" id="2BGPXkEwEda" role="1tU5fm">
          <ref role="3uigEE" node="HKKzfMjqRV" resolve="Environment" />
        </node>
        <node concept="2AHcQZ" id="2BGPXkEwEiN" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkEw7kS" role="jymVt" />
    <node concept="3clFb_" id="2BGPXkEw7SQ" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="construct" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2BGPXkEw7ST" role="3clF47" />
      <node concept="3Tmbuc" id="2BGPXkEw7JS" role="1B3o_S" />
      <node concept="3uibUv" id="2BGPXkEw82i" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="2AHcQZ" id="2BGPXkEw8fi" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="25EyDezdFL1" role="3clF46">
        <property role="TrG5h" value="mpsPlatform" />
        <node concept="3uibUv" id="25EyDezdLyv" role="1tU5fm">
          <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
        </node>
        <node concept="2AHcQZ" id="25EyDezdX41" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="2BGPXkEwE2c" role="3clF46">
        <property role="TrG5h" value="emptyProject" />
        <node concept="3uibUv" id="2BGPXkEwKET" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="2BGPXkEwHYf" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkEw870" role="jymVt" />
    <node concept="3clFb_" id="2BGPXkEwDKI" role="jymVt">
      <property role="TrG5h" value="loadProjectFromModuleHandles" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="7fR23Zqlerc" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="7fR23ZqlcGk" role="3clF47">
        <node concept="3cpWs8" id="5A5jZrz7hWi" role="3cqZAp">
          <node concept="3cpWsn" id="5A5jZrz7hWj" role="3cpWs9">
            <property role="TrG5h" value="projectFilledWithModules" />
            <node concept="3uibUv" id="5A5jZrz7hWf" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
            <node concept="2OqwBi" id="5A5jZrz7hWk" role="33vP2m">
              <node concept="2ShNRf" id="5A5jZrz7hWl" role="2Oq$k0">
                <node concept="1pGfFk" id="5A5jZrz7hWm" role="2ShVmc">
                  <ref role="37wK5l" node="5A5jZrz4jwy" resolve="ProjectModulesFiller" />
                  <node concept="37vLTw" id="2BGPXkEwJ7$" role="37wK5m">
                    <ref role="3cqZAo" node="2BGPXkEwI8N" resolve="emptyProject" />
                  </node>
                  <node concept="37vLTw" id="5A5jZrz7hWo" role="37wK5m">
                    <ref role="3cqZAo" node="7fR23ZqldRI" resolve="moduleHandles" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5A5jZrz7hWp" role="2OqNvi">
                <ref role="37wK5l" node="5A5jZrz4jY3" resolve="load" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2BGPXkEsGmz" role="3cqZAp">
          <node concept="37vLTw" id="2BGPXkEsGm$" role="3cqZAk">
            <ref role="3cqZAo" node="5A5jZrz7hWj" resolve="projectFilledWithModules" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2BGPXkEwI8N" role="3clF46">
        <property role="TrG5h" value="emptyProject" />
        <node concept="3uibUv" id="2BGPXkEwIZU" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="2BGPXkEwR0n" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="7fR23ZqldRI" role="3clF46">
        <property role="TrG5h" value="moduleHandles" />
        <node concept="3uibUv" id="7LkutxgTjLM" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
          <node concept="3uibUv" id="7LkutxgTk5J" role="11_B2D">
            <ref role="3uigEE" to="32g5:~ModulesMiner$ModuleHandle" resolve="ModulesMiner.ModuleHandle" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7fR23ZqlcGf" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3Tmbuc" id="5A5jZrz7Fh8" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5A5jZrz7f6g" role="jymVt" />
    <node concept="2YIFZL" id="76aXy8jfmWK" role="jymVt">
      <property role="TrG5h" value="makeAllInCreatedEnvironment" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3uibUv" id="76aXy8jfLxH" role="3clF45">
        <ref role="3uigEE" to="vqh0:~MPSCompilationResult" resolve="MPSCompilationResult" />
      </node>
      <node concept="3clFbS" id="76aXy8jfmWN" role="3clF47">
        <node concept="RRSsy" id="3jYQuSB37rJ" role="3cqZAp">
          <property role="RRSoG" value="h1akgim/info" />
          <node concept="Xl_RD" id="1LCdstw1GQX" role="RRSoy">
            <property role="Xl_RC" value="Building modules within project" />
          </node>
        </node>
        <node concept="3cpWs8" id="4FwyBHOWGqY" role="3cqZAp">
          <node concept="3cpWsn" id="4FwyBHOWGqZ" role="3cpWs9">
            <property role="TrG5h" value="mc" />
            <node concept="3uibUv" id="4FwyBHOWFCN" role="1tU5fm">
              <ref role="3uigEE" to="et5u:~MessageCollector" resolve="MessageCollector" />
            </node>
            <node concept="2ShNRf" id="4FwyBHOWGr0" role="33vP2m">
              <node concept="1pGfFk" id="4FwyBHOWGr1" role="2ShVmc">
                <ref role="37wK5l" to="et5u:~MessageCollector.&lt;init&gt;(java.util.Collection)" resolve="MessageCollector" />
                <node concept="2ShNRf" id="4FwyBHOWIxl" role="37wK5m">
                  <node concept="1pGfFk" id="4FwyBHOWJQ3" role="2ShVmc">
                    <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                    <node concept="3uibUv" id="4FwyBHOWLNG" role="1pMfVU">
                      <ref role="3uigEE" to="et5u:~IMessage" resolve="IMessage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4FwyBHOWQK3" role="3cqZAp">
          <node concept="3cpWsn" id="4FwyBHOWQK4" role="3cpWs9">
            <property role="TrG5h" value="mm" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="4FwyBHOWQty" role="1tU5fm">
              <ref role="3uigEE" to="vqh0:~ModuleMaker" resolve="ModuleMaker" />
            </node>
            <node concept="2ShNRf" id="4FwyBHOWQK5" role="33vP2m">
              <node concept="1pGfFk" id="4FwyBHOWQK6" role="2ShVmc">
                <ref role="37wK5l" to="vqh0:~ModuleMaker.&lt;init&gt;(jetbrains.mps.messages.IMessageHandler)" resolve="ModuleMaker" />
                <node concept="2OqwBi" id="4FwyBHOWQK7" role="37wK5m">
                  <node concept="37vLTw" id="4FwyBHOWQK8" role="2Oq$k0">
                    <ref role="3cqZAo" node="4FwyBHOWGqZ" resolve="mc" />
                  </node>
                  <node concept="liA8E" id="4FwyBHOWQK9" role="2OqNvi">
                    <ref role="37wK5l" to="et5u:~IMessageHandler.restrict(jetbrains.mps.messages.MessageKind)" resolve="restrict" />
                    <node concept="Rm8GO" id="4FwyBHOWQKa" role="37wK5m">
                      <ref role="Rm8GQ" to="et5u:~MessageKind.ERROR" resolve="ERROR" />
                      <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3eyCFyRe1x_" role="3cqZAp">
          <node concept="2OqwBi" id="2BGPXkEwUCm" role="3clFbG">
            <node concept="liA8E" id="2BGPXkEwUCn" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="2BGPXkEwUCo" role="37wK5m">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="2BGPXkEwUCp" role="1bW5cS">
                  <node concept="3SKdUt" id="C5C_o36dUb" role="3cqZAp">
                    <node concept="1PaTwC" id="C5C_o36dUc" role="1aUNEU">
                      <node concept="3oM_SD" id="C5C_o36dUu" role="1PaTwD">
                        <property role="3oM_SC" value="FIXME" />
                      </node>
                      <node concept="3oM_SD" id="C5C_o36dUw" role="1PaTwD">
                        <property role="3oM_SC" value="figure" />
                      </node>
                      <node concept="3oM_SD" id="C5C_o36faf" role="1PaTwD">
                        <property role="3oM_SC" value="out" />
                      </node>
                      <node concept="3oM_SD" id="C5C_o36faj" role="1PaTwD">
                        <property role="3oM_SC" value="why" />
                      </node>
                      <node concept="3oM_SD" id="C5C_o36owM" role="1PaTwD">
                        <property role="3oM_SC" value="project.getProjectModulesWithGenerators()" />
                      </node>
                      <node concept="3oM_SD" id="C5C_o36pkg" role="1PaTwD">
                        <property role="3oM_SC" value="instead" />
                      </node>
                      <node concept="3oM_SD" id="C5C_o36pkn" role="1PaTwD">
                        <property role="3oM_SC" value="of" />
                      </node>
                      <node concept="3oM_SD" id="C5C_o36pkv" role="1PaTwD">
                        <property role="3oM_SC" value="all" />
                      </node>
                      <node concept="3oM_SD" id="C5C_o36qwL" role="1PaTwD">
                        <property role="3oM_SC" value="repo" />
                      </node>
                      <node concept="3oM_SD" id="C5C_o36qZc" role="1PaTwD">
                        <property role="3oM_SC" value="modules" />
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="C5C_o36rWZ" role="3cqZAp">
                    <node concept="1PaTwC" id="C5C_o36rX0" role="1aUNEU">
                      <node concept="3oM_SD" id="C5C_o36rXu" role="1PaTwD">
                        <property role="3oM_SC" value="" />
                      </node>
                      <node concept="3oM_SD" id="C5C_o36tqT" role="1PaTwD">
                        <property role="3oM_SC" value="" />
                      </node>
                      <node concept="3oM_SD" id="C5C_o36u4l" role="1PaTwD">
                        <property role="3oM_SC" value="" />
                      </node>
                      <node concept="3oM_SD" id="C5C_o36u4p" role="1PaTwD">
                        <property role="3oM_SC" value="" />
                      </node>
                      <node concept="3oM_SD" id="C5C_o36u4u" role="1PaTwD">
                        <property role="3oM_SC" value="" />
                      </node>
                      <node concept="3oM_SD" id="C5C_o36u4$" role="1PaTwD">
                        <property role="3oM_SC" value="fails" />
                      </node>
                      <node concept="3oM_SD" id="C5C_o36wgw" role="1PaTwD">
                        <property role="3oM_SC" value="few" />
                      </node>
                      <node concept="3oM_SD" id="C5C_o36wgC" role="1PaTwD">
                        <property role="3oM_SC" value="MPS" />
                      </node>
                      <node concept="3oM_SD" id="C5C_o36wZo" role="1PaTwD">
                        <property role="3oM_SC" value="tests." />
                      </node>
                      <node concept="3oM_SD" id="C5C_o36ysK" role="1PaTwD">
                        <property role="3oM_SC" value="Likely," />
                      </node>
                      <node concept="3oM_SD" id="C5C_o36$CK" role="1PaTwD">
                        <property role="3oM_SC" value="wrong" />
                      </node>
                      <node concept="3oM_SD" id="C5C_o36$CW" role="1PaTwD">
                        <property role="3oM_SC" value="project" />
                      </node>
                      <node concept="3oM_SD" id="C5C_o36_bZ" role="1PaTwD">
                        <property role="3oM_SC" value="specification." />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3eyCFyRe4w6" role="3cqZAp">
                    <node concept="2OqwBi" id="3eyCFyRe5MW" role="3clFbG">
                      <node concept="37vLTw" id="3eyCFyRe4w5" role="2Oq$k0">
                        <ref role="3cqZAo" node="4FwyBHOWQK4" resolve="mm" />
                      </node>
                      <node concept="liA8E" id="3eyCFyRe6El" role="2OqNvi">
                        <ref role="37wK5l" to="vqh0:~ModuleMaker.prepare(java.util.Collection,boolean,org.jetbrains.mps.openapi.util.ProgressMonitor)" resolve="prepare" />
                        <node concept="2YIFZM" id="5zbtCmDxesI" role="37wK5m">
                          <ref role="37wK5l" to="18ew:~IterableUtil.asCollection(java.lang.Iterable)" resolve="asCollection" />
                          <ref role="1Pybhc" to="18ew:~IterableUtil" resolve="IterableUtil" />
                          <node concept="2OqwBi" id="5zbtCmDx4tZ" role="37wK5m">
                            <node concept="2OqwBi" id="3eyCFyRe8q9" role="2Oq$k0">
                              <node concept="37vLTw" id="3eyCFyRe7ri" role="2Oq$k0">
                                <ref role="3cqZAo" node="2BGPXkEwSsJ" resolve="project" />
                              </node>
                              <node concept="liA8E" id="3eyCFyRe9n1" role="2OqNvi">
                                <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                              </node>
                            </node>
                            <node concept="liA8E" id="5zbtCmDx5D2" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~SRepository.getModules()" resolve="getModules" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbT" id="3eyCFyRec$i" role="37wK5m" />
                        <node concept="2ShNRf" id="4FwyBHOWSrb" role="37wK5m">
                          <node concept="1pGfFk" id="4FwyBHOWSrc" role="2ShVmc">
                            <ref role="37wK5l" to="mk8z:~EmptyProgressMonitor.&lt;init&gt;()" resolve="EmptyProgressMonitor" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2BGPXkEwUCB" role="2Oq$k0">
              <node concept="37vLTw" id="2BGPXkEwUCC" role="2Oq$k0">
                <ref role="3cqZAo" node="2BGPXkEwSsJ" resolve="project" />
              </node>
              <node concept="liA8E" id="2BGPXkEwUCD" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4FwyBHOWSr0" role="3cqZAp">
          <node concept="3cpWsn" id="4FwyBHOWSr1" role="3cpWs9">
            <property role="TrG5h" value="rv" />
            <node concept="3uibUv" id="4FwyBHOWS6V" role="1tU5fm">
              <ref role="3uigEE" to="vqh0:~MPSCompilationResult" resolve="MPSCompilationResult" />
            </node>
            <node concept="2OqwBi" id="4FwyBHOWSr2" role="33vP2m">
              <node concept="37vLTw" id="4FwyBHOWSr3" role="2Oq$k0">
                <ref role="3cqZAo" node="4FwyBHOWQK4" resolve="mm" />
              </node>
              <node concept="liA8E" id="4FwyBHOWSr4" role="2OqNvi">
                <ref role="37wK5l" to="vqh0:~ModuleMaker.make(org.jetbrains.mps.openapi.util.ProgressMonitor)" resolve="make" />
                <node concept="2ShNRf" id="3eyCFyReh1q" role="37wK5m">
                  <node concept="1pGfFk" id="3eyCFyReh1r" role="2ShVmc">
                    <ref role="37wK5l" to="mk8z:~EmptyProgressMonitor.&lt;init&gt;()" resolve="EmptyProgressMonitor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4FwyBHOWUUP" role="3cqZAp">
          <node concept="3clFbS" id="4FwyBHOWUUR" role="3clFbx">
            <node concept="3SKdUt" id="4FwyBHOX9Y6" role="3cqZAp">
              <node concept="1PaTwC" id="4FwyBHOX9Y7" role="1aUNEU">
                <node concept="3oM_SD" id="4FwyBHOXaRA" role="1PaTwD">
                  <property role="3oM_SC" value="regardless" />
                </node>
                <node concept="3oM_SD" id="4FwyBHOXcdY" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="4FwyBHOXce1" role="1PaTwD">
                  <property role="3oM_SC" value="what's" />
                </node>
                <node concept="3oM_SD" id="4FwyBHOXce5" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="4FwyBHOXdck" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="4FwyBHOXdcq" role="1PaTwD">
                  <property role="3oM_SC" value="log" />
                </node>
                <node concept="3oM_SD" id="4FwyBHOXfxW" role="1PaTwD">
                  <property role="3oM_SC" value="(and" />
                </node>
                <node concept="3oM_SD" id="4FwyBHOXixN" role="1PaTwD">
                  <property role="3oM_SC" value="whether" />
                </node>
                <node concept="3oM_SD" id="4FwyBHOXjSm" role="1PaTwD">
                  <property role="3oM_SC" value="it's" />
                </node>
                <node concept="3oM_SD" id="4FwyBHOXkQI" role="1PaTwD">
                  <property role="3oM_SC" value="turned" />
                </node>
                <node concept="3oM_SD" id="4FwyBHOXlM3" role="1PaTwD">
                  <property role="3oM_SC" value="on" />
                </node>
                <node concept="3oM_SD" id="4FwyBHOXlMj" role="1PaTwD">
                  <property role="3oM_SC" value="at" />
                </node>
                <node concept="3oM_SD" id="4FwyBHOXn6s" role="1PaTwD">
                  <property role="3oM_SC" value="all(," />
                </node>
                <node concept="3oM_SD" id="4FwyBHOXdcx" role="1PaTwD">
                  <property role="3oM_SC" value="I" />
                </node>
                <node concept="3oM_SD" id="4FwyBHOXdRO" role="1PaTwD">
                  <property role="3oM_SC" value="care" />
                </node>
                <node concept="3oM_SD" id="4FwyBHOXeQs" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="4FwyBHOXeQA" role="1PaTwD">
                  <property role="3oM_SC" value="see" />
                </node>
                <node concept="3oM_SD" id="4FwyBHOXpOh" role="1PaTwD">
                  <property role="3oM_SC" value="errors" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="4FwyBHOXrZb" role="3cqZAp">
              <node concept="1PaTwC" id="4FwyBHOXrZc" role="1aUNEU">
                <node concept="3oM_SD" id="4FwyBHOXsEY" role="1PaTwD">
                  <property role="3oM_SC" value="Perhaps," />
                </node>
                <node concept="3oM_SD" id="4FwyBHOXuZw" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="4FwyBHOXxUN" role="1PaTwD">
                  <property role="3oM_SC" value="sysout" />
                </node>
                <node concept="3oM_SD" id="4FwyBHOXxiL" role="1PaTwD">
                  <property role="3oM_SC" value="but" />
                </node>
                <node concept="3oM_SD" id="4FwyBHOXz$d" role="1PaTwD">
                  <property role="3oM_SC" value="part" />
                </node>
                <node concept="3oM_SD" id="4FwyBHOX$fu" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="4FwyBHOX$f_" role="1PaTwD">
                  <property role="3oM_SC" value="ISE" />
                </node>
                <node concept="3oM_SD" id="4FwyBHOX_Tb" role="1PaTwD">
                  <property role="3oM_SC" value="from" />
                </node>
                <node concept="3oM_SD" id="4FwyBHOXA$v" role="1PaTwD">
                  <property role="3oM_SC" value="makeOnFirstTimeOpened()," />
                </node>
                <node concept="3oM_SD" id="4FwyBHOXDmG" role="1PaTwD">
                  <property role="3oM_SC" value="shall" />
                </node>
                <node concept="3oM_SD" id="4FwyBHOXEHd" role="1PaTwD">
                  <property role="3oM_SC" value="decide" />
                </node>
                <node concept="3oM_SD" id="4FwyBHOXHvs" role="1PaTwD">
                  <property role="3oM_SC" value="once" />
                </node>
                <node concept="3oM_SD" id="4FwyBHOXIaO" role="1PaTwD">
                  <property role="3oM_SC" value="need" />
                </node>
                <node concept="3oM_SD" id="4FwyBHOXIC_" role="1PaTwD">
                  <property role="3oM_SC" value="arises." />
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="4FwyBHOX04P" role="3cqZAp">
              <node concept="3clFbS" id="4FwyBHOX04S" role="2LFqv$">
                <node concept="3clFbF" id="4FwyBHOX4zg" role="3cqZAp">
                  <node concept="2OqwBi" id="4FwyBHOX4zd" role="3clFbG">
                    <node concept="10M0yZ" id="4FwyBHOX4ze" role="2Oq$k0">
                      <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                      <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                    </node>
                    <node concept="liA8E" id="4FwyBHOX4zf" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                      <node concept="2OqwBi" id="4FwyBHOX2fg" role="37wK5m">
                        <node concept="37vLTw" id="4FwyBHOX1r4" role="2Oq$k0">
                          <ref role="3cqZAo" node="4FwyBHOX04T" resolve="m" />
                        </node>
                        <node concept="liA8E" id="4FwyBHOX3e1" role="2OqNvi">
                          <ref role="37wK5l" to="et5u:~IMessage.getText()" resolve="getText" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="4FwyBHOX04T" role="1Duv9x">
                <property role="TrG5h" value="m" />
                <node concept="3uibUv" id="4FwyBHOX04X" role="1tU5fm">
                  <ref role="3uigEE" to="et5u:~IMessage" resolve="IMessage" />
                </node>
              </node>
              <node concept="2OqwBi" id="4FwyBHOX04Y" role="1DdaDG">
                <node concept="37vLTw" id="4FwyBHOX04Z" role="2Oq$k0">
                  <ref role="3cqZAo" node="4FwyBHOWGqZ" resolve="mc" />
                </node>
                <node concept="liA8E" id="4FwyBHOX050" role="2OqNvi">
                  <ref role="37wK5l" to="et5u:~MessageCollector.result()" resolve="result" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="4FwyBHOWXk3" role="3clFbw">
            <node concept="2OqwBi" id="4FwyBHOWXk5" role="3fr31v">
              <node concept="37vLTw" id="4FwyBHOWXk6" role="2Oq$k0">
                <ref role="3cqZAo" node="4FwyBHOWSr1" resolve="rv" />
              </node>
              <node concept="liA8E" id="4FwyBHOWXk7" role="2OqNvi">
                <ref role="37wK5l" to="vqh0:~MPSCompilationResult.isOk()" resolve="isOk" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4FwyBHOWUdb" role="3cqZAp">
          <node concept="37vLTw" id="4FwyBHOWUdd" role="3cqZAk">
            <ref role="3cqZAo" node="4FwyBHOWSr1" resolve="rv" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5A5jZrz7fva" role="1B3o_S" />
      <node concept="37vLTG" id="2BGPXkEwSsJ" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2BGPXkEwSsI" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5A5jZrz7fbw" role="jymVt" />
    <node concept="3clFb_" id="2BGPXkEwSeK" role="jymVt">
      <property role="TrG5h" value="makeOnFirstTimeOpened" />
      <property role="DiZV1" value="true" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="5ICuv4IIkm0" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="6jVPebMMnET" role="3clF47">
        <node concept="3cpWs8" id="3IZXeSR$wwb" role="3cqZAp">
          <node concept="3cpWsn" id="3IZXeSR$wwc" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="3IZXeSR$wwa" role="1tU5fm">
              <ref role="3uigEE" to="vqh0:~MPSCompilationResult" resolve="MPSCompilationResult" />
            </node>
            <node concept="1rXfSq" id="5A5jZrz7FPs" role="33vP2m">
              <ref role="37wK5l" node="76aXy8jfmWK" resolve="makeAllInCreatedEnvironment" />
              <node concept="37vLTw" id="2BGPXkEwSrD" role="37wK5m">
                <ref role="3cqZAo" node="6jVPebMMnIO" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6TXAd2x_b26" role="3cqZAp">
          <node concept="3clFbS" id="6TXAd2x_b28" role="3clFbx">
            <node concept="YS8fn" id="6TXAd2x_bPU" role="3cqZAp">
              <node concept="2ShNRf" id="6TXAd2x_bRI" role="YScLw">
                <node concept="1pGfFk" id="6TXAd2x_hQN" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="2OqwBi" id="WkbJYv2Q3u" role="37wK5m">
                    <node concept="Xl_RD" id="6TXAd2x_hS$" role="2Oq$k0">
                      <property role="Xl_RC" value="Cannot proceed with compilation errors. %s" />
                    </node>
                    <node concept="2cAKMz" id="WkbJYv2Rhv" role="2OqNvi">
                      <node concept="2OqwBi" id="WkbJYv30g8" role="2cAKU6">
                        <node concept="37vLTw" id="WkbJYv2ZCF" role="2Oq$k0">
                          <ref role="3cqZAo" node="3IZXeSR$wwc" resolve="result" />
                        </node>
                        <node concept="liA8E" id="WkbJYv31gE" role="2OqNvi">
                          <ref role="37wK5l" to="vqh0:~MPSCompilationResult.toString()" resolve="toString" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6TXAd2x_bl2" role="3clFbw">
            <node concept="2OqwBi" id="6TXAd2x_bl4" role="3fr31v">
              <node concept="37vLTw" id="6TXAd2x_bl5" role="2Oq$k0">
                <ref role="3cqZAo" node="3IZXeSR$wwc" resolve="result" />
              </node>
              <node concept="liA8E" id="6TXAd2x_bl6" role="2OqNvi">
                <ref role="37wK5l" to="vqh0:~MPSCompilationResult.isOk()" resolve="isOk" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="6jVPebMM_iD" role="3cqZAp">
          <node concept="3uVAMA" id="6jVPebMM_iF" role="1zxBo5">
            <node concept="XOnhg" id="6jVPebMM_iG" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="xvs04dGzEa" role="1tU5fm">
                <node concept="3uibUv" id="6jVPebMM_iZ" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="6jVPebMM_iI" role="1zc67A">
              <node concept="YS8fn" id="6jVPebMM_j6" role="3cqZAp">
                <node concept="2ShNRf" id="6jVPebMM_jf" role="YScLw">
                  <node concept="1pGfFk" id="6jVPebMN7XN" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="6jVPebMN7XU" role="37wK5m">
                      <ref role="3cqZAo" node="6jVPebMM_iG" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6jVPebMM_iE" role="1zxBo7">
            <node concept="3clFbJ" id="6rYSYZkPHoG" role="3cqZAp">
              <node concept="3clFbS" id="6rYSYZkPHoI" role="3clFbx">
                <node concept="3clFbF" id="7X3$Ctw3YtO" role="3cqZAp">
                  <node concept="1rXfSq" id="5A5jZrz7exe" role="3clFbG">
                    <ref role="37wK5l" node="Unl8PVi821" resolve="reloadAfterMake" />
                    <node concept="37vLTw" id="6rYSYZkPFfU" role="37wK5m">
                      <ref role="3cqZAo" node="6jVPebMMnIO" resolve="project" />
                    </node>
                    <node concept="2OqwBi" id="ZGgUpLUPho" role="37wK5m">
                      <node concept="37vLTw" id="6rYSYZkPHkt" role="2Oq$k0">
                        <ref role="3cqZAo" node="3IZXeSR$wwc" resolve="result" />
                      </node>
                      <node concept="liA8E" id="ZGgUpLUQuj" role="2OqNvi">
                        <ref role="37wK5l" to="vqh0:~MPSCompilationResult.getAffectedModules()" resolve="getAffectedModules" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6rYSYZkPHsD" role="3clFbw">
                <node concept="37vLTw" id="6rYSYZkPHr9" role="2Oq$k0">
                  <ref role="3cqZAo" node="3IZXeSR$wwc" resolve="result" />
                </node>
                <node concept="liA8E" id="6rYSYZkPH_r" role="2OqNvi">
                  <ref role="37wK5l" to="vqh0:~MPSCompilationResult.isReloadingNeeded()" resolve="isReloadingNeeded" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6rYSYZkPHJ3" role="3cqZAp">
              <node concept="1rXfSq" id="6rYSYZkPHJ1" role="3clFbG">
                <ref role="37wK5l" node="6rYSYZkPGv8" resolve="updateModelsInModules" />
                <node concept="37vLTw" id="6rYSYZkPHMk" role="37wK5m">
                  <ref role="3cqZAo" node="6jVPebMMnIO" resolve="project" />
                </node>
                <node concept="2OqwBi" id="ZGgUpLUS6I" role="37wK5m">
                  <node concept="37vLTw" id="ZGgUpLUS6J" role="2Oq$k0">
                    <ref role="3cqZAo" node="3IZXeSR$wwc" resolve="result" />
                  </node>
                  <node concept="liA8E" id="ZGgUpLUS6K" role="2OqNvi">
                    <ref role="37wK5l" to="vqh0:~MPSCompilationResult.getAffectedModules()" resolve="getAffectedModules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5ICuv4IIots" role="3cqZAp">
          <node concept="37vLTw" id="6jVPebMMuWX" role="3cqZAk">
            <ref role="3cqZAo" node="6jVPebMMnIO" resolve="project" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6jVPebMMnIO" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="2AHcQZ" id="5ICuv4IIoBt" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6jVPebMMnIN" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3uibUv" id="6jVPebMMnEO" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3Tmbuc" id="5A5jZrz7Fqw" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5A5jZrz7epb" role="jymVt" />
    <node concept="3clFb_" id="Unl8PVi821" role="jymVt">
      <property role="TrG5h" value="reloadAfterMake" />
      <property role="DiZV1" value="true" />
      <node concept="3clFbS" id="43Ra3NM_JfP" role="3clF47">
        <node concept="RRSsy" id="3jYQuSB37rP" role="3cqZAp">
          <property role="RRSoG" value="h1akgim/info" />
          <node concept="Xl_RD" id="51zp1jJrZoC" role="RRSoy">
            <property role="Xl_RC" value="Reloading built modules" />
          </node>
        </node>
        <node concept="3clFbH" id="43Ra3NM_Nvb" role="3cqZAp" />
        <node concept="3SKdUt" id="6rYSYZkPIPb" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9k4" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9k5" role="1PaTwD">
              <property role="3oM_SC" value="todo" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9k6" role="1PaTwD">
              <property role="3oM_SC" value="create" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9k7" role="1PaTwD">
              <property role="3oM_SC" value="make" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9k8" role="1PaTwD">
              <property role="3oM_SC" value="process" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9k9" role="1PaTwD">
              <property role="3oM_SC" value="listeners," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ka" role="1PaTwD">
              <property role="3oM_SC" value="class" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9kb" role="1PaTwD">
              <property role="3oM_SC" value="loading" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9kc" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9kd" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ke" role="1PaTwD">
              <property role="3oM_SC" value="client" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ZGgUpLUC16" role="3cqZAp">
          <node concept="2OqwBi" id="ZGgUpLUGmC" role="3clFbG">
            <node concept="2OqwBi" id="ZGgUpLUCXz" role="2Oq$k0">
              <node concept="37vLTw" id="ZGgUpLUC14" role="2Oq$k0">
                <ref role="3cqZAo" node="6rYSYZkPF5e" resolve="project" />
              </node>
              <node concept="liA8E" id="ZGgUpLUDGM" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="ZGgUpLUFhI" role="37wK5m">
                  <ref role="3VsUkX" to="3qmy:~ClassLoaderManager" resolve="ClassLoaderManager" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="ZGgUpLUH5m" role="2OqNvi">
              <ref role="37wK5l" to="3qmy:~ClassLoaderManager.reload(java.lang.Iterable,org.jetbrains.mps.openapi.util.ProgressMonitor)" resolve="reload" />
              <node concept="37vLTw" id="ZGgUpLUHBe" role="37wK5m">
                <ref role="3cqZAo" node="3IZXeSR$nkw" resolve="changed" />
              </node>
              <node concept="2ShNRf" id="ZGgUpLUJ$c" role="37wK5m">
                <node concept="1pGfFk" id="ZGgUpLUL2P" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="mk8z:~EmptyProgressMonitor.&lt;init&gt;()" resolve="EmptyProgressMonitor" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6rYSYZkPF5e" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="2AHcQZ" id="6rYSYZkPF5f" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6rYSYZkPF5g" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="3IZXeSR$nkw" role="3clF46">
        <property role="TrG5h" value="changed" />
        <node concept="3uibUv" id="6rYSYZkPHQm" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="3uibUv" id="6rYSYZkPI6W" role="11_B2D">
            <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="43Ra3NM_JfK" role="3clF45" />
      <node concept="3Tmbuc" id="6rYSYZkPEZA" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6rYSYZkPGb4" role="jymVt" />
    <node concept="2YIFZL" id="6rYSYZkPGv8" role="jymVt">
      <property role="TrG5h" value="updateModelsInModules" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="6rYSYZkPGBx" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="2AHcQZ" id="6rYSYZkPGBy" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6rYSYZkPGBz" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="6rYSYZkPJsz" role="3clF46">
        <property role="TrG5h" value="changed" />
        <node concept="3uibUv" id="6rYSYZkPJ$S" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="3uibUv" id="6rYSYZkPJG8" role="11_B2D">
            <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6rYSYZkPGvb" role="3clF47">
        <node concept="3clFbF" id="6rYSYZkPIXK" role="3cqZAp">
          <node concept="2OqwBi" id="6rYSYZkPJk3" role="3clFbG">
            <node concept="2OqwBi" id="6rYSYZkPJ16" role="2Oq$k0">
              <node concept="37vLTw" id="6rYSYZkPIXJ" role="2Oq$k0">
                <ref role="3cqZAo" node="6rYSYZkPGBx" resolve="project" />
              </node>
              <node concept="liA8E" id="6rYSYZkPJiW" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="6rYSYZkPJs0" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runWriteAction(java.lang.Runnable)" resolve="runWriteAction" />
              <node concept="1bVj0M" id="6rYSYZkPJNG" role="37wK5m">
                <node concept="3clFbS" id="6rYSYZkPJNH" role="1bW5cS">
                  <node concept="2Gpval" id="6rYSYZkPJQc" role="3cqZAp">
                    <node concept="2GrKxI" id="6rYSYZkPJQd" role="2Gsz3X">
                      <property role="TrG5h" value="mref" />
                    </node>
                    <node concept="3clFbS" id="6rYSYZkPJQe" role="2LFqv$">
                      <node concept="3cpWs8" id="ZGgUpLV9yx" role="3cqZAp">
                        <node concept="3cpWsn" id="ZGgUpLV9yy" role="3cpWs9">
                          <property role="TrG5h" value="module" />
                          <node concept="3uibUv" id="ZGgUpLV9c9" role="1tU5fm">
                            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                          </node>
                          <node concept="2OqwBi" id="ZGgUpLV9yz" role="33vP2m">
                            <node concept="2GrUjf" id="ZGgUpLV9y$" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="6rYSYZkPJQd" resolve="mref" />
                            </node>
                            <node concept="liA8E" id="ZGgUpLV9y_" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                              <node concept="2OqwBi" id="ZGgUpLV9yA" role="37wK5m">
                                <node concept="37vLTw" id="ZGgUpLV9yB" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6rYSYZkPGBx" resolve="project" />
                                </node>
                                <node concept="liA8E" id="ZGgUpLV9yC" role="2OqNvi">
                                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="6rYSYZkPJVJ" role="3cqZAp">
                        <node concept="3clFbS" id="6rYSYZkPJVK" role="3clFbx">
                          <node concept="3clFbF" id="6rYSYZkPKdN" role="3cqZAp">
                            <node concept="2OqwBi" id="6rYSYZkPKh5" role="3clFbG">
                              <node concept="1eOMI4" id="6rYSYZkPKdJ" role="2Oq$k0">
                                <node concept="10QFUN" id="6rYSYZkPKdG" role="1eOMHV">
                                  <node concept="3uibUv" id="6rYSYZkPKdL" role="10QFUM">
                                    <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                                  </node>
                                  <node concept="37vLTw" id="6GCfqUISs1c" role="10QFUP">
                                    <ref role="3cqZAo" node="ZGgUpLV9yy" resolve="module" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="6rYSYZkPLdL" role="2OqNvi">
                                <ref role="37wK5l" to="z1c3:~AbstractModule.updateModelsSet()" resolve="updateModelsSet" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2ZW3vV" id="6rYSYZkPK7i" role="3clFbw">
                          <node concept="3uibUv" id="6rYSYZkPK7j" role="2ZW6by">
                            <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                          </node>
                          <node concept="37vLTw" id="ZGgUpLVbs5" role="2ZW6bz">
                            <ref role="3cqZAo" node="ZGgUpLV9yy" resolve="module" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="6rYSYZkPJSD" role="2GsD0m">
                      <ref role="3cqZAo" node="6rYSYZkPJsz" resolve="changed" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="6rYSYZkPGlY" role="1B3o_S" />
      <node concept="3cqZAl" id="6rYSYZkPGui" role="3clF45" />
      <node concept="P$JXv" id="6rYSYZkPGLb" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs_Wg" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_Wh" role="1PaTwD">
            <property role="3oM_SC" value="Why" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Wi" role="1PaTwD">
            <property role="3oM_SC" value="do" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Wj" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Wk" role="1PaTwD">
            <property role="3oM_SC" value="we" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Wl" role="1PaTwD">
            <property role="3oM_SC" value="need" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Wm" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Wn" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Wo" role="1PaTwD">
            <property role="3oM_SC" value="IDE?" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_Wp" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_Wq" role="1PaTwD">
            <property role="3oM_SC" value="Danya:" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_Wr" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_Ws" role="1PaTwD">
            <property role="3oM_SC" value="added" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Wt" role="1PaTwD">
            <property role="3oM_SC" value="reload" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Wu" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Wv" role="1PaTwD">
            <property role="3oM_SC" value="all" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Ww" role="1PaTwD">
            <property role="3oM_SC" value="changed" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Wx" role="1PaTwD">
            <property role="3oM_SC" value="(or" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Wy" role="1PaTwD">
            <property role="3oM_SC" value="new)" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Wz" role="1PaTwD">
            <property role="3oM_SC" value="models" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_W$" role="1PaTwD">
            <property role="3oM_SC" value="after" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_W_" role="1PaTwD">
            <property role="3oM_SC" value="make." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_WA" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_WB" role="1PaTwD">
            <property role="3oM_SC" value="Usecase:" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_WC" role="1PaTwD">
            <property role="3oM_SC" value="stub" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_WD" role="1PaTwD">
            <property role="3oM_SC" value="model" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_WE" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_WF" role="1PaTwD">
            <property role="3oM_SC" value="source" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_WG" role="1PaTwD">
            <property role="3oM_SC" value="at" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_WH" role="1PaTwD">
            <property role="3oM_SC" value="classes_gen" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_WI" role="1PaTwD">
            <property role="3oM_SC" value="dir" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_WJ" role="1PaTwD">
            <property role="3oM_SC" value="which" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_WK" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_WL" role="1PaTwD">
            <property role="3oM_SC" value="populated" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_WM" role="1PaTwD">
            <property role="3oM_SC" value="only" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_WN" role="1PaTwD">
            <property role="3oM_SC" value="during" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_WO" role="1PaTwD">
            <property role="3oM_SC" value="make." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_WP" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_WQ" role="1PaTwD">
            <property role="3oM_SC" value="But" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_WR" role="1PaTwD">
            <property role="3oM_SC" value="by" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_WS" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_WT" role="1PaTwD">
            <property role="3oM_SC" value="time" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_WU" role="1PaTwD">
            <property role="3oM_SC" value="model" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_WV" role="1PaTwD">
            <property role="3oM_SC" value="repository" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_WW" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_WX" role="1PaTwD">
            <property role="3oM_SC" value="already" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_WY" role="1PaTwD">
            <property role="3oM_SC" value="filled" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_WZ" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_X0" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_X1" role="1PaTwD">
            <property role="3oM_SC" value="has" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_X2" role="1PaTwD">
            <property role="3oM_SC" value="no" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_X3" role="1PaTwD">
            <property role="3oM_SC" value="such" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_X4" role="1PaTwD">
            <property role="3oM_SC" value="models" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_X5" role="1PaTwD">
            <property role="3oM_SC" value="since" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_X6" role="1PaTwD">
            <property role="3oM_SC" value="there" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_X7" role="1PaTwD">
            <property role="3oM_SC" value="was" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_X8" role="1PaTwD">
            <property role="3oM_SC" value="no" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_X9" role="1PaTwD">
            <property role="3oM_SC" value="class" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Xa" role="1PaTwD">
            <property role="3oM_SC" value="files" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_Xb" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_Xc" role="1PaTwD">
            <property role="3oM_SC" value="when" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Xd" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Xe" role="1PaTwD">
            <property role="3oM_SC" value="got" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_Xf" role="1PaTwD">
            <property role="3oM_SC" value="filled." />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="5A5jZrz799T" role="1B3o_S" />
    <node concept="3uibUv" id="5A5jZrz79al" role="EKbjA">
      <ref role="3uigEE" node="5A5jZrz4rws" resolve="ProjectStrategy" />
    </node>
  </node>
  <node concept="312cEu" id="2BGPXkEwcpT">
    <property role="3GE5qa" value="strategy" />
    <property role="TrG5h" value="CompositeProjectStrategy" />
    <node concept="312cEg" id="2BGPXkEwcto" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myStrategies" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2BGPXkEwcsM" role="1B3o_S" />
      <node concept="10Q1$e" id="2BGPXkEwct8" role="1tU5fm">
        <node concept="3uibUv" id="2BGPXkEwct6" role="10Q1$1">
          <ref role="3uigEE" node="5A5jZrz4rws" resolve="ProjectStrategy" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkEwcyv" role="jymVt" />
    <node concept="3clFbW" id="2BGPXkEwcqJ" role="jymVt">
      <node concept="3cqZAl" id="2BGPXkEwcqK" role="3clF45" />
      <node concept="3clFbS" id="2BGPXkEwcqM" role="3clF47">
        <node concept="3clFbF" id="2BGPXkEwcuK" role="3cqZAp">
          <node concept="37vLTI" id="2BGPXkEwcvR" role="3clFbG">
            <node concept="37vLTw" id="2BGPXkEwcxB" role="37vLTx">
              <ref role="3cqZAo" node="2BGPXkEwcr3" resolve="strategies" />
            </node>
            <node concept="37vLTw" id="2BGPXkEwcuJ" role="37vLTJ">
              <ref role="3cqZAo" node="2BGPXkEwcto" resolve="myStrategies" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2BGPXkEwcqt" role="1B3o_S" />
      <node concept="37vLTG" id="2BGPXkEwcr3" role="3clF46">
        <property role="TrG5h" value="strategies" />
        <node concept="8X2XB" id="2BGPXkEwcs7" role="1tU5fm">
          <node concept="3uibUv" id="2BGPXkEwcrW" role="8Xvag">
            <ref role="3uigEE" node="5A5jZrz4rws" resolve="ProjectStrategy" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkEwc_D" role="jymVt" />
    <node concept="3Tm1VV" id="2BGPXkEwcpU" role="1B3o_S" />
    <node concept="3uibUv" id="2BGPXkEwcqe" role="EKbjA">
      <ref role="3uigEE" node="5A5jZrz4rws" resolve="ProjectStrategy" />
    </node>
    <node concept="3clFb_" id="2BGPXkEwczG" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="create" />
      <node concept="3Tm1VV" id="2BGPXkEwczI" role="1B3o_S" />
      <node concept="3uibUv" id="2BGPXkEwczJ" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="2AHcQZ" id="2BGPXkEwczK" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2BGPXkEwczL" role="3clF47">
        <node concept="3cpWs8" id="2BGPXkEwdWv" role="3cqZAp">
          <node concept="3cpWsn" id="2BGPXkEwdWw" role="3cpWs9">
            <property role="TrG5h" value="firstApplicable" />
            <node concept="3uibUv" id="2BGPXkEwdWu" role="1tU5fm">
              <ref role="3uigEE" node="5A5jZrz4rws" resolve="ProjectStrategy" />
            </node>
            <node concept="1rXfSq" id="2BGPXkEwdWx" role="33vP2m">
              <ref role="37wK5l" node="2BGPXkEwdbv" resolve="getFirstApplicable" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2BGPXkEwe5J" role="3cqZAp">
          <node concept="3clFbS" id="2BGPXkEwe5L" role="3clFbx">
            <node concept="3cpWs6" id="2BGPXkEwebB" role="3cqZAp">
              <node concept="2OqwBi" id="2BGPXkEweo2" role="3cqZAk">
                <node concept="37vLTw" id="2BGPXkEwefm" role="2Oq$k0">
                  <ref role="3cqZAo" node="2BGPXkEwdWw" resolve="firstApplicable" />
                </node>
                <node concept="liA8E" id="2BGPXkEwexf" role="2OqNvi">
                  <ref role="37wK5l" node="5A5jZrz4rwV" resolve="create" />
                  <node concept="37vLTw" id="1RTSjGsu8tR" role="37wK5m">
                    <ref role="3cqZAo" node="1RTSjGsu8m7" resolve="env" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2BGPXkEweai" role="3clFbw">
            <node concept="10Nm6u" id="2BGPXkEweaS" role="3uHU7w" />
            <node concept="37vLTw" id="2BGPXkEwe9p" role="3uHU7B">
              <ref role="3cqZAo" node="2BGPXkEwdWw" resolve="firstApplicable" />
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="43Ra3NMzWJZ" role="3cqZAp">
          <node concept="2ShNRf" id="43Ra3NMzWKm" role="YScLw">
            <node concept="1pGfFk" id="43Ra3NM$otL" role="2ShVmc">
              <ref role="37wK5l" node="3oT7WQ8ZWGj" resolve="CompositeProjectStrategy.NoStrategyFoundException" />
              <node concept="Xl_RD" id="43Ra3NM$otS" role="37wK5m">
                <property role="Xl_RC" value="Could not create project with given strategies, nothing is applicable" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2BGPXkEweJQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="1RTSjGsu8m7" role="3clF46">
        <property role="TrG5h" value="env" />
        <node concept="3uibUv" id="1RTSjGsu8m6" role="1tU5fm">
          <ref role="3uigEE" node="HKKzfMjqRV" resolve="Environment" />
        </node>
        <node concept="2AHcQZ" id="1RTSjGsu8r1" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkEwcZ2" role="jymVt" />
    <node concept="3clFb_" id="2BGPXkEwcVx" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="isApplicable" />
      <node concept="3Tm1VV" id="2BGPXkEwcVz" role="1B3o_S" />
      <node concept="10P_77" id="2BGPXkEwcV$" role="3clF45" />
      <node concept="3clFbS" id="2BGPXkEwcV_" role="3clF47">
        <node concept="3cpWs6" id="2BGPXkEweEJ" role="3cqZAp">
          <node concept="3y3z36" id="2BGPXkEweEK" role="3cqZAk">
            <node concept="10Nm6u" id="2BGPXkEweEL" role="3uHU7w" />
            <node concept="1rXfSq" id="2BGPXkEweEM" role="3uHU7B">
              <ref role="37wK5l" node="2BGPXkEwdbv" resolve="getFirstApplicable" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2BGPXkEweG9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkEwd2e" role="jymVt" />
    <node concept="3clFb_" id="2BGPXkEwdbv" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getFirstApplicable" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2BGPXkEwdby" role="3clF47">
        <node concept="1DcWWT" id="2BGPXkEwdf6" role="3cqZAp">
          <node concept="3clFbS" id="2BGPXkEwdf7" role="2LFqv$">
            <node concept="3clFbJ" id="2BGPXkEwdf8" role="3cqZAp">
              <node concept="3clFbS" id="2BGPXkEwdf9" role="3clFbx">
                <node concept="3cpWs6" id="2BGPXkEwdfa" role="3cqZAp">
                  <node concept="37vLTw" id="2BGPXkEwdfc" role="3cqZAk">
                    <ref role="3cqZAo" node="2BGPXkEwdfh" resolve="strategy" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2BGPXkEwdfe" role="3clFbw">
                <node concept="37vLTw" id="2BGPXkEwdff" role="2Oq$k0">
                  <ref role="3cqZAo" node="2BGPXkEwdfh" resolve="strategy" />
                </node>
                <node concept="liA8E" id="2BGPXkEwdfg" role="2OqNvi">
                  <ref role="37wK5l" node="2BGPXkEv84x" resolve="isApplicable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2BGPXkEwdfh" role="1Duv9x">
            <property role="TrG5h" value="strategy" />
            <node concept="3uibUv" id="2BGPXkEwdfi" role="1tU5fm">
              <ref role="3uigEE" node="5A5jZrz4rws" resolve="ProjectStrategy" />
            </node>
          </node>
          <node concept="37vLTw" id="2BGPXkEwdfj" role="1DdaDG">
            <ref role="3cqZAo" node="2BGPXkEwcto" resolve="myStrategies" />
          </node>
        </node>
        <node concept="3cpWs6" id="2BGPXkEwdwT" role="3cqZAp">
          <node concept="10Nm6u" id="2BGPXkEwdBo" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm6S6" id="2BGPXkEwd7d" role="1B3o_S" />
      <node concept="3uibUv" id="2BGPXkEwdaA" role="3clF45">
        <ref role="3uigEE" node="5A5jZrz4rws" resolve="ProjectStrategy" />
      </node>
      <node concept="2AHcQZ" id="2BGPXkEwdFf" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="3oT7WQ8ZVcC" role="jymVt" />
    <node concept="312cEu" id="3oT7WQ8ZVk5" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="NoStrategyFoundException" />
      <node concept="3clFbW" id="3oT7WQ8ZWGj" role="jymVt">
        <node concept="3cqZAl" id="3oT7WQ8ZWGk" role="3clF45" />
        <node concept="3Tm1VV" id="3oT7WQ8ZWGl" role="1B3o_S" />
        <node concept="3clFbS" id="3oT7WQ8ZWGm" role="3clF47">
          <node concept="XkiVB" id="3oT7WQ8ZWGn" role="3cqZAp">
            <ref role="37wK5l" node="3oT7WQ8ZVnO" resolve="EnvironmentSetupException" />
            <node concept="37vLTw" id="3oT7WQ8ZWGo" role="37wK5m">
              <ref role="3cqZAo" node="3oT7WQ8ZWGp" resolve="message" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3oT7WQ8ZWGp" role="3clF46">
          <property role="TrG5h" value="message" />
          <node concept="17QB3L" id="3oT7WQ8ZWGq" role="1tU5fm" />
        </node>
      </node>
      <node concept="3Tm6S6" id="3oT7WQ8ZVhs" role="1B3o_S" />
      <node concept="3uibUv" id="3oT7WQ8ZVmN" role="1zkMxy">
        <ref role="3uigEE" node="3oT7WQ8ZQQP" resolve="EnvironmentSetupException" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5A5jZrz4jrP">
    <property role="3GE5qa" value="strategy" />
    <property role="TrG5h" value="ProjectModulesFiller" />
    <property role="1EXbeo" value="true" />
    <node concept="312cEg" id="5A5jZrz4k43" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myProject" />
      <node concept="3Tm6S6" id="5A5jZrz4k3A" role="1B3o_S" />
      <node concept="3uibUv" id="2BGPXkEwy61" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="312cEg" id="5A5jZrz4k5_" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myHandlesToLoad" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5A5jZrz4k53" role="1B3o_S" />
      <node concept="A3Dl8" id="5A5jZrz4k65" role="1tU5fm">
        <node concept="3uibUv" id="5A5jZrz4k66" role="A3Ik2">
          <ref role="3uigEE" to="32g5:~ModulesMiner$ModuleHandle" resolve="ModulesMiner.ModuleHandle" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5A5jZrz4k6g" role="jymVt" />
    <node concept="3clFbW" id="5A5jZrz4jwy" role="jymVt">
      <node concept="37vLTG" id="5A5jZrz4k2Y" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2BGPXkEwy4E" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="5A5jZrz4k9K" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5A5jZrz4jPF" role="3clF46">
        <property role="TrG5h" value="moduleHandles" />
        <node concept="A3Dl8" id="5A5jZrz4jPG" role="1tU5fm">
          <node concept="3uibUv" id="5A5jZrz4jPH" role="A3Ik2">
            <ref role="3uigEE" to="32g5:~ModulesMiner$ModuleHandle" resolve="ModulesMiner.ModuleHandle" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5A5jZrz4jwz" role="3clF45" />
      <node concept="3clFbS" id="5A5jZrz4jw_" role="3clF47">
        <node concept="3clFbF" id="5A5jZrz4k72" role="3cqZAp">
          <node concept="37vLTI" id="5A5jZrz4k7K" role="3clFbG">
            <node concept="37vLTw" id="5A5jZrz4k8x" role="37vLTx">
              <ref role="3cqZAo" node="5A5jZrz4k2Y" resolve="project" />
            </node>
            <node concept="37vLTw" id="5A5jZrz4k71" role="37vLTJ">
              <ref role="3cqZAo" node="5A5jZrz4k43" resolve="myProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5A5jZrz4kaO" role="3cqZAp">
          <node concept="37vLTI" id="5A5jZrz4kiH" role="3clFbG">
            <node concept="37vLTw" id="5A5jZrz4kk3" role="37vLTx">
              <ref role="3cqZAo" node="5A5jZrz4jPF" resolve="moduleHandles" />
            </node>
            <node concept="37vLTw" id="5A5jZrz4kaM" role="37vLTJ">
              <ref role="3cqZAo" node="5A5jZrz4k5_" resolve="myHandlesToLoad" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5A5jZrz4jwp" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5A5jZrz4jXx" role="jymVt" />
    <node concept="3clFb_" id="5A5jZrz4jY3" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="load" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5A5jZrz4jY6" role="3clF47">
        <node concept="3SKdUt" id="7R6Zz6KfhLK" role="3cqZAp">
          <node concept="1PaTwC" id="7R6Zz6KfhLL" role="1aUNEU">
            <node concept="3oM_SD" id="7R6Zz6KfhLN" role="1PaTwD">
              <property role="3oM_SC" value="have" />
            </node>
            <node concept="3oM_SD" id="7R6Zz6KfhYa" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="7R6Zz6KfhYd" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="7R6Zz6KfhYp" role="1PaTwD">
              <property role="3oM_SC" value="MRF" />
            </node>
            <node concept="3oM_SD" id="7R6Zz6KfhYA" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="7R6Zz6KfhYG" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="7R6Zz6KfhYV" role="1PaTwD">
              <property role="3oM_SC" value="factory" />
            </node>
            <node concept="3oM_SD" id="7R6Zz6KfhZ3" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="7R6Zz6KfhZk" role="1PaTwD">
              <property role="3oM_SC" value="now," />
            </node>
            <node concept="3oM_SD" id="7R6Zz6KfhZI" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="7R6Zz6Kfi09" role="1PaTwD">
              <property role="3oM_SC" value="long" />
            </node>
            <node concept="3oM_SD" id="7R6Zz6Kfi0_" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="7R6Zz6Kfi0M" role="1PaTwD">
              <property role="3oM_SC" value="Generator" />
            </node>
            <node concept="3oM_SD" id="7R6Zz6Kfi1o" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="7R6Zz6Kfi1B" role="1PaTwD">
              <property role="3oM_SC" value="needs" />
            </node>
            <node concept="3oM_SD" id="7R6Zz6Kfi1R" role="1PaTwD">
              <property role="3oM_SC" value="its" />
            </node>
            <node concept="3oM_SD" id="7R6Zz6Kfi2C" role="1PaTwD">
              <property role="3oM_SC" value="Language" />
            </node>
            <node concept="3oM_SD" id="7R6Zz6Kfi32" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="7R6Zz6Kfi3t" role="1PaTwD">
              <property role="3oM_SC" value="cons" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7vEL9Rt9CXX" role="3cqZAp">
          <node concept="3cpWsn" id="7vEL9Rt9CXY" role="3cpWs9">
            <property role="TrG5h" value="mf" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="7R6Zz6Kfhn1" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~ModuleInstanceFactory" resolve="ModuleInstanceFactory" />
            </node>
            <node concept="2ShNRf" id="7vEL9Rt9Ddj" role="33vP2m">
              <node concept="1pGfFk" id="7vEL9Rt9EMC" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~ModuleRepositoryFacade.&lt;init&gt;(jetbrains.mps.project.Project)" resolve="ModuleRepositoryFacade" />
                <node concept="37vLTw" id="7vEL9Rt9ENQ" role="37wK5m">
                  <ref role="3cqZAo" node="5A5jZrz4k43" resolve="myProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5A5jZrz7bXy" role="3cqZAp">
          <node concept="2OqwBi" id="5A5jZrz7bXz" role="3clFbG">
            <node concept="2OqwBi" id="5A5jZrz7bY7" role="2Oq$k0">
              <node concept="37vLTw" id="2BGPXkEwzrA" role="2Oq$k0">
                <ref role="3cqZAo" node="5A5jZrz4k43" resolve="myProject" />
              </node>
              <node concept="liA8E" id="5A5jZrz7bY8" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="5A5jZrz7bX_" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runWriteAction(java.lang.Runnable)" resolve="runWriteAction" />
              <node concept="2ShNRf" id="5A5jZrz7bXA" role="37wK5m">
                <node concept="YeOm9" id="5A5jZrz7bXB" role="2ShVmc">
                  <node concept="1Y3b0j" id="5A5jZrz7bXC" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <property role="1sVAO0" value="false" />
                    <property role="1EXbeo" value="false" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                    <node concept="3Tm1VV" id="5A5jZrz7bXD" role="1B3o_S" />
                    <node concept="3clFb_" id="5A5jZrz7bXE" role="jymVt">
                      <property role="TrG5h" value="run" />
                      <property role="DiZV1" value="false" />
                      <property role="od$2w" value="false" />
                      <node concept="3clFbS" id="5A5jZrz7bXF" role="3clF47">
                        <node concept="1DcWWT" id="5A5jZrz7bXG" role="3cqZAp">
                          <node concept="37vLTw" id="5A5jZrz7cXx" role="1DdaDG">
                            <ref role="3cqZAo" node="5A5jZrz4k5_" resolve="myHandlesToLoad" />
                          </node>
                          <node concept="3cpWsn" id="5A5jZrz7bXS" role="1Duv9x">
                            <property role="3TUv4t" value="false" />
                            <property role="TrG5h" value="moduleHandle" />
                            <node concept="3uibUv" id="5A5jZrz7bXU" role="1tU5fm">
                              <ref role="3uigEE" to="32g5:~ModulesMiner$ModuleHandle" resolve="ModulesMiner.ModuleHandle" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="5A5jZrz7bXI" role="2LFqv$">
                            <node concept="3cpWs8" id="7R6Zz6KfiS7" role="3cqZAp">
                              <node concept="3cpWsn" id="7R6Zz6KfiS8" role="3cpWs9">
                                <property role="TrG5h" value="md" />
                                <node concept="3uibUv" id="7R6Zz6KfiMh" role="1tU5fm">
                                  <ref role="3uigEE" to="w0gx:~ModuleDescriptor" resolve="ModuleDescriptor" />
                                </node>
                                <node concept="2OqwBi" id="7R6Zz6KfiS9" role="33vP2m">
                                  <node concept="37vLTw" id="7R6Zz6KfiSa" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5A5jZrz7bXS" resolve="moduleHandle" />
                                  </node>
                                  <node concept="liA8E" id="7R6Zz6KfiSb" role="2OqNvi">
                                    <ref role="37wK5l" to="32g5:~ModulesMiner$ModuleHandle.getDescriptor()" resolve="getDescriptor" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="7R6Zz6Kfj0z" role="3cqZAp">
                              <node concept="3clFbS" id="7R6Zz6Kfj0_" role="3clFbx">
                                <node concept="3SKdUt" id="7R6Zz6KfjBt" role="3cqZAp">
                                  <node concept="1PaTwC" id="7R6Zz6KfjBu" role="1aUNEU">
                                    <node concept="3oM_SD" id="7R6Zz6KfjCi" role="1PaTwD">
                                      <property role="3oM_SC" value="generally," />
                                    </node>
                                    <node concept="3oM_SD" id="7R6Zz6KfjC$" role="1PaTwD">
                                      <property role="3oM_SC" value="shall" />
                                    </node>
                                    <node concept="3oM_SD" id="7R6Zz6KfjCB" role="1PaTwD">
                                      <property role="3oM_SC" value="never" />
                                    </node>
                                    <node concept="3oM_SD" id="7R6Zz6KfjDV" role="1PaTwD">
                                      <property role="3oM_SC" value="happen" />
                                    </node>
                                    <node concept="3oM_SD" id="7R6Zz6KfjEg" role="1PaTwD">
                                      <property role="3oM_SC" value="as" />
                                    </node>
                                    <node concept="3oM_SD" id="7R6Zz6KfjEm" role="1PaTwD">
                                      <property role="3oM_SC" value="the" />
                                    </node>
                                    <node concept="3oM_SD" id="7R6Zz6KfjEt" role="1PaTwD">
                                      <property role="3oM_SC" value="only" />
                                    </node>
                                    <node concept="3oM_SD" id="7R6Zz6KfjE_" role="1PaTwD">
                                      <property role="3oM_SC" value="way" />
                                    </node>
                                    <node concept="3oM_SD" id="7R6Zz6KfjEI" role="1PaTwD">
                                      <property role="3oM_SC" value="to" />
                                    </node>
                                    <node concept="3oM_SD" id="7R6Zz6KfjES" role="1PaTwD">
                                      <property role="3oM_SC" value="get" />
                                    </node>
                                    <node concept="3oM_SD" id="7R6Zz6KfjFz" role="1PaTwD">
                                      <property role="3oM_SC" value="null" />
                                    </node>
                                    <node concept="3oM_SD" id="7R6Zz6KfjFZ" role="1PaTwD">
                                      <property role="3oM_SC" value="as" />
                                    </node>
                                    <node concept="3oM_SD" id="7R6Zz6KfjGs" role="1PaTwD">
                                      <property role="3oM_SC" value="MD" />
                                    </node>
                                    <node concept="3oM_SD" id="7R6Zz6KfjHa" role="1PaTwD">
                                      <property role="3oM_SC" value="inside" />
                                    </node>
                                    <node concept="3oM_SD" id="7R6Zz6KfjHD" role="1PaTwD">
                                      <property role="3oM_SC" value="ModuleHandle" />
                                    </node>
                                    <node concept="3oM_SD" id="7R6Zz6KfjIT" role="1PaTwD">
                                      <property role="3oM_SC" value="is" />
                                    </node>
                                    <node concept="3oM_SD" id="7R6Zz6KfjJa" role="1PaTwD">
                                      <property role="3oM_SC" value="to" />
                                    </node>
                                    <node concept="3oM_SD" id="7R6Zz6KfjJG" role="1PaTwD">
                                      <property role="3oM_SC" value="use" />
                                    </node>
                                    <node concept="3oM_SD" id="7R6Zz6KfjJZ" role="1PaTwD">
                                      <property role="3oM_SC" value="deprecated" />
                                    </node>
                                    <node concept="3oM_SD" id="7R6Zz6KfjLz" role="1PaTwD">
                                      <property role="3oM_SC" value="loadHandle(IFile)" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3SKdUt" id="7R6Zz6KfjNH" role="3cqZAp">
                                  <node concept="1PaTwC" id="7R6Zz6KfjNI" role="1aUNEU">
                                    <node concept="3oM_SD" id="7R6Zz6KfjNK" role="1PaTwD">
                                      <property role="3oM_SC" value="nevertheless," />
                                    </node>
                                    <node concept="3oM_SD" id="7R6Zz6KfjOt" role="1PaTwD">
                                      <property role="3oM_SC" value="account" />
                                    </node>
                                    <node concept="3oM_SD" id="7R6Zz6KfjPg" role="1PaTwD">
                                      <property role="3oM_SC" value="for" />
                                    </node>
                                    <node concept="3oM_SD" id="7R6Zz6KfjP$" role="1PaTwD">
                                      <property role="3oM_SC" value="Nullable" />
                                    </node>
                                    <node concept="3oM_SD" id="7R6Zz6KfjQp" role="1PaTwD">
                                      <property role="3oM_SC" value="until" />
                                    </node>
                                    <node concept="3oM_SD" id="7R6Zz6KfjQZ" role="1PaTwD">
                                      <property role="3oM_SC" value="contract" />
                                    </node>
                                    <node concept="3oM_SD" id="7R6Zz6KfjRQ" role="1PaTwD">
                                      <property role="3oM_SC" value="changes" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="RRSsy" id="7R6Zz6KfjWi" role="3cqZAp">
                                  <property role="RRSoG" value="gZ5fh_4/error" />
                                  <node concept="3cpWs3" id="7R6Zz6KfkfW" role="RRSoy">
                                    <node concept="2OqwBi" id="7R6Zz6KfkFy" role="3uHU7w">
                                      <node concept="37vLTw" id="7R6Zz6Kfk$p" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5A5jZrz7bXS" resolve="moduleHandle" />
                                      </node>
                                      <node concept="liA8E" id="7R6Zz6KfkM8" role="2OqNvi">
                                        <ref role="37wK5l" to="32g5:~ModulesMiner$ModuleHandle.getFile()" resolve="getFile" />
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="7R6Zz6KfjWk" role="3uHU7B">
                                      <property role="Xl_RC" value="No module in file" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3N13vt" id="7R6Zz6KfjTA" role="3cqZAp" />
                              </node>
                              <node concept="3clFbC" id="7R6Zz6Kfjsh" role="3clFbw">
                                <node concept="10Nm6u" id="7R6Zz6KfjAo" role="3uHU7w" />
                                <node concept="37vLTw" id="7R6Zz6Kfj4p" role="3uHU7B">
                                  <ref role="3cqZAo" node="7R6Zz6KfiS8" resolve="md" />
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="5A5jZrz7bXK" role="3cqZAp">
                              <node concept="3cpWsn" id="5A5jZrz7bXJ" role="3cpWs9">
                                <property role="3TUv4t" value="false" />
                                <property role="TrG5h" value="module" />
                                <node concept="2OqwBi" id="7vEL9Rt9F30" role="33vP2m">
                                  <node concept="37vLTw" id="7vEL9Rt9ESq" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7vEL9Rt9CXY" resolve="mf" />
                                  </node>
                                  <node concept="liA8E" id="7vEL9Rt9Fko" role="2OqNvi">
                                    <ref role="37wK5l" to="w1kc:~ModuleInstanceFactory.instantiate(jetbrains.mps.project.structure.modules.ModuleDescriptor,jetbrains.mps.vfs.IFile)" resolve="instantiate" />
                                    <node concept="37vLTw" id="7R6Zz6KfiSd" role="37wK5m">
                                      <ref role="3cqZAo" node="7R6Zz6KfiS8" resolve="md" />
                                    </node>
                                    <node concept="2OqwBi" id="7R6Zz6Kfiyf" role="37wK5m">
                                      <node concept="37vLTw" id="7R6Zz6KfioE" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5A5jZrz7bXS" resolve="moduleHandle" />
                                      </node>
                                      <node concept="liA8E" id="7R6Zz6KfiEC" role="2OqNvi">
                                        <ref role="37wK5l" to="32g5:~ModulesMiner$ModuleHandle.getFile()" resolve="getFile" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3uibUv" id="5A5jZrz7bXL" role="1tU5fm">
                                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                                </node>
                              </node>
                            </node>
                            <node concept="3SKdUt" id="wIkNewrVzQ" role="3cqZAp">
                              <node concept="1PaTwC" id="ATZLwXo9kf" role="1aUNEU">
                                <node concept="3oM_SD" id="ATZLwXo9kg" role="1PaTwD">
                                  <property role="3oM_SC" value="With" />
                                </node>
                                <node concept="3oM_SD" id="ATZLwXo9kh" role="1PaTwD">
                                  <property role="3oM_SC" value="MM" />
                                </node>
                                <node concept="3oM_SD" id="ATZLwXo9ki" role="1PaTwD">
                                  <property role="3oM_SC" value="delivering" />
                                </node>
                                <node concept="3oM_SD" id="ATZLwXo9kj" role="1PaTwD">
                                  <property role="3oM_SC" value="GeneratorDescriptors" />
                                </node>
                                <node concept="3oM_SD" id="ATZLwXo9kk" role="1PaTwD">
                                  <property role="3oM_SC" value="and" />
                                </node>
                                <node concept="3oM_SD" id="ATZLwXo9kl" role="1PaTwD">
                                  <property role="3oM_SC" value="MRF" />
                                </node>
                                <node concept="3oM_SD" id="ATZLwXo9km" role="1PaTwD">
                                  <property role="3oM_SC" value="capable" />
                                </node>
                                <node concept="3oM_SD" id="ATZLwXo9kn" role="1PaTwD">
                                  <property role="3oM_SC" value="of" />
                                </node>
                                <node concept="3oM_SD" id="ATZLwXo9ko" role="1PaTwD">
                                  <property role="3oM_SC" value="instantiating" />
                                </node>
                                <node concept="3oM_SD" id="ATZLwXo9kp" role="1PaTwD">
                                  <property role="3oM_SC" value="them," />
                                </node>
                                <node concept="3oM_SD" id="ATZLwXo9kq" role="1PaTwD">
                                  <property role="3oM_SC" value="we" />
                                </node>
                                <node concept="3oM_SD" id="ATZLwXo9kr" role="1PaTwD">
                                  <property role="3oM_SC" value="can" />
                                </node>
                                <node concept="3oM_SD" id="ATZLwXo9ks" role="1PaTwD">
                                  <property role="3oM_SC" value="face" />
                                </node>
                                <node concept="3oM_SD" id="ATZLwXo9kt" role="1PaTwD">
                                  <property role="3oM_SC" value="Generator" />
                                </node>
                                <node concept="3oM_SD" id="5vGsJRpbRn6" role="1PaTwD">
                                  <property role="3oM_SC" value="modules" />
                                </node>
                                <node concept="3oM_SD" id="ATZLwXo9ku" role="1PaTwD">
                                  <property role="3oM_SC" value="here," />
                                </node>
                              </node>
                            </node>
                            <node concept="3SKdUt" id="wIkNewrVwj" role="3cqZAp">
                              <node concept="1PaTwC" id="ATZLwXo9kv" role="1aUNEU">
                                <node concept="3oM_SD" id="5vGsJRpbRtM" role="1PaTwD">
                                  <property role="3oM_SC" value="both" />
                                </node>
                                <node concept="3oM_SD" id="5vGsJRpbRu8" role="1PaTwD">
                                  <property role="3oM_SC" value="standalone" />
                                </node>
                                <node concept="3oM_SD" id="5vGsJRpbRuJ" role="1PaTwD">
                                  <property role="3oM_SC" value="and" />
                                </node>
                                <node concept="3oM_SD" id="5vGsJRpbRv7" role="1PaTwD">
                                  <property role="3oM_SC" value="those" />
                                </node>
                                <node concept="3oM_SD" id="5vGsJRpbRvw" role="1PaTwD">
                                  <property role="3oM_SC" value="owned" />
                                </node>
                                <node concept="3oM_SD" id="5vGsJRpbRwa" role="1PaTwD">
                                  <property role="3oM_SC" value="by" />
                                </node>
                                <node concept="3oM_SD" id="5vGsJRpbRwP" role="1PaTwD">
                                  <property role="3oM_SC" value="a" />
                                </node>
                                <node concept="3oM_SD" id="5vGsJRpbRye" role="1PaTwD">
                                  <property role="3oM_SC" value="language." />
                                </node>
                                <node concept="3oM_SD" id="5vGsJRpbR$S" role="1PaTwD">
                                  <property role="3oM_SC" value="Project" />
                                </node>
                                <node concept="3oM_SD" id="ATZLwXo9k_" role="1PaTwD">
                                  <property role="3oM_SC" value="has" />
                                </node>
                                <node concept="3oM_SD" id="5vGsJRpbR_y" role="1PaTwD">
                                  <property role="3oM_SC" value="to" />
                                </node>
                                <node concept="3oM_SD" id="5vGsJRpbRA5" role="1PaTwD">
                                  <property role="3oM_SC" value="deal" />
                                </node>
                                <node concept="3oM_SD" id="5vGsJRpbRAx" role="1PaTwD">
                                  <property role="3oM_SC" value="with" />
                                </node>
                                <node concept="3oM_SD" id="5vGsJRpbRHn" role="1PaTwD">
                                  <property role="3oM_SC" value="that." />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="5A5jZrz7bXP" role="3cqZAp">
                              <node concept="2OqwBi" id="5A5jZrz7bYq" role="3clFbG">
                                <node concept="37vLTw" id="2BGPXkEwzzC" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5A5jZrz4k43" resolve="myProject" />
                                </node>
                                <node concept="liA8E" id="5A5jZrz7bYr" role="2OqNvi">
                                  <ref role="37wK5l" to="z1c3:~IProject.addModule(org.jetbrains.mps.openapi.module.SModule)" resolve="addModule" />
                                  <node concept="37vLTw" id="5A5jZrz7bYx" role="37wK5m">
                                    <ref role="3cqZAo" node="5A5jZrz7bXJ" resolve="module" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="5A5jZrz7bXX" role="1B3o_S" />
                      <node concept="3cqZAl" id="5A5jZrz7bXY" role="3clF45" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5A5jZrz7bXZ" role="3cqZAp">
          <node concept="37vLTw" id="2BGPXkEwz$D" role="3cqZAk">
            <ref role="3cqZAo" node="5A5jZrz4k43" resolve="myProject" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5A5jZrz4jXO" role="1B3o_S" />
      <node concept="3uibUv" id="5A5jZrz4vTC" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5A5jZrz4jrQ" role="1B3o_S" />
    <node concept="3UR2Jj" id="5A5jZrz4js2" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHs_OB" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_OC" role="1PaTwD">
          <property role="3oM_SC" value="Allows" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_OD" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_OE" role="1PaTwD">
          <property role="3oM_SC" value="fill" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_OF" role="1PaTwD">
          <property role="3oM_SC" value="an" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_OG" role="1PaTwD">
          <property role="3oM_SC" value="empty" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_OH" role="1PaTwD">
          <property role="3oM_SC" value="project" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_OI" role="1PaTwD">
          <property role="3oM_SC" value="with" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_OJ" role="1PaTwD">
          <property role="3oM_SC" value="given" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_OK" role="1PaTwD">
          <property role="3oM_SC" value="modules" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_OL" role="1PaTwD">
          <property role="3oM_SC" value="at" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_OM" role="1PaTwD">
          <property role="3oM_SC" value="runtime" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3HP615" id="7KC1aYnI6jD">
    <property role="TrG5h" value="EnvironmentAware" />
    <node concept="3clFb_" id="7KC1aYnI6li" role="jymVt">
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="setEnvironment" />
      <node concept="3clFbS" id="7KC1aYnI6ll" role="3clF47" />
      <node concept="3Tm1VV" id="7KC1aYnI6lm" role="1B3o_S" />
      <node concept="3cqZAl" id="7KC1aYnI6l9" role="3clF45" />
      <node concept="37vLTG" id="7KC1aYnI6lK" role="3clF46">
        <property role="TrG5h" value="env" />
        <node concept="3uibUv" id="7KC1aYnI6lJ" role="1tU5fm">
          <ref role="3uigEE" node="HKKzfMjqRV" resolve="Environment" />
        </node>
        <node concept="2AHcQZ" id="7KC1aYnI6mE" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7KC1aYnI6jE" role="1B3o_S" />
    <node concept="3UR2Jj" id="7KC1aYnI6nm" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHs_ON" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_OO" role="1PaTwD">
          <property role="3oM_SC" value="Indication" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_OP" role="1PaTwD">
          <property role="3oM_SC" value="that" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_OQ" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_OR" role="1PaTwD">
          <property role="3oM_SC" value="class" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_OS" role="1PaTwD">
          <property role="3oM_SC" value="implementing" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_OT" role="1PaTwD">
          <property role="3oM_SC" value="this" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_OU" role="1PaTwD">
          <property role="3oM_SC" value="interface" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_OV" role="1PaTwD">
          <property role="3oM_SC" value="needs" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_OW" role="1PaTwD">
          <property role="3oM_SC" value="an" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_OX" role="1PaTwD">
          <property role="3oM_SC" value="Environment" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_OY" role="1PaTwD">
          <property role="3oM_SC" value="dependency" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_OZ" role="1PaTwD">
          <property role="3oM_SC" value="injected." />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_P0" role="1PaTwD">
          <property role="3oM_SC" value="Implementors" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_P1" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_P2" role="1PaTwD">
          <property role="3oM_SC" value="must" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_P3" role="1PaTwD">
          <property role="3oM_SC" value="override" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_P4" role="1PaTwD">
          <property role="3oM_SC" value="method" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHs_P5" role="1PaTwD">
          <node concept="1VuXuv" id="1E1X3WHs_P6" role="1Vtduc">
            <node concept="VXe0Z" id="6dghH8IXO3W" role="1VuXuu">
              <ref role="VXe0S" node="7KC1aYnI6li" resolve="setEnvironment" />
            </node>
            <node concept="1PaTwC" id="1E1X3WHs_P9" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHs_Pa" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Pb" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Pc" role="1PaTwD">
          <property role="3oM_SC" value="store" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Pd" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Pe" role="1PaTwD">
          <property role="3oM_SC" value="passed" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Pf" role="1PaTwD">
          <property role="3oM_SC" value="value." />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1_D5Bk1O3_5">
    <property role="TrG5h" value="AbstractEnvironment" />
    <property role="1sVAO0" value="true" />
    <node concept="312cEg" id="1_D5Bk1O3Ea" role="jymVt">
      <property role="TrG5h" value="myPlatform" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1_D5Bk1O3Eb" role="1B3o_S" />
      <node concept="3uibUv" id="1_D5Bk1O3Ed" role="1tU5fm">
        <ref role="3uigEE" to="4o98:~Platform" resolve="Platform" />
      </node>
    </node>
    <node concept="2tJIrI" id="1_D5Bk1O3BO" role="jymVt" />
    <node concept="3clFbW" id="1_D5Bk1O3Cj" role="jymVt">
      <node concept="3cqZAl" id="1_D5Bk1O3Cl" role="3clF45" />
      <node concept="3Tmbuc" id="1_D5Bk1O3CJ" role="1B3o_S" />
      <node concept="3clFbS" id="1_D5Bk1O3Cn" role="3clF47">
        <node concept="3clFbF" id="1_D5Bk1O3Ee" role="3cqZAp">
          <node concept="37vLTI" id="1_D5Bk1O3Eg" role="3clFbG">
            <node concept="37vLTw" id="1_D5Bk1O3Ej" role="37vLTJ">
              <ref role="3cqZAo" node="1_D5Bk1O3Ea" resolve="myPlatform" />
            </node>
            <node concept="37vLTw" id="1_D5Bk1O3Ek" role="37vLTx">
              <ref role="3cqZAo" node="1_D5Bk1O3D5" resolve="mpsPlatform" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1_D5Bk1O3D5" role="3clF46">
        <property role="TrG5h" value="mpsPlatform" />
        <node concept="3uibUv" id="1_D5Bk1O3D4" role="1tU5fm">
          <ref role="3uigEE" to="4o98:~Platform" resolve="Platform" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_D5Bk1O5oE" role="jymVt" />
    <node concept="3clFb_" id="1_D5Bk1O3Sp" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPlatform" />
      <node concept="3uibUv" id="1_D5Bk1O3Sq" role="3clF45">
        <ref role="3uigEE" to="4o98:~Platform" resolve="Platform" />
      </node>
      <node concept="3Tm1VV" id="1_D5Bk1O3Sr" role="1B3o_S" />
      <node concept="3clFbS" id="1_D5Bk1O3Sv" role="3clF47">
        <node concept="3clFbF" id="1_D5Bk1O3Sy" role="3cqZAp">
          <node concept="37vLTw" id="1_D5Bk1O5CV" role="3clFbG">
            <ref role="3cqZAo" node="1_D5Bk1O3Ea" resolve="myPlatform" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1_D5Bk1O3Sw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1_D5Bk1O3Pb" role="jymVt" />
    <node concept="3clFb_" id="1_D5Bk1O3Re" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createEmptyProject" />
      <node concept="3uibUv" id="1_D5Bk1O3Rf" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3Tm1VV" id="1_D5Bk1O3Rg" role="1B3o_S" />
      <node concept="2AHcQZ" id="1_D5Bk1O3Ri" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="1_D5Bk1O3Rn" role="3clF47">
        <node concept="YS8fn" id="1_D5Bk1O65w" role="3cqZAp">
          <node concept="2ShNRf" id="1_D5Bk1O661" role="YScLw">
            <node concept="1pGfFk" id="1_D5Bk1O7k5" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1_D5Bk1O3Ro" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1_D5Bk1O7F2" role="jymVt" />
    <node concept="3clFb_" id="1_D5Bk1O3Rr" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createProject" />
      <node concept="3uibUv" id="1_D5Bk1O3Rs" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3Tm1VV" id="1_D5Bk1O3Rt" role="1B3o_S" />
      <node concept="2AHcQZ" id="1_D5Bk1O3Rv" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="1_D5Bk1O3Rw" role="3clF46">
        <property role="TrG5h" value="strategy" />
        <node concept="3uibUv" id="1_D5Bk1O3Rx" role="1tU5fm">
          <ref role="3uigEE" node="5A5jZrz4rws" resolve="ProjectStrategy" />
        </node>
        <node concept="2AHcQZ" id="1_D5Bk1O3Ry" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="1_D5Bk1O3RB" role="3clF47">
        <node concept="YS8fn" id="1_D5Bk1O7mV" role="3cqZAp">
          <node concept="2ShNRf" id="1_D5Bk1O7mW" role="YScLw">
            <node concept="1pGfFk" id="1_D5Bk1O7mX" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1_D5Bk1O3RC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1_D5Bk1O7qn" role="jymVt" />
    <node concept="3clFb_" id="1_D5Bk1O3RF" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="openProject" />
      <node concept="37vLTG" id="1_D5Bk1O3RG" role="3clF46">
        <property role="TrG5h" value="projectFile" />
        <node concept="3uibUv" id="1_D5Bk1O3RH" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
        <node concept="2AHcQZ" id="1_D5Bk1O3RI" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3uibUv" id="1_D5Bk1O3RJ" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3Tm1VV" id="1_D5Bk1O3RK" role="1B3o_S" />
      <node concept="2AHcQZ" id="1_D5Bk1O3RM" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="1_D5Bk1O3RN" role="3clF47">
        <node concept="YS8fn" id="1_D5Bk1O7VI" role="3cqZAp">
          <node concept="2ShNRf" id="1_D5Bk1O7VJ" role="YScLw">
            <node concept="1pGfFk" id="1_D5Bk1O7VK" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1_D5Bk1O3RO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1_D5Bk1OAKT" role="jymVt" />
    <node concept="3clFb_" id="1_D5Bk1O3RR" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="closeProject" />
      <node concept="3Tm1VV" id="1_D5Bk1O3RT" role="1B3o_S" />
      <node concept="3cqZAl" id="1_D5Bk1O3RU" role="3clF45" />
      <node concept="37vLTG" id="1_D5Bk1O3RV" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1_D5Bk1O3RW" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="1_D5Bk1O3RX" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="1_D5Bk1O3S5" role="3clF47">
        <node concept="YS8fn" id="1_D5Bk1OC86" role="3cqZAp">
          <node concept="2ShNRf" id="1_D5Bk1OC87" role="YScLw">
            <node concept="1pGfFk" id="1_D5Bk1OC88" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1_D5Bk1O3S6" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1_D5Bk1OB2$" role="jymVt" />
    <node concept="3clFb_" id="1_D5Bk1O3S7" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="1_D5Bk1O3S8" role="3clF45" />
      <node concept="3Tm1VV" id="1_D5Bk1O3S9" role="1B3o_S" />
      <node concept="3clFbS" id="1_D5Bk1O3Se" role="3clF47">
        <node concept="3SKdUt" id="1_D5Bk1OBjV" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9kP" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9kQ" role="1PaTwD">
              <property role="3oM_SC" value="no-op," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9kR" role="1PaTwD">
              <property role="3oM_SC" value="nothing" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9kS" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9kT" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9kU" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9kV" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9kW" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9kX" role="1PaTwD">
              <property role="3oM_SC" value="didn't" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9kY" role="1PaTwD">
              <property role="3oM_SC" value="allocate" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9kZ" role="1PaTwD">
              <property role="3oM_SC" value="anything" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1_D5Bk1O3Sf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1_D5Bk1OB_4" role="jymVt" />
    <node concept="3clFb_" id="1_D5Bk1O3Sg" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="flushAllEvents" />
      <node concept="3Tm1VV" id="1_D5Bk1O3Si" role="1B3o_S" />
      <node concept="3cqZAl" id="1_D5Bk1O3Sj" role="3clF45" />
      <node concept="3clFbS" id="1_D5Bk1O3Sn" role="3clF47">
        <node concept="3SKdUt" id="1_D5Bk1O4s3" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9l0" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9l1" role="1PaTwD">
              <property role="3oM_SC" value="no-op," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9l2" role="1PaTwD">
              <property role="3oM_SC" value="(a)" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9l3" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9l4" role="1PaTwD">
              <property role="3oM_SC" value="idea" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9l5" role="1PaTwD">
              <property role="3oM_SC" value="what" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9l6" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9l7" role="1PaTwD">
              <property role="3oM_SC" value="method" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9l8" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9l9" role="1PaTwD">
              <property role="3oM_SC" value="supposed" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9la" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9lb" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9lc" role="1PaTwD">
              <property role="3oM_SC" value="anyway" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ld" role="1PaTwD">
              <property role="3oM_SC" value="(b)" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9le" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9lf" role="1PaTwD">
              <property role="3oM_SC" value="environment" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9lg" role="1PaTwD">
              <property role="3oM_SC" value="can't" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9lh" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9li" role="1PaTwD">
              <property role="3oM_SC" value="anything" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9lj" role="1PaTwD">
              <property role="3oM_SC" value="about" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9lk" role="1PaTwD">
              <property role="3oM_SC" value="whatever" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ll" role="1PaTwD">
              <property role="3oM_SC" value="events." />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1_D5Bk1O3So" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1_D5Bk1O3_6" role="1B3o_S" />
    <node concept="3uibUv" id="1_D5Bk1O3_P" role="EKbjA">
      <ref role="3uigEE" node="HKKzfMjqRV" resolve="Environment" />
    </node>
    <node concept="3UR2Jj" id="1_D5Bk1O7YV" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHs_Pg" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_Ph" role="1PaTwD">
          <property role="3oM_SC" value="Base" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Pi" role="1PaTwD">
          <property role="3oM_SC" value="implementation" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Pj" role="1PaTwD">
          <property role="3oM_SC" value="class" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Pk" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHs_Pl" role="1PaTwD">
          <node concept="1VuXuv" id="1E1X3WHs_Pm" role="1Vtduc">
            <node concept="VXe08" id="1_D5Bk1OfSB" role="1VuXuu">
              <ref role="VXe09" node="HKKzfMjqRV" resolve="Environment" />
            </node>
            <node concept="1PaTwC" id="1E1X3WHs_Pp" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHs_Pq" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Pr" role="1PaTwD">
          <property role="3oM_SC" value="without" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Ps" role="1PaTwD">
          <property role="3oM_SC" value="project" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Pt" role="1PaTwD">
          <property role="3oM_SC" value="handling" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Pu" role="1PaTwD">
          <property role="3oM_SC" value="or" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Pv" role="1PaTwD">
          <property role="3oM_SC" value="reference" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Pw" role="1PaTwD">
          <property role="3oM_SC" value="count," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Px" role="1PaTwD">
          <property role="3oM_SC" value="with" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Py" role="1PaTwD">
          <property role="3oM_SC" value="mostly" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Pz" role="1PaTwD">
          <property role="3oM_SC" value="no-op" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_P$" role="1PaTwD">
          <property role="3oM_SC" value="or" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHs_P_" role="1PaTwD">
          <node concept="1VuXuv" id="1E1X3WHs_PA" role="1Vtduc">
            <node concept="VXe08" id="1_D5Bk1OAtj" role="1VuXuu">
              <ref role="VXe09" to="wyt6:~UnsupportedOperationException" resolve="UnsupportedOperationException" />
            </node>
            <node concept="1PaTwC" id="1E1X3WHs_PD" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHs_PE" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_PF" role="1PaTwD">
          <property role="3oM_SC" value="implementations." />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3oT7WQ8ZQQP">
    <property role="TrG5h" value="EnvironmentSetupException" />
    <property role="1sVAO0" value="true" />
    <node concept="3clFbW" id="3oT7WQ8ZVnb" role="jymVt">
      <node concept="3cqZAl" id="3oT7WQ8ZVne" role="3clF45" />
      <node concept="3Tm1VV" id="3oT7WQ8ZVnf" role="1B3o_S" />
      <node concept="3clFbS" id="3oT7WQ8ZVng" role="3clF47">
        <node concept="XkiVB" id="3oT7WQ8ZWEU" role="3cqZAp">
          <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="RuntimeException" />
          <node concept="37vLTw" id="3oT7WQ8ZWFa" role="37wK5m">
            <ref role="3cqZAo" node="3oT7WQ8ZVnu" resolve="message" />
          </node>
          <node concept="37vLTw" id="3oT7WQ8ZWGd" role="37wK5m">
            <ref role="3cqZAo" node="3oT7WQ8ZVn$" resolve="cause" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3oT7WQ8ZVnu" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="3oT7WQ8ZVnt" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3oT7WQ8ZVn$" role="3clF46">
        <property role="TrG5h" value="cause" />
        <node concept="3uibUv" id="3oT7WQ8ZVnK" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3oT7WQ8ZVos" role="jymVt" />
    <node concept="3clFbW" id="3oT7WQ8ZVnO" role="jymVt">
      <node concept="3cqZAl" id="3oT7WQ8ZVnP" role="3clF45" />
      <node concept="3Tm1VV" id="3oT7WQ8ZVnQ" role="1B3o_S" />
      <node concept="3clFbS" id="3oT7WQ8ZVnR" role="3clF47">
        <node concept="XkiVB" id="3oT7WQ8ZWE9" role="3cqZAp">
          <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
          <node concept="37vLTw" id="3oT7WQ8ZWEp" role="37wK5m">
            <ref role="3cqZAo" node="3oT7WQ8ZVnS" resolve="message" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3oT7WQ8ZVnS" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="3oT7WQ8ZVnT" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3oT7WQ8ZQQQ" role="1B3o_S" />
    <node concept="3uibUv" id="3oT7WQ8ZVcu" role="1zkMxy">
      <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
    </node>
  </node>
  <node concept="312cEu" id="1ROuiHUyBT">
    <property role="TrG5h" value="PlatformPlugins" />
    <node concept="Wx3nA" id="7lKcB_1v4$0" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="PLUGIN_DESCRIPTOR_LOCATION" />
      <node concept="3Tm1VV" id="7lKcB_1v62b" role="1B3o_S" />
      <node concept="17QB3L" id="7lKcB_1v4zY" role="1tU5fm" />
      <node concept="Xl_RD" id="7lKcB_1v4zZ" role="33vP2m">
        <property role="Xl_RC" value="META-INF/plugin.xml" />
      </node>
    </node>
    <node concept="2tJIrI" id="7lKcB_1v6uG" role="jymVt" />
    <node concept="312cEg" id="1ROuiHVVtv" role="jymVt">
      <property role="TrG5h" value="myPlugins" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1ROuiHVV3v" role="1B3o_S" />
      <node concept="3uibUv" id="1ROuiHVVqn" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="17QB3L" id="1ROuiHVVrA" role="11_B2D" />
        <node concept="3uibUv" id="1ROuiHVVs9" role="11_B2D">
          <ref role="3uigEE" node="1ROuiHVPT6" resolve="PlatformPlugins.Descriptor" />
        </node>
      </node>
      <node concept="2ShNRf" id="1ROuiHVVPO" role="33vP2m">
        <node concept="1pGfFk" id="1ROuiHVWml" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="17QB3L" id="1ROuiHVWUY" role="1pMfVU" />
          <node concept="3uibUv" id="1ROuiHVWLx" role="1pMfVU">
            <ref role="3uigEE" node="1ROuiHVPT6" resolve="PlatformPlugins.Descriptor" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1ROuiHXXNJ" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myLoaders" />
      <node concept="3Tm6S6" id="1ROuiHXXNK" role="1B3o_S" />
      <node concept="3uibUv" id="1ROuiHXXNL" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="17QB3L" id="1ROuiHXXNM" role="11_B2D" />
        <node concept="3uibUv" id="1ROuiHXZby" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
        </node>
      </node>
      <node concept="2ShNRf" id="1ROuiHXXNO" role="33vP2m">
        <node concept="1pGfFk" id="1ROuiHXXNP" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="17QB3L" id="1ROuiHXXNQ" role="1pMfVU" />
          <node concept="3uibUv" id="1ROuiHXZKi" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2wx9CzvxwqB" role="jymVt">
      <property role="TrG5h" value="myPluginIdPattern" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2wx9Czvxyh_" role="1tU5fm">
        <ref role="3uigEE" to="ni5j:~Pattern" resolve="Pattern" />
      </node>
      <node concept="2YIFZM" id="2wx9Czvxyjz" role="33vP2m">
        <ref role="1Pybhc" to="ni5j:~Pattern" resolve="Pattern" />
        <ref role="37wK5l" to="ni5j:~Pattern.compile(java.lang.String)" resolve="compile" />
        <node concept="Xl_RD" id="2wx9Czvxyj$" role="37wK5m">
          <property role="Xl_RC" value="&lt;id&gt;([a-zA-Z_0-9.]+)&lt;/id&gt;" />
        </node>
      </node>
      <node concept="3Tm6S6" id="2wx9CzvxwqG" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3QoXtOXSS55" role="jymVt">
      <property role="TrG5h" value="myLangLocationPattern" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3QoXtOXSS56" role="1tU5fm">
        <ref role="3uigEE" to="ni5j:~Pattern" resolve="Pattern" />
      </node>
      <node concept="2YIFZM" id="3QoXtOXSS57" role="33vP2m">
        <ref role="1Pybhc" to="ni5j:~Pattern" resolve="Pattern" />
        <ref role="37wK5l" to="ni5j:~Pattern.compile(java.lang.String)" resolve="compile" />
        <node concept="Xl_RD" id="3QoXtOXTcEn" role="37wK5m">
          <property role="Xl_RC" value="&lt;mps\\.LanguageLibrary\\s+dir=\&quot;([^\&quot;]*)\&quot;" />
        </node>
      </node>
      <node concept="3Tm6S6" id="3QoXtOXSS59" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="4E8FPsxqUZ$" role="jymVt">
      <property role="TrG5h" value="myDepensPattern" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4E8FPsxqPgf" role="1B3o_S" />
      <node concept="3uibUv" id="4E8FPsxqUYM" role="1tU5fm">
        <ref role="3uigEE" to="ni5j:~Pattern" resolve="Pattern" />
      </node>
      <node concept="2YIFZM" id="4E8FPsxqZzW" role="33vP2m">
        <ref role="37wK5l" to="ni5j:~Pattern.compile(java.lang.String)" resolve="compile" />
        <ref role="1Pybhc" to="ni5j:~Pattern" resolve="Pattern" />
        <node concept="Xl_RD" id="4E8FPsxqZC7" role="37wK5m">
          <property role="Xl_RC" value="&lt;depends(?:\\s+[^&gt;]*)?&gt;([a-zA-Z_0-9.]+)&lt;/depends&gt;" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2wx9CzvxuFj" role="jymVt" />
    <node concept="1X3_iC" id="4E8FPsxuijY" role="lGtFl">
      <property role="3V$3am" value="member" />
      <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1107461130800/5375687026011219971" />
      <node concept="2YIFZL" id="4E8FPsxuc3J" role="8Wnug">
        <property role="TrG5h" value="main" />
        <node concept="37vLTG" id="4E8FPsxuc3K" role="3clF46">
          <property role="TrG5h" value="args" />
          <node concept="10Q1$e" id="4E8FPsxuc3M" role="1tU5fm">
            <node concept="3uibUv" id="4E8FPsxuc3L" role="10Q1$1">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="4E8FPsxuc3N" role="3clF47">
          <node concept="3cpWs8" id="4E8FPsxuc3P" role="3cqZAp">
            <node concept="3cpWsn" id="4E8FPsxuc3O" role="3cpWs9">
              <property role="TrG5h" value="charSequence" />
              <node concept="3uibUv" id="4E8FPsxuc3Q" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~CharSequence" resolve="CharSequence" />
              </node>
              <node concept="1rXfSq" id="4E8FPsxuc3R" role="33vP2m">
                <ref role="37wK5l" node="2wx9CzvxaRp" resolve="readFile" />
                <node concept="2ShNRf" id="4E8FPsxufIt" role="37wK5m">
                  <node concept="1pGfFk" id="4E8FPsxufUp" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                    <node concept="Xl_RD" id="4E8FPsxufUq" role="37wK5m">
                      <property role="Xl_RC" value="META-INF/plugin.xml" />
                    </node>
                  </node>
                </node>
                <node concept="3cmrfG" id="4E8FPsxuc3U" role="37wK5m">
                  <property role="3cmrfH" value="8192" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4E8FPsxuc3W" role="3cqZAp">
            <node concept="3cpWsn" id="4E8FPsxuc3V" role="3cpWs9">
              <property role="TrG5h" value="strings" />
              <node concept="3uibUv" id="4E8FPsxuc3X" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3uibUv" id="4E8FPsxuc3Y" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
              <node concept="2OqwBi" id="4E8FPsxugdL" role="33vP2m">
                <node concept="2ShNRf" id="4E8FPsxufUv" role="2Oq$k0">
                  <node concept="1pGfFk" id="4E8FPsxufUx" role="2ShVmc">
                    <ref role="37wK5l" node="4E8FPsxuc47" resolve="PlatformPlugins" />
                  </node>
                </node>
                <node concept="liA8E" id="4E8FPsxugdM" role="2OqNvi">
                  <ref role="37wK5l" node="4E8FPsxrd17" resolve="detectDependencies" />
                  <node concept="37vLTw" id="4E8FPsxugdN" role="37wK5m">
                    <ref role="3cqZAo" node="4E8FPsxuc3O" resolve="charSequence" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4E8FPsxuc42" role="3cqZAp">
            <node concept="2OqwBi" id="4E8FPsxugaK" role="3clFbG">
              <node concept="37vLTw" id="4E8FPsxufUB" role="2Oq$k0">
                <ref role="3cqZAo" node="4E8FPsxuc3V" resolve="strings" />
              </node>
              <node concept="liA8E" id="4E8FPsxugaL" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Iterable.forEach(java.util.function.Consumer)" resolve="forEach" />
                <node concept="37Ijox" id="4E8FPsxugaM" role="37wK5m">
                  <ref role="37Ijqf" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                  <node concept="10M0yZ" id="4E8FPsxugaN" role="wWaWy">
                    <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                    <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="4E8FPsxuc45" role="1B3o_S" />
        <node concept="3cqZAl" id="4E8FPsxuc46" role="3clF45" />
      </node>
    </node>
    <node concept="1X3_iC" id="4E8FPsxuijZ" role="lGtFl">
      <property role="3V$3am" value="member" />
      <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1107461130800/5375687026011219971" />
      <node concept="3clFbW" id="4E8FPsxuc47" role="8Wnug">
        <node concept="3cqZAl" id="4E8FPsxuc48" role="3clF45" />
        <node concept="3clFbS" id="4E8FPsxuc49" role="3clF47" />
        <node concept="3Tm6S6" id="4E8FPsxuc4a" role="1B3o_S" />
      </node>
    </node>
    <node concept="2tJIrI" id="1ROuiHVIzb" role="jymVt" />
    <node concept="3clFbW" id="1ROuiHUyCX" role="jymVt">
      <node concept="3cqZAl" id="1ROuiHUyCZ" role="3clF45" />
      <node concept="3clFbS" id="1ROuiHUyD0" role="3clF47">
        <node concept="1DcWWT" id="1ROuiHUzqD" role="3cqZAp">
          <node concept="3clFbS" id="1ROuiHUzqF" role="2LFqv$">
            <node concept="3cpWs8" id="1ROuiHUENa" role="3cqZAp">
              <node concept="3cpWsn" id="1ROuiHUENb" role="3cpWs9">
                <property role="TrG5h" value="pluginLocation" />
                <node concept="3uibUv" id="1ROuiHUENc" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~File" resolve="File" />
                </node>
                <node concept="2ShNRf" id="1ROuiHUEQZ" role="33vP2m">
                  <node concept="1pGfFk" id="1ROuiHUFm_" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                    <node concept="2OqwBi" id="1ROuiHUFuG" role="37wK5m">
                      <node concept="37vLTw" id="1ROuiHUFox" role="2Oq$k0">
                        <ref role="3cqZAo" node="1ROuiHUzqG" resolve="pd" />
                      </node>
                      <node concept="2OwXpG" id="7bo6V6sMhud" role="2OqNvi">
                        <ref role="2Oxat5" to="asz6:QkG2t1bxbe" resolve="path" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1ROuiHUODe" role="3cqZAp">
              <node concept="3cpWsn" id="1ROuiHUODk" role="3cpWs9">
                <property role="TrG5h" value="cp" />
                <node concept="3uibUv" id="1ROuiHUODm" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="1ROuiHUOQj" role="11_B2D">
                    <ref role="3uigEE" to="guwi:~File" resolve="File" />
                  </node>
                </node>
                <node concept="1rXfSq" id="1ROuiHUP9D" role="33vP2m">
                  <ref role="37wK5l" node="1ROuiHUP4n" resolve="detectClasspath" />
                  <node concept="37vLTw" id="1ROuiHUPb8" role="37wK5m">
                    <ref role="3cqZAo" node="1ROuiHUENb" resolve="pluginLocation" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2wx9CzvxynM" role="3cqZAp">
              <node concept="3cpWsn" id="2wx9CzvxynL" role="3cpWs9">
                <property role="TrG5h" value="pluginXmlContent" />
                <node concept="3uibUv" id="2wx9CzvxzNs" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~CharSequence" resolve="CharSequence" />
                </node>
                <node concept="Xl_RD" id="1yfou3gy65Y" role="33vP2m">
                  <property role="Xl_RC" value="" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1yfou3guLy8" role="3cqZAp">
              <node concept="3cpWsn" id="1yfou3guLy9" role="3cpWs9">
                <property role="TrG5h" value="pluginXmlFile" />
                <node concept="3uibUv" id="1yfou3guLg1" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~File" resolve="File" />
                </node>
                <node concept="2ShNRf" id="1yfou3guLya" role="33vP2m">
                  <node concept="1pGfFk" id="1yfou3guLyb" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                    <node concept="37vLTw" id="1yfou3guLyc" role="37wK5m">
                      <ref role="3cqZAo" node="1ROuiHUENb" resolve="pluginLocation" />
                    </node>
                    <node concept="37vLTw" id="1yfou3guLyd" role="37wK5m">
                      <ref role="3cqZAo" node="7lKcB_1v4$0" resolve="PLUGIN_DESCRIPTOR_LOCATION" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1yfou3guVHV" role="3cqZAp">
              <node concept="3clFbS" id="1yfou3guVHX" role="3clFbx">
                <node concept="3clFbF" id="1yfou3guHtI" role="3cqZAp">
                  <node concept="37vLTI" id="1yfou3guHtK" role="3clFbG">
                    <node concept="1rXfSq" id="2wx9CzvxynO" role="37vLTx">
                      <ref role="37wK5l" node="2wx9CzvxaRp" resolve="readFile" />
                      <node concept="37vLTw" id="1yfou3guLye" role="37wK5m">
                        <ref role="3cqZAo" node="1yfou3guLy9" resolve="pluginXmlFile" />
                      </node>
                      <node concept="3cmrfG" id="2wx9CzvxzA2" role="37wK5m">
                        <property role="3cmrfH" value="8192" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="1yfou3guHtO" role="37vLTJ">
                      <ref role="3cqZAo" node="2wx9CzvxynL" resolve="pluginXmlContent" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1yfou3guYpX" role="3clFbw">
                <node concept="37vLTw" id="1yfou3guWNV" role="2Oq$k0">
                  <ref role="3cqZAo" node="1yfou3guLy9" resolve="pluginXmlFile" />
                </node>
                <node concept="liA8E" id="1yfou3gv0W8" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.isFile()" resolve="isFile" />
                </node>
              </node>
              <node concept="9aQIb" id="1yfou3gv42L" role="9aQIa">
                <node concept="3clFbS" id="1yfou3gv42M" role="9aQI4">
                  <node concept="2Gpval" id="1yfou3gv9OZ" role="3cqZAp">
                    <node concept="2GrKxI" id="1yfou3gv9P1" role="2Gsz3X">
                      <property role="TrG5h" value="cpElement" />
                    </node>
                    <node concept="37vLTw" id="1yfou3gvkhf" role="2GsD0m">
                      <ref role="3cqZAo" node="1ROuiHUODk" resolve="cp" />
                    </node>
                    <node concept="3clFbS" id="1yfou3gv9P5" role="2LFqv$">
                      <node concept="3clFbJ" id="1yfou3gvlkb" role="3cqZAp">
                        <node concept="3fqX7Q" id="1yfou3gvK_p" role="3clFbw">
                          <node concept="2OqwBi" id="1yfou3gvK_r" role="3fr31v">
                            <node concept="2GrUjf" id="1yfou3gvK_s" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="1yfou3gv9P1" resolve="cpElement" />
                            </node>
                            <node concept="liA8E" id="1yfou3gvK_t" role="2OqNvi">
                              <ref role="37wK5l" to="guwi:~File.isFile()" resolve="isFile" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="1yfou3gvlkd" role="3clFbx">
                          <node concept="3N13vt" id="1yfou3gvLL2" role="3cqZAp" />
                        </node>
                      </node>
                      <node concept="3J1_TO" id="1yfou3gvpu1" role="3cqZAp">
                        <node concept="3uVAMA" id="1yfou3gvqxB" role="1zxBo5">
                          <node concept="XOnhg" id="1yfou3gvqxC" role="1zc67B">
                            <property role="TrG5h" value="ex" />
                            <node concept="nSUau" id="1yfou3gvqxD" role="1tU5fm">
                              <node concept="3uibUv" id="1yfou3gvrz1" role="nSUat">
                                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="1yfou3gvqxE" role="1zc67A">
                            <node concept="3SKdUt" id="1yfou3gwv0g" role="3cqZAp">
                              <node concept="1PaTwC" id="1yfou3gwv0h" role="1aUNEU">
                                <node concept="3oM_SD" id="1yfou3gwxVw" role="1PaTwD">
                                  <property role="3oM_SC" value="ignore" />
                                </node>
                              </node>
                            </node>
                            <node concept="3N13vt" id="1yfou3gwEfl" role="3cqZAp" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="1yfou3gvpu3" role="1zxBo7">
                          <node concept="3cpWs8" id="1yfou3gw7Ub" role="3cqZAp">
                            <node concept="3cpWsn" id="1yfou3gw7Uc" role="3cpWs9">
                              <property role="TrG5h" value="jarFile" />
                              <node concept="3uibUv" id="1yfou3gw5Iw" role="1tU5fm">
                                <ref role="3uigEE" to="embf:~JarFile" resolve="JarFile" />
                              </node>
                              <node concept="2ShNRf" id="1yfou3gw7Ud" role="33vP2m">
                                <node concept="1pGfFk" id="1yfou3gw7Ue" role="2ShVmc">
                                  <property role="373rjd" value="true" />
                                  <ref role="37wK5l" to="embf:~JarFile.&lt;init&gt;(java.io.File)" resolve="JarFile" />
                                  <node concept="2GrUjf" id="1yfou3gw7Uf" role="37wK5m">
                                    <ref role="2Gs0qQ" node="1yfou3gv9P1" resolve="cpElement" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3SKdUt" id="1yfou3gyv$z" role="3cqZAp">
                            <node concept="1PaTwC" id="1yfou3gyv$$" role="1aUNEU">
                              <node concept="3oM_SD" id="1yfou3gyxGq" role="1PaTwD">
                                <property role="3oM_SC" value="confirmed" />
                              </node>
                              <node concept="3oM_SD" id="1yfou3gyxI8" role="1PaTwD">
                                <property role="3oM_SC" value="getJarEntry(&quot;path/file&quot;)" />
                              </node>
                              <node concept="3oM_SD" id="1yfou3gyxO5" role="1PaTwD">
                                <property role="3oM_SC" value="works" />
                              </node>
                              <node concept="3oM_SD" id="1yfou3gyxQF" role="1PaTwD">
                                <property role="3oM_SC" value="@jbrsdk-17.0.7" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="1yfou3gwfuQ" role="3cqZAp">
                            <node concept="3cpWsn" id="1yfou3gwfuR" role="3cpWs9">
                              <property role="TrG5h" value="jarEntry" />
                              <node concept="3uibUv" id="1yfou3gwe3m" role="1tU5fm">
                                <ref role="3uigEE" to="embf:~JarEntry" resolve="JarEntry" />
                              </node>
                              <node concept="2OqwBi" id="1yfou3gwfuS" role="33vP2m">
                                <node concept="37vLTw" id="1yfou3gwfuT" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1yfou3gw7Uc" resolve="jarFile" />
                                </node>
                                <node concept="liA8E" id="1yfou3gwfuU" role="2OqNvi">
                                  <ref role="37wK5l" to="embf:~JarFile.getJarEntry(java.lang.String)" resolve="getJarEntry" />
                                  <node concept="37vLTw" id="1yfou3gwfuV" role="37wK5m">
                                    <ref role="3cqZAo" node="7lKcB_1v4$0" resolve="PLUGIN_DESCRIPTOR_LOCATION" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="1yfou3gwjIg" role="3cqZAp">
                            <node concept="3clFbS" id="1yfou3gwjIi" role="3clFbx">
                              <node concept="3N13vt" id="1yfou3gwsvV" role="3cqZAp" />
                            </node>
                            <node concept="3clFbC" id="1yfou3gwmT_" role="3clFbw">
                              <node concept="10Nm6u" id="1yfou3gwpZ8" role="3uHU7w" />
                              <node concept="37vLTw" id="1yfou3gwkX6" role="3uHU7B">
                                <ref role="3cqZAo" node="1yfou3gwfuR" resolve="jarEntry" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="1yfou3gxUNM" role="3cqZAp">
                            <node concept="37vLTI" id="1yfou3gxYe7" role="3clFbG">
                              <node concept="37vLTw" id="1yfou3gxUNK" role="37vLTJ">
                                <ref role="3cqZAo" node="2wx9CzvxynL" resolve="pluginXmlContent" />
                              </node>
                              <node concept="1rXfSq" id="1yfou3gxPvd" role="37vLTx">
                                <ref role="37wK5l" node="1yfou3gx6rt" resolve="readJarEntry" />
                                <node concept="37vLTw" id="1yfou3gxQWI" role="37wK5m">
                                  <ref role="3cqZAo" node="1yfou3gw7Uc" resolve="jarFile" />
                                </node>
                                <node concept="37vLTw" id="1yfou3gxSfi" role="37wK5m">
                                  <ref role="3cqZAo" node="1yfou3gwfuR" resolve="jarEntry" />
                                </node>
                                <node concept="3cmrfG" id="1yfou3gyaZc" role="37wK5m">
                                  <property role="3cmrfH" value="8192" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="1yfou3gygZt" role="3cqZAp">
                            <node concept="3clFbS" id="1yfou3gygZv" role="3clFbx">
                              <node concept="3zACq4" id="1yfou3gyrQr" role="3cqZAp" />
                            </node>
                            <node concept="3eOSWO" id="1yfou3gyK3t" role="3clFbw">
                              <node concept="3cmrfG" id="1yfou3gyK3L" role="3uHU7w">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="2OqwBi" id="1yfou3gyq$r" role="3uHU7B">
                                <node concept="37vLTw" id="1yfou3gyq$s" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2wx9CzvxynL" resolve="pluginXmlContent" />
                                </node>
                                <node concept="liA8E" id="1yfou3gyq$t" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~CharSequence.length()" resolve="length" />
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
            <node concept="3cpWs8" id="1ROuiHV8_c" role="3cqZAp">
              <node concept="3cpWsn" id="1ROuiHV8_i" role="3cpWs9">
                <property role="TrG5h" value="langLibs" />
                <node concept="3uibUv" id="1ROuiHV8_k" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="1ROuiHV8Ns" role="11_B2D">
                    <ref role="3uigEE" to="guwi:~File" resolve="File" />
                  </node>
                </node>
                <node concept="1rXfSq" id="1ROuiHV9t_" role="33vP2m">
                  <ref role="37wK5l" node="1ROuiHV9hQ" resolve="detectLanguageLibraries" />
                  <node concept="37vLTw" id="1ROuiHV9wR" role="37wK5m">
                    <ref role="3cqZAo" node="1ROuiHUENb" resolve="pluginLocation" />
                  </node>
                  <node concept="37vLTw" id="3QoXtOXTjij" role="37wK5m">
                    <ref role="3cqZAo" node="2wx9CzvxynL" resolve="pluginXmlContent" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2wx9CzvxynT" role="3cqZAp">
              <node concept="3cpWsn" id="2wx9CzvxynS" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="idMatcher" />
                <node concept="3uibUv" id="2wx9CzvxynU" role="1tU5fm">
                  <ref role="3uigEE" to="ni5j:~Matcher" resolve="Matcher" />
                </node>
                <node concept="2OqwBi" id="2wx9Czvxz2L" role="33vP2m">
                  <node concept="37vLTw" id="2wx9Czvxz2K" role="2Oq$k0">
                    <ref role="3cqZAo" node="2wx9CzvxwqB" resolve="myPluginIdPattern" />
                  </node>
                  <node concept="liA8E" id="2wx9Czvxz2M" role="2OqNvi">
                    <ref role="37wK5l" to="ni5j:~Pattern.matcher(java.lang.CharSequence)" resolve="matcher" />
                    <node concept="37vLTw" id="2wx9Czvxz2N" role="37wK5m">
                      <ref role="3cqZAo" node="2wx9CzvxynL" resolve="pluginXmlContent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2wx9CzvxynY" role="3cqZAp">
              <node concept="3cpWsn" id="2wx9CzvxynX" role="3cpWs9">
                <property role="TrG5h" value="detectedId" />
                <property role="3TUv4t" value="true" />
                <node concept="17QB3L" id="2wx9CzvxXyG" role="1tU5fm" />
                <node concept="3K4zz7" id="2wx9Czvx$$5" role="33vP2m">
                  <node concept="10Nm6u" id="2wx9Czvx$CI" role="3K4GZi" />
                  <node concept="2OqwBi" id="2wx9Czvxz4n" role="3K4Cdx">
                    <node concept="37vLTw" id="2wx9Czvxz4m" role="2Oq$k0">
                      <ref role="3cqZAo" node="2wx9CzvxynS" resolve="idMatcher" />
                    </node>
                    <node concept="liA8E" id="2wx9Czvxz4o" role="2OqNvi">
                      <ref role="37wK5l" to="ni5j:~Matcher.find()" resolve="find" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2wx9Czvxz6u" role="3K4E3e">
                    <node concept="37vLTw" id="2wx9Czvxz6t" role="2Oq$k0">
                      <ref role="3cqZAo" node="2wx9CzvxynS" resolve="idMatcher" />
                    </node>
                    <node concept="liA8E" id="2wx9Czvxz6v" role="2OqNvi">
                      <ref role="37wK5l" to="ni5j:~Matcher.group(int)" resolve="group" />
                      <node concept="3cmrfG" id="2wx9Czvxz6w" role="37wK5m">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2wx9Czvxyob" role="3cqZAp">
              <node concept="3cpWsn" id="2wx9Czvxyoa" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="pluginId" />
                <node concept="17QB3L" id="2wx9CzvxYni" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbJ" id="2wx9Czvx_BN" role="3cqZAp">
              <node concept="3clFbS" id="2wx9Czvx_BP" role="3clFbx">
                <node concept="3clFbJ" id="2wx9CzvxPBD" role="3cqZAp">
                  <node concept="3clFbS" id="2wx9CzvxPBF" role="3clFbx">
                    <node concept="RRSsy" id="2wx9CzvxQ5Y" role="3cqZAp">
                      <node concept="2YIFZM" id="2wx9CzvxS6V" role="RRSoy">
                        <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                        <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                        <node concept="Xl_RD" id="2wx9CzvxQ5Z" role="37wK5m">
                          <property role="Xl_RC" value="Could not verify id of plugin %s from %s" />
                        </node>
                        <node concept="2OqwBi" id="2wx9CzvxSD7" role="37wK5m">
                          <node concept="37vLTw" id="2wx9CzvxSw_" role="2Oq$k0">
                            <ref role="3cqZAo" node="1ROuiHUzqG" resolve="pd" />
                          </node>
                          <node concept="2OwXpG" id="7bo6V6sMiXv" role="2OqNvi">
                            <ref role="2Oxat5" to="asz6:r$A3E5qOHV" resolve="id" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="2wx9CzvxTlN" role="37wK5m">
                          <ref role="3cqZAo" node="1ROuiHUENb" resolve="pluginLocation" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2wx9CzvxTs2" role="3cqZAp">
                      <node concept="37vLTI" id="2wx9CzvxTOX" role="3clFbG">
                        <node concept="2OqwBi" id="2wx9CzvxTXB" role="37vLTx">
                          <node concept="37vLTw" id="2wx9CzvxTPv" role="2Oq$k0">
                            <ref role="3cqZAo" node="1ROuiHUzqG" resolve="pd" />
                          </node>
                          <node concept="2OwXpG" id="7bo6V6sMjnD" role="2OqNvi">
                            <ref role="2Oxat5" to="asz6:r$A3E5qOHV" resolve="id" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="2wx9CzvxTs0" role="37vLTJ">
                          <ref role="3cqZAo" node="2wx9Czvxyoa" resolve="pluginId" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="2wx9CzvxQ0k" role="3clFbw">
                    <node concept="10Nm6u" id="2wx9CzvxQ5A" role="3uHU7w" />
                    <node concept="37vLTw" id="2wx9CzvxPDY" role="3uHU7B">
                      <ref role="3cqZAo" node="2wx9CzvxynX" resolve="detectedId" />
                    </node>
                  </node>
                  <node concept="9aQIb" id="2wx9CzvxUfh" role="9aQIa">
                    <node concept="3clFbS" id="2wx9CzvxUfi" role="9aQI4">
                      <node concept="3clFbJ" id="2wx9CzvxE8S" role="3cqZAp">
                        <node concept="3clFbS" id="2wx9CzvxE8U" role="3clFbx">
                          <node concept="RRSsy" id="2wx9CzvxJy0" role="3cqZAp">
                            <property role="RRSoG" value="gZ5fh_4/error" />
                            <node concept="2YIFZM" id="2wx9CzvxVsb" role="RRSoy">
                              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                              <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                              <node concept="Xl_RD" id="2wx9CzvxUy$" role="37wK5m">
                                <property role="Xl_RC" value="Plugin %s has been detected as %s but claims to be %s. Resort to detected value." />
                              </node>
                              <node concept="37vLTw" id="2wx9CzvxW8I" role="37wK5m">
                                <ref role="3cqZAo" node="1ROuiHUENb" resolve="pluginLocation" />
                              </node>
                              <node concept="37vLTw" id="2wx9CzvxWVZ" role="37wK5m">
                                <ref role="3cqZAo" node="2wx9CzvxynX" resolve="detectedId" />
                              </node>
                              <node concept="2OqwBi" id="2wx9CzvxWrM" role="37wK5m">
                                <node concept="37vLTw" id="2wx9CzvxWk7" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1ROuiHUzqG" resolve="pd" />
                                </node>
                                <node concept="2OwXpG" id="7bo6V6sMk0U" role="2OqNvi">
                                  <ref role="2Oxat5" to="asz6:r$A3E5qOHV" resolve="id" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3fqX7Q" id="2wx9CzvxJqO" role="3clFbw">
                          <node concept="2OqwBi" id="2wx9CzvxJqQ" role="3fr31v">
                            <node concept="2OqwBi" id="2wx9CzvxJqR" role="2Oq$k0">
                              <node concept="37vLTw" id="2wx9CzvxJqS" role="2Oq$k0">
                                <ref role="3cqZAo" node="1ROuiHUzqG" resolve="pd" />
                              </node>
                              <node concept="2OwXpG" id="7bo6V6sMjG8" role="2OqNvi">
                                <ref role="2Oxat5" to="asz6:r$A3E5qOHV" resolve="id" />
                              </node>
                            </node>
                            <node concept="liA8E" id="2wx9CzvxJqU" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                              <node concept="37vLTw" id="2wx9CzvxJqV" role="37wK5m">
                                <ref role="3cqZAo" node="2wx9CzvxynX" resolve="detectedId" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="2wx9CzvxG3H" role="3cqZAp">
                        <node concept="37vLTI" id="2wx9CzvxGrR" role="3clFbG">
                          <node concept="37vLTw" id="2wx9CzvxGx3" role="37vLTx">
                            <ref role="3cqZAo" node="2wx9CzvxynX" resolve="detectedId" />
                          </node>
                          <node concept="37vLTw" id="2wx9CzvxG3F" role="37vLTJ">
                            <ref role="3cqZAo" node="2wx9Czvxyoa" resolve="pluginId" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="2wx9CzvxDW$" role="3clFbw">
                <node concept="3y3z36" id="2wx9CzvxDKn" role="3uHU7B">
                  <node concept="2OqwBi" id="2wx9CzvxAeZ" role="3uHU7B">
                    <node concept="37vLTw" id="2wx9CzvxA5K" role="2Oq$k0">
                      <ref role="3cqZAo" node="1ROuiHUzqG" resolve="pd" />
                    </node>
                    <node concept="2OwXpG" id="7bo6V6sMiov" role="2OqNvi">
                      <ref role="2Oxat5" to="asz6:r$A3E5qOHV" resolve="id" />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="2wx9CzvxB1i" role="3uHU7w" />
                </node>
                <node concept="3fqX7Q" id="2wx9CzvxE3k" role="3uHU7w">
                  <node concept="2OqwBi" id="2wx9CzvxE3m" role="3fr31v">
                    <node concept="2OqwBi" id="2wx9CzvxE3n" role="2Oq$k0">
                      <node concept="37vLTw" id="2wx9CzvxE3o" role="2Oq$k0">
                        <ref role="3cqZAo" node="1ROuiHUzqG" resolve="pd" />
                      </node>
                      <node concept="2OwXpG" id="7bo6V6sMiCc" role="2OqNvi">
                        <ref role="2Oxat5" to="asz6:r$A3E5qOHV" resolve="id" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2wx9CzvxE3q" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.isEmpty()" resolve="isEmpty" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="2wx9CzvxJ6W" role="9aQIa">
                <node concept="3clFbS" id="2wx9CzvxJ6X" role="9aQI4">
                  <node concept="3clFbJ" id="2wx9CzvxGDt" role="3cqZAp">
                    <node concept="3clFbS" id="2wx9CzvxGDv" role="3clFbx">
                      <node concept="3SKdUt" id="2wx9CzvxK1u" role="3cqZAp">
                        <node concept="1PaTwC" id="ATZLwXo9mb" role="1aUNEU">
                          <node concept="3oM_SD" id="ATZLwXo9mc" role="1PaTwD">
                            <property role="3oM_SC" value="regular" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXo9md" role="1PaTwD">
                            <property role="3oM_SC" value="scenario," />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXo9me" role="1PaTwD">
                            <property role="3oM_SC" value="when" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXo9mf" role="1PaTwD">
                            <property role="3oM_SC" value="&lt;plugin&gt;" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXo9mg" role="1PaTwD">
                            <property role="3oM_SC" value="has" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXo9mh" role="1PaTwD">
                            <property role="3oM_SC" value="path" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXo9mi" role="1PaTwD">
                            <property role="3oM_SC" value="only" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXo9mj" role="1PaTwD">
                            <property role="3oM_SC" value="and" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXo9mk" role="1PaTwD">
                            <property role="3oM_SC" value="no" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXo9ml" role="1PaTwD">
                            <property role="3oM_SC" value="id" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXo9mm" role="1PaTwD">
                            <property role="3oM_SC" value="(e.g." />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXo9mn" role="1PaTwD">
                            <property role="3oM_SC" value="&lt;generate&gt;" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXo9mo" role="1PaTwD">
                            <property role="3oM_SC" value="task)," />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXo9mp" role="1PaTwD">
                            <property role="3oM_SC" value="use" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXo9mq" role="1PaTwD">
                            <property role="3oM_SC" value="the" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXo9mr" role="1PaTwD">
                            <property role="3oM_SC" value="one" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXo9ms" role="1PaTwD">
                            <property role="3oM_SC" value="from" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXo9mt" role="1PaTwD">
                            <property role="3oM_SC" value="plugin.xml" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="2wx9CzvxJAX" role="3cqZAp">
                        <node concept="37vLTI" id="2wx9CzvxJUY" role="3clFbG">
                          <node concept="37vLTw" id="2wx9CzvxK0a" role="37vLTx">
                            <ref role="3cqZAo" node="2wx9CzvxynX" resolve="detectedId" />
                          </node>
                          <node concept="37vLTw" id="2wx9CzvxJAV" role="37vLTJ">
                            <ref role="3cqZAo" node="2wx9Czvxyoa" resolve="pluginId" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="2wx9CzvxIYn" role="3clFbw">
                      <node concept="10Nm6u" id="2wx9CzvxIZw" role="3uHU7w" />
                      <node concept="37vLTw" id="2wx9CzvxGEo" role="3uHU7B">
                        <ref role="3cqZAo" node="2wx9CzvxynX" resolve="detectedId" />
                      </node>
                    </node>
                    <node concept="9aQIb" id="2wx9CzvxJ0c" role="9aQIa">
                      <node concept="3clFbS" id="2wx9CzvxJ0d" role="9aQI4">
                        <node concept="3SKdUt" id="2wx9CzvxZ$F" role="3cqZAp">
                          <node concept="1PaTwC" id="ATZLwXo9mu" role="1aUNEU">
                            <node concept="3oM_SD" id="ATZLwXo9mv" role="1PaTwD">
                              <property role="3oM_SC" value="use" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXo9mw" role="1PaTwD">
                              <property role="3oM_SC" value="unique" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXo9mx" role="1PaTwD">
                              <property role="3oM_SC" value="value" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXo9my" role="1PaTwD">
                              <property role="3oM_SC" value="not" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXo9mz" role="1PaTwD">
                              <property role="3oM_SC" value="to" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXo9m$" role="1PaTwD">
                              <property role="3oM_SC" value="overwrite" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXo9m_" role="1PaTwD">
                              <property role="3oM_SC" value="map" />
                            </node>
                            <node concept="3oM_SD" id="ATZLwXo9mA" role="1PaTwD">
                              <property role="3oM_SC" value="entries" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="2wx9CzvxNpQ" role="3cqZAp">
                          <node concept="37vLTI" id="2wx9CzvxNNv" role="3clFbG">
                            <node concept="37vLTw" id="2wx9CzvxNpO" role="37vLTJ">
                              <ref role="3cqZAo" node="2wx9Czvxyoa" resolve="pluginId" />
                            </node>
                            <node concept="2YIFZM" id="2wx9CzvxOw$" role="37vLTx">
                              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                              <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                              <node concept="Xl_RD" id="2wx9CzvxOLt" role="37wK5m">
                                <property role="Xl_RC" value="plugin.%x" />
                              </node>
                              <node concept="2YIFZM" id="2wx9CzvxO5U" role="37wK5m">
                                <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                                <ref role="37wK5l" to="wyt6:~System.identityHashCode(java.lang.Object)" resolve="identityHashCode" />
                                <node concept="37vLTw" id="2wx9CzvxPct" role="37wK5m">
                                  <ref role="3cqZAo" node="1ROuiHUzqG" resolve="pd" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="RRSsy" id="2wx9CzvxK2j" role="3cqZAp">
                          <property role="RRSoG" value="gZ5fksE/warn" />
                          <node concept="2YIFZM" id="2wx9CzvxKi5" role="RRSoy">
                            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                            <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                            <node concept="Xl_RD" id="2wx9CzvxK2l" role="37wK5m">
                              <property role="Xl_RC" value="Could not detect id for plugin at %s" />
                            </node>
                            <node concept="37vLTw" id="2wx9CzvxMsI" role="37wK5m">
                              <ref role="3cqZAo" node="1ROuiHUENb" resolve="pluginLocation" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2wx9Czvxtti" role="3cqZAp" />
            <node concept="3cpWs8" id="4E8FPsxro0A" role="3cqZAp">
              <node concept="3cpWsn" id="4E8FPsxro0G" role="3cpWs9">
                <property role="TrG5h" value="deps" />
                <node concept="3uibUv" id="4E8FPsxro0I" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="17QB3L" id="4E8FPsxrprt" role="11_B2D" />
                </node>
                <node concept="1rXfSq" id="4E8FPsxrs6A" role="33vP2m">
                  <ref role="37wK5l" node="4E8FPsxrd17" resolve="detectDependencies" />
                  <node concept="37vLTw" id="4E8FPsxrtWF" role="37wK5m">
                    <ref role="3cqZAo" node="2wx9CzvxynL" resolve="pluginXmlContent" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1ROuiHW5WD" role="3cqZAp">
              <node concept="3cpWsn" id="1ROuiHW5WE" role="3cpWs9">
                <property role="TrG5h" value="d" />
                <node concept="3uibUv" id="1ROuiHW5Wj" role="1tU5fm">
                  <ref role="3uigEE" node="1ROuiHVPT6" resolve="PlatformPlugins.Descriptor" />
                </node>
                <node concept="2ShNRf" id="1ROuiHW5WF" role="33vP2m">
                  <node concept="1pGfFk" id="1ROuiHW5WG" role="2ShVmc">
                    <ref role="37wK5l" node="1ROuiHVQWh" resolve="PlatformPlugins.Descriptor" />
                    <node concept="37vLTw" id="2wx9CzvxMSs" role="37wK5m">
                      <ref role="3cqZAo" node="2wx9Czvxyoa" resolve="pluginId" />
                    </node>
                    <node concept="37vLTw" id="1ROuiHW5WK" role="37wK5m">
                      <ref role="3cqZAo" node="1ROuiHUENb" resolve="pluginLocation" />
                    </node>
                    <node concept="37vLTw" id="1ROuiHW5WL" role="37wK5m">
                      <ref role="3cqZAo" node="1ROuiHUODk" resolve="cp" />
                    </node>
                    <node concept="37vLTw" id="1ROuiHW5WM" role="37wK5m">
                      <ref role="3cqZAo" node="1ROuiHV8_i" resolve="langLibs" />
                    </node>
                    <node concept="37vLTw" id="4E8FPsxry40" role="37wK5m">
                      <ref role="3cqZAo" node="4E8FPsxro0G" resolve="deps" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1ROuiHVXfu" role="3cqZAp">
              <node concept="2OqwBi" id="1ROuiHVXJi" role="3clFbG">
                <node concept="37vLTw" id="1ROuiHVXfs" role="2Oq$k0">
                  <ref role="3cqZAo" node="1ROuiHVVtv" resolve="myPlugins" />
                </node>
                <node concept="liA8E" id="1ROuiHW0_c" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="37vLTw" id="2wx9CzvxN7W" role="37wK5m">
                    <ref role="3cqZAo" node="2wx9Czvxyoa" resolve="pluginId" />
                  </node>
                  <node concept="37vLTw" id="1ROuiHW5WN" role="37wK5m">
                    <ref role="3cqZAo" node="1ROuiHW5WE" resolve="d" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="RRSsy" id="1ROuiHW5C4" role="3cqZAp">
              <node concept="2YIFZM" id="1ROuiHW6wx" role="RRSoy">
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="Xl_RD" id="1ROuiHW6C1" role="37wK5m">
                  <property role="Xl_RC" value="Discovered %s; cp=%s, modules=%s" />
                </node>
                <node concept="37vLTw" id="1ROuiHW6LE" role="37wK5m">
                  <ref role="3cqZAo" node="1ROuiHW5WE" resolve="d" />
                </node>
                <node concept="37vLTw" id="1ROuiHW71q" role="37wK5m">
                  <ref role="3cqZAo" node="1ROuiHUODk" resolve="cp" />
                </node>
                <node concept="37vLTw" id="1ROuiHW7ga" role="37wK5m">
                  <ref role="3cqZAo" node="1ROuiHV8_i" resolve="langLibs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1ROuiHUzqG" role="1Duv9x">
            <property role="TrG5h" value="pd" />
            <node concept="3uibUv" id="7bo6V6sLPC6" role="1tU5fm">
              <ref role="3uigEE" to="asz6:r$A3E5vV_o" resolve="PluginData" />
            </node>
          </node>
          <node concept="2OqwBi" id="1ROuiHUzXv" role="1DdaDG">
            <node concept="37vLTw" id="1ROuiHUzPx" role="2Oq$k0">
              <ref role="3cqZAo" node="1ROuiHUyDq" resolve="config" />
            </node>
            <node concept="liA8E" id="1ROuiHU$ro" role="2OqNvi">
              <ref role="37wK5l" node="5UWB9tjYeB" resolve="getPlugins" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1ROuiHUyDq" role="3clF46">
        <property role="TrG5h" value="config" />
        <node concept="3uibUv" id="1ROuiHUyDp" role="1tU5fm">
          <ref role="3uigEE" node="6rx4kZDk5A9" resolve="EnvironmentConfig" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2wx9Czvx3Kw" role="jymVt" />
    <node concept="2YIFZL" id="2wx9CzvxaRp" role="jymVt">
      <property role="TrG5h" value="readFile" />
      <node concept="3clFbS" id="2wx9Czvx5Z6" role="3clF47">
        <node concept="3J1_TO" id="1yfou3gxjc5" role="3cqZAp">
          <node concept="3clFbS" id="1yfou3gxjc7" role="1zxBo7">
            <node concept="3cpWs8" id="2wx9Czvxq9e" role="3cqZAp">
              <node concept="3cpWsn" id="2wx9Czvxq9f" role="3cpWs9">
                <property role="TrG5h" value="cb" />
                <node concept="3uibUv" id="2wx9Czvxq9g" role="1tU5fm">
                  <ref role="3uigEE" to="zfbc:~CharBuffer" resolve="CharBuffer" />
                </node>
                <node concept="2YIFZM" id="2wx9CzvxqhA" role="33vP2m">
                  <ref role="37wK5l" to="zfbc:~CharBuffer.allocate(int)" resolve="allocate" />
                  <ref role="1Pybhc" to="zfbc:~CharBuffer" resolve="CharBuffer" />
                  <node concept="37vLTw" id="2wx9CzvxqNv" role="37wK5m">
                    <ref role="3cqZAo" node="2wx9CzvxqpG" resolve="howMuch" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2wx9Czvxd$u" role="3cqZAp">
              <node concept="2OqwBi" id="2wx9CzvxjLI" role="3clFbG">
                <node concept="37vLTw" id="2wx9Czvxe$S" role="2Oq$k0">
                  <ref role="3cqZAo" node="1yfou3gxjc8" resolve="reader" />
                </node>
                <node concept="liA8E" id="2wx9CzvxkFW" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~InputStreamReader.read(java.nio.CharBuffer)" resolve="read" />
                  <node concept="37vLTw" id="2wx9CzvxqUs" role="37wK5m">
                    <ref role="3cqZAo" node="2wx9Czvxq9f" resolve="cb" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2wx9CzvxqYz" role="3cqZAp">
              <node concept="2OqwBi" id="2wx9Czvxrpu" role="3clFbG">
                <node concept="37vLTw" id="2wx9CzvxqYx" role="2Oq$k0">
                  <ref role="3cqZAo" node="2wx9Czvxq9f" resolve="cb" />
                </node>
                <node concept="liA8E" id="2wx9CzvxsKc" role="2OqNvi">
                  <ref role="37wK5l" to="zfbc:~CharBuffer.flip()" resolve="flip" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2wx9CzvxsR_" role="3cqZAp">
              <node concept="37vLTw" id="2wx9CzvxsWA" role="3cqZAk">
                <ref role="3cqZAo" node="2wx9Czvxq9f" resolve="cb" />
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="1yfou3gxvn$" role="1zxBo5">
            <node concept="XOnhg" id="1yfou3gxvn_" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="1yfou3gxvnA" role="1tU5fm">
                <node concept="3uibUv" id="1yfou3gxwFy" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1yfou3gxvnB" role="1zc67A">
              <node concept="3SKdUt" id="2wx9CzvxfRf" role="3cqZAp">
                <node concept="1PaTwC" id="ATZLwXo9nc" role="1aUNEU">
                  <node concept="3oM_SD" id="ATZLwXo9nd" role="1PaTwD">
                    <property role="3oM_SC" value="ignore" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3J1hQo" id="1yfou3gxjc8" role="3J1_TS">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="reader" />
            <node concept="3uibUv" id="1yfou3gxkxf" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~FileReader" resolve="FileReader" />
            </node>
            <node concept="2ShNRf" id="2wx9Czvxe$P" role="33vP2m">
              <node concept="1pGfFk" id="2wx9Czvxe$Q" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~FileReader.&lt;init&gt;(java.io.File)" resolve="FileReader" />
                <node concept="37vLTw" id="2wx9Czvxe$R" role="37wK5m">
                  <ref role="3cqZAo" node="2wx9CzvxcBF" resolve="f" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2wx9Czvxt6S" role="3cqZAp">
          <node concept="Xl_RD" id="2wx9Czvxthf" role="3cqZAk">
            <property role="Xl_RC" value="" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2wx9CzvxkHU" role="3clF45">
        <ref role="3uigEE" to="wyt6:~CharSequence" resolve="CharSequence" />
      </node>
      <node concept="3Tm6S6" id="2wx9Czvx9l0" role="1B3o_S" />
      <node concept="37vLTG" id="2wx9CzvxcBF" role="3clF46">
        <property role="TrG5h" value="f" />
        <node concept="3uibUv" id="2wx9CzvxcBE" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="37vLTG" id="2wx9CzvxqpG" role="3clF46">
        <property role="TrG5h" value="howMuch" />
        <node concept="10Oyi0" id="2wx9CzvxquA" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1yfou3gwSf_" role="jymVt" />
    <node concept="2YIFZL" id="1yfou3gx6rt" role="jymVt">
      <property role="TrG5h" value="readJarEntry" />
      <node concept="3clFbS" id="1yfou3gx6rw" role="3clF47">
        <node concept="3J1_TO" id="1yfou3gxJhw" role="3cqZAp">
          <node concept="3uVAMA" id="1yfou3gxJhx" role="1zxBo5">
            <node concept="XOnhg" id="1yfou3gxJhy" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="1yfou3gxJhz" role="1tU5fm">
                <node concept="3uibUv" id="1yfou3gxJh$" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1yfou3gxJh_" role="1zc67A">
              <node concept="3SKdUt" id="1yfou3gxJhA" role="3cqZAp">
                <node concept="1PaTwC" id="1yfou3gxJhB" role="1aUNEU">
                  <node concept="3oM_SD" id="1yfou3gxJhC" role="1PaTwD">
                    <property role="3oM_SC" value="ignore" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1yfou3gxJhD" role="1zxBo7">
            <node concept="3cpWs8" id="1yfou3gxJhE" role="3cqZAp">
              <node concept="3cpWsn" id="1yfou3gxJhF" role="3cpWs9">
                <property role="TrG5h" value="cb" />
                <node concept="3uibUv" id="1yfou3gxJhG" role="1tU5fm">
                  <ref role="3uigEE" to="zfbc:~CharBuffer" resolve="CharBuffer" />
                </node>
                <node concept="2YIFZM" id="1yfou3gxJhH" role="33vP2m">
                  <ref role="37wK5l" to="zfbc:~CharBuffer.allocate(int)" resolve="allocate" />
                  <ref role="1Pybhc" to="zfbc:~CharBuffer" resolve="CharBuffer" />
                  <node concept="37vLTw" id="1yfou3gxJhI" role="37wK5m">
                    <ref role="3cqZAo" node="1yfou3gxeFo" resolve="howMuch" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1yfou3gxJhJ" role="3cqZAp">
              <node concept="2OqwBi" id="1yfou3gxJhK" role="3clFbG">
                <node concept="37vLTw" id="1yfou3gxJhL" role="2Oq$k0">
                  <ref role="3cqZAo" node="1yfou3gxJhU" resolve="reader" />
                </node>
                <node concept="liA8E" id="1yfou3gxJhM" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~InputStreamReader.read(java.nio.CharBuffer)" resolve="read" />
                  <node concept="37vLTw" id="1yfou3gxJhN" role="37wK5m">
                    <ref role="3cqZAo" node="1yfou3gxJhF" resolve="cb" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1yfou3gxJhO" role="3cqZAp">
              <node concept="2OqwBi" id="1yfou3gxJhP" role="3clFbG">
                <node concept="37vLTw" id="1yfou3gxJhQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="1yfou3gxJhF" resolve="cb" />
                </node>
                <node concept="liA8E" id="1yfou3gxJhR" role="2OqNvi">
                  <ref role="37wK5l" to="zfbc:~CharBuffer.flip()" resolve="flip" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1yfou3gxJhS" role="3cqZAp">
              <node concept="37vLTw" id="1yfou3gxJhT" role="3cqZAk">
                <ref role="3cqZAo" node="1yfou3gxJhF" resolve="cb" />
              </node>
            </node>
          </node>
          <node concept="3J1hQo" id="1yfou3gxJhU" role="3J1_TS">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="reader" />
            <node concept="3uibUv" id="1yfou3gxJhV" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~InputStreamReader" resolve="InputStreamReader" />
            </node>
            <node concept="2ShNRf" id="1yfou3gxJhW" role="33vP2m">
              <node concept="1pGfFk" id="1yfou3gxJhX" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~InputStreamReader.&lt;init&gt;(java.io.InputStream)" resolve="InputStreamReader" />
                <node concept="2OqwBi" id="1yfou3gxKyv" role="37wK5m">
                  <node concept="37vLTw" id="1yfou3gxJhY" role="2Oq$k0">
                    <ref role="3cqZAo" node="1yfou3gxeQe" resolve="jarFile" />
                  </node>
                  <node concept="liA8E" id="1yfou3gxKHN" role="2OqNvi">
                    <ref role="37wK5l" to="embf:~JarFile.getInputStream(java.util.zip.ZipEntry)" resolve="getInputStream" />
                    <node concept="37vLTw" id="1yfou3gxL1M" role="37wK5m">
                      <ref role="3cqZAo" node="1yfou3gxewA" resolve="jarEntry" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1yfou3gxJhZ" role="3cqZAp">
          <node concept="Xl_RD" id="1yfou3gxJi0" role="3cqZAk">
            <property role="Xl_RC" value="" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1yfou3gx0VU" role="1B3o_S" />
      <node concept="3uibUv" id="1yfou3gx5Wh" role="3clF45">
        <ref role="3uigEE" to="wyt6:~CharSequence" resolve="CharSequence" />
      </node>
      <node concept="37vLTG" id="1yfou3gxeQe" role="3clF46">
        <property role="TrG5h" value="jarFile" />
        <node concept="3uibUv" id="1yfou3gxeVu" role="1tU5fm">
          <ref role="3uigEE" to="embf:~JarFile" resolve="JarFile" />
        </node>
      </node>
      <node concept="37vLTG" id="1yfou3gxewA" role="3clF46">
        <property role="TrG5h" value="jarEntry" />
        <node concept="3uibUv" id="1yfou3gxew_" role="1tU5fm">
          <ref role="3uigEE" to="embf:~JarEntry" resolve="JarEntry" />
        </node>
      </node>
      <node concept="37vLTG" id="1yfou3gxeFo" role="3clF46">
        <property role="TrG5h" value="howMuch" />
        <node concept="10Oyi0" id="1yfou3gxflx" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2wx9Czvx7E9" role="jymVt" />
    <node concept="2tJIrI" id="1ROuiHZx9q" role="jymVt" />
    <node concept="3clFb_" id="1ROuiHZySq" role="jymVt">
      <property role="TrG5h" value="isEmpty" />
      <node concept="10P_77" id="1ROuiHZ$vq" role="3clF45" />
      <node concept="3clFbS" id="1ROuiHZySt" role="3clF47">
        <node concept="3clFbF" id="1ROuiHZEo6" role="3cqZAp">
          <node concept="2OqwBi" id="1ROuiHZEJr" role="3clFbG">
            <node concept="37vLTw" id="1ROuiHZEo5" role="2Oq$k0">
              <ref role="3cqZAo" node="1ROuiHVVtv" resolve="myPlugins" />
            </node>
            <node concept="liA8E" id="1ROuiHZF64" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.isEmpty()" resolve="isEmpty" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ROuiHXRwp" role="jymVt" />
    <node concept="312cEg" id="4E8FPsx$VO1" role="jymVt">
      <property role="TrG5h" value="myDependencyResolver" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4E8FPsx$Pq8" role="1B3o_S" />
      <node concept="3uibUv" id="4E8FPsx_7j7" role="1tU5fm">
        <ref role="3uigEE" to="82uw:~BiFunction" resolve="BiFunction" />
        <node concept="3uibUv" id="4E8FPsx_7Gz" role="11_B2D">
          <ref role="3uigEE" node="1ROuiHVPT6" resolve="PlatformPlugins.Descriptor" />
        </node>
        <node concept="17QB3L" id="4E8FPsxCMpU" role="11_B2D" />
        <node concept="3uibUv" id="4E8FPsx_7Qw" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="4E8FPsx_80F" role="11_B2D" />
        </node>
      </node>
      <node concept="2ShNRf" id="4E8FPsx_jHL" role="33vP2m">
        <node concept="YeOm9" id="4E8FPsx_ol4" role="2ShVmc">
          <node concept="1Y3b0j" id="4E8FPsx_ol7" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <property role="373rjd" value="true" />
            <ref role="1Y3XeK" to="82uw:~BiFunction" resolve="BiFunction" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="4E8FPsx_ol8" role="1B3o_S" />
            <node concept="3clFb_" id="4E8FPsx_olq" role="jymVt">
              <property role="TrG5h" value="apply" />
              <node concept="3Tm1VV" id="4E8FPsx_olr" role="1B3o_S" />
              <node concept="3uibUv" id="4E8FPsx_olF" role="3clF45">
                <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                <node concept="3qTvmN" id="4E8FPsx_olG" role="11_B2D" />
              </node>
              <node concept="37vLTG" id="4E8FPsx_olu" role="3clF46">
                <property role="TrG5h" value="d" />
                <node concept="3uibUv" id="4E8FPsx_olC" role="1tU5fm">
                  <ref role="3uigEE" node="1ROuiHVPT6" resolve="PlatformPlugins.Descriptor" />
                </node>
              </node>
              <node concept="37vLTG" id="4E8FPsxCF_$" role="3clF46">
                <property role="TrG5h" value="className" />
                <node concept="17QB3L" id="4E8FPsxCJF1" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="4E8FPsx_olw" role="3clF47">
                <node concept="1DcWWT" id="4E8FPsxAOBU" role="3cqZAp">
                  <node concept="3clFbS" id="4E8FPsxAOBX" role="2LFqv$">
                    <node concept="3cpWs8" id="4E8FPsxBfQ8" role="3cqZAp">
                      <node concept="3cpWsn" id="4E8FPsxBfQ9" role="3cpWs9">
                        <property role="TrG5h" value="pcl" />
                        <node concept="3uibUv" id="4E8FPsxBd1b" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
                        </node>
                        <node concept="1rXfSq" id="4E8FPsxBfQa" role="33vP2m">
                          <ref role="37wK5l" node="1ROuiHXyKC" resolve="pluginClassLoader" />
                          <node concept="37vLTw" id="4E8FPsxBfQb" role="37wK5m">
                            <ref role="3cqZAo" node="4E8FPsxAOBY" resolve="dep" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="4E8FPsxCj6J" role="3cqZAp">
                      <node concept="1PaTwC" id="4E8FPsxCj6K" role="1aUNEU">
                        <node concept="3oM_SD" id="4E8FPsxClGl" role="1PaTwD">
                          <property role="3oM_SC" value="don't" />
                        </node>
                        <node concept="3oM_SD" id="4E8FPsxClGn" role="1PaTwD">
                          <property role="3oM_SC" value="treat" />
                        </node>
                        <node concept="3oM_SD" id="4E8FPsxClOI" role="1PaTwD">
                          <property role="3oM_SC" value="missing/unknown" />
                        </node>
                        <node concept="3oM_SD" id="4E8FPsxClOM" role="1PaTwD">
                          <property role="3oM_SC" value="plugin" />
                        </node>
                        <node concept="3oM_SD" id="4E8FPsxClOR" role="1PaTwD">
                          <property role="3oM_SC" value="as" />
                        </node>
                        <node concept="3oM_SD" id="4E8FPsxClOX" role="1PaTwD">
                          <property role="3oM_SC" value="error;" />
                        </node>
                        <node concept="3oM_SD" id="4E8FPsxClP4" role="1PaTwD">
                          <property role="3oM_SC" value="PlatformPlugins" />
                        </node>
                        <node concept="3oM_SD" id="4E8FPsxClPc" role="1PaTwD">
                          <property role="3oM_SC" value="is" />
                        </node>
                        <node concept="3oM_SD" id="4E8FPsxClPE" role="1PaTwD">
                          <property role="3oM_SC" value="not" />
                        </node>
                        <node concept="3oM_SD" id="4E8FPsxClPO" role="1PaTwD">
                          <property role="3oM_SC" value="a" />
                        </node>
                        <node concept="3oM_SD" id="4E8FPsxClPZ" role="1PaTwD">
                          <property role="3oM_SC" value="sophisticated" />
                        </node>
                        <node concept="3oM_SD" id="4E8FPsxClQb" role="1PaTwD">
                          <property role="3oM_SC" value="plugin" />
                        </node>
                        <node concept="3oM_SD" id="4E8FPsxClQo" role="1PaTwD">
                          <property role="3oM_SC" value="handling" />
                        </node>
                        <node concept="3oM_SD" id="4E8FPsxClQA" role="1PaTwD">
                          <property role="3oM_SC" value="mechanism," />
                        </node>
                        <node concept="3oM_SD" id="4E8FPsxClQP" role="1PaTwD">
                          <property role="3oM_SC" value="just" />
                        </node>
                        <node concept="3oM_SD" id="4E8FPsxClRm" role="1PaTwD">
                          <property role="3oM_SC" value="very" />
                        </node>
                        <node concept="3oM_SD" id="4E8FPsxClRC" role="1PaTwD">
                          <property role="3oM_SC" value="simplistic" />
                        </node>
                        <node concept="3oM_SD" id="4E8FPsxClRV" role="1PaTwD">
                          <property role="3oM_SC" value="code" />
                        </node>
                        <node concept="3oM_SD" id="4E8FPsxClSf" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="4E8FPsxClS$" role="1PaTwD">
                          <property role="3oM_SC" value="get" />
                        </node>
                        <node concept="3oM_SD" id="4E8FPsxClSU" role="1PaTwD">
                          <property role="3oM_SC" value="MPS" />
                        </node>
                        <node concept="3oM_SD" id="4E8FPsxClTh" role="1PaTwD">
                          <property role="3oM_SC" value="going" />
                        </node>
                        <node concept="3oM_SD" id="4E8FPsxClR5" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="4E8FPsxBDad" role="3cqZAp">
                      <node concept="3clFbS" id="4E8FPsxBDaf" role="3clFbx">
                        <node concept="3N13vt" id="4E8FPsxC26y" role="3cqZAp" />
                      </node>
                      <node concept="3clFbC" id="4E8FPsxBP0n" role="3clFbw">
                        <node concept="10Nm6u" id="4E8FPsxBW0K" role="3uHU7w" />
                        <node concept="37vLTw" id="4E8FPsxBKcu" role="3uHU7B">
                          <ref role="3cqZAo" node="4E8FPsxBfQ9" resolve="pcl" />
                        </node>
                      </node>
                    </node>
                    <node concept="3J1_TO" id="4E8FPsxEozB" role="3cqZAp">
                      <node concept="3clFbS" id="4E8FPsxEozC" role="1zxBo7">
                        <node concept="3cpWs8" id="4E8FPsxD3c9" role="3cqZAp">
                          <node concept="3cpWsn" id="4E8FPsxD3ca" role="3cpWs9">
                            <property role="TrG5h" value="depClass" />
                            <node concept="3uibUv" id="4E8FPsxD0Bn" role="1tU5fm">
                              <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                              <node concept="3qTvmN" id="4E8FPsxD0Bq" role="11_B2D" />
                            </node>
                            <node concept="2OqwBi" id="4E8FPsxD3cb" role="33vP2m">
                              <node concept="37vLTw" id="4E8FPsxD3cc" role="2Oq$k0">
                                <ref role="3cqZAo" node="4E8FPsxBfQ9" resolve="pcl" />
                              </node>
                              <node concept="liA8E" id="4E8FPsxD3cd" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~ClassLoader.loadClass(java.lang.String)" resolve="loadClass" />
                                <node concept="37vLTw" id="4E8FPsxD3ce" role="37wK5m">
                                  <ref role="3cqZAo" node="4E8FPsxCF_$" resolve="className" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="4E8FPsxDlR0" role="3cqZAp">
                          <node concept="3clFbS" id="4E8FPsxDlR2" role="3clFbx">
                            <node concept="3cpWs6" id="4E8FPsxDNvK" role="3cqZAp">
                              <node concept="37vLTw" id="4E8FPsxDVTl" role="3cqZAk">
                                <ref role="3cqZAo" node="4E8FPsxD3ca" resolve="depClass" />
                              </node>
                            </node>
                          </node>
                          <node concept="3y3z36" id="4E8FPsxD$HW" role="3clFbw">
                            <node concept="10Nm6u" id="4E8FPsxDGo9" role="3uHU7w" />
                            <node concept="37vLTw" id="4E8FPsxDu2A" role="3uHU7B">
                              <ref role="3cqZAo" node="4E8FPsxD3ca" resolve="depClass" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3uVAMA" id="4E8FPsxEozE" role="1zxBo5">
                        <node concept="3clFbS" id="4E8FPsxEozF" role="1zc67A">
                          <node concept="3SKdUt" id="4E8FPsxEIgF" role="3cqZAp">
                            <node concept="1PaTwC" id="4E8FPsxEIgG" role="1aUNEU">
                              <node concept="3oM_SD" id="4E8FPsxEN5j" role="1PaTwD">
                                <property role="3oM_SC" value="ignore," />
                              </node>
                              <node concept="3oM_SD" id="4E8FPsxEN5l" role="1PaTwD">
                                <property role="3oM_SC" value="just" />
                              </node>
                              <node concept="3oM_SD" id="4E8FPsxEN5o" role="1PaTwD">
                                <property role="3oM_SC" value="move" />
                              </node>
                              <node concept="3oM_SD" id="4E8FPsxEN5s" role="1PaTwD">
                                <property role="3oM_SC" value="on" />
                              </node>
                              <node concept="3oM_SD" id="4E8FPsxEN5x" role="1PaTwD">
                                <property role="3oM_SC" value="to" />
                              </node>
                              <node concept="3oM_SD" id="4E8FPsxEN5B" role="1PaTwD">
                                <property role="3oM_SC" value="the" />
                              </node>
                              <node concept="3oM_SD" id="4E8FPsxEN5I" role="1PaTwD">
                                <property role="3oM_SC" value="next" />
                              </node>
                              <node concept="3oM_SD" id="4E8FPsxEN5Q" role="1PaTwD">
                                <property role="3oM_SC" value="dependency" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="XOnhg" id="4E8FPsxEozG" role="1zc67B">
                          <property role="TrG5h" value="e" />
                          <node concept="nSUau" id="4E8FPsxEozH" role="1tU5fm">
                            <node concept="3uibUv" id="4E8FPsxEozD" role="nSUat">
                              <ref role="3uigEE" to="wyt6:~ClassNotFoundException" resolve="ClassNotFoundException" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="4E8FPsxAOBY" role="1Duv9x">
                    <property role="TrG5h" value="dep" />
                    <node concept="17QB3L" id="4E8FPsxAOC2" role="1tU5fm" />
                  </node>
                  <node concept="2OqwBi" id="4E8FPsxAOC3" role="1DdaDG">
                    <node concept="37vLTw" id="4E8FPsxAOC4" role="2Oq$k0">
                      <ref role="3cqZAo" node="4E8FPsx_olu" resolve="d" />
                    </node>
                    <node concept="2OwXpG" id="4E8FPsxAOC5" role="2OqNvi">
                      <ref role="2Oxat5" node="4E8FPsxrCq_" resolve="dependencies" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="4E8FPsxEdK_" role="3cqZAp">
                  <node concept="10Nm6u" id="4E8FPsxEjAM" role="3cqZAk" />
                </node>
              </node>
              <node concept="2AHcQZ" id="4E8FPsx_oly" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4E8FPsx_0WP" role="jymVt" />
    <node concept="3clFb_" id="1ROuiHXSUR" role="jymVt">
      <property role="TrG5h" value="buildClassLoaders" />
      <node concept="3cqZAl" id="1ROuiHXSUT" role="3clF45" />
      <node concept="3clFbS" id="1ROuiHXSUU" role="3clF47">
        <node concept="1DcWWT" id="1ROuiHYfwr" role="3cqZAp">
          <node concept="3cpWsn" id="1ROuiHYfws" role="1Duv9x">
            <property role="TrG5h" value="pd" />
            <node concept="3uibUv" id="1ROuiHYfDc" role="1tU5fm">
              <ref role="3uigEE" node="1ROuiHVPT6" resolve="PlatformPlugins.Descriptor" />
            </node>
          </node>
          <node concept="2OqwBi" id="1ROuiHZqY1" role="1DdaDG">
            <node concept="37vLTw" id="1ROuiHZqvS" role="2Oq$k0">
              <ref role="3cqZAo" node="1ROuiHVVtv" resolve="myPlugins" />
            </node>
            <node concept="liA8E" id="1ROuiHZrxm" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.values()" resolve="values" />
            </node>
          </node>
          <node concept="3clFbS" id="1ROuiHYfwu" role="2LFqv$">
            <node concept="3cpWs8" id="1ROuiHYgna" role="3cqZAp">
              <node concept="3cpWsn" id="1ROuiHYgnb" role="3cpWs9">
                <property role="TrG5h" value="cl" />
                <node concept="3uibUv" id="1ROuiHYgn6" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
                </node>
                <node concept="1rXfSq" id="1ROuiHYgnc" role="33vP2m">
                  <ref role="37wK5l" node="1ROuiHY7c0" resolve="createPluginClassLoader" />
                  <node concept="37vLTw" id="1ROuiHYgnd" role="37wK5m">
                    <ref role="3cqZAo" node="1ROuiHYfws" resolve="pd" />
                  </node>
                  <node concept="37vLTw" id="1ROuiHYgne" role="37wK5m">
                    <ref role="3cqZAo" node="1ROuiHXW$X" resolve="rootClassLoader" />
                  </node>
                  <node concept="3K4zz7" id="4E8FPsxA$V4" role="37wK5m">
                    <node concept="10Nm6u" id="4E8FPsxACMr" role="3K4E3e" />
                    <node concept="37vLTw" id="4E8FPsxAGCG" role="3K4GZi">
                      <ref role="3cqZAo" node="4E8FPsx$VO1" resolve="myDependencyResolver" />
                    </node>
                    <node concept="22lmx$" id="4E8FPsxA9Bp" role="3K4Cdx">
                      <node concept="2OqwBi" id="4E8FPsxAoHQ" role="3uHU7w">
                        <node concept="2OqwBi" id="4E8FPsxAfGe" role="2Oq$k0">
                          <node concept="37vLTw" id="4E8FPsxAdpa" role="2Oq$k0">
                            <ref role="3cqZAo" node="1ROuiHYfws" resolve="pd" />
                          </node>
                          <node concept="2OwXpG" id="4E8FPsxAkFm" role="2OqNvi">
                            <ref role="2Oxat5" node="4E8FPsxrCq_" resolve="dependencies" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4E8FPsxAviA" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
                        </node>
                      </node>
                      <node concept="3clFbC" id="4E8FPsxA23W" role="3uHU7B">
                        <node concept="2OqwBi" id="4E8FPsx_Sm6" role="3uHU7B">
                          <node concept="37vLTw" id="4E8FPsx_P7H" role="2Oq$k0">
                            <ref role="3cqZAo" node="1ROuiHYfws" resolve="pd" />
                          </node>
                          <node concept="2OwXpG" id="4E8FPsx_WiL" role="2OqNvi">
                            <ref role="2Oxat5" node="4E8FPsxrCq_" resolve="dependencies" />
                          </node>
                        </node>
                        <node concept="10Nm6u" id="4E8FPsxA5rZ" role="3uHU7w" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1ROuiHYgxG" role="3cqZAp">
              <node concept="2OqwBi" id="1ROuiHYgUW" role="3clFbG">
                <node concept="37vLTw" id="1ROuiHYgxD" role="2Oq$k0">
                  <ref role="3cqZAo" node="1ROuiHXXNJ" resolve="myLoaders" />
                </node>
                <node concept="liA8E" id="1ROuiHYjsx" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="2OqwBi" id="1ROuiHYk5L" role="37wK5m">
                    <node concept="37vLTw" id="1ROuiHYj_H" role="2Oq$k0">
                      <ref role="3cqZAo" node="1ROuiHYfws" resolve="pd" />
                    </node>
                    <node concept="2OwXpG" id="1ROuiHYkjX" role="2OqNvi">
                      <ref role="2Oxat5" node="1ROuiHVQbf" resolve="id" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1ROuiHYk_5" role="37wK5m">
                    <ref role="3cqZAo" node="1ROuiHYgnb" resolve="cl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1ROuiHXW$X" role="3clF46">
        <property role="TrG5h" value="rootClassLoader" />
        <node concept="3uibUv" id="1ROuiHXW$W" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ROuiHWiAF" role="jymVt" />
    <node concept="3clFb_" id="1ROuiHWjgk" role="jymVt">
      <property role="TrG5h" value="found" />
      <node concept="3uibUv" id="1ROuiHWjOy" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="1ROuiHWkjP" role="11_B2D">
          <ref role="3uigEE" node="1ROuiHVPT6" resolve="PlatformPlugins.Descriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="1ROuiHWjgn" role="3clF47">
        <node concept="3SKdUt" id="1ROuiHWyo_" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9ng" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9nh" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ni" role="1PaTwD">
              <property role="3oM_SC" value="provisional" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nj" role="1PaTwD">
              <property role="3oM_SC" value="method," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nk" role="1PaTwD">
              <property role="3oM_SC" value="just" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nl" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nm" role="1PaTwD">
              <property role="3oM_SC" value="move" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nn" role="1PaTwD">
              <property role="3oM_SC" value="forward." />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9no" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9np" role="1PaTwD">
              <property role="3oM_SC" value="intend" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nq" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nr" role="1PaTwD">
              <property role="3oM_SC" value="hide" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ns" role="1PaTwD">
              <property role="3oM_SC" value="implementation" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nt" role="1PaTwD">
              <property role="3oM_SC" value="structures" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nu" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nv" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nw" role="1PaTwD">
              <property role="3oM_SC" value="outer" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nx" role="1PaTwD">
              <property role="3oM_SC" value="world" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ny" role="1PaTwD">
              <property role="3oM_SC" value="eventually." />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1ROuiHWlAw" role="3cqZAp">
          <node concept="2YIFZM" id="1ROuiHWmrm" role="3cqZAk">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableCollection(java.util.Collection)" resolve="unmodifiableCollection" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="2OqwBi" id="1ROuiHWtYz" role="37wK5m">
              <node concept="37vLTw" id="1ROuiHWns9" role="2Oq$k0">
                <ref role="3cqZAo" node="1ROuiHVVtv" resolve="myPlugins" />
              </node>
              <node concept="liA8E" id="1ROuiHWxi5" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.values()" resolve="values" />
              </node>
            </node>
            <node concept="3uibUv" id="1ROuiHWov8" role="3PaCim">
              <ref role="3uigEE" node="1ROuiHVPT6" resolve="PlatformPlugins.Descriptor" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ROuiHXy2G" role="jymVt" />
    <node concept="3clFb_" id="1ROuiHXyKC" role="jymVt">
      <property role="TrG5h" value="pluginClassLoader" />
      <node concept="3uibUv" id="1ROuiHXztO" role="3clF45">
        <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
      </node>
      <node concept="3clFbS" id="1ROuiHXyKF" role="3clF47">
        <node concept="3clFbF" id="1ROuiHXZV6" role="3cqZAp">
          <node concept="2OqwBi" id="1ROuiHY0cr" role="3clFbG">
            <node concept="37vLTw" id="1ROuiHXZV5" role="2Oq$k0">
              <ref role="3cqZAo" node="1ROuiHXXNJ" resolve="myLoaders" />
            </node>
            <node concept="liA8E" id="1ROuiHY30Q" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
              <node concept="37vLTw" id="1ROuiHY38F" role="37wK5m">
                <ref role="3cqZAo" node="1ROuiHX_Yp" resolve="id" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1ROuiHX_Yp" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="1ROuiHX_Yo" role="1tU5fm" />
      </node>
      <node concept="2AHcQZ" id="1ROuiHY3hl" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="1ROuiHUOTY" role="jymVt" />
    <node concept="3clFb_" id="1ROuiHUP4n" role="jymVt">
      <property role="TrG5h" value="detectClasspath" />
      <node concept="3clFbS" id="1ROuiHUP4q" role="3clF47">
        <node concept="3SKdUt" id="1ROuiHUPp3" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9nz" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9n$" role="1PaTwD">
              <property role="3oM_SC" value="copied" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9n_" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nA" role="1PaTwD">
              <property role="3oM_SC" value="IdeaPluginDescriptorImpl.getClassPath()" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nB" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nC" role="1PaTwD">
              <property role="3oM_SC" value="match" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nD" role="1PaTwD">
              <property role="3oM_SC" value="cp" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nE" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nF" role="1PaTwD">
              <property role="3oM_SC" value="either" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nG" role="1PaTwD">
              <property role="3oM_SC" value="base" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nH" role="1PaTwD">
              <property role="3oM_SC" value="platform" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1ROuiHUYRi" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9nI" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9nJ" role="1PaTwD">
              <property role="3oM_SC" value="even" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nK" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nL" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nM" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nN" role="1PaTwD">
              <property role="3oM_SC" value="support" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nO" role="1PaTwD">
              <property role="3oM_SC" value=".zip-bundled" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nP" role="1PaTwD">
              <property role="3oM_SC" value="plugins" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nQ" role="1PaTwD">
              <property role="3oM_SC" value="(!isDirectory" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nR" role="1PaTwD">
              <property role="3oM_SC" value="branch)" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1ROuiHUPOA" role="3cqZAp">
          <node concept="2OqwBi" id="1ROuiHUTFv" role="3clFbw">
            <node concept="37vLTw" id="1ROuiHUU8u" role="2Oq$k0">
              <ref role="3cqZAo" node="1ROuiHUPdm" resolve="pluginLocation" />
            </node>
            <node concept="liA8E" id="1ROuiHUTFw" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~File.isDirectory()" resolve="isDirectory" />
            </node>
          </node>
          <node concept="9aQIb" id="1ROuiHUPPM" role="9aQIa">
            <node concept="3clFbS" id="1ROuiHUPPN" role="9aQI4">
              <node concept="3cpWs6" id="1ROuiHUPPO" role="3cqZAp">
                <node concept="2YIFZM" id="1ROuiHUQzX" role="3cqZAk">
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                  <node concept="37vLTw" id="1ROuiHV3Qm" role="37wK5m">
                    <ref role="3cqZAo" node="1ROuiHUPdm" resolve="pluginLocation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1ROuiHUPOD" role="3clFbx">
            <node concept="3cpWs8" id="1ROuiHUPOF" role="3cqZAp">
              <node concept="3cpWsn" id="1ROuiHUPOE" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="result" />
                <node concept="3uibUv" id="1ROuiHUPOG" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="1ROuiHUPOH" role="11_B2D">
                    <ref role="3uigEE" to="guwi:~File" resolve="File" />
                  </node>
                </node>
                <node concept="2ShNRf" id="1ROuiHURbP" role="33vP2m">
                  <node concept="1pGfFk" id="1ROuiHURbU" role="2ShVmc">
                    <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                    <node concept="3uibUv" id="1ROuiHUXHO" role="1pMfVU">
                      <ref role="3uigEE" to="guwi:~File" resolve="File" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1ROuiHUPOK" role="3cqZAp">
              <node concept="3cpWsn" id="1ROuiHUPOJ" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="classesDir" />
                <node concept="3uibUv" id="1ROuiHUPOL" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~File" resolve="File" />
                </node>
                <node concept="2ShNRf" id="1ROuiHUQ$Z" role="33vP2m">
                  <node concept="1pGfFk" id="1ROuiHUQ_B" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                    <node concept="37vLTw" id="1ROuiHUYh5" role="37wK5m">
                      <ref role="3cqZAo" node="1ROuiHUPdm" resolve="pluginLocation" />
                    </node>
                    <node concept="Xl_RD" id="1ROuiHUQ_F" role="37wK5m">
                      <property role="Xl_RC" value="classes" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1ROuiHUPOP" role="3cqZAp">
              <node concept="2OqwBi" id="1ROuiHUQEI" role="3clFbw">
                <node concept="37vLTw" id="1ROuiHUQEH" role="2Oq$k0">
                  <ref role="3cqZAo" node="1ROuiHUPOJ" resolve="classesDir" />
                </node>
                <node concept="liA8E" id="1ROuiHUQEJ" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
                </node>
              </node>
              <node concept="3clFbS" id="1ROuiHUPOS" role="3clFbx">
                <node concept="3clFbF" id="1ROuiHUPOT" role="3cqZAp">
                  <node concept="2OqwBi" id="1ROuiHUR5a" role="3clFbG">
                    <node concept="37vLTw" id="1ROuiHUR59" role="2Oq$k0">
                      <ref role="3cqZAo" node="1ROuiHUPOE" resolve="result" />
                    </node>
                    <node concept="liA8E" id="1ROuiHUR5b" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="37vLTw" id="1ROuiHUR5c" role="37wK5m">
                        <ref role="3cqZAo" node="1ROuiHUPOJ" resolve="classesDir" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1ROuiHUPOX" role="3cqZAp">
              <node concept="3cpWsn" id="1ROuiHUPOW" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="files" />
                <node concept="10Q1$e" id="1ROuiHUPOZ" role="1tU5fm">
                  <node concept="3uibUv" id="1ROuiHUPOY" role="10Q1$1">
                    <ref role="3uigEE" to="guwi:~File" resolve="File" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1ROuiHUPP0" role="33vP2m">
                  <node concept="2ShNRf" id="1ROuiHUQRN" role="2Oq$k0">
                    <node concept="1pGfFk" id="1ROuiHUQSr" role="2ShVmc">
                      <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                      <node concept="37vLTw" id="1ROuiHUZgh" role="37wK5m">
                        <ref role="3cqZAo" node="1ROuiHUPdm" resolve="pluginLocation" />
                      </node>
                      <node concept="Xl_RD" id="1ROuiHUQSv" role="37wK5m">
                        <property role="Xl_RC" value="lib" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1ROuiHUPP4" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~File.listFiles()" resolve="listFiles" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1ROuiHUPP5" role="3cqZAp">
              <node concept="1Wc70l" id="1ROuiHUPP6" role="3clFbw">
                <node concept="3y3z36" id="1ROuiHUPP7" role="3uHU7B">
                  <node concept="37vLTw" id="1ROuiHUPP8" role="3uHU7B">
                    <ref role="3cqZAo" node="1ROuiHUPOW" resolve="files" />
                  </node>
                  <node concept="10Nm6u" id="1ROuiHUPP9" role="3uHU7w" />
                </node>
                <node concept="3eOSWO" id="1ROuiHUPPa" role="3uHU7w">
                  <node concept="2OqwBi" id="1ROuiHUQq4" role="3uHU7B">
                    <node concept="37vLTw" id="1ROuiHUQq3" role="2Oq$k0">
                      <ref role="3cqZAo" node="1ROuiHUPOW" resolve="files" />
                    </node>
                    <node concept="1Rwk04" id="1ROuiHUT3J" role="2OqNvi" />
                  </node>
                  <node concept="3cmrfG" id="1ROuiHUPPc" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="1ROuiHUPPe" role="3clFbx">
                <node concept="1DcWWT" id="1ROuiHUPPf" role="3cqZAp">
                  <node concept="37vLTw" id="1ROuiHUPPJ" role="1DdaDG">
                    <ref role="3cqZAo" node="1ROuiHUPOW" resolve="files" />
                  </node>
                  <node concept="3cpWsn" id="1ROuiHUPPG" role="1Duv9x">
                    <property role="3TUv4t" value="true" />
                    <property role="TrG5h" value="f" />
                    <node concept="3uibUv" id="1ROuiHUPPI" role="1tU5fm">
                      <ref role="3uigEE" to="guwi:~File" resolve="File" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="1ROuiHUPPh" role="2LFqv$">
                    <node concept="3clFbJ" id="1ROuiHUPPi" role="3cqZAp">
                      <node concept="2OqwBi" id="1ROuiHUQnW" role="3clFbw">
                        <node concept="37vLTw" id="1ROuiHUQnV" role="2Oq$k0">
                          <ref role="3cqZAo" node="1ROuiHUPPG" resolve="f" />
                        </node>
                        <node concept="liA8E" id="1ROuiHUQnX" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~File.isFile()" resolve="isFile" />
                        </node>
                      </node>
                      <node concept="9aQIb" id="1ROuiHUPPB" role="9aQIa">
                        <node concept="3clFbS" id="1ROuiHUPPC" role="9aQI4">
                          <node concept="3clFbF" id="1ROuiHUPPD" role="3cqZAp">
                            <node concept="2OqwBi" id="1ROuiHUQYs" role="3clFbG">
                              <node concept="37vLTw" id="1ROuiHUQYr" role="2Oq$k0">
                                <ref role="3cqZAo" node="1ROuiHUPOE" resolve="result" />
                              </node>
                              <node concept="liA8E" id="1ROuiHUQYt" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                <node concept="37vLTw" id="1ROuiHUQYu" role="37wK5m">
                                  <ref role="3cqZAo" node="1ROuiHUPPG" resolve="f" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="1ROuiHUPPl" role="3clFbx">
                        <node concept="3cpWs8" id="1ROuiHUPPn" role="3cqZAp">
                          <node concept="3cpWsn" id="1ROuiHUPPm" role="3cpWs9">
                            <property role="3TUv4t" value="true" />
                            <property role="TrG5h" value="name" />
                            <node concept="3uibUv" id="1ROuiHUPPo" role="1tU5fm">
                              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                            </node>
                            <node concept="2OqwBi" id="4B1FZuRhmXl" role="33vP2m">
                              <node concept="2OqwBi" id="1ROuiHUQp0" role="2Oq$k0">
                                <node concept="37vLTw" id="1ROuiHUQoZ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1ROuiHUPPG" resolve="f" />
                                </node>
                                <node concept="liA8E" id="1ROuiHUQp1" role="2OqNvi">
                                  <ref role="37wK5l" to="guwi:~File.getName()" resolve="getName" />
                                </node>
                              </node>
                              <node concept="liA8E" id="4B1FZuRhx2M" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.toLowerCase(java.util.Locale)" resolve="toLowerCase" />
                                <node concept="10M0yZ" id="4B1FZuRhUiF" role="37wK5m">
                                  <ref role="3cqZAo" to="33ny:~Locale.ENGLISH" resolve="ENGLISH" />
                                  <ref role="1PxDUh" to="33ny:~Locale" resolve="Locale" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="1ROuiHUPPq" role="3cqZAp">
                          <node concept="22lmx$" id="1ROuiHUPPr" role="3clFbw">
                            <node concept="2OqwBi" id="4B1FZuRi5XH" role="3uHU7B">
                              <node concept="37vLTw" id="4B1FZuRi17Q" role="2Oq$k0">
                                <ref role="3cqZAo" node="1ROuiHUPPm" resolve="name" />
                              </node>
                              <node concept="liA8E" id="4B1FZuRie0n" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                                <node concept="Xl_RD" id="4B1FZuRildT" role="37wK5m">
                                  <property role="Xl_RC" value=".jar" />
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="4B1FZuRiC19" role="3uHU7w">
                              <node concept="37vLTw" id="4B1FZuRizbf" role="2Oq$k0">
                                <ref role="3cqZAo" node="1ROuiHUPPm" resolve="name" />
                              </node>
                              <node concept="liA8E" id="4B1FZuRiJyV" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                                <node concept="Xl_RD" id="4B1FZuRiR9V" role="37wK5m">
                                  <property role="Xl_RC" value=".zip" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="1ROuiHUPPz" role="3clFbx">
                            <node concept="3clFbF" id="1ROuiHUPP$" role="3cqZAp">
                              <node concept="2OqwBi" id="1ROuiHUQKT" role="3clFbG">
                                <node concept="37vLTw" id="1ROuiHUQKS" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1ROuiHUPOE" resolve="result" />
                                </node>
                                <node concept="liA8E" id="1ROuiHUQKU" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                  <node concept="37vLTw" id="1ROuiHUQKV" role="37wK5m">
                                    <ref role="3cqZAo" node="1ROuiHUPPG" resolve="f" />
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
            <node concept="3SKdUt" id="3bu741OyefU" role="3cqZAp">
              <node concept="1PaTwC" id="3bu741OyefV" role="1aUNEU">
                <node concept="3oM_SD" id="3bu741OyefX" role="1PaTwD">
                  <property role="3oM_SC" value="Since" />
                </node>
                <node concept="3oM_SD" id="3bu741OyefY" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="3bu741OyefZ" role="1PaTwD">
                  <property role="3oM_SC" value="platform's" />
                </node>
                <node concept="3oM_SD" id="3bu741Oyeg0" role="1PaTwD">
                  <property role="3oM_SC" value="v2" />
                </node>
                <node concept="3oM_SD" id="3bu741Oyeg1" role="1PaTwD">
                  <property role="3oM_SC" value="plugin" />
                </node>
                <node concept="3oM_SD" id="3bu741Oyeg2" role="1PaTwD">
                  <property role="3oM_SC" value="model," />
                </node>
                <node concept="3oM_SD" id="3bu741Oyeg3" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="3bu741Oyeg4" role="1PaTwD">
                  <property role="3oM_SC" value="plugin's" />
                </node>
                <node concept="3oM_SD" id="3bu741Oyeg5" role="1PaTwD">
                  <property role="3oM_SC" value="content" />
                </node>
                <node concept="3oM_SD" id="3bu741Oyeg6" role="1PaTwD">
                  <property role="3oM_SC" value="modules" />
                </node>
                <node concept="3oM_SD" id="3bu741Oyeg7" role="1PaTwD">
                  <property role="3oM_SC" value="are" />
                </node>
                <node concept="3oM_SD" id="3bu741Oyeg8" role="1PaTwD">
                  <property role="3oM_SC" value="packaged" />
                </node>
                <node concept="3oM_SD" id="3bu741Oyeg9" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                </node>
                <node concept="3oM_SD" id="3bu741Oyega" role="1PaTwD">
                  <property role="3oM_SC" value="lib/modules/*.jar" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="3bu741Oyegb" role="3cqZAp">
              <node concept="1PaTwC" id="3bu741Oyegc" role="1aUNEU">
                <node concept="3oM_SD" id="3bu741Oyege" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="3bu741Oyegf" role="1PaTwD">
                  <property role="3oM_SC" value="are" />
                </node>
                <node concept="3oM_SD" id="3bu741Oyegg" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="3bu741Oyegh" role="1PaTwD">
                  <property role="3oM_SC" value="part" />
                </node>
                <node concept="3oM_SD" id="3bu741Oyegi" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="3bu741Oyegj" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="3bu741Oyegk" role="1PaTwD">
                  <property role="3oM_SC" value="plugin's" />
                </node>
                <node concept="3oM_SD" id="3bu741Oyegl" role="1PaTwD">
                  <property role="3oM_SC" value="main" />
                </node>
                <node concept="3oM_SD" id="3bu741Oyegm" role="1PaTwD">
                  <property role="3oM_SC" value="classpath." />
                </node>
                <node concept="3oM_SD" id="3bu741Oyegn" role="1PaTwD">
                  <property role="3oM_SC" value="As" />
                </node>
                <node concept="3oM_SD" id="3bu741Oyego" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="3bu741Oyegp" role="1PaTwD">
                  <property role="3oM_SC" value="keep" />
                </node>
                <node concept="3oM_SD" id="3bu741Oyegq" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="3bu741Oyegr" role="1PaTwD">
                  <property role="3oM_SC" value="single" />
                </node>
                <node concept="3oM_SD" id="3bu741Oyegs" role="1PaTwD">
                  <property role="3oM_SC" value="flat" />
                </node>
                <node concept="3oM_SD" id="3bu741Oyegt" role="1PaTwD">
                  <property role="3oM_SC" value="classloader" />
                </node>
                <node concept="3oM_SD" id="3bu741Oyegu" role="1PaTwD">
                  <property role="3oM_SC" value="per" />
                </node>
                <node concept="3oM_SD" id="3bu741Oyegv" role="1PaTwD">
                  <property role="3oM_SC" value="plugin" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="3bu741Oyegw" role="3cqZAp">
              <node concept="1PaTwC" id="3bu741Oyegx" role="1aUNEU">
                <node concept="3oM_SD" id="3bu741Oyegz" role="1PaTwD">
                  <property role="3oM_SC" value="(see" />
                </node>
                <node concept="3oM_SD" id="3bu741Oyeg$" role="1PaTwD">
                  <property role="3oM_SC" value="createPluginClassLoader)," />
                </node>
                <node concept="3oM_SD" id="3bu741Oyeg_" role="1PaTwD">
                  <property role="3oM_SC" value="module" />
                </node>
                <node concept="3oM_SD" id="3bu741OyegA" role="1PaTwD">
                  <property role="3oM_SC" value="jars" />
                </node>
                <node concept="3oM_SD" id="3bu741OyegB" role="1PaTwD">
                  <property role="3oM_SC" value="are" />
                </node>
                <node concept="3oM_SD" id="3bu741OyegC" role="1PaTwD">
                  <property role="3oM_SC" value="exposed" />
                </node>
                <node concept="3oM_SD" id="3bu741OyegD" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                </node>
                <node concept="3oM_SD" id="3bu741OyegE" role="1PaTwD">
                  <property role="3oM_SC" value="regular" />
                </node>
                <node concept="3oM_SD" id="3bu741OyegF" role="1PaTwD">
                  <property role="3oM_SC" value="classpath" />
                </node>
                <node concept="3oM_SD" id="3bu741OyegG" role="1PaTwD">
                  <property role="3oM_SC" value="entries" />
                </node>
                <node concept="3oM_SD" id="3bu741OyegH" role="1PaTwD">
                  <property role="3oM_SC" value="here." />
                </node>
                <node concept="3oM_SD" id="3bu741OyegI" role="1PaTwD">
                  <property role="3oM_SC" value="Otherwise" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="3bu741OyegJ" role="3cqZAp">
              <node concept="1PaTwC" id="3bu741OyegK" role="1aUNEU">
                <node concept="3oM_SD" id="3bu741OyegM" role="1PaTwD">
                  <property role="3oM_SC" value="classes" />
                </node>
                <node concept="3oM_SD" id="3bu741OyegN" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="3bu741OyegO" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="3bu741OyegP" role="1PaTwD">
                  <property role="3oM_SC" value="content" />
                </node>
                <node concept="3oM_SD" id="3bu741OyegQ" role="1PaTwD">
                  <property role="3oM_SC" value="module" />
                </node>
                <node concept="3oM_SD" id="3bu741OyegR" role="1PaTwD">
                  <property role="3oM_SC" value="can" />
                </node>
                <node concept="3oM_SD" id="3bu741OyegS" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="3bu741OyegT" role="1PaTwD">
                  <property role="3oM_SC" value="be" />
                </node>
                <node concept="3oM_SD" id="3bu741OyegU" role="1PaTwD">
                  <property role="3oM_SC" value="resolved," />
                </node>
                <node concept="3oM_SD" id="3bu741OyegV" role="1PaTwD">
                  <property role="3oM_SC" value="e.g." />
                </node>
                <node concept="3oM_SD" id="3bu741OyegW" role="1PaTwD">
                  <property role="3oM_SC" value="git4idea.GitRemoteBranch" />
                </node>
                <node concept="3oM_SD" id="3bu741OyegX" role="1PaTwD">
                  <property role="3oM_SC" value="coming" />
                </node>
                <node concept="3oM_SD" id="3bu741OyegY" role="1PaTwD">
                  <property role="3oM_SC" value="from" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="3bu741OyegZ" role="3cqZAp">
              <node concept="1PaTwC" id="3bu741Oyeh0" role="1aUNEU">
                <node concept="3oM_SD" id="3bu741Oyeh2" role="1PaTwD">
                  <property role="3oM_SC" value="vcs-git/lib/modules/intellij.vcs.git.shared.jar," />
                </node>
                <node concept="3oM_SD" id="3bu741Oyeh3" role="1PaTwD">
                  <property role="3oM_SC" value="see" />
                </node>
                <node concept="3oM_SD" id="3bu741Oyeh4" role="1PaTwD">
                  <property role="3oM_SC" value="MPS-39928" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3bu741Oyefn" role="3cqZAp">
              <node concept="3cpWsn" id="3bu741Oyefm" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="moduleFiles" />
                <node concept="10Q1$e" id="3bu741Oyefp" role="1tU5fm">
                  <node concept="3uibUv" id="3bu741Oyefo" role="10Q1$1">
                    <ref role="3uigEE" to="guwi:~File" resolve="File" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3bu741Oyi5Z" role="33vP2m">
                  <node concept="2ShNRf" id="3bu741Oyi4v" role="2Oq$k0">
                    <node concept="1pGfFk" id="3bu741Oyi5a" role="2ShVmc">
                      <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                      <node concept="2ShNRf" id="3bu741Oyi8U" role="37wK5m">
                        <node concept="1pGfFk" id="3bu741Oyi9e" role="2ShVmc">
                          <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                          <node concept="37vLTw" id="3bu741Oyi9f" role="37wK5m">
                            <ref role="3cqZAo" node="1ROuiHUPdm" resolve="pluginLocation" />
                          </node>
                          <node concept="Xl_RD" id="3bu741Oyi9g" role="37wK5m">
                            <property role="Xl_RC" value="lib" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="3bu741Oyi5e" role="37wK5m">
                        <property role="Xl_RC" value="modules" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3bu741Oyi60" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~File.listFiles()" resolve="listFiles" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3bu741Oyefw" role="3cqZAp">
              <node concept="3y3z36" id="3bu741Oyefx" role="3clFbw">
                <node concept="37vLTw" id="3bu741Oyefy" role="3uHU7B">
                  <ref role="3cqZAo" node="3bu741Oyefm" resolve="moduleFiles" />
                </node>
                <node concept="10Nm6u" id="3bu741Oyefz" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="3bu741Oyef_" role="3clFbx">
                <node concept="1DcWWT" id="3bu741OyefA" role="3cqZAp">
                  <node concept="37vLTw" id="3bu741OyefT" role="1DdaDG">
                    <ref role="3cqZAo" node="3bu741Oyefm" resolve="moduleFiles" />
                  </node>
                  <node concept="3cpWsn" id="3bu741OyefQ" role="1Duv9x">
                    <property role="3TUv4t" value="true" />
                    <property role="TrG5h" value="f" />
                    <node concept="3uibUv" id="3bu741OyefS" role="1tU5fm">
                      <ref role="3uigEE" to="guwi:~File" resolve="File" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="3bu741OyefC" role="2LFqv$">
                    <node concept="3clFbJ" id="3bu741OyefD" role="3cqZAp">
                      <node concept="1Wc70l" id="3bu741OyefE" role="3clFbw">
                        <node concept="2OqwBi" id="3bu741Oyi69" role="3uHU7B">
                          <node concept="37vLTw" id="3bu741Oyi5i" role="2Oq$k0">
                            <ref role="3cqZAo" node="3bu741OyefQ" resolve="f" />
                          </node>
                          <node concept="liA8E" id="3bu741Oyi6a" role="2OqNvi">
                            <ref role="37wK5l" to="guwi:~File.isFile()" resolve="isFile" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="3bu741Oyiaq" role="3uHU7w">
                          <node concept="2OqwBi" id="3bu741Oyi9J" role="2Oq$k0">
                            <node concept="2OqwBi" id="3bu741Oyi6z" role="2Oq$k0">
                              <node concept="37vLTw" id="3bu741Oyi5B" role="2Oq$k0">
                                <ref role="3cqZAo" node="3bu741OyefQ" resolve="f" />
                              </node>
                              <node concept="liA8E" id="3bu741Oyi6$" role="2OqNvi">
                                <ref role="37wK5l" to="guwi:~File.getName()" resolve="getName" />
                              </node>
                            </node>
                            <node concept="liA8E" id="3bu741Oyi9K" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.toLowerCase(java.util.Locale)" resolve="toLowerCase" />
                              <node concept="10M0yZ" id="3bu741Oyi9L" role="37wK5m">
                                <ref role="1PxDUh" to="33ny:~Locale" resolve="Locale" />
                                <ref role="3cqZAo" to="33ny:~Locale.ENGLISH" resolve="ENGLISH" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="3bu741Oyiar" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                            <node concept="Xl_RD" id="3bu741Oyias" role="37wK5m">
                              <property role="Xl_RC" value=".jar" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="3bu741OyefM" role="3clFbx">
                        <node concept="3clFbF" id="3bu741OyefN" role="3cqZAp">
                          <node concept="2OqwBi" id="3bu741Oyi8R" role="3clFbG">
                            <node concept="37vLTw" id="3bu741Oyi5K" role="2Oq$k0">
                              <ref role="3cqZAo" node="1ROuiHUPOE" resolve="result" />
                            </node>
                            <node concept="liA8E" id="3bu741Oyi8S" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                              <node concept="37vLTw" id="3bu741Oyi8T" role="37wK5m">
                                <ref role="3cqZAo" node="3bu741OyefQ" resolve="f" />
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
            <node concept="3cpWs6" id="1ROuiHUPPK" role="3cqZAp">
              <node concept="37vLTw" id="1ROuiHUPPL" role="3cqZAk">
                <ref role="3cqZAo" node="1ROuiHUPOE" resolve="result" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1ROuiHUOYc" role="1B3o_S" />
      <node concept="3uibUv" id="1ROuiHUP0U" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1ROuiHUP1C" role="11_B2D">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="37vLTG" id="1ROuiHUPdm" role="3clF46">
        <property role="TrG5h" value="pluginLocation" />
        <node concept="3uibUv" id="1ROuiHUPdl" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ROuiHV8Se" role="jymVt" />
    <node concept="3clFb_" id="1ROuiHV9hQ" role="jymVt">
      <property role="TrG5h" value="detectLanguageLibraries" />
      <node concept="37vLTG" id="1ROuiHV9z1" role="3clF46">
        <property role="TrG5h" value="pluginLocation" />
        <node concept="3uibUv" id="1ROuiHV9z2" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="37vLTG" id="3QoXtOXTjzJ" role="3clF46">
        <property role="TrG5h" value="pluginXmlContent" />
        <node concept="3uibUv" id="3QoXtOXTlEK" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~CharSequence" resolve="CharSequence" />
        </node>
      </node>
      <node concept="3clFbS" id="1ROuiHV9hT" role="3clF47">
        <node concept="3cpWs8" id="1ROuiHV9FE" role="3cqZAp">
          <node concept="3cpWsn" id="1ROuiHV9FK" role="3cpWs9">
            <property role="TrG5h" value="rv" />
            <node concept="3uibUv" id="1ROuiHV9FM" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
              <node concept="3uibUv" id="1ROuiHV9GI" role="11_B2D">
                <ref role="3uigEE" to="guwi:~File" resolve="File" />
              </node>
            </node>
            <node concept="2ShNRf" id="1ROuiHV9Lx" role="33vP2m">
              <node concept="1pGfFk" id="1ROuiHVahm" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(int)" resolve="ArrayList" />
                <node concept="3uibUv" id="1ROuiHVani" role="1pMfVU">
                  <ref role="3uigEE" to="guwi:~File" resolve="File" />
                </node>
                <node concept="3cmrfG" id="1ROuiHVasq" role="37wK5m">
                  <property role="3cmrfH" value="3" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3QoXtOXTsiZ" role="3cqZAp">
          <node concept="3cpWsn" id="3QoXtOXTsj0" role="3cpWs9">
            <property role="TrG5h" value="m" />
            <node concept="3uibUv" id="3QoXtOXTsgG" role="1tU5fm">
              <ref role="3uigEE" to="ni5j:~Matcher" resolve="Matcher" />
            </node>
            <node concept="2OqwBi" id="3QoXtOXTsj1" role="33vP2m">
              <node concept="37vLTw" id="3QoXtOXTsj2" role="2Oq$k0">
                <ref role="3cqZAo" node="3QoXtOXSS55" resolve="myLangLocationPattern" />
              </node>
              <node concept="liA8E" id="3QoXtOXTsj3" role="2OqNvi">
                <ref role="37wK5l" to="ni5j:~Pattern.matcher(java.lang.CharSequence)" resolve="matcher" />
                <node concept="37vLTw" id="3QoXtOXTsj4" role="37wK5m">
                  <ref role="3cqZAo" node="3QoXtOXTjzJ" resolve="pluginXmlContent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3QoXtOXTzdr" role="3cqZAp">
          <node concept="3clFbS" id="3QoXtOXTzdt" role="3clFbx">
            <node concept="MpOyq" id="3QoXtOXTIe1" role="3cqZAp">
              <node concept="3clFbS" id="3QoXtOXTIe2" role="2LFqv$">
                <node concept="3cpWs8" id="3QoXtOXTQS4" role="3cqZAp">
                  <node concept="3cpWsn" id="3QoXtOXTQS5" role="3cpWs9">
                    <property role="TrG5h" value="f" />
                    <node concept="3uibUv" id="3QoXtOXTQS6" role="1tU5fm">
                      <ref role="3uigEE" to="guwi:~File" resolve="File" />
                    </node>
                    <node concept="2ShNRf" id="3QoXtOXTQS7" role="33vP2m">
                      <node concept="1pGfFk" id="3QoXtOXTQS8" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                        <node concept="37vLTw" id="3QoXtOXTQS9" role="37wK5m">
                          <ref role="3cqZAo" node="1ROuiHV9z1" resolve="pluginLocation" />
                        </node>
                        <node concept="2OqwBi" id="3QoXtOXTRAr" role="37wK5m">
                          <node concept="37vLTw" id="3QoXtOXTRnM" role="2Oq$k0">
                            <ref role="3cqZAo" node="3QoXtOXTsj0" resolve="m" />
                          </node>
                          <node concept="liA8E" id="3QoXtOXTRPA" role="2OqNvi">
                            <ref role="37wK5l" to="ni5j:~Matcher.group(int)" resolve="group" />
                            <node concept="3cmrfG" id="3QoXtOXTRWU" role="37wK5m">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="3QoXtOXTQSb" role="3cqZAp">
                  <node concept="3clFbS" id="3QoXtOXTQSc" role="3clFbx">
                    <node concept="3clFbF" id="3QoXtOXTQSd" role="3cqZAp">
                      <node concept="2OqwBi" id="3QoXtOXTQSe" role="3clFbG">
                        <node concept="37vLTw" id="3QoXtOXTQSf" role="2Oq$k0">
                          <ref role="3cqZAo" node="1ROuiHV9FK" resolve="rv" />
                        </node>
                        <node concept="liA8E" id="3QoXtOXTQSg" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                          <node concept="37vLTw" id="3QoXtOXTQSh" role="37wK5m">
                            <ref role="3cqZAo" node="3QoXtOXTQS5" resolve="f" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3QoXtOXTQSi" role="3clFbw">
                    <node concept="37vLTw" id="3QoXtOXTQSj" role="2Oq$k0">
                      <ref role="3cqZAo" node="3QoXtOXTQS5" resolve="f" />
                    </node>
                    <node concept="liA8E" id="3QoXtOXTQSk" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3QoXtOXTIe4" role="MpTkK">
                <node concept="37vLTw" id="3QoXtOXTIe5" role="2Oq$k0">
                  <ref role="3cqZAo" node="3QoXtOXTsj0" resolve="m" />
                </node>
                <node concept="liA8E" id="3QoXtOXTIe6" role="2OqNvi">
                  <ref role="37wK5l" to="ni5j:~Matcher.find()" resolve="find" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3QoXtOXTM$5" role="3cqZAp">
              <node concept="37vLTw" id="3QoXtOXTP4E" role="3cqZAk">
                <ref role="3cqZAo" node="1ROuiHV9FK" resolve="rv" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3QoXtOXT_jO" role="3clFbw">
            <node concept="37vLTw" id="3QoXtOXT_0f" role="2Oq$k0">
              <ref role="3cqZAo" node="3QoXtOXTsj0" resolve="m" />
            </node>
            <node concept="liA8E" id="3QoXtOXT_Ak" role="2OqNvi">
              <ref role="37wK5l" to="ni5j:~Matcher.find()" resolve="find" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1ROuiHV9vk" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9nS" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9nT" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nU" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="3QoXtOXTS80" role="1PaTwD">
              <property role="3oM_SC" value="didn't" />
            </node>
            <node concept="3oM_SD" id="3QoXtOXTS8k" role="1PaTwD">
              <property role="3oM_SC" value="find" />
            </node>
            <node concept="3oM_SD" id="3QoXtOXTS8D" role="1PaTwD">
              <property role="3oM_SC" value="LanguageLibrary" />
            </node>
            <node concept="3oM_SD" id="3QoXtOXTS9J" role="1PaTwD">
              <property role="3oM_SC" value="while" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nV" role="1PaTwD">
              <property role="3oM_SC" value="parsing" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9nW" role="1PaTwD">
              <property role="3oM_SC" value="plugin.xml," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9o2" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9o3" role="1PaTwD">
              <property role="3oM_SC" value="hardcoded" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9o4" role="1PaTwD">
              <property role="3oM_SC" value="locations" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9o5" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9o6" role="1PaTwD">
              <property role="3oM_SC" value="mps" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9o7" role="1PaTwD">
              <property role="3oM_SC" value="modules" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9o8" role="1PaTwD">
              <property role="3oM_SC" value="distributed" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9o9" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oa" role="1PaTwD">
              <property role="3oM_SC" value="plugins" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1ROuiHVfoN" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9ob" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9oc" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9od" role="1PaTwD">
              <property role="3oM_SC" value="most" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oe" role="1PaTwD">
              <property role="3oM_SC" value="cases" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9of" role="1PaTwD">
              <property role="3oM_SC" value="it's" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9og" role="1PaTwD">
              <property role="3oM_SC" value="&quot;languages&quot;" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oh" role="1PaTwD">
              <property role="3oM_SC" value="(LL" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oi" role="1PaTwD">
              <property role="3oM_SC" value="dir=&quot;/&quot;" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oj" role="1PaTwD">
              <property role="3oM_SC" value="value" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ok" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ol" role="1PaTwD">
              <property role="3oM_SC" value="often" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9om" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9on" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oo" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9op" role="1PaTwD">
              <property role="3oM_SC" value="&quot;languages&quot;," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oq" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9or" role="1PaTwD">
              <property role="3oM_SC" value="didn't" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9os" role="1PaTwD">
              <property role="3oM_SC" value="find" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ot" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ou" role="1PaTwD">
              <property role="3oM_SC" value="plugin" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ov" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ow" role="1PaTwD">
              <property role="3oM_SC" value="put" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ox" role="1PaTwD">
              <property role="3oM_SC" value="modules" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oy" role="1PaTwD">
              <property role="3oM_SC" value="under" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oz" role="1PaTwD">
              <property role="3oM_SC" value="root" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3QoXtOXTTzj" role="3cqZAp">
          <node concept="1PaTwC" id="3QoXtOXTTzk" role="1aUNEU">
            <node concept="3oM_SD" id="3QoXtOXTVS_" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="3QoXtOXTVSJ" role="1PaTwD">
              <property role="3oM_SC" value="deployment," />
            </node>
            <node concept="3oM_SD" id="3QoXtOXTVT2" role="1PaTwD">
              <property role="3oM_SC" value="though" />
            </node>
            <node concept="3oM_SD" id="3QoXtOXTVT6" role="1PaTwD">
              <property role="3oM_SC" value="quite" />
            </node>
            <node concept="3oM_SD" id="3QoXtOXTVTj" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="3QoXtOXTVTp" role="1PaTwD">
              <property role="3oM_SC" value="few" />
            </node>
            <node concept="3oM_SD" id="3QoXtOXTVTK" role="1PaTwD">
              <property role="3oM_SC" value="keep" />
            </node>
            <node concept="3oM_SD" id="3QoXtOXTVU0" role="1PaTwD">
              <property role="3oM_SC" value="modules" />
            </node>
            <node concept="3oM_SD" id="3QoXtOXTVUh" role="1PaTwD">
              <property role="3oM_SC" value="at" />
            </node>
            <node concept="3oM_SD" id="3QoXtOXTVUr" role="1PaTwD">
              <property role="3oM_SC" value="root" />
            </node>
            <node concept="3oM_SD" id="3QoXtOXTVUI" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="3QoXtOXTVV2" role="1PaTwD">
              <property role="3oM_SC" value="sources." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1ROuiHVbHO" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9o$" role="1aUNEU">
            <node concept="3oM_SD" id="3QoXtOXTVVn" role="1PaTwD">
              <property role="3oM_SC" value="e.g." />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oB" role="1PaTwD">
              <property role="3oM_SC" value="mps-build" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oC" role="1PaTwD">
              <property role="3oM_SC" value="uses" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oD" role="1PaTwD">
              <property role="3oM_SC" value="both" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oE" role="1PaTwD">
              <property role="3oM_SC" value="&quot;solutions&quot;" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oF" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oG" role="1PaTwD">
              <property role="3oM_SC" value="&quot;pluginSolutions&quot;," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oH" role="1PaTwD">
              <property role="3oM_SC" value="projectMigrations" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oI" role="1PaTwD">
              <property role="3oM_SC" value="uses" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oJ" role="1PaTwD">
              <property role="3oM_SC" value="&quot;solution&quot;," />
            </node>
            <node concept="3oM_SD" id="3QoXtOXTVVE" role="1PaTwD">
              <property role="3oM_SC" value="mps-console" />
            </node>
            <node concept="3oM_SD" id="3QoXtOXTVW6" role="1PaTwD">
              <property role="3oM_SC" value="uses" />
            </node>
            <node concept="3oM_SD" id="3QoXtOXTVWz" role="1PaTwD">
              <property role="3oM_SC" value="&quot;lang&quot;" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="1ROuiHVbQe" role="3cqZAp">
          <node concept="3clFbS" id="1ROuiHVbQg" role="2LFqv$">
            <node concept="3cpWs8" id="1ROuiHVbfm" role="3cqZAp">
              <node concept="3cpWsn" id="1ROuiHVbfn" role="3cpWs9">
                <property role="TrG5h" value="f" />
                <node concept="3uibUv" id="1ROuiHVbfo" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~File" resolve="File" />
                </node>
                <node concept="2ShNRf" id="1ROuiHVbfp" role="33vP2m">
                  <node concept="1pGfFk" id="1ROuiHVbfq" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                    <node concept="37vLTw" id="1ROuiHVbfr" role="37wK5m">
                      <ref role="3cqZAo" node="1ROuiHV9z1" resolve="pluginLocation" />
                    </node>
                    <node concept="37vLTw" id="1ROuiHVfyq" role="37wK5m">
                      <ref role="3cqZAo" node="1ROuiHVbQh" resolve="loc" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1ROuiHVfzK" role="3cqZAp">
              <node concept="3clFbS" id="1ROuiHVfzM" role="3clFbx">
                <node concept="3clFbF" id="1ROuiHVhd5" role="3cqZAp">
                  <node concept="2OqwBi" id="1ROuiHVibT" role="3clFbG">
                    <node concept="37vLTw" id="1ROuiHVhd3" role="2Oq$k0">
                      <ref role="3cqZAo" node="1ROuiHV9FK" resolve="rv" />
                    </node>
                    <node concept="liA8E" id="1ROuiHVmyc" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                      <node concept="37vLTw" id="1ROuiHVmCu" role="37wK5m">
                        <ref role="3cqZAo" node="1ROuiHVbfn" resolve="f" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1ROuiHVfQm" role="3clFbw">
                <node concept="37vLTw" id="1ROuiHVf$v" role="2Oq$k0">
                  <ref role="3cqZAo" node="1ROuiHVbfn" resolve="f" />
                </node>
                <node concept="liA8E" id="1ROuiHVh8H" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1ROuiHVbQh" role="1Duv9x">
            <property role="TrG5h" value="loc" />
            <node concept="17QB3L" id="1ROuiHVbZW" role="1tU5fm" />
          </node>
          <node concept="2ShNRf" id="1ROuiHVcgg" role="1DdaDG">
            <node concept="3g6Rrh" id="1ROuiHVcWN" role="2ShVmc">
              <node concept="Xl_RD" id="1ROuiHVb9i" role="3g7hyw">
                <property role="Xl_RC" value="languages" />
              </node>
              <node concept="Xl_RD" id="1ROuiHVbfs" role="3g7hyw">
                <property role="Xl_RC" value="solutions" />
              </node>
              <node concept="Xl_RD" id="1ROuiHVbh0" role="3g7hyw">
                <property role="Xl_RC" value="pluginSolutions" />
              </node>
              <node concept="Xl_RD" id="1ROuiHVbvl" role="3g7hyw">
                <property role="Xl_RC" value="solution" />
              </node>
              <node concept="Xl_RD" id="3QoXtOXTmxg" role="3g7hyw">
                <property role="Xl_RC" value="lang" />
              </node>
              <node concept="17QB3L" id="1ROuiHVcvb" role="3g7fb8" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1ROuiHVmXP" role="3cqZAp">
          <node concept="3K4zz7" id="1ROuiHVvc8" role="3cqZAk">
            <node concept="2YIFZM" id="1ROuiHVvCK" role="3K4E3e">
              <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              <node concept="3uibUv" id="1ROuiHVIjK" role="3PaCim">
                <ref role="3uigEE" to="guwi:~File" resolve="File" />
              </node>
            </node>
            <node concept="37vLTw" id="1ROuiHVvPR" role="3K4GZi">
              <ref role="3cqZAo" node="1ROuiHV9FK" resolve="rv" />
            </node>
            <node concept="2OqwBi" id="1ROuiHVoin" role="3K4Cdx">
              <node concept="37vLTw" id="1ROuiHVnc8" role="2Oq$k0">
                <ref role="3cqZAo" node="1ROuiHV9FK" resolve="rv" />
              </node>
              <node concept="liA8E" id="1ROuiHVsLU" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~ArrayList.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1ROuiHV948" role="1B3o_S" />
      <node concept="3uibUv" id="1ROuiHV9cK" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1ROuiHV9dX" role="11_B2D">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4E8FPsxr0Xf" role="jymVt" />
    <node concept="3clFb_" id="4E8FPsxrd17" role="jymVt">
      <property role="TrG5h" value="detectDependencies" />
      <node concept="3clFbS" id="4E8FPsxrd1a" role="3clF47">
        <node concept="3cpWs8" id="4E8FPsxsi6I" role="3cqZAp">
          <node concept="3cpWsn" id="4E8FPsxsi6J" role="3cpWs9">
            <property role="TrG5h" value="m" />
            <node concept="3uibUv" id="4E8FPsxsfPw" role="1tU5fm">
              <ref role="3uigEE" to="ni5j:~Matcher" resolve="Matcher" />
            </node>
            <node concept="2OqwBi" id="4E8FPsxsi6K" role="33vP2m">
              <node concept="37vLTw" id="4E8FPsxsi6L" role="2Oq$k0">
                <ref role="3cqZAo" node="4E8FPsxqUZ$" resolve="myDepensPattern" />
              </node>
              <node concept="liA8E" id="4E8FPsxsi6M" role="2OqNvi">
                <ref role="37wK5l" to="ni5j:~Pattern.matcher(java.lang.CharSequence)" resolve="matcher" />
                <node concept="37vLTw" id="4E8FPsxsi6N" role="37wK5m">
                  <ref role="3cqZAo" node="4E8FPsxrhwi" resolve="pluginXmlContent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4E8FPsxt0Ez" role="3cqZAp">
          <node concept="3cpWsn" id="4E8FPsxt0ED" role="3cpWs9">
            <property role="TrG5h" value="rv" />
            <node concept="3uibUv" id="4E8FPsxt0EF" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="17QB3L" id="4E8FPsxt3NL" role="11_B2D" />
            </node>
            <node concept="2ShNRf" id="4E8FPsxtaeX" role="33vP2m">
              <node concept="1pGfFk" id="4E8FPsxtfsK" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="4E8FPsxs_Re" role="3cqZAp">
          <node concept="3clFbS" id="4E8FPsxs_Rg" role="2LFqv$">
            <node concept="3clFbF" id="4E8FPsxtkIj" role="3cqZAp">
              <node concept="2OqwBi" id="4E8FPsxtoyg" role="3clFbG">
                <node concept="37vLTw" id="4E8FPsxtkIh" role="2Oq$k0">
                  <ref role="3cqZAo" node="4E8FPsxt0ED" resolve="rv" />
                </node>
                <node concept="liA8E" id="4E8FPsxtsNc" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="2OqwBi" id="4E8FPsxsP4_" role="37wK5m">
                    <node concept="37vLTw" id="4E8FPsxsM00" role="2Oq$k0">
                      <ref role="3cqZAo" node="4E8FPsxsi6J" resolve="m" />
                    </node>
                    <node concept="liA8E" id="4E8FPsxsSn2" role="2OqNvi">
                      <ref role="37wK5l" to="ni5j:~Matcher.group(int)" resolve="group" />
                      <node concept="3cmrfG" id="4E8FPsxsUoO" role="37wK5m">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4E8FPsxsDX3" role="2$JKZa">
            <node concept="37vLTw" id="4E8FPsxsBPn" role="2Oq$k0">
              <ref role="3cqZAo" node="4E8FPsxsi6J" resolve="m" />
            </node>
            <node concept="liA8E" id="4E8FPsxsH_Q" role="2OqNvi">
              <ref role="37wK5l" to="ni5j:~Matcher.find()" resolve="find" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4E8FPsxtNcj" role="3cqZAp">
          <node concept="37vLTw" id="4E8FPsxtSTC" role="3cqZAk">
            <ref role="3cqZAo" node="4E8FPsxt0ED" resolve="rv" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4E8FPsxr710" role="1B3o_S" />
      <node concept="3uibUv" id="4E8FPsxrcH6" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="17QB3L" id="4E8FPsxrd0t" role="11_B2D" />
      </node>
      <node concept="37vLTG" id="4E8FPsxrhwi" role="3clF46">
        <property role="TrG5h" value="pluginXmlContent" />
        <node concept="3uibUv" id="4E8FPsxrhwh" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~CharSequence" resolve="CharSequence" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ROuiHXCNr" role="jymVt" />
    <node concept="2YIFZL" id="1ROuiHY7c0" role="jymVt">
      <property role="TrG5h" value="createPluginClassLoader" />
      <node concept="3clFbS" id="4142FbgULQl" role="3clF47">
        <node concept="3clFbJ" id="1ROuiHWHTM" role="3cqZAp">
          <node concept="3clFbS" id="1ROuiHWHTO" role="3clFbx">
            <node concept="3cpWs6" id="1ROuiHWL53" role="3cqZAp">
              <node concept="37vLTw" id="1ROuiHY8Sj" role="3cqZAk">
                <ref role="3cqZAo" node="1ROuiHY5QV" resolve="rootCL" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1ROuiHWJup" role="3clFbw">
            <node concept="2OqwBi" id="1ROuiHXLDE" role="2Oq$k0">
              <node concept="37vLTw" id="1ROuiHWINx" role="2Oq$k0">
                <ref role="3cqZAo" node="4142FbgULR9" resolve="pd" />
              </node>
              <node concept="2OwXpG" id="1ROuiHXLUz" role="2OqNvi">
                <ref role="2Oxat5" node="1ROuiHVQiR" resolve="cp" />
              </node>
            </node>
            <node concept="liA8E" id="1ROuiHWKZ0" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4142FbgULQm" role="3cqZAp">
          <node concept="3cpWsn" id="4142FbgULQn" role="3cpWs9">
            <property role="TrG5h" value="urls" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="4142FbgULQo" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="4142FbgULQp" role="11_B2D">
                <ref role="3uigEE" to="zf81:~URL" resolve="URL" />
              </node>
            </node>
            <node concept="2ShNRf" id="4142FbgULQq" role="33vP2m">
              <node concept="1pGfFk" id="4142FbgULQr" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(int)" resolve="ArrayList" />
                <node concept="3uibUv" id="4142FbgULQs" role="1pMfVU">
                  <ref role="3uigEE" to="zf81:~URL" resolve="URL" />
                </node>
                <node concept="2OqwBi" id="1ROuiHWQkO" role="37wK5m">
                  <node concept="2OqwBi" id="1ROuiHXM9B" role="2Oq$k0">
                    <node concept="37vLTw" id="1ROuiHWOKO" role="2Oq$k0">
                      <ref role="3cqZAo" node="4142FbgULR9" resolve="pd" />
                    </node>
                    <node concept="2OwXpG" id="1ROuiHXN7z" role="2OqNvi">
                      <ref role="2Oxat5" node="1ROuiHVQiR" resolve="cp" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1ROuiHWSKC" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="4142FbgULQG" role="3cqZAp">
          <node concept="2OqwBi" id="1ROuiHXPOJ" role="1DdaDG">
            <node concept="37vLTw" id="1ROuiHWVCN" role="2Oq$k0">
              <ref role="3cqZAo" node="4142FbgULR9" resolve="pd" />
            </node>
            <node concept="2OwXpG" id="1ROuiHXQWU" role="2OqNvi">
              <ref role="2Oxat5" node="1ROuiHVQiR" resolve="cp" />
            </node>
          </node>
          <node concept="3cpWsn" id="4142FbgULQI" role="1Duv9x">
            <property role="TrG5h" value="libjar" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="4142FbgULQJ" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
          </node>
          <node concept="3clFbS" id="4142FbgULQK" role="2LFqv$">
            <node concept="3J1_TO" id="4142FbgULQL" role="3cqZAp">
              <node concept="3uVAMA" id="4142FbgULQM" role="1zxBo5">
                <node concept="XOnhg" id="4142FbgULQO" role="1zc67B">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="ignored" />
                  <node concept="nSUau" id="xvs04dGzE2" role="1tU5fm">
                    <node concept="3uibUv" id="4142FbgULQP" role="nSUat">
                      <ref role="3uigEE" to="zf81:~MalformedURLException" resolve="MalformedURLException" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="4142FbgULQN" role="1zc67A" />
              </node>
              <node concept="3clFbS" id="4142FbgULQQ" role="1zxBo7">
                <node concept="3clFbF" id="4142FbgULQR" role="3cqZAp">
                  <node concept="2OqwBi" id="4142FbgULQS" role="3clFbG">
                    <node concept="37vLTw" id="4142FbgULQT" role="2Oq$k0">
                      <ref role="3cqZAo" node="4142FbgULQn" resolve="urls" />
                    </node>
                    <node concept="liA8E" id="4142FbgULQU" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="2OqwBi" id="4142FbgULQV" role="37wK5m">
                        <node concept="2OqwBi" id="4142FbgULQW" role="2Oq$k0">
                          <node concept="37vLTw" id="4142FbgULQX" role="2Oq$k0">
                            <ref role="3cqZAo" node="4142FbgULQI" resolve="libjar" />
                          </node>
                          <node concept="liA8E" id="4142FbgULQY" role="2OqNvi">
                            <ref role="37wK5l" to="guwi:~File.toURI()" resolve="toURI" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4142FbgULQZ" role="2OqNvi">
                          <ref role="37wK5l" to="zf81:~URI.toURL()" resolve="toURL" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4142FbgULR0" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9oK" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9oL" role="1PaTwD">
              <property role="3oM_SC" value="XXX" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oM" role="1PaTwD">
              <property role="3oM_SC" value="classloader" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oN" role="1PaTwD">
              <property role="3oM_SC" value="relations" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oO" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oP" role="1PaTwD">
              <property role="3oM_SC" value="tricky," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oQ" role="1PaTwD">
              <property role="3oM_SC" value="given" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oR" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oS" role="1PaTwD">
              <property role="3oM_SC" value="there" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oT" role="1PaTwD">
              <property role="3oM_SC" value="might" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oU" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oV" role="1PaTwD">
              <property role="3oM_SC" value="few" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oW" role="1PaTwD">
              <property role="3oM_SC" value="&lt;plugin&gt;" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oX" role="1PaTwD">
              <property role="3oM_SC" value="tags" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oY" role="1PaTwD">
              <property role="3oM_SC" value="along" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9oZ" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9p0" role="1PaTwD">
              <property role="3oM_SC" value="few" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9p1" role="1PaTwD">
              <property role="3oM_SC" value="&lt;library&gt;" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9p2" role="1PaTwD">
              <property role="3oM_SC" value="tags" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4142FbgUOAG" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9p3" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9p4" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9p5" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9p6" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9p7" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9p8" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9p9" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pa" role="1PaTwD">
              <property role="3oM_SC" value="single" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pb" role="1PaTwD">
              <property role="3oM_SC" value="task:" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pc" role="1PaTwD">
              <property role="3oM_SC" value="without" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pd" role="1PaTwD">
              <property role="3oM_SC" value="IDEA," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pe" role="1PaTwD">
              <property role="3oM_SC" value="how" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pf" role="1PaTwD">
              <property role="3oM_SC" value="does" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pg" role="1PaTwD">
              <property role="3oM_SC" value="dependencies" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ph" role="1PaTwD">
              <property role="3oM_SC" value="between" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pi" role="1PaTwD">
              <property role="3oM_SC" value="two" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pj" role="1PaTwD">
              <property role="3oM_SC" value="different" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pk" role="1PaTwD">
              <property role="3oM_SC" value="&lt;plugin&gt;" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pl" role="1PaTwD">
              <property role="3oM_SC" value="work?" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pm" role="1PaTwD">
              <property role="3oM_SC" value="If" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pn" role="1PaTwD">
              <property role="3oM_SC" value="there's" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9po" role="1PaTwD">
              <property role="3oM_SC" value="shared" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4142FbgUPrn" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9pp" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9pq" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pr" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ps" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pt" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pu" role="1PaTwD">
              <property role="3oM_SC" value="classloader" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pv" role="1PaTwD">
              <property role="3oM_SC" value="(global" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pw" role="1PaTwD">
              <property role="3oM_SC" value="classpath)," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9px" role="1PaTwD">
              <property role="3oM_SC" value="then" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9py" role="1PaTwD">
              <property role="3oM_SC" value="myRootClassLoader" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pz" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9p$" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9p_" role="1PaTwD">
              <property role="3oM_SC" value="represent" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pA" role="1PaTwD">
              <property role="3oM_SC" value="one." />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pB" role="1PaTwD">
              <property role="3oM_SC" value="If" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pC" role="1PaTwD">
              <property role="3oM_SC" value="classloader" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pD" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pE" role="1PaTwD">
              <property role="3oM_SC" value="distinct" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pF" role="1PaTwD">
              <property role="3oM_SC" value="per" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pG" role="1PaTwD">
              <property role="3oM_SC" value="plugin," />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4142FbgUR4Y" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9pH" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9pI" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pJ" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pK" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pL" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pM" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pN" role="1PaTwD">
              <property role="3oM_SC" value="would" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pO" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pP" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pQ" role="1PaTwD">
              <property role="3oM_SC" value="manage" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pR" role="1PaTwD">
              <property role="3oM_SC" value="dependencies" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pS" role="1PaTwD">
              <property role="3oM_SC" value="here," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pT" role="1PaTwD">
              <property role="3oM_SC" value="take" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pU" role="1PaTwD">
              <property role="3oM_SC" value="them" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pV" role="1PaTwD">
              <property role="3oM_SC" value="into" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pW" role="1PaTwD">
              <property role="3oM_SC" value="account" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pX" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pY" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9pZ" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9q0" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9q1" role="1PaTwD">
              <property role="3oM_SC" value="myRootClassLoader" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9q2" role="1PaTwD">
              <property role="3oM_SC" value="here." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4142FbgUS$P" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9q3" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9q4" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9q5" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9q6" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9q7" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9q8" role="1PaTwD">
              <property role="3oM_SC" value="As" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9q9" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qa" role="1PaTwD">
              <property role="3oM_SC" value="&lt;library&gt;-specified" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qb" role="1PaTwD">
              <property role="3oM_SC" value="modules," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qc" role="1PaTwD">
              <property role="3oM_SC" value="what" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qd" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qe" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qf" role="1PaTwD">
              <property role="3oM_SC" value="points" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qg" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qh" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qi" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qj" role="1PaTwD">
              <property role="3oM_SC" value="coming" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qk" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ql" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qm" role="1PaTwD">
              <property role="3oM_SC" value="plugin" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qn" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qo" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qp" role="1PaTwD">
              <property role="3oM_SC" value="dependency" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qq" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qr" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4142FbgUTpA" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9qs" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9qt" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qu" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qv" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qw" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qx" role="1PaTwD">
              <property role="3oM_SC" value="sibling" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qy" role="1PaTwD">
              <property role="3oM_SC" value="&lt;plugin&gt;?" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qz" role="1PaTwD">
              <property role="3oM_SC" value="This" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9q$" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9q_" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qA" role="1PaTwD">
              <property role="3oM_SC" value="necessarily" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qB" role="1PaTwD">
              <property role="3oM_SC" value="'proper'" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qC" role="1PaTwD">
              <property role="3oM_SC" value="scenario," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qD" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qE" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qF" role="1PaTwD">
              <property role="3oM_SC" value="should" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qG" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qH" role="1PaTwD">
              <property role="3oM_SC" value="&lt;plugin&gt;" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qI" role="1PaTwD">
              <property role="3oM_SC" value="rather" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qJ" role="1PaTwD">
              <property role="3oM_SC" value="than" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qK" role="1PaTwD">
              <property role="3oM_SC" value="&lt;library&gt;" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qL" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qM" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qN" role="1PaTwD">
              <property role="3oM_SC" value="case," />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4142FbgUUep" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9qO" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9qP" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qQ" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qR" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qS" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qT" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qU" role="1PaTwD">
              <property role="3oM_SC" value="alas" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qV" role="1PaTwD">
              <property role="3oM_SC" value="mps.build" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qW" role="1PaTwD">
              <property role="3oM_SC" value="language" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qX" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qY" role="1PaTwD">
              <property role="3oM_SC" value="its" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9qZ" role="1PaTwD">
              <property role="3oM_SC" value="own" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9r0" role="1PaTwD">
              <property role="3oM_SC" value="perspective" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9r1" role="1PaTwD">
              <property role="3oM_SC" value="(the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9r2" role="1PaTwD">
              <property role="3oM_SC" value="point" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9r3" role="1PaTwD">
              <property role="3oM_SC" value="is," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9r4" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9r5" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9r6" role="1PaTwD">
              <property role="3oM_SC" value="control" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9r7" role="1PaTwD">
              <property role="3oM_SC" value="that)." />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9r8" role="1PaTwD">
              <property role="3oM_SC" value="Again," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9r9" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ra" role="1PaTwD">
              <property role="3oM_SC" value="shared" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rb" role="1PaTwD">
              <property role="3oM_SC" value="classpath" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4142FbgUVSg" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9rc" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9rd" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9re" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rf" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rg" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rh" role="1PaTwD">
              <property role="3oM_SC" value="it's" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ri" role="1PaTwD">
              <property role="3oM_SC" value="ok" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rj" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rk" role="1PaTwD">
              <property role="3oM_SC" value="reference" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rl" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rm" role="1PaTwD">
              <property role="3oM_SC" value="global" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rn" role="1PaTwD">
              <property role="3oM_SC" value="CL" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ro" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rp" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rq" role="1PaTwD">
              <property role="3oM_SC" value="myRootClassLoader." />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rr" role="1PaTwD">
              <property role="3oM_SC" value="If" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rs" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rt" role="1PaTwD">
              <property role="3oM_SC" value="day" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ru" role="1PaTwD">
              <property role="3oM_SC" value="plugins" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rv" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rw" role="1PaTwD">
              <property role="3oM_SC" value="distinct" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rx" role="1PaTwD">
              <property role="3oM_SC" value="CL," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ry" role="1PaTwD">
              <property role="3oM_SC" value="then" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rz" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9r$" role="1PaTwD">
              <property role="3oM_SC" value="would" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9r_" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rA" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4142FbgUXyb" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9rB" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9rC" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rD" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rE" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rF" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rG" role="1PaTwD">
              <property role="3oM_SC" value="decide" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rH" role="1PaTwD">
              <property role="3oM_SC" value="whether" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rI" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rJ" role="1PaTwD">
              <property role="3oM_SC" value="&lt;library&gt;" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rK" role="1PaTwD">
              <property role="3oM_SC" value="specified" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rL" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rM" role="1PaTwD">
              <property role="3oM_SC" value="may" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rN" role="1PaTwD">
              <property role="3oM_SC" value="depend" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rO" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rP" role="1PaTwD">
              <property role="3oM_SC" value="classes" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rQ" role="1PaTwD">
              <property role="3oM_SC" value="available" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rR" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rS" role="1PaTwD">
              <property role="3oM_SC" value="&lt;plugin&gt;" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rT" role="1PaTwD">
              <property role="3oM_SC" value="(note," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rU" role="1PaTwD">
              <property role="3oM_SC" value="dependency" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rV" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rW" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9rX" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4142FbgUYdx" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9rY" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9rZ" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9s0" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9s1" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9s2" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9s3" role="1PaTwD">
              <property role="3oM_SC" value="distributed" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9s4" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9s5" role="1PaTwD">
              <property role="3oM_SC" value="&lt;plugin&gt;" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9s6" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9s7" role="1PaTwD">
              <property role="3oM_SC" value="fine," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9s8" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9s9" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sa" role="1PaTwD">
              <property role="3oM_SC" value="latter" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sb" role="1PaTwD">
              <property role="3oM_SC" value="would" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sc" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sd" role="1PaTwD">
              <property role="3oM_SC" value="proper" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9se" role="1PaTwD">
              <property role="3oM_SC" value="plugin" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sf" role="1PaTwD">
              <property role="3oM_SC" value="CL" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sg" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sh" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9si" role="1PaTwD">
              <property role="3oM_SC" value="fallback." />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sj" role="1PaTwD">
              <property role="3oM_SC" value="Does" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sk" role="1PaTwD">
              <property role="3oM_SC" value="scenario" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sl" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sm" role="1PaTwD">
              <property role="3oM_SC" value="concerns" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sn" role="1PaTwD">
              <property role="3oM_SC" value="me" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4142FbgUZRp" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9so" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9sp" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sq" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sr" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ss" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9st" role="1PaTwD">
              <property role="3oM_SC" value="here," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9su" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sv" role="1PaTwD">
              <property role="3oM_SC" value="&lt;library&gt;" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sw" role="1PaTwD">
              <property role="3oM_SC" value="dependency" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sx" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sy" role="1PaTwD">
              <property role="3oM_SC" value="&lt;plugin&gt;" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sz" role="1PaTwD">
              <property role="3oM_SC" value="CLASSPATH," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9s$" role="1PaTwD">
              <property role="3oM_SC" value="relevant" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9s_" role="1PaTwD">
              <property role="3oM_SC" value="at" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sA" role="1PaTwD">
              <property role="3oM_SC" value="all?)" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4142FbgV2mo" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9sB" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9sC" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sD" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sE" role="1PaTwD">
              <property role="3oM_SC" value="funny" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sF" role="1PaTwD">
              <property role="3oM_SC" value="thing" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sG" role="1PaTwD">
              <property role="3oM_SC" value="about" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sH" role="1PaTwD">
              <property role="3oM_SC" value="plugin" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sI" role="1PaTwD">
              <property role="3oM_SC" value="CL" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sJ" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sK" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sL" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sM" role="1PaTwD">
              <property role="3oM_SC" value="at" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sN" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sO" role="1PaTwD">
              <property role="3oM_SC" value="moment" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sP" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sQ" role="1PaTwD">
              <property role="3oM_SC" value="collect" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sR" role="1PaTwD">
              <property role="3oM_SC" value="plugin" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sS" role="1PaTwD">
              <property role="3oM_SC" value="CP" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sT" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sU" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sV" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sW" role="1PaTwD">
              <property role="3oM_SC" value="libraries" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sX" role="1PaTwD">
              <property role="3oM_SC" value="into" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9sY" role="1PaTwD">
              <property role="3oM_SC" value="global" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4142FbgV7zq" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9sZ" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9t0" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9t1" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9t2" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9t3" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9t4" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9t5" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9t6" role="1PaTwD">
              <property role="3oM_SC" value="classpath" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9t7" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9t8" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9t9" role="1PaTwD">
              <property role="3oM_SC" value="could" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ta" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tb" role="1PaTwD">
              <property role="3oM_SC" value="myRootClassLoader" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tc" role="1PaTwD">
              <property role="3oM_SC" value="right" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9td" role="1PaTwD">
              <property role="3oM_SC" value="away." />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9te" role="1PaTwD">
              <property role="3oM_SC" value="Moreover," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tf" role="1PaTwD">
              <property role="3oM_SC" value="CL" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tg" role="1PaTwD">
              <property role="3oM_SC" value="built" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9th" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ti" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tj" role="1PaTwD">
              <property role="3oM_SC" value="plain" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tk" role="1PaTwD">
              <property role="3oM_SC" value="wrong" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tl" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tm" role="1PaTwD">
              <property role="3oM_SC" value="IdeaEnvironment" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tn" role="1PaTwD">
              <property role="3oM_SC" value="case" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4142FbgVaWV" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9to" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9tp" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tq" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tr" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ts" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tt" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tu" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tv" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tw" role="1PaTwD">
              <property role="3oM_SC" value="&lt;plugin&gt;/lib/" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tx" role="1PaTwD">
              <property role="3oM_SC" value="classes" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ty" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tz" role="1PaTwD">
              <property role="3oM_SC" value="already" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9t$" role="1PaTwD">
              <property role="3oM_SC" value="available" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9t_" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tA" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tB" role="1PaTwD">
              <property role="3oM_SC" value="global" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tC" role="1PaTwD">
              <property role="3oM_SC" value="CP" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tD" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tE" role="1PaTwD">
              <property role="3oM_SC" value="it's" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tF" role="1PaTwD">
              <property role="3oM_SC" value="odd" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tG" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tH" role="1PaTwD">
              <property role="3oM_SC" value="expose" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tI" role="1PaTwD">
              <property role="3oM_SC" value="them" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tJ" role="1PaTwD">
              <property role="3oM_SC" value="again" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tK" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tL" role="1PaTwD">
              <property role="3oM_SC" value="SLibrary's" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tM" role="1PaTwD">
              <property role="3oM_SC" value="fallback" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tN" role="1PaTwD">
              <property role="3oM_SC" value="CL." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4142FbgVfkL" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9tO" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9tP" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tQ" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tR" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tS" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tT" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tU" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tV" role="1PaTwD">
              <property role="3oM_SC" value="What" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tW" role="1PaTwD">
              <property role="3oM_SC" value="saves" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tX" role="1PaTwD">
              <property role="3oM_SC" value="us" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tY" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9tZ" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9u0" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9u1" role="1PaTwD">
              <property role="3oM_SC" value="fact" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9u2" role="1PaTwD">
              <property role="3oM_SC" value="ClassLoader" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9u3" role="1PaTwD">
              <property role="3oM_SC" value="consults" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9u4" role="1PaTwD">
              <property role="3oM_SC" value="parent" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9u5" role="1PaTwD">
              <property role="3oM_SC" value="CL" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9u6" role="1PaTwD">
              <property role="3oM_SC" value="first" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9u7" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9u8" role="1PaTwD">
              <property role="3oM_SC" value="finds" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9u9" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ua" role="1PaTwD">
              <property role="3oM_SC" value="classes" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ub" role="1PaTwD">
              <property role="3oM_SC" value="there." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4142FbgV9hZ" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9uc" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9ud" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ue" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uf" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ug" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uh" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ui" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uj" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uk" role="1PaTwD">
              <property role="3oM_SC" value="keep" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ul" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9um" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9un" role="1PaTwD">
              <property role="3oM_SC" value="way" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uo" role="1PaTwD">
              <property role="3oM_SC" value="just" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9up" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uq" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ur" role="1PaTwD">
              <property role="3oM_SC" value="record," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9us" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ut" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uu" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uv" role="1PaTwD">
              <property role="3oM_SC" value="reference" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uw" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ux" role="1PaTwD">
              <property role="3oM_SC" value="future" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uy" role="1PaTwD">
              <property role="3oM_SC" value="implementation" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uz" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9u$" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9u_" role="1PaTwD">
              <property role="3oM_SC" value="decide" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uA" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uB" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uC" role="1PaTwD">
              <property role="3oM_SC" value="distinct" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uD" role="1PaTwD">
              <property role="3oM_SC" value="plugin" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4142FbgVg9Q" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9uE" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9uF" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uG" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uH" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uI" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uJ" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uK" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uL" role="1PaTwD">
              <property role="3oM_SC" value="classloaders" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uM" role="1PaTwD">
              <property role="3oM_SC" value="after" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uN" role="1PaTwD">
              <property role="3oM_SC" value="all." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1ROuiI1Jcj" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9uO" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9uP" role="1PaTwD">
              <property role="3oM_SC" value="Here" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uQ" role="1PaTwD">
              <property role="3oM_SC" value="used" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uR" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uS" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uT" role="1PaTwD">
              <property role="3oM_SC" value="outdated" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uU" role="1PaTwD">
              <property role="3oM_SC" value="copy" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uV" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uW" role="1PaTwD">
              <property role="3oM_SC" value="IDEA's" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uX" role="1PaTwD">
              <property role="3oM_SC" value="UrlClassLoader," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uY" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9uZ" role="1PaTwD">
              <property role="3oM_SC" value="uncertain" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9v0" role="1PaTwD">
              <property role="3oM_SC" value="benefits" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9v1" role="1PaTwD">
              <property role="3oM_SC" value="over" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9v2" role="1PaTwD">
              <property role="3oM_SC" value="standard" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9v3" role="1PaTwD">
              <property role="3oM_SC" value="Java's" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9v4" role="1PaTwD">
              <property role="3oM_SC" value="one." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1ROuiI1MVy" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9v5" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9v6" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9v7" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9v8" role="1PaTwD">
              <property role="3oM_SC" value="think" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9v9" role="1PaTwD">
              <property role="3oM_SC" value="there's" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9va" role="1PaTwD">
              <property role="3oM_SC" value="anything" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vb" role="1PaTwD">
              <property role="3oM_SC" value="wrong" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vc" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vd" role="1PaTwD">
              <property role="3oM_SC" value="java.net" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9ve" role="1PaTwD">
              <property role="3oM_SC" value="counterpart." />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vf" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vg" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vh" role="1PaTwD">
              <property role="3oM_SC" value="issue" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vi" role="1PaTwD">
              <property role="3oM_SC" value="I'm" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vj" role="1PaTwD">
              <property role="3oM_SC" value="aware" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vk" role="1PaTwD">
              <property role="3oM_SC" value="of," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vl" role="1PaTwD">
              <property role="3oM_SC" value="http://bugs.sun.com/bugdatabase/view_bug.do?bug_id=5041014" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1ROuiI1NJW" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo9vm" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo9vn" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vo" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vp" role="1PaTwD">
              <property role="3oM_SC" value="important" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vq" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vr" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vs" role="1PaTwD">
              <property role="3oM_SC" value="scenario" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vt" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vu" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vv" role="1PaTwD">
              <property role="3oM_SC" value="MpsEnvironment" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vw" role="1PaTwD">
              <property role="3oM_SC" value="for." />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vx" role="1PaTwD">
              <property role="3oM_SC" value="Besides," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vy" role="1PaTwD">
              <property role="3oM_SC" value="there's" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vz" role="1PaTwD">
              <property role="3oM_SC" value="#close()" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9v$" role="1PaTwD">
              <property role="3oM_SC" value="method" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9v_" role="1PaTwD">
              <property role="3oM_SC" value="now" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vA" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vB" role="1PaTwD">
              <property role="3oM_SC" value="may" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vC" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vD" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vE" role="1PaTwD">
              <property role="3oM_SC" value="address" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vF" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vG" role="1PaTwD">
              <property role="3oM_SC" value="issue" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vH" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vI" role="1PaTwD">
              <property role="3oM_SC" value="case" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vJ" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vK" role="1PaTwD">
              <property role="3oM_SC" value="ever" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vL" role="1PaTwD">
              <property role="3oM_SC" value="face" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo9vM" role="1PaTwD">
              <property role="3oM_SC" value="it." />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4E8FPsxwhqF" role="3cqZAp">
          <node concept="3clFbS" id="4E8FPsxwhqH" role="3clFbx">
            <node concept="3cpWs6" id="4E8FPsxx0$x" role="3cqZAp">
              <node concept="2ShNRf" id="4E8FPsxx64U" role="3cqZAk">
                <node concept="1pGfFk" id="4E8FPsxxazO" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="zf81:~URLClassLoader.&lt;init&gt;(java.net.URL[],java.lang.ClassLoader)" resolve="URLClassLoader" />
                  <node concept="2OqwBi" id="4E8FPsxFTnB" role="37wK5m">
                    <node concept="37vLTw" id="4E8FPsxFTnC" role="2Oq$k0">
                      <ref role="3cqZAo" node="4142FbgULQn" resolve="urls" />
                    </node>
                    <node concept="liA8E" id="4E8FPsxFTnD" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.toArray(java.lang.Object[])" resolve="toArray" />
                      <node concept="2ShNRf" id="4E8FPsxFTnE" role="37wK5m">
                        <node concept="3$_iS1" id="4E8FPsxFTnF" role="2ShVmc">
                          <node concept="3$GHV9" id="4E8FPsxFTnG" role="3$GQph">
                            <node concept="2OqwBi" id="4E8FPsxFTnH" role="3$I4v7">
                              <node concept="37vLTw" id="4E8FPsxFTnI" role="2Oq$k0">
                                <ref role="3cqZAo" node="4142FbgULQn" resolve="urls" />
                              </node>
                              <node concept="liA8E" id="4E8FPsxFTnJ" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                              </node>
                            </node>
                          </node>
                          <node concept="3uibUv" id="4E8FPsxFTnK" role="3$_nBY">
                            <ref role="3uigEE" to="zf81:~URL" resolve="URL" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="4E8FPsxxq4E" role="37wK5m">
                    <ref role="3cqZAo" node="1ROuiHY5QV" resolve="rootCL" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4E8FPsxz8$9" role="3clFbw">
            <node concept="10Nm6u" id="4E8FPsxzaSE" role="3uHU7w" />
            <node concept="37vLTw" id="4E8FPsxz4SW" role="3uHU7B">
              <ref role="3cqZAo" node="4E8FPsxymrI" resolve="depResolver" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4E8FPsxxtwT" role="3cqZAp" />
        <node concept="3cpWs6" id="4142FbgULR4" role="3cqZAp">
          <node concept="2ShNRf" id="4142FbgULR5" role="3cqZAk">
            <node concept="YeOm9" id="4E8FPsxuASA" role="2ShVmc">
              <node concept="1Y3b0j" id="4E8FPsxuASD" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="zf81:~URLClassLoader.&lt;init&gt;(java.net.URL[],java.lang.ClassLoader)" resolve="URLClassLoader" />
                <ref role="1Y3XeK" to="zf81:~URLClassLoader" resolve="URLClassLoader" />
                <node concept="3Tm1VV" id="4E8FPsxuASE" role="1B3o_S" />
                <node concept="2OqwBi" id="1ROuiI1S2N" role="37wK5m">
                  <node concept="37vLTw" id="4142FbgULR7" role="2Oq$k0">
                    <ref role="3cqZAo" node="4142FbgULQn" resolve="urls" />
                  </node>
                  <node concept="liA8E" id="1ROuiI2fPF" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.toArray(java.lang.Object[])" resolve="toArray" />
                    <node concept="2ShNRf" id="1ROuiI2glI" role="37wK5m">
                      <node concept="3$_iS1" id="1ROuiI2hGq" role="2ShVmc">
                        <node concept="3$GHV9" id="1ROuiI2hGs" role="3$GQph">
                          <node concept="2OqwBi" id="1ROuiI2jNc" role="3$I4v7">
                            <node concept="37vLTw" id="1ROuiI2iTh" role="2Oq$k0">
                              <ref role="3cqZAo" node="4142FbgULQn" resolve="urls" />
                            </node>
                            <node concept="liA8E" id="1ROuiI2F1D" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                            </node>
                          </node>
                        </node>
                        <node concept="3uibUv" id="1ROuiI2he6" role="3$_nBY">
                          <ref role="3uigEE" to="zf81:~URL" resolve="URL" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1ROuiHYabp" role="37wK5m">
                  <ref role="3cqZAo" node="1ROuiHY5QV" resolve="rootCL" />
                </node>
                <node concept="2tJIrI" id="4E8FPsxuEh8" role="jymVt" />
                <node concept="3clFb_" id="4E8FPsxuJ0W" role="jymVt">
                  <property role="TrG5h" value="findClass" />
                  <node concept="3Tmbuc" id="4E8FPsxuJ0X" role="1B3o_S" />
                  <node concept="3uibUv" id="4E8FPsxuJ0Z" role="3clF45">
                    <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                    <node concept="3qTvmN" id="4E8FPsxuJ10" role="11_B2D" />
                  </node>
                  <node concept="37vLTG" id="4E8FPsxuJ11" role="3clF46">
                    <property role="TrG5h" value="name" />
                    <node concept="3uibUv" id="4E8FPsxuJ12" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="4E8FPsxuJ13" role="Sfmx6">
                    <ref role="3uigEE" to="wyt6:~ClassNotFoundException" resolve="ClassNotFoundException" />
                  </node>
                  <node concept="3clFbS" id="4E8FPsxuJ15" role="3clF47">
                    <node concept="3J1_TO" id="4E8FPsxvBGF" role="3cqZAp">
                      <node concept="3uVAMA" id="4E8FPsxvNlw" role="1zxBo5">
                        <node concept="XOnhg" id="4E8FPsxvNlx" role="1zc67B">
                          <property role="TrG5h" value="ex" />
                          <node concept="nSUau" id="4E8FPsxvNly" role="1tU5fm">
                            <node concept="3uibUv" id="4E8FPsxw0zB" role="nSUat">
                              <ref role="3uigEE" to="wyt6:~ClassNotFoundException" resolve="ClassNotFoundException" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="4E8FPsxvNlz" role="1zc67A">
                          <node concept="3cpWs8" id="4E8FPsxzNj5" role="3cqZAp">
                            <node concept="3cpWsn" id="4E8FPsxzNj6" role="3cpWs9">
                              <property role="TrG5h" value="fromDeps" />
                              <node concept="3uibUv" id="4E8FPsxzLRF" role="1tU5fm">
                                <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                                <node concept="3qTvmN" id="4E8FPsxzLRI" role="11_B2D" />
                              </node>
                              <node concept="2OqwBi" id="4E8FPsxzNj7" role="33vP2m">
                                <node concept="37vLTw" id="4E8FPsxzNj8" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4E8FPsxymrI" resolve="depResolver" />
                                </node>
                                <node concept="liA8E" id="4E8FPsxzNj9" role="2OqNvi">
                                  <ref role="37wK5l" to="82uw:~BiFunction.apply(java.lang.Object,java.lang.Object)" resolve="apply" />
                                  <node concept="37vLTw" id="4E8FPsxzNja" role="37wK5m">
                                    <ref role="3cqZAo" node="4142FbgULR9" resolve="pd" />
                                  </node>
                                  <node concept="37vLTw" id="4E8FPsxFh9N" role="37wK5m">
                                    <ref role="3cqZAo" node="4E8FPsxuJ11" resolve="name" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="4E8FPsx$65$" role="3cqZAp">
                            <node concept="3clFbS" id="4E8FPsx$65A" role="3clFbx">
                              <node concept="3cpWs6" id="4E8FPsx$lDW" role="3cqZAp">
                                <node concept="37vLTw" id="4E8FPsx$p74" role="3cqZAk">
                                  <ref role="3cqZAo" node="4E8FPsxzNj6" resolve="fromDeps" />
                                </node>
                              </node>
                            </node>
                            <node concept="3y3z36" id="4E8FPsx$f1J" role="3clFbw">
                              <node concept="10Nm6u" id="4E8FPsx$icr" role="3uHU7w" />
                              <node concept="37vLTw" id="4E8FPsx$9_W" role="3uHU7B">
                                <ref role="3cqZAo" node="4E8FPsxzNj6" resolve="fromDeps" />
                              </node>
                            </node>
                          </node>
                          <node concept="3SKdUt" id="4E8FPsx$GNJ" role="3cqZAp">
                            <node concept="1PaTwC" id="4E8FPsx$GNK" role="1aUNEU">
                              <node concept="3oM_SD" id="4E8FPsx$J0_" role="1PaTwD">
                                <property role="3oM_SC" value="not" />
                              </node>
                              <node concept="3oM_SD" id="4E8FPsx$J0B" role="1PaTwD">
                                <property role="3oM_SC" value="found" />
                              </node>
                              <node concept="3oM_SD" id="4E8FPsx$J2e" role="1PaTwD">
                                <property role="3oM_SC" value="-" />
                              </node>
                              <node concept="3oM_SD" id="4E8FPsx$J2i" role="1PaTwD">
                                <property role="3oM_SC" value="throw" />
                              </node>
                              <node concept="3oM_SD" id="4E8FPsx$J2n" role="1PaTwD">
                                <property role="3oM_SC" value="original" />
                              </node>
                              <node concept="3oM_SD" id="4E8FPsx$J2t" role="1PaTwD">
                                <property role="3oM_SC" value="exception" />
                              </node>
                            </node>
                          </node>
                          <node concept="YS8fn" id="4E8FPsx$xq8" role="3cqZAp">
                            <node concept="37vLTw" id="4E8FPsx$Afq" role="YScLw">
                              <ref role="3cqZAo" node="4E8FPsxvNlx" resolve="ex" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="4E8FPsxvBGH" role="1zxBo7">
                        <node concept="3cpWs6" id="4E8FPsxv4oK" role="3cqZAp">
                          <node concept="3nyPlj" id="4E8FPsxuJ18" role="3cqZAk">
                            <ref role="37wK5l" to="zf81:~URLClassLoader.findClass(java.lang.String)" resolve="findClass" />
                            <node concept="37vLTw" id="4E8FPsxuJ17" role="37wK5m">
                              <ref role="3cqZAo" node="4E8FPsxuJ11" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="4E8FPsxuJ16" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4142FbgULR9" role="3clF46">
        <property role="TrG5h" value="pd" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="1ROuiHXJZa" role="1tU5fm">
          <ref role="3uigEE" node="1ROuiHVPT6" resolve="PlatformPlugins.Descriptor" />
        </node>
      </node>
      <node concept="37vLTG" id="1ROuiHY5QV" role="3clF46">
        <property role="TrG5h" value="rootCL" />
        <node concept="3uibUv" id="1ROuiHY79U" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
        </node>
      </node>
      <node concept="3uibUv" id="4142FbgULRb" role="3clF45">
        <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
      </node>
      <node concept="3Tm6S6" id="4142FbgULQk" role="1B3o_S" />
      <node concept="37vLTG" id="4E8FPsxymrI" role="3clF46">
        <property role="TrG5h" value="depResolver" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4E8FPsxyr_T" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~BiFunction" resolve="BiFunction" />
          <node concept="3uibUv" id="4E8FPsxyzX7" role="11_B2D">
            <ref role="3uigEE" node="1ROuiHVPT6" resolve="PlatformPlugins.Descriptor" />
          </node>
          <node concept="17QB3L" id="4E8FPsxF69y" role="11_B2D" />
          <node concept="3uibUv" id="4E8FPsxyEWE" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
            <node concept="3qTvmN" id="4E8FPsxyIO0" role="11_B2D" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ROuiHVPwB" role="jymVt" />
    <node concept="312cEu" id="1ROuiHVPT6" role="jymVt">
      <property role="TrG5h" value="Descriptor" />
      <property role="2bfB8j" value="true" />
      <node concept="312cEg" id="1ROuiHVQbf" role="jymVt">
        <property role="TrG5h" value="id" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm1VV" id="1ROuiHVQ9S" role="1B3o_S" />
        <node concept="17QB3L" id="1ROuiHVQb4" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="1ROuiHVQcc" role="jymVt">
        <property role="TrG5h" value="home" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm1VV" id="1ROuiHVQcd" role="1B3o_S" />
        <node concept="3uibUv" id="1ROuiHVQdh" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="312cEg" id="1ROuiHVQiR" role="jymVt">
        <property role="TrG5h" value="cp" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm1VV" id="1ROuiHVQiS" role="1B3o_S" />
        <node concept="3uibUv" id="1ROuiHVQnS" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="1ROuiHVQun" role="11_B2D">
            <ref role="3uigEE" to="guwi:~File" resolve="File" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="1ROuiHVQLj" role="jymVt">
        <property role="TrG5h" value="modules" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm1VV" id="1ROuiHVQAH" role="1B3o_S" />
        <node concept="3uibUv" id="1ROuiHVQBU" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="1ROuiHVQEv" role="11_B2D">
            <ref role="3uigEE" to="guwi:~File" resolve="File" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="4E8FPsxrCq_" role="jymVt">
        <property role="TrG5h" value="dependencies" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm1VV" id="4E8FPsxrG2b" role="1B3o_S" />
        <node concept="3uibUv" id="4E8FPsxrCqC" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="17QB3L" id="4E8FPsxrCqD" role="11_B2D" />
        </node>
      </node>
      <node concept="2tJIrI" id="1ROuiHXxur" role="jymVt" />
      <node concept="3clFbW" id="1ROuiHVQWh" role="jymVt">
        <node concept="3cqZAl" id="1ROuiHVQWj" role="3clF45" />
        <node concept="3clFbS" id="1ROuiHVQWl" role="3clF47">
          <node concept="3clFbF" id="1ROuiHVRpi" role="3cqZAp">
            <node concept="37vLTI" id="1ROuiHVRGa" role="3clFbG">
              <node concept="37vLTw" id="1ROuiHVRRn" role="37vLTx">
                <ref role="3cqZAo" node="1ROuiHVQXT" resolve="pid" />
              </node>
              <node concept="37vLTw" id="1ROuiHVRph" role="37vLTJ">
                <ref role="3cqZAo" node="1ROuiHVQbf" resolve="id" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1ROuiHVRUc" role="3cqZAp">
            <node concept="37vLTI" id="1ROuiHVSpX" role="3clFbG">
              <node concept="37vLTw" id="1ROuiHVSvA" role="37vLTx">
                <ref role="3cqZAo" node="1ROuiHVQYo" resolve="pluginLocation" />
              </node>
              <node concept="37vLTw" id="1ROuiHVRUa" role="37vLTJ">
                <ref role="3cqZAo" node="1ROuiHVQcc" resolve="home" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1ROuiHVSzs" role="3cqZAp">
            <node concept="37vLTI" id="1ROuiHVTce" role="3clFbG">
              <node concept="37vLTw" id="1ROuiHVTiS" role="37vLTx">
                <ref role="3cqZAo" node="1ROuiHVR3Z" resolve="classpath" />
              </node>
              <node concept="37vLTw" id="1ROuiHVSzq" role="37vLTJ">
                <ref role="3cqZAo" node="1ROuiHVQiR" resolve="cp" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1ROuiHVTwY" role="3cqZAp">
            <node concept="37vLTI" id="1ROuiHVUim" role="3clFbG">
              <node concept="37vLTw" id="1ROuiHVUs4" role="37vLTx">
                <ref role="3cqZAo" node="1ROuiHVRen" resolve="languageLibs" />
              </node>
              <node concept="37vLTw" id="1ROuiHVTwW" role="37vLTJ">
                <ref role="3cqZAo" node="1ROuiHVQLj" resolve="modules" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4E8FPsxrCqE" role="3cqZAp">
            <node concept="37vLTI" id="4E8FPsxrCqG" role="3clFbG">
              <node concept="2OqwBi" id="4E8FPsxrONe" role="37vLTJ">
                <node concept="Xjq3P" id="4E8FPsxrNWh" role="2Oq$k0" />
                <node concept="2OwXpG" id="4E8FPsxrQ6s" role="2OqNvi">
                  <ref role="2Oxat5" node="4E8FPsxrCq_" resolve="dependencies" />
                </node>
              </node>
              <node concept="37vLTw" id="4E8FPsxrCqK" role="37vLTx">
                <ref role="3cqZAo" node="4E8FPsxrz3K" resolve="dependencies" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1ROuiHVQXT" role="3clF46">
          <property role="TrG5h" value="pid" />
          <node concept="17QB3L" id="1ROuiHVQXS" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="1ROuiHVQYo" role="3clF46">
          <property role="TrG5h" value="pluginLocation" />
          <node concept="3uibUv" id="1ROuiHVQYN" role="1tU5fm">
            <ref role="3uigEE" to="guwi:~File" resolve="File" />
          </node>
        </node>
        <node concept="37vLTG" id="1ROuiHVR3Z" role="3clF46">
          <property role="TrG5h" value="classpath" />
          <node concept="3uibUv" id="1ROuiHVR4u" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3uibUv" id="1ROuiHVR97" role="11_B2D">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1ROuiHVRen" role="3clF46">
          <property role="TrG5h" value="languageLibs" />
          <node concept="3uibUv" id="1ROuiHVReR" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3uibUv" id="1ROuiHVRjx" role="11_B2D">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4E8FPsxrz3K" role="3clF46">
          <property role="TrG5h" value="dependencies" />
          <node concept="3uibUv" id="4E8FPsxr$eG" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="17QB3L" id="4E8FPsxr_$H" role="11_B2D" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1ROuiHXAUb" role="jymVt" />
      <node concept="3clFb_" id="1ROuiHXC4d" role="jymVt">
        <property role="TrG5h" value="classLoader" />
        <node concept="3clFbS" id="1ROuiHXC4g" role="3clF47">
          <node concept="3clFbF" id="1ROuiHXCDS" role="3cqZAp">
            <node concept="1rXfSq" id="1ROuiHXCDR" role="3clFbG">
              <ref role="37wK5l" node="1ROuiHXyKC" resolve="pluginClassLoader" />
              <node concept="37vLTw" id="1ROuiHXCHt" role="37wK5m">
                <ref role="3cqZAo" node="1ROuiHVQbf" resolve="id" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="1ROuiHXBvD" role="3clF45">
          <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
        </node>
      </node>
      <node concept="2tJIrI" id="1ROuiHW3Ii" role="jymVt" />
      <node concept="3clFb_" id="1ROuiHW41J" role="jymVt">
        <property role="TrG5h" value="toString" />
        <node concept="3Tm1VV" id="1ROuiHW41K" role="1B3o_S" />
        <node concept="3uibUv" id="1ROuiHW41M" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3clFbS" id="1ROuiHW41N" role="3clF47">
          <node concept="3clFbF" id="1ROuiHW41Q" role="3cqZAp">
            <node concept="2YIFZM" id="1ROuiHW4Op" role="3clFbG">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
              <node concept="Xl_RD" id="1ROuiHW4V_" role="37wK5m">
                <property role="Xl_RC" value="[%s @ %s]" />
              </node>
              <node concept="37vLTw" id="1ROuiHW5a6" role="37wK5m">
                <ref role="3cqZAo" node="1ROuiHVQbf" resolve="id" />
              </node>
              <node concept="37vLTw" id="1ROuiHW5e8" role="37wK5m">
                <ref role="3cqZAo" node="1ROuiHVQcc" resolve="home" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1ROuiHW41O" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3UR2Jj" id="1ROuiHXjdq" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs_PG" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_PH" role="1PaTwD">
            <property role="3oM_SC" value="fields" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_PI" role="1PaTwD">
            <property role="3oM_SC" value="are" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_PJ" role="1PaTwD">
            <property role="3oM_SC" value="never" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_PK" role="1PaTwD">
            <property role="3oM_SC" value="null," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_PL" role="1PaTwD">
            <property role="3oM_SC" value="lists" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_PM" role="1PaTwD">
            <property role="3oM_SC" value="could" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_PN" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_PO" role="1PaTwD">
            <property role="3oM_SC" value="empty," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_PP" role="1PaTwD">
            <property role="3oM_SC" value="files" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_PQ" role="1PaTwD">
            <property role="3oM_SC" value="reference" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_PR" role="1PaTwD">
            <property role="3oM_SC" value="existing" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_PS" role="1PaTwD">
            <property role="3oM_SC" value="locations" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3UR2Jj" id="1ROuiHUz7z" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHs_PT" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_PU" role="1PaTwD">
          <property role="3oM_SC" value="Deals" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_PV" role="1PaTwD">
          <property role="3oM_SC" value="with" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_PW" role="1PaTwD">
          <property role="3oM_SC" value="(idea)" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_PX" role="1PaTwD">
          <property role="3oM_SC" value="platform" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_PY" role="1PaTwD">
          <property role="3oM_SC" value="plugins" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_PZ" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Q0" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Q1" role="1PaTwD">
          <property role="3oM_SC" value="purposes" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Q2" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Q3" role="1PaTwD">
          <property role="3oM_SC" value="MpsEnvironment." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_Q4" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_Q5" role="1PaTwD">
          <property role="3oM_SC" value="When" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Q6" role="1PaTwD">
          <property role="3oM_SC" value="there's" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Q7" role="1PaTwD">
          <property role="3oM_SC" value="full-fledged" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Q8" role="1PaTwD">
          <property role="3oM_SC" value="IDEA" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Q9" role="1PaTwD">
          <property role="3oM_SC" value="(i.e." />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Qa" role="1PaTwD">
          <property role="3oM_SC" value="IdeaEnvironment)," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Qb" role="1PaTwD">
          <property role="3oM_SC" value="there's" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Qc" role="1PaTwD">
          <property role="3oM_SC" value="no" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Qd" role="1PaTwD">
          <property role="3oM_SC" value="need" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Qe" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Qf" role="1PaTwD">
          <property role="3oM_SC" value="process" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Qg" role="1PaTwD">
          <property role="3oM_SC" value="plugin.xml," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Qh" role="1PaTwD">
          <property role="3oM_SC" value="but" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Qi" role="1PaTwD">
          <property role="3oM_SC" value="with" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Qj" role="1PaTwD">
          <property role="3oM_SC" value="lightweight" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Qk" role="1PaTwD">
          <property role="3oM_SC" value="MpsEnvironment" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Ql" role="1PaTwD">
          <property role="3oM_SC" value="we" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Qm" role="1PaTwD">
          <property role="3oM_SC" value="have" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Qn" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Qo" role="1PaTwD">
          <property role="3oM_SC" value="carry" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Qp" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Qq" role="1PaTwD">
          <property role="3oM_SC" value="burden" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_Qr" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_Qs" role="1PaTwD">
          <property role="3oM_SC" value="This" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Qt" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Qu" role="1PaTwD">
          <property role="3oM_SC" value="basically" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Qv" role="1PaTwD">
          <property role="3oM_SC" value="what" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Qw" role="1PaTwD">
          <property role="3oM_SC" value="PluginManagerCore" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Qx" role="1PaTwD">
          <property role="3oM_SC" value="from" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Qy" role="1PaTwD">
          <property role="3oM_SC" value="IDEA" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Qz" role="1PaTwD">
          <property role="3oM_SC" value="platform" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Q$" role="1PaTwD">
          <property role="3oM_SC" value="does," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_Q_" role="1PaTwD">
          <property role="3oM_SC" value="stripped" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_QA" role="1PaTwD">
          <property role="3oM_SC" value="down" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_QB" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_QC" role="1PaTwD">
          <property role="3oM_SC" value="focused" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_QD" role="1PaTwD">
          <property role="3oM_SC" value="on" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_QE" role="1PaTwD">
          <property role="3oM_SC" value="vital" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_QF" role="1PaTwD">
          <property role="3oM_SC" value="aspects" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_QG" role="1PaTwD">
          <property role="3oM_SC" value="only" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_QH" role="1PaTwD">
          <property role="3oM_SC" value="(namely," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_QI" role="1PaTwD">
          <property role="3oM_SC" value="classloading" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_QJ" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_QK" role="1PaTwD">
          <property role="3oM_SC" value="discovery" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_QL" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_QM" role="1PaTwD">
          <property role="3oM_SC" value="MPS" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_QN" role="1PaTwD">
          <property role="3oM_SC" value="modules)" />
        </node>
      </node>
    </node>
  </node>
</model>

