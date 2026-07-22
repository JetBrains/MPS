<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:da23e88f-09a4-4e69-a500-4e0698866fc9(jetbrains.mps.lang.test.generator.rt)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="acfc188d-d5d6-4598-b370-6f4a983f05b2" name="jetbrains.mps.baseLanguage.methodReferences" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
  </languages>
  <imports>
    <import index="y5e1" ref="r:4464540a-9650-433f-b716-ed95bbac5a69(jetbrains.mps.lang.test.matcher)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="mk8z" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.progress(MPS.Core/)" />
    <import index="79ha" ref="r:2876f1ee-0b45-4db5-8c09-0682cdee5c67(jetbrains.mps.tool.environment)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
    <import index="et5u" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.messages(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="bjdw" ref="r:4a23ef0d-9c2f-48a6-8597-fbdd5b11f792(jetbrains.mps.lang.generator.plan.structure)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="rjhg" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit(JUnit/)" />
    <import index="jtsr" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.project(MPS.OpenAPI/)" />
    <import index="ap4t" ref="215c4c45-ba99-49f5-9ab7-4b6901a63cfd/java:jetbrains.mps.generator(MPS.Generator/)" />
    <import index="wwqx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.logging(MPS.Core/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="rbkg" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.jupiter.api.extension(JUnit/)" />
    <import index="4rfc" ref="r:3cf16c72-eb63-43af-9e50-31efa02178ea(jetbrains.mps.baseLanguage.unitTest.runtime)" />
    <import index="4u8o" ref="r:a7abd5f1-5d9a-4c90-a542-3e14c173186d(jetbrains.mps.baseLanguage.unitTest.platform)" />
    <import index="lur" ref="r:fc8379f0-84d2-4927-817e-ae0057474174(jetbrains.mps.lang.test.generator.structure)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
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
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
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
        <property id="2523873803623706117" name="isMultiline" index="hSjvv" />
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
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
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
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
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
        <child id="1160998916832" name="message" index="1gVpfI" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
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
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918975462" name="jetbrains.mps.baseLanguage.structure.PostfixDecrementExpression" flags="nn" index="3uO5VW" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1178893518978" name="jetbrains.mps.baseLanguage.structure.ThisConstructorInvocation" flags="nn" index="1VxSAg" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
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
      <concept id="6832197706140518104" name="jetbrains.mps.baseLanguage.javadoc.structure.DocMethodParameterReference" flags="ng" index="zr_55" />
      <concept id="6832197706140518103" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseParameterReference" flags="ng" index="zr_5a">
        <reference id="6832197706140518108" name="param" index="zr_51" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690881930" name="jetbrains.mps.baseLanguage.javadoc.structure.ParameterBlockDocTag" flags="ng" index="TUZQ0">
        <property id="8465538089690881934" name="text" index="TUZQ4" />
        <child id="6832197706140518123" name="parameter" index="zr_5Q" />
      </concept>
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
    </language>
    <language id="acfc188d-d5d6-4598-b370-6f4a983f05b2" name="jetbrains.mps.baseLanguage.methodReferences">
      <concept id="237887375562511215" name="jetbrains.mps.baseLanguage.methodReferences.structure.MethodReference" flags="ng" index="37Ijox" />
      <concept id="3507059745126391419" name="jetbrains.mps.baseLanguage.methodReferences.structure.IMethodReference" flags="ngI" index="3UZKCU">
        <reference id="237887375562511297" name="method" index="37Ijqf" />
        <child id="962278442658307079" name="target" index="wWaWy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="5045161044515397667" name="jetbrains.mps.lang.smodel.structure.Node_PointerOperation" flags="ng" index="iZEcu" />
      <concept id="7400021826771268254" name="jetbrains.mps.lang.smodel.structure.SNodePointerType" flags="ig" index="2sp9CU">
        <reference id="7400021826771268269" name="concept" index="2sp9C9" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG">
        <child id="6750920497477046361" name="conceptArgument" index="3MHsoP" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
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
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1237467461002" name="jetbrains.mps.baseLanguage.collections.structure.GetIteratorOperation" flags="nn" index="uNJiE" />
      <concept id="1237467705688" name="jetbrains.mps.baseLanguage.collections.structure.IteratorType" flags="in" index="uOF1S">
        <child id="1237467730343" name="elementType" index="uOL27" />
      </concept>
      <concept id="1237470895604" name="jetbrains.mps.baseLanguage.collections.structure.HasNextOperation" flags="nn" index="v0PNk" />
      <concept id="1237471031357" name="jetbrains.mps.baseLanguage.collections.structure.GetNextOperation" flags="nn" index="v1n4t" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
    </language>
  </registry>
  <node concept="312cEu" id="3AyJARA_3iV">
    <property role="TrG5h" value="BaseGeneratorTest" />
    <node concept="312cEg" id="6VhyYlfP40B" role="jymVt">
      <property role="TrG5h" value="myEnv" />
      <node concept="3Tm6S6" id="6VhyYlfP40C" role="1B3o_S" />
      <node concept="3uibUv" id="6VhyYlfP40E" role="1tU5fm">
        <ref role="3uigEE" to="79ha:HKKzfMjqRV" resolve="Environment" />
      </node>
    </node>
    <node concept="312cEg" id="6VhyYlfP6Cd" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="6VhyYlfP6Ce" role="1B3o_S" />
      <node concept="3uibUv" id="5ABvamFVtCN" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
    </node>
    <node concept="312cEg" id="73bDYgTm0$o" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myTransformHelpers" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="73bDYgTlZvN" role="1B3o_S" />
      <node concept="3uibUv" id="73bDYgTm0w0" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="73bDYgTm0$5" role="11_B2D">
          <ref role="3uigEE" node="6VhyYlfKJd8" resolve="TransformHelper" />
        </node>
      </node>
      <node concept="2ShNRf" id="73bDYgTm1_H" role="33vP2m">
        <node concept="1pGfFk" id="73bDYgTm2fZ" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(int)" resolve="ArrayList" />
          <node concept="3uibUv" id="73bDYgTm2Bf" role="1pMfVU">
            <ref role="3uigEE" node="6VhyYlfKJd8" resolve="TransformHelper" />
          </node>
          <node concept="3cmrfG" id="73bDYgTm2KQ" role="37wK5m">
            <property role="3cmrfH" value="2" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6VhyYlfP4cS" role="jymVt" />
    <node concept="3clFb_" id="6VhyYlfP3VN" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="setEnvironment" />
      <node concept="3Tm1VV" id="6VhyYlfP3VP" role="1B3o_S" />
      <node concept="3cqZAl" id="6VhyYlfP3VQ" role="3clF45" />
      <node concept="37vLTG" id="6VhyYlfP3VR" role="3clF46">
        <property role="TrG5h" value="env" />
        <node concept="3uibUv" id="6VhyYlfP3VS" role="1tU5fm">
          <ref role="3uigEE" to="79ha:HKKzfMjqRV" resolve="Environment" />
        </node>
        <node concept="2AHcQZ" id="6VhyYlfP3VT" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="6VhyYlfP3VU" role="3clF47">
        <node concept="3clFbF" id="6VhyYlfP40F" role="3cqZAp">
          <node concept="37vLTI" id="6VhyYlfP40H" role="3clFbG">
            <node concept="37vLTw" id="6VhyYlfP40K" role="37vLTJ">
              <ref role="3cqZAo" node="6VhyYlfP40B" resolve="myEnv" />
            </node>
            <node concept="37vLTw" id="6VhyYlfP40L" role="37vLTx">
              <ref role="3cqZAo" node="6VhyYlfP3VR" resolve="env" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2HHqIa5E8$h" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXojXw" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXojXx" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojXy" role="1PaTwD">
              <property role="3oM_SC" value="AntModuleTestSuite" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojXz" role="1PaTwD">
              <property role="3oM_SC" value="opens" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojX$" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojX_" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojXA" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojXB" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojXC" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojXD" role="1PaTwD">
              <property role="3oM_SC" value="see" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojXE" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojXF" role="1PaTwD">
              <property role="3oM_SC" value="reason" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojXG" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojXH" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojXI" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojXJ" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojXK" role="1PaTwD">
              <property role="3oM_SC" value="open" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojXL" role="1PaTwD">
              <property role="3oM_SC" value="another" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojXM" role="1PaTwD">
              <property role="3oM_SC" value="one." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2HHqIa5E8Iv" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXojXN" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXojXO" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojXP" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojXQ" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojXR" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojXS" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojXT" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojXU" role="1PaTwD">
              <property role="3oM_SC" value="Project" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojXV" role="1PaTwD">
              <property role="3oM_SC" value="shall" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojXW" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojXX" role="1PaTwD">
              <property role="3oM_SC" value="external" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojXY" role="1PaTwD">
              <property role="3oM_SC" value="configuration" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojXZ" role="1PaTwD">
              <property role="3oM_SC" value="setting." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6sSwiyilRY9" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXojY0" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXojY1" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojY2" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojY3" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojY4" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojY5" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojY6" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojY7" role="1PaTwD">
              <property role="3oM_SC" value="As" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojY8" role="1PaTwD">
              <property role="3oM_SC" value="long" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojY9" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYa" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYb" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYc" role="1PaTwD">
              <property role="3oM_SC" value="have" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYd" role="1PaTwD">
              <property role="3oM_SC" value="access" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYe" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYf" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYg" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYh" role="1PaTwD">
              <property role="3oM_SC" value="created" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYi" role="1PaTwD">
              <property role="3oM_SC" value="inside" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYj" role="1PaTwD">
              <property role="3oM_SC" value="MpsTestsSuite," />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYk" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYl" role="1PaTwD">
              <property role="3oM_SC" value="decided" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYm" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYn" role="1PaTwD">
              <property role="3oM_SC" value="resort" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYo" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYp" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYq" role="1PaTwD">
              <property role="3oM_SC" value="CL" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYr" role="1PaTwD">
              <property role="3oM_SC" value="repository" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYs" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYt" role="1PaTwD">
              <property role="3oM_SC" value="now," />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6sSwiyilSsz" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXojYu" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXojYv" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYw" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYx" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYy" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYz" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojY$" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojY_" role="1PaTwD">
              <property role="3oM_SC" value="though" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYA" role="1PaTwD">
              <property role="3oM_SC" value="there's" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYB" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYC" role="1PaTwD">
              <property role="3oM_SC" value="chance" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYD" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYE" role="1PaTwD">
              <property role="3oM_SC" value="override" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYF" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYG" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYH" role="1PaTwD">
              <property role="3oM_SC" value="setProject()" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6VhyYlfP5U7" role="3cqZAp">
          <node concept="37vLTI" id="6VhyYlfP5U9" role="3clFbG">
            <node concept="2OqwBi" id="5ABvamFVub6" role="37vLTx">
              <node concept="2OqwBi" id="6VhyYlfP5dN" role="2Oq$k0">
                <node concept="37vLTw" id="6VhyYlfP5dO" role="2Oq$k0">
                  <ref role="3cqZAo" node="6VhyYlfP40B" resolve="myEnv" />
                </node>
                <node concept="liA8E" id="6VhyYlfP5dP" role="2OqNvi">
                  <ref role="37wK5l" to="79ha:8Pnvxgloc_" resolve="getPlatform" />
                </node>
              </node>
              <node concept="liA8E" id="5ABvamFVu$4" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="5ABvamFVuGP" role="37wK5m">
                  <ref role="3VsUkX" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6VhyYlfP5Ud" role="37vLTJ">
              <ref role="3cqZAo" node="6VhyYlfP6Cd" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6VhyYlfP3VV" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="BMoFi_$Qxa" role="jymVt" />
    <node concept="3clFb_" id="BMoFi_$Syu" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getEnvironment" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="true" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="BMoFi_$Syx" role="3clF47">
        <node concept="3cpWs6" id="BMoFi_$Upm" role="3cqZAp">
          <node concept="37vLTw" id="BMoFi_$Ur2" role="3cqZAk">
            <ref role="3cqZAo" node="6VhyYlfP40B" resolve="myEnv" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="BMoFi_$RxZ" role="1B3o_S" />
      <node concept="3uibUv" id="BMoFi_$SuU" role="3clF45">
        <ref role="3uigEE" to="79ha:HKKzfMjqRV" resolve="Environment" />
      </node>
    </node>
    <node concept="2tJIrI" id="BMoFi__zoF" role="jymVt" />
    <node concept="3clFb_" id="BMoFi___ug" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setProject" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="true" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="BMoFi__As0" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="BMoFi__Brc" role="1tU5fm">
          <ref role="3uigEE" to="jtsr:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="BMoFi___uj" role="3clF47">
        <node concept="3clFbF" id="BMoFi__DEo" role="3cqZAp">
          <node concept="37vLTI" id="BMoFi__Ect" role="3clFbG">
            <node concept="2OqwBi" id="BMoFi__ED0" role="37vLTx">
              <node concept="37vLTw" id="BMoFi__Ew8" role="2Oq$k0">
                <ref role="3cqZAo" node="BMoFi__As0" resolve="mpsProject" />
              </node>
              <node concept="liA8E" id="BMoFi__EN8" role="2OqNvi">
                <ref role="37wK5l" to="jtsr:~Project.getRepository()" resolve="getRepository" />
              </node>
            </node>
            <node concept="37vLTw" id="BMoFi__DEn" role="37vLTJ">
              <ref role="3cqZAo" node="6VhyYlfP6Cd" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="BMoFi__$q4" role="1B3o_S" />
      <node concept="3cqZAl" id="BMoFi___qP" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6VhyYlfKUIZ" role="jymVt" />
    <node concept="3clFb_" id="6VhyYlfKUJG" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="newTransformer" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="true" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6VhyYlfKUJJ" role="3clF47">
        <node concept="3SKdUt" id="5ABvamFVqtM" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXojYI" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXojYJ" role="1PaTwD">
              <property role="3oM_SC" value="Perhaps," />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYK" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYL" role="1PaTwD">
              <property role="3oM_SC" value="shall" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYM" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYN" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYO" role="1PaTwD">
              <property role="3oM_SC" value="handler" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYP" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYQ" role="1PaTwD">
              <property role="3oM_SC" value="pipes" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYR" role="1PaTwD">
              <property role="3oM_SC" value="everything" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYS" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYT" role="1PaTwD">
              <property role="3oM_SC" value="stdout" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYU" role="1PaTwD">
              <property role="3oM_SC" value="(warn" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYV" role="1PaTwD">
              <property role="3oM_SC" value="-&gt;" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYW" role="1PaTwD">
              <property role="3oM_SC" value="stdout," />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYX" role="1PaTwD">
              <property role="3oM_SC" value="error" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYY" role="1PaTwD">
              <property role="3oM_SC" value="-&gt;" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojYZ" role="1PaTwD">
              <property role="3oM_SC" value="stderr?)," />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZ0" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZ1" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZ2" role="1PaTwD">
              <property role="3oM_SC" value="now" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZ3" role="1PaTwD">
              <property role="3oM_SC" value="it's" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZ4" role="1PaTwD">
              <property role="3oM_SC" value="just" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5ABvamFVrax" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXojZ5" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXojZ6" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZ7" role="1PaTwD">
              <property role="3oM_SC" value="logger" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZ8" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZ9" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZa" role="1PaTwD">
              <property role="3oM_SC" value="category" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZb" role="1PaTwD">
              <property role="3oM_SC" value="matching" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZc" role="1PaTwD">
              <property role="3oM_SC" value="name" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZd" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZe" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZf" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZg" role="1PaTwD">
              <property role="3oM_SC" value="class" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="73bDYgTm35k" role="3cqZAp">
          <node concept="3cpWsn" id="73bDYgTm35l" role="3cpWs9">
            <property role="TrG5h" value="rv" />
            <node concept="3uibUv" id="73bDYgTm35b" role="1tU5fm">
              <ref role="3uigEE" node="6VhyYlfKJd8" resolve="TransformHelper" />
            </node>
            <node concept="2ShNRf" id="73bDYgTm35m" role="33vP2m">
              <node concept="1pGfFk" id="73bDYgTm35n" role="2ShVmc">
                <ref role="37wK5l" node="5ABvamFV4a7" resolve="TransformHelper" />
                <node concept="37vLTw" id="73bDYgTm35o" role="37wK5m">
                  <ref role="3cqZAo" node="6VhyYlfP6Cd" resolve="myRepository" />
                </node>
                <node concept="2ShNRf" id="73bDYgTm35p" role="37wK5m">
                  <node concept="1pGfFk" id="73bDYgTm35q" role="2ShVmc">
                    <ref role="37wK5l" to="et5u:~LogHandler.&lt;init&gt;(jetbrains.mps.logging.Logger)" resolve="LogHandler" />
                    <node concept="2YIFZM" id="73bDYgTm35r" role="37wK5m">
                      <ref role="1Pybhc" to="wwqx:~Logger" resolve="Logger" />
                      <ref role="37wK5l" to="wwqx:~Logger.getLogger(java.lang.Class)" resolve="getLogger" />
                      <node concept="1rXfSq" id="73bDYgTm35s" role="37wK5m">
                        <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="73bDYgTm5YG" role="3cqZAp">
          <node concept="2OqwBi" id="73bDYgTm7q$" role="3clFbG">
            <node concept="37vLTw" id="73bDYgTm5YE" role="2Oq$k0">
              <ref role="3cqZAo" node="73bDYgTm0$o" resolve="myTransformHelpers" />
            </node>
            <node concept="liA8E" id="73bDYgTmlL5" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="73bDYgTmm0S" role="37wK5m">
                <ref role="3cqZAo" node="73bDYgTm35l" resolve="rv" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6VhyYlfKUL2" role="3cqZAp">
          <node concept="37vLTw" id="73bDYgTm35t" role="3cqZAk">
            <ref role="3cqZAo" node="73bDYgTm35l" resolve="rv" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="6VhyYlfKUJj" role="1B3o_S" />
      <node concept="3uibUv" id="6VhyYlfKUJy" role="3clF45">
        <ref role="3uigEE" node="6VhyYlfKJd8" resolve="TransformHelper" />
      </node>
    </node>
    <node concept="2tJIrI" id="6VhyYlfL97R" role="jymVt" />
    <node concept="3clFb_" id="6VhyYlfL99j" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="assertMatch" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="true" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6VhyYlfL99m" role="3clF47">
        <node concept="3SKdUt" id="6VhyYlfLDfL" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXojZh" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXojZi" role="1PaTwD">
              <property role="3oM_SC" value="Next" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZj" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZk" role="1PaTwD">
              <property role="3oM_SC" value="wishful" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZl" role="1PaTwD">
              <property role="3oM_SC" value="thinking," />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZm" role="1PaTwD">
              <property role="3oM_SC" value="imagined" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZn" role="1PaTwD">
              <property role="3oM_SC" value="contract," />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZo" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZp" role="1PaTwD">
              <property role="3oM_SC" value="necessarily" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZq" role="1PaTwD">
              <property role="3oM_SC" value="real" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZr" role="1PaTwD">
              <property role="3oM_SC" value="at" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZs" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZt" role="1PaTwD">
              <property role="3oM_SC" value="moment," />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6VhyYlfLD_b" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXojZu" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXojZv" role="1PaTwD">
              <property role="3oM_SC" value="IOW," />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZw" role="1PaTwD">
              <property role="3oM_SC" value="what" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZx" role="1PaTwD">
              <property role="3oM_SC" value="I'd" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZy" role="1PaTwD">
              <property role="3oM_SC" value="like" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZz" role="1PaTwD">
              <property role="3oM_SC" value="match(m1,m2)" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZ$" role="1PaTwD">
              <property role="3oM_SC" value="contract" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZ_" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZA" role="1PaTwD">
              <property role="3oM_SC" value="look" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZB" role="1PaTwD">
              <property role="3oM_SC" value="like." />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZC" role="1PaTwD">
              <property role="3oM_SC" value="Have" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZD" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZE" role="1PaTwD">
              <property role="3oM_SC" value="refactor" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6VhyYlfLDDh" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXojZF" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXojZG" role="1PaTwD">
              <property role="3oM_SC" value="NodesMatcher" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZH" role="1PaTwD">
              <property role="3oM_SC" value="first," />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZI" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZJ" role="1PaTwD">
              <property role="3oM_SC" value="write" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZK" role="1PaTwD">
              <property role="3oM_SC" value="some" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZL" role="1PaTwD">
              <property role="3oM_SC" value="tests" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZM" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZN" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZO" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZP" role="1PaTwD">
              <property role="3oM_SC" value="ensure" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZQ" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZR" role="1PaTwD">
              <property role="3oM_SC" value="contract:" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6VhyYlfLCUR" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXojZS" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXojZT" role="1PaTwD">
              <property role="3oM_SC" value="return" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZU" role="1PaTwD">
              <property role="3oM_SC" value="true" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZV" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZW" role="1PaTwD">
              <property role="3oM_SC" value="models" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZX" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZY" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXojZZ" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok00" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok01" role="1PaTwD">
              <property role="3oM_SC" value="structure," />
            </node>
            <node concept="3oM_SD" id="ATZLwXok02" role="1PaTwD">
              <property role="3oM_SC" value="metadata," />
            </node>
            <node concept="3oM_SD" id="ATZLwXok03" role="1PaTwD">
              <property role="3oM_SC" value="value" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok04" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok05" role="1PaTwD">
              <property role="3oM_SC" value="reference" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok06" role="1PaTwD">
              <property role="3oM_SC" value="perspectives" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6VhyYlfLD3$" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXok07" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXok08" role="1PaTwD">
              <property role="3oM_SC" value="equality" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok09" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0a" role="1PaTwD">
              <property role="3oM_SC" value="reference" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0b" role="1PaTwD">
              <property role="3oM_SC" value="perspective" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0c" role="1PaTwD">
              <property role="3oM_SC" value="means" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0d" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0e" role="1PaTwD">
              <property role="3oM_SC" value="references" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0f" role="1PaTwD">
              <property role="3oM_SC" value="within" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0g" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0h" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0i" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0j" role="1PaTwD">
              <property role="3oM_SC" value="point" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0k" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6VhyYlfLD7u" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXok0l" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXok0m" role="1PaTwD">
              <property role="3oM_SC" value="equal" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0n" role="1PaTwD">
              <property role="3oM_SC" value="(in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0o" role="1PaTwD">
              <property role="3oM_SC" value="aforementioned" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0p" role="1PaTwD">
              <property role="3oM_SC" value="sense)" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0q" role="1PaTwD">
              <property role="3oM_SC" value="nodes," />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0r" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0s" role="1PaTwD">
              <property role="3oM_SC" value="external" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0t" role="1PaTwD">
              <property role="3oM_SC" value="references" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0u" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0v" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0w" role="1PaTwD">
              <property role="3oM_SC" value="target" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0x" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0y" role="1PaTwD">
              <property role="3oM_SC" value="equal" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0z" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0$" role="1PaTwD">
              <property role="3oM_SC" value="java" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0_" role="1PaTwD">
              <property role="3oM_SC" value="sense." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2HHqIa5JOe_" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXok0A" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXok0B" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0C" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0D" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0E" role="1PaTwD">
              <property role="3oM_SC" value="myProject.getModelAccess()" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0F" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0G" role="1PaTwD">
              <property role="3oM_SC" value="wrong," />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0H" role="1PaTwD">
              <property role="3oM_SC" value="empty" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0I" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0J" role="1PaTwD">
              <property role="3oM_SC" value="we've" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0K" role="1PaTwD">
              <property role="3oM_SC" value="just" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0L" role="1PaTwD">
              <property role="3oM_SC" value="created" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0M" role="1PaTwD">
              <property role="3oM_SC" value="doesn't" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0N" role="1PaTwD">
              <property role="3oM_SC" value="have" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0O" role="1PaTwD">
              <property role="3oM_SC" value="modules" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0P" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0Q" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0R" role="1PaTwD">
              <property role="3oM_SC" value="data," />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2HHqIa5JRHx" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXok0S" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXok0T" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0U" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0V" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0W" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0X" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0Y" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok0Z" role="1PaTwD">
              <property role="3oM_SC" value="however," />
            </node>
            <node concept="3oM_SD" id="ATZLwXok10" role="1PaTwD">
              <property role="3oM_SC" value="at" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok11" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok12" role="1PaTwD">
              <property role="3oM_SC" value="moment" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok13" role="1PaTwD">
              <property role="3oM_SC" value="I've" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok14" role="1PaTwD">
              <property role="3oM_SC" value="got" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok15" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok16" role="1PaTwD">
              <property role="3oM_SC" value="better" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok17" role="1PaTwD">
              <property role="3oM_SC" value="idea" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok18" role="1PaTwD">
              <property role="3oM_SC" value="how" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok19" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1a" role="1PaTwD">
              <property role="3oM_SC" value="access" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1b" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1c" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1d" role="1PaTwD">
              <property role="3oM_SC" value="MpsTestsSuite" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6YXK3BUi1l" role="3cqZAp">
          <node concept="3cpWsn" id="6YXK3BUi1m" role="3cpWs9">
            <property role="TrG5h" value="diff" />
            <node concept="3uibUv" id="6YXK3BUi0Y" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="6YXK3BUi11" role="11_B2D">
                <ref role="3uigEE" to="y5e1:7MIYyntDZEK" resolve="NodeDifference" />
              </node>
            </node>
            <node concept="2OqwBi" id="6YXK3BUi1n" role="33vP2m">
              <node concept="2ShNRf" id="6YXK3BUi1o" role="2Oq$k0">
                <node concept="1pGfFk" id="6YXK3BUi1p" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.ModelAccess)" resolve="ModelAccessHelper" />
                  <node concept="2OqwBi" id="6YXK3BUi1q" role="37wK5m">
                    <node concept="37vLTw" id="6YXK3BUi1r" role="2Oq$k0">
                      <ref role="3cqZAo" node="6VhyYlfP6Cd" resolve="myRepository" />
                    </node>
                    <node concept="liA8E" id="6YXK3BUi1s" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6YXK3BUi1t" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable)" resolve="runReadAction" />
                <node concept="1bVj0M" id="6YXK3BUi1u" role="37wK5m">
                  <node concept="3clFbS" id="6YXK3BUi1v" role="1bW5cS">
                    <node concept="3clFbF" id="6YXK3BUi1w" role="3cqZAp">
                      <node concept="2OqwBi" id="6YXK3BUi1x" role="3clFbG">
                        <node concept="2ShNRf" id="6YXK3BUi1y" role="2Oq$k0">
                          <node concept="1pGfFk" id="6YXK3BUi1z" role="2ShVmc">
                            <ref role="37wK5l" to="y5e1:39D1ywqVAMq" resolve="NodesMatcher" />
                            <node concept="2OqwBi" id="6YXK3BUi1$" role="37wK5m">
                              <node concept="37vLTw" id="6YXK3BUi1_" role="2Oq$k0">
                                <ref role="3cqZAo" node="6VhyYlfL9a1" resolve="m1" />
                              </node>
                              <node concept="2RRcyG" id="6YXK3BUi1A" role="2OqNvi" />
                            </node>
                            <node concept="2OqwBi" id="6YXK3BUi1B" role="37wK5m">
                              <node concept="37vLTw" id="6YXK3BUi1C" role="2Oq$k0">
                                <ref role="3cqZAo" node="6VhyYlfL9a_" resolve="m2" />
                              </node>
                              <node concept="2RRcyG" id="6YXK3BUi1D" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="6YXK3BUi1E" role="2OqNvi">
                          <ref role="37wK5l" to="y5e1:39D1ywqVH_i" resolve="diff" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6YXK3BUjSt" role="3cqZAp">
          <node concept="3clFbS" id="6YXK3BUjSv" role="3clFbx">
            <node concept="3cpWs6" id="6YXK3BUmXM" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="6YXK3BUleX" role="3clFbw">
            <node concept="37vLTw" id="6YXK3BUkkY" role="2Oq$k0">
              <ref role="3cqZAo" node="6YXK3BUi1m" resolve="diff" />
            </node>
            <node concept="liA8E" id="6YXK3BUmJd" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6YXK3BUt7_" role="3cqZAp">
          <node concept="3cpWsn" id="6YXK3BUt7A" role="3cpWs9">
            <property role="TrG5h" value="sb" />
            <node concept="3uibUv" id="6YXK3BUt7B" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="6YXK3BUtZw" role="33vP2m">
              <node concept="1pGfFk" id="6YXK3BUw6m" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="6YXK3BUqav" role="3cqZAp">
          <node concept="3clFbS" id="6YXK3BUqay" role="2LFqv$">
            <node concept="3clFbF" id="6YXK3BUw7_" role="3cqZAp">
              <node concept="2OqwBi" id="6YXK3BUwp1" role="3clFbG">
                <node concept="37vLTw" id="6YXK3BUw7$" role="2Oq$k0">
                  <ref role="3cqZAo" node="6YXK3BUt7A" resolve="sb" />
                </node>
                <node concept="liA8E" id="6YXK3BUwUa" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="2OqwBi" id="6YXK3BUx2Z" role="37wK5m">
                    <node concept="37vLTw" id="6YXK3BUwVV" role="2Oq$k0">
                      <ref role="3cqZAo" node="6YXK3BUqaz" resolve="nd" />
                    </node>
                    <node concept="liA8E" id="6YXK3BUxn_" role="2OqNvi">
                      <ref role="37wK5l" to="y5e1:39D1ywqUtCH" resolve="print" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6YXK3BUqaz" role="1Duv9x">
            <property role="TrG5h" value="nd" />
            <node concept="3uibUv" id="6YXK3BUqaB" role="1tU5fm">
              <ref role="3uigEE" to="y5e1:7MIYyntDZEK" resolve="NodeDifference" />
            </node>
          </node>
          <node concept="37vLTw" id="6YXK3BUqaC" role="1DdaDG">
            <ref role="3cqZAo" node="6YXK3BUi1m" resolve="diff" />
          </node>
        </node>
        <node concept="3clFbF" id="6VhyYlfMn00" role="3cqZAp">
          <node concept="2YIFZM" id="6YXK3BUxs9" role="3clFbG">
            <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
            <ref role="37wK5l" to="rjhg:~Assert.fail(java.lang.String)" resolve="fail" />
            <node concept="3cpWs3" id="6YXK3BUzuP" role="37wK5m">
              <node concept="2OqwBi" id="6YXK3BU$4H" role="3uHU7w">
                <node concept="37vLTw" id="6YXK3BUzw2" role="2Oq$k0">
                  <ref role="3cqZAo" node="6YXK3BUt7A" resolve="sb" />
                </node>
                <node concept="liA8E" id="6YXK3BU$Bp" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
                </node>
              </node>
              <node concept="Xl_RD" id="6YXK3BUxsa" role="3uHU7B">
                <property role="Xl_RC" value="Transformation output model doesn't match reference one:\n" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="6VhyYlfL98A" role="1B3o_S" />
      <node concept="37vLTG" id="6VhyYlfL9a1" role="3clF46">
        <property role="TrG5h" value="m1" />
        <node concept="H_c77" id="6VhyYlfL9a0" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6VhyYlfL9a_" role="3clF46">
        <property role="TrG5h" value="m2" />
        <node concept="H_c77" id="6VhyYlfL9b4" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="6YXK3BU8YB" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5wiIlPAvyan" role="jymVt" />
    <node concept="3clFb_" id="5wiIlPAv$5M" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="assertMatch" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="true" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5wiIlPAv$5P" role="3clF47">
        <node concept="3SKdUt" id="5wiIlPAvLr0" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXok1e" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXok1f" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1g" role="1PaTwD">
              <property role="3oM_SC" value="move" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1h" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1i" role="1PaTwD">
              <property role="3oM_SC" value="assert" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1j" role="1PaTwD">
              <property role="3oM_SC" value="methods" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1k" role="1PaTwD">
              <property role="3oM_SC" value="into" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1l" role="1PaTwD">
              <property role="3oM_SC" value="dedicated" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1m" role="1PaTwD">
              <property role="3oM_SC" value="ModelAsserts" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1n" role="1PaTwD">
              <property role="3oM_SC" value="class" />
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="5wiIlPAvAKO" role="3cqZAp">
          <node concept="3clFbC" id="5wiIlPAvC_D" role="1gVkn0">
            <node concept="2OqwBi" id="5wiIlPAvDQc" role="3uHU7w">
              <node concept="37vLTw" id="5wiIlPAvD6l" role="2Oq$k0">
                <ref role="3cqZAo" node="5wiIlPAv_Op" resolve="expected" />
              </node>
              <node concept="1Rwk04" id="5wiIlPAvENQ" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="5wiIlPAvB9I" role="3uHU7B">
              <node concept="37vLTw" id="5wiIlPAvALQ" role="2Oq$k0">
                <ref role="3cqZAo" node="5wiIlPAv$Ys" resolve="actual" />
              </node>
              <node concept="liA8E" id="5wiIlPAvBxp" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Collection.size()" resolve="size" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5wiIlPAvIBl" role="3cqZAp">
          <node concept="3cpWsn" id="5wiIlPAvIBm" role="3cpWs9">
            <property role="TrG5h" value="it" />
            <node concept="3uibUv" id="5wiIlPAvIBd" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
              <node concept="H_c77" id="5wiIlPAvIBg" role="11_B2D" />
            </node>
            <node concept="2OqwBi" id="5wiIlPAvIBn" role="33vP2m">
              <node concept="37vLTw" id="5wiIlPAvIBo" role="2Oq$k0">
                <ref role="3cqZAo" node="5wiIlPAv$Ys" resolve="actual" />
              </node>
              <node concept="liA8E" id="5wiIlPAvIBp" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Collection.iterator()" resolve="iterator" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5wiIlPAvFF0" role="3cqZAp">
          <node concept="3clFbS" id="5wiIlPAvFF2" role="2LFqv$">
            <node concept="3clFbF" id="5wiIlPAvJEn" role="3cqZAp">
              <node concept="1rXfSq" id="5wiIlPAvJEl" role="3clFbG">
                <ref role="37wK5l" node="6VhyYlfL99j" resolve="assertMatch" />
                <node concept="2OqwBi" id="5wiIlPAvJSr" role="37wK5m">
                  <node concept="37vLTw" id="5wiIlPAvJKG" role="2Oq$k0">
                    <ref role="3cqZAo" node="5wiIlPAvIBm" resolve="it" />
                  </node>
                  <node concept="liA8E" id="5wiIlPAvKdR" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Iterator.next()" resolve="next" />
                  </node>
                </node>
                <node concept="37vLTw" id="5wiIlPAvKVA" role="37wK5m">
                  <ref role="3cqZAo" node="5wiIlPAvFF3" resolve="ex" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5wiIlPAvFF3" role="1Duv9x">
            <property role="TrG5h" value="ex" />
            <node concept="H_c77" id="5wiIlPAvGe_" role="1tU5fm" />
          </node>
          <node concept="37vLTw" id="5wiIlPAvGwt" role="1DdaDG">
            <ref role="3cqZAo" node="5wiIlPAv_Op" resolve="expected" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="5wiIlPAvzaR" role="1B3o_S" />
      <node concept="3cqZAl" id="5wiIlPAv$4x" role="3clF45" />
      <node concept="37vLTG" id="5wiIlPAv$Ys" role="3clF46">
        <property role="TrG5h" value="actual" />
        <node concept="3uibUv" id="5wiIlPAv$Yr" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
          <node concept="H_c77" id="5wiIlPAv_NQ" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="5wiIlPAv_Op" role="3clF46">
        <property role="TrG5h" value="expected" />
        <node concept="8X2XB" id="5wiIlPAvAF2" role="1tU5fm">
          <node concept="H_c77" id="5wiIlPAvAE3" role="8Xvag" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="354Yu58nzVC" role="jymVt" />
    <node concept="3clFb_" id="354Yu58nyp6" role="jymVt">
      <property role="TrG5h" value="planProviderFromModel" />
      <property role="DiZV1" value="true" />
      <node concept="3uibUv" id="354Yu58n$qr" role="3clF45">
        <ref role="3uigEE" to="ap4t:~ModelGenerationPlan$Provider" resolve="ModelGenerationPlan.Provider" />
      </node>
      <node concept="3Tmbuc" id="354Yu58nyp8" role="1B3o_S" />
      <node concept="3clFbS" id="354Yu58nyp9" role="3clF47">
        <node concept="3cpWs6" id="354Yu58sFo9" role="3cqZAp">
          <node concept="2OqwBi" id="354Yu58sCCG" role="3cqZAk">
            <node concept="2ShNRf" id="354Yu58sAu1" role="2Oq$k0">
              <node concept="1pGfFk" id="354Yu58sBA9" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository)" resolve="ModelAccessHelper" />
                <node concept="2OqwBi" id="354Yu58sCjc" role="37wK5m">
                  <node concept="2JrnkZ" id="354Yu58sCcC" role="2Oq$k0">
                    <node concept="37vLTw" id="354Yu58sBCw" role="2JrQYb">
                      <ref role="3cqZAo" node="354Yu58nypP" resolve="gpm" />
                    </node>
                  </node>
                  <node concept="liA8E" id="354Yu58sCy3" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="354Yu58sDfn" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="354Yu58sDkq" role="37wK5m">
                <node concept="3clFbS" id="354Yu58sDkr" role="1bW5cS">
                  <node concept="3cpWs8" id="354Yu58nypa" role="3cqZAp">
                    <node concept="3cpWsn" id="354Yu58nypb" role="3cpWs9">
                      <property role="TrG5h" value="lreg" />
                      <node concept="3uibUv" id="354Yu58nypc" role="1tU5fm">
                        <ref role="3uigEE" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                      </node>
                      <node concept="2OqwBi" id="354Yu58nypd" role="33vP2m">
                        <node concept="2OqwBi" id="354Yu58nype" role="2Oq$k0">
                          <node concept="37vLTw" id="354Yu58nypf" role="2Oq$k0">
                            <ref role="3cqZAo" node="6VhyYlfP40B" resolve="myEnv" />
                          </node>
                          <node concept="liA8E" id="354Yu58nypg" role="2OqNvi">
                            <ref role="37wK5l" to="79ha:8Pnvxgloc_" resolve="getPlatform" />
                          </node>
                        </node>
                        <node concept="liA8E" id="354Yu58nyph" role="2OqNvi">
                          <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                          <node concept="3VsKOn" id="354Yu58nypi" role="37wK5m">
                            <ref role="3VsUkX" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="354Yu58nypj" role="3cqZAp">
                    <node concept="3cpWsn" id="354Yu58nypk" role="3cpWs9">
                      <property role="TrG5h" value="mh" />
                      <node concept="3uibUv" id="354Yu58nypl" role="1tU5fm">
                        <ref role="3uigEE" to="et5u:~LogHandler" resolve="LogHandler" />
                      </node>
                      <node concept="2ShNRf" id="354Yu58nypm" role="33vP2m">
                        <node concept="1pGfFk" id="354Yu58nypn" role="2ShVmc">
                          <ref role="37wK5l" to="et5u:~LogHandler.&lt;init&gt;(jetbrains.mps.logging.Logger)" resolve="LogHandler" />
                          <node concept="2YIFZM" id="354Yu58nypo" role="37wK5m">
                            <ref role="1Pybhc" to="wwqx:~Logger" resolve="Logger" />
                            <ref role="37wK5l" to="wwqx:~Logger.getLogger(java.lang.Class)" resolve="getLogger" />
                            <node concept="1rXfSq" id="354Yu58nypp" role="37wK5m">
                              <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="354Yu58nypq" role="3cqZAp">
                    <node concept="3cpWsn" id="354Yu58nypr" role="3cpWs9">
                      <property role="TrG5h" value="planNode" />
                      <node concept="2sp9CU" id="354Yu58nyps" role="1tU5fm">
                        <ref role="2sp9C9" to="bjdw:1_4co2y1LvV" resolve="Plan" />
                      </node>
                      <node concept="2OqwBi" id="354Yu58nypt" role="33vP2m">
                        <node concept="2OqwBi" id="354Yu58nypu" role="2Oq$k0">
                          <node concept="2OqwBi" id="354Yu58nypv" role="2Oq$k0">
                            <node concept="37vLTw" id="354Yu58nypw" role="2Oq$k0">
                              <ref role="3cqZAo" node="354Yu58nypP" resolve="gpm" />
                            </node>
                            <node concept="2RRcyG" id="354Yu58nypx" role="2OqNvi">
                              <node concept="chp4Y" id="5QK5AMJp7$k" role="3MHsoP">
                                <ref role="cht4Q" to="bjdw:1_4co2y1LvV" resolve="Plan" />
                              </node>
                            </node>
                          </node>
                          <node concept="1uHKPH" id="354Yu58nypy" role="2OqNvi" />
                        </node>
                        <node concept="iZEcu" id="354Yu58nypz" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="354Yu58nypI" role="3cqZAp">
                    <node concept="2ShNRf" id="354Yu58nypC" role="3cqZAk">
                      <node concept="1pGfFk" id="354Yu58nypD" role="2ShVmc">
                        <ref role="37wK5l" to="ap4t:~InterpretedPlanProvider.&lt;init&gt;(jetbrains.mps.smodel.language.LanguageRegistry,jetbrains.mps.messages.IMessageHandler,org.jetbrains.mps.openapi.model.SNodeReference,org.jetbrains.mps.openapi.module.SRepository)" resolve="InterpretedPlanProvider" />
                        <node concept="37vLTw" id="354Yu58nypE" role="37wK5m">
                          <ref role="3cqZAo" node="354Yu58nypb" resolve="lreg" />
                        </node>
                        <node concept="37vLTw" id="354Yu58nypF" role="37wK5m">
                          <ref role="3cqZAo" node="354Yu58nypk" resolve="mh" />
                        </node>
                        <node concept="37vLTw" id="354Yu58nypG" role="37wK5m">
                          <ref role="3cqZAo" node="354Yu58nypr" resolve="planNode" />
                        </node>
                        <node concept="37vLTw" id="354Yu58nypH" role="37wK5m">
                          <ref role="3cqZAo" node="6VhyYlfP6Cd" resolve="myRepository" />
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
      <node concept="37vLTG" id="354Yu58nypP" role="3clF46">
        <property role="TrG5h" value="gpm" />
        <node concept="H_c77" id="354Yu58nypQ" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2kP5W5yTF0d" role="jymVt" />
    <node concept="3clFb_" id="2kP5W5yTGwT" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="findModel" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="true" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2kP5W5yTGwW" role="3clF47">
        <node concept="3SKdUt" id="354Yu58sIZx" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXok1o" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXok1p" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1q" role="1PaTwD">
              <property role="3oM_SC" value="lacking" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1r" role="1PaTwD">
              <property role="3oM_SC" value="proper" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1s" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1t" role="1PaTwD">
              <property role="3oM_SC" value="access," />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1u" role="1PaTwD">
              <property role="3oM_SC" value="works" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1v" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1w" role="1PaTwD">
              <property role="3oM_SC" value="mr.resolve" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1x" role="1PaTwD">
              <property role="3oM_SC" value="just" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1y" role="1PaTwD">
              <property role="3oM_SC" value="complains" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1z" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1$" role="1PaTwD">
              <property role="3oM_SC" value="WARN" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1_" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1A" role="1PaTwD">
              <property role="3oM_SC" value="there's" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1B" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1C" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1D" role="1PaTwD">
              <property role="3oM_SC" value="read" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6sSwiyilTu9" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXok1E" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXok1F" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1G" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1H" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1I" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1J" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1K" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1L" role="1PaTwD">
              <property role="3oM_SC" value="Need" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1M" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1N" role="1PaTwD">
              <property role="3oM_SC" value="decide" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1O" role="1PaTwD">
              <property role="3oM_SC" value="how" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1P" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1Q" role="1PaTwD">
              <property role="3oM_SC" value="grab" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1R" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1S" role="1PaTwD">
              <property role="3oM_SC" value="locks" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1T" role="1PaTwD">
              <property role="3oM_SC" value="effectively," />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1U" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1V" role="1PaTwD">
              <property role="3oM_SC" value="want" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1W" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1X" role="1PaTwD">
              <property role="3oM_SC" value="grab" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1Y" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok1Z" role="1PaTwD">
              <property role="3oM_SC" value="here," />
            </node>
            <node concept="3oM_SD" id="ATZLwXok20" role="1PaTwD">
              <property role="3oM_SC" value="either" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok21" role="1PaTwD">
              <property role="3oM_SC" value="shall" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok22" role="1PaTwD">
              <property role="3oM_SC" value="wrap" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok23" role="1PaTwD">
              <property role="3oM_SC" value="whole" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok24" role="1PaTwD">
              <property role="3oM_SC" value="prepareArguments()" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok25" role="1PaTwD">
              <property role="3oM_SC" value="or" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok26" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok27" role="1PaTwD">
              <property role="3oM_SC" value="method" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2HHqIa5EjXS" role="3cqZAp">
          <node concept="3cpWsn" id="2HHqIa5EjXT" role="3cpWs9">
            <property role="TrG5h" value="mr" />
            <node concept="3uibUv" id="2HHqIa5EjXF" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
            </node>
            <node concept="2OqwBi" id="2HHqIa5EjXU" role="33vP2m">
              <node concept="2YIFZM" id="2HHqIa5EQty" role="2Oq$k0">
                <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
              </node>
              <node concept="liA8E" id="2HHqIa5EjXZ" role="2OqNvi">
                <ref role="37wK5l" to="dush:~PersistenceFacade.createModelReference(java.lang.String)" resolve="createModelReference" />
                <node concept="37vLTw" id="2HHqIa5EjY0" role="37wK5m">
                  <ref role="3cqZAo" node="2kP5W5yTHcU" resolve="modelRef" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2HHqIa5EkvG" role="3cqZAp">
          <node concept="2OqwBi" id="2HHqIa5EkIs" role="3cqZAk">
            <node concept="37vLTw" id="2HHqIa5EkvI" role="2Oq$k0">
              <ref role="3cqZAo" node="2HHqIa5EjXT" resolve="mr" />
            </node>
            <node concept="liA8E" id="2HHqIa5El4$" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModelReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
              <node concept="37vLTw" id="6sSwiyilOOC" role="37wK5m">
                <ref role="3cqZAo" node="6VhyYlfP6Cd" resolve="myRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="2kP5W5yTG7Z" role="1B3o_S" />
      <node concept="H_c77" id="2kP5W5yTGBg" role="3clF45" />
      <node concept="37vLTG" id="2kP5W5yTHcU" role="3clF46">
        <property role="TrG5h" value="modelRef" />
        <node concept="17QB3L" id="2kP5W5yTHcT" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6sSwiyirUcs" role="jymVt" />
    <node concept="3clFb_" id="6sSwiyirTbI" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="findModel" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="true" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6sSwiyirTbJ" role="3clF47">
        <node concept="3cpWs8" id="6sSwiyirXoV" role="3cqZAp">
          <node concept="3cpWsn" id="6sSwiyirXoY" role="3cpWs9">
            <property role="TrG5h" value="m" />
            <node concept="H_c77" id="6sSwiyirXoT" role="1tU5fm" />
            <node concept="1rXfSq" id="6sSwiyirYpo" role="33vP2m">
              <ref role="37wK5l" node="2kP5W5yTGwT" resolve="findModel" />
              <node concept="37vLTw" id="6sSwiyirYxc" role="37wK5m">
                <ref role="3cqZAo" node="6sSwiyirTc2" resolve="modelRef" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6sSwiyirZz1" role="3cqZAp">
          <node concept="2YIFZM" id="6sSwiyis0ut" role="3clFbG">
            <ref role="1Pybhc" to="rjhg:~Assume" resolve="Assume" />
            <ref role="37wK5l" to="rjhg:~Assume.assumeTrue(java.lang.String,boolean)" resolve="assumeTrue" />
            <node concept="2YIFZM" id="6sSwiyis3Hq" role="37wK5m">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
              <node concept="Xl_RD" id="6sSwiyis3N8" role="37wK5m">
                <property role="Xl_RC" value="Could not find model for parameter '%s' (%s)" />
              </node>
              <node concept="37vLTw" id="6sSwiyis3UR" role="37wK5m">
                <ref role="3cqZAo" node="6sSwiyirVbn" resolve="parameterName" />
              </node>
              <node concept="37vLTw" id="6sSwiyis5FS" role="37wK5m">
                <ref role="3cqZAo" node="6sSwiyirTc2" resolve="modelRef" />
              </node>
            </node>
            <node concept="3y3z36" id="6sSwiyis3v8" role="37wK5m">
              <node concept="10Nm6u" id="6sSwiyis3yr" role="3uHU7w" />
              <node concept="37vLTw" id="6sSwiyis3mL" role="3uHU7B">
                <ref role="3cqZAo" node="6sSwiyirXoY" resolve="m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6sSwiyirTbV" role="3cqZAp">
          <node concept="37vLTw" id="6sSwiyis7Hb" role="3cqZAk">
            <ref role="3cqZAo" node="6sSwiyirXoY" resolve="m" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="6sSwiyirTc0" role="1B3o_S" />
      <node concept="H_c77" id="6sSwiyirTc1" role="3clF45" />
      <node concept="37vLTG" id="6sSwiyirVbn" role="3clF46">
        <property role="TrG5h" value="parameterName" />
        <node concept="17QB3L" id="6sSwiyirW5S" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6sSwiyirTc2" role="3clF46">
        <property role="TrG5h" value="modelRef" />
        <node concept="17QB3L" id="6sSwiyirTc3" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="73bDYgTmmgj" role="jymVt" />
    <node concept="3clFb_" id="73bDYgTmoAY" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="cleanup" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="73bDYgTmoB1" role="3clF47">
        <node concept="1DcWWT" id="73bDYgTmsUS" role="3cqZAp">
          <node concept="3clFbS" id="73bDYgTmsUV" role="2LFqv$">
            <node concept="3clFbF" id="73bDYgTmuj3" role="3cqZAp">
              <node concept="2OqwBi" id="73bDYgTmunc" role="3clFbG">
                <node concept="37vLTw" id="73bDYgTmuj2" role="2Oq$k0">
                  <ref role="3cqZAo" node="73bDYgTmsUW" resolve="th" />
                </node>
                <node concept="liA8E" id="73bDYgTmuHV" role="2OqNvi">
                  <ref role="37wK5l" node="73bDYgTlM67" resolve="dispose" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="73bDYgTmsUW" role="1Duv9x">
            <property role="TrG5h" value="th" />
            <node concept="3uibUv" id="73bDYgTmsV0" role="1tU5fm">
              <ref role="3uigEE" node="6VhyYlfKJd8" resolve="TransformHelper" />
            </node>
          </node>
          <node concept="37vLTw" id="73bDYgTmsV1" role="1DdaDG">
            <ref role="3cqZAo" node="73bDYgTm0$o" resolve="myTransformHelpers" />
          </node>
        </node>
        <node concept="3clFbF" id="73bDYgTmvga" role="3cqZAp">
          <node concept="2OqwBi" id="73bDYgTmwea" role="3clFbG">
            <node concept="37vLTw" id="73bDYgTmvg8" role="2Oq$k0">
              <ref role="3cqZAo" node="73bDYgTm0$o" resolve="myTransformHelpers" />
            </node>
            <node concept="liA8E" id="73bDYgTmHa9" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.clear()" resolve="clear" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="73bDYgTmnsz" role="1B3o_S" />
      <node concept="3cqZAl" id="73bDYgTmo$1" role="3clF45" />
      <node concept="2AHcQZ" id="73bDYgTmpIK" role="2AJF6D">
        <ref role="2AI5Lk" to="rjhg:~After" resolve="After" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3AyJARA_3iW" role="1B3o_S" />
    <node concept="3uibUv" id="6VhyYlfP2Qq" role="EKbjA">
      <ref role="3uigEE" to="79ha:7KC1aYnI6jD" resolve="EnvironmentAware" />
    </node>
    <node concept="2AHcQZ" id="7MSVDs3cwhz" role="2AJF6D">
      <ref role="2AI5Lk" to="rbkg:~ExtendWith" resolve="ExtendWith" />
      <node concept="2B6LJw" id="7MSVDs3cFOn" role="2B76xF">
        <ref role="2B6OnR" to="rbkg:~ExtendWith.value()" resolve="value" />
        <node concept="3VsKOn" id="7MSVDs3cOlv" role="2B70Vg">
          <ref role="3VsUkX" to="4rfc:5gsHVKCieoX" resolve="EnvironmentAwareExtension" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6VhyYlfKJd8">
    <property role="TrG5h" value="TransformHelper" />
    <property role="1EXbeo" value="true" />
    <node concept="312cEg" id="5ABvamFVci6" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5ABvamFVci7" role="1B3o_S" />
      <node concept="3uibUv" id="5ABvamFVci9" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
    </node>
    <node concept="312cEg" id="5ABvamFVaif" role="jymVt">
      <property role="TrG5h" value="myMessages" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5ABvamFVaig" role="1B3o_S" />
      <node concept="3uibUv" id="5ABvamFVaii" role="1tU5fm">
        <ref role="3uigEE" to="et5u:~IMessageHandler" resolve="IMessageHandler" />
      </node>
    </node>
    <node concept="312cEg" id="6VhyYlfKTY2" role="jymVt">
      <property role="TrG5h" value="myInputModel" />
      <node concept="3Tm6S6" id="6VhyYlfKTY3" role="1B3o_S" />
      <node concept="H_c77" id="6VhyYlfKTY5" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="6VhyYlfKU4H" role="jymVt">
      <property role="TrG5h" value="myPlanProvider" />
      <node concept="3Tm6S6" id="6VhyYlfKU4I" role="1B3o_S" />
      <node concept="3uibUv" id="354Yu58nDSn" role="1tU5fm">
        <ref role="3uigEE" to="ap4t:~ModelGenerationPlan$Provider" resolve="ModelGenerationPlan.Provider" />
      </node>
    </node>
    <node concept="312cEg" id="6VhyYlfOHv0" role="jymVt">
      <property role="TrG5h" value="myGenOutcome" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="6VhyYlfOHv1" role="1B3o_S" />
      <node concept="3uibUv" id="6VhyYlfOFcw" role="1tU5fm">
        <ref role="3uigEE" to="ap4t:~GenerationStatus" resolve="GenerationStatus" />
      </node>
    </node>
    <node concept="312cEg" id="73bDYgTlNLN" role="jymVt">
      <property role="TrG5h" value="myTransientsProvider" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="73bDYgTlNLO" role="1B3o_S" />
      <node concept="3uibUv" id="6VhyYlfO2Ff" role="1tU5fm">
        <ref role="3uigEE" to="ap4t:~TransientModelsProvider" resolve="TransientModelsProvider" />
      </node>
    </node>
    <node concept="2tJIrI" id="6VhyYlfOHqZ" role="jymVt" />
    <node concept="3clFbW" id="5ABvamFV4a7" role="jymVt">
      <node concept="3cqZAl" id="5ABvamFV4a8" role="3clF45" />
      <node concept="3clFbS" id="5ABvamFV4a9" role="3clF47">
        <node concept="3clFbF" id="5ABvamFVcia" role="3cqZAp">
          <node concept="37vLTI" id="5ABvamFVcic" role="3clFbG">
            <node concept="37vLTw" id="5ABvamFVcif" role="37vLTJ">
              <ref role="3cqZAo" node="5ABvamFVci6" resolve="myRepository" />
            </node>
            <node concept="37vLTw" id="5ABvamFVcig" role="37vLTx">
              <ref role="3cqZAo" node="5ABvamFV4ae" resolve="repository" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5ABvamFVaij" role="3cqZAp">
          <node concept="37vLTI" id="5ABvamFVail" role="3clFbG">
            <node concept="37vLTw" id="5ABvamFVaio" role="37vLTJ">
              <ref role="3cqZAo" node="5ABvamFVaif" resolve="myMessages" />
            </node>
            <node concept="37vLTw" id="5ABvamFVaip" role="37vLTx">
              <ref role="3cqZAo" node="5ABvamFV4XR" resolve="messages" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5ABvamFV4ae" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="5ABvamFV4Sr" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="5ABvamFV4XR" role="3clF46">
        <property role="TrG5h" value="messages" />
        <node concept="3uibUv" id="5ABvamFVahQ" role="1tU5fm">
          <ref role="3uigEE" to="et5u:~IMessageHandler" resolve="IMessageHandler" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6VhyYlfKJet" role="jymVt">
      <property role="TrG5h" value="setInput" />
      <node concept="3uibUv" id="6VhyYlfKJf8" role="3clF45">
        <ref role="3uigEE" node="6VhyYlfKJd8" resolve="TransformHelper" />
      </node>
      <node concept="3Tm1VV" id="6VhyYlfKJew" role="1B3o_S" />
      <node concept="3clFbS" id="6VhyYlfKJex" role="3clF47">
        <node concept="3clFbF" id="6VhyYlfKTY6" role="3cqZAp">
          <node concept="37vLTI" id="6VhyYlfKTY8" role="3clFbG">
            <node concept="37vLTw" id="6VhyYlfKTYb" role="37vLTJ">
              <ref role="3cqZAo" node="6VhyYlfKTY2" resolve="myInputModel" />
            </node>
            <node concept="37vLTw" id="6VhyYlfKTYc" role="37vLTx">
              <ref role="3cqZAo" node="6VhyYlfKJh6" resolve="inputModel" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6VhyYlfKUqq" role="3cqZAp">
          <node concept="Xjq3P" id="6VhyYlfKUvk" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="6VhyYlfKJh6" role="3clF46">
        <property role="TrG5h" value="inputModel" />
        <node concept="H_c77" id="6VhyYlfKJh5" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="6VhyYlfKJjK" role="jymVt">
      <property role="TrG5h" value="setPlan" />
      <node concept="3uibUv" id="6VhyYlfKJkJ" role="3clF45">
        <ref role="3uigEE" node="6VhyYlfKJd8" resolve="TransformHelper" />
      </node>
      <node concept="3Tm1VV" id="6VhyYlfKJjP" role="1B3o_S" />
      <node concept="3clFbS" id="6VhyYlfKJjQ" role="3clF47">
        <node concept="3cpWs6" id="6VhyYlfKU$d" role="3cqZAp">
          <node concept="Xjq3P" id="6VhyYlfKU_M" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="6VhyYlfKOHP" role="3clF46">
        <property role="TrG5h" value="generationPlan" />
        <node concept="3uibUv" id="6VhyYlfKOHO" role="1tU5fm">
          <ref role="3uigEE" to="ap4t:~ModelGenerationPlan" resolve="ModelGenerationPlan" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="354Yu58nCSx" role="jymVt" />
    <node concept="3clFb_" id="354Yu58nCyL" role="jymVt">
      <property role="TrG5h" value="setPlanProvider" />
      <node concept="3uibUv" id="354Yu58nCyM" role="3clF45">
        <ref role="3uigEE" node="6VhyYlfKJd8" resolve="TransformHelper" />
      </node>
      <node concept="3Tm1VV" id="354Yu58nCyN" role="1B3o_S" />
      <node concept="3clFbS" id="354Yu58nCyO" role="3clF47">
        <node concept="3clFbF" id="354Yu58nCyP" role="3cqZAp">
          <node concept="37vLTI" id="354Yu58nCyQ" role="3clFbG">
            <node concept="37vLTw" id="354Yu58nCyR" role="37vLTJ">
              <ref role="3cqZAo" node="6VhyYlfKU4H" resolve="myPlanProvider" />
            </node>
            <node concept="37vLTw" id="354Yu58nCyS" role="37vLTx">
              <ref role="3cqZAo" node="354Yu58nCyV" resolve="gpProvider" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="354Yu58nCyT" role="3cqZAp">
          <node concept="Xjq3P" id="354Yu58nCyU" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="354Yu58nCyV" role="3clF46">
        <property role="TrG5h" value="gpProvider" />
        <node concept="3uibUv" id="354Yu58nDNx" role="1tU5fm">
          <ref role="3uigEE" to="ap4t:~ModelGenerationPlan$Provider" resolve="ModelGenerationPlan.Provider" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6VhyYlfKRxq" role="jymVt" />
    <node concept="3clFb_" id="6VhyYlfKR_6" role="jymVt">
      <property role="TrG5h" value="transform" />
      <node concept="3uibUv" id="6VhyYlfKRQF" role="3clF45">
        <ref role="3uigEE" node="6VhyYlfKJd8" resolve="TransformHelper" />
      </node>
      <node concept="3Tm1VV" id="6VhyYlfKR_9" role="1B3o_S" />
      <node concept="3clFbS" id="6VhyYlfKR_a" role="3clF47">
        <node concept="3SKdUt" id="6VhyYlfOR2m" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXok28" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXok29" role="1PaTwD">
              <property role="3oM_SC" value="XXX" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok2a" role="1PaTwD">
              <property role="3oM_SC" value="Guess," />
            </node>
            <node concept="3oM_SD" id="ATZLwXok2b" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok2c" role="1PaTwD">
              <property role="3oM_SC" value="shall" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok2d" role="1PaTwD">
              <property role="3oM_SC" value="re-use" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok2e" role="1PaTwD">
              <property role="3oM_SC" value="TMP" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok2f" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok2g" role="1PaTwD">
              <property role="3oM_SC" value="TransformHelper" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok2h" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXok2i" role="1PaTwD">
              <property role="3oM_SC" value="reused." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="73bDYgTlN0_" role="3cqZAp">
          <node concept="37vLTI" id="73bDYgTlN0B" role="3clFbG">
            <node concept="2ShNRf" id="6VhyYlfO2Gd" role="37vLTx">
              <node concept="1pGfFk" id="6VhyYlfO2SF" role="2ShVmc">
                <ref role="37wK5l" to="ap4t:~TransientModelsProvider.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository,jetbrains.mps.generator.TransientModelsProvider$TransientSwapOwner)" resolve="TransientModelsProvider" />
                <node concept="37vLTw" id="5ABvamFVe3H" role="37wK5m">
                  <ref role="3cqZAo" node="5ABvamFVci6" resolve="myRepository" />
                </node>
                <node concept="10Nm6u" id="6VhyYlfO3xQ" role="37wK5m" />
              </node>
            </node>
            <node concept="37vLTw" id="73bDYgTlP0i" role="37vLTJ">
              <ref role="3cqZAo" node="73bDYgTlNLN" resolve="myTransientsProvider" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6VhyYlfOL4Q" role="3cqZAp">
          <node concept="2OqwBi" id="6VhyYlfOMLa" role="3clFbG">
            <node concept="2OqwBi" id="6VhyYlfOLUY" role="2Oq$k0">
              <node concept="2OqwBi" id="6VhyYlfOLqY" role="2Oq$k0">
                <node concept="37vLTw" id="73bDYgTlPia" role="2Oq$k0">
                  <ref role="3cqZAo" node="73bDYgTlNLN" resolve="myTransientsProvider" />
                </node>
                <node concept="liA8E" id="6VhyYlfOLKV" role="2OqNvi">
                  <ref role="37wK5l" to="ap4t:~TransientModelsProvider.getRepository()" resolve="getRepository" />
                </node>
              </node>
              <node concept="liA8E" id="6VhyYlfOMA9" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="6VhyYlfONES" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runWriteAction(java.lang.Runnable)" resolve="runWriteAction" />
              <node concept="1bVj0M" id="6VhyYlfONNH" role="37wK5m">
                <node concept="3clFbS" id="6VhyYlfONNI" role="1bW5cS">
                  <node concept="3cpWs8" id="6VhyYlfOTg4" role="3cqZAp">
                    <node concept="3cpWsn" id="6VhyYlfOTg5" role="3cpWs9">
                      <property role="TrG5h" value="optBuilder" />
                      <node concept="3uibUv" id="6VhyYlfOTg3" role="1tU5fm">
                        <ref role="3uigEE" to="ap4t:~GenerationOptions$OptionsBuilder" resolve="GenerationOptions.OptionsBuilder" />
                      </node>
                      <node concept="2YIFZM" id="6VhyYlfOTg6" role="33vP2m">
                        <ref role="37wK5l" to="ap4t:~GenerationOptions.getDefaults()" resolve="getDefaults" />
                        <ref role="1Pybhc" to="ap4t:~GenerationOptions" resolve="GenerationOptions" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="354Yu58nGqa" role="3cqZAp">
                    <node concept="3cpWsn" id="354Yu58nGqb" role="3cpWs9">
                      <property role="TrG5h" value="plan" />
                      <node concept="3uibUv" id="354Yu58nGq7" role="1tU5fm">
                        <ref role="3uigEE" to="ap4t:~ModelGenerationPlan" resolve="ModelGenerationPlan" />
                      </node>
                      <node concept="3K4zz7" id="354Yu58nIRM" role="33vP2m">
                        <node concept="10Nm6u" id="354Yu58nJ7l" role="3K4E3e" />
                        <node concept="3clFbC" id="354Yu58nIiM" role="3K4Cdx">
                          <node concept="10Nm6u" id="354Yu58nI$W" role="3uHU7w" />
                          <node concept="37vLTw" id="354Yu58nHDC" role="3uHU7B">
                            <ref role="3cqZAo" node="6VhyYlfKU4H" resolve="myPlanProvider" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="354Yu58nGqc" role="3K4GZi">
                          <node concept="37vLTw" id="354Yu58nGqd" role="2Oq$k0">
                            <ref role="3cqZAo" node="6VhyYlfKU4H" resolve="myPlanProvider" />
                          </node>
                          <node concept="liA8E" id="354Yu58nGqe" role="2OqNvi">
                            <ref role="37wK5l" to="ap4t:~ModelGenerationPlan$Provider.getPlan(org.jetbrains.mps.openapi.model.SModel)" resolve="getPlan" />
                            <node concept="37vLTw" id="354Yu58nGqf" role="37wK5m">
                              <ref role="3cqZAo" node="6VhyYlfKTY2" resolve="myInputModel" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="354Yu58nGW2" role="3cqZAp">
                    <node concept="3clFbS" id="354Yu58nGW4" role="3clFbx">
                      <node concept="3clFbF" id="6VhyYlfOSnU" role="3cqZAp">
                        <node concept="2OqwBi" id="6VhyYlfOSSc" role="3clFbG">
                          <node concept="37vLTw" id="6VhyYlfOTg7" role="2Oq$k0">
                            <ref role="3cqZAo" node="6VhyYlfOTg5" resolve="optBuilder" />
                          </node>
                          <node concept="liA8E" id="6VhyYlfOUbH" role="2OqNvi">
                            <ref role="37wK5l" to="ap4t:~GenerationOptions$OptionsBuilder.customPlan(org.jetbrains.mps.openapi.model.SModel,jetbrains.mps.generator.ModelGenerationPlan)" resolve="customPlan" />
                            <node concept="37vLTw" id="6VhyYlfOUqE" role="37wK5m">
                              <ref role="3cqZAo" node="6VhyYlfKTY2" resolve="myInputModel" />
                            </node>
                            <node concept="37vLTw" id="354Yu58nGqg" role="37wK5m">
                              <ref role="3cqZAo" node="354Yu58nGqb" resolve="plan" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="50NVUdCq3$s" role="3cqZAp">
                        <node concept="2OqwBi" id="50NVUdCq3QW" role="3clFbG">
                          <node concept="37vLTw" id="73bDYgTlPUZ" role="2Oq$k0">
                            <ref role="3cqZAo" node="73bDYgTlNLN" resolve="myTransientsProvider" />
                          </node>
                          <node concept="liA8E" id="50NVUdCq4b0" role="2OqNvi">
                            <ref role="37wK5l" to="ap4t:~TransientModelsProvider.initCheckpointModule()" resolve="initCheckpointModule" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="354Yu58nJY$" role="3clFbw">
                      <node concept="10Nm6u" id="354Yu58nKex" role="3uHU7w" />
                      <node concept="37vLTw" id="354Yu58nJDo" role="3uHU7B">
                        <ref role="3cqZAo" node="354Yu58nGqb" resolve="plan" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="1ZP$O3DqaMN" role="3cqZAp">
                    <node concept="3cpWsn" id="1ZP$O3DqaMO" role="3cpWs9">
                      <property role="TrG5h" value="genFacade" />
                      <node concept="3uibUv" id="1ZP$O3DqaMP" role="1tU5fm">
                        <ref role="3uigEE" to="ap4t:~GenerationFacade" resolve="GenerationFacade" />
                      </node>
                      <node concept="2ShNRf" id="1ZP$O3DqaMQ" role="33vP2m">
                        <node concept="1pGfFk" id="1ZP$O3DqaMR" role="2ShVmc">
                          <ref role="37wK5l" to="ap4t:~GenerationFacade.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository,jetbrains.mps.generator.GenerationOptions)" resolve="GenerationFacade" />
                          <node concept="37vLTw" id="5ABvamFVeIM" role="37wK5m">
                            <ref role="3cqZAo" node="5ABvamFVci6" resolve="myRepository" />
                          </node>
                          <node concept="2OqwBi" id="6VhyYlfOZu4" role="37wK5m">
                            <node concept="37vLTw" id="6VhyYlfOZu5" role="2Oq$k0">
                              <ref role="3cqZAo" node="6VhyYlfOTg5" resolve="optBuilder" />
                            </node>
                            <node concept="liA8E" id="6VhyYlfOZu6" role="2OqNvi">
                              <ref role="37wK5l" to="ap4t:~GenerationOptions$OptionsBuilder.create()" resolve="create" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="1ZP$O3DqaKF" role="3cqZAp">
                    <node concept="3cpWsn" id="1ZP$O3DqaKG" role="3cpWs9">
                      <property role="TrG5h" value="taskHandler" />
                      <property role="3TUv4t" value="true" />
                      <node concept="3uibUv" id="1ZP$O3DqaKH" role="1tU5fm">
                        <ref role="3uigEE" to="ap4t:~GenerationTaskRecorder" resolve="GenerationTaskRecorder" />
                        <node concept="3uibUv" id="1ZP$O3DqaKI" role="11_B2D">
                          <ref role="3uigEE" to="ap4t:~GeneratorTask" resolve="GeneratorTask" />
                        </node>
                      </node>
                      <node concept="2ShNRf" id="1ZP$O3DqaKJ" role="33vP2m">
                        <node concept="1pGfFk" id="1ZP$O3DqaKK" role="2ShVmc">
                          <ref role="37wK5l" to="ap4t:~GenerationTaskRecorder.&lt;init&gt;(jetbrains.mps.generator.GeneratorTaskListener)" resolve="GenerationTaskRecorder" />
                          <node concept="3uibUv" id="1ZP$O3DqaKL" role="1pMfVU">
                            <ref role="3uigEE" to="ap4t:~GeneratorTask" resolve="GeneratorTask" />
                          </node>
                          <node concept="10Nm6u" id="1ZP$O3DqaKM" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1ZP$O3DqaMW" role="3cqZAp">
                    <node concept="2OqwBi" id="1ZP$O3DqaMX" role="3clFbG">
                      <node concept="2OqwBi" id="1ZP$O3DqaMY" role="2Oq$k0">
                        <node concept="2OqwBi" id="1ZP$O3DqaMZ" role="2Oq$k0">
                          <node concept="37vLTw" id="1ZP$O3DqaN0" role="2Oq$k0">
                            <ref role="3cqZAo" node="1ZP$O3DqaMO" resolve="genFacade" />
                          </node>
                          <node concept="liA8E" id="1ZP$O3DqaN1" role="2OqNvi">
                            <ref role="37wK5l" to="ap4t:~GenerationFacade.transients(jetbrains.mps.generator.TransientModelsProvider)" resolve="transients" />
                            <node concept="37vLTw" id="73bDYgTlQdz" role="37wK5m">
                              <ref role="3cqZAo" node="73bDYgTlNLN" resolve="myTransientsProvider" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="1ZP$O3DqaN3" role="2OqNvi">
                          <ref role="37wK5l" to="ap4t:~GenerationFacade.messages(jetbrains.mps.messages.IMessageHandler)" resolve="messages" />
                          <node concept="37vLTw" id="5ABvamFVbm5" role="37wK5m">
                            <ref role="3cqZAo" node="5ABvamFVaif" resolve="myMessages" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="1ZP$O3DqaN5" role="2OqNvi">
                        <ref role="37wK5l" to="ap4t:~GenerationFacade.taskHandler(jetbrains.mps.generator.GeneratorTaskListener)" resolve="taskHandler" />
                        <node concept="37vLTw" id="1ZP$O3DqaN6" role="37wK5m">
                          <ref role="3cqZAo" node="1ZP$O3DqaKG" resolve="taskHandler" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1ZP$O3DqaN7" role="3cqZAp">
                    <node concept="2OqwBi" id="1ZP$O3DqaN8" role="3clFbG">
                      <node concept="37vLTw" id="1ZP$O3DqaN9" role="2Oq$k0">
                        <ref role="3cqZAo" node="1ZP$O3DqaMO" resolve="genFacade" />
                      </node>
                      <node concept="liA8E" id="1ZP$O3DqaNa" role="2OqNvi">
                        <ref role="37wK5l" to="ap4t:~GenerationFacade.process(org.jetbrains.mps.openapi.util.ProgressMonitor,org.jetbrains.mps.openapi.model.SModel)" resolve="process" />
                        <node concept="2ShNRf" id="VtxvThy0Uh" role="37wK5m">
                          <node concept="1pGfFk" id="VtxvThy0Ui" role="2ShVmc">
                            <ref role="37wK5l" to="mk8z:~EmptyProgressMonitor.&lt;init&gt;()" resolve="EmptyProgressMonitor" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="6VhyYlfOBGt" role="37wK5m">
                          <ref role="3cqZAo" node="6VhyYlfKTY2" resolve="myInputModel" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6VhyYlfOFOb" role="3cqZAp">
                    <node concept="37vLTI" id="6VhyYlfOFOd" role="3clFbG">
                      <node concept="2OqwBi" id="6VhyYlfOFcT" role="37vLTx">
                        <node concept="2OqwBi" id="6VhyYlfOFcU" role="2Oq$k0">
                          <node concept="37vLTw" id="6VhyYlfOFcV" role="2Oq$k0">
                            <ref role="3cqZAo" node="1ZP$O3DqaKG" resolve="taskHandler" />
                          </node>
                          <node concept="liA8E" id="6VhyYlfOFcW" role="2OqNvi">
                            <ref role="37wK5l" to="ap4t:~GenerationTaskRecorder.getAllRecorded()" resolve="getAllRecorded" />
                          </node>
                        </node>
                        <node concept="liA8E" id="6VhyYlfOFcX" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                          <node concept="3cmrfG" id="6VhyYlfOFcY" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="6VhyYlfOI4N" role="37vLTJ">
                        <ref role="3cqZAo" node="6VhyYlfOHv0" resolve="myGenOutcome" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6VhyYlfOAA5" role="3cqZAp">
          <node concept="Xjq3P" id="6VhyYlfOACa" role="3cqZAk" />
        </node>
        <node concept="3clFbH" id="6VhyYlfO3yx" role="3cqZAp" />
      </node>
    </node>
    <node concept="2tJIrI" id="6VhyYlfKRUe" role="jymVt" />
    <node concept="3clFb_" id="6VhyYlfKRW2" role="jymVt">
      <property role="TrG5h" value="getResult" />
      <node concept="3uibUv" id="6VhyYlfKRXv" role="3clF45">
        <ref role="3uigEE" to="ap4t:~GenerationStatus" resolve="GenerationStatus" />
      </node>
      <node concept="3Tm1VV" id="6VhyYlfKRW5" role="1B3o_S" />
      <node concept="3clFbS" id="6VhyYlfKRW6" role="3clF47">
        <node concept="1gVbGN" id="6VhyYlfOK3p" role="3cqZAp">
          <node concept="3y3z36" id="6VhyYlfOKxm" role="1gVkn0">
            <node concept="10Nm6u" id="6VhyYlfOKzw" role="3uHU7w" />
            <node concept="37vLTw" id="6VhyYlfOKkx" role="3uHU7B">
              <ref role="3cqZAo" node="6VhyYlfOHv0" resolve="myGenOutcome" />
            </node>
          </node>
          <node concept="Xl_RD" id="6VhyYlfOKBI" role="1gVpfI">
            <property role="Xl_RC" value="invoke() transform first!" />
          </node>
        </node>
        <node concept="3cpWs6" id="6VhyYlfOJh2" role="3cqZAp">
          <node concept="37vLTw" id="6VhyYlfOJy6" role="3cqZAk">
            <ref role="3cqZAo" node="6VhyYlfOHv0" resolve="myGenOutcome" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6VhyYlfKTNU" role="jymVt" />
    <node concept="3clFb_" id="6VhyYlfKTp_" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getOutputModel" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6VhyYlfKTpC" role="3clF47">
        <node concept="3clFbF" id="6VhyYlfKTrz" role="3cqZAp">
          <node concept="2OqwBi" id="6VhyYlfKTAT" role="3clFbG">
            <node concept="1rXfSq" id="6VhyYlfKTry" role="2Oq$k0">
              <ref role="37wK5l" node="6VhyYlfKRW2" resolve="getResult" />
            </node>
            <node concept="liA8E" id="6VhyYlfKTLZ" role="2OqNvi">
              <ref role="37wK5l" to="ap4t:~GenerationStatus.getOutputModel()" resolve="getOutputModel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6VhyYlfKTom" role="1B3o_S" />
      <node concept="H_c77" id="6VhyYlfKTpt" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5wiIlPAwcAR" role="jymVt" />
    <node concept="3clFb_" id="5wiIlPAwdhS" role="jymVt">
      <property role="TrG5h" value="getOutputModels" />
      <node concept="3uibUv" id="5wiIlPAwdBE" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="H_c77" id="5wiIlPAwdUy" role="11_B2D" />
      </node>
      <node concept="3Tm1VV" id="5wiIlPAwdhV" role="1B3o_S" />
      <node concept="3clFbS" id="5wiIlPAwdhW" role="3clF47">
        <node concept="3cpWs6" id="5wiIlPAweHy" role="3cqZAp">
          <node concept="2OqwBi" id="5wiIlPAwfwZ" role="3cqZAk">
            <node concept="1rXfSq" id="5wiIlPAwf1e" role="2Oq$k0">
              <ref role="37wK5l" node="6VhyYlfKRW2" resolve="getResult" />
            </node>
            <node concept="liA8E" id="5wiIlPAwfWk" role="2OqNvi">
              <ref role="37wK5l" to="ap4t:~GenerationStatus.getOutputModels()" resolve="getOutputModels" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="73bDYgTlLBD" role="jymVt" />
    <node concept="3clFb_" id="73bDYgTlM67" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="73bDYgTlM69" role="3clF45" />
      <node concept="3Tm1VV" id="73bDYgTlM6a" role="1B3o_S" />
      <node concept="3clFbS" id="73bDYgTlM6b" role="3clF47">
        <node concept="3clFbF" id="73bDYgTlQzy" role="3cqZAp">
          <node concept="2OqwBi" id="73bDYgTlQEr" role="3clFbG">
            <node concept="37vLTw" id="73bDYgTlQzw" role="2Oq$k0">
              <ref role="3cqZAo" node="73bDYgTlNLN" resolve="myTransientsProvider" />
            </node>
            <node concept="liA8E" id="73bDYgTlSo9" role="2OqNvi">
              <ref role="37wK5l" to="ap4t:~TransientModelsProvider.removeAllTransients(boolean)" resolve="removeAllTransients" />
              <node concept="3clFbT" id="73bDYgTlT91" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="73bDYgTlThm" role="3cqZAp">
          <node concept="37vLTI" id="73bDYgTlToK" role="3clFbG">
            <node concept="10Nm6u" id="73bDYgTlTqn" role="37vLTx" />
            <node concept="37vLTw" id="73bDYgTlThk" role="37vLTJ">
              <ref role="3cqZAo" node="73bDYgTlNLN" resolve="myTransientsProvider" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="73bDYgTlTwt" role="3cqZAp">
          <node concept="37vLTI" id="73bDYgTlTEf" role="3clFbG">
            <node concept="10Nm6u" id="73bDYgTlTGw" role="37vLTx" />
            <node concept="37vLTw" id="73bDYgTlTwr" role="37vLTJ">
              <ref role="3cqZAo" node="6VhyYlfKTY2" resolve="myInputModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="73bDYgTlTMq" role="3cqZAp">
          <node concept="37vLTI" id="73bDYgTlTW7" role="3clFbG">
            <node concept="10Nm6u" id="73bDYgTlTZl" role="37vLTx" />
            <node concept="37vLTw" id="73bDYgTlTMo" role="37vLTJ">
              <ref role="3cqZAo" node="6VhyYlfKU4H" resolve="myPlanProvider" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="73bDYgTlMNU" role="3cqZAp">
          <node concept="37vLTI" id="73bDYgTlMWi" role="3clFbG">
            <node concept="10Nm6u" id="73bDYgTlMXz" role="37vLTx" />
            <node concept="37vLTw" id="73bDYgTlMNT" role="37vLTJ">
              <ref role="3cqZAo" node="6VhyYlfOHv0" resolve="myGenOutcome" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="6VhyYlfKJd9" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7K_WrSLbaLt">
    <property role="TrG5h" value="ModelMatcher" />
    <property role="1EXbeo" value="true" />
    <node concept="312cEg" id="7K_WrSLbfvz" role="jymVt">
      <property role="TrG5h" value="myOptions" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7K_WrSLbfv$" role="1B3o_S" />
      <node concept="3uibUv" id="7K_WrSLbfFG" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7K_WrSLbfRB" role="11_B2D">
          <ref role="3uigEE" node="7K_WrSLbbhi" resolve="MatchOptions" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7K_WrSLbf_3" role="jymVt" />
    <node concept="3clFbW" id="7K_WrSLbaUX" role="jymVt">
      <node concept="3cqZAl" id="7K_WrSLbaUZ" role="3clF45" />
      <node concept="3Tm1VV" id="7K_WrSLbaV0" role="1B3o_S" />
      <node concept="3clFbS" id="7K_WrSLbaV1" role="3clF47">
        <node concept="3SKdUt" id="2eOFkuR57kR" role="3cqZAp">
          <node concept="1PaTwC" id="2eOFkuR57kS" role="1aUNEU">
            <node concept="3oM_SD" id="2eOFkuR5bCy" role="1PaTwD">
              <property role="3oM_SC" value="when" />
            </node>
            <node concept="3oM_SD" id="2eOFkuR5bC$" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="2eOFkuR5bCB" role="1PaTwD">
              <property role="3oM_SC" value="option" />
            </node>
            <node concept="3oM_SD" id="2eOFkuR5bCF" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="2eOFkuR5bCK" role="1PaTwD">
              <property role="3oM_SC" value="properties" />
            </node>
            <node concept="3oM_SD" id="2eOFkuR5bCQ" role="1PaTwD">
              <property role="3oM_SC" value="supplied," />
            </node>
            <node concept="3oM_SD" id="2eOFkuR5bCX" role="1PaTwD">
              <property role="3oM_SC" value="assume" />
            </node>
            <node concept="3oM_SD" id="2eOFkuR5bD5" role="1PaTwD">
              <property role="3oM_SC" value="old" />
            </node>
            <node concept="3oM_SD" id="2eOFkuR5bDK" role="1PaTwD">
              <property role="3oM_SC" value="BaseGeneratorTest.assertMatch()" />
            </node>
            <node concept="3oM_SD" id="2eOFkuR5bDU" role="1PaTwD">
              <property role="3oM_SC" value="behavior" />
            </node>
            <node concept="3oM_SD" id="2eOFkuR5bE5" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="2eOFkuR5bEh" role="1PaTwD">
              <property role="3oM_SC" value="matching" />
            </node>
            <node concept="3oM_SD" id="2eOFkuR5bEV" role="1PaTwD">
              <property role="3oM_SC" value="user" />
            </node>
            <node concept="3oM_SD" id="2eOFkuR5bF9" role="1PaTwD">
              <property role="3oM_SC" value="values" />
            </node>
          </node>
        </node>
        <node concept="1VxSAg" id="1NpV1yWVm_I" role="3cqZAp">
          <ref role="37wK5l" node="7K_WrSLbaVv" resolve="ModelMatcher" />
          <node concept="Rm8GO" id="1NpV1yWUZ1a" role="37wK5m">
            <ref role="1Px2BO" node="7K_WrSLbbhi" resolve="MatchOptions" />
            <ref role="Rm8GQ" node="7K_WrSLbciX" resolve="AGGREGATION_SAME_ORDER" />
          </node>
          <node concept="Rm8GO" id="1NpV1yWV8wr" role="37wK5m">
            <ref role="1Px2BO" node="7K_WrSLbbhi" resolve="MatchOptions" />
            <ref role="Rm8GQ" node="7K_WrSLbb_n" resolve="ASSOCIATION_SAME_TARGET_PTR" />
          </node>
          <node concept="Rm8GO" id="2eOFkuR5Grc" role="37wK5m">
            <ref role="Rm8GQ" node="7K_WrSLbbp8" resolve="PROPERTY_USER_VALUE" />
            <ref role="1Px2BO" node="7K_WrSLbbhi" resolve="MatchOptions" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7K_WrSLbaW3" role="jymVt" />
    <node concept="3clFbW" id="7K_WrSLbaVv" role="jymVt">
      <node concept="3cqZAl" id="7K_WrSLbaVw" role="3clF45" />
      <node concept="3Tm1VV" id="7K_WrSLbaVx" role="1B3o_S" />
      <node concept="3clFbS" id="7K_WrSLbaVy" role="3clF47">
        <node concept="3cpWs8" id="1NpV1yWWbai" role="3cqZAp">
          <node concept="3cpWsn" id="1NpV1yWWbaj" role="3cpWs9">
            <property role="TrG5h" value="supplied" />
            <node concept="3uibUv" id="1NpV1yWW9yy" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="1NpV1yWW9y_" role="11_B2D">
                <ref role="3uigEE" node="7K_WrSLbbhi" resolve="MatchOptions" />
              </node>
            </node>
            <node concept="2YIFZM" id="1NpV1yWWbak" role="33vP2m">
              <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
              <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
              <node concept="37vLTw" id="1NpV1yWWbal" role="37wK5m">
                <ref role="3cqZAo" node="7K_WrSLbcRL" resolve="options" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1NpV1yWV$n0" role="3cqZAp">
          <node concept="3cpWsn" id="1NpV1yWV$n6" role="3cpWs9">
            <property role="TrG5h" value="ensureAllPresent" />
            <node concept="10Q1$e" id="1NpV1yWV$n8" role="1tU5fm">
              <node concept="3uibUv" id="1NpV1yWV$na" role="10Q1$1">
                <ref role="3uigEE" node="7K_WrSLbbhi" resolve="MatchOptions" />
              </node>
            </node>
            <node concept="2ShNRf" id="1NpV1yWVQHL" role="33vP2m">
              <node concept="3$_iS1" id="1NpV1yWVWhj" role="2ShVmc">
                <node concept="3$GHV9" id="1NpV1yWVWhl" role="3$GQph">
                  <node concept="3cmrfG" id="1NpV1yWVZHg" role="3$I4v7">
                    <property role="3cmrfH" value="3" />
                  </node>
                </node>
                <node concept="3uibUv" id="1NpV1yWVWb5" role="3$_nBY">
                  <ref role="3uigEE" node="7K_WrSLbbhi" resolve="MatchOptions" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1NpV1yWWBYI" role="3cqZAp">
          <node concept="37vLTI" id="1NpV1yWXdBm" role="3clFbG">
            <node concept="AH0OO" id="1NpV1yWWP9S" role="37vLTJ">
              <node concept="3cmrfG" id="1NpV1yWWRAb" role="AHEQo">
                <property role="3cmrfH" value="2" />
              </node>
              <node concept="37vLTw" id="1NpV1yWWBYG" role="AHHXb">
                <ref role="3cqZAo" node="1NpV1yWV$n6" resolve="ensureAllPresent" />
              </node>
            </node>
            <node concept="3K4zz7" id="1NpV1yWXtfI" role="37vLTx">
              <node concept="Rm8GO" id="1NpV1yWXhdk" role="3K4E3e">
                <ref role="Rm8GQ" node="7K_WrSLbcIb" resolve="AGGREGATION_ANY_ORDER" />
                <ref role="1Px2BO" node="7K_WrSLbbhi" resolve="MatchOptions" />
              </node>
              <node concept="Rm8GO" id="1NpV1yWXFm2" role="3K4GZi">
                <ref role="Rm8GQ" node="7K_WrSLbciX" resolve="AGGREGATION_SAME_ORDER" />
                <ref role="1Px2BO" node="7K_WrSLbbhi" resolve="MatchOptions" />
              </node>
              <node concept="2OqwBi" id="1NpV1yWWu63" role="3K4Cdx">
                <node concept="37vLTw" id="1NpV1yWWq86" role="2Oq$k0">
                  <ref role="3cqZAo" node="1NpV1yWWbaj" resolve="supplied" />
                </node>
                <node concept="liA8E" id="1NpV1yWWy6W" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object)" resolve="contains" />
                  <node concept="Rm8GO" id="1NpV1yWW$vo" role="37wK5m">
                    <ref role="Rm8GQ" node="7K_WrSLbcIb" resolve="AGGREGATION_ANY_ORDER" />
                    <ref role="1Px2BO" node="7K_WrSLbbhi" resolve="MatchOptions" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1NpV1yWXR81" role="3cqZAp">
          <node concept="37vLTI" id="1NpV1yWXR82" role="3clFbG">
            <node concept="AH0OO" id="1NpV1yWXR83" role="37vLTJ">
              <node concept="3cmrfG" id="1NpV1yWXR84" role="AHEQo">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="37vLTw" id="1NpV1yWXR85" role="AHHXb">
                <ref role="3cqZAo" node="1NpV1yWV$n6" resolve="ensureAllPresent" />
              </node>
            </node>
            <node concept="3K4zz7" id="1NpV1yWXR86" role="37vLTx">
              <node concept="2OqwBi" id="1NpV1yWXR89" role="3K4Cdx">
                <node concept="37vLTw" id="1NpV1yWXR8a" role="2Oq$k0">
                  <ref role="3cqZAo" node="1NpV1yWWbaj" resolve="supplied" />
                </node>
                <node concept="liA8E" id="1NpV1yWXR8b" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object)" resolve="contains" />
                  <node concept="Rm8GO" id="1NpV1yWYfaI" role="37wK5m">
                    <ref role="Rm8GQ" node="7K_WrSLbc2v" resolve="ASSOCIATION_EQUAL_TARGET" />
                    <ref role="1Px2BO" node="7K_WrSLbbhi" resolve="MatchOptions" />
                  </node>
                </node>
              </node>
              <node concept="Rm8GO" id="1NpV1yWYhDx" role="3K4E3e">
                <ref role="Rm8GQ" node="7K_WrSLbc2v" resolve="ASSOCIATION_EQUAL_TARGET" />
                <ref role="1Px2BO" node="7K_WrSLbbhi" resolve="MatchOptions" />
              </node>
              <node concept="Rm8GO" id="1NpV1yWYnMS" role="3K4GZi">
                <ref role="Rm8GQ" node="7K_WrSLbb_n" resolve="ASSOCIATION_SAME_TARGET_PTR" />
                <ref role="1Px2BO" node="7K_WrSLbbhi" resolve="MatchOptions" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1NpV1yWXSC0" role="3cqZAp">
          <node concept="37vLTI" id="1NpV1yWXSC1" role="3clFbG">
            <node concept="AH0OO" id="1NpV1yWXSC2" role="37vLTJ">
              <node concept="3cmrfG" id="1NpV1yWXSC3" role="AHEQo">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="1NpV1yWXSC4" role="AHHXb">
                <ref role="3cqZAo" node="1NpV1yWV$n6" resolve="ensureAllPresent" />
              </node>
            </node>
            <node concept="3K4zz7" id="1NpV1yWXSC5" role="37vLTx">
              <node concept="2OqwBi" id="1NpV1yWXSC8" role="3K4Cdx">
                <node concept="37vLTw" id="1NpV1yWXSC9" role="2Oq$k0">
                  <ref role="3cqZAo" node="1NpV1yWWbaj" resolve="supplied" />
                </node>
                <node concept="liA8E" id="1NpV1yWXSCa" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object)" resolve="contains" />
                  <node concept="Rm8GO" id="1NpV1yWYqYx" role="37wK5m">
                    <ref role="Rm8GQ" node="7K_WrSLbbp8" resolve="PROPERTY_USER_VALUE" />
                    <ref role="1Px2BO" node="7K_WrSLbbhi" resolve="MatchOptions" />
                  </node>
                </node>
              </node>
              <node concept="Rm8GO" id="1NpV1yWYtWH" role="3K4E3e">
                <ref role="Rm8GQ" node="7K_WrSLbbp8" resolve="PROPERTY_USER_VALUE" />
                <ref role="1Px2BO" node="7K_WrSLbbhi" resolve="MatchOptions" />
              </node>
              <node concept="Rm8GO" id="1NpV1yWY$6U" role="3K4GZi">
                <ref role="Rm8GQ" node="7K_WrSLbbx0" resolve="PROPERTY_PERSISTENCE_VALUE" />
                <ref role="1Px2BO" node="7K_WrSLbbhi" resolve="MatchOptions" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7K_WrSLbfvC" role="3cqZAp">
          <node concept="37vLTI" id="7K_WrSLbfvE" role="3clFbG">
            <node concept="37vLTw" id="7K_WrSLbfvH" role="37vLTJ">
              <ref role="3cqZAo" node="7K_WrSLbfvz" resolve="myOptions" />
            </node>
            <node concept="2YIFZM" id="1NpV1yWWJ93" role="37vLTx">
              <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
              <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
              <node concept="37vLTw" id="1NpV1yWWLvL" role="37wK5m">
                <ref role="3cqZAo" node="1NpV1yWV$n6" resolve="ensureAllPresent" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7K_WrSLbcRL" role="3clF46">
        <property role="TrG5h" value="options" />
        <node concept="8X2XB" id="7K_WrSLbcTa" role="1tU5fm">
          <node concept="3uibUv" id="7K_WrSLbcRK" role="8Xvag">
            <ref role="3uigEE" node="7K_WrSLbbhi" resolve="MatchOptions" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7K_WrSLbdW_" role="jymVt" />
    <node concept="3clFb_" id="7K_WrSLbdXi" role="jymVt">
      <property role="TrG5h" value="diff" />
      <node concept="37vLTG" id="7K_WrSLbfab" role="3clF46">
        <property role="TrG5h" value="m1" />
        <node concept="H_c77" id="7K_WrSLbfac" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7K_WrSLbfad" role="3clF46">
        <property role="TrG5h" value="m2" />
        <node concept="H_c77" id="7K_WrSLbfae" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7K_WrSLbdYp" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="7K_WrSLbdZd" role="11_B2D">
          <ref role="3uigEE" to="y5e1:7MIYyntDZEE" resolve="DifferenceItem" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7K_WrSLbdXl" role="1B3o_S" />
      <node concept="3clFbS" id="7K_WrSLbdXm" role="3clF47">
        <node concept="3cpWs8" id="7K_WrSLbiMR" role="3cqZAp">
          <node concept="3cpWsn" id="7K_WrSLbiMX" role="3cpWs9">
            <property role="TrG5h" value="rv" />
            <node concept="3uibUv" id="7K_WrSLbiMZ" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
              <node concept="3uibUv" id="7K_WrSLbiTU" role="11_B2D">
                <ref role="3uigEE" to="y5e1:7MIYyntDZEE" resolve="DifferenceItem" />
              </node>
            </node>
            <node concept="2ShNRf" id="7K_WrSLbl7w" role="33vP2m">
              <node concept="1pGfFk" id="7K_WrSLboEQ" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7K_WrSLbfhi" role="3cqZAp">
          <node concept="3cpWsn" id="7K_WrSLbfhj" role="3cpWs9">
            <property role="TrG5h" value="nm" />
            <node concept="3uibUv" id="7K_WrSLbfhk" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~SNodeMatcher" resolve="SNodeMatcher" />
            </node>
            <node concept="1rXfSq" id="7K_WrSLbi6C" role="33vP2m">
              <ref role="37wK5l" node="7K_WrSLbfrL" resolve="configure" />
              <node concept="37vLTw" id="7K_WrSLboS$" role="37wK5m">
                <ref role="3cqZAo" node="7K_WrSLbiMX" resolve="rv" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7K_WrSLbv38" role="3cqZAp">
          <node concept="3cpWsn" id="7K_WrSLbv3e" role="3cpWs9">
            <property role="TrG5h" value="toMatch" />
            <node concept="3uibUv" id="7K_WrSLbv3g" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="7K_WrSLbvF7" role="11_B2D">
                <ref role="3uigEE" to="18ew:~Pair" resolve="Pair" />
                <node concept="3uibUv" id="7K_WrSLbwTr" role="11_B2D">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="3uibUv" id="7K_WrSLbxFo" role="11_B2D">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7K_WrSLb$_u" role="3cqZAp">
          <node concept="3clFbS" id="7K_WrSLb$_w" role="3clFbx">
            <node concept="3clFbF" id="7K_WrSLbDQT" role="3cqZAp">
              <node concept="37vLTI" id="7K_WrSLbFfi" role="3clFbG">
                <node concept="2YIFZM" id="7K_WrSLbGES" role="37vLTx">
                  <ref role="37wK5l" to="w1kc:~SNodeMatcher$AnyOrderChildMatch.arrangeSameConceptAndName(java.lang.Iterable,java.lang.Iterable)" resolve="arrangeSameConceptAndName" />
                  <ref role="1Pybhc" to="w1kc:~SNodeMatcher$AnyOrderChildMatch" resolve="SNodeMatcher.AnyOrderChildMatch" />
                  <node concept="2OqwBi" id="7K_WrSLbHQK" role="37wK5m">
                    <node concept="37vLTw" id="7K_WrSLbH9Q" role="2Oq$k0">
                      <ref role="3cqZAo" node="7K_WrSLbfab" resolve="m1" />
                    </node>
                    <node concept="2RRcyG" id="7K_WrSLbINE" role="2OqNvi" />
                  </node>
                  <node concept="2OqwBi" id="7K_WrSLbLzL" role="37wK5m">
                    <node concept="37vLTw" id="7K_WrSLbKX_" role="2Oq$k0">
                      <ref role="3cqZAo" node="7K_WrSLbfad" resolve="m2" />
                    </node>
                    <node concept="2RRcyG" id="7K_WrSLbMB0" role="2OqNvi" />
                  </node>
                </node>
                <node concept="37vLTw" id="7K_WrSLbDQR" role="37vLTJ">
                  <ref role="3cqZAo" node="7K_WrSLbv3e" resolve="toMatch" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7K_WrSLbA6e" role="3clFbw">
            <node concept="37vLTw" id="7K_WrSLb_1o" role="2Oq$k0">
              <ref role="3cqZAo" node="7K_WrSLbfvz" resolve="myOptions" />
            </node>
            <node concept="liA8E" id="7K_WrSLbBPD" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object)" resolve="contains" />
              <node concept="Rm8GO" id="7K_WrSLbD2h" role="37wK5m">
                <ref role="Rm8GQ" node="7K_WrSLbcIb" resolve="AGGREGATION_ANY_ORDER" />
                <ref role="1Px2BO" node="7K_WrSLbbhi" resolve="MatchOptions" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="7K_WrSLbNqX" role="9aQIa">
            <node concept="3clFbS" id="7K_WrSLbNqY" role="9aQI4">
              <node concept="3clFbF" id="7K_WrSLbPuS" role="3cqZAp">
                <node concept="37vLTI" id="7K_WrSLbRzp" role="3clFbG">
                  <node concept="2ShNRf" id="7K_WrSLbSvW" role="37vLTx">
                    <node concept="1pGfFk" id="7K_WrSLbVjk" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="7K_WrSLbPuR" role="37vLTJ">
                    <ref role="3cqZAo" node="7K_WrSLbv3e" resolve="toMatch" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7K_WrSLcSoT" role="3cqZAp">
                <node concept="3cpWsn" id="7K_WrSLcSoU" role="3cpWs9">
                  <property role="TrG5h" value="it1" />
                  <node concept="uOF1S" id="7K_WrSLcSfb" role="1tU5fm">
                    <node concept="3Tqbb2" id="7K_WrSLcSfe" role="uOL27" />
                  </node>
                  <node concept="2OqwBi" id="7K_WrSLcSoV" role="33vP2m">
                    <node concept="2OqwBi" id="7K_WrSLcSoW" role="2Oq$k0">
                      <node concept="37vLTw" id="7K_WrSLcSoX" role="2Oq$k0">
                        <ref role="3cqZAo" node="7K_WrSLbfab" resolve="m1" />
                      </node>
                      <node concept="2RRcyG" id="7K_WrSLcSoY" role="2OqNvi" />
                    </node>
                    <node concept="uNJiE" id="7K_WrSLcSoZ" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7K_WrSLcWup" role="3cqZAp">
                <node concept="3cpWsn" id="7K_WrSLcWuq" role="3cpWs9">
                  <property role="TrG5h" value="it2" />
                  <node concept="uOF1S" id="7K_WrSLcWur" role="1tU5fm">
                    <node concept="3Tqbb2" id="7K_WrSLcWus" role="uOL27" />
                  </node>
                  <node concept="2OqwBi" id="7K_WrSLcWut" role="33vP2m">
                    <node concept="2OqwBi" id="7K_WrSLcWuu" role="2Oq$k0">
                      <node concept="37vLTw" id="7K_WrSLcWuv" role="2Oq$k0">
                        <ref role="3cqZAo" node="7K_WrSLbfad" resolve="m2" />
                      </node>
                      <node concept="2RRcyG" id="7K_WrSLcWuw" role="2OqNvi" />
                    </node>
                    <node concept="uNJiE" id="7K_WrSLcWux" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="2$JKZl" id="7K_WrSLd1xD" role="3cqZAp">
                <node concept="3clFbS" id="7K_WrSLd1xF" role="2LFqv$">
                  <node concept="3clFbF" id="7K_WrSLdcTE" role="3cqZAp">
                    <node concept="2OqwBi" id="7K_WrSLdhcS" role="3clFbG">
                      <node concept="37vLTw" id="7K_WrSLdfiI" role="2Oq$k0">
                        <ref role="3cqZAo" node="7K_WrSLbv3e" resolve="toMatch" />
                      </node>
                      <node concept="liA8E" id="7K_WrSLdk9C" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                        <node concept="2ShNRf" id="7K_WrSLdm$W" role="37wK5m">
                          <node concept="1pGfFk" id="7K_WrSLdpaY" role="2ShVmc">
                            <property role="373rjd" value="true" />
                            <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
                            <node concept="2OqwBi" id="7K_WrSLdsbE" role="37wK5m">
                              <node concept="37vLTw" id="7K_WrSLdqvE" role="2Oq$k0">
                                <ref role="3cqZAo" node="7K_WrSLcSoU" resolve="it1" />
                              </node>
                              <node concept="v1n4t" id="7K_WrSLdtna" role="2OqNvi" />
                            </node>
                            <node concept="2OqwBi" id="7K_WrSLdwYn" role="37wK5m">
                              <node concept="37vLTw" id="7K_WrSLdvx8" role="2Oq$k0">
                                <ref role="3cqZAo" node="7K_WrSLcWuq" resolve="it2" />
                              </node>
                              <node concept="v1n4t" id="7K_WrSLdyQ5" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="7K_WrSLd6Oy" role="2$JKZa">
                  <node concept="2OqwBi" id="7K_WrSLd9gu" role="3uHU7w">
                    <node concept="37vLTw" id="7K_WrSLd7Tv" role="2Oq$k0">
                      <ref role="3cqZAo" node="7K_WrSLcWuq" resolve="it2" />
                    </node>
                    <node concept="v0PNk" id="7K_WrSLdaUl" role="2OqNvi" />
                  </node>
                  <node concept="2OqwBi" id="7K_WrSLd40W" role="3uHU7B">
                    <node concept="37vLTw" id="7K_WrSLd2Vv" role="2Oq$k0">
                      <ref role="3cqZAo" node="7K_WrSLcSoU" resolve="it1" />
                    </node>
                    <node concept="v0PNk" id="7K_WrSLd5_2" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="2$JKZl" id="7K_WrSLd_1p" role="3cqZAp">
                <node concept="3clFbS" id="7K_WrSLd_1q" role="2LFqv$">
                  <node concept="3clFbF" id="7K_WrSLd_1r" role="3cqZAp">
                    <node concept="2OqwBi" id="7K_WrSLd_1s" role="3clFbG">
                      <node concept="37vLTw" id="7K_WrSLd_1t" role="2Oq$k0">
                        <ref role="3cqZAo" node="7K_WrSLbv3e" resolve="toMatch" />
                      </node>
                      <node concept="liA8E" id="7K_WrSLd_1u" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                        <node concept="2ShNRf" id="7K_WrSLd_1v" role="37wK5m">
                          <node concept="1pGfFk" id="7K_WrSLd_1w" role="2ShVmc">
                            <property role="373rjd" value="true" />
                            <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
                            <node concept="2OqwBi" id="7K_WrSLd_1x" role="37wK5m">
                              <node concept="37vLTw" id="7K_WrSLd_1y" role="2Oq$k0">
                                <ref role="3cqZAo" node="7K_WrSLcSoU" resolve="it1" />
                              </node>
                              <node concept="v1n4t" id="7K_WrSLd_1z" role="2OqNvi" />
                            </node>
                            <node concept="10Nm6u" id="7K_WrSLdF2S" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7K_WrSLd_1F" role="2$JKZa">
                  <node concept="37vLTw" id="7K_WrSLd_1G" role="2Oq$k0">
                    <ref role="3cqZAo" node="7K_WrSLcSoU" resolve="it1" />
                  </node>
                  <node concept="v0PNk" id="7K_WrSLd_1H" role="2OqNvi" />
                </node>
              </node>
              <node concept="2$JKZl" id="7K_WrSLdAMq" role="3cqZAp">
                <node concept="3clFbS" id="7K_WrSLdAMr" role="2LFqv$">
                  <node concept="3clFbF" id="7K_WrSLdAMs" role="3cqZAp">
                    <node concept="2OqwBi" id="7K_WrSLdAMt" role="3clFbG">
                      <node concept="37vLTw" id="7K_WrSLdAMu" role="2Oq$k0">
                        <ref role="3cqZAo" node="7K_WrSLbv3e" resolve="toMatch" />
                      </node>
                      <node concept="liA8E" id="7K_WrSLdAMv" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                        <node concept="2ShNRf" id="7K_WrSLdAMw" role="37wK5m">
                          <node concept="1pGfFk" id="7K_WrSLdAMx" role="2ShVmc">
                            <property role="373rjd" value="true" />
                            <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
                            <node concept="10Nm6u" id="7K_WrSLdIR1" role="37wK5m" />
                            <node concept="2OqwBi" id="7K_WrSLdAM_" role="37wK5m">
                              <node concept="37vLTw" id="7K_WrSLdAMA" role="2Oq$k0">
                                <ref role="3cqZAo" node="7K_WrSLcWuq" resolve="it2" />
                              </node>
                              <node concept="v1n4t" id="7K_WrSLdAMB" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7K_WrSLdAMD" role="2$JKZa">
                  <node concept="37vLTw" id="7K_WrSLdAME" role="2Oq$k0">
                    <ref role="3cqZAo" node="7K_WrSLcWuq" resolve="it2" />
                  </node>
                  <node concept="v0PNk" id="7K_WrSLdAMF" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7K_WrSLbXl2" role="3cqZAp">
          <node concept="2GrKxI" id="7K_WrSLbXl4" role="2Gsz3X">
            <property role="TrG5h" value="p" />
          </node>
          <node concept="37vLTw" id="7K_WrSLbZva" role="2GsD0m">
            <ref role="3cqZAo" node="7K_WrSLbv3e" resolve="toMatch" />
          </node>
          <node concept="3clFbS" id="7K_WrSLbXl8" role="2LFqv$">
            <node concept="3clFbF" id="7K_WrSLbsJp" role="3cqZAp">
              <node concept="2OqwBi" id="7K_WrSLbtn5" role="3clFbG">
                <node concept="37vLTw" id="7K_WrSLbsJn" role="2Oq$k0">
                  <ref role="3cqZAo" node="7K_WrSLbfhj" resolve="nm" />
                </node>
                <node concept="liA8E" id="7K_WrSLbtXp" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~SNodeMatcher.match(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode)" resolve="match" />
                  <node concept="2OqwBi" id="7K_WrSLc257" role="37wK5m">
                    <node concept="2GrUjf" id="7K_WrSLc0Cn" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7K_WrSLbXl4" resolve="p" />
                    </node>
                    <node concept="2OwXpG" id="7K_WrSLc3Ci" role="2OqNvi">
                      <ref role="2Oxat5" to="18ew:~Pair.o1" resolve="o1" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7K_WrSLc6Vf" role="37wK5m">
                    <node concept="2GrUjf" id="7K_WrSLc5Fm" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7K_WrSLbXl4" resolve="p" />
                    </node>
                    <node concept="2OwXpG" id="7K_WrSLc93t" role="2OqNvi">
                      <ref role="2Oxat5" to="18ew:~Pair.o2" resolve="o2" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7K_WrSLbqKP" role="3cqZAp">
          <node concept="37vLTw" id="7K_WrSLbqUI" role="3cqZAk">
            <ref role="3cqZAo" node="7K_WrSLbiMX" resolve="rv" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="7K_WrSLgtFK" role="lGtFl">
        <node concept="TUZQ0" id="7K_WrSLgtFN" role="3nqlJM">
          <property role="TUZQ4" value="" />
          <node concept="zr_55" id="7K_WrSLgtFP" role="zr_5Q">
            <ref role="zr_51" node="7K_WrSLbfab" resolve="m1" />
          </node>
          <node concept="1PaTwC" id="1E1X3WHsCIQ" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsCIR" role="1PaTwD">
              <property role="3oM_SC" value="considered" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCIS" role="1PaTwD">
              <property role="3oM_SC" value="'actual'" />
            </node>
          </node>
        </node>
        <node concept="TUZQ0" id="7K_WrSLgtFQ" role="3nqlJM">
          <property role="TUZQ4" value="" />
          <node concept="zr_55" id="7K_WrSLgtFS" role="zr_5Q">
            <ref role="zr_51" node="7K_WrSLbfad" resolve="m2" />
          </node>
          <node concept="1PaTwC" id="1E1X3WHsCIT" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsCIU" role="1PaTwD">
              <property role="3oM_SC" value="considered" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsCIV" role="1PaTwD">
              <property role="3oM_SC" value="'expected" />
            </node>
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsCIO" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsCIP" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7K_WrSLbfq2" role="jymVt" />
    <node concept="3clFb_" id="7K_WrSLbfrL" role="jymVt">
      <property role="TrG5h" value="configure" />
      <node concept="3uibUv" id="7K_WrSLbftE" role="3clF45">
        <ref role="3uigEE" to="w1kc:~SNodeMatcher" resolve="SNodeMatcher" />
      </node>
      <node concept="3Tm1VV" id="7K_WrSLbfrO" role="1B3o_S" />
      <node concept="3clFbS" id="7K_WrSLbfrP" role="3clF47">
        <node concept="3cpWs8" id="7K_WrSLdLW7" role="3cqZAp">
          <node concept="3cpWsn" id="7K_WrSLdLW8" role="3cpWs9">
            <property role="TrG5h" value="nm" />
            <node concept="3uibUv" id="7K_WrSLdLW9" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~SNodeMatcher" resolve="SNodeMatcher" />
            </node>
            <node concept="2ShNRf" id="7K_WrSLdN$o" role="33vP2m">
              <node concept="YeOm9" id="7K_WrSLj1fT" role="2ShVmc">
                <node concept="1Y3b0j" id="7K_WrSLj1fW" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="w1kc:~SNodeMatcher.&lt;init&gt;()" resolve="SNodeMatcher" />
                  <ref role="1Y3XeK" to="w1kc:~SNodeMatcher" resolve="SNodeMatcher" />
                  <node concept="3Tm1VV" id="7K_WrSLj1fX" role="1B3o_S" />
                  <node concept="3clFb_" id="7K_WrSLj34z" role="jymVt">
                    <property role="TrG5h" value="match" />
                    <node concept="3Tm1VV" id="7K_WrSLj34$" role="1B3o_S" />
                    <node concept="10P_77" id="7K_WrSLj34A" role="3clF45" />
                    <node concept="37vLTG" id="7K_WrSLj34B" role="3clF46">
                      <property role="TrG5h" value="node1" />
                      <node concept="3uibUv" id="7K_WrSLj34C" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2AHcQZ" id="7K_WrSLj34D" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="7K_WrSLj34E" role="3clF46">
                      <property role="TrG5h" value="node2" />
                      <node concept="3uibUv" id="7K_WrSLj34F" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2AHcQZ" id="7K_WrSLj34G" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="7K_WrSLj34I" role="3clF47">
                      <node concept="3SKdUt" id="7K_WrSLm_TZ" role="3cqZAp">
                        <node concept="1PaTwC" id="7K_WrSLm_U0" role="1aUNEU">
                          <node concept="3oM_SD" id="7K_WrSLmBo_" role="1PaTwD">
                            <property role="3oM_SC" value="borrowed" />
                          </node>
                          <node concept="3oM_SD" id="7K_WrSLqaR5" role="1PaTwD">
                            <property role="3oM_SC" value="from" />
                          </node>
                          <node concept="3oM_SD" id="7K_WrSLqaR8" role="1PaTwD">
                            <property role="3oM_SC" value="NodesMatcher.MatcherImpl" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="7K_WrSLnZEO" role="3cqZAp">
                        <node concept="3cpWsn" id="7K_WrSLnZEP" role="3cpWs9">
                          <property role="TrG5h" value="before" />
                          <property role="3TUv4t" value="true" />
                          <node concept="10Oyi0" id="7K_WrSLnYKj" role="1tU5fm" />
                          <node concept="2OqwBi" id="7K_WrSLnZEQ" role="33vP2m">
                            <node concept="37vLTw" id="7K_WrSLnZER" role="2Oq$k0">
                              <ref role="3cqZAo" node="7K_WrSLbpin" resolve="result" />
                            </node>
                            <node concept="liA8E" id="7K_WrSLnZES" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="7K_WrSLmMb1" role="3cqZAp">
                        <node concept="3cpWsn" id="7K_WrSLmMb2" role="3cpWs9">
                          <property role="TrG5h" value="match" />
                          <property role="3TUv4t" value="true" />
                          <node concept="10P_77" id="7K_WrSLmLnA" role="1tU5fm" />
                          <node concept="3nyPlj" id="7K_WrSLmMb3" role="33vP2m">
                            <ref role="37wK5l" to="w1kc:~SNodeMatcher.match(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode)" resolve="match" />
                            <node concept="37vLTw" id="7K_WrSLmMb4" role="37wK5m">
                              <ref role="3cqZAo" node="7K_WrSLj34B" resolve="node1" />
                            </node>
                            <node concept="37vLTw" id="7K_WrSLmMb5" role="37wK5m">
                              <ref role="3cqZAo" node="7K_WrSLj34E" resolve="node2" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="7K_WrSLoliQ" role="3cqZAp">
                        <node concept="3cpWsn" id="7K_WrSLoliO" role="3cpWs9">
                          <property role="3TUv4t" value="true" />
                          <property role="TrG5h" value="after" />
                          <node concept="10Oyi0" id="7K_WrSLoo1R" role="1tU5fm" />
                          <node concept="2OqwBi" id="7K_WrSLowSS" role="33vP2m">
                            <node concept="37vLTw" id="7K_WrSLout3" role="2Oq$k0">
                              <ref role="3cqZAo" node="7K_WrSLbpin" resolve="result" />
                            </node>
                            <node concept="liA8E" id="7K_WrSLozut" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="7K_WrSLoFRA" role="3cqZAp">
                        <node concept="3clFbS" id="7K_WrSLoFRC" role="3clFbx">
                          <node concept="1gVbGN" id="7K_WrSLoSYI" role="3cqZAp">
                            <node concept="3eOSWO" id="7K_WrSLp2UL" role="1gVkn0">
                              <node concept="37vLTw" id="7K_WrSLp5HA" role="3uHU7w">
                                <ref role="3cqZAo" node="7K_WrSLnZEP" resolve="before" />
                              </node>
                              <node concept="37vLTw" id="7K_WrSLoYph" role="3uHU7B">
                                <ref role="3cqZAo" node="7K_WrSLoliO" resolve="after" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="7K_WrSLpwXQ" role="3cqZAp">
                            <node concept="3cpWsn" id="7K_WrSLpwXR" role="3cpWs9">
                              <property role="TrG5h" value="n" />
                              <node concept="17QB3L" id="7K_WrSLpw66" role="1tU5fm" />
                              <node concept="2OqwBi" id="7K_WrSLpwXS" role="33vP2m">
                                <node concept="Xl_RD" id="7K_WrSLpwXT" role="2Oq$k0">
                                  <property role="Xl_RC" value="%s vs %s" />
                                </node>
                                <node concept="2cAKMz" id="7K_WrSLpwXU" role="2OqNvi">
                                  <node concept="3K4zz7" id="7K_WrSLpwXV" role="2cAKU6">
                                    <node concept="Xl_RD" id="7K_WrSLpwXW" role="3K4E3e">
                                      <property role="Xl_RC" value="null" />
                                    </node>
                                    <node concept="2OqwBi" id="7K_WrSLpwXX" role="3K4GZi">
                                      <node concept="37vLTw" id="7K_WrSLpwXY" role="2Oq$k0">
                                        <ref role="3cqZAo" node="7K_WrSLj34B" resolve="node1" />
                                      </node>
                                      <node concept="liA8E" id="7K_WrSLpwXZ" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getPresentation()" resolve="getPresentation" />
                                      </node>
                                    </node>
                                    <node concept="3clFbC" id="7K_WrSLpwY0" role="3K4Cdx">
                                      <node concept="10Nm6u" id="7K_WrSLpwY1" role="3uHU7w" />
                                      <node concept="37vLTw" id="7K_WrSLpwY2" role="3uHU7B">
                                        <ref role="3cqZAo" node="7K_WrSLj34B" resolve="node1" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3K4zz7" id="7K_WrSLpwY3" role="2cAKU6">
                                    <node concept="Xl_RD" id="7K_WrSLpwY4" role="3K4E3e">
                                      <property role="Xl_RC" value="null" />
                                    </node>
                                    <node concept="2OqwBi" id="7K_WrSLpwY5" role="3K4GZi">
                                      <node concept="37vLTw" id="7K_WrSLpwY6" role="2Oq$k0">
                                        <ref role="3cqZAo" node="7K_WrSLj34E" resolve="node2" />
                                      </node>
                                      <node concept="liA8E" id="7K_WrSLpwY7" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getPresentation()" resolve="getPresentation" />
                                      </node>
                                    </node>
                                    <node concept="3clFbC" id="7K_WrSLpwY8" role="3K4Cdx">
                                      <node concept="10Nm6u" id="7K_WrSLpwY9" role="3uHU7w" />
                                      <node concept="37vLTw" id="7K_WrSLpwYa" role="3uHU7B">
                                        <ref role="3cqZAo" node="7K_WrSLj34E" resolve="node2" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3SKdUt" id="7f7fvGe2kaP" role="3cqZAp">
                            <node concept="1PaTwC" id="7f7fvGe2kaQ" role="1aUNEU">
                              <node concept="3oM_SD" id="7f7fvGe2ouC" role="1PaTwD">
                                <property role="3oM_SC" value="need" />
                              </node>
                              <node concept="3oM_SD" id="7f7fvGe2ouE" role="1PaTwD">
                                <property role="3oM_SC" value="a" />
                              </node>
                              <node concept="3oM_SD" id="7f7fvGe2ouH" role="1PaTwD">
                                <property role="3oM_SC" value="copy" />
                              </node>
                              <node concept="3oM_SD" id="7f7fvGe2ouL" role="1PaTwD">
                                <property role="3oM_SC" value="to" />
                              </node>
                              <node concept="3oM_SD" id="7f7fvGe2ouQ" role="1PaTwD">
                                <property role="3oM_SC" value="avoid" />
                              </node>
                              <node concept="3oM_SD" id="7f7fvGe2ov3" role="1PaTwD">
                                <property role="3oM_SC" value="ConcurrentModificationException" />
                              </node>
                              <node concept="3oM_SD" id="7f7fvGe2ova" role="1PaTwD">
                                <property role="3oM_SC" value="accessing" />
                              </node>
                              <node concept="3oM_SD" id="7f7fvGe2ovi" role="1PaTwD">
                                <property role="3oM_SC" value="list" />
                              </node>
                              <node concept="3oM_SD" id="7f7fvGe2ovr" role="1PaTwD">
                                <property role="3oM_SC" value="later" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="7K_WrSLpes5" role="3cqZAp">
                            <node concept="3cpWsn" id="7K_WrSLpes6" role="3cpWs9">
                              <property role="TrG5h" value="nd" />
                              <node concept="3uibUv" id="7K_WrSLpaxd" role="1tU5fm">
                                <ref role="3uigEE" to="y5e1:7MIYyntDZEK" resolve="NodeDifference" />
                              </node>
                              <node concept="2ShNRf" id="7K_WrSLpes7" role="33vP2m">
                                <node concept="1pGfFk" id="7K_WrSLpes8" role="2ShVmc">
                                  <property role="373rjd" value="true" />
                                  <ref role="37wK5l" to="y5e1:7MIYyntDZEX" resolve="NodeDifference" />
                                  <node concept="37vLTw" id="7K_WrSLpwYb" role="37wK5m">
                                    <ref role="3cqZAo" node="7K_WrSLpwXR" resolve="n" />
                                  </node>
                                  <node concept="2ShNRf" id="7f7fvGe1RCP" role="37wK5m">
                                    <node concept="1pGfFk" id="7f7fvGe1ZD1" role="2ShVmc">
                                      <property role="373rjd" value="true" />
                                      <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(java.util.Collection)" resolve="ArrayList" />
                                      <node concept="2OqwBi" id="7K_WrSLpFsh" role="37wK5m">
                                        <node concept="37vLTw" id="7K_WrSLpess" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7K_WrSLbpin" resolve="result" />
                                        </node>
                                        <node concept="liA8E" id="7K_WrSLpJdM" role="2OqNvi">
                                          <ref role="37wK5l" to="33ny:~List.subList(int,int)" resolve="subList" />
                                          <node concept="37vLTw" id="7K_WrSLpMoS" role="37wK5m">
                                            <ref role="3cqZAo" node="7K_WrSLnZEP" resolve="before" />
                                          </node>
                                          <node concept="37vLTw" id="7K_WrSLpQTg" role="37wK5m">
                                            <ref role="3cqZAo" node="7K_WrSLoliO" resolve="after" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3SKdUt" id="39D1ywr0A29" role="3cqZAp">
                            <node concept="1PaTwC" id="ATZLwXokjQ" role="1aUNEU">
                              <node concept="3oM_SD" id="ATZLwXokjR" role="1PaTwD">
                                <property role="3oM_SC" value="i&gt;before," />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXokjS" role="1PaTwD">
                                <property role="3oM_SC" value="not" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXokjT" role="1PaTwD">
                                <property role="3oM_SC" value="&gt;=," />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXokjU" role="1PaTwD">
                                <property role="3oM_SC" value="as" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXokjV" role="1PaTwD">
                                <property role="3oM_SC" value="we" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXokjW" role="1PaTwD">
                                <property role="3oM_SC" value="replace" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXokjX" role="1PaTwD">
                                <property role="3oM_SC" value="element" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXokjY" role="1PaTwD">
                                <property role="3oM_SC" value="@before" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXokjZ" role="1PaTwD">
                                <property role="3oM_SC" value="with" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXokk0" role="1PaTwD">
                                <property role="3oM_SC" value="nd" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXokk1" role="1PaTwD">
                                <property role="3oM_SC" value="afterwards" />
                              </node>
                            </node>
                          </node>
                          <node concept="1Dw8fO" id="39D1ywr0vew" role="3cqZAp">
                            <node concept="3clFbS" id="39D1ywr0vez" role="2LFqv$">
                              <node concept="3clFbF" id="39D1ywr0x_O" role="3cqZAp">
                                <node concept="2OqwBi" id="39D1ywr0xOL" role="3clFbG">
                                  <node concept="37vLTw" id="39D1ywr0x_N" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7K_WrSLbpin" resolve="result" />
                                  </node>
                                  <node concept="liA8E" id="39D1ywr0yjb" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~List.remove(int)" resolve="remove" />
                                    <node concept="37vLTw" id="39D1ywr0yDV" role="37wK5m">
                                      <ref role="3cqZAo" node="39D1ywr0ve$" resolve="i" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWsn" id="39D1ywr0ve$" role="1Duv9x">
                              <property role="TrG5h" value="i" />
                              <node concept="10Oyi0" id="39D1ywr0vw_" role="1tU5fm" />
                              <node concept="3cpWsd" id="39D1ywr0vWa" role="33vP2m">
                                <node concept="3cmrfG" id="39D1ywr0vWt" role="3uHU7w">
                                  <property role="3cmrfH" value="1" />
                                </node>
                                <node concept="37vLTw" id="39D1ywr0vxG" role="3uHU7B">
                                  <ref role="3cqZAo" node="7K_WrSLoliO" resolve="after" />
                                </node>
                              </node>
                            </node>
                            <node concept="3eOSWO" id="39D1ywr0_yL" role="1Dwp0S">
                              <node concept="37vLTw" id="39D1ywr0w3c" role="3uHU7B">
                                <ref role="3cqZAo" node="39D1ywr0ve$" resolve="i" />
                              </node>
                              <node concept="37vLTw" id="39D1ywr0wEV" role="3uHU7w">
                                <ref role="3cqZAo" node="7K_WrSLnZEP" resolve="before" />
                              </node>
                            </node>
                            <node concept="3uO5VW" id="39D1ywr0xuz" role="1Dwrff">
                              <node concept="37vLTw" id="39D1ywr0xu_" role="2$L3a6">
                                <ref role="3cqZAo" node="39D1ywr0ve$" resolve="i" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="39D1ywr0zhy" role="3cqZAp">
                            <node concept="2OqwBi" id="39D1ywr0zF6" role="3clFbG">
                              <node concept="37vLTw" id="39D1ywr0zhw" role="2Oq$k0">
                                <ref role="3cqZAo" node="7K_WrSLbpin" resolve="result" />
                              </node>
                              <node concept="liA8E" id="39D1ywr0zXQ" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.set(int,java.lang.Object)" resolve="set" />
                                <node concept="37vLTw" id="39D1ywr0$kz" role="37wK5m">
                                  <ref role="3cqZAo" node="7K_WrSLnZEP" resolve="before" />
                                </node>
                                <node concept="37vLTw" id="39D1ywr0_0e" role="37wK5m">
                                  <ref role="3cqZAo" node="7K_WrSLpes6" resolve="nd" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="7K_WrSLp99I" role="3cqZAp" />
                        </node>
                        <node concept="3y3z36" id="7K_WrSLoLHU" role="3clFbw">
                          <node concept="37vLTw" id="7K_WrSLoPvW" role="3uHU7w">
                            <ref role="3cqZAo" node="7K_WrSLnZEP" resolve="before" />
                          </node>
                          <node concept="37vLTw" id="7K_WrSLoIqq" role="3uHU7B">
                            <ref role="3cqZAo" node="7K_WrSLoliO" resolve="after" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="7K_WrSLmVSV" role="3cqZAp">
                        <node concept="37vLTw" id="7K_WrSLmVSX" role="3cqZAk">
                          <ref role="3cqZAo" node="7K_WrSLmMb2" resolve="match" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="7K_WrSLj34J" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="2tJIrI" id="11yO7V0b13S" role="jymVt" />
                  <node concept="3clFb_" id="11yO7V0b4mc" role="jymVt">
                    <property role="TrG5h" value="matchNodePrim" />
                    <node concept="3Tmbuc" id="11yO7V0b4md" role="1B3o_S" />
                    <node concept="10P_77" id="11yO7V0b4mf" role="3clF45" />
                    <node concept="37vLTG" id="11yO7V0b4mg" role="3clF46">
                      <property role="TrG5h" value="node1" />
                      <node concept="3uibUv" id="11yO7V0b4mh" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2AHcQZ" id="11yO7V0b4mi" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="11yO7V0b4mj" role="3clF46">
                      <property role="TrG5h" value="node2" />
                      <node concept="3uibUv" id="11yO7V0b4mk" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2AHcQZ" id="11yO7V0b4ml" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="11yO7V0b4mn" role="3clF47">
                      <node concept="3cpWs8" id="11yO7V0b8w$" role="3cqZAp">
                        <node concept="3cpWsn" id="11yO7V0b8w_" role="3cpWs9">
                          <property role="TrG5h" value="match" />
                          <property role="3TUv4t" value="true" />
                          <node concept="10P_77" id="11yO7V0b67i" role="1tU5fm" />
                          <node concept="3nyPlj" id="11yO7V0b8wA" role="33vP2m">
                            <ref role="37wK5l" to="w1kc:~SNodeMatcher.matchNodePrim(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode)" resolve="matchNodePrim" />
                            <node concept="37vLTw" id="11yO7V0b8wB" role="37wK5m">
                              <ref role="3cqZAo" node="11yO7V0b4mg" resolve="node1" />
                            </node>
                            <node concept="37vLTw" id="11yO7V0b8wC" role="37wK5m">
                              <ref role="3cqZAo" node="11yO7V0b4mj" resolve="node2" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="11yO7V0bwzb" role="3cqZAp">
                        <node concept="3clFbS" id="11yO7V0bwzd" role="3clFbx">
                          <node concept="3clFbJ" id="11yO7V0bFdH" role="3cqZAp">
                            <node concept="3clFbS" id="11yO7V0bFdJ" role="3clFbx">
                              <node concept="3clFbF" id="11yO7V0ccKt" role="3cqZAp">
                                <node concept="2OqwBi" id="11yO7V0chMc" role="3clFbG">
                                  <node concept="37vLTw" id="11yO7V0ccKr" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7K_WrSLbpin" resolve="result" />
                                  </node>
                                  <node concept="liA8E" id="11yO7V0cD6R" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                    <node concept="2ShNRf" id="11yO7V0cHio" role="37wK5m">
                                      <node concept="1pGfFk" id="11yO7V0cVf3" role="2ShVmc">
                                        <property role="373rjd" value="true" />
                                        <ref role="37wK5l" to="y5e1:39D1ywr2U$p" resolve="UnmatchedNode" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="22lmx$" id="11yO7V0d14S" role="3clFbw">
                              <node concept="3clFbC" id="11yO7V0bTGU" role="3uHU7B">
                                <node concept="37vLTw" id="11yO7V0bK1X" role="3uHU7B">
                                  <ref role="3cqZAo" node="11yO7V0b4mg" resolve="node1" />
                                </node>
                                <node concept="10Nm6u" id="11yO7V0bWo2" role="3uHU7w" />
                              </node>
                              <node concept="3clFbC" id="11yO7V0d6o_" role="3uHU7w">
                                <node concept="37vLTw" id="11yO7V0c2gk" role="3uHU7B">
                                  <ref role="3cqZAo" node="11yO7V0b4mj" resolve="node2" />
                                </node>
                                <node concept="10Nm6u" id="11yO7V0ca2s" role="3uHU7w" />
                              </node>
                            </node>
                            <node concept="9aQIb" id="11yO7V0dg8A" role="9aQIa">
                              <node concept="3clFbS" id="11yO7V0dg8B" role="9aQI4">
                                <node concept="3SKdUt" id="11yO7V0e144" role="3cqZAp">
                                  <node concept="1PaTwC" id="11yO7V0e145" role="1aUNEU">
                                    <node concept="3oM_SD" id="11yO7V0e3Mo" role="1PaTwD">
                                      <property role="3oM_SC" value="FIXME" />
                                    </node>
                                    <node concept="3oM_SD" id="11yO7V0e3Mq" role="1PaTwD">
                                      <property role="3oM_SC" value="implied" />
                                    </node>
                                    <node concept="3oM_SD" id="11yO7V0e3Mt" role="1PaTwD">
                                      <property role="3oM_SC" value="knowledge" />
                                    </node>
                                    <node concept="3oM_SD" id="11yO7V0e3Mx" role="1PaTwD">
                                      <property role="3oM_SC" value="of" />
                                    </node>
                                    <node concept="3oM_SD" id="11yO7V0e3MA" role="1PaTwD">
                                      <property role="3oM_SC" value="super.matchNodePrim" />
                                    </node>
                                    <node concept="3oM_SD" id="11yO7V0e3MG" role="1PaTwD">
                                      <property role="3oM_SC" value="implementation" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="11yO7V0diVK" role="3cqZAp">
                                  <node concept="2OqwBi" id="11yO7V0dlR5" role="3clFbG">
                                    <node concept="37vLTw" id="11yO7V0diVJ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7K_WrSLbpin" resolve="result" />
                                    </node>
                                    <node concept="liA8E" id="11yO7V0dqdj" role="2OqNvi">
                                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                      <node concept="2ShNRf" id="11yO7V0dsY6" role="37wK5m">
                                        <node concept="1pGfFk" id="11yO7V0dzxO" role="2ShVmc">
                                          <property role="373rjd" value="true" />
                                          <ref role="37wK5l" to="y5e1:7MIYyntE0nb" resolve="ConceptDifference" />
                                          <node concept="2OqwBi" id="11yO7V0dECA" role="37wK5m">
                                            <node concept="37vLTw" id="11yO7V0dCac" role="2Oq$k0">
                                              <ref role="3cqZAo" node="11yO7V0b4mg" resolve="node1" />
                                            </node>
                                            <node concept="liA8E" id="11yO7V0dHtU" role="2OqNvi">
                                              <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                                            </node>
                                          </node>
                                          <node concept="2OqwBi" id="11yO7V0dQ3o" role="37wK5m">
                                            <node concept="37vLTw" id="11yO7V0dOaG" role="2Oq$k0">
                                              <ref role="3cqZAo" node="11yO7V0b4mj" resolve="node2" />
                                            </node>
                                            <node concept="liA8E" id="11yO7V0dTrQ" role="2OqNvi">
                                              <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
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
                        <node concept="3fqX7Q" id="11yO7V0b_pH" role="3clFbw">
                          <node concept="37vLTw" id="11yO7V0bC7e" role="3fr31v">
                            <ref role="3cqZAo" node="11yO7V0b8w_" resolve="match" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="11yO7V0br1a" role="3cqZAp">
                        <node concept="37vLTw" id="11yO7V0br1c" role="3cqZAk">
                          <ref role="3cqZAo" node="11yO7V0b8w_" resolve="match" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="11yO7V0b4mo" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7K_WrSLe1ks" role="3cqZAp">
          <node concept="3clFbS" id="7K_WrSLe1ku" role="3clFbx">
            <node concept="3clFbF" id="7K_WrSLegvl" role="3cqZAp">
              <node concept="2OqwBi" id="7K_WrSLeilt" role="3clFbG">
                <node concept="37vLTw" id="7K_WrSLegvj" role="2Oq$k0">
                  <ref role="3cqZAo" node="7K_WrSLdLW8" resolve="nm" />
                </node>
                <node concept="liA8E" id="7K_WrSLejT_" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~SNodeMatcher.with(jetbrains.mps.smodel.SNodeMatcher$PropertyMatchStrategy)" resolve="with" />
                  <node concept="2ShNRf" id="7K_WrSLgRyC" role="37wK5m">
                    <node concept="1pGfFk" id="7K_WrSLgUtp" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" node="7K_WrSLfQmy" resolve="ModelMatcher.DiffProperties" />
                      <node concept="37Ijox" id="7K_WrSLn7gt" role="37wK5m">
                        <ref role="37Ijqf" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                        <node concept="37vLTw" id="7K_WrSLgW_x" role="wWaWy">
                          <ref role="3cqZAo" node="7K_WrSLbpin" resolve="result" />
                        </node>
                      </node>
                      <node concept="2ShNRf" id="7K_WrSLel$Y" role="37wK5m">
                        <node concept="1pGfFk" id="7K_WrSLeox4" role="2ShVmc">
                          <property role="373rjd" value="true" />
                          <ref role="37wK5l" to="w1kc:~SNodeMatcher$EqualPersistentValues.&lt;init&gt;()" resolve="SNodeMatcher.EqualPersistentValues" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7K_WrSLe8FX" role="3clFbw">
            <node concept="37vLTw" id="7K_WrSLe6yO" role="2Oq$k0">
              <ref role="3cqZAo" node="7K_WrSLbfvz" resolve="myOptions" />
            </node>
            <node concept="liA8E" id="7K_WrSLeb52" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object)" resolve="contains" />
              <node concept="Rm8GO" id="7K_WrSLee1r" role="37wK5m">
                <ref role="Rm8GQ" node="7K_WrSLbbx0" resolve="PROPERTY_PERSISTENCE_VALUE" />
                <ref role="1Px2BO" node="7K_WrSLbbhi" resolve="MatchOptions" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7K_WrSLeuoh" role="3eNLev">
            <node concept="3clFbS" id="7K_WrSLeuoj" role="3eOfB_">
              <node concept="3clFbF" id="7K_WrSLe$1X" role="3cqZAp">
                <node concept="2OqwBi" id="7K_WrSLe_vO" role="3clFbG">
                  <node concept="37vLTw" id="7K_WrSLe$1W" role="2Oq$k0">
                    <ref role="3cqZAo" node="7K_WrSLdLW8" resolve="nm" />
                  </node>
                  <node concept="liA8E" id="7K_WrSLeBsU" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~SNodeMatcher.with(jetbrains.mps.smodel.SNodeMatcher$PropertyMatchStrategy)" resolve="with" />
                    <node concept="2ShNRf" id="7K_WrSLh9T1" role="37wK5m">
                      <node concept="1pGfFk" id="7K_WrSLhdqy" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" node="7K_WrSLfQmy" resolve="ModelMatcher.DiffProperties" />
                        <node concept="37Ijox" id="7K_WrSLnlJa" role="37wK5m">
                          <ref role="37Ijqf" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                          <node concept="37vLTw" id="7K_WrSLhdtp" role="wWaWy">
                            <ref role="3cqZAo" node="7K_WrSLbpin" resolve="result" />
                          </node>
                        </node>
                        <node concept="2ShNRf" id="7K_WrSLeCYJ" role="37wK5m">
                          <node concept="1pGfFk" id="7K_WrSLeGcl" role="2ShVmc">
                            <property role="373rjd" value="true" />
                            <ref role="37wK5l" to="w1kc:~SNodeMatcher$EqualUserValues.&lt;init&gt;()" resolve="SNodeMatcher.EqualUserValues" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7K_WrSLewVl" role="3eO9$A">
              <node concept="37vLTw" id="7K_WrSLewVm" role="2Oq$k0">
                <ref role="3cqZAo" node="7K_WrSLbfvz" resolve="myOptions" />
              </node>
              <node concept="liA8E" id="7K_WrSLewVn" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object)" resolve="contains" />
                <node concept="Rm8GO" id="7K_WrSLeyHu" role="37wK5m">
                  <ref role="Rm8GQ" node="7K_WrSLbbp8" resolve="PROPERTY_USER_VALUE" />
                  <ref role="1Px2BO" node="7K_WrSLbbhi" resolve="MatchOptions" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1NpV1yWYAFe" role="9aQIa">
            <node concept="3clFbS" id="1NpV1yWYAFf" role="9aQI4">
              <node concept="YS8fn" id="1NpV1yWYEww" role="3cqZAp">
                <node concept="2ShNRf" id="1NpV1yWYI9k" role="YScLw">
                  <node concept="1pGfFk" id="1NpV1yWYLg5" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="Xl_RD" id="1NpV1yWYR$M" role="37wK5m">
                      <property role="Xl_RC" value="Missing match flag for properties" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7K_WrSLfj$v" role="3cqZAp" />
        <node concept="3clFbJ" id="7K_WrSLeJ8Y" role="3cqZAp">
          <node concept="3clFbS" id="7K_WrSLeJ90" role="3clFbx">
            <node concept="3clFbF" id="7K_WrSLeNMz" role="3cqZAp">
              <node concept="2OqwBi" id="7K_WrSLePF1" role="3clFbG">
                <node concept="37vLTw" id="7K_WrSLeNMx" role="2Oq$k0">
                  <ref role="3cqZAo" node="7K_WrSLdLW8" resolve="nm" />
                </node>
                <node concept="liA8E" id="7K_WrSLeRFf" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~SNodeMatcher.with(jetbrains.mps.smodel.SNodeMatcher$AssociationMatchStrategy)" resolve="with" />
                  <node concept="2ShNRf" id="7K_WrSLiqjX" role="37wK5m">
                    <node concept="1pGfFk" id="7K_WrSLiuz1" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" node="7K_WrSLhwqn" resolve="ModelMatcher.DiffAssociations" />
                      <node concept="37Ijox" id="7K_WrSLnpUL" role="37wK5m">
                        <ref role="37Ijqf" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                        <node concept="37vLTw" id="7K_WrSLnpUM" role="wWaWy">
                          <ref role="3cqZAo" node="7K_WrSLbpin" resolve="result" />
                        </node>
                      </node>
                      <node concept="2ShNRf" id="7K_WrSLeVgu" role="37wK5m">
                        <node concept="1pGfFk" id="7K_WrSLeXgN" role="2ShVmc">
                          <property role="373rjd" value="true" />
                          <ref role="37wK5l" to="w1kc:~SNodeMatcher$EqualTargetReference.&lt;init&gt;()" resolve="SNodeMatcher.EqualTargetReference" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7K_WrSLeL1G" role="3clFbw">
            <node concept="37vLTw" id="7K_WrSLeL1H" role="2Oq$k0">
              <ref role="3cqZAo" node="7K_WrSLbfvz" resolve="myOptions" />
            </node>
            <node concept="liA8E" id="7K_WrSLeL1I" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object)" resolve="contains" />
              <node concept="Rm8GO" id="7K_WrSLeMqe" role="37wK5m">
                <ref role="Rm8GQ" node="7K_WrSLbb_n" resolve="ASSOCIATION_SAME_TARGET_PTR" />
                <ref role="1Px2BO" node="7K_WrSLbbhi" resolve="MatchOptions" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7K_WrSLf0hY" role="3eNLev">
            <node concept="3clFbS" id="7K_WrSLf0i0" role="3eOfB_">
              <node concept="3clFbF" id="7K_WrSLf54P" role="3cqZAp">
                <node concept="2OqwBi" id="7K_WrSLf54Q" role="3clFbG">
                  <node concept="37vLTw" id="7K_WrSLf54R" role="2Oq$k0">
                    <ref role="3cqZAo" node="7K_WrSLdLW8" resolve="nm" />
                  </node>
                  <node concept="liA8E" id="7K_WrSLf54S" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~SNodeMatcher.with(jetbrains.mps.smodel.SNodeMatcher$AssociationMatchStrategy)" resolve="with" />
                    <node concept="2ShNRf" id="7K_WrSLiB1v" role="37wK5m">
                      <node concept="1pGfFk" id="7K_WrSLiEvY" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" node="7K_WrSLhwqn" resolve="ModelMatcher.DiffAssociations" />
                        <node concept="37Ijox" id="7K_WrSLnuym" role="37wK5m">
                          <ref role="37Ijqf" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                          <node concept="37vLTw" id="7K_WrSLnuyn" role="wWaWy">
                            <ref role="3cqZAo" node="7K_WrSLbpin" resolve="result" />
                          </node>
                        </node>
                        <node concept="2ShNRf" id="7K_WrSLf54T" role="37wK5m">
                          <node concept="1pGfFk" id="7K_WrSLf54U" role="2ShVmc">
                            <property role="373rjd" value="true" />
                            <ref role="37wK5l" to="w1kc:~SNodeMatcher$IdenticalTargetNode.&lt;init&gt;()" resolve="SNodeMatcher.IdenticalTargetNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7K_WrSLf251" role="3eO9$A">
              <node concept="37vLTw" id="7K_WrSLf252" role="2Oq$k0">
                <ref role="3cqZAo" node="7K_WrSLbfvz" resolve="myOptions" />
              </node>
              <node concept="liA8E" id="7K_WrSLf253" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object)" resolve="contains" />
                <node concept="Rm8GO" id="7K_WrSLf3DD" role="37wK5m">
                  <ref role="Rm8GQ" node="7K_WrSLbc2v" resolve="ASSOCIATION_EQUAL_TARGET" />
                  <ref role="1Px2BO" node="7K_WrSLbbhi" resolve="MatchOptions" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1NpV1yWZhkX" role="9aQIa">
            <node concept="3clFbS" id="1NpV1yWZhkY" role="9aQI4">
              <node concept="YS8fn" id="1NpV1yWZkrL" role="3cqZAp">
                <node concept="2ShNRf" id="1NpV1yWZkrM" role="YScLw">
                  <node concept="1pGfFk" id="1NpV1yWZkrN" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="Xl_RD" id="1NpV1yWZkrO" role="37wK5m">
                      <property role="Xl_RC" value="Missing match flag for association links" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7K_WrSLfhJT" role="3cqZAp" />
        <node concept="3clFbJ" id="7K_WrSLffUT" role="3cqZAp">
          <node concept="3clFbS" id="7K_WrSLffUU" role="3clFbx">
            <node concept="3clFbF" id="7K_WrSLffUV" role="3cqZAp">
              <node concept="2OqwBi" id="7K_WrSLffUW" role="3clFbG">
                <node concept="37vLTw" id="7K_WrSLffUX" role="2Oq$k0">
                  <ref role="3cqZAo" node="7K_WrSLdLW8" resolve="nm" />
                </node>
                <node concept="liA8E" id="7K_WrSLffUY" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~SNodeMatcher.with(jetbrains.mps.smodel.SNodeMatcher$AggregationMatchStrategy)" resolve="with" />
                  <node concept="2ShNRf" id="7K_WrSLffUZ" role="37wK5m">
                    <node concept="1pGfFk" id="7K_WrSLfqK1" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" to="w1kc:~SNodeMatcher$SameOrderChildMatch.&lt;init&gt;()" resolve="SNodeMatcher.SameOrderChildMatch" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7K_WrSLffV1" role="3clFbw">
            <node concept="37vLTw" id="7K_WrSLffV2" role="2Oq$k0">
              <ref role="3cqZAo" node="7K_WrSLbfvz" resolve="myOptions" />
            </node>
            <node concept="liA8E" id="7K_WrSLffV3" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object)" resolve="contains" />
              <node concept="Rm8GO" id="7K_WrSLfm08" role="37wK5m">
                <ref role="Rm8GQ" node="7K_WrSLbciX" resolve="AGGREGATION_SAME_ORDER" />
                <ref role="1Px2BO" node="7K_WrSLbbhi" resolve="MatchOptions" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7K_WrSLffV5" role="3eNLev">
            <node concept="3clFbS" id="7K_WrSLffV6" role="3eOfB_">
              <node concept="3clFbF" id="7K_WrSLffV7" role="3cqZAp">
                <node concept="2OqwBi" id="7K_WrSLffV8" role="3clFbG">
                  <node concept="37vLTw" id="7K_WrSLffV9" role="2Oq$k0">
                    <ref role="3cqZAo" node="7K_WrSLdLW8" resolve="nm" />
                  </node>
                  <node concept="liA8E" id="7K_WrSLffVa" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~SNodeMatcher.with(jetbrains.mps.smodel.SNodeMatcher$AggregationMatchStrategy)" resolve="with" />
                    <node concept="2ShNRf" id="7K_WrSLffVb" role="37wK5m">
                      <node concept="1pGfFk" id="7K_WrSLf_c_" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" to="w1kc:~SNodeMatcher$AnyOrderChildMatch.&lt;init&gt;()" resolve="SNodeMatcher.AnyOrderChildMatch" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7K_WrSLffVd" role="3eO9$A">
              <node concept="37vLTw" id="7K_WrSLffVe" role="2Oq$k0">
                <ref role="3cqZAo" node="7K_WrSLbfvz" resolve="myOptions" />
              </node>
              <node concept="liA8E" id="7K_WrSLffVf" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object)" resolve="contains" />
                <node concept="Rm8GO" id="7K_WrSLfwnB" role="37wK5m">
                  <ref role="1Px2BO" node="7K_WrSLbbhi" resolve="MatchOptions" />
                  <ref role="Rm8GQ" node="7K_WrSLbcIb" resolve="AGGREGATION_ANY_ORDER" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1NpV1yWZBr3" role="9aQIa">
            <node concept="3clFbS" id="1NpV1yWZBr4" role="9aQI4">
              <node concept="YS8fn" id="1NpV1yWZDXL" role="3cqZAp">
                <node concept="2ShNRf" id="1NpV1yWZDXM" role="YScLw">
                  <node concept="1pGfFk" id="1NpV1yWZDXN" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="Xl_RD" id="1NpV1yWZDXO" role="37wK5m">
                      <property role="Xl_RC" value="Missing match flag for aggregation links" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7K_WrSLfaBQ" role="3cqZAp" />
        <node concept="3cpWs6" id="7K_WrSLdXlf" role="3cqZAp">
          <node concept="37vLTw" id="7K_WrSLdZG_" role="3cqZAk">
            <ref role="3cqZAo" node="7K_WrSLdLW8" resolve="nm" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7K_WrSLbpin" role="3clF46">
        <property role="TrG5h" value="result" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7K_WrSLbpim" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="7K_WrSLbpyT" role="11_B2D">
            <ref role="3uigEE" to="y5e1:7MIYyntDZEE" resolve="DifferenceItem" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7K_WrSLfI02" role="jymVt" />
    <node concept="312cEu" id="7K_WrSLfNrR" role="jymVt">
      <property role="TrG5h" value="DiffProperties" />
      <node concept="312cEg" id="7K_WrSLfQQY" role="jymVt">
        <property role="TrG5h" value="myDelegate" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="7K_WrSLfQQZ" role="1B3o_S" />
        <node concept="3uibUv" id="7K_WrSLfQR1" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~SNodeMatcher$PropertyMatchStrategy" resolve="SNodeMatcher.PropertyMatchStrategy" />
        </node>
      </node>
      <node concept="312cEg" id="7K_WrSLfR4l" role="jymVt">
        <property role="TrG5h" value="myResult" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="7K_WrSLfR4m" role="1B3o_S" />
        <node concept="3uibUv" id="7K_WrSLfR4o" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Consumer" resolve="Consumer" />
          <node concept="3uibUv" id="7K_WrSLfR4p" role="11_B2D">
            <ref role="3uigEE" to="y5e1:7MIYyntDZEE" resolve="DifferenceItem" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7K_WrSLfQZq" role="jymVt" />
      <node concept="3clFbW" id="7K_WrSLfQmy" role="jymVt">
        <node concept="3cqZAl" id="7K_WrSLfQm$" role="3clF45" />
        <node concept="3clFbS" id="7K_WrSLfQmA" role="3clF47">
          <node concept="3clFbF" id="7K_WrSLfQR2" role="3cqZAp">
            <node concept="37vLTI" id="7K_WrSLfQR4" role="3clFbG">
              <node concept="37vLTw" id="7K_WrSLfQR7" role="37vLTJ">
                <ref role="3cqZAo" node="7K_WrSLfQQY" resolve="myDelegate" />
              </node>
              <node concept="37vLTw" id="7K_WrSLfQR8" role="37vLTx">
                <ref role="3cqZAo" node="7K_WrSLfQKU" resolve="delegate" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7K_WrSLfR4q" role="3cqZAp">
            <node concept="37vLTI" id="7K_WrSLfR4s" role="3clFbG">
              <node concept="37vLTw" id="7K_WrSLfR4v" role="37vLTJ">
                <ref role="3cqZAo" node="7K_WrSLfR4l" resolve="myResult" />
              </node>
              <node concept="37vLTw" id="7K_WrSLfR4w" role="37vLTx">
                <ref role="3cqZAo" node="7K_WrSLfQpa" resolve="result" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7K_WrSLfQpa" role="3clF46">
          <property role="TrG5h" value="result" />
          <node concept="3uibUv" id="7K_WrSLfQp9" role="1tU5fm">
            <ref role="3uigEE" to="82uw:~Consumer" resolve="Consumer" />
            <node concept="3uibUv" id="7K_WrSLfQI9" role="11_B2D">
              <ref role="3uigEE" to="y5e1:7MIYyntDZEE" resolve="DifferenceItem" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7K_WrSLfQKU" role="3clF46">
          <property role="TrG5h" value="delegate" />
          <node concept="3uibUv" id="7K_WrSLfQLE" role="1tU5fm">
            <ref role="3uigEE" to="w1kc:~SNodeMatcher$PropertyMatchStrategy" resolve="SNodeMatcher.PropertyMatchStrategy" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7K_WrSLfRwo" role="jymVt" />
      <node concept="2tJIrI" id="7K_WrSLfRzu" role="jymVt" />
      <node concept="3Tm6S6" id="7K_WrSLfKJe" role="1B3o_S" />
      <node concept="3uibUv" id="7K_WrSLfQfL" role="EKbjA">
        <ref role="3uigEE" to="w1kc:~SNodeMatcher$PropertyMatchStrategy" resolve="SNodeMatcher.PropertyMatchStrategy" />
      </node>
      <node concept="3clFb_" id="7K_WrSLfRAI" role="jymVt">
        <property role="TrG5h" value="match" />
        <node concept="3Tm1VV" id="7K_WrSLfRAJ" role="1B3o_S" />
        <node concept="10P_77" id="7K_WrSLfRAL" role="3clF45" />
        <node concept="37vLTG" id="7K_WrSLfRAM" role="3clF46">
          <property role="TrG5h" value="node1" />
          <node concept="3uibUv" id="7K_WrSLfRAN" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
          <node concept="2AHcQZ" id="7K_WrSLfRAO" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="7K_WrSLfRAP" role="3clF46">
          <property role="TrG5h" value="node2" />
          <node concept="3uibUv" id="7K_WrSLfRAQ" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
          <node concept="2AHcQZ" id="7K_WrSLfRAR" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="7K_WrSLfRAS" role="3clF46">
          <property role="TrG5h" value="property" />
          <node concept="3uibUv" id="7K_WrSLfRAT" role="1tU5fm">
            <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
          </node>
          <node concept="2AHcQZ" id="7K_WrSLfRAU" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="7K_WrSLfRAV" role="3clF47">
          <node concept="3clFbJ" id="7K_WrSLfV0M" role="3cqZAp">
            <node concept="3clFbS" id="7K_WrSLfV0O" role="3clFbx">
              <node concept="3cpWs6" id="7K_WrSLfWwA" role="3cqZAp">
                <node concept="3clFbT" id="7K_WrSLfXa9" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7K_WrSLfVkP" role="3clFbw">
              <node concept="37vLTw" id="7K_WrSLfV9X" role="2Oq$k0">
                <ref role="3cqZAo" node="7K_WrSLfQQY" resolve="myDelegate" />
              </node>
              <node concept="liA8E" id="7K_WrSLfVFB" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~SNodeMatcher$PropertyMatchStrategy.match(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SProperty)" resolve="match" />
                <node concept="37vLTw" id="7K_WrSLfVMj" role="37wK5m">
                  <ref role="3cqZAo" node="7K_WrSLfRAM" resolve="node1" />
                </node>
                <node concept="37vLTw" id="7K_WrSLfW15" role="37wK5m">
                  <ref role="3cqZAo" node="7K_WrSLfRAP" resolve="node2" />
                </node>
                <node concept="37vLTw" id="7K_WrSLfWnz" role="37wK5m">
                  <ref role="3cqZAo" node="7K_WrSLfRAS" resolve="property" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="7K_WrSLgOql" role="3cqZAp">
            <node concept="1PaTwC" id="7K_WrSLgOqm" role="1aUNEU">
              <node concept="3oM_SD" id="7K_WrSLgOC_" role="1PaTwD">
                <property role="3oM_SC" value="indeed," />
              </node>
              <node concept="3oM_SD" id="7K_WrSLgOEP" role="1PaTwD">
                <property role="3oM_SC" value="delegate" />
              </node>
              <node concept="3oM_SD" id="7K_WrSLgOFo" role="1PaTwD">
                <property role="3oM_SC" value="might" />
              </node>
              <node concept="3oM_SD" id="7K_WrSLgOGR" role="1PaTwD">
                <property role="3oM_SC" value="not" />
              </node>
              <node concept="3oM_SD" id="7K_WrSLgOGW" role="1PaTwD">
                <property role="3oM_SC" value="compare" />
              </node>
              <node concept="3oM_SD" id="7K_WrSLgOHi" role="1PaTwD">
                <property role="3oM_SC" value="getProperty()" />
              </node>
              <node concept="3oM_SD" id="7K_WrSLgOID" role="1PaTwD">
                <property role="3oM_SC" value="directly," />
              </node>
              <node concept="3oM_SD" id="7K_WrSLgOIL" role="1PaTwD">
                <property role="3oM_SC" value="and" />
              </node>
              <node concept="3oM_SD" id="7K_WrSLgOJa" role="1PaTwD">
                <property role="3oM_SC" value="reporting" />
              </node>
              <node concept="3oM_SD" id="7K_WrSLgOK4" role="1PaTwD">
                <property role="3oM_SC" value="would" />
              </node>
              <node concept="3oM_SD" id="7K_WrSLgOKJ" role="1PaTwD">
                <property role="3oM_SC" value="be" />
              </node>
              <node concept="3oM_SD" id="7K_WrSLgOLb" role="1PaTwD">
                <property role="3oM_SC" value="imprecise." />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="7K_WrSLgP3I" role="3cqZAp">
            <node concept="1PaTwC" id="7K_WrSLgP3J" role="1aUNEU">
              <node concept="3oM_SD" id="7K_WrSLgP4t" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
              <node concept="3oM_SD" id="7K_WrSLgPk7" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
              <node concept="3oM_SD" id="7K_WrSLgPka" role="1PaTwD">
                <property role="3oM_SC" value="but" />
              </node>
              <node concept="3oM_SD" id="7K_WrSLgPku" role="1PaTwD">
                <property role="3oM_SC" value="I" />
              </node>
              <node concept="3oM_SD" id="7K_WrSLgPkz" role="1PaTwD">
                <property role="3oM_SC" value="don't" />
              </node>
              <node concept="3oM_SD" id="7K_WrSLgPkD" role="1PaTwD">
                <property role="3oM_SC" value="care" />
              </node>
              <node concept="3oM_SD" id="7K_WrSLgPlg" role="1PaTwD">
                <property role="3oM_SC" value="that" />
              </node>
              <node concept="3oM_SD" id="7K_WrSLgPlS" role="1PaTwD">
                <property role="3oM_SC" value="much" />
              </node>
              <node concept="3oM_SD" id="7K_WrSLgPmL" role="1PaTwD">
                <property role="3oM_SC" value="at" />
              </node>
              <node concept="3oM_SD" id="7K_WrSLgPmV" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="7K_WrSLgPn6" role="1PaTwD">
                <property role="3oM_SC" value="moment" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7K_WrSLfYc8" role="3cqZAp">
            <node concept="2OqwBi" id="7K_WrSLfYIN" role="3clFbG">
              <node concept="37vLTw" id="7K_WrSLfYc6" role="2Oq$k0">
                <ref role="3cqZAo" node="7K_WrSLfR4l" resolve="myResult" />
              </node>
              <node concept="liA8E" id="7K_WrSLfZVq" role="2OqNvi">
                <ref role="37wK5l" to="82uw:~Consumer.accept(java.lang.Object)" resolve="accept" />
                <node concept="2ShNRf" id="7K_WrSLg06O" role="37wK5m">
                  <node concept="1pGfFk" id="7K_WrSLgJz1" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="y5e1:7MIYyntE0kL" resolve="PropertyDifference" />
                    <node concept="37vLTw" id="7K_WrSLgJPA" role="37wK5m">
                      <ref role="3cqZAo" node="7K_WrSLfRAS" resolve="property" />
                    </node>
                    <node concept="2OqwBi" id="7K_WrSLgKRY" role="37wK5m">
                      <node concept="37vLTw" id="7K_WrSLgKte" role="2Oq$k0">
                        <ref role="3cqZAo" node="7K_WrSLfRAM" resolve="node1" />
                      </node>
                      <node concept="liA8E" id="7K_WrSLgLcW" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                        <node concept="37vLTw" id="7K_WrSLgLqH" role="37wK5m">
                          <ref role="3cqZAo" node="7K_WrSLfRAS" resolve="property" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7K_WrSLgNuZ" role="37wK5m">
                      <node concept="37vLTw" id="7K_WrSLgN4y" role="2Oq$k0">
                        <ref role="3cqZAo" node="7K_WrSLfRAP" resolve="node2" />
                      </node>
                      <node concept="liA8E" id="7K_WrSLgNU3" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                        <node concept="37vLTw" id="7K_WrSLgOah" role="37wK5m">
                          <ref role="3cqZAo" node="7K_WrSLfRAS" resolve="property" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="7K_WrSLfXsA" role="3cqZAp">
            <node concept="3clFbT" id="7K_WrSLfXw8" role="3cqZAk" />
          </node>
        </node>
        <node concept="2AHcQZ" id="7K_WrSLfRAW" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7K_WrSLhjKZ" role="jymVt" />
    <node concept="312cEu" id="7K_WrSLhpS0" role="jymVt">
      <property role="TrG5h" value="DiffAssociations" />
      <node concept="312cEg" id="7K_WrSLhyTp" role="jymVt">
        <property role="TrG5h" value="myDelegate" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="7K_WrSLhyTq" role="1B3o_S" />
        <node concept="3uibUv" id="7K_WrSLhyTs" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~SNodeMatcher$AssociationMatchStrategy" resolve="SNodeMatcher.AssociationMatchStrategy" />
        </node>
      </node>
      <node concept="312cEg" id="7K_WrSLhzxJ" role="jymVt">
        <property role="TrG5h" value="myResult" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="7K_WrSLhzxK" role="1B3o_S" />
        <node concept="3uibUv" id="7K_WrSLhzxM" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Consumer" resolve="Consumer" />
          <node concept="3uibUv" id="7K_WrSLhzxN" role="11_B2D">
            <ref role="3uigEE" to="y5e1:7MIYyntDZEE" resolve="DifferenceItem" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7K_WrSLh$09" role="jymVt" />
      <node concept="3clFbW" id="7K_WrSLhwqn" role="jymVt">
        <node concept="37vLTG" id="7K_WrSLhz5V" role="3clF46">
          <property role="TrG5h" value="result" />
          <node concept="3uibUv" id="7K_WrSLhz5W" role="1tU5fm">
            <ref role="3uigEE" to="82uw:~Consumer" resolve="Consumer" />
            <node concept="3uibUv" id="7K_WrSLhz5X" role="11_B2D">
              <ref role="3uigEE" to="y5e1:7MIYyntDZEE" resolve="DifferenceItem" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7K_WrSLhyI3" role="3clF46">
          <property role="TrG5h" value="delegate" />
          <node concept="3uibUv" id="7K_WrSLhyIf" role="1tU5fm">
            <ref role="3uigEE" to="w1kc:~SNodeMatcher$AssociationMatchStrategy" resolve="SNodeMatcher.AssociationMatchStrategy" />
          </node>
        </node>
        <node concept="3cqZAl" id="7K_WrSLhwqp" role="3clF45" />
        <node concept="3clFbS" id="7K_WrSLhwqr" role="3clF47">
          <node concept="3clFbF" id="7K_WrSLhyTt" role="3cqZAp">
            <node concept="37vLTI" id="7K_WrSLhyTv" role="3clFbG">
              <node concept="37vLTw" id="7K_WrSLhyTy" role="37vLTJ">
                <ref role="3cqZAo" node="7K_WrSLhyTp" resolve="myDelegate" />
              </node>
              <node concept="37vLTw" id="7K_WrSLhyTz" role="37vLTx">
                <ref role="3cqZAo" node="7K_WrSLhyI3" resolve="delegate" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7K_WrSLhzxO" role="3cqZAp">
            <node concept="37vLTI" id="7K_WrSLhzxQ" role="3clFbG">
              <node concept="37vLTw" id="7K_WrSLhzxT" role="37vLTJ">
                <ref role="3cqZAo" node="7K_WrSLhzxJ" resolve="myResult" />
              </node>
              <node concept="37vLTw" id="7K_WrSLhzxU" role="37vLTx">
                <ref role="3cqZAo" node="7K_WrSLhz5V" resolve="result" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7K_WrSLht4e" role="jymVt" />
      <node concept="3Tm6S6" id="7K_WrSLhmOt" role="1B3o_S" />
      <node concept="3uibUv" id="7K_WrSLhsY0" role="EKbjA">
        <ref role="3uigEE" to="w1kc:~SNodeMatcher$AssociationMatchStrategy" resolve="SNodeMatcher.AssociationMatchStrategy" />
      </node>
      <node concept="3clFb_" id="7K_WrSLht5A" role="jymVt">
        <property role="TrG5h" value="match" />
        <node concept="3Tm1VV" id="7K_WrSLht5B" role="1B3o_S" />
        <node concept="10P_77" id="7K_WrSLht5D" role="3clF45" />
        <node concept="37vLTG" id="7K_WrSLht5E" role="3clF46">
          <property role="TrG5h" value="node1" />
          <node concept="3uibUv" id="7K_WrSLht5F" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
          <node concept="2AHcQZ" id="7K_WrSLht5G" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="7K_WrSLht5H" role="3clF46">
          <property role="TrG5h" value="node2" />
          <node concept="3uibUv" id="7K_WrSLht5I" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
          <node concept="2AHcQZ" id="7K_WrSLht5J" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="7K_WrSLht5K" role="3clF46">
          <property role="TrG5h" value="link" />
          <node concept="3uibUv" id="7K_WrSLht5L" role="1tU5fm">
            <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
          </node>
          <node concept="2AHcQZ" id="7K_WrSLht5M" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="7K_WrSLht5N" role="3clF47">
          <node concept="3clFbJ" id="7K_WrSLh$iV" role="3cqZAp">
            <node concept="3clFbS" id="7K_WrSLh$iX" role="3clFbx">
              <node concept="3cpWs6" id="7K_WrSLh_K3" role="3cqZAp">
                <node concept="3clFbT" id="7K_WrSLh_Wy" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7K_WrSLh$AL" role="3clFbw">
              <node concept="37vLTw" id="7K_WrSLh$ql" role="2Oq$k0">
                <ref role="3cqZAo" node="7K_WrSLhyTp" resolve="myDelegate" />
              </node>
              <node concept="liA8E" id="7K_WrSLh$Sh" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~SNodeMatcher$AssociationMatchStrategy.match(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="match" />
                <node concept="37vLTw" id="7K_WrSLh_27" role="37wK5m">
                  <ref role="3cqZAo" node="7K_WrSLht5E" resolve="node1" />
                </node>
                <node concept="37vLTw" id="7K_WrSLh_gQ" role="37wK5m">
                  <ref role="3cqZAo" node="7K_WrSLht5H" resolve="node2" />
                </node>
                <node concept="37vLTw" id="7K_WrSLh_yM" role="37wK5m">
                  <ref role="3cqZAo" node="7K_WrSLht5K" resolve="link" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="7K_WrSLhVwl" role="3cqZAp">
            <node concept="1PaTwC" id="7K_WrSLhVwm" role="1aUNEU">
              <node concept="3oM_SD" id="7K_WrSLhVD0" role="1PaTwD">
                <property role="3oM_SC" value="FIXME" />
              </node>
              <node concept="3oM_SD" id="7K_WrSLhVD2" role="1PaTwD">
                <property role="3oM_SC" value="ReferenceDifference" />
              </node>
              <node concept="3oM_SD" id="7K_WrSLhVD5" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="7K_WrSLhVD9" role="1PaTwD">
                <property role="3oM_SC" value="not" />
              </node>
              <node concept="3oM_SD" id="7K_WrSLhVDe" role="1PaTwD">
                <property role="3oM_SC" value="well" />
              </node>
              <node concept="3oM_SD" id="7K_WrSLhVDk" role="1PaTwD">
                <property role="3oM_SC" value="suited" />
              </node>
              <node concept="3oM_SD" id="7K_WrSLhVDr" role="1PaTwD">
                <property role="3oM_SC" value="for" />
              </node>
              <node concept="3oM_SD" id="7K_WrSLhVDz" role="1PaTwD">
                <property role="3oM_SC" value="our" />
              </node>
              <node concept="3oM_SD" id="7K_WrSLhVDG" role="1PaTwD">
                <property role="3oM_SC" value="purpose" />
              </node>
              <node concept="3oM_SD" id="7K_WrSLhVDQ" role="1PaTwD">
                <property role="3oM_SC" value="here" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7K_WrSLhASJ" role="3cqZAp">
            <node concept="2OqwBi" id="7K_WrSLhBnk" role="3clFbG">
              <node concept="37vLTw" id="7K_WrSLhASH" role="2Oq$k0">
                <ref role="3cqZAo" node="7K_WrSLhzxJ" resolve="myResult" />
              </node>
              <node concept="liA8E" id="7K_WrSLhCdQ" role="2OqNvi">
                <ref role="37wK5l" to="82uw:~Consumer.accept(java.lang.Object)" resolve="accept" />
                <node concept="2ShNRf" id="7K_WrSLhCFL" role="37wK5m">
                  <node concept="1pGfFk" id="7K_WrSLhGMh" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="y5e1:4OzBQ_jn_RZ" resolve="ReferenceDifference" />
                    <node concept="37vLTw" id="7K_WrSLhHOp" role="37wK5m">
                      <ref role="3cqZAo" node="7K_WrSLht5K" resolve="link" />
                    </node>
                    <node concept="3clFbT" id="7K_WrSLhTNf" role="37wK5m" />
                    <node concept="10Nm6u" id="7K_WrSLhU9n" role="37wK5m" />
                    <node concept="10Nm6u" id="7K_WrSLhUj6" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="7K_WrSLhA5A" role="3cqZAp">
            <node concept="3clFbT" id="7K_WrSLhA5C" role="3cqZAk" />
          </node>
        </node>
        <node concept="2AHcQZ" id="7K_WrSLht5O" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7K_WrSLbaLu" role="1B3o_S" />
  </node>
  <node concept="Qs71p" id="7K_WrSLbbhi">
    <property role="TrG5h" value="MatchOptions" />
    <node concept="QsSxf" id="7K_WrSLbbp8" role="Qtgdg">
      <property role="TrG5h" value="PROPERTY_USER_VALUE" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="7K_WrSLbbx0" role="Qtgdg">
      <property role="TrG5h" value="PROPERTY_PERSISTENCE_VALUE" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="7K_WrSLbb_n" role="Qtgdg">
      <property role="TrG5h" value="ASSOCIATION_SAME_TARGET_PTR" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="7K_WrSLbc2v" role="Qtgdg">
      <property role="TrG5h" value="ASSOCIATION_EQUAL_TARGET" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="7K_WrSLbciX" role="Qtgdg">
      <property role="TrG5h" value="AGGREGATION_SAME_ORDER" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="7K_WrSLbcIb" role="Qtgdg">
      <property role="TrG5h" value="AGGREGATION_ANY_ORDER" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="3Tm1VV" id="7K_WrSLbbhj" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7K_WrSLqqWq">
    <property role="TrG5h" value="ModelAssert" />
    <property role="1EXbeo" value="true" />
    <node concept="312cEg" id="7K_WrSLqAlR" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7K_WrSLqAlS" role="1B3o_S" />
      <node concept="3uibUv" id="7K_WrSLqAlU" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
    </node>
    <node concept="312cEg" id="7K_WrSLqsbo" role="jymVt">
      <property role="TrG5h" value="myMatcher" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7K_WrSLqsbp" role="1B3o_S" />
      <node concept="3uibUv" id="7K_WrSLqsc3" role="1tU5fm">
        <ref role="3uigEE" node="7K_WrSLbaLt" resolve="ModelMatcher" />
      </node>
    </node>
    <node concept="2tJIrI" id="7K_WrSLqr1i" role="jymVt" />
    <node concept="3clFbW" id="7K_WrSLqr2c" role="jymVt">
      <node concept="37vLTG" id="7K_WrSLq$Zk" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="7K_WrSLqAk4" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="7K_WrSLqsal" role="3clF46">
        <property role="TrG5h" value="options" />
        <node concept="8X2XB" id="7K_WrSLqsam" role="1tU5fm">
          <node concept="3uibUv" id="7K_WrSLqsan" role="8Xvag">
            <ref role="3uigEE" node="7K_WrSLbbhi" resolve="MatchOptions" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7K_WrSLqr2f" role="3clF45" />
      <node concept="3Tm1VV" id="7K_WrSLqr2g" role="1B3o_S" />
      <node concept="3clFbS" id="7K_WrSLqr2h" role="3clF47">
        <node concept="3clFbJ" id="7K_WrSLqsdd" role="3cqZAp">
          <node concept="22lmx$" id="7K_WrSLqsxd" role="3clFbw">
            <node concept="3clFbC" id="7K_WrSLquiZ" role="3uHU7w">
              <node concept="3cmrfG" id="7K_WrSLquXj" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="7K_WrSLqsED" role="3uHU7B">
                <node concept="37vLTw" id="7K_WrSLqs$t" role="2Oq$k0">
                  <ref role="3cqZAo" node="7K_WrSLqsal" resolve="options" />
                </node>
                <node concept="1Rwk04" id="7K_WrSLqsUS" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbC" id="7K_WrSLqsmm" role="3uHU7B">
              <node concept="37vLTw" id="7K_WrSLqsg$" role="3uHU7B">
                <ref role="3cqZAo" node="7K_WrSLqsal" resolve="options" />
              </node>
              <node concept="10Nm6u" id="7K_WrSLqsw2" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="7K_WrSLqsdf" role="3clFbx">
            <node concept="3clFbF" id="7K_WrSLqv0f" role="3cqZAp">
              <node concept="37vLTI" id="7K_WrSLqv7_" role="3clFbG">
                <node concept="2ShNRf" id="7K_WrSLqval" role="37vLTx">
                  <node concept="1pGfFk" id="7K_WrSLqwWZ" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="7K_WrSLbaUX" resolve="ModelMatcher" />
                  </node>
                </node>
                <node concept="37vLTw" id="7K_WrSLqv0e" role="37vLTJ">
                  <ref role="3cqZAo" node="7K_WrSLqsbo" resolve="myMatcher" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="7K_WrSLqwXM" role="9aQIa">
            <node concept="3clFbS" id="7K_WrSLqwXN" role="9aQI4">
              <node concept="3clFbF" id="7K_WrSLqxEI" role="3cqZAp">
                <node concept="37vLTI" id="7K_WrSLqxNP" role="3clFbG">
                  <node concept="2ShNRf" id="7K_WrSLqxQh" role="37vLTx">
                    <node concept="1pGfFk" id="7K_WrSLqyJm" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" node="7K_WrSLbaVv" resolve="ModelMatcher" />
                      <node concept="37vLTw" id="7K_WrSLqyMD" role="37wK5m">
                        <ref role="3cqZAo" node="7K_WrSLqsal" resolve="options" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="7K_WrSLqxEH" role="37vLTJ">
                    <ref role="3cqZAo" node="7K_WrSLqsbo" resolve="myMatcher" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7K_WrSLqAlV" role="3cqZAp">
          <node concept="37vLTI" id="7K_WrSLqAlX" role="3clFbG">
            <node concept="37vLTw" id="7K_WrSLqAm0" role="37vLTJ">
              <ref role="3cqZAo" node="7K_WrSLqAlR" resolve="myRepository" />
            </node>
            <node concept="37vLTw" id="7K_WrSLqAm1" role="37vLTx">
              <ref role="3cqZAo" node="7K_WrSLq$Zk" resolve="repository" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7K_WrSLqyYe" role="jymVt" />
    <node concept="3clFb_" id="7K_WrSLqAvN" role="jymVt">
      <property role="TrG5h" value="assertMatch" />
      <node concept="37vLTG" id="7K_WrSLqAVT" role="3clF46">
        <property role="TrG5h" value="m1" />
        <property role="3TUv4t" value="true" />
        <node concept="H_c77" id="7K_WrSLqAVU" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7K_WrSLqAVV" role="3clF46">
        <property role="TrG5h" value="m2" />
        <property role="3TUv4t" value="true" />
        <node concept="H_c77" id="7K_WrSLqAVW" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7K_WrSLqAvQ" role="3clF47">
        <node concept="3cpWs8" id="7K_WrSLqC_N" role="3cqZAp">
          <node concept="3cpWsn" id="7K_WrSLqC_O" role="3cpWs9">
            <property role="TrG5h" value="diff" />
            <node concept="3uibUv" id="7K_WrSLqC_P" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
              <node concept="3uibUv" id="7K_WrSLqC_Q" role="11_B2D">
                <ref role="3uigEE" to="y5e1:7MIYyntDZEE" resolve="DifferenceItem" />
              </node>
            </node>
            <node concept="2OqwBi" id="7K_WrSLqC_R" role="33vP2m">
              <node concept="2ShNRf" id="7K_WrSLqC_S" role="2Oq$k0">
                <node concept="1pGfFk" id="7K_WrSLqC_T" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.ModelAccess)" resolve="ModelAccessHelper" />
                  <node concept="2OqwBi" id="7K_WrSLqC_U" role="37wK5m">
                    <node concept="37vLTw" id="7K_WrSLqC_V" role="2Oq$k0">
                      <ref role="3cqZAo" node="7K_WrSLqAlR" resolve="myRepository" />
                    </node>
                    <node concept="liA8E" id="7K_WrSLqC_W" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7K_WrSLqC_X" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable)" resolve="runReadAction" />
                <node concept="1bVj0M" id="7K_WrSLqC_Y" role="37wK5m">
                  <node concept="3clFbS" id="7K_WrSLqC_Z" role="1bW5cS">
                    <node concept="3clFbF" id="7K_WrSLqCA0" role="3cqZAp">
                      <node concept="2OqwBi" id="7K_WrSLqCA1" role="3clFbG">
                        <node concept="37vLTw" id="7K_WrSLqEtC" role="2Oq$k0">
                          <ref role="3cqZAo" node="7K_WrSLqsbo" resolve="myMatcher" />
                        </node>
                        <node concept="liA8E" id="7K_WrSLqCAa" role="2OqNvi">
                          <ref role="37wK5l" node="7K_WrSLbdXi" resolve="diff" />
                          <node concept="37vLTw" id="7K_WrSLqMfN" role="37wK5m">
                            <ref role="3cqZAo" node="7K_WrSLqAVT" resolve="m1" />
                          </node>
                          <node concept="37vLTw" id="7K_WrSLqNrI" role="37wK5m">
                            <ref role="3cqZAo" node="7K_WrSLqAVV" resolve="m2" />
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
        <node concept="3clFbJ" id="7K_WrSLqCAb" role="3cqZAp">
          <node concept="3clFbS" id="7K_WrSLqCAc" role="3clFbx">
            <node concept="3cpWs6" id="7K_WrSLqCAd" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="7K_WrSLqCAe" role="3clFbw">
            <node concept="37vLTw" id="7K_WrSLqCAf" role="2Oq$k0">
              <ref role="3cqZAo" node="7K_WrSLqC_O" resolve="diff" />
            </node>
            <node concept="liA8E" id="7K_WrSLqCAg" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Collection.isEmpty()" resolve="isEmpty" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7K_WrSLqCAh" role="3cqZAp">
          <node concept="3cpWsn" id="7K_WrSLqCAi" role="3cpWs9">
            <property role="TrG5h" value="sb" />
            <node concept="3uibUv" id="7K_WrSLqCAj" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="7K_WrSLqCAk" role="33vP2m">
              <node concept="1pGfFk" id="7K_WrSLqCAl" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7K_WrSLqCAm" role="3cqZAp">
          <node concept="3clFbS" id="7K_WrSLqCAn" role="2LFqv$">
            <node concept="3clFbF" id="7K_WrSLqCAo" role="3cqZAp">
              <node concept="2OqwBi" id="7K_WrSLqCAp" role="3clFbG">
                <node concept="37vLTw" id="7K_WrSLqCAq" role="2Oq$k0">
                  <ref role="3cqZAo" node="7K_WrSLqCAi" resolve="sb" />
                </node>
                <node concept="liA8E" id="7K_WrSLqCAr" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="3K4zz7" id="7K_WrSLqY6e" role="37wK5m">
                    <node concept="2OqwBi" id="7K_WrSLr2c_" role="3K4E3e">
                      <node concept="1eOMI4" id="7K_WrSLr0Wd" role="2Oq$k0">
                        <node concept="10QFUN" id="7K_WrSLr0Wa" role="1eOMHV">
                          <node concept="3uibUv" id="7K_WrSLr1zt" role="10QFUM">
                            <ref role="3uigEE" to="y5e1:7MIYyntDZEK" resolve="NodeDifference" />
                          </node>
                          <node concept="37vLTw" id="7K_WrSLqYIi" role="10QFUP">
                            <ref role="3cqZAo" node="7K_WrSLqCAv" resolve="di" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="7K_WrSLr2Zy" role="2OqNvi">
                        <ref role="37wK5l" to="y5e1:39D1ywqUtCH" resolve="print" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7K_WrSLr4u_" role="3K4GZi">
                      <node concept="37vLTw" id="7K_WrSLr3C9" role="2Oq$k0">
                        <ref role="3cqZAo" node="7K_WrSLqCAv" resolve="di" />
                      </node>
                      <node concept="liA8E" id="7K_WrSLr5sn" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                      </node>
                    </node>
                    <node concept="2ZW3vV" id="7K_WrSLqVvr" role="3K4Cdx">
                      <node concept="3uibUv" id="7K_WrSLqXhI" role="2ZW6by">
                        <ref role="3uigEE" to="y5e1:7MIYyntDZEK" resolve="NodeDifference" />
                      </node>
                      <node concept="37vLTw" id="7K_WrSLqTzU" role="2ZW6bz">
                        <ref role="3cqZAo" node="7K_WrSLqCAv" resolve="di" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7K_WrSLqCAv" role="1Duv9x">
            <property role="TrG5h" value="di" />
            <node concept="3uibUv" id="7K_WrSLqCAw" role="1tU5fm">
              <ref role="3uigEE" to="y5e1:7MIYyntDZEE" resolve="DifferenceItem" />
            </node>
          </node>
          <node concept="37vLTw" id="7K_WrSLqCAx" role="1DdaDG">
            <ref role="3cqZAo" node="7K_WrSLqC_O" resolve="diff" />
          </node>
        </node>
        <node concept="3clFbF" id="7K_WrSLqCAy" role="3cqZAp">
          <node concept="2YIFZM" id="7K_WrSLqCAz" role="3clFbG">
            <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
            <ref role="37wK5l" to="rjhg:~Assert.fail(java.lang.String)" resolve="fail" />
            <node concept="3cpWs3" id="7K_WrSLqCA$" role="37wK5m">
              <node concept="2OqwBi" id="7K_WrSLqCA_" role="3uHU7w">
                <node concept="37vLTw" id="7K_WrSLqCAA" role="2Oq$k0">
                  <ref role="3cqZAo" node="7K_WrSLqCAi" resolve="sb" />
                </node>
                <node concept="liA8E" id="7K_WrSLqCAB" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
                </node>
              </node>
              <node concept="Xl_RD" id="7K_WrSLqCAC" role="3uHU7B">
                <property role="Xl_RC" value="Transformation output model doesn't match reference one:\n" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7K_WrSLqz1B" role="1B3o_S" />
      <node concept="3cqZAl" id="7K_WrSLqAvE" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7K_WrSLqr2L" role="jymVt" />
    <node concept="3Tm1VV" id="7K_WrSLqqWr" role="1B3o_S" />
  </node>
  <node concept="Qs71p" id="82DhF4JbP">
    <property role="TrG5h" value="GeneratorTestDiscoveryParticipants" />
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
    <node concept="2tJIrI" id="82DhF8rk1" role="jymVt" />
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
    <node concept="2tJIrI" id="82DhFtem0" role="jymVt" />
    <node concept="3clFb_" id="82DhFtfqM" role="jymVt">
      <property role="TrG5h" value="sourceConcepts" />
      <node concept="3Tm1VV" id="82DhFtfqO" role="1B3o_S" />
      <node concept="3clFbS" id="82DhFtfqQ" role="3clF47">
        <node concept="3clFbF" id="82DhFu_rP" role="3cqZAp">
          <node concept="2YIFZM" id="82DhFu_Cc" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="37vLTw" id="82DhFu_Xr" role="37wK5m">
              <ref role="3cqZAo" node="MY2kIk2OIY" resolve="myWrappedConcept" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="82DhFtfqR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3uibUv" id="82DhFufJT" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3bZ5Sz" id="82DhFuq47" role="11_B2D" />
      </node>
    </node>
    <node concept="3Tm1VV" id="82DhF4JbQ" role="1B3o_S" />
    <node concept="3uibUv" id="82DhF4Nn3" role="EKbjA">
      <ref role="3uigEE" to="4u8o:2BZ01qXB6N9" resolve="TestDiscoveryParticipant" />
    </node>
    <node concept="QsSxf" id="1MtN3Opm8hT" role="Qtgdg">
      <property role="TrG5h" value="GeneratorTest" />
      <ref role="37wK5l" node="1KnTQt4Oiuk" resolve="GeneratorTestDiscoveryParticipants" />
      <node concept="35c_gC" id="1MtN3OpmpPV" role="37wK5m">
        <ref role="35c_gD" to="lur:uLQNrGW9aY" resolve="GeneratorTest" />
      </node>
      <node concept="3clFbT" id="1MtN3OpmrfG" role="37wK5m">
        <property role="3clFbU" value="true" />
      </node>
      <node concept="3clFb_" id="1MtN3Opmo_I" role="2HKRsH">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="discover" />
        <node concept="3Tm1VV" id="1MtN3Opmo_J" role="1B3o_S" />
        <node concept="37vLTG" id="1MtN3Opmo_L" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="1MtN3Opmo_M" role="1tU5fm" />
          <node concept="2AHcQZ" id="1MtN3Opmo_N" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="2BZ01qXL0CM" role="3clF46">
          <property role="TrG5h" value="request" />
          <node concept="3uibUv" id="2BZ01qXL1n6" role="1tU5fm">
            <ref role="3uigEE" to="4u8o:2BZ01qXB7eE" resolve="TestDiscoveryRequest" />
          </node>
        </node>
        <node concept="3uibUv" id="1MtN3Opmo_O" role="3clF45">
          <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
          <node concept="3uibUv" id="2BZ01qXKY05" role="11_B2D">
            <ref role="3uigEE" to="4u8o:X4wbLw1YY5" resolve="TestDescriptor" />
          </node>
        </node>
        <node concept="2AHcQZ" id="1MtN3Opmo_P" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3clFbS" id="1MtN3Opmo_Q" role="3clF47">
          <node concept="3clFbJ" id="2BZ01qXL4bH" role="3cqZAp">
            <node concept="3clFbS" id="2BZ01qXL4bJ" role="3clFbx">
              <node concept="3cpWs6" id="2BZ01qXL7OI" role="3cqZAp">
                <node concept="2YIFZM" id="2BZ01qXLcbK" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Optional.empty()" resolve="empty" />
                  <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="2BZ01qXL4VN" role="3clFbw">
              <node concept="2OqwBi" id="2BZ01qXL5hl" role="3fr31v">
                <node concept="37vLTw" id="2BZ01qXL55r" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MtN3Opmo_L" resolve="node" />
                </node>
                <node concept="1mIQ4w" id="2BZ01qXL6d3" role="2OqNvi">
                  <node concept="chp4Y" id="2BZ01qXL6Td" role="cj9EA">
                    <ref role="cht4Q" to="lur:uLQNrGW9aY" resolve="GeneratorTest" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2BZ01qY7Xt5" role="3cqZAp">
            <node concept="3cpWsn" id="2BZ01qY7Xt6" role="3cpWs9">
              <property role="TrG5h" value="testContainer" />
              <node concept="3uibUv" id="2BZ01qY7S3A" role="1tU5fm">
                <ref role="3uigEE" to="4u8o:X4wbLw1YY5" resolve="TestDescriptor" />
              </node>
              <node concept="2OqwBi" id="2BZ01qY7Xt7" role="33vP2m">
                <property role="hSjvv" value="true" />
                <node concept="2OqwBi" id="2BZ01qYuOd1" role="2Oq$k0">
                  <property role="hSjvv" value="true" />
                  <node concept="2OqwBi" id="2BZ01qY7Xt8" role="2Oq$k0">
                    <property role="hSjvv" value="true" />
                    <node concept="2ShNRf" id="4chG8iIjV8W" role="2Oq$k0">
                      <node concept="1pGfFk" id="4chG8iIk1Ap" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" to="4u8o:2BZ01qXTl8z" resolve="TestDescriptorBuilder" />
                        <node concept="2OqwBi" id="4chG8iIeUbH" role="37wK5m">
                          <node concept="37vLTw" id="4chG8iIeSUf" role="2Oq$k0">
                            <ref role="3cqZAo" node="2BZ01qXL0CM" resolve="request" />
                          </node>
                          <node concept="liA8E" id="4chG8iIeVBh" role="2OqNvi">
                            <ref role="37wK5l" to="4u8o:2BZ01qXBaRZ" resolve="peekContainer" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="2BZ01qY7Xtc" role="2OqNvi">
                      <ref role="37wK5l" to="4u8o:2BZ01qXT2h1" resolve="newTestContainer" />
                      <node concept="2OqwBi" id="2BZ01qY7Xtd" role="37wK5m">
                        <node concept="1PxgMI" id="2BZ01qY7Xte" role="2Oq$k0">
                          <node concept="chp4Y" id="2BZ01qY7Xtf" role="3oSUPX">
                            <ref role="cht4Q" to="lur:uLQNrGW9aY" resolve="GeneratorTest" />
                          </node>
                          <node concept="37vLTw" id="2BZ01qY7Xtg" role="1m5AlR">
                            <ref role="3cqZAo" node="1MtN3Opmo_L" resolve="node" />
                          </node>
                        </node>
                        <node concept="3zqWPK" id="70OdufORcd7" role="2OqNvi">
                          <ref role="37wK5l" to="tpcu:hEwIO9y" resolve="getFqName" />
                        </node>
                      </node>
                      <node concept="2YIFZM" id="2BZ01qY7Xti" role="37wK5m">
                        <ref role="37wK5l" to="4u8o:2v6DJPJtmBh" resolve="of" />
                        <ref role="1Pybhc" to="4u8o:2v6DJPJt3SN" resolve="SNodeTestSource" />
                        <node concept="37vLTw" id="2BZ01qY7Xtj" role="37wK5m">
                          <ref role="3cqZAo" node="1MtN3Opmo_L" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="2BZ01qYuXnh" role="2OqNvi">
                    <ref role="37wK5l" to="4u8o:2BZ01qYcvoQ" resolve="withProperty" />
                    <node concept="10M0yZ" id="4chG8iIbTd$" role="37wK5m">
                      <ref role="3cqZAo" to="4u8o:2v6DJPJvGun" resolve="REQUIRES_MPS_PLATFORM" />
                      <ref role="1PxDUh" to="4u8o:2v6DJPJtQA1" resolve="TestProperties" />
                    </node>
                    <node concept="3clFbT" id="2BZ01qYvGYy" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2BZ01qY7Xtk" role="2OqNvi">
                  <ref role="37wK5l" to="4u8o:2BZ01qXSZVl" resolve="add" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2BZ01qY8BQv" role="3cqZAp">
            <node concept="2OqwBi" id="2BZ01qY8L0V" role="3clFbG">
              <node concept="2OqwBi" id="2BZ01qY8BQx" role="2Oq$k0">
                <node concept="1PxgMI" id="2BZ01qY9ecQ" role="2Oq$k0">
                  <node concept="chp4Y" id="2BZ01qY9kKz" role="3oSUPX">
                    <ref role="cht4Q" to="lur:uLQNrGW9aY" resolve="GeneratorTest" />
                  </node>
                  <node concept="37vLTw" id="2BZ01qY8BQy" role="1m5AlR">
                    <ref role="3cqZAo" node="1MtN3Opmo_L" resolve="node" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="2BZ01qY8BQz" role="2OqNvi">
                  <ref role="3TtcxE" to="lur:uLQNrGWd1B" resolve="tests" />
                </node>
              </node>
              <node concept="2es0OD" id="4chG8iI084c" role="2OqNvi">
                <node concept="1bVj0M" id="4chG8iI084e" role="23t8la">
                  <node concept="3clFbS" id="4chG8iI084f" role="1bW5cS">
                    <node concept="3SKdUt" id="4chG8iImfHR" role="3cqZAp">
                      <node concept="1PaTwC" id="4chG8iImfHS" role="1aUNEU">
                        <node concept="3oM_SD" id="4chG8iImnzQ" role="1PaTwD">
                          <property role="3oM_SC" value="*the" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImgY_" role="1PaTwD">
                          <property role="3oM_SC" value="following" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImi3H" role="1PaTwD">
                          <property role="3oM_SC" value="text" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImjfe" role="1PaTwD">
                          <property role="3oM_SC" value="was" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImoD2" role="1PaTwD">
                          <property role="3oM_SC" value="copied" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImtEy" role="1PaTwD">
                          <property role="3oM_SC" value="from" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImvyR" role="1PaTwD">
                          <property role="3oM_SC" value="GeneratorTestWrapper" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImBVt" role="1PaTwD">
                          <property role="3oM_SC" value="verbatim*" />
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="4chG8iImcKi" role="3cqZAp">
                      <node concept="1PaTwC" id="4chG8iImcKj" role="1aUNEU">
                        <node concept="3oM_SD" id="4chG8iImcKk" role="1PaTwD">
                          <property role="3oM_SC" value="FIXME" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKl" role="1PaTwD">
                          <property role="3oM_SC" value="this" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKm" role="1PaTwD">
                          <property role="3oM_SC" value="is" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKn" role="1PaTwD">
                          <property role="3oM_SC" value="a" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKo" role="1PaTwD">
                          <property role="3oM_SC" value="hack." />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKp" role="1PaTwD">
                          <property role="3oM_SC" value="I" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKq" role="1PaTwD">
                          <property role="3oM_SC" value="don't" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKr" role="1PaTwD">
                          <property role="3oM_SC" value="want" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKs" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKt" role="1PaTwD">
                          <property role="3oM_SC" value="introduce" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKu" role="1PaTwD">
                          <property role="3oM_SC" value="getMethodName" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKv" role="1PaTwD">
                          <property role="3oM_SC" value="into" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKw" role="1PaTwD">
                          <property role="3oM_SC" value="TestAssertion," />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKx" role="1PaTwD">
                          <property role="3oM_SC" value="and" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKy" role="1PaTwD">
                          <property role="3oM_SC" value="the" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKz" role="1PaTwD">
                          <property role="3oM_SC" value="only" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcK$" role="1PaTwD">
                          <property role="3oM_SC" value="information" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcK_" role="1PaTwD">
                          <property role="3oM_SC" value="passed" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKA" role="1PaTwD">
                          <property role="3oM_SC" value="during" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKB" role="1PaTwD">
                          <property role="3oM_SC" value="test" />
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="4chG8iImcKC" role="3cqZAp">
                      <node concept="1PaTwC" id="4chG8iImcKD" role="1aUNEU">
                        <node concept="3oM_SD" id="4chG8iImcKE" role="1PaTwD">
                          <property role="3oM_SC" value="execution" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKF" role="1PaTwD">
                          <property role="3oM_SC" value="is" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKG" role="1PaTwD">
                          <property role="3oM_SC" value="method" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKH" role="1PaTwD">
                          <property role="3oM_SC" value="name" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKI" role="1PaTwD">
                          <property role="3oM_SC" value="(JUnit's" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKJ" role="1PaTwD">
                          <property role="3oM_SC" value="Request/Description)," />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKK" role="1PaTwD">
                          <property role="3oM_SC" value="therefore" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKL" role="1PaTwD">
                          <property role="3oM_SC" value="I'm" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKM" role="1PaTwD">
                          <property role="3oM_SC" value="forced" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKN" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKO" role="1PaTwD">
                          <property role="3oM_SC" value="use" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKP" role="1PaTwD">
                          <property role="3oM_SC" value="method" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKQ" role="1PaTwD">
                          <property role="3oM_SC" value="name" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKR" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKS" role="1PaTwD">
                          <property role="3oM_SC" value="match" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKT" role="1PaTwD">
                          <property role="3oM_SC" value="ITestNodeWrappers" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKU" role="1PaTwD">
                          <property role="3oM_SC" value="in" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKV" role="1PaTwD">
                          <property role="3oM_SC" value="UI." />
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="4chG8iImcKW" role="3cqZAp">
                      <node concept="1PaTwC" id="4chG8iImcKX" role="1aUNEU">
                        <node concept="3oM_SD" id="4chG8iImcKY" role="1PaTwD">
                          <property role="3oM_SC" value="Perhaps," />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcKZ" role="1PaTwD">
                          <property role="3oM_SC" value="with" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcL0" role="1PaTwD">
                          <property role="3oM_SC" value="JUnit5" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcL1" role="1PaTwD">
                          <property role="3oM_SC" value="there's" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcL2" role="1PaTwD">
                          <property role="3oM_SC" value="a" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcL3" role="1PaTwD">
                          <property role="3oM_SC" value="way" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcL4" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcL5" role="1PaTwD">
                          <property role="3oM_SC" value="pass" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcL6" role="1PaTwD">
                          <property role="3oM_SC" value="additional" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcL7" role="1PaTwD">
                          <property role="3oM_SC" value="identification" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcL8" role="1PaTwD">
                          <property role="3oM_SC" value="of" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcL9" role="1PaTwD">
                          <property role="3oM_SC" value="a" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcLa" role="1PaTwD">
                          <property role="3oM_SC" value="test" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcLb" role="1PaTwD">
                          <property role="3oM_SC" value="so" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcLc" role="1PaTwD">
                          <property role="3oM_SC" value="that" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcLd" role="1PaTwD">
                          <property role="3oM_SC" value="we" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcLe" role="1PaTwD">
                          <property role="3oM_SC" value="are" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcLf" role="1PaTwD">
                          <property role="3oM_SC" value="not" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcLg" role="1PaTwD">
                          <property role="3oM_SC" value="bound" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcLh" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcLi" role="1PaTwD">
                          <property role="3oM_SC" value="generated" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcLj" role="1PaTwD">
                          <property role="3oM_SC" value="method" />
                        </node>
                        <node concept="3oM_SD" id="4chG8iImcLk" role="1PaTwD">
                          <property role="3oM_SC" value="names." />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="4chG8iI084g" role="3cqZAp">
                      <node concept="2OqwBi" id="4chG8iI084h" role="3clFbG">
                        <property role="hSjvv" value="true" />
                        <node concept="2OqwBi" id="4chG8iI084i" role="2Oq$k0">
                          <property role="hSjvv" value="true" />
                          <node concept="2ShNRf" id="4chG8iIgZft" role="2Oq$k0">
                            <node concept="1pGfFk" id="4chG8iIhaDq" role="2ShVmc">
                              <property role="373rjd" value="true" />
                              <ref role="37wK5l" to="4u8o:2BZ01qXTl8z" resolve="TestDescriptorBuilder" />
                              <node concept="37vLTw" id="4chG8iIhdbM" role="37wK5m">
                                <ref role="3cqZAo" node="2BZ01qY7Xt6" resolve="testContainer" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="4chG8iI084n" role="2OqNvi">
                            <ref role="37wK5l" to="4u8o:2BZ01qXSZma" resolve="newTest" />
                            <node concept="3cpWs3" id="4chG8iI084o" role="37wK5m">
                              <node concept="1eOMI4" id="4chG8iI084p" role="3uHU7w">
                                <node concept="2OqwBi" id="4chG8iI084q" role="1eOMHV">
                                  <node concept="37vLTw" id="4chG8iI084r" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5W7E4fV0X$2" resolve="it" />
                                  </node>
                                  <node concept="2bSWHS" id="4chG8iI084s" role="2OqNvi" />
                                </node>
                              </node>
                              <node concept="Xl_RD" id="4chG8iI084t" role="3uHU7B">
                                <property role="Xl_RC" value="testTransformAndMatch" />
                              </node>
                            </node>
                            <node concept="2YIFZM" id="4chG8iI084u" role="37wK5m">
                              <ref role="37wK5l" to="4u8o:2v6DJPJtmBh" resolve="of" />
                              <ref role="1Pybhc" to="4u8o:2v6DJPJt3SN" resolve="SNodeTestSource" />
                              <node concept="37vLTw" id="4chG8iI084v" role="37wK5m">
                                <ref role="3cqZAo" node="5W7E4fV0X$2" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="4chG8iI084w" role="2OqNvi">
                          <ref role="37wK5l" to="4u8o:2BZ01qXSZVl" resolve="add" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="4chG8iI084x" role="3cqZAp" />
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0X$2" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0X$3" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2BZ01qY8x08" role="3cqZAp" />
          <node concept="3cpWs6" id="1MtN3Opmrji" role="3cqZAp">
            <node concept="2YIFZM" id="2BZ01qXLm5f" role="3cqZAk">
              <ref role="37wK5l" to="33ny:~Optional.of(java.lang.Object)" resolve="of" />
              <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
              <node concept="37vLTw" id="2BZ01qY7Xtl" role="37wK5m">
                <ref role="3cqZAo" node="2BZ01qY7Xt6" resolve="testContainer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1MtN3Opmo_R" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="VKgNXr8gSj">
    <property role="TrG5h" value="ModuleActivator" />
    <node concept="2tJIrI" id="VKgNXr8hYF" role="jymVt" />
    <node concept="3clFbW" id="VKgNXrc7CW" role="jymVt">
      <node concept="37vLTG" id="273sq7WoW0k" role="3clF46">
        <property role="TrG5h" value="platform" />
        <node concept="3uibUv" id="273sq7WoW0j" role="1tU5fm">
          <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
        </node>
      </node>
      <node concept="3cqZAl" id="VKgNXrc7CY" role="3clF45" />
      <node concept="3Tm1VV" id="VKgNXrc7CZ" role="1B3o_S" />
      <node concept="3clFbS" id="VKgNXrc7D0" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="VKgNXr8gSk" role="1B3o_S" />
    <node concept="3uibUv" id="VKgNXr8hYi" role="EKbjA">
      <ref role="3uigEE" to="ze1i:~ModuleRuntime$Activator" resolve="ModuleRuntime.Activator" />
    </node>
    <node concept="2tJIrI" id="2xHx_dlwo92" role="jymVt" />
    <node concept="3clFb_" id="2xHx_dlwoe_" role="jymVt">
      <property role="TrG5h" value="contribute" />
      <node concept="3Tm1VV" id="2xHx_dlwoeB" role="1B3o_S" />
      <node concept="3cqZAl" id="2xHx_dlwoeD" role="3clF45" />
      <node concept="37vLTG" id="2xHx_dlwoeE" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <node concept="3uibUv" id="2xHx_dlwoeF" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ModuleRuntime$ActivatorContext" resolve="ModuleRuntime.ActivatorContext" />
        </node>
        <node concept="2AHcQZ" id="2xHx_dlwoeG" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2xHx_dlwoeH" role="3clF47">
        <node concept="3clFbF" id="2xHx_dlwp1n" role="3cqZAp">
          <node concept="2OqwBi" id="2xHx_dlwp9_" role="3clFbG">
            <node concept="37vLTw" id="2xHx_dlwp1m" role="2Oq$k0">
              <ref role="3cqZAo" node="2xHx_dlwoeE" resolve="ctx" />
            </node>
            <node concept="liA8E" id="2xHx_dlwpoK" role="2OqNvi">
              <ref role="37wK5l" to="ze1i:~ModuleRuntime$ActivatorContext.extension(java.lang.Class,jetbrains.mps.smodel.runtime.ModuleRuntime$Extension)" resolve="extension" />
              <node concept="3VsKOn" id="2xHx_dlwqHt" role="37wK5m">
                <ref role="3VsUkX" to="4u8o:2BZ01qXB6N9" resolve="TestDiscoveryParticipant" />
              </node>
              <node concept="2YIFZM" id="N$lq0B09Y2" role="37wK5m">
                <ref role="37wK5l" to="ze1i:~ModuleRuntime$Extension.of(java.lang.Object,java.lang.String...)" resolve="of" />
                <ref role="1Pybhc" to="ze1i:~ModuleRuntime$Extension" resolve="ModuleRuntime.Extension" />
                <node concept="Rm8GO" id="N$lq0B09Y3" role="37wK5m">
                  <ref role="Rm8GQ" node="1MtN3Opm8hT" resolve="GeneratorTest" />
                  <ref role="1Px2BO" node="82DhF4JbP" resolve="GeneratorTestDiscoveryParticipants" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2xHx_dlwoeI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

