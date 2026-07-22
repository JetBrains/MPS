<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:263b648a-3e00-426c-ab4b-ba47ccd788c9(jetbrains.mps.baselanguage.unitTest.execution.launcher)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="acfc188d-d5d6-4598-b370-6f4a983f05b2" name="jetbrains.mps.baseLanguage.methodReferences" version="0" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="mmaq" ref="f647e48e-4568-4f4c-b48a-1546492c6a2e/java:org.jdom(org.jdom/)" />
    <import index="asz6" ref="r:067fd2c9-d009-4506-91db-a69992d65964(jetbrains.mps.tool.common)" />
    <import index="79ha" ref="r:2876f1ee-0b45-4db5-8c09-0682cdee5c67(jetbrains.mps.tool.environment)" />
    <import index="cky9" ref="r:1d4e7c57-c144-4228-9dec-8180ddf9f0ee(jetbrains.mps.tool.environment)" />
    <import index="cvlm" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.runner(JUnit/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="52vl" ref="r:2706a815-df9c-4792-bb89-2a2c3cd1dc7a(jetbrains.mps.tool.run)" />
    <import index="t6h5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.reflect(JDK/)" />
    <import index="i5cy" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent.atomic(JDK/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="7cms" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.runners.model(JUnit/)" />
    <import index="456n" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.internal.builders(JUnit/)" />
    <import index="k76n" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.runner.notification(JUnit/)" />
    <import index="lxc5" ref="r:b25f8540-4e18-427d-a8ac-60f947a3fbc1(jetbrains.mps.baselanguage.unitTest.execution)" />
    <import index="n4ib" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.platform.engine(JUnit/)" />
    <import index="bws1" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.platform.launcher(JUnit/)" />
    <import index="z4cc" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.platform.launcher.core(JUnit/)" />
    <import index="s3rp" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.platform.engine.discovery(JUnit/)" />
    <import index="9pnt" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.platform.engine.support.descriptor(JUnit/)" />
    <import index="wwqx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.logging(MPS.Core/)" />
    <import index="v9gs" ref="r:a139668a-5a0e-46e2-a802-102190e497e5(jetbrains.mps.core.tool.environment.util)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="2323553266850475941" name="jetbrains.mps.baseLanguage.structure.IHasModifiers" flags="ngI" index="2frcj7">
        <child id="2323553266850475953" name="modifiers" index="2frcjj" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1239709250944" name="jetbrains.mps.baseLanguage.structure.PrefixIncrementExpression" flags="nn" index="2$rviw" />
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
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="4678410916365116210" name="jetbrains.mps.baseLanguage.structure.DefaultModifier" flags="ng" index="2JFqV2" />
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
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
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
      <concept id="1070534604311" name="jetbrains.mps.baseLanguage.structure.ByteType" flags="in" index="10PrrI" />
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
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1830039279190439966" name="jetbrains.mps.baseLanguage.structure.AdditionalForLoopVariable" flags="ng" index="1gjucp" />
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
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
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="8276990574909231788" name="jetbrains.mps.baseLanguage.structure.FinallyClause" flags="ng" index="1wplmZ">
        <child id="8276990574909234106" name="finallyBody" index="1wplMD" />
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
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1032195626824963089" name="additionalVar" index="_NwL_" />
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1170075670744" name="jetbrains.mps.baseLanguage.structure.SynchronizedStatement" flags="nn" index="1HWtB8">
        <child id="1170075728144" name="expression" index="1HWFw0" />
        <child id="1170075736412" name="block" index="1HWHxc" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367509" name="finallyClause" index="1zxBo6" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
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
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
      </concept>
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
      <concept id="5858074156537516430" name="jetbrains.mps.baseLanguage.javadoc.structure.ReturnBlockDocTag" flags="ng" index="x79VA">
        <property id="5858074156537516431" name="text" index="x79VB" />
      </concept>
      <concept id="6832197706140896242" name="jetbrains.mps.baseLanguage.javadoc.structure.FieldDocComment" flags="ng" index="z59LJ" />
      <concept id="6971016359099800069" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldSingleCommentLine" flags="ngI" index="2JaDLO">
        <child id="6971016359099801474" name="commentBody" index="2JaDBN" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="2217234381367530212" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocReference" flags="ng" index="VXe08">
        <reference id="2217234381367530213" name="classifier" index="VXe09" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
      <concept id="5085607816306582224" name="jetbrains.mps.baseLanguage.javadoc.structure.InlineTagCommentTextElement" flags="ng" index="1Vtdud">
        <child id="5085607816306582225" name="tag" index="1Vtduc" />
      </concept>
      <concept id="5085607816306633585" name="jetbrains.mps.baseLanguage.javadoc.structure.CodeInlineDocTagTE" flags="ng" index="1VuTSG" />
      <concept id="5085607816306647746" name="jetbrains.mps.baseLanguage.javadoc.structure.LinkInlineDocTagTE" flags="ng" index="1VuXuv">
        <child id="5085607816306647747" name="reference" index="1VuXuu" />
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
      <concept id="1240824834947" name="jetbrains.mps.baseLanguage.collections.structure.ValueAccessOperation" flags="nn" index="3AV6Ez" />
      <concept id="1240825616499" name="jetbrains.mps.baseLanguage.collections.structure.KeyAccessOperation" flags="nn" index="3AY5_j" />
    </language>
  </registry>
  <node concept="3HP615" id="5Ti9jVZ8rCq">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="TestExecutor" />
    <node concept="3clFb_" id="5Ti9jVZ8rCr" role="jymVt">
      <property role="TrG5h" value="init" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="5Ti9jVZ8rCs" role="1B3o_S" />
      <node concept="3clFbS" id="5Ti9jVZ8rCt" role="3clF47" />
      <node concept="3cqZAl" id="5Ti9jVZ8rCu" role="3clF45" />
      <node concept="P$JXv" id="2SyXq5NjWrM" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsBHY" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBHZ" role="1PaTwD">
            <property role="3oM_SC" value="called" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBI0" role="1PaTwD">
            <property role="3oM_SC" value="before" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBI1" role="1PaTwD">
            <property role="3oM_SC" value="#execute" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2SyXq5NjWwk" role="jymVt" />
    <node concept="3clFb_" id="5Ti9jVZ8rCv" role="jymVt">
      <property role="TrG5h" value="execute" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="5Ti9jVZ8rCw" role="1B3o_S" />
      <node concept="3clFbS" id="5Ti9jVZ8rCx" role="3clF47" />
      <node concept="3cqZAl" id="5Ti9jVZ8rCy" role="3clF45" />
      <node concept="P$JXv" id="2SyXq5NjWsN" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsBI2" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBI3" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBI4" role="1PaTwD">
            <property role="3oM_SC" value="actual" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBI5" role="1PaTwD">
            <property role="3oM_SC" value="test" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBI6" role="1PaTwD">
            <property role="3oM_SC" value="invocation" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBI7" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBI8" role="1PaTwD">
            <property role="3oM_SC" value="located" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBI9" role="1PaTwD">
            <property role="3oM_SC" value="here" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2SyXq5NjWve" role="jymVt" />
    <node concept="3clFb_" id="5Ti9jVZ8rCB" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="5Ti9jVZ8rCC" role="1B3o_S" />
      <node concept="3clFbS" id="5Ti9jVZ8rCD" role="3clF47" />
      <node concept="3cqZAl" id="5Ti9jVZ8rCE" role="3clF45" />
      <node concept="P$JXv" id="2SyXq5NjWu7" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsBIa" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBIb" role="1PaTwD">
            <property role="3oM_SC" value="called" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBIc" role="1PaTwD">
            <property role="3oM_SC" value="after" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBId" role="1PaTwD">
            <property role="3oM_SC" value="execute" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4iq05Mkzfa4" role="jymVt" />
    <node concept="3clFb_" id="4iq05Mkzhkf" role="jymVt">
      <property role="TrG5h" value="getFailureCount" />
      <node concept="10Oyi0" id="4iq05MkziqJ" role="3clF45" />
      <node concept="3Tm1VV" id="4iq05Mkzhki" role="1B3o_S" />
      <node concept="3clFbS" id="4iq05Mkzhkj" role="3clF47" />
      <node concept="P$JXv" id="4iq05Mkzkon" role="lGtFl">
        <node concept="x79VA" id="4iq05Mkzkoq" role="3nqlJM">
          <property role="x79VB" value="" />
          <node concept="1PaTwC" id="1E1X3WHsBIg" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsBIh" role="1PaTwD">
              <property role="3oM_SC" value="-1" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBIi" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBIj" role="1PaTwD">
              <property role="3oM_SC" value="tests" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBIk" role="1PaTwD">
              <property role="3oM_SC" value="were" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBIl" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBIm" role="1PaTwD">
              <property role="3oM_SC" value="executed," />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBIn" role="1PaTwD">
              <property role="3oM_SC" value="or" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBIo" role="1PaTwD">
              <property role="3oM_SC" value="number" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBIp" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBIq" role="1PaTwD">
              <property role="3oM_SC" value="failed" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBIr" role="1PaTwD">
              <property role="3oM_SC" value="tests" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBIs" role="1PaTwD">
              <property role="3oM_SC" value="otherwise." />
            </node>
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsBIe" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBIf" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4iq05MkzRh7" role="jymVt" />
    <node concept="3clFb_" id="4iq05MkzTIO" role="jymVt">
      <property role="TrG5h" value="getExecutionError" />
      <node concept="3uibUv" id="4iq05MkzUBo" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
      </node>
      <node concept="3Tm1VV" id="4iq05MkzTIR" role="1B3o_S" />
      <node concept="3clFbS" id="4iq05MkzTIS" role="3clF47" />
      <node concept="P$JXv" id="4iq05MkzVvq" role="lGtFl">
        <node concept="x79VA" id="4iq05MkzVvt" role="3nqlJM">
          <property role="x79VB" value="" />
          <node concept="1PaTwC" id="1E1X3WHsBIv" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsBIw" role="1PaTwD">
              <property role="3oM_SC" value="on-null" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBIx" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBIy" role="1PaTwD">
              <property role="3oM_SC" value="there's" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBIz" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBI$" role="1PaTwD">
              <property role="3oM_SC" value="unexpected" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBI_" role="1PaTwD">
              <property role="3oM_SC" value="exception" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBIA" role="1PaTwD">
              <property role="3oM_SC" value="during" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBIB" role="1PaTwD">
              <property role="3oM_SC" value="JUnit" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsBIC" role="1PaTwD">
              <property role="3oM_SC" value="run" />
            </node>
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsBIt" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBIu" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4iq05Mk$dsO" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5Ti9jVZ8rCF" role="1B3o_S" />
    <node concept="3UR2Jj" id="2SyXq5NjQcP" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsBCi" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBCj" role="1PaTwD">
          <property role="3oM_SC" value="Responsible" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCk" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCl" role="1PaTwD">
          <property role="3oM_SC" value="test" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCm" role="1PaTwD">
          <property role="3oM_SC" value="execution" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCn" role="1PaTwD">
          <property role="3oM_SC" value="on" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCo" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCp" role="1PaTwD">
          <property role="3oM_SC" value="test" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCq" role="1PaTwD">
          <property role="3oM_SC" value="code" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCr" role="1PaTwD">
          <property role="3oM_SC" value="running" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCs" role="1PaTwD">
          <property role="3oM_SC" value="side" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBCt" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBCu" role="1PaTwD">
          <property role="3oM_SC" value="SO" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCv" role="1PaTwD">
          <property role="3oM_SC" value="in" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCw" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCx" role="1PaTwD">
          <property role="3oM_SC" value="case" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCy" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCz" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBC$" role="1PaTwD">
          <property role="3oM_SC" value="separate" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBC_" role="1PaTwD">
          <property role="3oM_SC" value="process" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCA" role="1PaTwD">
          <property role="3oM_SC" value="test" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCB" role="1PaTwD">
          <property role="3oM_SC" value="execution" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCC" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCD" role="1PaTwD">
          <property role="3oM_SC" value="TestExecutor" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBCE" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBCF" role="1PaTwD">
          <property role="3oM_SC" value="instance" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCG" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCH" role="1PaTwD">
          <property role="3oM_SC" value="invoked" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCI" role="1PaTwD">
          <property role="3oM_SC" value="in" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCJ" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCK" role="1PaTwD">
          <property role="3oM_SC" value="separate" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCL" role="1PaTwD">
          <property role="3oM_SC" value="process" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="56tRMpP_bxe">
    <property role="TrG5h" value="DefaultTestExecutor" />
    <node concept="Wx3nA" id="6HElkBZJ3Lo" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="EXIT_CODE_FOR_EXCEPTION" />
      <property role="3TUv4t" value="true" />
      <node concept="10Oyi0" id="6HElkBZJ3KK" role="1tU5fm" />
      <node concept="3cmrfG" id="6HElkBZJ4hV" role="33vP2m">
        <property role="3cmrfH" value="-12345" />
      </node>
      <node concept="3Tm1VV" id="4br3RNOPXdR" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="56tRMpP_bxv" role="1B3o_S" />
    <node concept="2tJIrI" id="4iq05MkDX90" role="jymVt" />
    <node concept="3clFbW" id="56tRMpP_bxw" role="jymVt">
      <node concept="3cqZAl" id="56tRMpP_bxx" role="3clF45" />
      <node concept="3Tm1VV" id="56tRMpP_bxy" role="1B3o_S" />
      <node concept="3clFbS" id="56tRMpP_bxz" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="1K136DJAEWi" role="jymVt" />
    <node concept="2YIFZL" id="56tRMpP_bxf" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="3cqZAl" id="56tRMpP_bxg" role="3clF45" />
      <node concept="3Tm1VV" id="56tRMpP_bxh" role="1B3o_S" />
      <node concept="3clFbS" id="56tRMpP_bxi" role="3clF47">
        <node concept="3SKdUt" id="7rIOKY4lBvq" role="3cqZAp">
          <node concept="1PaTwC" id="7rIOKY4lBvr" role="1aUNEU">
            <node concept="3oM_SD" id="7rIOKY4lBJU" role="1PaTwD">
              <property role="3oM_SC" value="FWIW," />
            </node>
            <node concept="3oM_SD" id="4a2eZHNPdu1" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="4a2eZHNPdzT" role="1PaTwD">
              <property role="3oM_SC" value="class" />
            </node>
            <node concept="3oM_SD" id="4a2eZHNPdDY" role="1PaTwD">
              <property role="3oM_SC" value="lives" />
            </node>
            <node concept="3oM_SD" id="4a2eZHNPdHf" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="4a2eZHNPdKt" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="4a2eZHNPdN6" role="1PaTwD">
              <property role="3oM_SC" value="non-MPS" />
            </node>
            <node concept="3oM_SD" id="4a2eZHNPdUJ" role="1PaTwD">
              <property role="3oM_SC" value="managed" />
            </node>
            <node concept="3oM_SD" id="4a2eZHNPdZW" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="4a2eZHNPe4v" role="1PaTwD">
              <property role="3oM_SC" value="(&quot;provided&quot;" />
            </node>
            <node concept="3oM_SD" id="4a2eZHNPeco" role="1PaTwD">
              <property role="3oM_SC" value="classes)," />
            </node>
            <node concept="3oM_SD" id="4a2eZHNPeiP" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="4a2eZHNPelJ" role="1PaTwD">
              <property role="3oM_SC" value="depends" />
            </node>
            <node concept="3oM_SD" id="4a2eZHNPeqP" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="4a2eZHNPesF" role="1PaTwD">
              <property role="3oM_SC" value="another" />
            </node>
            <node concept="3oM_SD" id="4a2eZHNPevG" role="1PaTwD">
              <property role="3oM_SC" value="non-MPS-managed" />
            </node>
            <node concept="3oM_SD" id="4a2eZHNPeAH" role="1PaTwD">
              <property role="3oM_SC" value="modules" />
            </node>
            <node concept="3oM_SD" id="4a2eZHNPeFN" role="1PaTwD">
              <property role="3oM_SC" value="(e.g." />
            </node>
            <node concept="3oM_SD" id="4a2eZHNPfC5" role="1PaTwD">
              <property role="3oM_SC" value="org.junit.junit5)." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="35_wH_FvEVe" role="3cqZAp">
          <node concept="1PaTwC" id="35_wH_FvEVf" role="1aUNEU">
            <node concept="3oM_SD" id="35_wH_FvEZ$" role="1PaTwD">
              <property role="3oM_SC" value=" " />
            </node>
            <node concept="3oM_SD" id="35_wH_FvF01" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvF0w" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvF0$" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvF0D" role="1PaTwD">
              <property role="3oM_SC" value="This" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvF2W" role="1PaTwD">
              <property role="3oM_SC" value="class" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvF5g" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvF6e" role="1PaTwD">
              <property role="3oM_SC" value="instantiated" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvFbB" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvFdD" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvFef" role="1PaTwD">
              <property role="3oM_SC" value="classpath" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvFik" role="1PaTwD">
              <property role="3oM_SC" value="built" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvFkC" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvFmC" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvFpv" role="1PaTwD">
              <property role="3oM_SC" value="dependencies" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvFuT" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvFwQ" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvFxz" role="1PaTwD">
              <property role="3oM_SC" value="regular" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvF$T" role="1PaTwD">
              <property role="3oM_SC" value="Java" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvFAZ" role="1PaTwD">
              <property role="3oM_SC" value="ClassLoader" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvFG9" role="1PaTwD">
              <property role="3oM_SC" value="impl." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="35_wH_FvzbK" role="3cqZAp">
          <node concept="1PaTwC" id="35_wH_FvzUy" role="1aUNEU">
            <node concept="3oM_SD" id="35_wH_FvzUz" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvEIb" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvEIv" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvEID" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvEII" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvEIO" role="1PaTwD">
              <property role="3oM_SC" value="Other" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvELo" role="1PaTwD">
              <property role="3oM_SC" value="classes" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvEOt" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvFIM" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvFKY" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvFPX" role="1PaTwD">
              <property role="3oM_SC" value="could" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvFSg" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvFTp" role="1PaTwD">
              <property role="3oM_SC" value="used" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvFVN" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvFWY" role="1PaTwD">
              <property role="3oM_SC" value="2" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvFXT" role="1PaTwD">
              <property role="3oM_SC" value="scenarios," />
            </node>
            <node concept="3oM_SD" id="35_wH_FvG2Y" role="1PaTwD">
              <property role="3oM_SC" value="command-line" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvG9g" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvGaO" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvGbY" role="1PaTwD">
              <property role="3oM_SC" value="part" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvGe5" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvGfh" role="1PaTwD">
              <property role="3oM_SC" value="IDE," />
            </node>
            <node concept="3oM_SD" id="35_wH_FvGhU" role="1PaTwD">
              <property role="3oM_SC" value="where" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvGmL" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvGom" role="1PaTwD">
              <property role="3oM_SC" value="rely" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvGqs" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvGrH" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvGtw" role="1PaTwD">
              <property role="3oM_SC" value="fact" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvGvD" role="1PaTwD">
              <property role="3oM_SC" value="both" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvGy9" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvG$$" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvGBG" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvGDu" role="1PaTwD">
              <property role="3oM_SC" value="its" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvGFB" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="35_wH_FvGHP" role="3cqZAp">
          <node concept="1PaTwC" id="35_wH_FvGHh" role="1aUNEU">
            <node concept="3oM_SD" id="35_wH_FvGHg" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvGOi" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvGPc" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvGPF" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvGPK" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvGQW" role="1PaTwD">
              <property role="3oM_SC" value="dependencies" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvGW8" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvHra" role="1PaTwD">
              <property role="3oM_SC" value="&quot;provided&quot;-CL," />
            </node>
            <node concept="3oM_SD" id="35_wH_FvHsp" role="1PaTwD">
              <property role="3oM_SC" value="without" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvHxC" role="1PaTwD">
              <property role="3oM_SC" value="any" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvHGJ" role="1PaTwD">
              <property role="3oM_SC" value="MPS-managed" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvHHL" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvHKQ" role="1PaTwD">
              <property role="3oM_SC" value="CL" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvHMa" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvHNl" role="1PaTwD">
              <property role="3oM_SC" value="between" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvHQS" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvHRZ" role="1PaTwD">
              <property role="3oM_SC" value="care" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvHV9" role="1PaTwD">
              <property role="3oM_SC" value="about." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5m2bsnoM8Yr" role="3cqZAp">
          <node concept="3cpWsn" id="5m2bsnoM8Ys" role="3cpWs9">
            <property role="TrG5h" value="tc" />
            <node concept="3uibUv" id="5m2bsnoM8LY" role="1tU5fm">
              <ref role="3uigEE" node="5m2bsnoH5mM" resolve="DefaultTestExecutor.CommandLineTestContributor" />
            </node>
            <node concept="2ShNRf" id="5m2bsnoM8Yt" role="33vP2m">
              <node concept="1pGfFk" id="5m2bsnoM8Yu" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="5m2bsnoHmaB" resolve="DefaultTestExecutor.CommandLineTestContributor" />
                <node concept="37vLTw" id="5m2bsnoM8Yv" role="37wK5m">
                  <ref role="3cqZAo" node="56tRMpP_bxp" resolve="args" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5m2bsnoLU91" role="3cqZAp">
          <node concept="3cpWsn" id="5m2bsnoLU92" role="3cpWs9">
            <property role="TrG5h" value="exec" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="5m2bsnoLU93" role="1tU5fm">
              <ref role="3uigEE" node="5Ti9jVZ8rCq" resolve="TestExecutor" />
            </node>
            <node concept="2ShNRf" id="4a2eZHNP5SX" role="33vP2m">
              <node concept="1pGfFk" id="4a2eZHNP8al" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="35_wH_FvjAI" resolve="JUnit5TestExecutor" />
                <node concept="2ShNRf" id="5m2bsnoP97b" role="37wK5m">
                  <node concept="1pGfFk" id="5m2bsnoPmU8" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="1wWWPEubiSm" resolve="JUnit5TestContributorConverter" />
                    <node concept="37vLTw" id="5m2bsnoPn3m" role="37wK5m">
                      <ref role="3cqZAo" node="5m2bsnoM8Ys" resolve="tc" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbT" id="4a2eZHNP8Fb" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4iq05MkHjt_" role="3cqZAp" />
        <node concept="3clFbF" id="7rIOKY4ngR$" role="3cqZAp">
          <node concept="1rXfSq" id="7rIOKY4ic_v" role="3clFbG">
            <ref role="37wK5l" node="7rIOKY4hPSv" resolve="runAndQuit" />
            <node concept="37vLTw" id="7rIOKY4ic_w" role="37wK5m">
              <ref role="3cqZAo" node="5m2bsnoLU92" resolve="exec" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="56tRMpP_bxp" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="56tRMpP_bxq" role="1tU5fm">
          <node concept="17QB3L" id="56tRMpP_bxr" role="10Q1$1" />
        </node>
      </node>
      <node concept="3uibUv" id="1lYY8NvaZHc" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
      <node concept="P$JXv" id="6HElkBZJeSf" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsBID" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBIE" role="1PaTwD">
            <property role="3oM_SC" value="Called" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBIF" role="1PaTwD">
            <property role="3oM_SC" value="when" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBIG" role="1PaTwD">
            <property role="3oM_SC" value="BTestCase" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBIH" role="1PaTwD">
            <property role="3oM_SC" value="or" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBII" role="1PaTwD">
            <property role="3oM_SC" value="JUnit5" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBIJ" role="1PaTwD">
            <property role="3oM_SC" value="ClassConcept" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBIK" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBIL" role="1PaTwD">
            <property role="3oM_SC" value="executed" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBIM" role="1PaTwD">
            <property role="3oM_SC" value="without" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBIN" role="1PaTwD">
            <property role="3oM_SC" value="need" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBIO" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBIP" role="1PaTwD">
            <property role="3oM_SC" value="MPS" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBIQ" role="1PaTwD">
            <property role="3oM_SC" value="instance/environment" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7rIOKY4hY6B" role="jymVt" />
    <node concept="2YIFZL" id="7rIOKY4hPSv" role="jymVt">
      <property role="TrG5h" value="runAndQuit" />
      <node concept="3clFbS" id="7rIOKY4hLZz" role="3clF47">
        <node concept="3cpWs8" id="5m2bsnoMH5T" role="3cqZAp">
          <node concept="3cpWsn" id="5m2bsnoMH5W" role="3cpWs9">
            <property role="TrG5h" value="exitCode" />
            <node concept="10Oyi0" id="5m2bsnoMH5R" role="1tU5fm" />
            <node concept="37vLTw" id="7rIOKY4ncY8" role="33vP2m">
              <ref role="3cqZAo" node="6HElkBZJ3Lo" resolve="EXIT_CODE_FOR_EXCEPTION" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7rIOKY4ndrA" role="3cqZAp">
          <node concept="3clFbS" id="7rIOKY4ndrC" role="1zxBo7">
            <node concept="3J1_TO" id="5m2bsnoMEbf" role="3cqZAp">
              <node concept="3clFbS" id="5m2bsnoMEbh" role="1zxBo7">
                <node concept="3clFbF" id="5vTxdEzG1Gv" role="3cqZAp">
                  <node concept="2OqwBi" id="5vTxdEzG1Jb" role="3clFbG">
                    <node concept="37vLTw" id="6XTjlUHfWwj" role="2Oq$k0">
                      <ref role="3cqZAo" node="7rIOKY4hRyh" resolve="exec" />
                    </node>
                    <node concept="liA8E" id="5vTxdEzG1S6" role="2OqNvi">
                      <ref role="37wK5l" node="5Ti9jVZ8rCr" resolve="init" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5m2bsnoMhoE" role="3cqZAp">
                  <node concept="2OqwBi" id="5m2bsnoMi40" role="3clFbG">
                    <node concept="37vLTw" id="5m2bsnoMhoC" role="2Oq$k0">
                      <ref role="3cqZAo" node="7rIOKY4hRyh" resolve="exec" />
                    </node>
                    <node concept="liA8E" id="5m2bsnoMis9" role="2OqNvi">
                      <ref role="37wK5l" node="5Ti9jVZ8rCv" resolve="execute" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1wplmZ" id="5m2bsnoMFL4" role="1zxBo6">
                <node concept="3clFbS" id="5m2bsnoMFL5" role="1wplMD">
                  <node concept="3cpWs8" id="5m2bsnoMLJ0" role="3cqZAp">
                    <node concept="3cpWsn" id="5m2bsnoMLJ1" role="3cpWs9">
                      <property role="TrG5h" value="executionError" />
                      <node concept="3uibUv" id="5m2bsnoMLz7" role="1tU5fm">
                        <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                      </node>
                      <node concept="2OqwBi" id="5m2bsnoMLJ2" role="33vP2m">
                        <node concept="37vLTw" id="5m2bsnoMLJ3" role="2Oq$k0">
                          <ref role="3cqZAo" node="7rIOKY4hRyh" resolve="exec" />
                        </node>
                        <node concept="liA8E" id="5m2bsnoMLJ4" role="2OqNvi">
                          <ref role="37wK5l" node="4iq05MkzTIO" resolve="getExecutionError" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="5m2bsnoMJlg" role="3cqZAp">
                    <node concept="3clFbS" id="5m2bsnoMJli" role="3clFbx">
                      <node concept="3clFbF" id="5m2bsnoMNgX" role="3cqZAp">
                        <node concept="37vLTI" id="5m2bsnoMQsP" role="3clFbG">
                          <node concept="37vLTw" id="7rIOKY4i2K5" role="37vLTx">
                            <ref role="3cqZAo" node="6HElkBZJ3Lo" resolve="EXIT_CODE_FOR_EXCEPTION" />
                          </node>
                          <node concept="37vLTw" id="5m2bsnoMNgV" role="37vLTJ">
                            <ref role="3cqZAo" node="5m2bsnoMH5W" resolve="exitCode" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="5m2bsnoMMsQ" role="3clFbw">
                      <node concept="10Nm6u" id="5m2bsnoMMR1" role="3uHU7w" />
                      <node concept="37vLTw" id="5m2bsnoMLJ5" role="3uHU7B">
                        <ref role="3cqZAo" node="5m2bsnoMLJ1" resolve="executionError" />
                      </node>
                    </node>
                    <node concept="9aQIb" id="5m2bsnoMRfC" role="9aQIa">
                      <node concept="3clFbS" id="5m2bsnoMRfD" role="9aQI4">
                        <node concept="3clFbF" id="5m2bsnoMS81" role="3cqZAp">
                          <node concept="37vLTI" id="5m2bsnoMUsI" role="3clFbG">
                            <node concept="2OqwBi" id="5m2bsnoMVyt" role="37vLTx">
                              <node concept="37vLTw" id="5m2bsnoMUQS" role="2Oq$k0">
                                <ref role="3cqZAo" node="7rIOKY4hRyh" resolve="exec" />
                              </node>
                              <node concept="liA8E" id="5m2bsnoMW0E" role="2OqNvi">
                                <ref role="37wK5l" node="4iq05Mkzhkf" resolve="getFailureCount" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="5m2bsnoMS80" role="37vLTJ">
                              <ref role="3cqZAo" node="5m2bsnoMH5W" resolve="exitCode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5m2bsnoMkrh" role="3cqZAp">
                    <node concept="2OqwBi" id="5m2bsnoMkOZ" role="3clFbG">
                      <node concept="37vLTw" id="5m2bsnoMkrf" role="2Oq$k0">
                        <ref role="3cqZAo" node="7rIOKY4hRyh" resolve="exec" />
                      </node>
                      <node concept="liA8E" id="5m2bsnoMlg0" role="2OqNvi">
                        <ref role="37wK5l" node="5Ti9jVZ8rCB" resolve="dispose" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="7rIOKY4ndF6" role="1zxBo6">
            <node concept="3clFbS" id="7rIOKY4ndF7" role="1wplMD">
              <node concept="3clFbF" id="7rIOKY4idBG" role="3cqZAp">
                <node concept="2YIFZM" id="7rIOKY4ie5Z" role="3clFbG">
                  <ref role="37wK5l" to="wyt6:~System.exit(int)" resolve="exit" />
                  <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                  <node concept="37vLTw" id="7rIOKY4ieiJ" role="37wK5m">
                    <ref role="3cqZAo" node="5m2bsnoMH5W" resolve="exitCode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7rIOKY4ngn2" role="3clF45" />
      <node concept="37vLTG" id="7rIOKY4hRyh" role="3clF46">
        <property role="TrG5h" value="exec" />
        <node concept="3uibUv" id="7rIOKY4hRyg" role="1tU5fm">
          <ref role="3uigEE" node="5Ti9jVZ8rCq" resolve="TestExecutor" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7o1qpmkkZPI" role="jymVt" />
    <node concept="312cEu" id="5m2bsnoH5mM" role="jymVt">
      <property role="TrG5h" value="CommandLineTestContributor" />
      <node concept="312cEg" id="5m2bsnoHxGR" role="jymVt">
        <property role="TrG5h" value="myArgs" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="5m2bsnoHxGS" role="1B3o_S" />
        <node concept="10Q1$e" id="5m2bsnoHxGU" role="1tU5fm">
          <node concept="17QB3L" id="5m2bsnoO2Y9" role="10Q1$1" />
        </node>
      </node>
      <node concept="2tJIrI" id="5m2bsnoHyTC" role="jymVt" />
      <node concept="3clFbW" id="5m2bsnoHmaB" role="jymVt">
        <node concept="3cqZAl" id="5m2bsnoHmaD" role="3clF45" />
        <node concept="3clFbS" id="5m2bsnoHmaF" role="3clF47">
          <node concept="3clFbF" id="5m2bsnoHxGW" role="3cqZAp">
            <node concept="37vLTI" id="5m2bsnoHxGY" role="3clFbG">
              <node concept="37vLTw" id="5m2bsnoHxH1" role="37vLTJ">
                <ref role="3cqZAo" node="5m2bsnoHxGR" resolve="myArgs" />
              </node>
              <node concept="37vLTw" id="5m2bsnoHxH2" role="37vLTx">
                <ref role="3cqZAo" node="5m2bsnoHmyZ" resolve="args" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="5m2bsnoHmyZ" role="3clF46">
          <property role="TrG5h" value="args" />
          <node concept="10Q1$e" id="5m2bsnoHnjG" role="1tU5fm">
            <node concept="17QB3L" id="5m2bsnoO5Nm" role="10Q1$1" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="QfsuG7g2kw" role="jymVt" />
      <node concept="3uibUv" id="5m2bsnoH8b_" role="EKbjA">
        <ref role="3uigEE" node="5Ti9jVZ8rxi" resolve="TestsContributor" />
      </node>
      <node concept="3clFb_" id="5m2bsnoH8hg" role="jymVt">
        <property role="TrG5h" value="tests" />
        <node concept="3Tm1VV" id="5m2bsnoH8hl" role="1B3o_S" />
        <node concept="3uibUv" id="5m2bsnoH8hm" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="5m2bsnoH8hn" role="11_B2D">
            <ref role="3uigEE" node="6fYV1N6aevT" resolve="ExecutorScript.TestRecord" />
          </node>
        </node>
        <node concept="3uibUv" id="5m2bsnoH8ho" role="Sfmx6">
          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
        </node>
        <node concept="3clFbS" id="5m2bsnoH8hq" role="3clF47">
          <node concept="3SKdUt" id="5m2bsnoIjmt" role="3cqZAp">
            <node concept="1PaTwC" id="5m2bsnoIjmu" role="1aUNEU">
              <node concept="3oM_SD" id="5m2bsnoIjH6" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
              <node concept="3oM_SD" id="5m2bsnoImyI" role="1PaTwD">
                <property role="3oM_SC" value="for" />
              </node>
              <node concept="3oM_SD" id="5m2bsnoIjMc" role="1PaTwD">
                <property role="3oM_SC" value="command-line," />
              </node>
              <node concept="3oM_SD" id="5m2bsnoIjXe" role="1PaTwD">
                <property role="3oM_SC" value="we" />
              </node>
              <node concept="3oM_SD" id="5m2bsnoIjYY" role="1PaTwD">
                <property role="3oM_SC" value="put" />
              </node>
              <node concept="3oM_SD" id="5m2bsnoIk2r" role="1PaTwD">
                <property role="3oM_SC" value="all" />
              </node>
              <node concept="3oM_SD" id="5m2bsnoIkfP" role="1PaTwD">
                <property role="3oM_SC" value="tests" />
              </node>
              <node concept="3oM_SD" id="5m2bsnoIkhd" role="1PaTwD">
                <property role="3oM_SC" value="into" />
              </node>
              <node concept="3oM_SD" id="5m2bsnoIkkH" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="5m2bsnoIkmy" role="1PaTwD">
                <property role="3oM_SC" value="single" />
              </node>
              <node concept="3oM_SD" id="5m2bsnoIkrK" role="1PaTwD">
                <property role="3oM_SC" value="fake" />
              </node>
              <node concept="3oM_SD" id="5m2bsnoIkEh" role="1PaTwD">
                <property role="3oM_SC" value="&quot;&quot;" />
              </node>
              <node concept="3oM_SD" id="5m2bsnoIkJx" role="1PaTwD">
                <property role="3oM_SC" value="module" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5m2bsnoIcqJ" role="3cqZAp">
            <node concept="3cpWsn" id="5m2bsnoIcqK" role="3cpWs9">
              <property role="TrG5h" value="rv" />
              <node concept="3uibUv" id="5m2bsnoIcqL" role="1tU5fm">
                <ref role="3uigEE" node="6fYV1N6aevT" resolve="ExecutorScript.TestRecord" />
              </node>
              <node concept="2ShNRf" id="5m2bsnoIcN6" role="33vP2m">
                <node concept="1pGfFk" id="5m2bsnoIf7L" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" node="6fYV1N6afN5" resolve="ExecutorScript.TestRecord" />
                  <node concept="Xl_RD" id="5m2bsnoIgEi" role="37wK5m">
                    <property role="Xl_RC" value="" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5m2bsnoIOef" role="3cqZAp">
            <node concept="3cpWsn" id="5m2bsnoIOeg" role="3cpWs9">
              <property role="TrG5h" value="inlined" />
              <node concept="10Q1$e" id="5m2bsnoIK7G" role="1tU5fm">
                <node concept="17QB3L" id="5m2bsnoO6pb" role="10Q1$1" />
              </node>
              <node concept="1rXfSq" id="5m2bsnoIOeh" role="33vP2m">
                <ref role="37wK5l" node="5m2bsnoICeX" resolve="inlineFilesContents" />
                <node concept="37vLTw" id="5m2bsnoIOei" role="37wK5m">
                  <ref role="3cqZAo" node="5m2bsnoHxGR" resolve="myArgs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5Ti9jVZ8rLn" role="3cqZAp">
            <node concept="3cpWsn" id="5Ti9jVZ8rLo" role="3cpWs9">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="5Ti9jVZ8rLp" role="1tU5fm" />
              <node concept="3cmrfG" id="5Ti9jVZ8rLq" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="2$JKZl" id="5Ti9jVZ8rLr" role="3cqZAp">
            <node concept="3eOVzh" id="5Ti9jVZ8rLs" role="2$JKZa">
              <node concept="37vLTw" id="5Ti9jVZ8rLt" role="3uHU7B">
                <ref role="3cqZAo" node="5Ti9jVZ8rLo" resolve="i" />
              </node>
              <node concept="2OqwBi" id="5Ti9jVZ8rLu" role="3uHU7w">
                <node concept="37vLTw" id="5Ti9jVZ8rLv" role="2Oq$k0">
                  <ref role="3cqZAo" node="5m2bsnoIOeg" resolve="inlined" />
                </node>
                <node concept="1Rwk04" id="5Ti9jVZ8rLw" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbS" id="5Ti9jVZ8rLx" role="2LFqv$">
              <node concept="3clFbJ" id="5Ti9jVZ8rLy" role="3cqZAp">
                <node concept="2OqwBi" id="5Ti9jVZ8rLz" role="3clFbw">
                  <node concept="Xl_RD" id="5Ti9jVZ8rL$" role="2Oq$k0">
                    <property role="Xl_RC" value="-c" />
                  </node>
                  <node concept="liA8E" id="5Ti9jVZ8rL_" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="AH0OO" id="5Ti9jVZ8rLA" role="37wK5m">
                      <node concept="37vLTw" id="5Ti9jVZ8rLB" role="AHHXb">
                        <ref role="3cqZAo" node="5m2bsnoIOeg" resolve="inlined" />
                      </node>
                      <node concept="37vLTw" id="5Ti9jVZ8rLC" role="AHEQo">
                        <ref role="3cqZAo" node="5Ti9jVZ8rLo" resolve="i" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5Ti9jVZ8rLD" role="9aQIa">
                  <node concept="2OqwBi" id="5Ti9jVZ8rLE" role="3clFbw">
                    <node concept="Xl_RD" id="5Ti9jVZ8rLF" role="2Oq$k0">
                      <property role="Xl_RC" value="-m" />
                    </node>
                    <node concept="liA8E" id="5Ti9jVZ8rLG" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                      <node concept="AH0OO" id="5Ti9jVZ8rLH" role="37wK5m">
                        <node concept="37vLTw" id="5Ti9jVZ8rLI" role="AHHXb">
                          <ref role="3cqZAo" node="5m2bsnoIOeg" resolve="inlined" />
                        </node>
                        <node concept="37vLTw" id="5Ti9jVZ8rLJ" role="AHEQo">
                          <ref role="3cqZAo" node="5Ti9jVZ8rLo" resolve="i" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="5Ti9jVZ8rLK" role="3clFbx">
                    <node concept="3clFbF" id="5Ti9jVZ8rLL" role="3cqZAp">
                      <node concept="3uNrnE" id="5Ti9jVZ8rLM" role="3clFbG">
                        <node concept="37vLTw" id="5Ti9jVZ8rLN" role="2$L3a6">
                          <ref role="3cqZAo" node="5Ti9jVZ8rLo" resolve="i" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5m2bsnoKwtI" role="3cqZAp">
                      <node concept="2OqwBi" id="5m2bsnoKx3M" role="3clFbG">
                        <node concept="37vLTw" id="5m2bsnoKwtG" role="2Oq$k0">
                          <ref role="3cqZAo" node="5m2bsnoIcqK" resolve="rv" />
                        </node>
                        <node concept="liA8E" id="5m2bsnoKxG1" role="2OqNvi">
                          <ref role="37wK5l" node="4g6NqHEcSsr" resolve="add" />
                          <node concept="AH0OO" id="5m2bsnoK$_F" role="37wK5m">
                            <node concept="37vLTw" id="5m2bsnoK_mB" role="AHEQo">
                              <ref role="3cqZAo" node="5Ti9jVZ8rLo" resolve="i" />
                            </node>
                            <node concept="37vLTw" id="5m2bsnoKyvK" role="AHHXb">
                              <ref role="3cqZAo" node="5m2bsnoIOeg" resolve="inlined" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="5m2bsnoKEZc" role="37wK5m" />
                          <node concept="2YIFZM" id="5m2bsnoKJu9" role="37wK5m">
                            <ref role="37wK5l" to="wyt6:~String.valueOf(boolean)" resolve="valueOf" />
                            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                            <node concept="3clFbT" id="5m2bsnoKJua" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="5Ti9jVZ8rLU" role="3clFbx">
                  <node concept="3clFbF" id="5Ti9jVZ8rLV" role="3cqZAp">
                    <node concept="3uNrnE" id="5Ti9jVZ8rLW" role="3clFbG">
                      <node concept="37vLTw" id="5Ti9jVZ8rLX" role="2$L3a6">
                        <ref role="3cqZAo" node="5Ti9jVZ8rLo" resolve="i" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5m2bsnoJs32" role="3cqZAp">
                    <node concept="2OqwBi" id="5m2bsnoJsHG" role="3clFbG">
                      <node concept="37vLTw" id="5m2bsnoJs30" role="2Oq$k0">
                        <ref role="3cqZAo" node="5m2bsnoIcqK" resolve="rv" />
                      </node>
                      <node concept="liA8E" id="5m2bsnoJt6g" role="2OqNvi">
                        <ref role="37wK5l" node="4g6NqHEcSsr" resolve="add" />
                        <node concept="AH0OO" id="6BB1EWXdd7V" role="37wK5m">
                          <node concept="37vLTw" id="6BB1EWXdd7W" role="AHHXb">
                            <ref role="3cqZAo" node="5m2bsnoIOeg" resolve="inlined" />
                          </node>
                          <node concept="37vLTw" id="6BB1EWXdd7X" role="AHEQo">
                            <ref role="3cqZAo" node="5Ti9jVZ8rLo" resolve="i" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="5m2bsnoK9ux" role="37wK5m">
                          <property role="Xl_RC" value="" />
                        </node>
                        <node concept="2YIFZM" id="5m2bsnoKp9U" role="37wK5m">
                          <ref role="37wK5l" to="wyt6:~String.valueOf(boolean)" resolve="valueOf" />
                          <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                          <node concept="3clFbT" id="5m2bsnoKq65" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5Ti9jVZ8rM6" role="3cqZAp">
                <node concept="3uNrnE" id="5Ti9jVZ8rM7" role="3clFbG">
                  <node concept="37vLTw" id="5Ti9jVZ8rM8" role="2$L3a6">
                    <ref role="3cqZAo" node="5Ti9jVZ8rLo" resolve="i" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="5m2bsnoImAQ" role="3cqZAp">
            <node concept="2YIFZM" id="5m2bsnoIp$q" role="3cqZAk">
              <ref role="37wK5l" to="33ny:~Collections.singleton(java.lang.Object)" resolve="singleton" />
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              <node concept="37vLTw" id="5m2bsnoIqgd" role="37wK5m">
                <ref role="3cqZAo" node="5m2bsnoIcqK" resolve="rv" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5m2bsnoH8hr" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5m2bsnoKS6E" role="jymVt" />
      <node concept="3clFb_" id="5m2bsnoH8hx" role="jymVt">
        <property role="TrG5h" value="classLoader" />
        <node concept="3Tm1VV" id="5m2bsnoH8hA" role="1B3o_S" />
        <node concept="3uibUv" id="5m2bsnoH8hC" role="3clF45">
          <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
        </node>
        <node concept="37vLTG" id="5m2bsnoH8hD" role="3clF46">
          <property role="TrG5h" value="tr" />
          <node concept="3uibUv" id="5m2bsnoH8hE" role="1tU5fm">
            <ref role="3uigEE" node="6fYV1N6aevT" resolve="ExecutorScript.TestRecord" />
          </node>
        </node>
        <node concept="3uibUv" id="5m2bsnoH8hF" role="Sfmx6">
          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
        </node>
        <node concept="3clFbS" id="5m2bsnoH8hG" role="3clF47">
          <node concept="3clFbF" id="5m2bsnoHf3$" role="3cqZAp">
            <node concept="2OqwBi" id="5m2bsnoHfY2" role="3clFbG">
              <node concept="1rXfSq" id="5m2bsnoHf3w" role="2Oq$k0">
                <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
              </node>
              <node concept="liA8E" id="5m2bsnoHhYA" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Class.getClassLoader()" resolve="getClassLoader" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5m2bsnoH8hH" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5m2bsnoHzd0" role="jymVt" />
      <node concept="2YIFZL" id="5m2bsnoICeX" role="jymVt">
        <property role="TrG5h" value="inlineFilesContents" />
        <node concept="3clFbS" id="1wWWPEubjwc" role="3clF47">
          <node concept="3cpWs8" id="1wWWPEubjwd" role="3cqZAp">
            <node concept="3cpWsn" id="1wWWPEubjwe" role="3cpWs9">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="newArgs" />
              <node concept="3uibUv" id="1wWWPEubjwf" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="17QB3L" id="5m2bsnoO94e" role="11_B2D" />
              </node>
              <node concept="2ShNRf" id="1wWWPEubjwh" role="33vP2m">
                <node concept="1pGfFk" id="1wWWPEubjwi" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="33ny:~LinkedList.&lt;init&gt;()" resolve="LinkedList" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="5m2bsnoIFgI" role="3cqZAp">
            <node concept="1PaTwC" id="5m2bsnoIFgJ" role="1aUNEU">
              <node concept="3oM_SD" id="5m2bsnoIFiN" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
              <node concept="3oM_SD" id="5m2bsnoIIhL" role="1PaTwD">
                <property role="3oM_SC" value="FIXME" />
              </node>
              <node concept="3oM_SD" id="5m2bsnoIG1K" role="1PaTwD">
                <property role="3oM_SC" value="++num," />
              </node>
              <node concept="3oM_SD" id="5m2bsnoIGcM" role="1PaTwD">
                <property role="3oM_SC" value="really?" />
              </node>
              <node concept="3oM_SD" id="5m2bsnoIIvC" role="1PaTwD">
                <property role="3oM_SC" value="Streams?" />
              </node>
            </node>
          </node>
          <node concept="1Dw8fO" id="1wWWPEubjwk" role="3cqZAp">
            <node concept="3cpWsn" id="1wWWPEubjwl" role="1Duv9x">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="num" />
              <node concept="10Oyi0" id="1wWWPEubjwm" role="1tU5fm" />
              <node concept="3cmrfG" id="1wWWPEubjwn" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3eOVzh" id="1wWWPEubjwo" role="1Dwp0S">
              <node concept="37vLTw" id="1wWWPEubjwp" role="3uHU7B">
                <ref role="3cqZAo" node="1wWWPEubjwl" resolve="num" />
              </node>
              <node concept="2OqwBi" id="1wWWPEubjwq" role="3uHU7w">
                <node concept="37vLTw" id="1wWWPEubjwr" role="2Oq$k0">
                  <ref role="3cqZAo" node="1wWWPEubjw8" resolve="args" />
                </node>
                <node concept="1Rwk04" id="1wWWPEubjws" role="2OqNvi" />
              </node>
            </node>
            <node concept="2$rviw" id="1wWWPEubjwt" role="1Dwrff">
              <node concept="37vLTw" id="1wWWPEubjwu" role="2$L3a6">
                <ref role="3cqZAo" node="1wWWPEubjwl" resolve="num" />
              </node>
            </node>
            <node concept="3clFbS" id="1wWWPEubjwv" role="2LFqv$">
              <node concept="3cpWs8" id="1wWWPEubjww" role="3cqZAp">
                <node concept="3cpWsn" id="1wWWPEubjwx" role="3cpWs9">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="curArg" />
                  <node concept="17QB3L" id="5m2bsnoOe7D" role="1tU5fm" />
                  <node concept="AH0OO" id="1wWWPEubjwz" role="33vP2m">
                    <node concept="37vLTw" id="1wWWPEubjw$" role="AHHXb">
                      <ref role="3cqZAo" node="1wWWPEubjw8" resolve="args" />
                    </node>
                    <node concept="37vLTw" id="1wWWPEubjw_" role="AHEQo">
                      <ref role="3cqZAo" node="1wWWPEubjwl" resolve="num" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1wWWPEubjwA" role="3cqZAp">
                <node concept="2OqwBi" id="1wWWPEubjwB" role="3clFbw">
                  <node concept="Xl_RD" id="1wWWPEubjwC" role="2Oq$k0">
                    <property role="Xl_RC" value="-f" />
                  </node>
                  <node concept="liA8E" id="1wWWPEubjwD" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="37vLTw" id="1wWWPEubjwE" role="37wK5m">
                      <ref role="3cqZAo" node="1wWWPEubjwx" resolve="curArg" />
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="1wWWPEubjwF" role="9aQIa">
                  <node concept="3clFbS" id="1wWWPEubjwG" role="9aQI4">
                    <node concept="3clFbF" id="1wWWPEubjwH" role="3cqZAp">
                      <node concept="2OqwBi" id="1wWWPEubjwI" role="3clFbG">
                        <node concept="37vLTw" id="1wWWPEubjwJ" role="2Oq$k0">
                          <ref role="3cqZAo" node="1wWWPEubjwe" resolve="newArgs" />
                        </node>
                        <node concept="liA8E" id="1wWWPEubjwK" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                          <node concept="37vLTw" id="1wWWPEubjwL" role="37wK5m">
                            <ref role="3cqZAo" node="1wWWPEubjwx" resolve="curArg" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="1wWWPEubjwM" role="3clFbx">
                  <node concept="3cpWs8" id="1wWWPEubjwN" role="3cqZAp">
                    <node concept="3cpWsn" id="1wWWPEubjwO" role="3cpWs9">
                      <property role="3TUv4t" value="false" />
                      <property role="TrG5h" value="filename" />
                      <node concept="3uibUv" id="1wWWPEubjwP" role="1tU5fm">
                        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                      </node>
                      <node concept="AH0OO" id="1wWWPEubjwQ" role="33vP2m">
                        <node concept="37vLTw" id="1wWWPEubjwR" role="AHHXb">
                          <ref role="3cqZAo" node="1wWWPEubjw8" resolve="args" />
                        </node>
                        <node concept="3uNrnE" id="1wWWPEubjwS" role="AHEQo">
                          <node concept="37vLTw" id="1wWWPEubjwT" role="2$L3a6">
                            <ref role="3cqZAo" node="1wWWPEubjwl" resolve="num" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="5m2bsnoI4Bj" role="3cqZAp">
                    <node concept="1PaTwC" id="5m2bsnoI4Bk" role="1aUNEU">
                      <node concept="3oM_SD" id="5m2bsnoI5js" role="1PaTwD">
                        <property role="3oM_SC" value="FIXME" />
                      </node>
                      <node concept="3oM_SD" id="5m2bsnoI5mQ" role="1PaTwD">
                        <property role="3oM_SC" value="replace" />
                      </node>
                      <node concept="3oM_SD" id="5m2bsnoI5sO" role="1PaTwD">
                        <property role="3oM_SC" value="with" />
                      </node>
                      <node concept="3oM_SD" id="5m2bsnoI5wg" role="1PaTwD">
                        <property role="3oM_SC" value="Files.lines()" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="1wWWPEubjwU" role="3cqZAp">
                    <node concept="3cpWsn" id="1wWWPEubjwV" role="3cpWs9">
                      <property role="3TUv4t" value="false" />
                      <property role="TrG5h" value="fileContents" />
                      <node concept="3uibUv" id="1wWWPEubjwW" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~List" resolve="List" />
                        <node concept="3uibUv" id="1wWWPEubjwX" role="11_B2D">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                      </node>
                      <node concept="1rXfSq" id="1wWWPEubjwY" role="33vP2m">
                        <ref role="37wK5l" node="5m2bsnoI_Y4" resolve="parseRequestFromFile" />
                        <node concept="37vLTw" id="1wWWPEubjwZ" role="37wK5m">
                          <ref role="3cqZAo" node="1wWWPEubjwO" resolve="filename" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1wWWPEubjx0" role="3cqZAp">
                    <node concept="2OqwBi" id="1wWWPEubjx1" role="3clFbG">
                      <node concept="37vLTw" id="1wWWPEubjx2" role="2Oq$k0">
                        <ref role="3cqZAo" node="1wWWPEubjwe" resolve="newArgs" />
                      </node>
                      <node concept="liA8E" id="1wWWPEubjx3" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection)" resolve="addAll" />
                        <node concept="37vLTw" id="1wWWPEubjx4" role="37wK5m">
                          <ref role="3cqZAo" node="1wWWPEubjwV" resolve="fileContents" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="1wWWPEubjx5" role="3cqZAp">
            <node concept="2OqwBi" id="1wWWPEubjx6" role="3cqZAk">
              <node concept="37vLTw" id="1wWWPEubjx7" role="2Oq$k0">
                <ref role="3cqZAo" node="1wWWPEubjwe" resolve="newArgs" />
              </node>
              <node concept="liA8E" id="1wWWPEubjx8" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.toArray(java.lang.Object[])" resolve="toArray" />
                <node concept="2ShNRf" id="1wWWPEubjx9" role="37wK5m">
                  <node concept="3$_iS1" id="1wWWPEubjxa" role="2ShVmc">
                    <node concept="3$GHV9" id="1wWWPEubjxb" role="3$GQph">
                      <node concept="2OqwBi" id="1wWWPEubjxc" role="3$I4v7">
                        <node concept="37vLTw" id="1wWWPEubjxd" role="2Oq$k0">
                          <ref role="3cqZAo" node="1wWWPEubjwe" resolve="newArgs" />
                        </node>
                        <node concept="liA8E" id="1wWWPEubjxe" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="1wWWPEubjxf" role="3$_nBY">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1wWWPEubjw8" role="3clF46">
          <property role="TrG5h" value="args" />
          <property role="3TUv4t" value="false" />
          <node concept="10Q1$e" id="1wWWPEubjw9" role="1tU5fm">
            <node concept="3uibUv" id="1wWWPEubjwa" role="10Q1$1">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
        </node>
        <node concept="10Q1$e" id="1wWWPEubjxh" role="3clF45">
          <node concept="17QB3L" id="5m2bsnoO7mk" role="10Q1$1" />
        </node>
        <node concept="3uibUv" id="1wWWPEubjwb" role="Sfmx6">
          <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
        </node>
        <node concept="3Tm6S6" id="1wWWPEubjxg" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="5m2bsnoHzeh" role="jymVt" />
      <node concept="2YIFZL" id="5m2bsnoI_Y4" role="jymVt">
        <property role="TrG5h" value="parseRequestFromFile" />
        <node concept="3clFbS" id="5m2bsnoHJnK" role="3clF47">
          <node concept="3SKdUt" id="5m2bsnoHQTZ" role="3cqZAp">
            <node concept="1PaTwC" id="5m2bsnoHQU0" role="1aUNEU">
              <node concept="3oM_SD" id="5m2bsnoHS5D" role="1PaTwD">
                <property role="3oM_SC" value="FIXME" />
              </node>
              <node concept="3oM_SD" id="5m2bsnoHS5F" role="1PaTwD">
                <property role="3oM_SC" value="deleteOnExit" />
              </node>
              <node concept="3oM_SD" id="5m2bsnoHS97" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="5m2bsnoHS9b" role="1PaTwD">
                <property role="3oM_SC" value="caller" />
              </node>
              <node concept="3oM_SD" id="5m2bsnoHSa6" role="1PaTwD">
                <property role="3oM_SC" value="responsibility" />
              </node>
            </node>
          </node>
          <node concept="1X3_iC" id="5m2bsnoHOy7" role="lGtFl">
            <property role="3V$3am" value="statement" />
            <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
            <node concept="3clFbF" id="5m2bsnoHJnL" role="8Wnug">
              <node concept="2OqwBi" id="5m2bsnoHJnM" role="3clFbG">
                <node concept="2ShNRf" id="5m2bsnoHJnN" role="2Oq$k0">
                  <node concept="1pGfFk" id="5m2bsnoHJnO" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                    <node concept="37vLTw" id="5m2bsnoHJnP" role="37wK5m">
                      <ref role="3cqZAo" node="5m2bsnoHJnG" resolve="filename" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5m2bsnoHJnQ" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.deleteOnExit()" resolve="deleteOnExit" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5m2bsnoHJnR" role="3cqZAp">
            <node concept="3cpWsn" id="5m2bsnoHJnS" role="3cpWs9">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="reader" />
              <node concept="3uibUv" id="5m2bsnoHJnT" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~LineNumberReader" resolve="LineNumberReader" />
              </node>
              <node concept="2ShNRf" id="5m2bsnoHJnU" role="33vP2m">
                <node concept="1pGfFk" id="5m2bsnoHJnV" role="2ShVmc">
                  <ref role="37wK5l" to="guwi:~LineNumberReader.&lt;init&gt;(java.io.Reader)" resolve="LineNumberReader" />
                  <node concept="2ShNRf" id="5m2bsnoHJnW" role="37wK5m">
                    <node concept="1pGfFk" id="5m2bsnoHJnX" role="2ShVmc">
                      <ref role="37wK5l" to="guwi:~FileReader.&lt;init&gt;(java.lang.String)" resolve="FileReader" />
                      <node concept="37vLTw" id="5m2bsnoHJnY" role="37wK5m">
                        <ref role="3cqZAo" node="5m2bsnoHJnG" resolve="filename" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5m2bsnoHJnZ" role="3cqZAp">
            <node concept="3cpWsn" id="5m2bsnoHJo0" role="3cpWs9">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="fileContents" />
              <node concept="3uibUv" id="5m2bsnoHJo1" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3uibUv" id="5m2bsnoHJo2" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
              <node concept="2ShNRf" id="5m2bsnoHJo3" role="33vP2m">
                <node concept="1pGfFk" id="5m2bsnoHJo4" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                  <node concept="3uibUv" id="5m2bsnoHJo5" role="1pMfVU">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2$JKZl" id="5m2bsnoHJo6" role="3cqZAp">
            <node concept="3clFbT" id="5m2bsnoHJo7" role="2$JKZa">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="3clFbS" id="5m2bsnoHJo8" role="2LFqv$">
              <node concept="3cpWs8" id="5m2bsnoHJo9" role="3cqZAp">
                <node concept="3cpWsn" id="5m2bsnoHJoa" role="3cpWs9">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="line" />
                  <node concept="3uibUv" id="5m2bsnoHJob" role="1tU5fm">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                  <node concept="2OqwBi" id="5m2bsnoHJoc" role="33vP2m">
                    <node concept="37vLTw" id="5m2bsnoHJod" role="2Oq$k0">
                      <ref role="3cqZAo" node="5m2bsnoHJnS" resolve="reader" />
                    </node>
                    <node concept="liA8E" id="5m2bsnoHJoe" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~LineNumberReader.readLine()" resolve="readLine" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="5m2bsnoHJof" role="3cqZAp">
                <node concept="3clFbC" id="5m2bsnoHJog" role="3clFbw">
                  <node concept="37vLTw" id="5m2bsnoHJoh" role="3uHU7B">
                    <ref role="3cqZAo" node="5m2bsnoHJoa" resolve="line" />
                  </node>
                  <node concept="10Nm6u" id="5m2bsnoHJoi" role="3uHU7w" />
                </node>
                <node concept="3clFbS" id="5m2bsnoHJoj" role="3clFbx">
                  <node concept="3zACq4" id="5m2bsnoHJok" role="3cqZAp" />
                </node>
              </node>
              <node concept="3clFbJ" id="5m2bsnoHJol" role="3cqZAp">
                <node concept="3fqX7Q" id="5m2bsnoHJom" role="3clFbw">
                  <node concept="2OqwBi" id="5m2bsnoHJon" role="3fr31v">
                    <node concept="37vLTw" id="5m2bsnoHJoo" role="2Oq$k0">
                      <ref role="3cqZAo" node="5m2bsnoHJoa" resolve="line" />
                    </node>
                    <node concept="liA8E" id="5m2bsnoHJop" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.isEmpty()" resolve="isEmpty" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="5m2bsnoHJoq" role="3clFbx">
                  <node concept="3clFbF" id="5m2bsnoHJor" role="3cqZAp">
                    <node concept="2OqwBi" id="5m2bsnoHJos" role="3clFbG">
                      <node concept="37vLTw" id="5m2bsnoHJot" role="2Oq$k0">
                        <ref role="3cqZAo" node="5m2bsnoHJo0" resolve="fileContents" />
                      </node>
                      <node concept="liA8E" id="5m2bsnoHJou" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                        <node concept="37vLTw" id="5m2bsnoHJov" role="37wK5m">
                          <ref role="3cqZAo" node="5m2bsnoHJoa" resolve="line" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="5m2bsnoHJow" role="3cqZAp">
            <node concept="37vLTw" id="5m2bsnoHJox" role="3cqZAk">
              <ref role="3cqZAo" node="5m2bsnoHJo0" resolve="fileContents" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="5m2bsnoHJnG" role="3clF46">
          <property role="TrG5h" value="filename" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="5m2bsnoHJnH" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
          <node concept="2AHcQZ" id="5m2bsnoHJnI" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3uibUv" id="5m2bsnoHJoz" role="3clF45">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="5m2bsnoHJo$" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="3uibUv" id="5m2bsnoHJnJ" role="Sfmx6">
          <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
        </node>
        <node concept="3Tm6S6" id="5m2bsnoHJoy" role="1B3o_S" />
      </node>
    </node>
    <node concept="3UR2Jj" id="4Tkq3_ePqJJ" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsBCM" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBCN" role="1PaTwD">
          <property role="3oM_SC" value="Command-line" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCO" role="1PaTwD">
          <property role="3oM_SC" value="front-end" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCP" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCQ" role="1PaTwD">
          <property role="3oM_SC" value="launch" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCR" role="1PaTwD">
          <property role="3oM_SC" value="BTestCase" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCS" role="1PaTwD">
          <property role="3oM_SC" value="or" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCT" role="1PaTwD">
          <property role="3oM_SC" value="JUnit5" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCU" role="1PaTwD">
          <property role="3oM_SC" value="ClassConcept" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCV" role="1PaTwD">
          <property role="3oM_SC" value="without" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCW" role="1PaTwD">
          <property role="3oM_SC" value="need" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCX" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCY" role="1PaTwD">
          <property role="3oM_SC" value="MPS" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBCZ" role="1PaTwD">
          <property role="3oM_SC" value="instance/environment" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBD0" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBD1" role="1PaTwD">
          <property role="3oM_SC" value="XXX" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBD2" role="1PaTwD">
          <property role="3oM_SC" value="Unfortunate" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBD3" role="1PaTwD">
          <property role="3oM_SC" value="name," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBD4" role="1PaTwD">
          <property role="3oM_SC" value="no" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBD5" role="1PaTwD">
          <property role="3oM_SC" value="idea" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBD6" role="1PaTwD">
          <property role="3oM_SC" value="what" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBD7" role="1PaTwD">
          <property role="3oM_SC" value="'default'" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBD8" role="1PaTwD">
          <property role="3oM_SC" value="refers" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBD9" role="1PaTwD">
          <property role="3oM_SC" value="to." />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDa" role="1PaTwD">
          <property role="3oM_SC" value="Now," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDb" role="1PaTwD">
          <property role="3oM_SC" value="'TestExecutor'" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDc" role="1PaTwD">
          <property role="3oM_SC" value="suffix" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDd" role="1PaTwD">
          <property role="3oM_SC" value="doesn't" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDe" role="1PaTwD">
          <property role="3oM_SC" value="make" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDf" role="1PaTwD">
          <property role="3oM_SC" value="much" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDg" role="1PaTwD">
          <property role="3oM_SC" value="sense" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDh" role="1PaTwD">
          <property role="3oM_SC" value="either." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBDi" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBDj" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDk" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDl" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDm" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDn" role="1PaTwD">
          <property role="3oM_SC" value="This" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDo" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDp" role="1PaTwD">
          <property role="3oM_SC" value="merely" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDq" role="1PaTwD">
          <property role="3oM_SC" value="an" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDr" role="1PaTwD">
          <property role="3oM_SC" value="POJO" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDs" role="1PaTwD">
          <property role="3oM_SC" value="main" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDt" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDu" role="1PaTwD">
          <property role="3oM_SC" value="launch" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDv" role="1PaTwD">
          <property role="3oM_SC" value="tests" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDw" role="1PaTwD">
          <property role="3oM_SC" value="in" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDx" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDy" role="1PaTwD">
          <property role="3oM_SC" value="given" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDz" role="1PaTwD">
          <property role="3oM_SC" value="mode." />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBD$" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2RMg39tndd6">
    <property role="TrG5h" value="WithPlatformTestExecutor" />
    <node concept="3uibUv" id="2RMg39tndd7" role="1zkMxy">
      <ref role="3uigEE" node="56tRMpP_bxe" resolve="DefaultTestExecutor" />
    </node>
    <node concept="3Tm1VV" id="2RMg39tndeV" role="1B3o_S" />
    <node concept="Wx3nA" id="7MSVDs2EIdY" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="LAUNCHER_CLASS" />
      <node concept="3Tm6S6" id="7MSVDs2EIdV" role="1B3o_S" />
      <node concept="17QB3L" id="7MSVDs2EIdW" role="1tU5fm" />
      <node concept="Xl_RD" id="7MSVDs2EIdX" role="33vP2m">
        <property role="Xl_RC" value="jetbrains.mps.lang.test.junit5.ScriptJUnit5Launcher" />
      </node>
    </node>
    <node concept="Wx3nA" id="a_kj514TlE" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="LAUNCHER_METHOD" />
      <node concept="3Tm6S6" id="a_kj514TlF" role="1B3o_S" />
      <node concept="17QB3L" id="a_kj514TlG" role="1tU5fm" />
      <node concept="Xl_RD" id="a_kj514TlH" role="33vP2m">
        <property role="Xl_RC" value="launchTests" />
      </node>
    </node>
    <node concept="Wx3nA" id="7MSVDs2ENo6" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="LAUNCHER_SOLUTION" />
      <node concept="3Tm6S6" id="7MSVDs2ENo3" role="1B3o_S" />
      <node concept="17QB3L" id="7MSVDs2ENo4" role="1tU5fm" />
      <node concept="Xl_RD" id="7MSVDs2ENo5" role="33vP2m">
        <property role="Xl_RC" value="c234a56a-502f-4751-aded-6f9846fff7ce(jetbrains.mps.lang.test.junit5)" />
      </node>
    </node>
    <node concept="2tJIrI" id="a_kj50Z7WL" role="jymVt" />
    <node concept="2tJIrI" id="4Tkq3_ePo$S" role="jymVt" />
    <node concept="3clFbW" id="2RMg39tndeW" role="jymVt">
      <node concept="3cqZAl" id="2RMg39tndeX" role="3clF45" />
      <node concept="3Tm1VV" id="2RMg39tndeY" role="1B3o_S" />
      <node concept="3clFbS" id="2RMg39tndeZ" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6HElkBZJg0A" role="jymVt" />
    <node concept="2YIFZL" id="2RMg39tnddR" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="3cqZAl" id="2RMg39tnddS" role="3clF45" />
      <node concept="3Tm1VV" id="2RMg39tnddT" role="1B3o_S" />
      <node concept="3clFbS" id="2RMg39tnddU" role="3clF47">
        <node concept="3SKdUt" id="107wlcQnhEp" role="3cqZAp">
          <node concept="1PaTwC" id="107wlcQnhEq" role="1aUNEU">
            <node concept="3oM_SD" id="107wlcQnhEr" role="1PaTwD">
              <property role="3oM_SC" value="would" />
            </node>
            <node concept="3oM_SD" id="107wlcQnjSd" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="107wlcQnjTw" role="1PaTwD">
              <property role="3oM_SC" value="wonderful" />
            </node>
            <node concept="3oM_SD" id="107wlcQnmlY" role="1PaTwD">
              <property role="3oM_SC" value="NOT" />
            </node>
            <node concept="3oM_SD" id="107wlcQnmO7" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="107wlcQnn2L" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="107wlcQnn4u" role="1PaTwD">
              <property role="3oM_SC" value="j.m.bl.logging" />
            </node>
            <node concept="3oM_SD" id="107wlcQnnDe" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="107wlcQnoju" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="107wlcQnolA" role="1PaTwD">
              <property role="3oM_SC" value="class" />
            </node>
            <node concept="3oM_SD" id="107wlcQnoo9" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="107wlcQnoAN" role="1PaTwD">
              <property role="3oM_SC" value="avoid" />
            </node>
            <node concept="3oM_SD" id="107wlcQnoEc" role="1PaTwD">
              <property role="3oM_SC" value="static" />
            </node>
            <node concept="3oM_SD" id="107wlcQnoXm" role="1PaTwD">
              <property role="3oM_SC" value="LOG" />
            </node>
            <node concept="3oM_SD" id="107wlcQnoZ3" role="1PaTwD">
              <property role="3oM_SC" value="field" />
            </node>
            <node concept="3oM_SD" id="107wlcQnpDI" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="107wlcQnq1f" role="1PaTwD">
              <property role="3oM_SC" value="circumvents" />
            </node>
            <node concept="3oM_SD" id="107wlcQnqNM" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="107wlcQnqPU" role="1PaTwD">
              <property role="3oM_SC" value="initialization" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="107wlcQn5SG" role="3cqZAp">
          <node concept="2YIFZM" id="107wlcQndEK" role="3clFbG">
            <ref role="37wK5l" to="v9gs:4B1FZuRjhXP" resolve="init" />
            <ref role="1Pybhc" to="v9gs:4B1FZuRjhXN" resolve="LogInitializer" />
          </node>
        </node>
        <node concept="3cpWs8" id="4yT2m3ddVud" role="3cqZAp">
          <node concept="3cpWsn" id="4yT2m3ddVue" role="3cpWs9">
            <property role="TrG5h" value="file" />
            <node concept="3uibUv" id="4yT2m3ddRZo" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="4yT2m3ddVuf" role="33vP2m">
              <node concept="1pGfFk" id="4yT2m3ddVug" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                <node concept="AH0OO" id="4yT2m3ddVuh" role="37wK5m">
                  <node concept="3cmrfG" id="4yT2m3ddVui" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="4yT2m3ddVuj" role="AHHXb">
                    <ref role="3cqZAo" node="2RMg39tndeS" resolve="args" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1lYY8Nv7aBY" role="3cqZAp">
          <node concept="3cpWsn" id="1lYY8Nv7aBZ" role="3cpWs9">
            <property role="TrG5h" value="execScript" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="1lYY8Nv7aC0" role="1tU5fm">
              <ref role="3uigEE" node="6fYV1N66YPZ" resolve="ExecutorScript" />
            </node>
            <node concept="2ShNRf" id="1lYY8Nv7aC1" role="33vP2m">
              <node concept="HV5vD" id="1lYY8Nv7aC2" role="2ShVmc">
                <ref role="HV5vE" node="6fYV1N66YPZ" resolve="ExecutorScript" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1lYY8Nv7aC5" role="3cqZAp">
          <node concept="3cpWsn" id="1lYY8Nv7aC6" role="3cpWs9">
            <property role="TrG5h" value="scriptDoc" />
            <node concept="3uibUv" id="1lYY8Nv7aC7" role="1tU5fm">
              <ref role="3uigEE" to="mmaq:~Document" resolve="Document" />
            </node>
            <node concept="2YIFZM" id="1lYY8Nv7aC8" role="33vP2m">
              <ref role="37wK5l" to="asz6:7CnofvYvUWm" resolve="loadDocument" />
              <ref role="1Pybhc" to="asz6:7CnofvYvUW6" resolve="JDOMUtil" />
              <node concept="37vLTw" id="4yT2m3ddVuk" role="37wK5m">
                <ref role="3cqZAo" node="4yT2m3ddVue" resolve="file" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1lYY8Nv7aCe" role="3cqZAp">
          <node concept="2OqwBi" id="1lYY8Nv7aCf" role="3clFbG">
            <node concept="37vLTw" id="1lYY8Nv7aCg" role="2Oq$k0">
              <ref role="3cqZAo" node="1lYY8Nv7aBZ" resolve="execScript" />
            </node>
            <node concept="liA8E" id="1lYY8Nv7aCh" role="2OqNvi">
              <ref role="37wK5l" node="6fYV1N67me$" resolve="read" />
              <node concept="2OqwBi" id="1lYY8Nv7aCi" role="37wK5m">
                <node concept="37vLTw" id="1lYY8Nv7aCj" role="2Oq$k0">
                  <ref role="3cqZAo" node="1lYY8Nv7aC6" resolve="scriptDoc" />
                </node>
                <node concept="liA8E" id="1lYY8Nv7aCk" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Document.getRootElement()" resolve="getRootElement" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6fYV1N68kk2" role="3cqZAp">
          <node concept="3clFbS" id="6fYV1N68kk4" role="3clFbx">
            <node concept="3clFbF" id="4yT2m3deiWs" role="3cqZAp">
              <node concept="1rXfSq" id="4yT2m3deiWq" role="3clFbG">
                <ref role="37wK5l" node="4iq05MkGugr" resolve="fail" />
                <node concept="Xl_RD" id="a_kj515Dcd" role="37wK5m">
                  <property role="Xl_RC" value="Need MPS startup arguments to launch tests that require MPS environment" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="6fYV1N68me1" role="3clFbw">
            <node concept="10Nm6u" id="6fYV1N68mqh" role="3uHU7w" />
            <node concept="2OqwBi" id="1lYY8Nv7hrW" role="3uHU7B">
              <node concept="37vLTw" id="1lYY8Nv7hrX" role="2Oq$k0">
                <ref role="3cqZAo" node="1lYY8Nv7aBZ" resolve="execScript" />
              </node>
              <node concept="liA8E" id="1lYY8Nv7hrY" role="2OqNvi">
                <ref role="37wK5l" node="1lYY8Nv98s1" resolve="getStartupArguments" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5TX$EBE7Wp$" role="3cqZAp">
          <node concept="3clFbS" id="5TX$EBE7WpA" role="3clFbx">
            <node concept="3clFbF" id="5TX$EBE7YDg" role="3cqZAp">
              <node concept="1rXfSq" id="5TX$EBE7YDe" role="3clFbG">
                <ref role="37wK5l" node="4iq05MkGugr" resolve="fail" />
                <node concept="Xl_RD" id="5TX$EBE80D3" role="37wK5m">
                  <property role="Xl_RC" value="MPS doesn't support legacy (JUnit3) tests with @MPSLaunch" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4yT2m3dj3TW" role="3clFbw">
            <node concept="2OqwBi" id="4yT2m3dj3TX" role="2Oq$k0">
              <node concept="37vLTw" id="4yT2m3dj3TY" role="2Oq$k0">
                <ref role="3cqZAo" node="1lYY8Nv7aBZ" resolve="execScript" />
              </node>
              <node concept="liA8E" id="4yT2m3dj3TZ" role="2OqNvi">
                <ref role="37wK5l" node="1lYY8Nv98s1" resolve="getStartupArguments" />
              </node>
            </node>
            <node concept="liA8E" id="4yT2m3dj3U0" role="2OqNvi">
              <ref role="37wK5l" to="asz6:4WUgV5kZp1i" resolve="getCompatibilityMode" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1lYY8Nv7INF" role="3cqZAp" />
        <node concept="3J1_TO" id="4yT2m3de02h" role="3cqZAp">
          <node concept="3uVAMA" id="4yT2m3de2zH" role="1zxBo5">
            <node concept="XOnhg" id="4yT2m3de2zI" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="4yT2m3de2zJ" role="1tU5fm">
                <node concept="3uibUv" id="4yT2m3de2Vm" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="4yT2m3de2zK" role="1zc67A">
              <node concept="3clFbF" id="a_kj51ac2D" role="3cqZAp">
                <node concept="2OqwBi" id="a_kj51ahYT" role="3clFbG">
                  <node concept="10M0yZ" id="a_kj51aeGU" role="2Oq$k0">
                    <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                    <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                  </node>
                  <node concept="liA8E" id="a_kj51am4v" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                    <node concept="Xl_RD" id="a_kj510WcL" role="37wK5m">
                      <property role="Xl_RC" value="unexpected error" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="a_kj516$5F" role="3cqZAp">
                <node concept="2OqwBi" id="a_kj516_Mc" role="3clFbG">
                  <node concept="37vLTw" id="a_kj516$5D" role="2Oq$k0">
                    <ref role="3cqZAo" node="4yT2m3de2zI" resolve="ex" />
                  </node>
                  <node concept="liA8E" id="a_kj516BJG" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace(java.io.PrintStream)" resolve="printStackTrace" />
                    <node concept="10M0yZ" id="a_kj516J_V" role="37wK5m">
                      <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                      <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5TX$EBEadHh" role="3cqZAp">
                <node concept="2YIFZM" id="5TX$EBEaf4w" role="3clFbG">
                  <ref role="37wK5l" to="wyt6:~System.exit(int)" resolve="exit" />
                  <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                  <node concept="37vLTw" id="5TX$EBEafDh" role="37wK5m">
                    <ref role="3cqZAo" node="6HElkBZJ3Lo" resolve="EXIT_CODE_FOR_EXCEPTION" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4yT2m3de02j" role="1zxBo7">
            <node concept="3cpWs8" id="3hj1t46fgvu" role="3cqZAp">
              <node concept="3cpWsn" id="3hj1t46fgvv" role="3cpWs9">
                <property role="TrG5h" value="env" />
                <node concept="3uibUv" id="3hj1t46fgvw" role="1tU5fm">
                  <ref role="3uigEE" to="79ha:HKKzfMjqRV" resolve="Environment" />
                </node>
                <node concept="1rXfSq" id="4Tkq3_ePbD1" role="33vP2m">
                  <ref role="37wK5l" node="1_D5Bk1Sx1w" resolve="startIdea" />
                  <node concept="2OqwBi" id="1lYY8Nv7c9S" role="37wK5m">
                    <node concept="37vLTw" id="1lYY8Nv7bXt" role="2Oq$k0">
                      <ref role="3cqZAo" node="1lYY8Nv7aBZ" resolve="execScript" />
                    </node>
                    <node concept="liA8E" id="1lYY8Nv7clT" role="2OqNvi">
                      <ref role="37wK5l" node="1lYY8Nv98s1" resolve="getStartupArguments" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="a_kj50X8c_" role="3cqZAp" />
            <node concept="3cpWs8" id="1dWiSG6Y1Wu" role="3cqZAp">
              <node concept="3cpWsn" id="1dWiSG6Y1Wv" role="3cpWs9">
                <property role="TrG5h" value="testPlan" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="1dWiSG6Y1Ww" role="1tU5fm">
                  <ref role="3uigEE" to="asz6:5tXD4tyLjpu" resolve="TestData" />
                </node>
                <node concept="2ShNRf" id="1dWiSG6Y4RN" role="33vP2m">
                  <node concept="HV5vD" id="1dWiSG6Y7ZF" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="HV5vE" to="asz6:5tXD4tyLjpu" resolve="TestData" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="1dWiSG6XTeF" role="3cqZAp">
              <node concept="3clFbS" id="1dWiSG6XTeI" role="2LFqv$">
                <node concept="3cpWs8" id="1dWiSG6YfLe" role="3cqZAp">
                  <node concept="3cpWsn" id="1dWiSG6YfLf" role="3cpWs9">
                    <property role="TrG5h" value="mr" />
                    <node concept="3uibUv" id="1dWiSG6YfLg" role="1tU5fm">
                      <ref role="3uigEE" to="asz6:5tXD4tyLk2H" resolve="TestData.ModuleRecord" />
                    </node>
                    <node concept="2ShNRf" id="1dWiSG6YhIL" role="33vP2m">
                      <node concept="1pGfFk" id="1dWiSG6YjV9" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" to="asz6:5tXD4tyPJx6" resolve="TestData.ModuleRecord" />
                        <node concept="2OqwBi" id="1dWiSG6Yu91" role="37wK5m">
                          <node concept="37vLTw" id="1dWiSG6YkHU" role="2Oq$k0">
                            <ref role="3cqZAo" node="1dWiSG6XTeJ" resolve="tr" />
                          </node>
                          <node concept="2OwXpG" id="1dWiSG6YuYd" role="2OqNvi">
                            <ref role="2Oxat5" node="6fYV1N6ae$w" resolve="myTestModule" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="1dWiSG6YnhC" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1dWiSG6Y8LS" role="3cqZAp">
                  <node concept="2OqwBi" id="1dWiSG6YbVb" role="3clFbG">
                    <node concept="2OqwBi" id="1dWiSG6Y9pI" role="2Oq$k0">
                      <node concept="37vLTw" id="1dWiSG6Y8LR" role="2Oq$k0">
                        <ref role="3cqZAo" node="1dWiSG6Y1Wv" resolve="testPlan" />
                      </node>
                      <node concept="2OwXpG" id="1dWiSG6YaeZ" role="2OqNvi">
                        <ref role="2Oxat5" to="asz6:5tXD4tyLDFE" resolve="testModules" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1dWiSG6Yey5" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="37vLTw" id="1dWiSG6Yt3K" role="37wK5m">
                        <ref role="3cqZAo" node="1dWiSG6YfLf" resolve="mr" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1dWiSG6Z3mi" role="3cqZAp">
                  <node concept="3cpWsn" id="1dWiSG6Z3mo" role="3cpWs9">
                    <property role="TrG5h" value="class2record" />
                    <node concept="3uibUv" id="1dWiSG6Z3mq" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                      <node concept="17QB3L" id="1dWiSG6Z3Zo" role="11_B2D" />
                      <node concept="3uibUv" id="1dWiSG6Z5je" role="11_B2D">
                        <ref role="3uigEE" to="asz6:5tXD4tyLk6m" resolve="TestData.TestContainerRecord" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="1dWiSG6Z7DF" role="33vP2m">
                      <node concept="1pGfFk" id="1dWiSG6ZaPI" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Dw8fO" id="a_kj50X948" role="3cqZAp">
                  <node concept="1gjucp" id="a_kj50X949" role="_NwL_">
                    <property role="TrG5h" value="x" />
                    <node concept="10Oyi0" id="a_kj50X94a" role="1tU5fm" />
                    <node concept="2OqwBi" id="a_kj50X94b" role="33vP2m">
                      <node concept="2OqwBi" id="a_kj50X94c" role="2Oq$k0">
                        <node concept="37vLTw" id="a_kj50X94d" role="2Oq$k0">
                          <ref role="3cqZAo" node="1dWiSG6XTeJ" resolve="tr" />
                        </node>
                        <node concept="2OwXpG" id="a_kj50X94e" role="2OqNvi">
                          <ref role="2Oxat5" node="6fYV1N6aeCV" resolve="myTestQualifiedName" />
                        </node>
                      </node>
                      <node concept="liA8E" id="a_kj50X94f" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="a_kj50X94g" role="2LFqv$">
                    <node concept="3cpWs8" id="a_kj50X94h" role="3cqZAp">
                      <node concept="3cpWsn" id="a_kj50X94i" role="3cpWs9">
                        <property role="TrG5h" value="qualifiedName" />
                        <node concept="17QB3L" id="a_kj50X94j" role="1tU5fm" />
                        <node concept="2OqwBi" id="a_kj50X94k" role="33vP2m">
                          <node concept="2OqwBi" id="a_kj50X94l" role="2Oq$k0">
                            <node concept="37vLTw" id="a_kj50X94m" role="2Oq$k0">
                              <ref role="3cqZAo" node="1dWiSG6XTeJ" resolve="tr" />
                            </node>
                            <node concept="2OwXpG" id="a_kj50X94n" role="2OqNvi">
                              <ref role="2Oxat5" node="6fYV1N6aeCV" resolve="myTestQualifiedName" />
                            </node>
                          </node>
                          <node concept="liA8E" id="a_kj50X94o" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                            <node concept="37vLTw" id="a_kj50X94p" role="37wK5m">
                              <ref role="3cqZAo" node="a_kj50X94P" resolve="i" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="a_kj50X94q" role="3cqZAp">
                      <node concept="3cpWsn" id="a_kj50X94r" role="3cpWs9">
                        <property role="TrG5h" value="isTestCase" />
                        <property role="3TUv4t" value="true" />
                        <node concept="10P_77" id="a_kj50X94s" role="1tU5fm" />
                        <node concept="2YIFZM" id="1dWiSG6ZoC_" role="33vP2m">
                          <ref role="37wK5l" to="wyt6:~Boolean.parseBoolean(java.lang.String)" resolve="parseBoolean" />
                          <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                          <node concept="2OqwBi" id="1dWiSG6ZoCA" role="37wK5m">
                            <node concept="2OqwBi" id="1dWiSG6ZoCB" role="2Oq$k0">
                              <node concept="37vLTw" id="1dWiSG6ZoCC" role="2Oq$k0">
                                <ref role="3cqZAo" node="1dWiSG6XTeJ" resolve="tr" />
                              </node>
                              <node concept="2OwXpG" id="1dWiSG6ZoCD" role="2OqNvi">
                                <ref role="2Oxat5" node="4FBFA_GHaaU" resolve="isTestCase" />
                              </node>
                            </node>
                            <node concept="liA8E" id="1dWiSG6ZoCE" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                              <node concept="37vLTw" id="1dWiSG6ZoCF" role="37wK5m">
                                <ref role="3cqZAo" node="a_kj50X94P" resolve="i" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="1dWiSG6YGRL" role="3cqZAp">
                      <node concept="3cpWsn" id="1dWiSG6YGRM" role="3cpWs9">
                        <property role="TrG5h" value="tcr" />
                        <node concept="3uibUv" id="1dWiSG6YGRN" role="1tU5fm">
                          <ref role="3uigEE" to="asz6:5tXD4tyLk6m" resolve="TestData.TestContainerRecord" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="a_kj50X94t" role="3cqZAp">
                      <node concept="3cpWsn" id="a_kj50X94u" role="3cpWs9">
                        <property role="3TUv4t" value="true" />
                        <property role="TrG5h" value="testClassName" />
                        <node concept="3uibUv" id="a_kj50X94v" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="a_kj50X94w" role="3cqZAp">
                      <node concept="3cpWsn" id="a_kj50X94x" role="3cpWs9">
                        <property role="3TUv4t" value="true" />
                        <property role="TrG5h" value="testMethod" />
                        <node concept="3uibUv" id="a_kj50X94y" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1dWiSG6ZwId" role="3cqZAp">
                      <node concept="3clFbS" id="1dWiSG6ZwIf" role="3clFbx">
                        <node concept="3clFbF" id="1dWiSG71ovE" role="3cqZAp">
                          <node concept="37vLTI" id="1dWiSG71rK8" role="3clFbG">
                            <node concept="37vLTw" id="1dWiSG71sGm" role="37vLTx">
                              <ref role="3cqZAo" node="a_kj50X94i" resolve="qualifiedName" />
                            </node>
                            <node concept="37vLTw" id="1dWiSG71ovC" role="37vLTJ">
                              <ref role="3cqZAo" node="a_kj50X94u" resolve="testClassName" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1dWiSG71$zI" role="3cqZAp">
                          <node concept="37vLTI" id="1dWiSG71AKF" role="3clFbG">
                            <node concept="10Nm6u" id="1dWiSG71CSJ" role="37vLTx" />
                            <node concept="37vLTw" id="1dWiSG71$zG" role="37vLTJ">
                              <ref role="3cqZAo" node="a_kj50X94x" resolve="testMethod" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="1dWiSG71dEB" role="3clFbw">
                        <ref role="3cqZAo" node="a_kj50X94r" resolve="isTestCase" />
                      </node>
                      <node concept="9aQIb" id="1dWiSG6ZAIx" role="9aQIa">
                        <node concept="3clFbS" id="1dWiSG6ZAIy" role="9aQI4">
                          <node concept="3cpWs8" id="a_kj50X94z" role="3cqZAp">
                            <node concept="3cpWsn" id="a_kj50X94$" role="3cpWs9">
                              <property role="3TUv4t" value="false" />
                              <property role="TrG5h" value="index" />
                              <node concept="10Oyi0" id="a_kj50X94_" role="1tU5fm" />
                              <node concept="2OqwBi" id="a_kj50X94A" role="33vP2m">
                                <node concept="37vLTw" id="a_kj50X94B" role="2Oq$k0">
                                  <ref role="3cqZAo" node="a_kj50X94i" resolve="qualifiedName" />
                                </node>
                                <node concept="liA8E" id="a_kj50X94C" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.lastIndexOf(int)" resolve="lastIndexOf" />
                                  <node concept="1Xhbcc" id="a_kj50X94D" role="37wK5m">
                                    <property role="1XhdNS" value="." />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="1dWiSG71eSv" role="3cqZAp">
                            <node concept="37vLTI" id="1dWiSG71eSx" role="3clFbG">
                              <node concept="2OqwBi" id="a_kj50X94E" role="37vLTx">
                                <node concept="37vLTw" id="a_kj50X94F" role="2Oq$k0">
                                  <ref role="3cqZAo" node="a_kj50X94i" resolve="qualifiedName" />
                                </node>
                                <node concept="liA8E" id="a_kj50X94G" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                                  <node concept="3cmrfG" id="a_kj50X94H" role="37wK5m">
                                    <property role="3cmrfH" value="0" />
                                  </node>
                                  <node concept="37vLTw" id="a_kj50X94I" role="37wK5m">
                                    <ref role="3cqZAo" node="a_kj50X94$" resolve="index" />
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTw" id="1dWiSG71eS_" role="37vLTJ">
                                <ref role="3cqZAo" node="a_kj50X94u" resolve="testClassName" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="1dWiSG71hfZ" role="3cqZAp">
                            <node concept="37vLTI" id="1dWiSG71hg1" role="3clFbG">
                              <node concept="2OqwBi" id="a_kj50X94J" role="37vLTx">
                                <node concept="37vLTw" id="a_kj50X94K" role="2Oq$k0">
                                  <ref role="3cqZAo" node="a_kj50X94i" resolve="qualifiedName" />
                                </node>
                                <node concept="liA8E" id="a_kj50X94L" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                                  <node concept="3cpWs3" id="a_kj50X94M" role="37wK5m">
                                    <node concept="37vLTw" id="a_kj50X94N" role="3uHU7B">
                                      <ref role="3cqZAo" node="a_kj50X94$" resolve="index" />
                                    </node>
                                    <node concept="3cmrfG" id="a_kj50X94O" role="3uHU7w">
                                      <property role="3cmrfH" value="1" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTw" id="1dWiSG71hg5" role="37vLTJ">
                                <ref role="3cqZAo" node="a_kj50X94x" resolve="testMethod" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1dWiSG6Z0xd" role="3cqZAp">
                      <node concept="37vLTI" id="1dWiSG6Z25o" role="3clFbG">
                        <node concept="2OqwBi" id="1dWiSG6ZdI5" role="37vLTx">
                          <node concept="37vLTw" id="1dWiSG6ZcRm" role="2Oq$k0">
                            <ref role="3cqZAo" node="1dWiSG6Z3mo" resolve="class2record" />
                          </node>
                          <node concept="liA8E" id="1dWiSG6ZgAn" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Map.computeIfAbsent(java.lang.Object,java.util.function.Function)" resolve="computeIfAbsent" />
                            <node concept="37vLTw" id="1dWiSG6ZTJS" role="37wK5m">
                              <ref role="3cqZAo" node="a_kj50X94u" resolve="testClassName" />
                            </node>
                            <node concept="1bVj0M" id="1dWiSG708UB" role="37wK5m">
                              <node concept="gl6BB" id="1dWiSG708UV" role="1bW2Oz">
                                <property role="TrG5h" value="qn" />
                                <node concept="2jxLKc" id="1dWiSG708UW" role="1tU5fm" />
                              </node>
                              <node concept="3clFbS" id="1dWiSG708UZ" role="1bW5cS">
                                <node concept="3cpWs8" id="1dWiSG70LP2" role="3cqZAp">
                                  <node concept="3cpWsn" id="1dWiSG70LP3" role="3cpWs9">
                                    <property role="TrG5h" value="rv" />
                                    <node concept="3uibUv" id="1dWiSG70LbZ" role="1tU5fm">
                                      <ref role="3uigEE" to="asz6:5tXD4tyLk6m" resolve="TestData.TestContainerRecord" />
                                    </node>
                                    <node concept="2ShNRf" id="1dWiSG70LP4" role="33vP2m">
                                      <node concept="1pGfFk" id="1dWiSG70LP5" role="2ShVmc">
                                        <property role="373rjd" value="true" />
                                        <ref role="37wK5l" to="asz6:5tXD4tyLyIj" resolve="TestData.TestContainerRecord" />
                                        <node concept="37vLTw" id="1dWiSG70LP6" role="37wK5m">
                                          <ref role="3cqZAo" node="1dWiSG708UV" resolve="qn" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="1dWiSG70Rds" role="3cqZAp">
                                  <node concept="2OqwBi" id="1dWiSG711ML" role="3clFbG">
                                    <node concept="2OqwBi" id="1dWiSG70XdN" role="2Oq$k0">
                                      <node concept="37vLTw" id="1dWiSG70VEa" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1dWiSG6YfLf" resolve="mr" />
                                      </node>
                                      <node concept="2OwXpG" id="1dWiSG70ZBm" role="2OqNvi">
                                        <ref role="2Oxat5" to="asz6:5tXD4tyMttY" resolve="testCases" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="1dWiSG714x1" role="2OqNvi">
                                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                      <node concept="37vLTw" id="1dWiSG715Cf" role="37wK5m">
                                        <ref role="3cqZAo" node="1dWiSG70LP3" resolve="rv" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="1dWiSG70wHi" role="3cqZAp">
                                  <node concept="37vLTw" id="1dWiSG70LP7" role="3clFbG">
                                    <ref role="3cqZAo" node="1dWiSG70LP3" resolve="rv" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="1dWiSG6Z0xb" role="37vLTJ">
                          <ref role="3cqZAo" node="1dWiSG6YGRM" resolve="tcr" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1dWiSG71H$Q" role="3cqZAp">
                      <node concept="3clFbS" id="1dWiSG71H$S" role="3clFbx">
                        <node concept="3clFbF" id="1dWiSG71Oa3" role="3cqZAp">
                          <node concept="2OqwBi" id="1dWiSG71TB$" role="3clFbG">
                            <node concept="2OqwBi" id="1dWiSG71PdV" role="2Oq$k0">
                              <node concept="37vLTw" id="1dWiSG71Oa1" role="2Oq$k0">
                                <ref role="3cqZAo" node="1dWiSG6YGRM" resolve="tcr" />
                              </node>
                              <node concept="2OwXpG" id="1dWiSG71Rqr" role="2OqNvi">
                                <ref role="2Oxat5" to="asz6:5tXD4tyMv4C" resolve="tests" />
                              </node>
                            </node>
                            <node concept="liA8E" id="1dWiSG71XCf" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                              <node concept="2ShNRf" id="1dWiSG71YG2" role="37wK5m">
                                <node concept="1pGfFk" id="1dWiSG722MH" role="2ShVmc">
                                  <property role="373rjd" value="true" />
                                  <ref role="37wK5l" to="asz6:5tXD4tyLzV6" resolve="TestData.TestRecord" />
                                  <node concept="37vLTw" id="1dWiSG725aS" role="37wK5m">
                                    <ref role="3cqZAo" node="a_kj50X94x" resolve="testMethod" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3y3z36" id="1dWiSG71KHb" role="3clFbw">
                        <node concept="10Nm6u" id="1dWiSG71Nb0" role="3uHU7w" />
                        <node concept="37vLTw" id="1dWiSG71IKS" role="3uHU7B">
                          <ref role="3cqZAo" node="a_kj50X94x" resolve="testMethod" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="a_kj50X94P" role="1Duv9x">
                    <property role="TrG5h" value="i" />
                    <node concept="10Oyi0" id="a_kj50X94Q" role="1tU5fm" />
                    <node concept="3cmrfG" id="a_kj50X94R" role="33vP2m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="3eOVzh" id="a_kj50X94S" role="1Dwp0S">
                    <node concept="37vLTw" id="a_kj50X94T" role="3uHU7w">
                      <ref role="3cqZAo" node="a_kj50X949" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="a_kj50X94U" role="3uHU7B">
                      <ref role="3cqZAo" node="a_kj50X94P" resolve="i" />
                    </node>
                  </node>
                  <node concept="3uNrnE" id="a_kj50X94V" role="1Dwrff">
                    <node concept="37vLTw" id="a_kj50X94W" role="2$L3a6">
                      <ref role="3cqZAo" node="a_kj50X94P" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="1dWiSG6XTeJ" role="1Duv9x">
                <property role="TrG5h" value="tr" />
                <node concept="3uibUv" id="1dWiSG6XTeN" role="1tU5fm">
                  <ref role="3uigEE" node="6fYV1N6aevT" resolve="ExecutorScript.TestRecord" />
                </node>
              </node>
              <node concept="2OqwBi" id="1dWiSG6XTeO" role="1DdaDG">
                <node concept="37vLTw" id="1dWiSG6XTeP" role="2Oq$k0">
                  <ref role="3cqZAo" node="1lYY8Nv7aBZ" resolve="execScript" />
                </node>
                <node concept="liA8E" id="1dWiSG6XTeQ" role="2OqNvi">
                  <ref role="37wK5l" node="4g6NqHEd6QF" resolve="getTests" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="a_kj51dkGf" role="3cqZAp">
              <node concept="3cpWsn" id="a_kj51dkGg" role="3cpWs9">
                <property role="TrG5h" value="fatalEx" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="a_kj51dkGd" role="1tU5fm">
                  <ref role="3uigEE" to="i5cy:~AtomicReference" resolve="AtomicReference" />
                  <node concept="3uibUv" id="a_kj51dmYF" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
                  </node>
                </node>
                <node concept="2ShNRf" id="a_kj51dwm6" role="33vP2m">
                  <node concept="1pGfFk" id="a_kj51d$WP" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="i5cy:~AtomicReference.&lt;init&gt;()" resolve="AtomicReference" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="5mw3b8lSrQV" role="3cqZAp">
              <node concept="1PaTwC" id="5mw3b8lSrQW" role="1aUNEU">
                <node concept="3oM_SD" id="5mw3b8lSrQX" role="1PaTwD">
                  <property role="3oM_SC" value="FIXME" />
                </node>
                <node concept="3oM_SD" id="5mw3b8lSrR0" role="1PaTwD">
                  <property role="3oM_SC" value="need" />
                </node>
                <node concept="3oM_SD" id="5mw3b8lSsw0" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="5mw3b8lSt5x" role="1PaTwD">
                  <property role="3oM_SC" value="better" />
                </node>
                <node concept="3oM_SD" id="5mw3b8lStDW" role="1PaTwD">
                  <property role="3oM_SC" value="idea" />
                </node>
                <node concept="3oM_SD" id="5mw3b8lStEW" role="1PaTwD">
                  <property role="3oM_SC" value="how" />
                </node>
                <node concept="3oM_SD" id="5mw3b8lStHs" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="5mw3b8lStHt" role="1PaTwD">
                  <property role="3oM_SC" value="report" />
                </node>
                <node concept="3oM_SD" id="5mw3b8lStHX" role="1PaTwD">
                  <property role="3oM_SC" value="feedback" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5mw3b8lQl50" role="3cqZAp">
              <node concept="3cpWsn" id="5mw3b8lQl51" role="3cpWs9">
                <property role="TrG5h" value="wc" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="5mw3b8lQl52" role="1tU5fm">
                  <ref role="3uigEE" to="asz6:7MSVDs2AdGA" resolve="WorkerCallback" />
                </node>
                <node concept="2ShNRf" id="5mw3b8lQpGD" role="33vP2m">
                  <node concept="YeOm9" id="5mw3b8lQuXH" role="2ShVmc">
                    <node concept="1Y3b0j" id="5mw3b8lQuXK" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <property role="373rjd" value="true" />
                      <ref role="1Y3XeK" to="asz6:7MSVDs2AdGA" resolve="WorkerCallback" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="3Tm1VV" id="5mw3b8lQuXL" role="1B3o_S" />
                      <node concept="3clFb_" id="5mw3b8lQuY5" role="jymVt">
                        <property role="TrG5h" value="info" />
                        <node concept="37vLTG" id="5mw3b8lQuY6" role="3clF46">
                          <property role="TrG5h" value="text" />
                          <node concept="17QB3L" id="5mw3b8lQuY7" role="1tU5fm" />
                        </node>
                        <node concept="3cqZAl" id="5mw3b8lQuY8" role="3clF45" />
                        <node concept="3Tm1VV" id="5mw3b8lQuY9" role="1B3o_S" />
                        <node concept="3clFbS" id="5mw3b8lQuYb" role="3clF47">
                          <node concept="3clFbF" id="a_kj50XEbg" role="3cqZAp">
                            <node concept="2OqwBi" id="a_kj50XTQt" role="3clFbG">
                              <node concept="2YIFZM" id="a_kj50XLfc" role="2Oq$k0">
                                <ref role="37wK5l" to="wwqx:~Logger.getLogger(java.lang.Class)" resolve="getLogger" />
                                <ref role="1Pybhc" to="wwqx:~Logger" resolve="Logger" />
                                <node concept="3VsKOn" id="a_kj50XRtx" role="37wK5m">
                                  <ref role="3VsUkX" node="2RMg39tndd6" resolve="WithPlatformTestExecutor" />
                                </node>
                              </node>
                              <node concept="liA8E" id="a_kj50XWie" role="2OqNvi">
                                <ref role="37wK5l" to="wwqx:~Logger.info(java.lang.String)" resolve="info" />
                                <node concept="37vLTw" id="a_kj50XYBj" role="37wK5m">
                                  <ref role="3cqZAo" node="5mw3b8lQuY6" resolve="text" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="5mw3b8lQuYd" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="2tJIrI" id="5mw3b8lQuYe" role="jymVt" />
                      <node concept="3clFb_" id="5mw3b8lQuYf" role="jymVt">
                        <property role="TrG5h" value="warning" />
                        <node concept="37vLTG" id="5mw3b8lQuYg" role="3clF46">
                          <property role="TrG5h" value="text" />
                          <node concept="17QB3L" id="5mw3b8lQuYh" role="1tU5fm" />
                        </node>
                        <node concept="3cqZAl" id="5mw3b8lQuYi" role="3clF45" />
                        <node concept="3Tm1VV" id="5mw3b8lQuYj" role="1B3o_S" />
                        <node concept="3clFbS" id="5mw3b8lQuYl" role="3clF47">
                          <node concept="3clFbF" id="a_kj50Y53Q" role="3cqZAp">
                            <node concept="2OqwBi" id="a_kj50Y53R" role="3clFbG">
                              <node concept="2YIFZM" id="a_kj50Y53S" role="2Oq$k0">
                                <ref role="37wK5l" to="wwqx:~Logger.getLogger(java.lang.Class)" resolve="getLogger" />
                                <ref role="1Pybhc" to="wwqx:~Logger" resolve="Logger" />
                                <node concept="3VsKOn" id="a_kj50Y53T" role="37wK5m">
                                  <ref role="3VsUkX" node="2RMg39tndd6" resolve="WithPlatformTestExecutor" />
                                </node>
                              </node>
                              <node concept="liA8E" id="a_kj50Y53U" role="2OqNvi">
                                <ref role="37wK5l" to="wwqx:~Logger.warning(java.lang.String)" resolve="warning" />
                                <node concept="37vLTw" id="a_kj50Y53V" role="37wK5m">
                                  <ref role="3cqZAo" node="5mw3b8lQuYg" resolve="text" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="5mw3b8lQuYn" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="2tJIrI" id="5mw3b8lQuYo" role="jymVt" />
                      <node concept="3clFb_" id="5mw3b8lQuYp" role="jymVt">
                        <property role="TrG5h" value="debug" />
                        <node concept="3cqZAl" id="5mw3b8lQuYq" role="3clF45" />
                        <node concept="3Tm1VV" id="5mw3b8lQuYr" role="1B3o_S" />
                        <node concept="37vLTG" id="5mw3b8lQuYt" role="3clF46">
                          <property role="TrG5h" value="text" />
                          <node concept="17QB3L" id="5mw3b8lQuYu" role="1tU5fm" />
                        </node>
                        <node concept="3clFbS" id="5mw3b8lQuYv" role="3clF47">
                          <node concept="3clFbF" id="a_kj50YkKz" role="3cqZAp">
                            <node concept="2OqwBi" id="a_kj50YkK$" role="3clFbG">
                              <node concept="2YIFZM" id="a_kj50YkK_" role="2Oq$k0">
                                <ref role="37wK5l" to="wwqx:~Logger.getLogger(java.lang.Class)" resolve="getLogger" />
                                <ref role="1Pybhc" to="wwqx:~Logger" resolve="Logger" />
                                <node concept="3VsKOn" id="a_kj50YkKA" role="37wK5m">
                                  <ref role="3VsUkX" node="2RMg39tndd6" resolve="WithPlatformTestExecutor" />
                                </node>
                              </node>
                              <node concept="liA8E" id="a_kj50YkKB" role="2OqNvi">
                                <ref role="37wK5l" to="wwqx:~Logger.debug(java.lang.String)" resolve="debug" />
                                <node concept="37vLTw" id="a_kj50YkKC" role="37wK5m">
                                  <ref role="3cqZAo" node="5mw3b8lQuYt" resolve="text" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="5mw3b8lQuYx" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="2tJIrI" id="5mw3b8lQuYy" role="jymVt" />
                      <node concept="3clFb_" id="5mw3b8lQuYz" role="jymVt">
                        <property role="TrG5h" value="error" />
                        <node concept="3cqZAl" id="5mw3b8lQuY$" role="3clF45" />
                        <node concept="3Tm1VV" id="5mw3b8lQuY_" role="1B3o_S" />
                        <node concept="37vLTG" id="5mw3b8lQuYB" role="3clF46">
                          <property role="TrG5h" value="text" />
                          <node concept="17QB3L" id="5mw3b8lQuYC" role="1tU5fm" />
                        </node>
                        <node concept="3clFbS" id="5mw3b8lQuYD" role="3clF47">
                          <node concept="3clFbF" id="5mw3b8lR0oQ" role="3cqZAp">
                            <node concept="1rXfSq" id="5mw3b8lR0oP" role="3clFbG">
                              <ref role="37wK5l" node="5mw3b8lQuYH" resolve="error" />
                              <node concept="37vLTw" id="5mw3b8lR1KX" role="37wK5m">
                                <ref role="3cqZAo" node="5mw3b8lQuYB" resolve="text" />
                              </node>
                              <node concept="10Nm6u" id="5mw3b8lR71o" role="37wK5m" />
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="5mw3b8lQuYF" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="2tJIrI" id="5mw3b8lQuYG" role="jymVt" />
                      <node concept="3clFb_" id="5mw3b8lQuYH" role="jymVt">
                        <property role="TrG5h" value="error" />
                        <node concept="37vLTG" id="5mw3b8lQuYI" role="3clF46">
                          <property role="TrG5h" value="text" />
                          <node concept="17QB3L" id="5mw3b8lQuYJ" role="1tU5fm" />
                        </node>
                        <node concept="37vLTG" id="5mw3b8lQuYK" role="3clF46">
                          <property role="TrG5h" value="ex" />
                          <node concept="3uibUv" id="5mw3b8lQuYL" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                          </node>
                        </node>
                        <node concept="3cqZAl" id="5mw3b8lQuYM" role="3clF45" />
                        <node concept="3Tm1VV" id="5mw3b8lQuYN" role="1B3o_S" />
                        <node concept="3clFbS" id="5mw3b8lQuYP" role="3clF47">
                          <node concept="3clFbF" id="a_kj50YxtY" role="3cqZAp">
                            <node concept="2OqwBi" id="a_kj50YxtZ" role="3clFbG">
                              <node concept="2YIFZM" id="a_kj50Yxu0" role="2Oq$k0">
                                <ref role="37wK5l" to="wwqx:~Logger.getLogger(java.lang.Class)" resolve="getLogger" />
                                <ref role="1Pybhc" to="wwqx:~Logger" resolve="Logger" />
                                <node concept="3VsKOn" id="a_kj50Yxu1" role="37wK5m">
                                  <ref role="3VsUkX" node="2RMg39tndd6" resolve="WithPlatformTestExecutor" />
                                </node>
                              </node>
                              <node concept="liA8E" id="a_kj50Yxu2" role="2OqNvi">
                                <ref role="37wK5l" to="wwqx:~Logger.error(java.lang.String,java.lang.Throwable)" resolve="error" />
                                <node concept="37vLTw" id="a_kj50Yxu3" role="37wK5m">
                                  <ref role="3cqZAo" node="5mw3b8lQuYI" resolve="text" />
                                </node>
                                <node concept="37vLTw" id="a_kj50YEm0" role="37wK5m">
                                  <ref role="3cqZAo" node="5mw3b8lQuYK" resolve="ex" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="5mw3b8lQuYR" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="2tJIrI" id="5mw3b8lQuYS" role="jymVt" />
                      <node concept="3clFb_" id="5mw3b8lQuYT" role="jymVt">
                        <property role="TrG5h" value="fatal" />
                        <node concept="37vLTG" id="5mw3b8lQuYU" role="3clF46">
                          <property role="TrG5h" value="text" />
                          <node concept="17QB3L" id="5mw3b8lQuYV" role="1tU5fm" />
                        </node>
                        <node concept="37vLTG" id="5mw3b8lQuYW" role="3clF46">
                          <property role="TrG5h" value="ex" />
                          <node concept="3uibUv" id="5mw3b8lQuYX" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                          </node>
                        </node>
                        <node concept="3cqZAl" id="5mw3b8lQuYY" role="3clF45" />
                        <node concept="3Tm1VV" id="5mw3b8lQuYZ" role="1B3o_S" />
                        <node concept="3clFbS" id="5mw3b8lQuZ1" role="3clF47">
                          <node concept="3clFbF" id="5mw3b8lQOO5" role="3cqZAp">
                            <node concept="1rXfSq" id="5mw3b8lQOO3" role="3clFbG">
                              <ref role="37wK5l" node="5mw3b8lQuYH" resolve="error" />
                              <node concept="37vLTw" id="5mw3b8lQT0U" role="37wK5m">
                                <ref role="3cqZAo" node="5mw3b8lQuYU" resolve="text" />
                              </node>
                              <node concept="37vLTw" id="5mw3b8lQYZ1" role="37wK5m">
                                <ref role="3cqZAo" node="5mw3b8lQuYW" resolve="ex" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="a_kj51dCCL" role="3cqZAp">
                            <node concept="2OqwBi" id="a_kj51dGgK" role="3clFbG">
                              <node concept="37vLTw" id="a_kj51dCCJ" role="2Oq$k0">
                                <ref role="3cqZAo" node="a_kj51dkGg" resolve="fatalEx" />
                              </node>
                              <node concept="liA8E" id="a_kj51dJyx" role="2OqNvi">
                                <ref role="37wK5l" to="i5cy:~AtomicReference.set(java.lang.Object)" resolve="set" />
                                <node concept="2ShNRf" id="a_kj51dLq0" role="37wK5m">
                                  <node concept="1pGfFk" id="a_kj51dTSP" role="2ShVmc">
                                    <property role="373rjd" value="true" />
                                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="RuntimeException" />
                                    <node concept="37vLTw" id="a_kj51dYzz" role="37wK5m">
                                      <ref role="3cqZAo" node="5mw3b8lQuYU" resolve="text" />
                                    </node>
                                    <node concept="37vLTw" id="a_kj51e2S6" role="37wK5m">
                                      <ref role="3cqZAo" node="5mw3b8lQuYW" resolve="ex" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="5mw3b8lQuZ3" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="a_kj510lSr" role="3cqZAp">
              <node concept="3cpWsn" id="a_kj510lSp" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="projectDir" />
                <node concept="3uibUv" id="a_kj510nVf" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~File" resolve="File" />
                </node>
                <node concept="2ShNRf" id="a_kj510tjg" role="33vP2m">
                  <node concept="1pGfFk" id="a_kj510vlq" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                    <node concept="2OqwBi" id="a_kj510zNd" role="37wK5m">
                      <node concept="37vLTw" id="a_kj510wPi" role="2Oq$k0">
                        <ref role="3cqZAo" node="1lYY8Nv7aBZ" resolve="execScript" />
                      </node>
                      <node concept="liA8E" id="a_kj510AkD" role="2OqNvi">
                        <ref role="37wK5l" node="4kPdGMZT17X" resolve="getProjectUrl" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="a_kj50Xiuc" role="3cqZAp" />
            <node concept="3cpWs8" id="a_kj517box" role="3cqZAp">
              <node concept="3cpWsn" id="a_kj517bov" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="launchTestsMethod" />
                <node concept="3uibUv" id="a_kj517esB" role="1tU5fm">
                  <ref role="3uigEE" to="i5cy:~AtomicReference" resolve="AtomicReference" />
                  <node concept="3uibUv" id="a_kj517hen" role="11_B2D">
                    <ref role="3uigEE" to="t6h5:~Method" resolve="Method" />
                  </node>
                </node>
                <node concept="2ShNRf" id="a_kj517wye" role="33vP2m">
                  <node concept="1pGfFk" id="a_kj517ygH" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="i5cy:~AtomicReference.&lt;init&gt;(java.lang.Object)" resolve="AtomicReference" />
                    <node concept="10Nm6u" id="a_kj517BGo" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="a_kj517_wf" role="3cqZAp" />
            <node concept="3cpWs8" id="a_kj517STk" role="3cqZAp">
              <node concept="3cpWsn" id="a_kj517STl" role="3cpWs9">
                <property role="TrG5h" value="launcher" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="a_kj517RD6" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="1rXfSq" id="a_kj517STm" role="33vP2m">
                  <ref role="37wK5l" node="4iq05MkGqrC" resolve="instantiate" />
                  <node concept="37vLTw" id="a_kj517STn" role="37wK5m">
                    <ref role="3cqZAo" node="3hj1t46fgvv" resolve="env" />
                  </node>
                  <node concept="37vLTw" id="a_kj517STo" role="37wK5m">
                    <ref role="3cqZAo" node="1dWiSG6Y1Wv" resolve="testPlan" />
                  </node>
                  <node concept="37vLTw" id="a_kj517STp" role="37wK5m">
                    <ref role="3cqZAo" node="5mw3b8lQl51" resolve="wc" />
                  </node>
                  <node concept="37vLTw" id="a_kj517STq" role="37wK5m">
                    <ref role="3cqZAo" node="a_kj510lSp" resolve="projectDir" />
                  </node>
                  <node concept="37vLTw" id="a_kj51bMo_" role="37wK5m">
                    <ref role="3cqZAo" node="a_kj517bov" resolve="launchTestsMethod" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="a_kj50X8fz" role="3cqZAp" />
            <node concept="3SKdUt" id="5m2bsnpiSlo" role="3cqZAp">
              <node concept="1PaTwC" id="5m2bsnpiSlp" role="1aUNEU">
                <node concept="3oM_SD" id="5m2bsnpiTQJ" role="1PaTwD">
                  <property role="3oM_SC" value="FIXME" />
                </node>
                <node concept="3oM_SD" id="5m2bsnpiTWd" role="1PaTwD">
                  <property role="3oM_SC" value="similar" />
                </node>
                <node concept="3oM_SD" id="5m2bsnpiTRB" role="1PaTwD">
                  <property role="3oM_SC" value="override" />
                </node>
                <node concept="3oM_SD" id="5m2bsnpiTSx" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="5m2bsnpiTTw" role="1PaTwD">
                  <property role="3oM_SC" value="JUnitInProcessRunStarter," />
                </node>
                <node concept="3oM_SD" id="5m2bsnpiTT_" role="1PaTwD">
                  <property role="3oM_SC" value="need" />
                </node>
                <node concept="3oM_SD" id="5m2bsnpiTXb" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="5m2bsnpiTXj" role="1PaTwD">
                  <property role="3oM_SC" value="unify" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="1dWiSG749A2" role="3cqZAp">
              <node concept="1PaTwC" id="1dWiSG749A3" role="1aUNEU">
                <node concept="3oM_SD" id="1dWiSG749A4" role="1PaTwD">
                  <property role="3oM_SC" value="FIXME" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74b0X" role="1PaTwD">
                  <property role="3oM_SC" value="figure" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74b1Y" role="1PaTwD">
                  <property role="3oM_SC" value="out" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74b1Z" role="1PaTwD">
                  <property role="3oM_SC" value="if" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74b2f" role="1PaTwD">
                  <property role="3oM_SC" value="all" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74b2w" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74b30" role="1PaTwD">
                  <property role="3oM_SC" value="mangling" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74b3w" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74b6f" role="1PaTwD">
                  <property role="3oM_SC" value="stdout/stderr" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74b40" role="1PaTwD">
                  <property role="3oM_SC" value="output" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74b4w" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74b4x" role="1PaTwD">
                  <property role="3oM_SC" value="necessary," />
                </node>
                <node concept="3oM_SD" id="1dWiSG74b7H" role="1PaTwD">
                  <property role="3oM_SC" value="if" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74b7Y" role="1PaTwD">
                  <property role="3oM_SC" value="I" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74b8u" role="1PaTwD">
                  <property role="3oM_SC" value="can" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74b8v" role="1PaTwD">
                  <property role="3oM_SC" value="produce" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74b9f" role="1PaTwD">
                  <property role="3oM_SC" value="event" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74b9J" role="1PaTwD">
                  <property role="3oM_SC" value="by" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74ba0" role="1PaTwD">
                  <property role="3oM_SC" value="other" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74baw" role="1PaTwD">
                  <property role="3oM_SC" value="means" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74bfe" role="1PaTwD">
                  <property role="3oM_SC" value="(e.g." />
                </node>
                <node concept="3oM_SD" id="1dWiSG74bgH" role="1PaTwD">
                  <property role="3oM_SC" value="file" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74bhd" role="1PaTwD">
                  <property role="3oM_SC" value="or" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74bhu" role="1PaTwD">
                  <property role="3oM_SC" value="another" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74bhY" role="1PaTwD">
                  <property role="3oM_SC" value="stream/pipe?)" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="1dWiSG74esc" role="3cqZAp">
              <node concept="1PaTwC" id="1dWiSG74esd" role="1aUNEU">
                <node concept="3oM_SD" id="1dWiSG74fRa" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74fRE" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74fRW" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74fRX" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74fRY" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74fSf" role="1PaTwD">
                  <property role="3oM_SC" value="anyway," />
                </node>
                <node concept="3oM_SD" id="1dWiSG74fSJ" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74fWr" role="1PaTwD">
                  <property role="3oM_SC" value="exec" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74fWs" role="1PaTwD">
                  <property role="3oM_SC" value="listener" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74fWW" role="1PaTwD">
                  <property role="3oM_SC" value="that" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74fWX" role="1PaTwD">
                  <property role="3oM_SC" value="dumps" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74fXX" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74fXY" role="1PaTwD">
                  <property role="3oM_SC" value="stdout/another" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74fZG" role="1PaTwD">
                  <property role="3oM_SC" value="stream" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74g1r" role="1PaTwD">
                  <property role="3oM_SC" value="could" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74g1V" role="1PaTwD">
                  <property role="3oM_SC" value="be" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74g1W" role="1PaTwD">
                  <property role="3oM_SC" value="part" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74g2c" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74gdm" role="1PaTwD">
                  <property role="3oM_SC" value="lang.test.junit5," />
                </node>
                <node concept="3oM_SD" id="1dWiSG74gfl" role="1PaTwD">
                  <property role="3oM_SC" value="turned" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74glI" role="1PaTwD">
                  <property role="3oM_SC" value="on" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74glY" role="1PaTwD">
                  <property role="3oM_SC" value="by" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74gmf" role="1PaTwD">
                  <property role="3oM_SC" value="simple" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74gmv" role="1PaTwD">
                  <property role="3oM_SC" value="call" />
                </node>
                <node concept="3oM_SD" id="1dWiSG74gmK" role="1PaTwD">
                  <property role="3oM_SC" value="`mpsStdoutReport()`" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6WFPrF9S9jF" role="3cqZAp">
              <node concept="3cpWsn" id="6WFPrF9S9jG" role="3cpWs9">
                <property role="TrG5h" value="exec" />
                <node concept="3uibUv" id="6WFPrF9S9jE" role="1tU5fm">
                  <ref role="3uigEE" node="5Ti9jVZ8rCq" resolve="TestExecutor" />
                </node>
                <node concept="2ShNRf" id="a_kj50ZEBF" role="33vP2m">
                  <node concept="YeOm9" id="a_kj50ZRX$" role="2ShVmc">
                    <node concept="1Y3b0j" id="a_kj50ZRXB" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" node="4iq05MkydUo" resolve="AbstractJUnitTestMixin" />
                      <ref role="1Y3XeK" node="4iq05MkwMhJ" resolve="AbstractJUnitTestMixin" />
                      <node concept="3Tm1VV" id="a_kj50ZRXC" role="1B3o_S" />
                      <node concept="3clFbT" id="a_kj50ZP1m" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="3clFb_" id="a_kj50ZVGl" role="jymVt">
                        <property role="TrG5h" value="executeSafe" />
                        <node concept="3Tmbuc" id="a_kj50ZVGm" role="1B3o_S" />
                        <node concept="3cqZAl" id="a_kj50ZVGn" role="3clF45" />
                        <node concept="3uibUv" id="a_kj50ZVGp" role="Sfmx6">
                          <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                        </node>
                        <node concept="3clFbS" id="a_kj50ZVGr" role="3clF47">
                          <node concept="3cpWs8" id="a_kj51cdAi" role="3cqZAp">
                            <node concept="3cpWsn" id="a_kj51cdAj" role="3cpWs9">
                              <property role="TrG5h" value="listener" />
                              <property role="3TUv4t" value="true" />
                              <node concept="3uibUv" id="a_kj51cdAk" role="1tU5fm">
                                <ref role="3uigEE" node="6maaEP0G01l" resolve="DefaultTestExecutionListener" />
                              </node>
                              <node concept="2ShNRf" id="2Uys8qoqW4G" role="33vP2m">
                                <node concept="YeOm9" id="a_kj51cdAl" role="2ShVmc">
                                  <node concept="1Y3b0j" id="a_kj51cdAm" role="YeSDq">
                                    <property role="2bfB8j" value="true" />
                                    <property role="373rjd" value="true" />
                                    <ref role="37wK5l" node="6maaEP0G6k$" resolve="DefaultTestExecutionListener" />
                                    <ref role="1Y3XeK" node="6maaEP0G01l" resolve="DefaultTestExecutionListener" />
                                    <node concept="3Tm1VV" id="a_kj51cdAn" role="1B3o_S" />
                                    <node concept="37vLTw" id="a_kj51cdAo" role="37wK5m">
                                      <ref role="3cqZAo" node="6WFPrF9Qc1B" resolve="myOutStream" />
                                    </node>
                                    <node concept="3clFb_" id="a_kj51cdAp" role="jymVt">
                                      <property role="TrG5h" value="flush" />
                                      <node concept="3Tmbuc" id="a_kj51cdAq" role="1B3o_S" />
                                      <node concept="3cqZAl" id="a_kj51cdAr" role="3clF45" />
                                      <node concept="3clFbS" id="a_kj51cdAs" role="3clF47">
                                        <node concept="3SKdUt" id="a_kj51cdAt" role="3cqZAp">
                                          <node concept="1PaTwC" id="a_kj51cdAu" role="1aUNEU">
                                            <node concept="3oM_SD" id="a_kj51cdAv" role="1PaTwD">
                                              <property role="3oM_SC" value="NOP:" />
                                            </node>
                                            <node concept="3oM_SD" id="a_kj51cdAw" role="1PaTwD">
                                              <property role="3oM_SC" value="avoid" />
                                            </node>
                                            <node concept="3oM_SD" id="a_kj51cdAx" role="1PaTwD">
                                              <property role="3oM_SC" value="attempting" />
                                            </node>
                                            <node concept="3oM_SD" id="a_kj51cdAy" role="1PaTwD">
                                              <property role="3oM_SC" value="to" />
                                            </node>
                                            <node concept="3oM_SD" id="a_kj51cdAz" role="1PaTwD">
                                              <property role="3oM_SC" value="flush" />
                                            </node>
                                            <node concept="3oM_SD" id="a_kj51cdA$" role="1PaTwD">
                                              <property role="3oM_SC" value="stdout/stderr" />
                                            </node>
                                            <node concept="3oM_SD" id="a_kj51cdA_" role="1PaTwD">
                                              <property role="3oM_SC" value="in" />
                                            </node>
                                            <node concept="3oM_SD" id="a_kj51cdAA" role="1PaTwD">
                                              <property role="3oM_SC" value="order" />
                                            </node>
                                            <node concept="3oM_SD" id="a_kj51cdAB" role="1PaTwD">
                                              <property role="3oM_SC" value="not" />
                                            </node>
                                            <node concept="3oM_SD" id="a_kj51cdAC" role="1PaTwD">
                                              <property role="3oM_SC" value="to" />
                                            </node>
                                            <node concept="3oM_SD" id="a_kj51cdAD" role="1PaTwD">
                                              <property role="3oM_SC" value="deadlock;" />
                                            </node>
                                            <node concept="3oM_SD" id="a_kj51cdAE" role="1PaTwD">
                                              <property role="3oM_SC" value="MPS-37852" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="2AHcQZ" id="a_kj51cdAF" role="2AJF6D">
                                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="a_kj5189YN" role="3cqZAp">
                            <node concept="2OqwBi" id="a_kj518hhk" role="3clFbG">
                              <node concept="2OqwBi" id="a_kj518bbD" role="2Oq$k0">
                                <node concept="37vLTw" id="a_kj5189YL" role="2Oq$k0">
                                  <ref role="3cqZAo" node="a_kj517bov" resolve="launchTestsMethod" />
                                </node>
                                <node concept="liA8E" id="a_kj518dKg" role="2OqNvi">
                                  <ref role="37wK5l" to="i5cy:~AtomicReference.get()" resolve="get" />
                                </node>
                              </node>
                              <node concept="liA8E" id="a_kj518jrS" role="2OqNvi">
                                <ref role="37wK5l" to="t6h5:~Method.invoke(java.lang.Object,java.lang.Object...)" resolve="invoke" />
                                <node concept="37vLTw" id="a_kj518lr4" role="37wK5m">
                                  <ref role="3cqZAo" node="a_kj517STl" resolve="launcher" />
                                </node>
                                <node concept="37vLTw" id="a_kj51ciPt" role="37wK5m">
                                  <ref role="3cqZAo" node="a_kj51cdAj" resolve="listener" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1X3_iC" id="a_kj51f5E1" role="lGtFl">
                            <property role="3V$3am" value="statement" />
                            <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                            <node concept="3clFbJ" id="a_kj51edzh" role="8Wnug">
                              <node concept="3clFbS" id="a_kj51edzj" role="3clFbx">
                                <node concept="3clFbF" id="a_kj51etCu" role="3cqZAp">
                                  <node concept="1rXfSq" id="a_kj51etCs" role="3clFbG">
                                    <ref role="37wK5l" node="4br3RNOLXja" resolve="processThrowable" />
                                    <node concept="2OqwBi" id="a_kj51eBMe" role="37wK5m">
                                      <node concept="2OqwBi" id="a_kj51e$eU" role="2Oq$k0">
                                        <node concept="37vLTw" id="a_kj51exfk" role="2Oq$k0">
                                          <ref role="3cqZAo" node="a_kj51dkGg" resolve="fatalEx" />
                                        </node>
                                        <node concept="liA8E" id="a_kj51eArP" role="2OqNvi">
                                          <ref role="37wK5l" to="i5cy:~AtomicReference.get()" resolve="get" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="a_kj51eFyw" role="2OqNvi">
                                        <ref role="37wK5l" to="wyt6:~Throwable.getCause()" resolve="getCause" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="1Wc70l" id="a_kj51eHpB" role="3clFbw">
                                <node concept="3y3z36" id="a_kj51eYD7" role="3uHU7w">
                                  <node concept="10Nm6u" id="a_kj51f0wy" role="3uHU7w" />
                                  <node concept="2OqwBi" id="a_kj51eTd_" role="3uHU7B">
                                    <node concept="2OqwBi" id="a_kj51eN4c" role="2Oq$k0">
                                      <node concept="37vLTw" id="a_kj51eJmD" role="2Oq$k0">
                                        <ref role="3cqZAo" node="a_kj51dkGg" resolve="fatalEx" />
                                      </node>
                                      <node concept="liA8E" id="a_kj51eQ$B" role="2OqNvi">
                                        <ref role="37wK5l" to="i5cy:~AtomicReference.get()" resolve="get" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="a_kj51eW_i" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~Throwable.getCause()" resolve="getCause" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3y3z36" id="a_kj51eocX" role="3uHU7B">
                                  <node concept="2OqwBi" id="a_kj51ekjc" role="3uHU7B">
                                    <node concept="37vLTw" id="a_kj51eh9a" role="2Oq$k0">
                                      <ref role="3cqZAo" node="a_kj51dkGg" resolve="fatalEx" />
                                    </node>
                                    <node concept="liA8E" id="a_kj51ema5" role="2OqNvi">
                                      <ref role="37wK5l" to="i5cy:~AtomicReference.get()" resolve="get" />
                                    </node>
                                  </node>
                                  <node concept="10Nm6u" id="a_kj51erQY" role="3uHU7w" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="4F7vylNsLQz" role="3cqZAp">
                            <node concept="37vLTI" id="4F7vylNsQ_6" role="3clFbG">
                              <node concept="37vLTw" id="4F7vylNsLQx" role="37vLTJ">
                                <ref role="3cqZAo" node="4br3RNOLtwz" resolve="myFailureCount" />
                              </node>
                              <node concept="2OqwBi" id="4F7vylNsESL" role="37vLTx">
                                <node concept="37vLTw" id="4F7vylNsCSc" role="2Oq$k0">
                                  <ref role="3cqZAo" node="a_kj51cdAj" resolve="listener" />
                                </node>
                                <node concept="liA8E" id="4F7vylNsIfe" role="2OqNvi">
                                  <ref role="37wK5l" node="2NMjZ1W$mqU" resolve="getFailuresCount" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="a_kj50ZVGs" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4yT2m3dj5HM" role="3cqZAp" />
            <node concept="3clFbF" id="5TX$EBEa6OB" role="3cqZAp">
              <node concept="2YIFZM" id="5TX$EBEa7PM" role="3clFbG">
                <ref role="37wK5l" node="7rIOKY4hPSv" resolve="runAndQuit" />
                <ref role="1Pybhc" node="56tRMpP_bxe" resolve="DefaultTestExecutor" />
                <node concept="37vLTw" id="5TX$EBEa8Je" role="37wK5m">
                  <ref role="3cqZAo" node="6WFPrF9S9jG" resolve="exec" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="a_kj51fbZh" role="3cqZAp">
              <node concept="3clFbS" id="a_kj51fbZj" role="3clFbx">
                <node concept="YS8fn" id="a_kj51frIV" role="3cqZAp">
                  <node concept="2OqwBi" id="a_kj51f$H5" role="YScLw">
                    <node concept="37vLTw" id="a_kj51fyP2" role="2Oq$k0">
                      <ref role="3cqZAo" node="a_kj51dkGg" resolve="fatalEx" />
                    </node>
                    <node concept="liA8E" id="a_kj51fBio" role="2OqNvi">
                      <ref role="37wK5l" to="i5cy:~AtomicReference.get()" resolve="get" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="a_kj51fmk9" role="3clFbw">
                <node concept="10Nm6u" id="a_kj51fo9P" role="3uHU7w" />
                <node concept="2OqwBi" id="a_kj51fgnW" role="3uHU7B">
                  <node concept="37vLTw" id="a_kj51fe9L" role="2Oq$k0">
                    <ref role="3cqZAo" node="a_kj51dkGg" resolve="fatalEx" />
                  </node>
                  <node concept="liA8E" id="a_kj51fkgd" role="2OqNvi">
                    <ref role="37wK5l" to="i5cy:~AtomicReference.get()" resolve="get" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2RMg39tndeS" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="2RMg39tndeT" role="1tU5fm">
          <node concept="17QB3L" id="2RMg39tndeU" role="10Q1$1" />
        </node>
      </node>
      <node concept="P$JXv" id="6HElkBZJge8" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsBIR" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBIS" role="1PaTwD">
            <property role="3oM_SC" value="Called" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBIT" role="1PaTwD">
            <property role="3oM_SC" value="when" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBIU" role="1PaTwD">
            <property role="3oM_SC" value="ITestCase" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBIV" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBIW" role="1PaTwD">
            <property role="3oM_SC" value="executed" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBIX" role="1PaTwD">
            <property role="3oM_SC" value="(except" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBIY" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBIZ" role="1PaTwD">
            <property role="3oM_SC" value="BTestCase)" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsBJ0" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBJ1" role="1PaTwD">
            <property role="3oM_SC" value="Basically," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBJ2" role="1PaTwD">
            <property role="3oM_SC" value="all" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBJ3" role="1PaTwD">
            <property role="3oM_SC" value="we" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBJ4" role="1PaTwD">
            <property role="3oM_SC" value="do" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBJ5" role="1PaTwD">
            <property role="3oM_SC" value="here" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBJ6" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBJ7" role="1PaTwD">
            <property role="3oM_SC" value="start" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBJ8" role="1PaTwD">
            <property role="3oM_SC" value="platform" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBJ9" role="1PaTwD">
            <property role="3oM_SC" value="(IDEA" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBJa" role="1PaTwD">
            <property role="3oM_SC" value="env)" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBJb" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBJc" role="1PaTwD">
            <property role="3oM_SC" value="switch" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBJd" role="1PaTwD">
            <property role="3oM_SC" value="control" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBJe" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBJf" role="1PaTwD">
            <property role="3oM_SC" value="MPS-managed" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBJg" role="1PaTwD">
            <property role="3oM_SC" value="code" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBJh" role="1PaTwD">
            <property role="3oM_SC" value="(much" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBJi" role="1PaTwD">
            <property role="3oM_SC" value="like" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBJj" role="1PaTwD">
            <property role="3oM_SC" value="LaunchTestWorker" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBJk" role="1PaTwD">
            <property role="3oM_SC" value="does)" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1lYY8Nv7Ilf" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
    <node concept="2tJIrI" id="5vTxdEzGcbI" role="jymVt" />
    <node concept="2YIFZL" id="1_D5Bk1Sx1w" role="jymVt">
      <property role="TrG5h" value="startIdea" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="1_D5Bk1Sx1z" role="3clF47">
        <node concept="3SKdUt" id="a_kj51hvVT" role="3cqZAp">
          <node concept="1PaTwC" id="a_kj51hvVU" role="1aUNEU">
            <node concept="3oM_SD" id="a_kj51hvVV" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="a_kj51hvYV" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="a_kj51hxSo" role="1PaTwD">
              <property role="3oM_SC" value="quite" />
            </node>
            <node concept="3oM_SD" id="a_kj51hzFD" role="1PaTwD">
              <property role="3oM_SC" value="similar" />
            </node>
            <node concept="3oM_SD" id="a_kj51h$9g" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="a_kj51h$ij" role="1PaTwD">
              <property role="3oM_SC" value="LaunchTestWorker," />
            </node>
            <node concept="3oM_SD" id="a_kj51h_A0" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="a_kj51h_G6" role="1PaTwD">
              <property role="3oM_SC" value="wonder" />
            </node>
            <node concept="3oM_SD" id="a_kj51hA0M" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="a_kj51hA9E" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="a_kj51hAxA" role="1PaTwD">
              <property role="3oM_SC" value="could" />
            </node>
            <node concept="3oM_SD" id="a_kj51hATu" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="a_kj51hB5u" role="1PaTwD">
              <property role="3oM_SC" value="LaunchTestWorker" />
            </node>
            <node concept="3oM_SD" id="a_kj51hCHQ" role="1PaTwD">
              <property role="3oM_SC" value="instead" />
            </node>
            <node concept="3oM_SD" id="a_kj51hD5E" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="a_kj51hDey" role="1PaTwD">
              <property role="3oM_SC" value="WithPlatformTestExecutor?" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1_D5Bk1SzbV" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXoepI" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXoepJ" role="1PaTwD">
              <property role="3oM_SC" value="XXX" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoepK" role="1PaTwD">
              <property role="3oM_SC" value="would" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoepL" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoepM" role="1PaTwD">
              <property role="3oM_SC" value="great" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoepN" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoepO" role="1PaTwD">
              <property role="3oM_SC" value="have" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoepP" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoepQ" role="1PaTwD">
              <property role="3oM_SC" value="code" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoepR" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoepS" role="1PaTwD">
              <property role="3oM_SC" value="part" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoepT" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoepU" role="1PaTwD">
              <property role="3oM_SC" value="init()" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoepV" role="1PaTwD">
              <property role="3oM_SC" value="method," />
            </node>
            <node concept="3oM_SD" id="ATZLwXoepW" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoepX" role="1PaTwD">
              <property role="3oM_SC" value="it's" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoepY" role="1PaTwD">
              <property role="3oM_SC" value="too" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoepZ" role="1PaTwD">
              <property role="3oM_SC" value="much" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeq0" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeq1" role="1PaTwD">
              <property role="3oM_SC" value="refactoring" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeq2" role="1PaTwD">
              <property role="3oM_SC" value="now." />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeq3" role="1PaTwD">
              <property role="3oM_SC" value="Shall" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeq4" role="1PaTwD">
              <property role="3oM_SC" value="drop" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeq5" role="1PaTwD">
              <property role="3oM_SC" value="init/dispose" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeq6" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeq7" role="1PaTwD">
              <property role="3oM_SC" value="TestExecutor." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1_D5Bk1SJqQ" role="3cqZAp">
          <node concept="3cpWsn" id="1_D5Bk1SJqR" role="3cpWs9">
            <property role="TrG5h" value="cfg" />
            <node concept="3uibUv" id="1_D5Bk1SJqP" role="1tU5fm">
              <ref role="3uigEE" to="79ha:6rx4kZDk5A9" resolve="EnvironmentConfig" />
            </node>
            <node concept="2OqwBi" id="465rK6MACJ5" role="33vP2m">
              <node concept="2OqwBi" id="465rK6MAAy7" role="2Oq$k0">
                <node concept="2YIFZM" id="465rK6MA_E9" role="2Oq$k0">
                  <ref role="37wK5l" to="79ha:3YQ3dO9lg_M" resolve="emptyConfig" />
                  <ref role="1Pybhc" to="79ha:6rx4kZDk5A9" resolve="EnvironmentConfig" />
                </node>
                <node concept="liA8E" id="465rK6MABsa" role="2OqNvi">
                  <ref role="37wK5l" to="79ha:5mza6QqhjgL" resolve="withBootstrapLibraries" />
                </node>
              </node>
              <node concept="liA8E" id="465rK6MAEdz" role="2OqNvi">
                <ref role="37wK5l" to="79ha:5hfNQWynXUe" resolve="withWorkbenchPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5P325eDqTzw" role="3cqZAp">
          <node concept="3clFbS" id="5P325eDqTzy" role="3clFbx">
            <node concept="3clFbF" id="5P325eDx2t_" role="3cqZAp">
              <node concept="37vLTI" id="5P325eDwuWg" role="3clFbG">
                <node concept="2OqwBi" id="5P325eDw$kr" role="37vLTx">
                  <node concept="37vLTw" id="5P325eDwxAo" role="2Oq$k0">
                    <ref role="3cqZAo" node="1_D5Bk1SJqR" resolve="cfg" />
                  </node>
                  <node concept="liA8E" id="5P325eDwCCc" role="2OqNvi">
                    <ref role="37wK5l" to="79ha:7YybdScOBt7" resolve="withAutomaticPluginDiscovery" />
                  </node>
                </node>
                <node concept="37vLTw" id="5P325eDwqRi" role="37vLTJ">
                  <ref role="3cqZAo" node="1_D5Bk1SJqR" resolve="cfg" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="465rK6MAIXx" role="3clFbw">
            <node concept="37vLTw" id="5P325eDqVbU" role="2Oq$k0">
              <ref role="3cqZAo" node="1lYY8Nv7NGc" resolve="startupArguments" />
            </node>
            <node concept="liA8E" id="465rK6MAK7V" role="2OqNvi">
              <ref role="37wK5l" to="asz6:5P325eDszMb" resolve="getAutomaticPLuginDiscoveryMode" />
            </node>
          </node>
          <node concept="9aQIb" id="5P325eDxfI3" role="9aQIa">
            <node concept="3clFbS" id="5P325eDxfI4" role="9aQI4">
              <node concept="3clFbF" id="5P325eDxfIG" role="3cqZAp">
                <node concept="37vLTI" id="5P325eDxieb" role="3clFbG">
                  <node concept="2OqwBi" id="10LLDHmgv$5" role="37vLTx">
                    <node concept="2OqwBi" id="5P325eDxnBr" role="2Oq$k0">
                      <node concept="37vLTw" id="5P325eDxkSx" role="2Oq$k0">
                        <ref role="3cqZAo" node="1_D5Bk1SJqR" resolve="cfg" />
                      </node>
                      <node concept="liA8E" id="5P325eDxsjw" role="2OqNvi">
                        <ref role="37wK5l" to="79ha:5UWB9tiBhc" resolve="withDefaultPlugins" />
                      </node>
                    </node>
                    <node concept="liA8E" id="10LLDHmgyho" role="2OqNvi">
                      <ref role="37wK5l" to="79ha:2btCvgzFoBq" resolve="withTestingPlugin" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="5P325eDxfIF" role="37vLTJ">
                    <ref role="3cqZAo" node="1_D5Bk1SJqR" resolve="cfg" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="465rK6MAF8f" role="3cqZAp" />
        <node concept="3SKdUt" id="6fYV1N68T1c" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXoeq8" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXoeq9" role="1PaTwD">
              <property role="3oM_SC" value="Same" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqa" role="1PaTwD">
              <property role="3oM_SC" value="code" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqb" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqc" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqd" role="1PaTwD">
              <property role="3oM_SC" value="MpsWorker," />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqe" role="1PaTwD">
              <property role="3oM_SC" value="we'd" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqf" role="1PaTwD">
              <property role="3oM_SC" value="better" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqg" role="1PaTwD">
              <property role="3oM_SC" value="share" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqh" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6fYV1N68TFV" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXoeqi" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXoeqj" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqk" role="1PaTwD">
              <property role="3oM_SC" value="Though" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeql" role="1PaTwD">
              <property role="3oM_SC" value="technically" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqm" role="1PaTwD">
              <property role="3oM_SC" value="dependency" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqn" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqo" role="1PaTwD">
              <property role="3oM_SC" value="MpsWorker" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqp" role="1PaTwD">
              <property role="3oM_SC" value="(j.m.tool.builder)" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqq" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqr" role="1PaTwD">
              <property role="3oM_SC" value="possible" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqs" role="1PaTwD">
              <property role="3oM_SC" value="here," />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqt" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoequ" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqv" role="1PaTwD">
              <property role="3oM_SC" value="want" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqw" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqx" role="1PaTwD">
              <property role="3oM_SC" value="yet" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqy" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqz" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeq$" role="1PaTwD">
              <property role="3oM_SC" value="plan" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeq_" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqA" role="1PaTwD">
              <property role="3oM_SC" value="split" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqB" role="1PaTwD">
              <property role="3oM_SC" value="Ant/JUnit" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqC" role="1PaTwD">
              <property role="3oM_SC" value="stuff" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqD" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqE" role="1PaTwD">
              <property role="3oM_SC" value="environment-related" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqF" role="1PaTwD">
              <property role="3oM_SC" value="stuff" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoeqG" role="1PaTwD">
              <property role="3oM_SC" value="there." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6fYV1N68Z_h" role="3cqZAp">
          <node concept="3cpWsn" id="6fYV1N68Z_i" role="3cpWs9">
            <property role="TrG5h" value="rd" />
            <node concept="3uibUv" id="6fYV1N68Z_8" role="1tU5fm">
              <ref role="3uigEE" to="asz6:6aGZllYQgzH" resolve="RepositoryDescriptor" />
            </node>
            <node concept="2OqwBi" id="6fYV1N68Z_j" role="33vP2m">
              <node concept="37vLTw" id="6fYV1N68Z_k" role="2Oq$k0">
                <ref role="3cqZAo" node="1lYY8Nv7NGc" resolve="startupArguments" />
              </node>
              <node concept="liA8E" id="6fYV1N68Z_l" role="2OqNvi">
                <ref role="37wK5l" to="asz6:6aGZllYU5b8" resolve="getRepo" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6fYV1N690lR" role="3cqZAp">
          <node concept="3clFbS" id="6fYV1N690lT" role="3clFbx">
            <node concept="2Gpval" id="6fYV1N6949t" role="3cqZAp">
              <node concept="2GrKxI" id="6fYV1N6949z" role="2Gsz3X">
                <property role="TrG5h" value="f" />
              </node>
              <node concept="2OqwBi" id="6fYV1N694jC" role="2GsD0m">
                <node concept="37vLTw" id="6fYV1N694bU" role="2Oq$k0">
                  <ref role="3cqZAo" node="6fYV1N68Z_i" resolve="rd" />
                </node>
                <node concept="2OwXpG" id="6fYV1N694qX" role="2OqNvi">
                  <ref role="2Oxat5" to="asz6:6aGZllYQuUJ" resolve="folders" />
                </node>
              </node>
              <node concept="3clFbS" id="6fYV1N6949J" role="2LFqv$">
                <node concept="3SKdUt" id="6fYV1N69bHx" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXoeqH" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXoeqI" role="1PaTwD">
                      <property role="3oM_SC" value="MpsWorker" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoeqJ" role="1PaTwD">
                      <property role="3oM_SC" value="does" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoeqK" role="1PaTwD">
                      <property role="3oM_SC" value="existence" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoeqL" role="1PaTwD">
                      <property role="3oM_SC" value="check" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoeqM" role="1PaTwD">
                      <property role="3oM_SC" value="here," />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoeqN" role="1PaTwD">
                      <property role="3oM_SC" value="do" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoeqO" role="1PaTwD">
                      <property role="3oM_SC" value="I" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXoeqP" role="1PaTwD">
                      <property role="3oM_SC" value="care?" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6fYV1N69a3L" role="3cqZAp">
                  <node concept="2OqwBi" id="6fYV1N69a8u" role="3clFbG">
                    <node concept="37vLTw" id="6fYV1N69a3J" role="2Oq$k0">
                      <ref role="3cqZAo" node="1_D5Bk1SJqR" resolve="cfg" />
                    </node>
                    <node concept="liA8E" id="6fYV1N69alz" role="2OqNvi">
                      <ref role="37wK5l" to="79ha:6rx4kZDk8ph" resolve="addLib" />
                      <node concept="2GrUjf" id="6fYV1N69aoX" role="37wK5m">
                        <ref role="2Gs0qQ" node="6fYV1N6949z" resolve="f" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="6fYV1N69aD_" role="3cqZAp">
              <node concept="2GrKxI" id="6fYV1N69aDB" role="2Gsz3X">
                <property role="TrG5h" value="f" />
              </node>
              <node concept="2OqwBi" id="6fYV1N69aXe" role="2GsD0m">
                <node concept="37vLTw" id="6fYV1N69aR1" role="2Oq$k0">
                  <ref role="3cqZAo" node="6fYV1N68Z_i" resolve="rd" />
                </node>
                <node concept="2OwXpG" id="6fYV1N69b4n" role="2OqNvi">
                  <ref role="2Oxat5" to="asz6:6aGZllYQt7F" resolve="files" />
                </node>
              </node>
              <node concept="3clFbS" id="6fYV1N69aDF" role="2LFqv$">
                <node concept="3clFbF" id="6fYV1N69bfc" role="3cqZAp">
                  <node concept="2OqwBi" id="6fYV1N69blq" role="3clFbG">
                    <node concept="37vLTw" id="6fYV1N69bfb" role="2Oq$k0">
                      <ref role="3cqZAo" node="1_D5Bk1SJqR" resolve="cfg" />
                    </node>
                    <node concept="liA8E" id="6fYV1N69bsd" role="2OqNvi">
                      <ref role="37wK5l" to="79ha:6rx4kZDk8ph" resolve="addLib" />
                      <node concept="2GrUjf" id="6fYV1N69bvF" role="37wK5m">
                        <ref role="2Gs0qQ" node="6fYV1N69aDB" resolve="f" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6fYV1N690V1" role="3clFbw">
            <node concept="10Nm6u" id="6fYV1N6914L" role="3uHU7w" />
            <node concept="37vLTw" id="6fYV1N690G2" role="3uHU7B">
              <ref role="3cqZAo" node="6fYV1N68Z_i" resolve="rd" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6fYV1N69EXy" role="3cqZAp">
          <node concept="2GrKxI" id="6fYV1N69EX$" role="2Gsz3X">
            <property role="TrG5h" value="l" />
          </node>
          <node concept="2OqwBi" id="6fYV1N69Gyv" role="2GsD0m">
            <node concept="37vLTw" id="6fYV1N69G1G" role="2Oq$k0">
              <ref role="3cqZAo" node="1lYY8Nv7NGc" resolve="startupArguments" />
            </node>
            <node concept="liA8E" id="6fYV1N69H8X" role="2OqNvi">
              <ref role="37wK5l" to="asz6:KL8Aql8eO5" resolve="getLibraries" />
            </node>
          </node>
          <node concept="3clFbS" id="6fYV1N69EXC" role="2LFqv$">
            <node concept="3clFbF" id="6fYV1N69KA3" role="3cqZAp">
              <node concept="2OqwBi" id="6fYV1N69KEK" role="3clFbG">
                <node concept="37vLTw" id="6fYV1N69KA2" role="2Oq$k0">
                  <ref role="3cqZAo" node="1_D5Bk1SJqR" resolve="cfg" />
                </node>
                <node concept="liA8E" id="6fYV1N69KNG" role="2OqNvi">
                  <ref role="37wK5l" to="79ha:6rx4kZDk8ph" resolve="addLib" />
                  <node concept="2OqwBi" id="6fYV1N69QJf" role="37wK5m">
                    <node concept="2OqwBi" id="6fYV1N69Mve" role="2Oq$k0">
                      <node concept="2GrUjf" id="6fYV1N69Mki" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="6fYV1N69EX$" resolve="l" />
                      </node>
                      <node concept="3AV6Ez" id="6fYV1N69Ndx" role="2OqNvi" />
                    </node>
                    <node concept="liA8E" id="6fYV1N69RXw" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6fYV1N69WQY" role="3cqZAp">
          <node concept="2GrKxI" id="6fYV1N69WQZ" role="2Gsz3X">
            <property role="TrG5h" value="l" />
          </node>
          <node concept="2OqwBi" id="6fYV1N69WR0" role="2GsD0m">
            <node concept="37vLTw" id="6fYV1N69WR1" role="2Oq$k0">
              <ref role="3cqZAo" node="1lYY8Nv7NGc" resolve="startupArguments" />
            </node>
            <node concept="liA8E" id="6fYV1N69WR2" role="2OqNvi">
              <ref role="37wK5l" to="asz6:6tzA4yInV2z" resolve="getLibraryJars" />
            </node>
          </node>
          <node concept="3clFbS" id="6fYV1N69WR3" role="2LFqv$">
            <node concept="3clFbF" id="6fYV1N69WR4" role="3cqZAp">
              <node concept="2OqwBi" id="6fYV1N69WR5" role="3clFbG">
                <node concept="37vLTw" id="6fYV1N69WR6" role="2Oq$k0">
                  <ref role="3cqZAo" node="1_D5Bk1SJqR" resolve="cfg" />
                </node>
                <node concept="liA8E" id="6fYV1N69WR7" role="2OqNvi">
                  <ref role="37wK5l" to="79ha:6rx4kZDk8ph" resolve="addLib" />
                  <node concept="2GrUjf" id="6fYV1N69Y_3" role="37wK5m">
                    <ref role="2Gs0qQ" node="6fYV1N69WQZ" resolve="l" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="3qbI1lNmrVt" role="3cqZAp">
          <node concept="2GrKxI" id="3qbI1lNmrVu" role="2Gsz3X">
            <property role="TrG5h" value="p" />
          </node>
          <node concept="2OqwBi" id="3qbI1lNmrVv" role="2GsD0m">
            <node concept="37vLTw" id="3qbI1lNmrVw" role="2Oq$k0">
              <ref role="3cqZAo" node="1lYY8Nv7NGc" resolve="startupArguments" />
            </node>
            <node concept="liA8E" id="3qbI1lNmtTi" role="2OqNvi">
              <ref role="37wK5l" to="asz6:r$A3E5taIM" resolve="getPlugins" />
            </node>
          </node>
          <node concept="3clFbS" id="3qbI1lNmrVy" role="2LFqv$">
            <node concept="3clFbF" id="3qbI1lNmrVz" role="3cqZAp">
              <node concept="2OqwBi" id="3qbI1lNmrV$" role="3clFbG">
                <node concept="37vLTw" id="3qbI1lNmrV_" role="2Oq$k0">
                  <ref role="3cqZAo" node="1_D5Bk1SJqR" resolve="cfg" />
                </node>
                <node concept="liA8E" id="3qbI1lNmrVA" role="2OqNvi">
                  <ref role="37wK5l" to="79ha:6rx4kZDk6GC" resolve="addPlugin" />
                  <node concept="2OqwBi" id="3qbI1lNmwxM" role="37wK5m">
                    <node concept="2GrUjf" id="3qbI1lNmrVB" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="3qbI1lNmrVu" resolve="p" />
                    </node>
                    <node concept="2OwXpG" id="3qbI1lNmIP1" role="2OqNvi">
                      <ref role="2Oxat5" to="asz6:QkG2t1bxbe" resolve="path" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3qbI1lNmKlc" role="37wK5m">
                    <node concept="2GrUjf" id="3qbI1lNmJDc" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="3qbI1lNmrVu" resolve="p" />
                    </node>
                    <node concept="2OwXpG" id="3qbI1lNn7lr" role="2OqNvi">
                      <ref role="2Oxat5" to="asz6:r$A3E5qOHV" resolve="id" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6fYV1N69lSk" role="3cqZAp">
          <node concept="2GrKxI" id="6fYV1N69lSm" role="2Gsz3X">
            <property role="TrG5h" value="m" />
          </node>
          <node concept="2OqwBi" id="6fYV1N69neF" role="2GsD0m">
            <node concept="37vLTw" id="6fYV1N69nKP" role="2Oq$k0">
              <ref role="3cqZAo" node="1lYY8Nv7NGc" resolve="startupArguments" />
            </node>
            <node concept="liA8E" id="6fYV1N69odp" role="2OqNvi">
              <ref role="37wK5l" to="asz6:KL8Aql8eNz" resolve="getMacros" />
            </node>
          </node>
          <node concept="3clFbS" id="6fYV1N69lSq" role="2LFqv$">
            <node concept="3clFbF" id="6fYV1N69wJs" role="3cqZAp">
              <node concept="2OqwBi" id="6fYV1N69wO9" role="3clFbG">
                <node concept="37vLTw" id="6fYV1N69wJr" role="2Oq$k0">
                  <ref role="3cqZAo" node="1_D5Bk1SJqR" resolve="cfg" />
                </node>
                <node concept="liA8E" id="6fYV1N69x1e" role="2OqNvi">
                  <ref role="37wK5l" to="79ha:6rx4kZDk6LY" resolve="addMacro" />
                  <node concept="2OqwBi" id="6fYV1N69x4u" role="37wK5m">
                    <node concept="2GrUjf" id="6fYV1N69x43" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="6fYV1N69lSm" resolve="m" />
                    </node>
                    <node concept="3AY5_j" id="6fYV1N69xI7" role="2OqNvi" />
                  </node>
                  <node concept="2ShNRf" id="6fYV1N69_8R" role="37wK5m">
                    <node concept="1pGfFk" id="6fYV1N69A4f" role="2ShVmc">
                      <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                      <node concept="2OqwBi" id="6fYV1N69z6U" role="37wK5m">
                        <node concept="2GrUjf" id="6fYV1N69yzF" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="6fYV1N69lSm" resolve="m" />
                        </node>
                        <node concept="3AV6Ez" id="6fYV1N69zLr" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1_D5Bk1SxuX" role="3cqZAp">
          <node concept="3cpWsn" id="1_D5Bk1SxuY" role="3cpWs9">
            <property role="TrG5h" value="rv" />
            <node concept="3uibUv" id="1_D5Bk1SxuZ" role="1tU5fm">
              <ref role="3uigEE" to="cky9:6rx4kZDk5Br" resolve="IdeaEnvironment" />
            </node>
            <node concept="2ShNRf" id="1_D5Bk1SxwM" role="33vP2m">
              <node concept="1pGfFk" id="1_D5Bk1SxYZ" role="2ShVmc">
                <ref role="37wK5l" to="cky9:4OPNMy2crcG" resolve="IdeaEnvironment" />
                <node concept="2OqwBi" id="28TMbOSFJNi" role="37wK5m">
                  <node concept="37vLTw" id="1_D5Bk1SJqT" role="2Oq$k0">
                    <ref role="3cqZAo" node="1_D5Bk1SJqR" resolve="cfg" />
                  </node>
                  <node concept="liA8E" id="28TMbOSFKDD" role="2OqNvi">
                    <ref role="37wK5l" to="79ha:28TMbOSEVXt" resolve="withTestModeOn" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1_D5Bk1SymU" role="3cqZAp">
          <node concept="2OqwBi" id="1_D5Bk1SyxR" role="3clFbG">
            <node concept="37vLTw" id="1_D5Bk1SymS" role="2Oq$k0">
              <ref role="3cqZAo" node="1_D5Bk1SxuY" resolve="rv" />
            </node>
            <node concept="liA8E" id="1_D5Bk1Sz3t" role="2OqNvi">
              <ref role="37wK5l" to="cky9:3eUNqOk7mHv" resolve="init" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1_D5Bk1Sy8w" role="3cqZAp">
          <node concept="37vLTw" id="1_D5Bk1Sy9B" role="3cqZAk">
            <ref role="3cqZAo" node="1_D5Bk1SxuY" resolve="rv" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1_D5Bk1SwUR" role="3clF45">
        <ref role="3uigEE" to="cky9:6rx4kZDk5Br" resolve="IdeaEnvironment" />
      </node>
      <node concept="37vLTG" id="1lYY8Nv7NGc" role="3clF46">
        <property role="TrG5h" value="startupArguments" />
        <node concept="3uibUv" id="1lYY8Nv7NGb" role="1tU5fm">
          <ref role="3uigEE" to="asz6:KL8Aql8eEZ" resolve="ScriptData" />
        </node>
      </node>
      <node concept="3Tm6S6" id="4iq05MkEi40" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4iq05MkEgVe" role="jymVt" />
    <node concept="2YIFZL" id="4iq05MkGqrC" role="jymVt">
      <property role="TrG5h" value="instantiate" />
      <node concept="3clFbS" id="4iq05MkCXNK" role="3clF47">
        <node concept="3SKdUt" id="a_kj512osu" role="3cqZAp">
          <node concept="1PaTwC" id="a_kj512osv" role="1aUNEU">
            <node concept="3oM_SD" id="a_kj512qxL" role="1PaTwD">
              <property role="3oM_SC" value="copied" />
            </node>
            <node concept="3oM_SD" id="a_kj512s1H" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="a_kj512sgw" role="1PaTwD">
              <property role="3oM_SC" value="LaunchTestWorker" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="a_kj510WbR" role="3cqZAp">
          <node concept="3cpWsn" id="a_kj510WbS" role="3cpWs9">
            <property role="TrG5h" value="code" />
            <node concept="3uibUv" id="a_kj510WbT" role="1tU5fm">
              <ref role="3uigEE" to="52vl:7RjIo8RuyI" resolve="ModuleClassCode" />
            </node>
            <node concept="2ShNRf" id="a_kj510WbU" role="33vP2m">
              <node concept="1pGfFk" id="a_kj510WbV" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="52vl:7RjIo8Rvfs" resolve="ModuleClassCode" />
                <node concept="37vLTw" id="a_kj511bXc" role="37wK5m">
                  <ref role="3cqZAo" node="7MSVDs2ENo6" resolve="LAUNCHER_SOLUTION" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="a_kj510Wc3" role="3cqZAp">
          <node concept="3clFbS" id="a_kj510Wc4" role="1zxBo7">
            <node concept="3clFbF" id="a_kj510Wc5" role="3cqZAp">
              <node concept="2OqwBi" id="a_kj510Wc6" role="3clFbG">
                <node concept="37vLTw" id="a_kj510Wc7" role="2Oq$k0">
                  <ref role="3cqZAo" node="a_kj510WbS" resolve="code" />
                </node>
                <node concept="liA8E" id="a_kj510Wc8" role="2OqNvi">
                  <ref role="37wK5l" to="52vl:7RjIo8REDK" resolve="load" />
                  <node concept="2OqwBi" id="a_kj510Wc9" role="37wK5m">
                    <node concept="37vLTw" id="a_kj510Wca" role="2Oq$k0">
                      <ref role="3cqZAo" node="4iq05MkEjyN" resolve="environment" />
                    </node>
                    <node concept="liA8E" id="a_kj510Wcb" role="2OqNvi">
                      <ref role="37wK5l" to="79ha:8Pnvxgloc_" resolve="getPlatform" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="a_kj511gWp" role="37wK5m">
                    <ref role="3cqZAo" node="7MSVDs2EIdY" resolve="LAUNCHER_CLASS" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="a_kj510Wcc" role="3cqZAp">
              <node concept="3cpWsn" id="a_kj510Wcd" role="3cpWs9">
                <property role="TrG5h" value="ctor" />
                <node concept="3uibUv" id="a_kj510Wce" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
                  <node concept="3uibUv" id="a_kj510Wcf" role="11_B2D">
                    <ref role="3uigEE" to="t6h5:~Constructor" resolve="Constructor" />
                    <node concept="3qTvmN" id="a_kj510Wcg" role="11_B2D" />
                  </node>
                </node>
                <node concept="2OqwBi" id="a_kj510Wch" role="33vP2m">
                  <node concept="37vLTw" id="a_kj510Wci" role="2Oq$k0">
                    <ref role="3cqZAo" node="a_kj510WbS" resolve="code" />
                  </node>
                  <node concept="liA8E" id="a_kj510Wcj" role="2OqNvi">
                    <ref role="37wK5l" to="52vl:7RjIo8Ssz_" resolve="cons" />
                    <node concept="3VsKOn" id="7MSVDs2Hjh9" role="37wK5m">
                      <ref role="3VsUkX" to="79ha:HKKzfMjqRV" resolve="Environment" />
                    </node>
                    <node concept="3VsKOn" id="5tXD4tz6MuJ" role="37wK5m">
                      <ref role="3VsUkX" to="asz6:5tXD4tyLjpu" resolve="TestData" />
                    </node>
                    <node concept="3VsKOn" id="7MSVDs2Hjha" role="37wK5m">
                      <ref role="3VsUkX" to="asz6:7MSVDs2AdGA" resolve="WorkerCallback" />
                    </node>
                    <node concept="3VsKOn" id="5EMxBKzV$3s" role="37wK5m">
                      <ref role="3VsUkX" to="guwi:~File" resolve="File" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="35_wH_FvRtF" role="3cqZAp">
              <node concept="1PaTwC" id="35_wH_FvRtG" role="1aUNEU">
                <node concept="3oM_SD" id="35_wH_FvSix" role="1PaTwD">
                  <property role="3oM_SC" value="XXX" />
                </node>
                <node concept="3oM_SD" id="35_wH_FvSiy" role="1PaTwD">
                  <property role="3oM_SC" value="I'm" />
                </node>
                <node concept="3oM_SD" id="35_wH_FvXZ4" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="35_wH_FvY06" role="1PaTwD">
                  <property role="3oM_SC" value="bit" />
                </node>
                <node concept="3oM_SD" id="35_wH_FvY6c" role="1PaTwD">
                  <property role="3oM_SC" value="concerned" />
                </node>
                <node concept="3oM_SD" id="35_wH_FvSi$" role="1PaTwD">
                  <property role="3oM_SC" value="about" />
                </node>
                <node concept="3oM_SD" id="35_wH_FvSi_" role="1PaTwD">
                  <property role="3oM_SC" value="class" />
                </node>
                <node concept="3oM_SD" id="35_wH_FvSiA" role="1PaTwD">
                  <property role="3oM_SC" value="matching" />
                </node>
                <node concept="3oM_SD" id="35_wH_FvYhL" role="1PaTwD">
                  <property role="3oM_SC" value="-" />
                </node>
                <node concept="3oM_SD" id="35_wH_FvYoy" role="1PaTwD">
                  <property role="3oM_SC" value="e.g" />
                </node>
                <node concept="3oM_SD" id="a_kj50Znpq" role="1PaTwD">
                  <property role="3oM_SC" value="TestExecutionListener" />
                </node>
                <node concept="3oM_SD" id="a_kj50ZoSi" role="1PaTwD">
                  <property role="3oM_SC" value="here" />
                </node>
                <node concept="3oM_SD" id="35_wH_FvYqp" role="1PaTwD">
                  <property role="3oM_SC" value="vs" />
                </node>
                <node concept="3oM_SD" id="35_wH_FvYrU" role="1PaTwD">
                  <property role="3oM_SC" value="TestExecutionListener" />
                </node>
                <node concept="3oM_SD" id="35_wH_FvYsC" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="a_kj5195GT" role="1PaTwD">
                  <property role="3oM_SC" value="launchTests()" />
                </node>
                <node concept="3oM_SD" id="a_kj51984l" role="1PaTwD">
                  <property role="3oM_SC" value="method." />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="a_kj5199yJ" role="3cqZAp">
              <node concept="1PaTwC" id="a_kj5199yn" role="1aUNEU">
                <node concept="3oM_SD" id="a_kj5199ym" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="a_kj519ca2" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="a_kj519cd1" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="a_kj519cdt" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="a_kj519f4p" role="1PaTwD">
                  <property role="3oM_SC" value="Here," />
                </node>
                <node concept="3oM_SD" id="35_wH_FvYxv" role="1PaTwD">
                  <property role="3oM_SC" value="we've" />
                </node>
                <node concept="3oM_SD" id="35_wH_FvYzW" role="1PaTwD">
                  <property role="3oM_SC" value="got" />
                </node>
                <node concept="3oM_SD" id="35_wH_FvY_$" role="1PaTwD">
                  <property role="3oM_SC" value="plain" />
                </node>
                <node concept="3oM_SD" id="a_kj519kCa" role="1PaTwD">
                  <property role="3oM_SC" value="Java" />
                </node>
                <node concept="3oM_SD" id="35_wH_Fw0FY" role="1PaTwD">
                  <property role="3oM_SC" value="CL" />
                </node>
                <node concept="3oM_SD" id="35_wH_Fw0H0" role="1PaTwD">
                  <property role="3oM_SC" value="built" />
                </node>
                <node concept="3oM_SD" id="35_wH_Fw0Jk" role="1PaTwD">
                  <property role="3oM_SC" value="from" />
                </node>
                <node concept="3oM_SD" id="35_wH_Fw0L8" role="1PaTwD">
                  <property role="3oM_SC" value="command-line" />
                </node>
                <node concept="3oM_SD" id="35_wH_Fw0Qr" role="1PaTwD">
                  <property role="3oM_SC" value="classpath" />
                </node>
                <node concept="3oM_SD" id="35_wH_Fw0U$" role="1PaTwD">
                  <property role="3oM_SC" value="spec," />
                </node>
                <node concept="3oM_SD" id="35_wH_Fw0WW" role="1PaTwD">
                  <property role="3oM_SC" value="while" />
                </node>
                <node concept="3oM_SD" id="35_wH_Fw0Zl" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="35_wH_Fw11J" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="35_wH_Fw1dO" role="1PaTwD">
                  <property role="3oM_SC" value="method," />
                </node>
                <node concept="3oM_SD" id="35_wH_Fw1ga" role="1PaTwD">
                  <property role="3oM_SC" value="TestExecutionListener.class" />
                </node>
                <node concept="3oM_SD" id="a_kj519xrv" role="1PaTwD">
                  <property role="3oM_SC" value="comes" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="35_wH_Fw1xF" role="3cqZAp">
              <node concept="1PaTwC" id="35_wH_Fw1xG" role="1aUNEU">
                <node concept="3oM_SD" id="35_wH_Fw1$V" role="1PaTwD">
                  <property role="3oM_SC" value=" " />
                </node>
                <node concept="3oM_SD" id="35_wH_Fw2GI" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="35_wH_Fw2Hj" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="35_wH_Fw36s" role="1PaTwD">
                  <property role="3oM_SC" value="through" />
                </node>
                <node concept="3oM_SD" id="a_kj519yvv" role="1PaTwD">
                  <property role="3oM_SC" value="another" />
                </node>
                <node concept="3oM_SD" id="35_wH_Fw477" role="1PaTwD">
                  <property role="3oM_SC" value="MPS" />
                </node>
                <node concept="3oM_SD" id="a_kj519wBM" role="1PaTwD">
                  <property role="3oM_SC" value="module" />
                </node>
                <node concept="3oM_SD" id="35_wH_Fw4aF" role="1PaTwD">
                  <property role="3oM_SC" value="(likely," />
                </node>
                <node concept="3oM_SD" id="a_kj519$3K" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="35_wH_Fw4np" role="1PaTwD">
                  <property role="3oM_SC" value="'plugin'" />
                </node>
                <node concept="3oM_SD" id="35_wH_Fw5gE" role="1PaTwD">
                  <property role="3oM_SC" value="classloader" />
                </node>
                <node concept="3oM_SD" id="35_wH_Fw5wn" role="1PaTwD">
                  <property role="3oM_SC" value="(&quot;provided&quot;)," />
                </node>
                <node concept="3oM_SD" id="35_wH_Fw5VE" role="1PaTwD">
                  <property role="3oM_SC" value="which" />
                </node>
                <node concept="3oM_SD" id="35_wH_Fw6jw" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="35_wH_Fw6vt" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="35_wH_Fw7ET" role="1PaTwD">
                  <property role="3oM_SC" value="delegate" />
                </node>
                <node concept="3oM_SD" id="35_wH_Fw7My" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="35_wH_Fw7NH" role="1PaTwD">
                  <property role="3oM_SC" value="IDEA's" />
                </node>
                <node concept="3oM_SD" id="35_wH_Fw8VM" role="1PaTwD">
                  <property role="3oM_SC" value="PluginClassloader)." />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="35_wH_FwaTE" role="3cqZAp">
              <node concept="1PaTwC" id="35_wH_FwaTF" role="1aUNEU">
                <node concept="3oM_SD" id="35_wH_FwaXc" role="1PaTwD">
                  <property role="3oM_SC" value=" " />
                </node>
                <node concept="3oM_SD" id="35_wH_FwbHJ" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="35_wH_FwbHN" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="35_wH_FwcB9" role="1PaTwD">
                  <property role="3oM_SC" value="I" />
                </node>
                <node concept="3oM_SD" id="35_wH_FwcCv" role="1PaTwD">
                  <property role="3oM_SC" value="wonder" />
                </node>
                <node concept="3oM_SD" id="a_kj50ZCIh" role="1PaTwD">
                  <property role="3oM_SC" value="it" />
                </node>
                <node concept="3oM_SD" id="a_kj50ZDCQ" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="a_kj50ZEq_" role="1PaTwD">
                  <property role="3oM_SC" value="parent" />
                </node>
                <node concept="3oM_SD" id="35_wH_FwiiQ" role="1PaTwD">
                  <property role="3oM_SC" value="CL" />
                </node>
                <node concept="3oM_SD" id="35_wH_FwijU" role="1PaTwD">
                  <property role="3oM_SC" value="delegation?" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7MSVDs2HOBw" role="3cqZAp">
              <node concept="3cpWsn" id="7MSVDs2HOBx" role="3cpWs9">
                <property role="TrG5h" value="meth" />
                <node concept="3uibUv" id="7MSVDs2HMuF" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
                  <node concept="3uibUv" id="7MSVDs2HMuI" role="11_B2D">
                    <ref role="3uigEE" to="t6h5:~Method" resolve="Method" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7MSVDs2HOBy" role="33vP2m">
                  <node concept="37vLTw" id="7MSVDs2HOBz" role="2Oq$k0">
                    <ref role="3cqZAo" node="a_kj510WbS" resolve="code" />
                  </node>
                  <node concept="liA8E" id="7MSVDs2HOB$" role="2OqNvi">
                    <ref role="37wK5l" to="52vl:3w1$bnwD3B3" resolve="instanceMethod" />
                    <node concept="37vLTw" id="a_kj5154hj" role="37wK5m">
                      <ref role="3cqZAo" node="a_kj514TlE" resolve="LAUNCHER_METHOD" />
                    </node>
                    <node concept="3VsKOn" id="a_kj518Mft" role="37wK5m">
                      <ref role="3VsUkX" to="bws1:~TestExecutionListener" resolve="TestExecutionListener" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7MSVDs2HLVM" role="3cqZAp" />
            <node concept="3clFbJ" id="a_kj510Wck" role="3cqZAp">
              <node concept="3clFbS" id="a_kj510Wcl" role="3clFbx">
                <node concept="3clFbF" id="a_kj515lpF" role="3cqZAp">
                  <node concept="2OqwBi" id="a_kj515ns7" role="3clFbG">
                    <node concept="37vLTw" id="a_kj515lpD" role="2Oq$k0">
                      <ref role="3cqZAo" node="a_kj5156e2" resolve="ltMethod" />
                    </node>
                    <node concept="liA8E" id="a_kj515pLc" role="2OqNvi">
                      <ref role="37wK5l" to="i5cy:~AtomicReference.set(java.lang.Object)" resolve="set" />
                      <node concept="2OqwBi" id="a_kj515tIz" role="37wK5m">
                        <node concept="37vLTw" id="a_kj515rAK" role="2Oq$k0">
                          <ref role="3cqZAo" node="7MSVDs2HOBx" resolve="meth" />
                        </node>
                        <node concept="liA8E" id="a_kj515w4B" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="a_kj511zwD" role="3cqZAp">
                  <node concept="2OqwBi" id="60NJ4O1hbUd" role="3cqZAk">
                    <node concept="2OqwBi" id="60NJ4O1hbUe" role="2Oq$k0">
                      <node concept="37vLTw" id="60NJ4O1hbUf" role="2Oq$k0">
                        <ref role="3cqZAo" node="a_kj510Wcd" resolve="ctor" />
                      </node>
                      <node concept="liA8E" id="60NJ4O1hbUg" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                      </node>
                    </node>
                    <node concept="liA8E" id="60NJ4O1hbUh" role="2OqNvi">
                      <ref role="37wK5l" to="t6h5:~Constructor.newInstance(java.lang.Object...)" resolve="newInstance" />
                      <node concept="37vLTw" id="60NJ4O1hbUj" role="37wK5m">
                        <ref role="3cqZAo" node="4iq05MkEjyN" resolve="environment" />
                      </node>
                      <node concept="37vLTw" id="5tXD4tz6UVk" role="37wK5m">
                        <ref role="3cqZAo" node="a_kj511P6v" resolve="testPlan" />
                      </node>
                      <node concept="37vLTw" id="a_kj512h5_" role="37wK5m">
                        <ref role="3cqZAo" node="a_kj511WN_" resolve="cb" />
                      </node>
                      <node concept="37vLTw" id="a_kj512ftx" role="37wK5m">
                        <ref role="3cqZAo" node="a_kj5124mx" resolve="testProject" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="7MSVDs2HVuD" role="3clFbw">
                <node concept="2OqwBi" id="7MSVDs2HYXr" role="3uHU7w">
                  <node concept="37vLTw" id="7MSVDs2HXh3" role="2Oq$k0">
                    <ref role="3cqZAo" node="7MSVDs2HOBx" resolve="meth" />
                  </node>
                  <node concept="liA8E" id="7MSVDs2I1cH" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Optional.isPresent()" resolve="isPresent" />
                  </node>
                </node>
                <node concept="2OqwBi" id="a_kj510Wcm" role="3uHU7B">
                  <node concept="37vLTw" id="a_kj510Wcn" role="2Oq$k0">
                    <ref role="3cqZAo" node="a_kj510Wcd" resolve="ctor" />
                  </node>
                  <node concept="liA8E" id="a_kj510Wco" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Optional.isPresent()" resolve="isPresent" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="a_kj510Wcp" role="9aQIa">
                <node concept="3clFbS" id="a_kj510Wcq" role="9aQI4">
                  <node concept="YS8fn" id="a_kj51goDK" role="3cqZAp">
                    <node concept="2ShNRf" id="a_kj51goH$" role="YScLw">
                      <node concept="1pGfFk" id="a_kj51gviZ" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                        <node concept="2OqwBi" id="a_kj514IoK" role="37wK5m">
                          <node concept="Xl_RD" id="a_kj512Mdv" role="2Oq$k0">
                            <property role="Xl_RC" value="Unexpected %s class, constructor present: %b, method present: %b" />
                          </node>
                          <node concept="2cAKMz" id="a_kj514Kmj" role="2OqNvi">
                            <node concept="2OqwBi" id="a_kj513EHk" role="2cAKU6">
                              <node concept="37vLTw" id="a_kj513CH$" role="2Oq$k0">
                                <ref role="3cqZAo" node="a_kj510Wcd" resolve="ctor" />
                              </node>
                              <node concept="liA8E" id="a_kj513GEf" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Optional.isPresent()" resolve="isPresent" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="a_kj513MzJ" role="2cAKU6">
                              <node concept="37vLTw" id="a_kj513KCr" role="2Oq$k0">
                                <ref role="3cqZAo" node="7MSVDs2HOBx" resolve="meth" />
                              </node>
                              <node concept="liA8E" id="a_kj513OBB" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Optional.isPresent()" resolve="isPresent" />
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
          <node concept="3uVAMA" id="a_kj510Wcw" role="1zxBo5">
            <node concept="3clFbS" id="a_kj510Wcx" role="1zc67A">
              <node concept="YS8fn" id="a_kj51gKg0" role="3cqZAp">
                <node concept="2ShNRf" id="a_kj51gOfR" role="YScLw">
                  <node concept="1pGfFk" id="a_kj51gSVA" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="IllegalStateException" />
                    <node concept="2OqwBi" id="5EMxBKzJnM5" role="37wK5m">
                      <node concept="Xl_RD" id="5EMxBKzJnM6" role="2Oq$k0">
                        <property role="Xl_RC" value="not found class %s among classes of %s" />
                      </node>
                      <node concept="2cAKMz" id="5EMxBKzJnM7" role="2OqNvi">
                        <node concept="37vLTw" id="a_kj51h1_6" role="2cAKU6">
                          <ref role="3cqZAo" node="7MSVDs2EIdY" resolve="LAUNCHER_CLASS" />
                        </node>
                        <node concept="37vLTw" id="a_kj51h1_d" role="2cAKU6">
                          <ref role="3cqZAo" node="7MSVDs2ENo6" resolve="LAUNCHER_SOLUTION" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="a_kj51h8gX" role="37wK5m">
                      <ref role="3cqZAo" node="a_kj510Wc_" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="a_kj510Wc_" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="a_kj510WcA" role="1tU5fm">
                <node concept="3uibUv" id="a_kj510WcB" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~ClassNotFoundException" resolve="ClassNotFoundException" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4iq05MkEjyN" role="3clF46">
        <property role="TrG5h" value="environment" />
        <node concept="3uibUv" id="4iq05MkEsFd" role="1tU5fm">
          <ref role="3uigEE" to="79ha:HKKzfMjqRV" resolve="Environment" />
        </node>
      </node>
      <node concept="37vLTG" id="a_kj511P6v" role="3clF46">
        <property role="TrG5h" value="testPlan" />
        <node concept="3uibUv" id="a_kj511Rqt" role="1tU5fm">
          <ref role="3uigEE" to="asz6:5tXD4tyLjpu" resolve="TestData" />
        </node>
      </node>
      <node concept="37vLTG" id="a_kj511WN_" role="3clF46">
        <property role="TrG5h" value="cb" />
        <node concept="3uibUv" id="a_kj511YPN" role="1tU5fm">
          <ref role="3uigEE" to="asz6:7MSVDs2AdGA" resolve="WorkerCallback" />
        </node>
      </node>
      <node concept="37vLTG" id="a_kj5124mx" role="3clF46">
        <property role="TrG5h" value="testProject" />
        <node concept="3uibUv" id="a_kj5126pe" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="37vLTG" id="a_kj5156e2" role="3clF46">
        <property role="TrG5h" value="ltMethod" />
        <node concept="3uibUv" id="a_kj5158U4" role="1tU5fm">
          <ref role="3uigEE" to="i5cy:~AtomicReference" resolve="AtomicReference" />
          <node concept="3uibUv" id="a_kj515cuE" role="11_B2D">
            <ref role="3uigEE" to="t6h5:~Method" resolve="Method" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4iq05MkD5AQ" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tmbuc" id="4iq05MkCYQn" role="1B3o_S" />
      <node concept="3uibUv" id="a_kj51btGm" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
    <node concept="2tJIrI" id="4iq05MkETJM" role="jymVt" />
    <node concept="2YIFZL" id="4iq05MkGugr" role="jymVt">
      <property role="TrG5h" value="fail" />
      <node concept="3clFbS" id="4iq05MkFhw_" role="3clF47">
        <node concept="3clFbJ" id="a_kj515VjM" role="3cqZAp">
          <node concept="3clFbS" id="a_kj515VjO" role="3clFbx">
            <node concept="3clFbF" id="a_kj5167WW" role="3cqZAp">
              <node concept="2OqwBi" id="a_kj516elE" role="3clFbG">
                <node concept="10M0yZ" id="a_kj516bGZ" role="2Oq$k0">
                  <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                </node>
                <node concept="liA8E" id="a_kj516htB" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                  <node concept="37vLTw" id="a_kj516l0Y" role="37wK5m">
                    <ref role="3cqZAo" node="a_kj515PgF" resolve="message" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="a_kj5160C$" role="3clFbw">
            <node concept="10Nm6u" id="a_kj5164g_" role="3uHU7w" />
            <node concept="37vLTw" id="a_kj515Ydz" role="3uHU7B">
              <ref role="3cqZAo" node="a_kj515PgF" resolve="message" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="465rK6MDoV3" role="3cqZAp">
          <node concept="2YIFZM" id="465rK6MDpRJ" role="3clFbG">
            <ref role="37wK5l" to="wyt6:~System.exit(int)" resolve="exit" />
            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
            <node concept="3cmrfG" id="465rK6MDqyr" role="37wK5m">
              <property role="3cmrfH" value="-1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4iq05MkFhwz" role="3clF45" />
      <node concept="3Tmbuc" id="4iq05MkFhw$" role="1B3o_S" />
      <node concept="37vLTG" id="a_kj515PgF" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="a_kj515PgE" role="1tU5fm" />
      </node>
    </node>
    <node concept="3UR2Jj" id="4Tkq3_ePry_" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsBD_" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBDA" role="1PaTwD">
          <property role="3oM_SC" value="Command-line" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDB" role="1PaTwD">
          <property role="3oM_SC" value="front-end" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDC" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDD" role="1PaTwD">
          <property role="3oM_SC" value="launch" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDE" role="1PaTwD">
          <property role="3oM_SC" value="MPS" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDF" role="1PaTwD">
          <property role="3oM_SC" value="tests" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDG" role="1PaTwD">
          <property role="3oM_SC" value="that" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDH" role="1PaTwD">
          <property role="3oM_SC" value="need" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDI" role="1PaTwD">
          <property role="3oM_SC" value="MPS" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDJ" role="1PaTwD">
          <property role="3oM_SC" value="environment" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDK" role="1PaTwD">
          <property role="3oM_SC" value="(ITestable," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDL" role="1PaTwD">
          <property role="3oM_SC" value="including" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDM" role="1PaTwD">
          <property role="3oM_SC" value="BTestCase," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDN" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDO" role="1PaTwD">
          <property role="3oM_SC" value="JUnit3/JUnit4" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDP" role="1PaTwD">
          <property role="3oM_SC" value="ClassConcept" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDQ" role="1PaTwD">
          <property role="3oM_SC" value="with" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDR" role="1PaTwD">
          <property role="3oM_SC" value="respective" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDS" role="1PaTwD">
          <property role="3oM_SC" value="annotation/superclass)" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDT" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBDU" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBDV" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBDW" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBDX" role="1PaTwD">
          <property role="3oM_SC" value="FIXME" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDY" role="1PaTwD">
          <property role="3oM_SC" value="At" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBDZ" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBE0" role="1PaTwD">
          <property role="3oM_SC" value="moment," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBE1" role="1PaTwD">
          <property role="3oM_SC" value="starts" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBE2" role="1PaTwD">
          <property role="3oM_SC" value="MPS" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBE3" role="1PaTwD">
          <property role="3oM_SC" value="on" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBE4" role="1PaTwD">
          <property role="3oM_SC" value="top" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBE5" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBE6" role="1PaTwD">
          <property role="3oM_SC" value="IDEA" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBE7" role="1PaTwD">
          <property role="3oM_SC" value="platform" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBE8" role="1PaTwD">
          <property role="3oM_SC" value="with" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBE9" role="1PaTwD">
          <property role="3oM_SC" value="no" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEa" role="1PaTwD">
          <property role="3oM_SC" value="explicitly" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEb" role="1PaTwD">
          <property role="3oM_SC" value="specified" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEc" role="1PaTwD">
          <property role="3oM_SC" value="plugins" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEd" role="1PaTwD">
          <property role="3oM_SC" value="(effectively" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEe" role="1PaTwD">
          <property role="3oM_SC" value="means" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEf" role="1PaTwD">
          <property role="3oM_SC" value="any" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEg" role="1PaTwD">
          <property role="3oM_SC" value="available)." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBEh" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBEi" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEj" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEk" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEl" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEm" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEn" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEo" role="1PaTwD">
          <property role="3oM_SC" value="Would" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEp" role="1PaTwD">
          <property role="3oM_SC" value="be" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEq" role="1PaTwD">
          <property role="3oM_SC" value="great" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEr" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEs" role="1PaTwD">
          <property role="3oM_SC" value="configure" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEt" role="1PaTwD">
          <property role="3oM_SC" value="that." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBEu" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBEv" role="1PaTwD">
          <property role="3oM_SC" value="Note," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEw" role="1PaTwD">
          <property role="3oM_SC" value="it's" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEx" role="1PaTwD">
          <property role="3oM_SC" value="essential" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEy" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEz" role="1PaTwD">
          <property role="3oM_SC" value="extend" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBE$" role="1PaTwD">
          <property role="3oM_SC" value="DefaultTestExecutor" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBE_" role="1PaTwD">
          <property role="3oM_SC" value="as" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEA" role="1PaTwD">
          <property role="3oM_SC" value="TestParameters.comprises()" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEB" role="1PaTwD">
          <property role="3oM_SC" value="relies" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEC" role="1PaTwD">
          <property role="3oM_SC" value="on" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBED" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEE" role="1PaTwD">
          <property role="3oM_SC" value="fact" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3HP615" id="5Ti9jVZ8rxi">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="TestsContributor" />
    <node concept="2tJIrI" id="4iq05MkxRmO" role="jymVt" />
    <node concept="3clFb_" id="5m2bsnoGUC3" role="jymVt">
      <property role="TrG5h" value="tests" />
      <node concept="3clFbS" id="5m2bsnoGUC6" role="3clF47">
        <node concept="YS8fn" id="5m2bsnoGY8n" role="3cqZAp">
          <node concept="2ShNRf" id="5m2bsnoGYbd" role="YScLw">
            <node concept="1pGfFk" id="5m2bsnoGZAM" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5m2bsnoGUC7" role="1B3o_S" />
      <node concept="3uibUv" id="5m2bsnoGMxt" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="5m2bsnoGMA3" role="11_B2D">
          <ref role="3uigEE" node="6fYV1N6aevT" resolve="ExecutorScript.TestRecord" />
        </node>
      </node>
      <node concept="3uibUv" id="5m2bsnoGY0D" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
      <node concept="2JFqV2" id="5m2bsnoGY3N" role="2frcjj" />
    </node>
    <node concept="2tJIrI" id="5m2bsnoGZX4" role="jymVt" />
    <node concept="3clFb_" id="5m2bsnoH09a" role="jymVt">
      <property role="TrG5h" value="classLoader" />
      <node concept="3clFbS" id="5m2bsnoH09d" role="3clF47">
        <node concept="YS8fn" id="5m2bsnoH0Uz" role="3cqZAp">
          <node concept="2ShNRf" id="5m2bsnoH0U$" role="YScLw">
            <node concept="1pGfFk" id="5m2bsnoH0U_" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5m2bsnoH09e" role="1B3o_S" />
      <node concept="2JFqV2" id="5m2bsnoH032" role="2frcjj" />
      <node concept="3uibUv" id="5m2bsnoH0Mv" role="3clF45">
        <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
      </node>
      <node concept="37vLTG" id="5m2bsnoH0PG" role="3clF46">
        <property role="TrG5h" value="tr" />
        <node concept="3uibUv" id="5m2bsnoH0PF" role="1tU5fm">
          <ref role="3uigEE" node="6fYV1N6aevT" resolve="ExecutorScript.TestRecord" />
        </node>
      </node>
      <node concept="3uibUv" id="5m2bsnoH1i6" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5Ti9jVZ8rxt" role="1B3o_S" />
    <node concept="3UR2Jj" id="QfsuG7cQ$r" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsBEF" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBEG" role="1PaTwD">
          <property role="3oM_SC" value="Generic" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEH" role="1PaTwD">
          <property role="3oM_SC" value="mechanism" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEI" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEJ" role="1PaTwD">
          <property role="3oM_SC" value="describe" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEK" role="1PaTwD">
          <property role="3oM_SC" value="tests" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEL" role="1PaTwD">
          <property role="3oM_SC" value="as" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHsBEM" role="1PaTwD">
          <node concept="1VuXuv" id="1E1X3WHsBEN" role="1Vtduc">
            <node concept="VXe08" id="QfsuG7cTmx" role="1VuXuu">
              <ref role="VXe09" node="6fYV1N6aevT" resolve="ExecutorScript.TestRecord" />
            </node>
            <node concept="1PaTwC" id="1E1X3WHsBEQ" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHsBER" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBES" role="1PaTwD">
          <property role="3oM_SC" value="," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBET" role="1PaTwD">
          <property role="3oM_SC" value="without" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEU" role="1PaTwD">
          <property role="3oM_SC" value="knowledge" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEV" role="1PaTwD">
          <property role="3oM_SC" value="whether" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEW" role="1PaTwD">
          <property role="3oM_SC" value="they" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEX" role="1PaTwD">
          <property role="3oM_SC" value="are" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEY" role="1PaTwD">
          <property role="3oM_SC" value="tailored" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBEZ" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBF0" role="1PaTwD">
          <property role="3oM_SC" value="JUnit5" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBF1" role="1PaTwD">
          <property role="3oM_SC" value="or" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBF2" role="1PaTwD">
          <property role="3oM_SC" value="JUnit4" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6fYV1N66YPZ">
    <property role="TrG5h" value="ExecutorScript" />
    <node concept="Wx3nA" id="7CPkROrv_oS" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ELM_MODULE" />
      <node concept="3Tm6S6" id="7CPkROrv_oP" role="1B3o_S" />
      <node concept="17QB3L" id="7CPkROrv_oQ" role="1tU5fm" />
      <node concept="Xl_RD" id="7CPkROrv_oR" role="33vP2m">
        <property role="Xl_RC" value="module" />
      </node>
    </node>
    <node concept="Wx3nA" id="7CPkROrvHOG" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ELM_TEST" />
      <node concept="3Tm6S6" id="7CPkROrvHOD" role="1B3o_S" />
      <node concept="17QB3L" id="7CPkROrvHOE" role="1tU5fm" />
      <node concept="Xl_RD" id="7CPkROrvHOF" role="33vP2m">
        <property role="Xl_RC" value="test" />
      </node>
    </node>
    <node concept="Wx3nA" id="4kPdGMZWxhL" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ELM_PROJECT" />
      <node concept="3Tm6S6" id="4kPdGMZWxhM" role="1B3o_S" />
      <node concept="17QB3L" id="4kPdGMZWxhN" role="1tU5fm" />
      <node concept="Xl_RD" id="4kPdGMZWxhO" role="33vP2m">
        <property role="Xl_RC" value="project" />
      </node>
    </node>
    <node concept="Wx3nA" id="7CPkROrwdgY" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ATTR_PTR" />
      <node concept="3Tm6S6" id="7CPkROrwdgV" role="1B3o_S" />
      <node concept="17QB3L" id="7CPkROrwdgW" role="1tU5fm" />
      <node concept="Xl_RD" id="7CPkROrwdgX" role="33vP2m">
        <property role="Xl_RC" value="ptr" />
      </node>
    </node>
    <node concept="Wx3nA" id="7CPkROrvP$Y" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ATTR_FQN" />
      <node concept="3Tm6S6" id="7CPkROrvP$V" role="1B3o_S" />
      <node concept="17QB3L" id="7CPkROrvP$W" role="1tU5fm" />
      <node concept="Xl_RD" id="7CPkROrvP$X" role="33vP2m">
        <property role="Xl_RC" value="fqn" />
      </node>
    </node>
    <node concept="Wx3nA" id="7CPkROrvXzj" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ATTR_NODE" />
      <node concept="3Tm6S6" id="7CPkROrvXzg" role="1B3o_S" />
      <node concept="17QB3L" id="7CPkROrvXzh" role="1tU5fm" />
      <node concept="Xl_RD" id="7CPkROrvXzi" role="33vP2m">
        <property role="Xl_RC" value="node" />
      </node>
    </node>
    <node concept="Wx3nA" id="7CPkROrw7nm" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ATTR_ISTESTCASE" />
      <node concept="3Tm6S6" id="7CPkROrw7nj" role="1B3o_S" />
      <node concept="17QB3L" id="7CPkROrw7nk" role="1tU5fm" />
      <node concept="Xl_RD" id="7CPkROrw7nl" role="33vP2m">
        <property role="Xl_RC" value="isTestCase" />
      </node>
    </node>
    <node concept="Wx3nA" id="7CPkROrx5Ke" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ATTR_URL" />
      <node concept="3Tm6S6" id="7CPkROrx5Kb" role="1B3o_S" />
      <node concept="17QB3L" id="7CPkROrx5Kc" role="1tU5fm" />
      <node concept="Xl_RD" id="7CPkROrx5Kd" role="33vP2m">
        <property role="Xl_RC" value="url" />
      </node>
    </node>
    <node concept="2tJIrI" id="7CPkROrwne9" role="jymVt" />
    <node concept="312cEg" id="6fYV1N675jK" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myEnvironmentStartupData" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="6fYV1N67560" role="1B3o_S" />
      <node concept="3uibUv" id="6fYV1N675jC" role="1tU5fm">
        <ref role="3uigEE" to="asz6:KL8Aql8eEZ" resolve="ScriptData" />
      </node>
      <node concept="2AHcQZ" id="6fYV1N675k9" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="312cEg" id="4kPdGMZTSo4" role="jymVt">
      <property role="TrG5h" value="myProjectUrl" />
      <node concept="3Tm6S6" id="4kPdGMZTSo5" role="1B3o_S" />
      <node concept="17QB3L" id="4kPdGMZTSo7" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="6fYV1N6ahbK" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myTests" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="4iq05MkC6C_" role="1B3o_S" />
      <node concept="3uibUv" id="6fYV1N6ahbg" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6fYV1N6ahbu" role="11_B2D">
          <ref role="3uigEE" node="6fYV1N6aevT" resolve="ExecutorScript.TestRecord" />
        </node>
      </node>
      <node concept="2ShNRf" id="6fYV1N6alMm" role="33vP2m">
        <node concept="1pGfFk" id="6fYV1N6amoa" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="6fYV1N6amRb" role="1pMfVU">
            <ref role="3uigEE" node="6fYV1N6aevT" resolve="ExecutorScript.TestRecord" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6fYV1N67Rmp" role="jymVt" />
    <node concept="3clFb_" id="4g6NqHEd6QF" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getTests" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4g6NqHEd6QI" role="3clF47">
        <node concept="3cpWs6" id="4g6NqHEd7vK" role="3cqZAp">
          <node concept="37vLTw" id="4g6NqHEd7wy" role="3cqZAk">
            <ref role="3cqZAo" node="6fYV1N6ahbK" resolve="myTests" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4g6NqHEd6da" role="1B3o_S" />
      <node concept="3uibUv" id="4g6NqHEd6PE" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="4g6NqHEd6PY" role="11_B2D">
          <ref role="3uigEE" node="6fYV1N6aevT" resolve="ExecutorScript.TestRecord" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4rQ9_5dy1BW" role="jymVt" />
    <node concept="3clFb_" id="6fYV1N68lfo" role="jymVt">
      <property role="TrG5h" value="addStartupArguments" />
      <node concept="3uibUv" id="6fYV1N68liE" role="3clF45">
        <ref role="3uigEE" to="asz6:KL8Aql8eEZ" resolve="ScriptData" />
      </node>
      <node concept="3Tm1VV" id="6fYV1N68lfr" role="1B3o_S" />
      <node concept="3clFbS" id="6fYV1N68lfs" role="3clF47">
        <node concept="3clFbF" id="6fYV1N68lCD" role="3cqZAp">
          <node concept="37vLTI" id="1lYY8Nv9dQb" role="3clFbG">
            <node concept="37vLTw" id="6fYV1N68lCC" role="37vLTJ">
              <ref role="3cqZAo" node="6fYV1N675jK" resolve="myEnvironmentStartupData" />
            </node>
            <node concept="2ShNRf" id="1lYY8Nv9bNX" role="37vLTx">
              <node concept="1pGfFk" id="1lYY8Nv9cpa" role="2ShVmc">
                <ref role="37wK5l" to="asz6:KL8Aql8eGB" resolve="ScriptData" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1lYY8Nv9be1" role="3cqZAp">
          <node concept="37vLTw" id="1lYY8Nv9bh0" role="3cqZAk">
            <ref role="3cqZAo" node="6fYV1N675jK" resolve="myEnvironmentStartupData" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1lYY8Nv990D" role="jymVt" />
    <node concept="3clFb_" id="1lYY8Nv98s1" role="jymVt">
      <property role="TrG5h" value="getStartupArguments" />
      <node concept="3uibUv" id="1lYY8Nv98s2" role="3clF45">
        <ref role="3uigEE" to="asz6:KL8Aql8eEZ" resolve="ScriptData" />
      </node>
      <node concept="3Tm1VV" id="1lYY8Nv98s3" role="1B3o_S" />
      <node concept="3clFbS" id="1lYY8Nv98s4" role="3clF47">
        <node concept="3clFbF" id="1lYY8Nv98s5" role="3cqZAp">
          <node concept="37vLTw" id="1lYY8Nv98s6" role="3clFbG">
            <ref role="3cqZAo" node="6fYV1N675jK" resolve="myEnvironmentStartupData" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1lYY8Nv9dUX" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="7CPkROrvehc" role="jymVt" />
    <node concept="3clFb_" id="4kPdGMZSC9Z" role="jymVt">
      <property role="TrG5h" value="setProjectUrl" />
      <node concept="3clFbS" id="4kPdGMZSCa0" role="3clF47">
        <node concept="3clFbF" id="4kPdGMZTSo8" role="3cqZAp">
          <node concept="37vLTI" id="4kPdGMZTSoa" role="3clFbG">
            <node concept="37vLTw" id="4kPdGMZTSod" role="37vLTJ">
              <ref role="3cqZAo" node="4kPdGMZTSo4" resolve="myProjectUrl" />
            </node>
            <node concept="37vLTw" id="4kPdGMZTSoe" role="37vLTx">
              <ref role="3cqZAo" node="4kPdGMZTHhr" resolve="projectUrl" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4kPdGMZTxwG" role="3clF45" />
      <node concept="3Tm1VV" id="4kPdGMZSC9Y" role="1B3o_S" />
      <node concept="37vLTG" id="4kPdGMZTHhr" role="3clF46">
        <property role="TrG5h" value="projectUrl" />
        <node concept="17QB3L" id="4kPdGMZTHhq" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4kPdGMZSPtt" role="jymVt" />
    <node concept="3clFb_" id="4kPdGMZT17X" role="jymVt">
      <property role="TrG5h" value="getProjectUrl" />
      <node concept="3clFbS" id="4kPdGMZT17Y" role="3clF47">
        <node concept="3clFbF" id="4kPdGMZUSf3" role="3cqZAp">
          <node concept="37vLTw" id="4kPdGMZUSf2" role="3clFbG">
            <ref role="3cqZAo" node="4kPdGMZTSo4" resolve="myProjectUrl" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4kPdGMZTnpy" role="3clF45" />
      <node concept="3Tm1VV" id="4kPdGMZT180" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6fYV1N675jY" role="jymVt" />
    <node concept="3clFb_" id="6fYV1N67lcC" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="write" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6fYV1N67lcF" role="3clF47">
        <node concept="2Gpval" id="6fYV1N6aQa$" role="3cqZAp">
          <node concept="2GrKxI" id="6fYV1N6aQaA" role="2Gsz3X">
            <property role="TrG5h" value="r" />
          </node>
          <node concept="37vLTw" id="6fYV1N6aQfh" role="2GsD0m">
            <ref role="3cqZAo" node="6fYV1N6ahbK" resolve="myTests" />
          </node>
          <node concept="3clFbS" id="6fYV1N6aQaE" role="2LFqv$">
            <node concept="3cpWs8" id="4g6NqHEd8Js" role="3cqZAp">
              <node concept="3cpWsn" id="4g6NqHEd8Jt" role="3cpWs9">
                <property role="TrG5h" value="module" />
                <node concept="3uibUv" id="4g6NqHEd8Ju" role="1tU5fm">
                  <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                </node>
                <node concept="2ShNRf" id="4g6NqHEd92S" role="33vP2m">
                  <node concept="1pGfFk" id="4g6NqHEd92D" role="2ShVmc">
                    <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                    <node concept="37vLTw" id="7CPkROrv_oW" role="37wK5m">
                      <ref role="3cqZAo" node="7CPkROrv_oS" resolve="ELM_MODULE" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4g6NqHEd9op" role="3cqZAp">
              <node concept="2OqwBi" id="4g6NqHEd9RJ" role="3clFbG">
                <node concept="37vLTw" id="4g6NqHEd9on" role="2Oq$k0">
                  <ref role="3cqZAo" node="4g6NqHEd8Jt" resolve="module" />
                </node>
                <node concept="liA8E" id="4g6NqHEdapF" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String)" resolve="setAttribute" />
                  <node concept="37vLTw" id="7CPkROrwdh2" role="37wK5m">
                    <ref role="3cqZAo" node="7CPkROrwdgY" resolve="ATTR_PTR" />
                  </node>
                  <node concept="2OqwBi" id="4g6NqHEdaOh" role="37wK5m">
                    <node concept="2GrUjf" id="4g6NqHEdaJL" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="6fYV1N6aQaA" resolve="r" />
                    </node>
                    <node concept="2OwXpG" id="4g6NqHEdboZ" role="2OqNvi">
                      <ref role="2Oxat5" node="6fYV1N6ae$w" resolve="myTestModule" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Dw8fO" id="4g6NqHEdc51" role="3cqZAp">
              <node concept="3clFbS" id="4g6NqHEdc53" role="2LFqv$">
                <node concept="3cpWs8" id="6fYV1N6aQqC" role="3cqZAp">
                  <node concept="3cpWsn" id="6fYV1N6aQqD" role="3cpWs9">
                    <property role="TrG5h" value="elem" />
                    <node concept="3uibUv" id="6fYV1N6aQqE" role="1tU5fm">
                      <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                    </node>
                    <node concept="2ShNRf" id="6fYV1N6aQs8" role="33vP2m">
                      <node concept="1pGfFk" id="6fYV1N6aQUM" role="2ShVmc">
                        <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                        <node concept="37vLTw" id="7CPkROrvHOK" role="37wK5m">
                          <ref role="3cqZAo" node="7CPkROrvHOG" resolve="ELM_TEST" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6fYV1N6aQXc" role="3cqZAp">
                  <node concept="2OqwBi" id="6fYV1N6aRac" role="3clFbG">
                    <node concept="37vLTw" id="6fYV1N6aQXa" role="2Oq$k0">
                      <ref role="3cqZAo" node="6fYV1N6aQqD" resolve="elem" />
                    </node>
                    <node concept="liA8E" id="6fYV1N6aRG7" role="2OqNvi">
                      <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String)" resolve="setAttribute" />
                      <node concept="37vLTw" id="7CPkROrvP_2" role="37wK5m">
                        <ref role="3cqZAo" node="7CPkROrvP$Y" resolve="ATTR_FQN" />
                      </node>
                      <node concept="2OqwBi" id="4g6NqHEdokL" role="37wK5m">
                        <node concept="2OqwBi" id="6fYV1N6aS9g" role="2Oq$k0">
                          <node concept="2GrUjf" id="6fYV1N6aS4K" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="6fYV1N6aQaA" resolve="r" />
                          </node>
                          <node concept="2OwXpG" id="6fYV1N6aSAs" role="2OqNvi">
                            <ref role="2Oxat5" node="6fYV1N6aeCV" resolve="myTestQualifiedName" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4g6NqHEdqcx" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                          <node concept="37vLTw" id="4g6NqHEdrBu" role="37wK5m">
                            <ref role="3cqZAo" node="4g6NqHEdc54" resolve="i" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6fYV1N6aUbS" role="3cqZAp">
                  <node concept="2OqwBi" id="6fYV1N6aU_1" role="3clFbG">
                    <node concept="37vLTw" id="6fYV1N6aUbQ" role="2Oq$k0">
                      <ref role="3cqZAo" node="6fYV1N6aQqD" resolve="elem" />
                    </node>
                    <node concept="liA8E" id="6fYV1N6aV6W" role="2OqNvi">
                      <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String)" resolve="setAttribute" />
                      <node concept="37vLTw" id="7CPkROrvXzn" role="37wK5m">
                        <ref role="3cqZAo" node="7CPkROrvXzj" resolve="ATTR_NODE" />
                      </node>
                      <node concept="2OqwBi" id="4g6NqHEdtyt" role="37wK5m">
                        <node concept="2OqwBi" id="6fYV1N6aW7A" role="2Oq$k0">
                          <node concept="2GrUjf" id="6fYV1N6aVO$" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="6fYV1N6aQaA" resolve="r" />
                          </node>
                          <node concept="2OwXpG" id="6fYV1N6aWM0" role="2OqNvi">
                            <ref role="2Oxat5" node="6fYV1N6aeA$" resolve="myTestNode" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4g6NqHEduKE" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                          <node concept="37vLTw" id="4g6NqHEdwms" role="37wK5m">
                            <ref role="3cqZAo" node="4g6NqHEdc54" resolve="i" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4FBFA_GHzwX" role="3cqZAp">
                  <node concept="2OqwBi" id="4FBFA_GHzwY" role="3clFbG">
                    <node concept="37vLTw" id="4FBFA_GHzwZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="6fYV1N6aQqD" resolve="elem" />
                    </node>
                    <node concept="liA8E" id="4FBFA_GHzx0" role="2OqNvi">
                      <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String)" resolve="setAttribute" />
                      <node concept="37vLTw" id="7CPkROrw7nq" role="37wK5m">
                        <ref role="3cqZAo" node="7CPkROrw7nm" resolve="ATTR_ISTESTCASE" />
                      </node>
                      <node concept="2OqwBi" id="4FBFA_GHzx2" role="37wK5m">
                        <node concept="2OqwBi" id="4FBFA_GHzx3" role="2Oq$k0">
                          <node concept="2GrUjf" id="4FBFA_GHzx4" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="6fYV1N6aQaA" resolve="r" />
                          </node>
                          <node concept="2OwXpG" id="4FBFA_GH_fX" role="2OqNvi">
                            <ref role="2Oxat5" node="4FBFA_GHaaU" resolve="isTestCase" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4FBFA_GHzx6" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                          <node concept="37vLTw" id="4FBFA_GHzx7" role="37wK5m">
                            <ref role="3cqZAo" node="4g6NqHEdc54" resolve="i" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6fYV1N6aT2D" role="3cqZAp">
                  <node concept="2OqwBi" id="6fYV1N6aTrh" role="3clFbG">
                    <node concept="37vLTw" id="4g6NqHEdxLD" role="2Oq$k0">
                      <ref role="3cqZAo" node="4g6NqHEd8Jt" resolve="module" />
                    </node>
                    <node concept="liA8E" id="6fYV1N6aTXe" role="2OqNvi">
                      <ref role="37wK5l" to="mmaq:~Element.addContent(org.jdom.Element)" resolve="addContent" />
                      <node concept="37vLTw" id="6fYV1N6aTYe" role="37wK5m">
                        <ref role="3cqZAo" node="6fYV1N6aQqD" resolve="elem" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="4g6NqHEdc54" role="1Duv9x">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="4g6NqHEdcph" role="1tU5fm" />
                <node concept="3cmrfG" id="4g6NqHEdcqb" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3eOVzh" id="4g6NqHEddr$" role="1Dwp0S">
                <node concept="2OqwBi" id="4g6NqHEdg1w" role="3uHU7w">
                  <node concept="2OqwBi" id="4g6NqHEddPE" role="2Oq$k0">
                    <node concept="2GrUjf" id="4g6NqHEddrP" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="6fYV1N6aQaA" resolve="r" />
                    </node>
                    <node concept="2OwXpG" id="4g6NqHEdexT" role="2OqNvi">
                      <ref role="2Oxat5" node="6fYV1N6aeCV" resolve="myTestQualifiedName" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4g6NqHEdhHn" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                  </node>
                </node>
                <node concept="37vLTw" id="4g6NqHEdcqG" role="3uHU7B">
                  <ref role="3cqZAo" node="4g6NqHEdc54" resolve="i" />
                </node>
              </node>
              <node concept="3uNrnE" id="4g6NqHEdkfj" role="1Dwrff">
                <node concept="37vLTw" id="4g6NqHEdkfl" role="2$L3a6">
                  <ref role="3cqZAo" node="4g6NqHEdc54" resolve="i" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4g6NqHEdlMI" role="3cqZAp">
              <node concept="2OqwBi" id="4g6NqHEdlMJ" role="3clFbG">
                <node concept="37vLTw" id="4g6NqHEdlMK" role="2Oq$k0">
                  <ref role="3cqZAo" node="6fYV1N67lda" resolve="root" />
                </node>
                <node concept="liA8E" id="4g6NqHEdlML" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.addContent(org.jdom.Element)" resolve="addContent" />
                  <node concept="37vLTw" id="4g6NqHEdxMv" role="37wK5m">
                    <ref role="3cqZAo" node="4g6NqHEd8Jt" resolve="module" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7CPkROrxDIi" role="3cqZAp">
          <node concept="3clFbS" id="7CPkROrxDIk" role="3clFbx">
            <node concept="3cpWs8" id="4kPdGMZXtFn" role="3cqZAp">
              <node concept="3cpWsn" id="4kPdGMZXtFo" role="3cpWs9">
                <property role="TrG5h" value="proj" />
                <node concept="3uibUv" id="4kPdGMZXr5W" role="1tU5fm">
                  <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                </node>
                <node concept="2ShNRf" id="4kPdGMZXtFp" role="33vP2m">
                  <node concept="1pGfFk" id="4kPdGMZXtFq" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                    <node concept="37vLTw" id="7CPkROrxSWF" role="37wK5m">
                      <ref role="3cqZAo" node="4kPdGMZWxhL" resolve="ELM_PROJECT" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4kPdGMZWWrF" role="3cqZAp">
              <node concept="2OqwBi" id="4kPdGMZXMIH" role="3clFbG">
                <node concept="37vLTw" id="4kPdGMZXtFs" role="2Oq$k0">
                  <ref role="3cqZAo" node="4kPdGMZXtFo" resolve="proj" />
                </node>
                <node concept="liA8E" id="4kPdGMZYjgS" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String)" resolve="setAttribute" />
                  <node concept="37vLTw" id="7CPkROrxXKI" role="37wK5m">
                    <ref role="3cqZAo" node="7CPkROrx5Ke" resolve="ATTR_URL" />
                  </node>
                  <node concept="37vLTw" id="4kPdGMZYUPa" role="37wK5m">
                    <ref role="3cqZAo" node="4kPdGMZTSo4" resolve="myProjectUrl" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="WmK2TLRnva" role="3cqZAp">
              <node concept="2OqwBi" id="WmK2TLRnvb" role="3clFbG">
                <node concept="37vLTw" id="WmK2TLRnvc" role="2Oq$k0">
                  <ref role="3cqZAo" node="6fYV1N67lda" resolve="root" />
                </node>
                <node concept="liA8E" id="WmK2TLRnvd" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.addContent(org.jdom.Element)" resolve="addContent" />
                  <node concept="37vLTw" id="WmK2TLRnve" role="37wK5m">
                    <ref role="3cqZAo" node="4kPdGMZXtFo" resolve="proj" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7CPkROrxI9F" role="3clFbw">
            <node concept="10Nm6u" id="7CPkROrxJ9h" role="3uHU7w" />
            <node concept="37vLTw" id="7CPkROrxGad" role="3uHU7B">
              <ref role="3cqZAo" node="4kPdGMZTSo4" resolve="myProjectUrl" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6fYV1N67mwi" role="3cqZAp">
          <node concept="3y3z36" id="6fYV1N67mBH" role="3clFbw">
            <node concept="10Nm6u" id="6fYV1N67mD7" role="3uHU7w" />
            <node concept="37vLTw" id="6fYV1N67mx2" role="3uHU7B">
              <ref role="3cqZAo" node="6fYV1N675jK" resolve="myEnvironmentStartupData" />
            </node>
          </node>
          <node concept="3clFbS" id="6fYV1N67mwk" role="3clFbx">
            <node concept="3clFbF" id="6fYV1N67mEH" role="3cqZAp">
              <node concept="2OqwBi" id="6fYV1N67mK1" role="3clFbG">
                <node concept="37vLTw" id="6fYV1N67mEG" role="2Oq$k0">
                  <ref role="3cqZAo" node="6fYV1N675jK" resolve="myEnvironmentStartupData" />
                </node>
                <node concept="liA8E" id="6fYV1N67mQT" role="2OqNvi">
                  <ref role="37wK5l" to="asz6:1288c6E4sOG" resolve="write" />
                  <node concept="37vLTw" id="6fYV1N67mWn" role="37wK5m">
                    <ref role="3cqZAo" node="6fYV1N67lda" resolve="root" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6fYV1N67lcf" role="1B3o_S" />
      <node concept="3cqZAl" id="6fYV1N67lcx" role="3clF45" />
      <node concept="37vLTG" id="6fYV1N67lda" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3uibUv" id="6fYV1N67ld9" role="1tU5fm">
          <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6fYV1N67ldY" role="jymVt" />
    <node concept="3clFb_" id="6fYV1N67me$" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="read" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6fYV1N67meB" role="3clF47">
        <node concept="2Gpval" id="4g6NqHEdy1w" role="3cqZAp">
          <node concept="2GrKxI" id="4g6NqHEdy1y" role="2Gsz3X">
            <property role="TrG5h" value="me" />
          </node>
          <node concept="2OqwBi" id="4g6NqHEdyT1" role="2GsD0m">
            <node concept="37vLTw" id="4g6NqHEdyrN" role="2Oq$k0">
              <ref role="3cqZAo" node="6fYV1N67mvz" resolve="root" />
            </node>
            <node concept="liA8E" id="4g6NqHEdzBi" role="2OqNvi">
              <ref role="37wK5l" to="mmaq:~Element.getChildren(java.lang.String)" resolve="getChildren" />
              <node concept="37vLTw" id="7CPkROrvFXG" role="37wK5m">
                <ref role="3cqZAo" node="7CPkROrv_oS" resolve="ELM_MODULE" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4g6NqHEdy1A" role="2LFqv$">
            <node concept="3cpWs8" id="4g6NqHEdDfX" role="3cqZAp">
              <node concept="3cpWsn" id="4g6NqHEdDfY" role="3cpWs9">
                <property role="TrG5h" value="tr" />
                <node concept="3uibUv" id="4g6NqHEdDfi" role="1tU5fm">
                  <ref role="3uigEE" node="6fYV1N6aevT" resolve="ExecutorScript.TestRecord" />
                </node>
                <node concept="2ShNRf" id="4g6NqHEdDfZ" role="33vP2m">
                  <node concept="1pGfFk" id="4g6NqHEdDg0" role="2ShVmc">
                    <ref role="37wK5l" node="6fYV1N6afN5" resolve="ExecutorScript.TestRecord" />
                    <node concept="2OqwBi" id="4g6NqHEdDg1" role="37wK5m">
                      <node concept="2GrUjf" id="4g6NqHEdDg2" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="4g6NqHEdy1y" resolve="me" />
                      </node>
                      <node concept="liA8E" id="4g6NqHEdDg3" role="2OqNvi">
                        <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String)" resolve="getAttributeValue" />
                        <node concept="37vLTw" id="7CPkROrwlCc" role="37wK5m">
                          <ref role="3cqZAo" node="7CPkROrwdgY" resolve="ATTR_PTR" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6fYV1N6bbtV" role="3cqZAp">
              <node concept="2OqwBi" id="6fYV1N6bbXN" role="3clFbG">
                <node concept="37vLTw" id="6fYV1N6bbtT" role="2Oq$k0">
                  <ref role="3cqZAo" node="6fYV1N6ahbK" resolve="myTests" />
                </node>
                <node concept="liA8E" id="6fYV1N6bdb8" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="4g6NqHEdDg5" role="37wK5m">
                    <ref role="3cqZAo" node="4g6NqHEdDfY" resolve="tr" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="6fYV1N6b1qO" role="3cqZAp">
              <node concept="2GrKxI" id="6fYV1N6b1qQ" role="2Gsz3X">
                <property role="TrG5h" value="te" />
              </node>
              <node concept="3clFbS" id="6fYV1N6b1qU" role="2LFqv$">
                <node concept="3clFbF" id="4g6NqHEdF0O" role="3cqZAp">
                  <node concept="2OqwBi" id="4g6NqHEdFcq" role="3clFbG">
                    <node concept="37vLTw" id="4g6NqHEdF0M" role="2Oq$k0">
                      <ref role="3cqZAo" node="4g6NqHEdDfY" resolve="tr" />
                    </node>
                    <node concept="liA8E" id="4g6NqHEdFir" role="2OqNvi">
                      <ref role="37wK5l" node="4g6NqHEcSsr" resolve="add" />
                      <node concept="2OqwBi" id="4g6NqHEd_Gm" role="37wK5m">
                        <node concept="2GrUjf" id="4g6NqHEd_Gn" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="6fYV1N6b1qQ" resolve="te" />
                        </node>
                        <node concept="liA8E" id="4g6NqHEd_Go" role="2OqNvi">
                          <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String)" resolve="getAttributeValue" />
                          <node concept="37vLTw" id="7CPkROrvVtP" role="37wK5m">
                            <ref role="3cqZAo" node="7CPkROrvP$Y" resolve="ATTR_FQN" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4g6NqHEd_Gq" role="37wK5m">
                        <node concept="2GrUjf" id="4g6NqHEd_Gr" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="6fYV1N6b1qQ" resolve="te" />
                        </node>
                        <node concept="liA8E" id="4g6NqHEd_Gs" role="2OqNvi">
                          <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String)" resolve="getAttributeValue" />
                          <node concept="37vLTw" id="7CPkROrw18c" role="37wK5m">
                            <ref role="3cqZAo" node="7CPkROrvXzj" resolve="ATTR_NODE" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4FBFA_GHv86" role="37wK5m">
                        <node concept="2GrUjf" id="4FBFA_GHuQb" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="6fYV1N6b1qQ" resolve="te" />
                        </node>
                        <node concept="liA8E" id="4FBFA_GHxLc" role="2OqNvi">
                          <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String)" resolve="getAttributeValue" />
                          <node concept="37vLTw" id="7CPkROrwaRI" role="37wK5m">
                            <ref role="3cqZAo" node="7CPkROrw7nm" resolve="ATTR_ISTESTCASE" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6fYV1N6b2rr" role="2GsD0m">
                <node concept="2GrUjf" id="4g6NqHEdCNR" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4g6NqHEdy1y" resolve="me" />
                </node>
                <node concept="liA8E" id="6fYV1N6b2Vf" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.getChildren(java.lang.String)" resolve="getChildren" />
                  <node concept="37vLTw" id="7CPkROrvN_F" role="37wK5m">
                    <ref role="3cqZAo" node="7CPkROrvHOG" resolve="ELM_TEST" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7CPkROrxvti" role="3cqZAp">
          <node concept="3clFbS" id="4kPdGN00jKX" role="2LFqv$">
            <node concept="3clFbJ" id="4kPdGN0372R" role="3cqZAp">
              <node concept="3clFbS" id="4kPdGN0372T" role="3clFbx">
                <node concept="YS8fn" id="4kPdGN03MTa" role="3cqZAp">
                  <node concept="2ShNRf" id="4kPdGN03YD4" role="YScLw">
                    <node concept="1pGfFk" id="4kPdGN04gtc" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                      <node concept="3cpWs3" id="4kPdGN06M53" role="37wK5m">
                        <node concept="37vLTw" id="7CPkROrwYr_" role="3uHU7w">
                          <ref role="3cqZAo" node="4kPdGMZWxhL" resolve="ELM_PROJECT" />
                        </node>
                        <node concept="Xl_RD" id="4kPdGN04sT4" role="3uHU7B">
                          <property role="Xl_RC" value="expected only one child of type: " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="4kPdGN03tlc" role="3clFbw">
                <node concept="10Nm6u" id="4kPdGN03BPd" role="3uHU7w" />
                <node concept="37vLTw" id="4kPdGN03hQ$" role="3uHU7B">
                  <ref role="3cqZAo" node="4kPdGMZTSo4" resolve="myProjectUrl" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4kPdGN00DWy" role="3cqZAp">
              <node concept="37vLTI" id="4kPdGN02e7o" role="3clFbG">
                <node concept="37vLTw" id="4kPdGN02oTZ" role="37vLTJ">
                  <ref role="3cqZAo" node="4kPdGMZTSo4" resolve="myProjectUrl" />
                </node>
                <node concept="2OqwBi" id="4kPdGN02$64" role="37vLTx">
                  <node concept="2OqwBi" id="4kPdGN00NdB" role="2Oq$k0">
                    <node concept="2GrUjf" id="7CPkROrxvv8" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7CPkROrxvv6" resolve="proj" />
                    </node>
                    <node concept="liA8E" id="4kPdGN00Zzy" role="2OqNvi">
                      <ref role="37wK5l" to="mmaq:~Element.getAttribute(java.lang.String)" resolve="getAttribute" />
                      <node concept="37vLTw" id="7CPkROrx5Ki" role="37wK5m">
                        <ref role="3cqZAo" node="7CPkROrx5Ke" resolve="ATTR_URL" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="nedwXaefZM" role="2OqNvi">
                    <ref role="37wK5l" to="mmaq:~Attribute.getValue()" resolve="getValue" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4kPdGN00jL3" role="2GsD0m">
            <node concept="37vLTw" id="4kPdGN00jL4" role="2Oq$k0">
              <ref role="3cqZAo" node="6fYV1N67mvz" resolve="root" />
            </node>
            <node concept="liA8E" id="4kPdGN00jL5" role="2OqNvi">
              <ref role="37wK5l" to="mmaq:~Element.getChildren(java.lang.String)" resolve="getChildren" />
              <node concept="37vLTw" id="7CPkROrwOmQ" role="37wK5m">
                <ref role="3cqZAo" node="4kPdGMZWxhL" resolve="ELM_PROJECT" />
              </node>
            </node>
          </node>
          <node concept="2GrKxI" id="7CPkROrxvv6" role="2Gsz3X">
            <property role="TrG5h" value="proj" />
          </node>
        </node>
        <node concept="3clFbH" id="7CPkROrwGKx" role="3cqZAp" />
        <node concept="3clFbF" id="6fYV1N67QNA" role="3cqZAp">
          <node concept="37vLTI" id="6fYV1N67QTt" role="3clFbG">
            <node concept="37vLTw" id="6fYV1N67QN$" role="37vLTJ">
              <ref role="3cqZAo" node="6fYV1N675jK" resolve="myEnvironmentStartupData" />
            </node>
            <node concept="2ShNRf" id="6fYV1N67n0t" role="37vLTx">
              <node concept="1pGfFk" id="6fYV1N67$Cc" role="2ShVmc">
                <ref role="37wK5l" to="asz6:KL8Aql8eGB" resolve="ScriptData" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6fYV1N67n0_" role="3cqZAp">
          <node concept="2OqwBi" id="6fYV1N67R80" role="3clFbG">
            <node concept="37vLTw" id="6fYV1N67R2A" role="2Oq$k0">
              <ref role="3cqZAo" node="6fYV1N675jK" resolve="myEnvironmentStartupData" />
            </node>
            <node concept="liA8E" id="6fYV1N67ReY" role="2OqNvi">
              <ref role="37wK5l" to="asz6:1288c6E4EV2" resolve="read" />
              <node concept="37vLTw" id="6fYV1N67Ria" role="37wK5m">
                <ref role="3cqZAo" node="6fYV1N67mvz" resolve="root" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6fYV1N67le_" role="1B3o_S" />
      <node concept="3cqZAl" id="6fYV1N67leS" role="3clF45" />
      <node concept="37vLTG" id="6fYV1N67mvz" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3uibUv" id="6fYV1N67mvy" role="1tU5fm">
          <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="6fYV1N66YQ0" role="1B3o_S" />
    <node concept="3UR2Jj" id="6fYV1N66YQz" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsBF3" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBF4" role="1PaTwD">
          <property role="3oM_SC" value="Set" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBF5" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBF6" role="1PaTwD">
          <property role="3oM_SC" value="test" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBF7" role="1PaTwD">
          <property role="3oM_SC" value="executor" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBF8" role="1PaTwD">
          <property role="3oM_SC" value="arguments" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBF9" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFa" role="1PaTwD">
          <property role="3oM_SC" value="get" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFb" role="1PaTwD">
          <property role="3oM_SC" value="serialized" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFc" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFd" role="1PaTwD">
          <property role="3oM_SC" value="inter-process" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFe" role="1PaTwD">
          <property role="3oM_SC" value="communication" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6fYV1N6aelB" role="jymVt" />
    <node concept="312cEu" id="6fYV1N6aevT" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="TestRecord" />
      <node concept="312cEg" id="6fYV1N6ae$w" role="jymVt">
        <property role="TrG5h" value="myTestModule" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4g6NqHEcxht" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3Tm1VV" id="4iq05Mkwqrd" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="6fYV1N6aeA$" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="myTestNode" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4g6NqHEcM19" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="4g6NqHEcMkm" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="2ShNRf" id="4g6NqHEcNk3" role="33vP2m">
          <node concept="1pGfFk" id="4g6NqHEcO7n" role="2ShVmc">
            <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
            <node concept="3uibUv" id="4g6NqHEcP0l" role="1pMfVU">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="4iq05MkwtK4" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="6fYV1N6aeCV" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="myTestQualifiedName" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4g6NqHEcMCw" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="4g6NqHEcMCx" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="2ShNRf" id="4g6NqHEcQ7Y" role="33vP2m">
          <node concept="1pGfFk" id="4g6NqHEcQ7Z" role="2ShVmc">
            <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
            <node concept="3uibUv" id="4g6NqHEcQ80" role="1pMfVU">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="4iq05Mkwv0w" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="4FBFA_GHaaU" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="isTestCase" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4FBFA_GHcku" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="4FBFA_GHYDo" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="2ShNRf" id="4FBFA_GHhEf" role="33vP2m">
          <node concept="1pGfFk" id="4FBFA_GHkAQ" role="2ShVmc">
            <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
            <node concept="3uibUv" id="4FBFA_GHlf2" role="1pMfVU">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="4iq05MkwyhI" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="6fYV1N6afMk" role="jymVt" />
      <node concept="3clFbW" id="6fYV1N6afN5" role="jymVt">
        <node concept="3cqZAl" id="6fYV1N6afN6" role="3clF45" />
        <node concept="3clFbS" id="6fYV1N6afN8" role="3clF47">
          <node concept="3clFbF" id="6fYV1N6ag9O" role="3cqZAp">
            <node concept="37vLTI" id="6fYV1N6aghH" role="3clFbG">
              <node concept="37vLTw" id="4g6NqHEd2E0" role="37vLTx">
                <ref role="3cqZAo" node="6fYV1N6afNT" resolve="testModule" />
              </node>
              <node concept="37vLTw" id="6fYV1N6ag9M" role="37vLTJ">
                <ref role="3cqZAo" node="6fYV1N6ae$w" resolve="myTestModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="6fYV1N6afNT" role="3clF46">
          <property role="TrG5h" value="testModule" />
          <node concept="3uibUv" id="6fYV1N6afNS" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="3Tm1VV" id="4iq05MkCvYb" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="4g6NqHEcQWs" role="jymVt" />
      <node concept="3clFb_" id="4g6NqHEcSsr" role="jymVt">
        <property role="TrG5h" value="add" />
        <node concept="37vLTG" id="4g6NqHEcVIY" role="3clF46">
          <property role="TrG5h" value="fqName" />
          <node concept="3uibUv" id="4g6NqHEcVIZ" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="37vLTG" id="4g6NqHEcVJ0" role="3clF46">
          <property role="TrG5h" value="testNodePointer" />
          <node concept="3uibUv" id="4g6NqHEcVJ1" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="37vLTG" id="4FBFA_GHack" role="3clF46">
          <property role="TrG5h" value="isTestCase0" />
          <node concept="3uibUv" id="4FBFA_GI4bp" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="3cqZAl" id="4g6NqHEcSst" role="3clF45" />
        <node concept="3clFbS" id="4g6NqHEcSsu" role="3clF47">
          <node concept="3clFbF" id="4g6NqHEcXG9" role="3cqZAp">
            <node concept="2OqwBi" id="4g6NqHEcYbS" role="3clFbG">
              <node concept="37vLTw" id="4g6NqHEcXG8" role="2Oq$k0">
                <ref role="3cqZAo" node="6fYV1N6aeCV" resolve="myTestQualifiedName" />
              </node>
              <node concept="liA8E" id="4g6NqHEcYPF" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="4g6NqHEcZcD" role="37wK5m">
                  <ref role="3cqZAo" node="4g6NqHEcVIY" resolve="fqName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4g6NqHEcZK6" role="3cqZAp">
            <node concept="2OqwBi" id="4g6NqHEd0gs" role="3clFbG">
              <node concept="37vLTw" id="4g6NqHEcZK4" role="2Oq$k0">
                <ref role="3cqZAo" node="6fYV1N6aeA$" resolve="myTestNode" />
              </node>
              <node concept="liA8E" id="4g6NqHEd0Vc" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="4g6NqHEd1bB" role="37wK5m">
                  <ref role="3cqZAo" node="4g6NqHEcVJ0" resolve="testNodePointer" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4FBFA_GHb53" role="3cqZAp">
            <node concept="2OqwBi" id="4FBFA_GHcRQ" role="3clFbG">
              <node concept="37vLTw" id="4FBFA_GHb51" role="2Oq$k0">
                <ref role="3cqZAo" node="4FBFA_GHaaU" resolve="isTestCase" />
              </node>
              <node concept="liA8E" id="4FBFA_GHdxg" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                <node concept="3cpWs3" id="4FBFA_GHT2w" role="37wK5m">
                  <node concept="Xl_RD" id="4FBFA_GHT2V" role="3uHU7w">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="37vLTw" id="4FBFA_GHdJV" role="3uHU7B">
                    <ref role="3cqZAo" node="4FBFA_GHack" resolve="isTestCase0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="4iq05MkCxv3" role="1B3o_S" />
      </node>
      <node concept="3Tm1VV" id="465rK6Mj_UB" role="1B3o_S" />
      <node concept="3UR2Jj" id="5tXD4tyUMgL" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsBFf" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBFg" role="1PaTwD">
            <property role="3oM_SC" value="FIXME" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBFh" role="1PaTwD">
            <property role="3oM_SC" value="replace" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBFi" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBFj" role="1PaTwD">
            <property role="3oM_SC" value="generic" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBFk" role="1PaTwD">
            <property role="3oM_SC" value="j.m.tool.common.TestData" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="766HyAh3a3u" role="jymVt" />
  </node>
  <node concept="312cEu" id="2u2lerfkia6">
    <property role="TrG5h" value="JUnit4TestExecutor" />
    <node concept="312cEg" id="2u2lerfkiSU" role="jymVt">
      <property role="TrG5h" value="myTestsContributor" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2u2lerfkiSV" role="1B3o_S" />
      <node concept="3uibUv" id="2u2lerfkiSX" role="1tU5fm">
        <ref role="3uigEE" node="QfsuG7cJQw" resolve="JUnit4TestContributor" />
      </node>
    </node>
    <node concept="312cEg" id="77hRUeKgzaH" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myListener" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="77hRUeKgyPw" role="1B3o_S" />
      <node concept="3uibUv" id="77hRUeKgza1" role="1tU5fm">
        <ref role="3uigEE" to="k76n:~RunListener" resolve="RunListener" />
      </node>
    </node>
    <node concept="312cEg" id="3q0sUHY600E" role="jymVt">
      <property role="34CwA1" value="true" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myStopping" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="3q0sUHY600F" role="1B3o_S" />
      <node concept="10P_77" id="3q0sUHY600G" role="1tU5fm" />
      <node concept="3clFbT" id="3q0sUHY600H" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="312cEg" id="3q0sUHY600I" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myCurrentRunner" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="3q0sUHY600J" role="1B3o_S" />
      <node concept="3uibUv" id="3q0sUHY600K" role="1tU5fm">
        <ref role="3uigEE" node="6lmAJjAMvTk" resolve="StoppableRunner" />
      </node>
      <node concept="10Nm6u" id="3q0sUHY600L" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="3q0sUHY5ZSL" role="jymVt" />
    <node concept="2tJIrI" id="2u2lerfkj2u" role="jymVt" />
    <node concept="3clFbW" id="2u2lerfkiGC" role="jymVt">
      <node concept="3cqZAl" id="2u2lerfkiGE" role="3clF45" />
      <node concept="3Tm1VV" id="2u2lerfkiGF" role="1B3o_S" />
      <node concept="3clFbS" id="2u2lerfkiGG" role="3clF47">
        <node concept="XkiVB" id="2u2lerfkkTj" role="3cqZAp">
          <ref role="37wK5l" node="4iq05MkydUo" resolve="AbstractJUnitTestMixin" />
          <node concept="37vLTw" id="5m2bsnoOJbs" role="37wK5m">
            <ref role="3cqZAo" node="5m2bsnoOICX" resolve="redirectStdOutErr" />
          </node>
        </node>
        <node concept="3clFbF" id="2u2lerfkiSY" role="3cqZAp">
          <node concept="37vLTI" id="2u2lerfkiT0" role="3clFbG">
            <node concept="37vLTw" id="2u2lerfkiT3" role="37vLTJ">
              <ref role="3cqZAo" node="2u2lerfkiSU" resolve="myTestsContributor" />
            </node>
            <node concept="37vLTw" id="2u2lerfkiT4" role="37vLTx">
              <ref role="3cqZAo" node="2u2lerfkiNa" resolve="testsContributor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2u2lerfkiNa" role="3clF46">
        <property role="TrG5h" value="testsContributor" />
        <node concept="3uibUv" id="2u2lerfkiN9" role="1tU5fm">
          <ref role="3uigEE" node="QfsuG7cJQw" resolve="JUnit4TestContributor" />
        </node>
      </node>
      <node concept="37vLTG" id="5m2bsnoOICX" role="3clF46">
        <property role="TrG5h" value="redirectStdOutErr" />
        <node concept="10P_77" id="5m2bsnoOIEz" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2u2lerfkile" role="jymVt" />
    <node concept="3Tm1VV" id="2u2lerfkia7" role="1B3o_S" />
    <node concept="3uibUv" id="2u2lerfkijW" role="1zkMxy">
      <ref role="3uigEE" node="4iq05MkwMhJ" resolve="AbstractJUnitTestMixin" />
    </node>
    <node concept="3clFb_" id="2u2lerfkimy" role="jymVt">
      <property role="TrG5h" value="executeSafe" />
      <node concept="3Tmbuc" id="2u2lerfkimz" role="1B3o_S" />
      <node concept="3cqZAl" id="2u2lerfkim$" role="3clF45" />
      <node concept="3uibUv" id="2u2lerfkimA" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
      </node>
      <node concept="3clFbS" id="2u2lerfkimB" role="3clF47">
        <node concept="3clFbF" id="2u2lerfkiuQ" role="3cqZAp">
          <node concept="1rXfSq" id="2u2lerfkiuP" role="3clFbG">
            <ref role="37wK5l" node="1wWWPEuapil" resolve="executeWithJunit4" />
            <node concept="2OqwBi" id="2u2lerfkjsn" role="37wK5m">
              <node concept="37vLTw" id="2u2lerfkjat" role="2Oq$k0">
                <ref role="3cqZAo" node="2u2lerfkiSU" resolve="myTestsContributor" />
              </node>
              <node concept="liA8E" id="2u2lerfkjJF" role="2OqNvi">
                <ref role="37wK5l" node="QfsuG7cLIV" resolve="gatherTests" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2u2lerfkimC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3q0sUHY63Qc" role="jymVt" />
    <node concept="3clFb_" id="1wWWPEuapil" role="jymVt">
      <property role="TrG5h" value="executeWithJunit4" />
      <node concept="37vLTG" id="1wWWPEuav$5" role="3clF46">
        <property role="TrG5h" value="requests" />
        <node concept="3uibUv" id="1wWWPEuaw0G" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="1wWWPEuaw0H" role="11_B2D">
            <ref role="3uigEE" to="cvlm:~Request" resolve="Request" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1wWWPEuapin" role="3clF45" />
      <node concept="3Tmbuc" id="2u2lerfj7O4" role="1B3o_S" />
      <node concept="3clFbS" id="1wWWPEuapip" role="3clF47">
        <node concept="3cpWs8" id="5Ti9jVZ8ryb" role="3cqZAp">
          <node concept="3cpWsn" id="5Ti9jVZ8ryc" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="jUnitCore" />
            <node concept="3uibUv" id="5Ti9jVZ8ryd" role="1tU5fm">
              <ref role="3uigEE" to="cvlm:~JUnitCore" resolve="JUnitCore" />
            </node>
            <node concept="1rXfSq" id="5Ti9jVZ8rye" role="33vP2m">
              <ref role="37wK5l" node="5Ti9jVZ8rym" resolve="prepareJUnitCore" />
              <node concept="37vLTw" id="4iq05Mkz3sF" role="37wK5m">
                <ref role="3cqZAo" node="1wWWPEuav$5" resolve="requests" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Ti9jVZ8ryg" role="3cqZAp">
          <node concept="1rXfSq" id="5Ti9jVZ8ryh" role="3clFbG">
            <ref role="37wK5l" node="5Ti9jVZ8ryE" resolve="doExecute" />
            <node concept="37vLTw" id="5Ti9jVZ8ryi" role="37wK5m">
              <ref role="3cqZAo" node="5Ti9jVZ8ryc" resolve="jUnitCore" />
            </node>
            <node concept="37vLTw" id="5Ti9jVZ8ryj" role="37wK5m">
              <ref role="3cqZAo" node="1wWWPEuav$5" resolve="requests" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4br3RNOLrdr" role="3cqZAp">
          <node concept="3clFbS" id="4br3RNOLrdt" role="3clFbx">
            <node concept="3SKdUt" id="4br3RNOLsD5" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXoeqQ" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXoeqR" role="1PaTwD">
                  <property role="3oM_SC" value="no" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoeqS" role="1PaTwD">
                  <property role="3oM_SC" value="real" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoeqT" role="1PaTwD">
                  <property role="3oM_SC" value="reason," />
                </node>
                <node concept="3oM_SD" id="ATZLwXoeqU" role="1PaTwD">
                  <property role="3oM_SC" value="just" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoeqV" role="1PaTwD">
                  <property role="3oM_SC" value="it's" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoeqW" role="1PaTwD">
                  <property role="3oM_SC" value="nice" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoeqX" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoeqY" role="1PaTwD">
                  <property role="3oM_SC" value="clean" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoeqZ" role="1PaTwD">
                  <property role="3oM_SC" value="up" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoer0" role="1PaTwD">
                  <property role="3oM_SC" value="after" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoer1" role="1PaTwD">
                  <property role="3oM_SC" value="yourself" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4br3RNOLs4p" role="3cqZAp">
              <node concept="2OqwBi" id="4br3RNOLs93" role="3clFbG">
                <node concept="37vLTw" id="4br3RNOLs4n" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Ti9jVZ8ryc" resolve="jUnitCore" />
                </node>
                <node concept="liA8E" id="4br3RNOLslP" role="2OqNvi">
                  <ref role="37wK5l" to="cvlm:~JUnitCore.removeListener(org.junit.runner.notification.RunListener)" resolve="removeListener" />
                  <node concept="37vLTw" id="4br3RNOLsss" role="37wK5m">
                    <ref role="3cqZAo" node="77hRUeKgzaH" resolve="myListener" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4br3RNOLrLj" role="3clFbw">
            <node concept="10Nm6u" id="4br3RNOLrPt" role="3uHU7w" />
            <node concept="37vLTw" id="4br3RNOLrg5" role="3uHU7B">
              <ref role="3cqZAo" node="77hRUeKgzaH" resolve="myListener" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1wWWPEuaCvi" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
      </node>
    </node>
    <node concept="2tJIrI" id="5m2bsnoR6ys" role="jymVt" />
    <node concept="3clFb_" id="5Ti9jVZ8rym" role="jymVt">
      <property role="TrG5h" value="prepareJUnitCore" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="5Ti9jVZ8ryn" role="3clF46">
        <property role="TrG5h" value="requests" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5Ti9jVZ8ryo" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="5Ti9jVZ8ryp" role="11_B2D">
            <ref role="3uigEE" to="cvlm:~Request" resolve="Request" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="5Ti9jVZ8ryq" role="3clF47">
        <node concept="3cpWs8" id="5Ti9jVZ8ryr" role="3cqZAp">
          <node concept="3cpWsn" id="5Ti9jVZ8rys" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="core" />
            <node concept="3uibUv" id="5Ti9jVZ8ryt" role="1tU5fm">
              <ref role="3uigEE" to="cvlm:~JUnitCore" resolve="JUnitCore" />
            </node>
            <node concept="2ShNRf" id="5Ti9jVZ8ryu" role="33vP2m">
              <node concept="1pGfFk" id="5Ti9jVZ8ryv" role="2ShVmc">
                <ref role="37wK5l" to="cvlm:~JUnitCore.&lt;init&gt;()" resolve="JUnitCore" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="77hRUeKgzP0" role="3cqZAp">
          <node concept="37vLTI" id="77hRUeKgzP2" role="3clFbG">
            <node concept="1rXfSq" id="77hRUeKgzvS" role="37vLTx">
              <ref role="37wK5l" node="5Ti9jVZ8rz3" resolve="createListener" />
              <node concept="37vLTw" id="77hRUeKgzvT" role="37wK5m">
                <ref role="3cqZAo" node="5Ti9jVZ8ryn" resolve="requests" />
              </node>
            </node>
            <node concept="37vLTw" id="77hRUeKg$pu" role="37vLTJ">
              <ref role="3cqZAo" node="77hRUeKgzaH" resolve="myListener" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Ti9jVZ8ryw" role="3cqZAp">
          <node concept="2OqwBi" id="5Ti9jVZ8ryx" role="3clFbG">
            <node concept="37vLTw" id="5Ti9jVZ8ryy" role="2Oq$k0">
              <ref role="3cqZAo" node="5Ti9jVZ8rys" resolve="core" />
            </node>
            <node concept="liA8E" id="5Ti9jVZ8ryz" role="2OqNvi">
              <ref role="37wK5l" to="cvlm:~JUnitCore.addListener(org.junit.runner.notification.RunListener)" resolve="addListener" />
              <node concept="37vLTw" id="77hRUeKg$Lx" role="37wK5m">
                <ref role="3cqZAo" node="77hRUeKgzaH" resolve="myListener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5Ti9jVZ8ryA" role="3cqZAp">
          <node concept="37vLTw" id="5Ti9jVZ8ryB" role="3cqZAk">
            <ref role="3cqZAo" node="5Ti9jVZ8rys" resolve="core" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3L_EFdmBA$h" role="1B3o_S" />
      <node concept="3uibUv" id="5Ti9jVZ8ryD" role="3clF45">
        <ref role="3uigEE" to="cvlm:~JUnitCore" resolve="JUnitCore" />
      </node>
    </node>
    <node concept="2tJIrI" id="3$nwI5AEiyx" role="jymVt" />
    <node concept="3clFb_" id="5Ti9jVZ8ryE" role="jymVt">
      <property role="TrG5h" value="doExecute" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="5Ti9jVZ8ryF" role="3clF46">
        <property role="TrG5h" value="core" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5Ti9jVZ8ryG" role="1tU5fm">
          <ref role="3uigEE" to="cvlm:~JUnitCore" resolve="JUnitCore" />
        </node>
      </node>
      <node concept="37vLTG" id="5Ti9jVZ8ryH" role="3clF46">
        <property role="TrG5h" value="requests" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5Ti9jVZ8ryI" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="5Ti9jVZ8ryJ" role="11_B2D">
            <ref role="3uigEE" to="cvlm:~Request" resolve="Request" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5Ti9jVZ8ryK" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
      </node>
      <node concept="3clFbS" id="5Ti9jVZ8ryL" role="3clF47">
        <node concept="1DcWWT" id="5Ti9jVZ8ryM" role="3cqZAp">
          <node concept="37vLTw" id="5Ti9jVZ8ryN" role="1DdaDG">
            <ref role="3cqZAo" node="5Ti9jVZ8ryH" resolve="requests" />
          </node>
          <node concept="3cpWsn" id="5Ti9jVZ8ryO" role="1Duv9x">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="request" />
            <node concept="3uibUv" id="5Ti9jVZ8ryP" role="1tU5fm">
              <ref role="3uigEE" to="cvlm:~Request" resolve="Request" />
            </node>
          </node>
          <node concept="3clFbS" id="5Ti9jVZ8ryQ" role="2LFqv$">
            <node concept="3clFbF" id="1DJqn2eEIEb" role="3cqZAp">
              <node concept="1rXfSq" id="1DJqn2eEIEa" role="3clFbG">
                <ref role="37wK5l" node="1DJqn2eDUn1" resolve="updateRunner" />
                <node concept="37vLTw" id="1DJqn2eEIHs" role="37wK5m">
                  <ref role="3cqZAo" node="5Ti9jVZ8ryO" resolve="request" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4br3RNOLsN$" role="3cqZAp">
              <node concept="3cpWsn" id="4br3RNOLsN_" role="3cpWs9">
                <property role="TrG5h" value="res" />
                <node concept="3uibUv" id="4br3RNOLsNy" role="1tU5fm">
                  <ref role="3uigEE" to="cvlm:~Result" resolve="Result" />
                </node>
                <node concept="2OqwBi" id="4br3RNOLsNA" role="33vP2m">
                  <node concept="37vLTw" id="4br3RNOLsNB" role="2Oq$k0">
                    <ref role="3cqZAo" node="5Ti9jVZ8ryF" resolve="core" />
                  </node>
                  <node concept="liA8E" id="4br3RNOLsNC" role="2OqNvi">
                    <ref role="37wK5l" to="cvlm:~JUnitCore.run(org.junit.runner.Runner)" resolve="run" />
                    <node concept="37vLTw" id="4br3RNOLsND" role="37wK5m">
                      <ref role="3cqZAo" node="3q0sUHY600I" resolve="myCurrentRunner" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4br3RNOLyZ7" role="3cqZAp">
              <node concept="d57v9" id="4br3RNOL$Xf" role="3clFbG">
                <node concept="37vLTw" id="4br3RNOLyZ5" role="37vLTJ">
                  <ref role="3cqZAo" node="4br3RNOLtwz" resolve="myFailureCount" />
                </node>
                <node concept="2OqwBi" id="4br3RNOLysY" role="37vLTx">
                  <node concept="37vLTw" id="4br3RNOLsNE" role="2Oq$k0">
                    <ref role="3cqZAo" node="4br3RNOLsN_" resolve="res" />
                  </node>
                  <node concept="liA8E" id="4br3RNOLyAl" role="2OqNvi">
                    <ref role="37wK5l" to="cvlm:~Result.getFailureCount()" resolve="getFailureCount" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4iq05MkzvqL" role="1B3o_S" />
      <node concept="3cqZAl" id="5Ti9jVZ8ryX" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4iq05MkzxLd" role="jymVt" />
    <node concept="3clFb_" id="4qWYmcp4GYJ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getCurrentRunner" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="4qWYmcp4GYM" role="3clF47">
        <node concept="3cpWs6" id="4qWYmcp4HYx" role="3cqZAp">
          <node concept="37vLTw" id="4qWYmcp4I9X" role="3cqZAk">
            <ref role="3cqZAo" node="3q0sUHY600I" resolve="myCurrentRunner" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3L_EFdmBAmy" role="1B3o_S" />
      <node concept="3uibUv" id="MY2kIkaIAJ" role="3clF45">
        <ref role="3uigEE" node="6lmAJjAMvTk" resolve="StoppableRunner" />
      </node>
      <node concept="2AHcQZ" id="4qWYmcp4Ygi" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="4iq05Mkzyo9" role="jymVt" />
    <node concept="3clFb_" id="1DJqn2eDUn1" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="updateRunner" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="1DJqn2eDUn4" role="3clF47">
        <node concept="3clFbF" id="1DJqn2eEIca" role="3cqZAp">
          <node concept="37vLTI" id="1DJqn2eEIcb" role="3clFbG">
            <node concept="37vLTw" id="1DJqn2eEIcc" role="37vLTJ">
              <ref role="3cqZAo" node="3q0sUHY600I" resolve="myCurrentRunner" />
            </node>
            <node concept="2ShNRf" id="1DJqn2eEIcd" role="37vLTx">
              <node concept="1pGfFk" id="1DJqn2eEIce" role="2ShVmc">
                <ref role="37wK5l" node="6lmAJjAMBRQ" resolve="StoppableRunner" />
                <node concept="37vLTw" id="4BRhTuUU_s7" role="37wK5m">
                  <ref role="3cqZAo" node="1DJqn2eEHvr" resolve="request" />
                </node>
                <node concept="37vLTw" id="6lmAJjANlNe" role="37wK5m">
                  <ref role="3cqZAo" node="3q0sUHY600E" resolve="myStopping" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1DJqn2eDTNF" role="1B3o_S" />
      <node concept="3cqZAl" id="1DJqn2eDUmZ" role="3clF45" />
      <node concept="37vLTG" id="1DJqn2eEHvr" role="3clF46">
        <property role="TrG5h" value="request" />
        <node concept="3uibUv" id="1DJqn2eEIOw" role="1tU5fm">
          <ref role="3uigEE" to="cvlm:~Request" resolve="Request" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4iq05Mkzwzy" role="jymVt" />
    <node concept="3clFb_" id="5Ti9jVZ8rz3" role="jymVt">
      <property role="TrG5h" value="createListener" />
      <property role="1EzhhJ" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="5Ti9jVZ8rz4" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="5Ti9jVZ8rz5" role="3clF46">
        <property role="TrG5h" value="requests" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5Ti9jVZ8rz6" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="5Ti9jVZ8rz7" role="11_B2D">
            <ref role="3uigEE" to="cvlm:~Request" resolve="Request" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="5Ti9jVZ8rz8" role="3clF47">
        <node concept="3cpWs6" id="6WFPrF9Paha" role="3cqZAp">
          <node concept="2ShNRf" id="6WFPrF9PaPU" role="3cqZAk">
            <node concept="1pGfFk" id="6WFPrF9PuiS" role="2ShVmc">
              <ref role="37wK5l" node="56tRMpP_bxF" resolve="DefaultRunListener" />
              <node concept="37vLTw" id="6WFPrF9QtT9" role="37wK5m">
                <ref role="3cqZAo" node="6WFPrF9Qc1B" resolve="myOutStream" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4iq05MkzAVQ" role="1B3o_S" />
      <node concept="3uibUv" id="5Ti9jVZ8rza" role="3clF45">
        <ref role="3uigEE" to="k76n:~RunListener" resolve="RunListener" />
      </node>
    </node>
    <node concept="2tJIrI" id="3q0sUHY694H" role="jymVt" />
    <node concept="2tJIrI" id="3q0sUHY66zA" role="jymVt" />
    <node concept="3clFb_" id="3q0sUHY66II" role="jymVt">
      <property role="TrG5h" value="stopRun" />
      <node concept="3Tm1VV" id="3q0sUHY66IJ" role="1B3o_S" />
      <node concept="3cqZAl" id="3q0sUHY66IK" role="3clF45" />
      <node concept="3clFbS" id="3q0sUHY66IP" role="3clF47">
        <node concept="3cpWs8" id="4qWYmcp57CS" role="3cqZAp">
          <node concept="3cpWsn" id="4qWYmcp57CT" role="3cpWs9">
            <property role="TrG5h" value="currentRunner" />
            <node concept="3uibUv" id="MY2kIkaIWK" role="1tU5fm">
              <ref role="3uigEE" node="6lmAJjAMvTk" resolve="StoppableRunner" />
            </node>
            <node concept="2OqwBi" id="4qWYmcp57CV" role="33vP2m">
              <node concept="Xjq3P" id="4qWYmcp57CW" role="2Oq$k0" />
              <node concept="liA8E" id="4qWYmcp57CX" role="2OqNvi">
                <ref role="37wK5l" node="4qWYmcp4GYJ" resolve="getCurrentRunner" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="xTUx3LiSFm" role="3cqZAp">
          <node concept="3clFbS" id="xTUx3LiSFo" role="3clFbx">
            <node concept="3clFbF" id="4qWYmcp57D2" role="3cqZAp">
              <node concept="2OqwBi" id="4qWYmcp57D3" role="3clFbG">
                <node concept="37vLTw" id="4qWYmcp57D4" role="2Oq$k0">
                  <ref role="3cqZAo" node="4qWYmcp57CT" resolve="currentRunner" />
                </node>
                <node concept="liA8E" id="4qWYmcp57D5" role="2OqNvi">
                  <ref role="37wK5l" node="6lmAJjAMBT$" resolve="pleaseStop" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="xTUx3LiSTs" role="3clFbw">
            <node concept="10Nm6u" id="xTUx3LiSTS" role="3uHU7w" />
            <node concept="37vLTw" id="xTUx3LiSHN" role="3uHU7B">
              <ref role="3cqZAo" node="4qWYmcp57CT" resolve="currentRunner" />
            </node>
          </node>
          <node concept="9aQIb" id="xTUx3LkLcW" role="9aQIa">
            <node concept="3clFbS" id="xTUx3LkLcX" role="9aQI4">
              <node concept="RRSsy" id="xTUx3LkLlc" role="3cqZAp">
                <property role="RRSoG" value="gZ5fksE/warn" />
                <node concept="Xl_RD" id="xTUx3LkLdY" role="RRSoy">
                  <property role="Xl_RC" value="the current runner is not initialized yet which might indicate that the run has not started yet." />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5uCAHWJU_Aa" role="3cqZAp">
          <node concept="37vLTI" id="5uCAHWJU_Li" role="3clFbG">
            <node concept="3clFbT" id="5uCAHWJU_Nj" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="5uCAHWJU_A8" role="37vLTJ">
              <ref role="3cqZAo" node="3q0sUHY600E" resolve="myStopping" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3q0sUHY66IQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4iq05MkwMhJ">
    <property role="TrG5h" value="AbstractJUnitTestMixin" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="4iq05Mky5QH" role="jymVt" />
    <node concept="312cEg" id="2zLV6oy8bTx" role="jymVt">
      <property role="TrG5h" value="myRedirectStdOut" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2zLV6oy8blU" role="1B3o_S" />
      <node concept="10P_77" id="2zLV6oy8bPD" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="6WFPrF9Qc1B" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myOutStream" />
      <node concept="3Tmbuc" id="4iq05Mk_RkH" role="1B3o_S" />
      <node concept="3uibUv" id="6WFPrF9QGv8" role="1tU5fm">
        <ref role="3uigEE" node="56tRMpP_bCe" resolve="CommandOutputStream" />
      </node>
    </node>
    <node concept="312cEg" id="4F7vylNq3_y" role="jymVt">
      <property role="TrG5h" value="myOriginalStdOut" />
      <node concept="3Tm6S6" id="4F7vylNq396" role="1B3o_S" />
      <node concept="3uibUv" id="4F7vylNq3uQ" role="1tU5fm">
        <ref role="3uigEE" to="guwi:~PrintStream" resolve="PrintStream" />
      </node>
    </node>
    <node concept="2tJIrI" id="4iq05Mk_Ttg" role="jymVt" />
    <node concept="312cEg" id="4br3RNOLtwz" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myFailureCount" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tmbuc" id="2NMjZ1W$JEY" role="1B3o_S" />
      <node concept="10Oyi0" id="4br3RNOLtvh" role="1tU5fm" />
      <node concept="3cmrfG" id="4br3RNOLINp" role="33vP2m">
        <property role="3cmrfH" value="-1" />
      </node>
    </node>
    <node concept="312cEg" id="4br3RNOPoMJ" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myException" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4br3RNOPo5e" role="1B3o_S" />
      <node concept="3uibUv" id="4br3RNOPoJB" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
      </node>
    </node>
    <node concept="2tJIrI" id="4iq05MkwMAU" role="jymVt" />
    <node concept="3clFbW" id="4iq05MkydUo" role="jymVt">
      <node concept="37vLTG" id="4iq05Mkyet5" role="3clF46">
        <property role="TrG5h" value="redirectStdOut" />
        <node concept="10P_77" id="4iq05Mkye$3" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="4iq05MkydUq" role="3clF45" />
      <node concept="3Tm1VV" id="4iq05MkydUr" role="1B3o_S" />
      <node concept="3clFbS" id="4iq05MkydUs" role="3clF47">
        <node concept="3clFbF" id="4iq05MkyeOn" role="3cqZAp">
          <node concept="37vLTI" id="4iq05MkyfIg" role="3clFbG">
            <node concept="37vLTw" id="4iq05MkyfR$" role="37vLTx">
              <ref role="3cqZAo" node="4iq05Mkyet5" resolve="redirectStdOut" />
            </node>
            <node concept="2OqwBi" id="4iq05MkyeWX" role="37vLTJ">
              <node concept="Xjq3P" id="4iq05MkyeOm" role="2Oq$k0" />
              <node concept="2OwXpG" id="4iq05Mkyfh_" role="2OqNvi">
                <ref role="2Oxat5" node="2zLV6oy8bTx" resolve="myRedirectStdOut" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4iq05Mkyg11" role="jymVt" />
    <node concept="3Tm1VV" id="4iq05MkwMhK" role="1B3o_S" />
    <node concept="3uibUv" id="4iq05MkypnZ" role="EKbjA">
      <ref role="3uigEE" node="5Ti9jVZ8rCq" resolve="TestExecutor" />
    </node>
    <node concept="3clFb_" id="4iq05MkyEIs" role="jymVt">
      <property role="TrG5h" value="execute" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4iq05MkyEIt" role="1B3o_S" />
      <node concept="3cqZAl" id="4iq05MkyEIv" role="3clF45" />
      <node concept="3clFbS" id="4iq05MkyEIz" role="3clF47">
        <node concept="3clFbF" id="4br3RNOLu2k" role="3cqZAp">
          <node concept="37vLTI" id="4br3RNOLy4t" role="3clFbG">
            <node concept="3cmrfG" id="4br3RNOLycJ" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="4br3RNOLu2i" role="37vLTJ">
              <ref role="3cqZAo" node="4br3RNOLtwz" resolve="myFailureCount" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="4iq05MkyWLB" role="3cqZAp">
          <node concept="3uVAMA" id="4iq05MkyZ6H" role="1zxBo5">
            <node concept="XOnhg" id="4iq05MkyZ6I" role="1zc67B">
              <property role="TrG5h" value="t" />
              <node concept="nSUau" id="4iq05MkyZ6J" role="1tU5fm">
                <node concept="3uibUv" id="4iq05MkyZ_U" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="4iq05MkyZ6K" role="1zc67A">
              <node concept="3SKdUt" id="4br3RNOLROA" role="3cqZAp">
                <node concept="1PaTwC" id="ATZLwXoer2" role="1aUNEU">
                  <node concept="3oM_SD" id="ATZLwXoer3" role="1PaTwD">
                    <property role="3oM_SC" value="XXX" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoer4" role="1PaTwD">
                    <property role="3oM_SC" value="myFailureCount" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoer5" role="1PaTwD">
                    <property role="3oM_SC" value="may" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoer6" role="1PaTwD">
                    <property role="3oM_SC" value="get" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoer7" role="1PaTwD">
                    <property role="3oM_SC" value="invalid" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoer8" role="1PaTwD">
                    <property role="3oM_SC" value="if" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoer9" role="1PaTwD">
                    <property role="3oM_SC" value="exception" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoera" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoerb" role="1PaTwD">
                    <property role="3oM_SC" value="thrown" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoerc" role="1PaTwD">
                    <property role="3oM_SC" value="from" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXoerd" role="1PaTwD">
                    <property role="3oM_SC" value="core.run" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4br3RNOLYGW" role="3cqZAp">
                <node concept="1rXfSq" id="4br3RNOLYGU" role="3clFbG">
                  <ref role="37wK5l" node="4br3RNOLXja" resolve="processThrowable" />
                  <node concept="37vLTw" id="4br3RNOLYNm" role="37wK5m">
                    <ref role="3cqZAo" node="4iq05MkyZ6I" resolve="t" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4iq05MkyWLD" role="1zxBo7">
            <node concept="3clFbF" id="4iq05Mk_DDD" role="3cqZAp">
              <node concept="1rXfSq" id="4iq05Mk_DDC" role="3clFbG">
                <ref role="37wK5l" node="4iq05Mk_DDz" resolve="executeSafe" />
              </node>
            </node>
            <node concept="3clFbH" id="4iq05MkyWLC" role="3cqZAp" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4iq05MkyEI$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4iq05Mk_FmD" role="jymVt" />
    <node concept="3clFb_" id="4iq05Mk_DDz" role="jymVt">
      <property role="TrG5h" value="executeSafe" />
      <property role="1EzhhJ" value="true" />
      <node concept="3Tmbuc" id="4iq05Mk_ILK" role="1B3o_S" />
      <node concept="3cqZAl" id="4iq05Mk_DD_" role="3clF45" />
      <node concept="3clFbS" id="4iq05Mk_DDt" role="3clF47" />
      <node concept="3uibUv" id="4iq05Mk_DDA" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
      </node>
    </node>
    <node concept="2tJIrI" id="4iq05MkyGqs" role="jymVt" />
    <node concept="3clFb_" id="5Ti9jVZ8rFN" role="jymVt">
      <property role="TrG5h" value="init" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="5Ti9jVZ8rFO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="5Ti9jVZ8rFP" role="3clF47">
        <node concept="RRSsy" id="3jYQuSB39J8" role="3cqZAp">
          <node concept="3cpWs3" id="4br3RNONNtq" role="RRSoy">
            <node concept="Xl_RD" id="5Ti9jVZ8rFR" role="3uHU7B">
              <property role="Xl_RC" value="Initializing " />
            </node>
            <node concept="2OqwBi" id="4br3RNONNuf" role="3uHU7w">
              <node concept="1rXfSq" id="4br3RNONNug" role="2Oq$k0">
                <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
              </node>
              <node concept="liA8E" id="4br3RNONNuh" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Class.getSimpleName()" resolve="getSimpleName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2zLV6oy87UK" role="3cqZAp">
          <node concept="37vLTI" id="2zLV6oy87UL" role="3clFbG">
            <node concept="37vLTw" id="2zLV6oy87UM" role="37vLTJ">
              <ref role="3cqZAo" node="6WFPrF9Qc1B" resolve="myOutStream" />
            </node>
            <node concept="2ShNRf" id="2zLV6oy87UN" role="37vLTx">
              <node concept="1pGfFk" id="2zLV6oy87UO" role="2ShVmc">
                <ref role="37wK5l" node="56tRMpP_bCf" resolve="CommandOutputStream" />
                <node concept="37vLTI" id="4F7vylNq5_R" role="37wK5m">
                  <node concept="37vLTw" id="4F7vylNq4XM" role="37vLTJ">
                    <ref role="3cqZAo" node="4F7vylNq3_y" resolve="myOriginalStdOut" />
                  </node>
                  <node concept="10M0yZ" id="2zLV6oy87UP" role="37vLTx">
                    <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                    <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2zLV6oy89BU" role="3cqZAp">
          <node concept="3clFbS" id="2zLV6oy89BW" role="3clFbx">
            <node concept="3clFbF" id="56tRMpP_bBy" role="3cqZAp">
              <node concept="2YIFZM" id="56tRMpP_bBz" role="3clFbG">
                <ref role="37wK5l" to="wyt6:~System.setOut(java.io.PrintStream)" resolve="setOut" />
                <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                <node concept="2ShNRf" id="56tRMpP_bB$" role="37wK5m">
                  <node concept="1pGfFk" id="56tRMpP_bB_" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~PrintStream.&lt;init&gt;(java.io.OutputStream)" resolve="PrintStream" />
                    <node concept="37vLTw" id="6WFPrF9Qhpn" role="37wK5m">
                      <ref role="3cqZAo" node="6WFPrF9Qc1B" resolve="myOutStream" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="2zLV6oy8fio" role="3clFbw">
            <ref role="3cqZAo" node="2zLV6oy8bTx" resolve="myRedirectStdOut" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Ti9jVZ8rG3" role="1B3o_S" />
      <node concept="3cqZAl" id="5Ti9jVZ8rG4" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4iq05MkxKEY" role="jymVt" />
    <node concept="3clFb_" id="5Ti9jVZ8rHC" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="5Ti9jVZ8rHD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="5Ti9jVZ8rHE" role="3clF47">
        <node concept="3clFbJ" id="2zLV6oy8hU3" role="3cqZAp">
          <node concept="3clFbS" id="2zLV6oy8hU5" role="3clFbx">
            <node concept="1gVbGN" id="4F7vylNq9D9" role="3cqZAp">
              <node concept="3y3z36" id="4F7vylNqaAP" role="1gVkn0">
                <node concept="10Nm6u" id="4F7vylNqaQN" role="3uHU7w" />
                <node concept="37vLTw" id="4F7vylNq9Ta" role="3uHU7B">
                  <ref role="3cqZAo" node="4F7vylNq3_y" resolve="myOriginalStdOut" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6WFPrF9RlEj" role="3cqZAp">
              <node concept="2YIFZM" id="6WFPrF9RlEk" role="3clFbG">
                <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                <ref role="37wK5l" to="wyt6:~System.setOut(java.io.PrintStream)" resolve="setOut" />
                <node concept="37vLTw" id="4F7vylNq8LA" role="37wK5m">
                  <ref role="3cqZAo" node="4F7vylNq3_y" resolve="myOriginalStdOut" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4F7vylNqbmD" role="3cqZAp">
              <node concept="37vLTI" id="4F7vylNqcgK" role="3clFbG">
                <node concept="10Nm6u" id="4F7vylNqcRI" role="37vLTx" />
                <node concept="37vLTw" id="4F7vylNqbmB" role="37vLTJ">
                  <ref role="3cqZAo" node="4F7vylNq3_y" resolve="myOriginalStdOut" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="2zLV6oy8iN9" role="3clFbw">
            <ref role="3cqZAo" node="2zLV6oy8bTx" resolve="myRedirectStdOut" />
          </node>
        </node>
        <node concept="RRSsy" id="3jYQuSB39Je" role="3cqZAp">
          <node concept="3cpWs3" id="4br3RNONGnJ" role="RRSoy">
            <node concept="2OqwBi" id="4br3RNONGHT" role="3uHU7w">
              <node concept="1rXfSq" id="4br3RNONGqp" role="2Oq$k0">
                <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
              </node>
              <node concept="liA8E" id="4br3RNONHzJ" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Class.getSimpleName()" resolve="getSimpleName" />
              </node>
            </node>
            <node concept="Xl_RD" id="2KIjP935cDr" role="3uHU7B">
              <property role="Xl_RC" value="Disposing " />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Ti9jVZ8rHO" role="1B3o_S" />
      <node concept="3cqZAl" id="5Ti9jVZ8rHP" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4iq05MkxLof" role="jymVt" />
    <node concept="3clFb_" id="4br3RNOLGTe" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getFailureCount" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4br3RNOLGTh" role="3clF47">
        <node concept="3cpWs6" id="4br3RNOLH$l" role="3cqZAp">
          <node concept="37vLTw" id="4br3RNOLH_r" role="3cqZAk">
            <ref role="3cqZAo" node="4br3RNOLtwz" resolve="myFailureCount" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4br3RNOLGel" role="1B3o_S" />
      <node concept="10Oyi0" id="4br3RNOLGRW" role="3clF45" />
      <node concept="2AHcQZ" id="4iq05MkzlJq" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4iq05Mkzu8x" role="jymVt" />
    <node concept="3clFb_" id="4br3RNOPs_h" role="jymVt">
      <property role="TrG5h" value="getExecutionError" />
      <node concept="3uibUv" id="4br3RNOPtiW" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
      </node>
      <node concept="3Tm1VV" id="4br3RNOPs_k" role="1B3o_S" />
      <node concept="3clFbS" id="4br3RNOPs_l" role="3clF47">
        <node concept="3cpWs6" id="4br3RNOPvQ8" role="3cqZAp">
          <node concept="37vLTw" id="4br3RNOPwuC" role="3cqZAk">
            <ref role="3cqZAo" node="4br3RNOPoMJ" resolve="myException" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4iq05MkzVSB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4iq05Mk$9jy" role="jymVt" />
    <node concept="3clFb_" id="4qWYmcp57D8" role="jymVt">
      <property role="TrG5h" value="stopRun" />
      <node concept="3Tm1VV" id="4br3RNOO_qe" role="1B3o_S" />
      <node concept="3cqZAl" id="4qWYmcp57Da" role="3clF45" />
      <node concept="3clFbS" id="4qWYmcp57CR" role="3clF47">
        <node concept="3SKdUt" id="3q0sUHY65NT" role="3cqZAp">
          <node concept="1PaTwC" id="3q0sUHY65NU" role="1aUNEU">
            <node concept="3oM_SD" id="3q0sUHY65NV" role="1PaTwD">
              <property role="3oM_SC" value="no-op" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4iq05Mkzo8t" role="jymVt" />
    <node concept="3clFb_" id="4br3RNOLXja" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="processThrowable" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4br3RNOLXjd" role="3clF47">
        <node concept="3clFbJ" id="4br3RNOPq4a" role="3cqZAp">
          <node concept="3clFbS" id="4br3RNOPq4c" role="3clFbx">
            <node concept="3SKdUt" id="4br3RNOPrJp" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXoere" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXoerf" role="1PaTwD">
                  <property role="3oM_SC" value="StoppedByUserException" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoerg" role="1PaTwD">
                  <property role="3oM_SC" value="means" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoerh" role="1PaTwD">
                  <property role="3oM_SC" value="external" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoeri" role="1PaTwD">
                  <property role="3oM_SC" value="intention" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoerj" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoerk" role="1PaTwD">
                  <property role="3oM_SC" value="stop" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoerl" role="1PaTwD">
                  <property role="3oM_SC" value="tests," />
                </node>
                <node concept="3oM_SD" id="ATZLwXoerm" role="1PaTwD">
                  <property role="3oM_SC" value="no" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoern" role="1PaTwD">
                  <property role="3oM_SC" value="reason" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoero" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXoerp" role="1PaTwD">
                  <property role="3oM_SC" value="log" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4br3RNOPpvg" role="3cqZAp">
              <node concept="37vLTI" id="4br3RNOPpXC" role="3clFbG">
                <node concept="37vLTw" id="4br3RNOPpYV" role="37vLTx">
                  <ref role="3cqZAo" node="4br3RNOLXYo" resolve="t" />
                </node>
                <node concept="37vLTw" id="4br3RNOPpve" role="37vLTJ">
                  <ref role="3cqZAo" node="4br3RNOPoMJ" resolve="myException" />
                </node>
              </node>
            </node>
            <node concept="RRSsy" id="3jYQuSB32Yr" role="3cqZAp">
              <property role="RRSoG" value="gZ5fh_4/error" />
              <node concept="Xl_RD" id="5Ti9jVZ8rxL" role="RRSoy">
                <property role="Xl_RC" value="Exception in the test framework" />
              </node>
              <node concept="37vLTw" id="5Ti9jVZ8rxM" role="RRSow">
                <ref role="3cqZAo" node="4br3RNOLXYo" resolve="t" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="4br3RNOPrE4" role="3clFbw">
            <node concept="2ZW3vV" id="4br3RNOPrE6" role="3fr31v">
              <node concept="3uibUv" id="4br3RNOPrE7" role="2ZW6by">
                <ref role="3uigEE" to="k76n:~StoppedByUserException" resolve="StoppedByUserException" />
              </node>
              <node concept="37vLTw" id="4br3RNOPrE8" role="2ZW6bz">
                <ref role="3cqZAo" node="4br3RNOLXYo" resolve="t" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="4br3RNOLWBM" role="1B3o_S" />
      <node concept="3cqZAl" id="4br3RNOLXhS" role="3clF45" />
      <node concept="37vLTG" id="4br3RNOLXYo" role="3clF46">
        <property role="TrG5h" value="t" />
        <node concept="3uibUv" id="4br3RNOLXYn" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="56tRMpP_bCe">
    <property role="TrG5h" value="CommandOutputStream" />
    <property role="3GE5qa" value="util" />
    <node concept="3Tm1VV" id="56tRMpP_bCz" role="1B3o_S" />
    <node concept="3uibUv" id="56tRMpP_bC$" role="1zkMxy">
      <ref role="3uigEE" to="guwi:~FilterOutputStream" resolve="FilterOutputStream" />
    </node>
    <node concept="312cEg" id="56tRMpP_bCw" role="jymVt">
      <property role="TrG5h" value="myPrintStream" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="56tRMpP_bCx" role="1B3o_S" />
      <node concept="3uibUv" id="6WFPrF9R8b7" role="1tU5fm">
        <ref role="3uigEE" to="guwi:~PrintStream" resolve="PrintStream" />
      </node>
    </node>
    <node concept="312cEg" id="56tRMpP_bCt" role="jymVt">
      <property role="TrG5h" value="myLastChar" />
      <node concept="3Tm6S6" id="56tRMpP_bCu" role="1B3o_S" />
      <node concept="10Oyi0" id="56tRMpP_bCv" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="6WFPrF9QN98" role="jymVt" />
    <node concept="3clFbW" id="56tRMpP_bCf" role="jymVt">
      <node concept="3cqZAl" id="56tRMpP_bCg" role="3clF45" />
      <node concept="3Tm1VV" id="56tRMpP_bCh" role="1B3o_S" />
      <node concept="3clFbS" id="56tRMpP_bCi" role="3clF47">
        <node concept="XkiVB" id="56tRMpP_bCj" role="3cqZAp">
          <ref role="37wK5l" to="guwi:~FilterOutputStream.&lt;init&gt;(java.io.OutputStream)" resolve="FilterOutputStream" />
          <node concept="37vLTw" id="2BHiRxglt5G" role="37wK5m">
            <ref role="3cqZAo" node="56tRMpP_bCr" resolve="out" />
          </node>
        </node>
        <node concept="3clFbF" id="56tRMpP_bCl" role="3cqZAp">
          <node concept="37vLTI" id="56tRMpP_bCm" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgmxK0" role="37vLTx">
              <ref role="3cqZAo" node="56tRMpP_bCr" resolve="out" />
            </node>
            <node concept="2OqwBi" id="56tRMpP_bCo" role="37vLTJ">
              <node concept="2OwXpG" id="56tRMpP_bCp" role="2OqNvi">
                <ref role="2Oxat5" node="56tRMpP_bCw" resolve="myPrintStream" />
              </node>
              <node concept="Xjq3P" id="56tRMpP_bCq" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="56tRMpP_bCr" role="3clF46">
        <property role="TrG5h" value="out" />
        <node concept="3uibUv" id="56tRMpP_bCs" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~PrintStream" resolve="PrintStream" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2KIjP932GU_" role="jymVt" />
    <node concept="3clFb_" id="56tRMpP_bC_" role="jymVt">
      <property role="TrG5h" value="write" />
      <node concept="3Tm1VV" id="56tRMpP_bCA" role="1B3o_S" />
      <node concept="3cqZAl" id="56tRMpP_bCB" role="3clF45" />
      <node concept="37vLTG" id="56tRMpP_bCC" role="3clF46">
        <property role="TrG5h" value="b" />
        <node concept="10Oyi0" id="56tRMpP_bCD" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="56tRMpP_bCE" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="3clFbS" id="56tRMpP_bCF" role="3clF47">
        <node concept="3clFbF" id="56tRMpP_bCG" role="3cqZAp">
          <node concept="37vLTI" id="56tRMpP_bCH" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxglnmB" role="37vLTx">
              <ref role="3cqZAo" node="56tRMpP_bCC" resolve="b" />
            </node>
            <node concept="2OqwBi" id="56tRMpP_bCJ" role="37vLTJ">
              <node concept="2OwXpG" id="56tRMpP_bCK" role="2OqNvi">
                <ref role="2Oxat5" node="56tRMpP_bCt" resolve="myLastChar" />
              </node>
              <node concept="Xjq3P" id="56tRMpP_bCL" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="56tRMpP_bCM" role="3cqZAp">
          <node concept="2OqwBi" id="56tRMpP_bCN" role="3clFbG">
            <node concept="2OqwBi" id="56tRMpP_bCO" role="2Oq$k0">
              <node concept="2OwXpG" id="56tRMpP_bCP" role="2OqNvi">
                <ref role="2Oxat5" to="guwi:~FilterOutputStream.out" resolve="out" />
              </node>
              <node concept="Xjq3P" id="56tRMpP_bCQ" role="2Oq$k0" />
            </node>
            <node concept="liA8E" id="56tRMpP_bCR" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~OutputStream.write(int)" resolve="write" />
              <node concept="37vLTw" id="2BHiRxglCyD" role="37wK5m">
                <ref role="3cqZAo" node="56tRMpP_bCC" resolve="b" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_S6Bx" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2KIjP932HSn" role="jymVt" />
    <node concept="3clFb_" id="56tRMpP_bCT" role="jymVt">
      <property role="TrG5h" value="write" />
      <node concept="3Tm1VV" id="56tRMpP_bCU" role="1B3o_S" />
      <node concept="3cqZAl" id="56tRMpP_bCV" role="3clF45" />
      <node concept="37vLTG" id="56tRMpP_bCW" role="3clF46">
        <property role="TrG5h" value="b" />
        <node concept="10Q1$e" id="56tRMpP_bCX" role="1tU5fm">
          <node concept="10PrrI" id="56tRMpP_bCY" role="10Q1$1" />
        </node>
      </node>
      <node concept="3uibUv" id="56tRMpP_bCZ" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="3clFbS" id="56tRMpP_bD0" role="3clF47">
        <node concept="3clFbJ" id="56tRMpP_bD1" role="3cqZAp">
          <node concept="3eOSWO" id="56tRMpP_bD2" role="3clFbw">
            <node concept="3cmrfG" id="56tRMpP_bD3" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="56tRMpP_bD4" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxgmytU" role="2Oq$k0">
                <ref role="3cqZAo" node="56tRMpP_bCW" resolve="b" />
              </node>
              <node concept="1Rwk04" id="56tRMpP_bD6" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbS" id="56tRMpP_bD7" role="3clFbx">
            <node concept="3clFbF" id="56tRMpP_bD8" role="3cqZAp">
              <node concept="37vLTI" id="56tRMpP_bD9" role="3clFbG">
                <node concept="AH0OO" id="56tRMpP_bDa" role="37vLTx">
                  <node concept="3cpWsd" id="56tRMpP_bDb" role="AHEQo">
                    <node concept="3cmrfG" id="56tRMpP_bDc" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="56tRMpP_bDd" role="3uHU7B">
                      <node concept="37vLTw" id="2BHiRxgmKdm" role="2Oq$k0">
                        <ref role="3cqZAo" node="56tRMpP_bCW" resolve="b" />
                      </node>
                      <node concept="1Rwk04" id="56tRMpP_bDf" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2BHiRxghhrG" role="AHHXb">
                    <ref role="3cqZAo" node="56tRMpP_bCW" resolve="b" />
                  </node>
                </node>
                <node concept="2OqwBi" id="56tRMpP_bDh" role="37vLTJ">
                  <node concept="2OwXpG" id="56tRMpP_bDi" role="2OqNvi">
                    <ref role="2Oxat5" node="56tRMpP_bCt" resolve="myLastChar" />
                  </node>
                  <node concept="Xjq3P" id="56tRMpP_bDj" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="56tRMpP_bDk" role="3cqZAp">
          <node concept="2OqwBi" id="56tRMpP_bDl" role="3clFbG">
            <node concept="2OqwBi" id="56tRMpP_bDm" role="2Oq$k0">
              <node concept="2OwXpG" id="56tRMpP_bDn" role="2OqNvi">
                <ref role="2Oxat5" to="guwi:~FilterOutputStream.out" resolve="out" />
              </node>
              <node concept="Xjq3P" id="56tRMpP_bDo" role="2Oq$k0" />
            </node>
            <node concept="liA8E" id="56tRMpP_bDp" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~OutputStream.write(byte[])" resolve="write" />
              <node concept="37vLTw" id="2BHiRxglJWE" role="37wK5m">
                <ref role="3cqZAo" node="56tRMpP_bCW" resolve="b" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_S6Bv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2KIjP932IQj" role="jymVt" />
    <node concept="3clFb_" id="56tRMpP_bDr" role="jymVt">
      <property role="TrG5h" value="write" />
      <node concept="3Tm1VV" id="56tRMpP_bDs" role="1B3o_S" />
      <node concept="3cqZAl" id="56tRMpP_bDt" role="3clF45" />
      <node concept="37vLTG" id="56tRMpP_bDu" role="3clF46">
        <property role="TrG5h" value="b" />
        <node concept="10Q1$e" id="56tRMpP_bDv" role="1tU5fm">
          <node concept="10PrrI" id="56tRMpP_bDw" role="10Q1$1" />
        </node>
      </node>
      <node concept="37vLTG" id="56tRMpP_bDx" role="3clF46">
        <property role="TrG5h" value="off" />
        <node concept="10Oyi0" id="56tRMpP_bDy" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="56tRMpP_bDz" role="3clF46">
        <property role="TrG5h" value="len" />
        <node concept="10Oyi0" id="56tRMpP_bD$" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="56tRMpP_bD_" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="3clFbS" id="56tRMpP_bDA" role="3clF47">
        <node concept="3cpWs8" id="56tRMpP_bDB" role="3cqZAp">
          <node concept="3cpWsn" id="56tRMpP_bDC" role="3cpWs9">
            <property role="TrG5h" value="lastIndex" />
            <node concept="10Oyi0" id="56tRMpP_bDD" role="1tU5fm" />
            <node concept="3cpWsd" id="56tRMpP_bDE" role="33vP2m">
              <node concept="3cmrfG" id="56tRMpP_bDF" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="3cpWs3" id="56tRMpP_bDG" role="3uHU7B">
                <node concept="37vLTw" id="2BHiRxgm6cb" role="3uHU7B">
                  <ref role="3cqZAo" node="56tRMpP_bDx" resolve="off" />
                </node>
                <node concept="37vLTw" id="2BHiRxgheF8" role="3uHU7w">
                  <ref role="3cqZAo" node="56tRMpP_bDz" resolve="len" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="56tRMpP_bDJ" role="3cqZAp">
          <node concept="1Wc70l" id="56tRMpP_bDK" role="3clFbw">
            <node concept="2dkUwp" id="56tRMpP_bDL" role="3uHU7B">
              <node concept="3cmrfG" id="56tRMpP_bDM" role="3uHU7B">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="3GM_nagTtBc" role="3uHU7w">
                <ref role="3cqZAo" node="56tRMpP_bDC" resolve="lastIndex" />
              </node>
            </node>
            <node concept="3eOVzh" id="56tRMpP_bDO" role="3uHU7w">
              <node concept="37vLTw" id="3GM_nagTtxc" role="3uHU7B">
                <ref role="3cqZAo" node="56tRMpP_bDC" resolve="lastIndex" />
              </node>
              <node concept="2OqwBi" id="56tRMpP_bDQ" role="3uHU7w">
                <node concept="37vLTw" id="2BHiRxgm8VH" role="2Oq$k0">
                  <ref role="3cqZAo" node="56tRMpP_bDu" resolve="b" />
                </node>
                <node concept="1Rwk04" id="56tRMpP_bDS" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="56tRMpP_bDT" role="3clFbx">
            <node concept="3clFbF" id="56tRMpP_bDU" role="3cqZAp">
              <node concept="37vLTI" id="56tRMpP_bDV" role="3clFbG">
                <node concept="AH0OO" id="56tRMpP_bDW" role="37vLTx">
                  <node concept="37vLTw" id="3GM_nagTBcJ" role="AHEQo">
                    <ref role="3cqZAo" node="56tRMpP_bDC" resolve="lastIndex" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxglPk6" role="AHHXb">
                    <ref role="3cqZAo" node="56tRMpP_bDu" resolve="b" />
                  </node>
                </node>
                <node concept="2OqwBi" id="56tRMpP_bDZ" role="37vLTJ">
                  <node concept="2OwXpG" id="56tRMpP_bE0" role="2OqNvi">
                    <ref role="2Oxat5" node="56tRMpP_bCt" resolve="myLastChar" />
                  </node>
                  <node concept="Xjq3P" id="56tRMpP_bE1" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="56tRMpP_bE2" role="3cqZAp">
          <node concept="2OqwBi" id="56tRMpP_bE3" role="3clFbG">
            <node concept="2OqwBi" id="56tRMpP_bE4" role="2Oq$k0">
              <node concept="Xjq3P" id="56tRMpP_bE5" role="2Oq$k0" />
              <node concept="2OwXpG" id="56tRMpP_bE6" role="2OqNvi">
                <ref role="2Oxat5" to="guwi:~FilterOutputStream.out" resolve="out" />
              </node>
            </node>
            <node concept="liA8E" id="56tRMpP_bE7" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~OutputStream.write(byte[],int,int)" resolve="write" />
              <node concept="37vLTw" id="2BHiRxgm8nS" role="37wK5m">
                <ref role="3cqZAo" node="56tRMpP_bDu" resolve="b" />
              </node>
              <node concept="37vLTw" id="2BHiRxgm9Z8" role="37wK5m">
                <ref role="3cqZAo" node="56tRMpP_bDx" resolve="off" />
              </node>
              <node concept="37vLTw" id="2BHiRxgm6Wi" role="37wK5m">
                <ref role="3cqZAo" node="56tRMpP_bDz" resolve="len" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_S6Bw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2KIjP932JOg" role="jymVt" />
    <node concept="3clFb_" id="56tRMpP_bEb" role="jymVt">
      <property role="TrG5h" value="writeCommand" />
      <node concept="3cqZAl" id="56tRMpP_bEc" role="3clF45" />
      <node concept="3Tm1VV" id="56tRMpP_bEd" role="1B3o_S" />
      <node concept="3clFbS" id="56tRMpP_bEe" role="3clF47">
        <node concept="3clFbJ" id="56tRMpP_bEf" role="3cqZAp">
          <node concept="1Wc70l" id="56tRMpP_bEg" role="3clFbw">
            <node concept="3y3z36" id="56tRMpP_bEh" role="3uHU7w">
              <node concept="1Xhbcc" id="56tRMpP_bEi" role="3uHU7w">
                <property role="1XhdNS" value="\r" />
              </node>
              <node concept="2OqwBi" id="56tRMpP_bEj" role="3uHU7B">
                <node concept="2OwXpG" id="56tRMpP_bEk" role="2OqNvi">
                  <ref role="2Oxat5" node="56tRMpP_bCt" resolve="myLastChar" />
                </node>
                <node concept="Xjq3P" id="56tRMpP_bEl" role="2Oq$k0" />
              </node>
            </node>
            <node concept="3y3z36" id="56tRMpP_bEm" role="3uHU7B">
              <node concept="2OqwBi" id="56tRMpP_bEn" role="3uHU7B">
                <node concept="2OwXpG" id="56tRMpP_bEo" role="2OqNvi">
                  <ref role="2Oxat5" node="56tRMpP_bCt" resolve="myLastChar" />
                </node>
                <node concept="Xjq3P" id="56tRMpP_bEp" role="2Oq$k0" />
              </node>
              <node concept="1Xhbcc" id="56tRMpP_bEq" role="3uHU7w">
                <property role="1XhdNS" value="\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="56tRMpP_bEr" role="3clFbx">
            <node concept="3clFbF" id="56tRMpP_bEs" role="3cqZAp">
              <node concept="2OqwBi" id="56tRMpP_bEt" role="3clFbG">
                <node concept="2OqwBi" id="56tRMpP_bEu" role="2Oq$k0">
                  <node concept="2OwXpG" id="56tRMpP_bEv" role="2OqNvi">
                    <ref role="2Oxat5" node="56tRMpP_bCw" resolve="myPrintStream" />
                  </node>
                  <node concept="Xjq3P" id="56tRMpP_bEw" role="2Oq$k0" />
                </node>
                <node concept="liA8E" id="56tRMpP_bEx" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println()" resolve="println" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="56tRMpP_bEy" role="3cqZAp">
          <node concept="2OqwBi" id="56tRMpP_bEz" role="3clFbG">
            <node concept="2OqwBi" id="56tRMpP_bE$" role="2Oq$k0">
              <node concept="Xjq3P" id="56tRMpP_bE_" role="2Oq$k0" />
              <node concept="2OwXpG" id="56tRMpP_bEA" role="2OqNvi">
                <ref role="2Oxat5" node="56tRMpP_bCw" resolve="myPrintStream" />
              </node>
            </node>
            <node concept="liA8E" id="56tRMpP_bEB" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="37vLTw" id="2BHiRxgm9zR" role="37wK5m">
                <ref role="3cqZAo" node="56tRMpP_bEJ" resolve="command" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="56tRMpP_bED" role="3cqZAp">
          <node concept="37vLTI" id="56tRMpP_bEE" role="3clFbG">
            <node concept="1Xhbcc" id="56tRMpP_bEF" role="37vLTx">
              <property role="1XhdNS" value="\n" />
            </node>
            <node concept="2OqwBi" id="56tRMpP_bEG" role="37vLTJ">
              <node concept="2OwXpG" id="56tRMpP_bEH" role="2OqNvi">
                <ref role="2Oxat5" node="56tRMpP_bCt" resolve="myLastChar" />
              </node>
              <node concept="Xjq3P" id="56tRMpP_bEI" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="56tRMpP_bEJ" role="3clF46">
        <property role="TrG5h" value="command" />
        <node concept="17QB3L" id="56tRMpP_bEK" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2KIjP932KMe" role="jymVt" />
    <node concept="3clFb_" id="56tRMpP_bEL" role="jymVt">
      <property role="TrG5h" value="flushSafe" />
      <node concept="3cqZAl" id="56tRMpP_bEM" role="3clF45" />
      <node concept="3Tm1VV" id="56tRMpP_bEN" role="1B3o_S" />
      <node concept="3clFbS" id="56tRMpP_bEO" role="3clF47">
        <node concept="3J1_TO" id="56tRMpP_bEP" role="3cqZAp">
          <node concept="3clFbS" id="56tRMpP_bEQ" role="1zxBo7">
            <node concept="3clFbF" id="56tRMpP_bER" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyyHWZ" role="3clFbG">
                <ref role="37wK5l" to="guwi:~FilterOutputStream.flush()" resolve="flush" />
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="56tRMpP_bET" role="1zxBo5">
            <node concept="XOnhg" id="56tRMpP_bEU" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ignored" />
              <node concept="nSUau" id="xvs04dHd6s" role="1tU5fm">
                <node concept="3uibUv" id="56tRMpP_bEV" role="nSUat">
                  <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="56tRMpP_bEW" role="1zc67A" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6lmAJjAMvTk">
    <property role="3GE5qa" value="util" />
    <property role="TrG5h" value="StoppableRunner" />
    <property role="1EXbeo" value="true" />
    <node concept="312cEg" id="6lmAJjAMBR$" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myLock" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6lmAJjAMBR_" role="1B3o_S" />
      <node concept="3uibUv" id="6lmAJjAMBRA" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="Xl_RD" id="6lmAJjAMBRB" role="33vP2m">
        <property role="Xl_RC" value="" />
      </node>
    </node>
    <node concept="312cEg" id="6lmAJjAMBRC" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myRequest" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="6lmAJjAMSV9" role="1B3o_S" />
      <node concept="3uibUv" id="6lmAJjAMBRE" role="1tU5fm">
        <ref role="3uigEE" to="cvlm:~Request" resolve="Request" />
      </node>
    </node>
    <node concept="312cEg" id="6lmAJjAMBRI" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myStopping" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="6lmAJjAMBRJ" role="1B3o_S" />
      <node concept="10P_77" id="6lmAJjAMBRK" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="6lmAJjAMBRL" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myNotifier" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="6lmAJjAMBRM" role="1B3o_S" />
      <node concept="3uibUv" id="6lmAJjAMBRN" role="1tU5fm">
        <ref role="3uigEE" to="k76n:~RunNotifier" resolve="RunNotifier" />
      </node>
      <node concept="10Nm6u" id="6lmAJjAMBRO" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="6lmAJjAMBRP" role="jymVt" />
    <node concept="3clFbW" id="6lmAJjAMBRQ" role="jymVt">
      <node concept="3cqZAl" id="6lmAJjAMBRR" role="3clF45" />
      <node concept="3clFbS" id="6lmAJjAMBRS" role="3clF47">
        <node concept="3clFbF" id="6lmAJjAMBRT" role="3cqZAp">
          <node concept="37vLTI" id="6lmAJjAMBRU" role="3clFbG">
            <node concept="37vLTw" id="6lmAJjAMBRV" role="37vLTx">
              <ref role="3cqZAo" node="6lmAJjAMBS6" resolve="request" />
            </node>
            <node concept="37vLTw" id="6lmAJjAMBRW" role="37vLTJ">
              <ref role="3cqZAo" node="6lmAJjAMBRC" resolve="myRequest" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6lmAJjAMBS1" role="3cqZAp">
          <node concept="37vLTI" id="6lmAJjAMBS2" role="3clFbG">
            <node concept="37vLTw" id="6lmAJjAMBS3" role="37vLTx">
              <ref role="3cqZAo" node="6lmAJjAMBSa" resolve="stopping" />
            </node>
            <node concept="37vLTw" id="6lmAJjAMBS4" role="37vLTJ">
              <ref role="3cqZAo" node="6lmAJjAMBRI" resolve="myStopping" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6lmAJjAMBS5" role="1B3o_S" />
      <node concept="37vLTG" id="6lmAJjAMBS6" role="3clF46">
        <property role="TrG5h" value="request" />
        <node concept="3uibUv" id="6lmAJjAMBS7" role="1tU5fm">
          <ref role="3uigEE" to="cvlm:~Request" resolve="Request" />
        </node>
      </node>
      <node concept="37vLTG" id="6lmAJjAMBSa" role="3clF46">
        <property role="TrG5h" value="stopping" />
        <node concept="10P_77" id="6lmAJjAMBSb" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6lmAJjAMBSc" role="jymVt" />
    <node concept="3clFb_" id="6lmAJjAMBSd" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDescription" />
      <property role="DiZV1" value="false" />
      <node concept="3uibUv" id="6lmAJjAMBSe" role="3clF45">
        <ref role="3uigEE" to="cvlm:~Description" resolve="Description" />
      </node>
      <node concept="3Tm1VV" id="6lmAJjAMBSf" role="1B3o_S" />
      <node concept="3clFbS" id="6lmAJjAMBSg" role="3clF47">
        <node concept="3clFbF" id="6lmAJjAMBSh" role="3cqZAp">
          <node concept="2OqwBi" id="6lmAJjAMBSi" role="3clFbG">
            <node concept="2OqwBi" id="6lmAJjAMBSj" role="2Oq$k0">
              <node concept="37vLTw" id="6lmAJjAMBSk" role="2Oq$k0">
                <ref role="3cqZAo" node="6lmAJjAMBRC" resolve="myRequest" />
              </node>
              <node concept="liA8E" id="6lmAJjAMBSl" role="2OqNvi">
                <ref role="37wK5l" to="cvlm:~Request.getRunner()" resolve="getRunner" />
              </node>
            </node>
            <node concept="liA8E" id="6lmAJjAMBSm" role="2OqNvi">
              <ref role="37wK5l" to="cvlm:~Runner.getDescription()" resolve="getDescription" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6lmAJjAMBSn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6lmAJjAMBSo" role="jymVt" />
    <node concept="3clFb_" id="6lmAJjAMBSp" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="run" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6lmAJjAMBSq" role="1B3o_S" />
      <node concept="3cqZAl" id="6lmAJjAMBSr" role="3clF45" />
      <node concept="37vLTG" id="6lmAJjAMBSs" role="3clF46">
        <property role="TrG5h" value="notifier" />
        <node concept="3uibUv" id="6lmAJjAMBSt" role="1tU5fm">
          <ref role="3uigEE" to="k76n:~RunNotifier" resolve="RunNotifier" />
        </node>
      </node>
      <node concept="3clFbS" id="6lmAJjAMBSu" role="3clF47">
        <node concept="1HWtB8" id="6lmAJjAMBSv" role="3cqZAp">
          <node concept="37vLTw" id="6lmAJjAMBSw" role="1HWFw0">
            <ref role="3cqZAo" node="6lmAJjAMBR$" resolve="myLock" />
          </node>
          <node concept="3clFbS" id="6lmAJjAMBSx" role="1HWHxc">
            <node concept="3clFbJ" id="6lmAJjAMBSy" role="3cqZAp">
              <node concept="3clFbS" id="6lmAJjAMBSz" role="3clFbx">
                <node concept="3clFbF" id="6lmAJjAMBS$" role="3cqZAp">
                  <node concept="2OqwBi" id="6lmAJjAMBS_" role="3clFbG">
                    <node concept="37vLTw" id="6lmAJjAMBSA" role="2Oq$k0">
                      <ref role="3cqZAo" node="6lmAJjAMBSs" resolve="notifier" />
                    </node>
                    <node concept="liA8E" id="6lmAJjAMBSB" role="2OqNvi">
                      <ref role="37wK5l" to="k76n:~RunNotifier.pleaseStop()" resolve="pleaseStop" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="6lmAJjAMBSC" role="3clFbw">
                <ref role="3cqZAo" node="6lmAJjAMBRI" resolve="myStopping" />
              </node>
            </node>
            <node concept="3clFbF" id="6lmAJjAMBSD" role="3cqZAp">
              <node concept="37vLTI" id="6lmAJjAMBSE" role="3clFbG">
                <node concept="37vLTw" id="6lmAJjAMBSF" role="37vLTJ">
                  <ref role="3cqZAo" node="6lmAJjAMBRL" resolve="myNotifier" />
                </node>
                <node concept="37vLTw" id="6lmAJjAMBSG" role="37vLTx">
                  <ref role="3cqZAo" node="6lmAJjAMBSs" resolve="notifier" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6lmAJjAN07Q" role="3cqZAp">
          <node concept="1rXfSq" id="6lmAJjAN07O" role="3clFbG">
            <ref role="37wK5l" node="6lmAJjAMYcP" resolve="doRun" />
            <node concept="37vLTw" id="6lmAJjAN0cu" role="37wK5m">
              <ref role="3cqZAo" node="6lmAJjAMBSs" resolve="notifier" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6lmAJjAMBSZ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6lmAJjAMXL3" role="jymVt" />
    <node concept="3clFb_" id="6lmAJjAMYcP" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="doRun" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="6lmAJjAMYcS" role="3clF47">
        <node concept="3clFbF" id="6lmAJjAMYWI" role="3cqZAp">
          <node concept="2OqwBi" id="6lmAJjAMYWJ" role="3clFbG">
            <node concept="2OqwBi" id="6lmAJjAMYWK" role="2Oq$k0">
              <node concept="37vLTw" id="6lmAJjAMYWL" role="2Oq$k0">
                <ref role="3cqZAo" node="6lmAJjAMBRC" resolve="myRequest" />
              </node>
              <node concept="liA8E" id="6lmAJjAMYWM" role="2OqNvi">
                <ref role="37wK5l" to="cvlm:~Request.getRunner()" resolve="getRunner" />
              </node>
            </node>
            <node concept="liA8E" id="6lmAJjAMYWN" role="2OqNvi">
              <ref role="37wK5l" to="cvlm:~Runner.run(org.junit.runner.notification.RunNotifier)" resolve="run" />
              <node concept="37vLTw" id="6lmAJjAMYWO" role="37wK5m">
                <ref role="3cqZAo" node="6lmAJjAMZ0R" resolve="notifier" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="6lmAJjAMY2g" role="1B3o_S" />
      <node concept="3cqZAl" id="6lmAJjAMYcN" role="3clF45" />
      <node concept="37vLTG" id="6lmAJjAMZ0R" role="3clF46">
        <property role="TrG5h" value="notifier" />
        <node concept="3uibUv" id="6lmAJjAMZn$" role="1tU5fm">
          <ref role="3uigEE" to="k76n:~RunNotifier" resolve="RunNotifier" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6lmAJjAMBTz" role="jymVt" />
    <node concept="3clFb_" id="6lmAJjAMBT$" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="pleaseStop" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="6lmAJjAMBT_" role="3clF47">
        <node concept="1HWtB8" id="6lmAJjAMBTA" role="3cqZAp">
          <node concept="37vLTw" id="6lmAJjAMBTB" role="1HWFw0">
            <ref role="3cqZAo" node="6lmAJjAMBR$" resolve="myLock" />
          </node>
          <node concept="3clFbS" id="6lmAJjAMBTC" role="1HWHxc">
            <node concept="3clFbJ" id="6lmAJjAMBTD" role="3cqZAp">
              <node concept="3clFbS" id="6lmAJjAMBTE" role="3clFbx">
                <node concept="3clFbF" id="6lmAJjAMBTF" role="3cqZAp">
                  <node concept="2OqwBi" id="6lmAJjAMBTG" role="3clFbG">
                    <node concept="37vLTw" id="6lmAJjAMBTH" role="2Oq$k0">
                      <ref role="3cqZAo" node="6lmAJjAMBRL" resolve="myNotifier" />
                    </node>
                    <node concept="liA8E" id="6lmAJjAMBTI" role="2OqNvi">
                      <ref role="37wK5l" to="k76n:~RunNotifier.pleaseStop()" resolve="pleaseStop" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="6lmAJjAMBTJ" role="3clFbw">
                <node concept="10Nm6u" id="6lmAJjAMBTK" role="3uHU7w" />
                <node concept="37vLTw" id="6lmAJjAMBTL" role="3uHU7B">
                  <ref role="3cqZAo" node="6lmAJjAMBRL" resolve="myNotifier" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6lmAJjAMBTM" role="3cqZAp">
              <node concept="37vLTI" id="6lmAJjAMBTN" role="3clFbG">
                <node concept="3clFbT" id="6lmAJjAMBTO" role="37vLTx">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="37vLTw" id="6lmAJjAMBTP" role="37vLTJ">
                  <ref role="3cqZAo" node="6lmAJjAMBRI" resolve="myStopping" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6lmAJjAMBTQ" role="1B3o_S" />
      <node concept="3cqZAl" id="6lmAJjAMBTR" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="6lmAJjAMvTl" role="1B3o_S" />
    <node concept="3uibUv" id="6lmAJjAMHdq" role="1zkMxy">
      <ref role="3uigEE" to="cvlm:~Runner" resolve="Runner" />
    </node>
  </node>
  <node concept="312cEu" id="77hRUeKhvqy">
    <property role="TrG5h" value="DefaultRunListener" />
    <property role="3GE5qa" value="util" />
    <node concept="312cEg" id="56tRMpP_bx_" role="jymVt">
      <property role="TrG5h" value="myOutput" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="56tRMpP_bxA" role="1B3o_S" />
      <node concept="3uibUv" id="56tRMpP_bxB" role="1tU5fm">
        <ref role="3uigEE" node="56tRMpP_bCe" resolve="CommandOutputStream" />
      </node>
    </node>
    <node concept="2tJIrI" id="5d37arGB$Ts" role="jymVt" />
    <node concept="3clFbW" id="56tRMpP_bxF" role="jymVt">
      <node concept="3cqZAl" id="56tRMpP_bxG" role="3clF45" />
      <node concept="3Tm1VV" id="56tRMpP_bxH" role="1B3o_S" />
      <node concept="3clFbS" id="56tRMpP_bxI" role="3clF47">
        <node concept="3clFbF" id="56tRMpP_bxJ" role="3cqZAp">
          <node concept="37vLTI" id="56tRMpP_bxK" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgl85t" role="37vLTx">
              <ref role="3cqZAo" node="56tRMpP_bxR" resolve="out" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuTqr" role="37vLTJ">
              <ref role="3cqZAo" node="56tRMpP_bx_" resolve="myOutput" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="56tRMpP_bxR" role="3clF46">
        <property role="TrG5h" value="out" />
        <node concept="3uibUv" id="56tRMpP_bxS" role="1tU5fm">
          <ref role="3uigEE" node="56tRMpP_bCe" resolve="CommandOutputStream" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5d37arGBqcD" role="jymVt" />
    <node concept="3clFb_" id="4e85Rl_q8Gl" role="jymVt">
      <property role="TrG5h" value="flush" />
      <node concept="3Tm6S6" id="4e85Rl_q8Gm" role="1B3o_S" />
      <node concept="3cqZAl" id="4e85Rl_q8Gn" role="3clF45" />
      <node concept="3clFbS" id="4e85Rl_q8G8" role="3clF47">
        <node concept="3clFbF" id="4F7vylNqFB2" role="3cqZAp">
          <node concept="2OqwBi" id="4F7vylNqGs7" role="3clFbG">
            <node concept="37vLTw" id="4F7vylNqFB0" role="2Oq$k0">
              <ref role="3cqZAo" node="56tRMpP_bx_" resolve="myOutput" />
            </node>
            <node concept="liA8E" id="4F7vylNqIyZ" role="2OqNvi">
              <ref role="37wK5l" node="56tRMpP_bEL" resolve="flushSafe" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7pjPhev1zWt" role="jymVt" />
    <node concept="3clFb_" id="7uaFES0czFu" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="testRunStarted" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="7uaFES0czFv" role="1B3o_S" />
      <node concept="3cqZAl" id="7uaFES0czFx" role="3clF45" />
      <node concept="37vLTG" id="7uaFES0czFy" role="3clF46">
        <property role="TrG5h" value="description" />
        <node concept="3uibUv" id="7uaFES0czFz" role="1tU5fm">
          <ref role="3uigEE" to="cvlm:~Description" resolve="Description" />
        </node>
      </node>
      <node concept="3uibUv" id="7uaFES0czF$" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
      <node concept="3clFbS" id="7uaFES0czF_" role="3clF47">
        <node concept="3clFbF" id="4e85Rl_q97t" role="3cqZAp">
          <node concept="1rXfSq" id="4e85Rl_q97r" role="3clFbG">
            <ref role="37wK5l" node="4e85Rl_q8Gl" resolve="flush" />
          </node>
        </node>
        <node concept="3clFbF" id="7uaFES0cAsH" role="3cqZAp">
          <node concept="1rXfSq" id="7uaFES0cB89" role="3clFbG">
            <ref role="37wK5l" node="56tRMpP_bzv" resolve="printSyncToken" />
            <node concept="10M0yZ" id="7rIOKY48ZIM" role="37wK5m">
              <ref role="3cqZAo" to="lxc5:2Zbjobgnloc" resolve="START_TESTRUN" />
              <ref role="1PxDUh" to="lxc5:1zHDQsywvgL" resolve="TestEventMessage" />
            </node>
            <node concept="37vLTw" id="7uaFES0cEzD" role="37wK5m">
              <ref role="3cqZAo" node="7uaFES0czFy" resolve="description" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7uaFES0czFA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7uaFES0czUk" role="jymVt" />
    <node concept="3clFb_" id="7uaFES0czFE" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="testRunFinished" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="7uaFES0czFF" role="1B3o_S" />
      <node concept="3cqZAl" id="7uaFES0czFH" role="3clF45" />
      <node concept="37vLTG" id="7uaFES0czFI" role="3clF46">
        <property role="TrG5h" value="result" />
        <node concept="3uibUv" id="7uaFES0czFJ" role="1tU5fm">
          <ref role="3uigEE" to="cvlm:~Result" resolve="Result" />
        </node>
      </node>
      <node concept="3uibUv" id="7uaFES0czFK" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
      <node concept="3clFbS" id="7uaFES0czFL" role="3clF47">
        <node concept="3clFbF" id="4e85Rl_q8Pv" role="3cqZAp">
          <node concept="1rXfSq" id="4e85Rl_q8Pu" role="3clFbG">
            <ref role="37wK5l" node="4e85Rl_q8Gl" resolve="flush" />
          </node>
        </node>
        <node concept="3cpWs8" id="7uaFES0cG3A" role="3cqZAp">
          <node concept="3cpWsn" id="7uaFES0cG3B" role="3cpWs9">
            <property role="TrG5h" value="fakeDescription" />
            <node concept="3uibUv" id="7uaFES0cG3w" role="1tU5fm">
              <ref role="3uigEE" to="cvlm:~Description" resolve="Description" />
            </node>
            <node concept="2YIFZM" id="7uaFES0cLp$" role="33vP2m">
              <ref role="37wK5l" to="cvlm:~Description.createTestDescription(java.lang.Class,java.lang.String)" resolve="createTestDescription" />
              <ref role="1Pybhc" to="cvlm:~Description" resolve="Description" />
              <node concept="3VsKOn" id="7uaFES0cLrq" role="37wK5m">
                <ref role="3VsUkX" to="wyt6:~Object" resolve="Object" />
              </node>
              <node concept="Xl_RD" id="7uaFES0cLrF" role="37wK5m">
                <property role="Xl_RC" value="FAKEDESCRIPTION" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7uaFES0c_wr" role="3cqZAp">
          <node concept="1rXfSq" id="7uaFES0cB34" role="3clFbG">
            <ref role="37wK5l" node="56tRMpP_bzv" resolve="printSyncToken" />
            <node concept="10M0yZ" id="7rIOKY48ZIP" role="37wK5m">
              <ref role="3cqZAo" to="lxc5:2Zbjobgnlt2" resolve="FINISH_TESTRUN" />
              <ref role="1PxDUh" to="lxc5:1zHDQsywvgL" resolve="TestEventMessage" />
            </node>
            <node concept="37vLTw" id="7uaFES0cG3G" role="37wK5m">
              <ref role="3cqZAo" node="7uaFES0cG3B" resolve="fakeDescription" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4e85Rl_q8Gp" role="3cqZAp">
          <node concept="1rXfSq" id="4e85Rl_q8Go" role="3clFbG">
            <ref role="37wK5l" node="4e85Rl_q8Gl" resolve="flush" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7uaFES0czFM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7uaFES0czur" role="jymVt" />
    <node concept="3clFb_" id="56tRMpP_bxW" role="jymVt">
      <property role="TrG5h" value="testFinished" />
      <node concept="3Tm1VV" id="56tRMpP_bxX" role="1B3o_S" />
      <node concept="3cqZAl" id="56tRMpP_bxY" role="3clF45" />
      <node concept="37vLTG" id="56tRMpP_bxZ" role="3clF46">
        <property role="TrG5h" value="description" />
        <node concept="3uibUv" id="56tRMpP_by0" role="1tU5fm">
          <ref role="3uigEE" to="cvlm:~Description" resolve="Description" />
        </node>
      </node>
      <node concept="3clFbS" id="56tRMpP_by2" role="3clF47">
        <node concept="3clFbF" id="7wORwlIHyO1" role="3cqZAp">
          <node concept="1rXfSq" id="7wORwlIHyNZ" role="3clFbG">
            <ref role="37wK5l" node="4e85Rl_q8Gl" resolve="flush" />
          </node>
        </node>
        <node concept="3clFbF" id="56tRMpP_by3" role="3cqZAp">
          <node concept="1rXfSq" id="7uaFES0cBbS" role="3clFbG">
            <ref role="37wK5l" node="56tRMpP_bzv" resolve="printSyncToken" />
            <node concept="10M0yZ" id="7rIOKY48ZIV" role="37wK5m">
              <ref role="3cqZAo" to="lxc5:1zHDQsywvlu" resolve="FINISH_TEST" />
              <ref role="1PxDUh" to="lxc5:1zHDQsywvgL" resolve="TestEventMessage" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm_jj" role="37wK5m">
              <ref role="3cqZAo" node="56tRMpP_bxZ" resolve="description" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="56tRMpP_byc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5d37arGBqcE" role="jymVt" />
    <node concept="3clFb_" id="56tRMpP_byd" role="jymVt">
      <property role="TrG5h" value="testFailure" />
      <node concept="3Tm1VV" id="56tRMpP_bye" role="1B3o_S" />
      <node concept="3cqZAl" id="56tRMpP_byf" role="3clF45" />
      <node concept="37vLTG" id="56tRMpP_byg" role="3clF46">
        <property role="TrG5h" value="failure" />
        <node concept="3uibUv" id="56tRMpP_byh" role="1tU5fm">
          <ref role="3uigEE" to="k76n:~Failure" resolve="Failure" />
        </node>
      </node>
      <node concept="3clFbS" id="56tRMpP_byj" role="3clF47">
        <node concept="3clFbF" id="56tRMpP_byk" role="3cqZAp">
          <node concept="1rXfSq" id="7uaFES0cBgj" role="3clFbG">
            <ref role="37wK5l" node="56tRMpP_bzv" resolve="printSyncToken" />
            <node concept="10M0yZ" id="7rIOKY48ZIY" role="37wK5m">
              <ref role="3cqZAo" to="lxc5:1zHDQsywvly" resolve="FAILURE_TEST_BEGIN" />
              <ref role="1PxDUh" to="lxc5:1zHDQsywvgL" resolve="TestEventMessage" />
            </node>
            <node concept="2OqwBi" id="56tRMpP_byo" role="37wK5m">
              <node concept="37vLTw" id="2BHiRxgmNCO" role="2Oq$k0">
                <ref role="3cqZAo" node="56tRMpP_byg" resolve="failure" />
              </node>
              <node concept="liA8E" id="56tRMpP_byq" role="2OqNvi">
                <ref role="37wK5l" to="k76n:~Failure.getDescription()" resolve="getDescription" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="56tRMpP_bys" role="3cqZAp">
          <node concept="2OqwBi" id="56tRMpP_byt" role="3clFbG">
            <node concept="2OqwBi" id="56tRMpP_byu" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxgm7sj" role="2Oq$k0">
                <ref role="3cqZAo" node="56tRMpP_byg" resolve="failure" />
              </node>
              <node concept="liA8E" id="56tRMpP_byw" role="2OqNvi">
                <ref role="37wK5l" to="k76n:~Failure.getException()" resolve="getException" />
              </node>
            </node>
            <node concept="liA8E" id="56tRMpP_byx" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace(java.io.PrintStream)" resolve="printStackTrace" />
              <node concept="2ShNRf" id="4F7vylNqLPs" role="37wK5m">
                <node concept="1pGfFk" id="4F7vylNqQv3" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="guwi:~PrintStream.&lt;init&gt;(java.io.OutputStream)" resolve="PrintStream" />
                  <node concept="37vLTw" id="4F7vylNqSTB" role="37wK5m">
                    <ref role="3cqZAo" node="56tRMpP_bx_" resolve="myOutput" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7wORwlIHyUm" role="3cqZAp">
          <node concept="1rXfSq" id="7wORwlIHyUk" role="3clFbG">
            <ref role="37wK5l" node="4e85Rl_q8Gl" resolve="flush" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="56tRMpP_byI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5d37arGBqcF" role="jymVt" />
    <node concept="3clFb_" id="56tRMpP_byJ" role="jymVt">
      <property role="TrG5h" value="testAssumptionFailure" />
      <node concept="3Tm1VV" id="56tRMpP_byK" role="1B3o_S" />
      <node concept="3cqZAl" id="56tRMpP_byL" role="3clF45" />
      <node concept="37vLTG" id="56tRMpP_byM" role="3clF46">
        <property role="TrG5h" value="failure" />
        <node concept="3uibUv" id="56tRMpP_byN" role="1tU5fm">
          <ref role="3uigEE" to="k76n:~Failure" resolve="Failure" />
        </node>
      </node>
      <node concept="3clFbS" id="56tRMpP_byO" role="3clF47">
        <node concept="3clFbF" id="56tRMpP_byP" role="3cqZAp">
          <node concept="1rXfSq" id="7uaFES0cBkg" role="3clFbG">
            <ref role="37wK5l" node="56tRMpP_bzv" resolve="printSyncToken" />
            <node concept="10M0yZ" id="7rIOKY48ZJ1" role="37wK5m">
              <ref role="3cqZAo" to="lxc5:1zHDQsywvlE" resolve="ASSUMPTION_FAILURE_TEST_PREFIX" />
              <ref role="1PxDUh" to="lxc5:1zHDQsywvgL" resolve="TestEventMessage" />
            </node>
            <node concept="2OqwBi" id="56tRMpP_byU" role="37wK5m">
              <node concept="37vLTw" id="2BHiRxgm8_0" role="2Oq$k0">
                <ref role="3cqZAo" node="56tRMpP_byM" resolve="failure" />
              </node>
              <node concept="liA8E" id="56tRMpP_byW" role="2OqNvi">
                <ref role="37wK5l" to="k76n:~Failure.getDescription()" resolve="getDescription" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="56tRMpP_byX" role="3cqZAp">
          <node concept="2OqwBi" id="56tRMpP_byY" role="3clFbG">
            <node concept="2OqwBi" id="56tRMpP_byZ" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxgm71M" role="2Oq$k0">
                <ref role="3cqZAo" node="56tRMpP_byM" resolve="failure" />
              </node>
              <node concept="liA8E" id="56tRMpP_bz1" role="2OqNvi">
                <ref role="37wK5l" to="k76n:~Failure.getException()" resolve="getException" />
              </node>
            </node>
            <node concept="liA8E" id="56tRMpP_bz2" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace(java.io.PrintStream)" resolve="printStackTrace" />
              <node concept="2ShNRf" id="4F7vylNqTLP" role="37wK5m">
                <node concept="1pGfFk" id="4F7vylNqTLQ" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="guwi:~PrintStream.&lt;init&gt;(java.io.OutputStream)" resolve="PrintStream" />
                  <node concept="37vLTw" id="4F7vylNqTLR" role="37wK5m">
                    <ref role="3cqZAo" node="56tRMpP_bx_" resolve="myOutput" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7wORwlIHyMF" role="3cqZAp">
          <node concept="1rXfSq" id="7wORwlIHyMA" role="3clFbG">
            <ref role="37wK5l" node="4e85Rl_q8Gl" resolve="flush" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="56tRMpP_bzf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5d37arGBrQs" role="jymVt" />
    <node concept="3clFb_" id="5d37arGBqfZ" role="jymVt">
      <property role="TrG5h" value="testIgnored" />
      <node concept="3Tm1VV" id="5d37arGBqg0" role="1B3o_S" />
      <node concept="3cqZAl" id="5d37arGBqg1" role="3clF45" />
      <node concept="37vLTG" id="5d37arGBqg2" role="3clF46">
        <property role="TrG5h" value="description" />
        <node concept="3uibUv" id="5d37arGBtBa" role="1tU5fm">
          <ref role="3uigEE" to="cvlm:~Description" resolve="Description" />
        </node>
      </node>
      <node concept="3clFbS" id="5d37arGBqg4" role="3clF47">
        <node concept="3clFbF" id="5d37arGBqg5" role="3cqZAp">
          <node concept="1rXfSq" id="7uaFES0cBo4" role="3clFbG">
            <ref role="37wK5l" node="56tRMpP_bzv" resolve="printSyncToken" />
            <node concept="10M0yZ" id="7rIOKY48ZJ3" role="37wK5m">
              <ref role="3cqZAo" to="lxc5:5d37arGBotJ" resolve="IGNORE_FAILURE_TEST_PREFIX" />
              <ref role="1PxDUh" to="lxc5:1zHDQsywvgL" resolve="TestEventMessage" />
            </node>
            <node concept="37vLTw" id="5d37arGBqgb" role="37wK5m">
              <ref role="3cqZAo" node="5d37arGBqg2" resolve="description" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5d37arGBqgs" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5d37arGBqcG" role="jymVt" />
    <node concept="3clFb_" id="56tRMpP_bzg" role="jymVt">
      <property role="TrG5h" value="testStarted" />
      <node concept="3Tm1VV" id="56tRMpP_bzh" role="1B3o_S" />
      <node concept="3cqZAl" id="56tRMpP_bzi" role="3clF45" />
      <node concept="37vLTG" id="56tRMpP_bzj" role="3clF46">
        <property role="TrG5h" value="description" />
        <node concept="3uibUv" id="56tRMpP_bzk" role="1tU5fm">
          <ref role="3uigEE" to="cvlm:~Description" resolve="Description" />
        </node>
      </node>
      <node concept="3clFbS" id="56tRMpP_bzm" role="3clF47">
        <node concept="3clFbF" id="7wORwlIHyNA" role="3cqZAp">
          <node concept="1rXfSq" id="7wORwlIHyN$" role="3clFbG">
            <ref role="37wK5l" node="4e85Rl_q8Gl" resolve="flush" />
          </node>
        </node>
        <node concept="3clFbF" id="56tRMpP_bzn" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzhK9" role="3clFbG">
            <ref role="37wK5l" node="56tRMpP_bzv" resolve="printSyncToken" />
            <node concept="10M0yZ" id="7rIOKY48ZIS" role="37wK5m">
              <ref role="3cqZAo" to="lxc5:1zHDQsywvlq" resolve="START_TEST" />
              <ref role="1PxDUh" to="lxc5:1zHDQsywvgL" resolve="TestEventMessage" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm_5v" role="37wK5m">
              <ref role="3cqZAo" node="56tRMpP_bzj" resolve="description" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="56tRMpP_bzu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5d37arGBqcH" role="jymVt" />
    <node concept="3clFb_" id="56tRMpP_bzv" role="jymVt">
      <property role="TrG5h" value="printSyncToken" />
      <node concept="3cqZAl" id="56tRMpP_bzw" role="3clF45" />
      <node concept="3Tm6S6" id="56tRMpP_bzx" role="1B3o_S" />
      <node concept="3clFbS" id="56tRMpP_bzy" role="3clF47">
        <node concept="3cpWs8" id="1zHDQsywvku" role="3cqZAp">
          <node concept="3cpWsn" id="1zHDQsywvkv" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="1zHDQsywvkw" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="1zHDQsywvkx" role="33vP2m">
              <node concept="1pGfFk" id="1zHDQsywvky" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1zHDQsywvkz" role="3cqZAp">
          <node concept="2OqwBi" id="1zHDQsywvk$" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTB0n" role="2Oq$k0">
              <ref role="3cqZAo" node="1zHDQsywvkv" resolve="builder" />
            </node>
            <node concept="liA8E" id="1zHDQsywvkA" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="37vLTw" id="2BHiRxglyIR" role="37wK5m">
                <ref role="3cqZAo" node="56tRMpP_b$0" resolve="tokenPrefix" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6NKjxRILXOG" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXoesV" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXoesW" role="1PaTwD">
              <property role="3oM_SC" value="Beware," />
            </node>
            <node concept="3oM_SD" id="ATZLwXoesX" role="1PaTwD">
              <property role="3oM_SC" value="description.getTestClass" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoesY" role="1PaTwD">
              <property role="3oM_SC" value="may" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoesZ" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoet0" role="1PaTwD">
              <property role="3oM_SC" value="null." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1zHDQsywvkE" role="3cqZAp">
          <node concept="2OqwBi" id="1zHDQsywvkF" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTwzF" role="2Oq$k0">
              <ref role="3cqZAo" node="1zHDQsywvkv" resolve="builder" />
            </node>
            <node concept="liA8E" id="1zHDQsywvkH" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="2OqwBi" id="1zHDQsywvjp" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxgm9J5" role="2Oq$k0">
                  <ref role="3cqZAo" node="56tRMpP_b$2" resolve="description" />
                </node>
                <node concept="liA8E" id="1zHDQsywvjr" role="2OqNvi">
                  <ref role="37wK5l" to="cvlm:~Description.getClassName()" resolve="getClassName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6NKjxRILYHg" role="3cqZAp">
          <node concept="3cpWsn" id="6NKjxRILYHh" role="3cpWs9">
            <property role="TrG5h" value="methodName" />
            <node concept="17QB3L" id="7pjPhev1$Wh" role="1tU5fm" />
            <node concept="2OqwBi" id="6NKjxRILYHi" role="33vP2m">
              <node concept="37vLTw" id="6NKjxRILYHj" role="2Oq$k0">
                <ref role="3cqZAo" node="56tRMpP_b$2" resolve="description" />
              </node>
              <node concept="liA8E" id="6NKjxRILYHk" role="2OqNvi">
                <ref role="37wK5l" to="cvlm:~Description.getMethodName()" resolve="getMethodName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1zHDQsywvkL" role="3cqZAp">
          <node concept="3y3z36" id="1zHDQsywvkM" role="3clFbw">
            <node concept="10Nm6u" id="1zHDQsywvkN" role="3uHU7w" />
            <node concept="37vLTw" id="6NKjxRILYHl" role="3uHU7B">
              <ref role="3cqZAo" node="6NKjxRILYHh" resolve="methodName" />
            </node>
          </node>
          <node concept="3clFbS" id="1zHDQsywvkR" role="3clFbx">
            <node concept="3clFbF" id="1zHDQsywvkS" role="3cqZAp">
              <node concept="2OqwBi" id="1zHDQsywvkT" role="3clFbG">
                <node concept="2OqwBi" id="1zHDQsywvkU" role="2Oq$k0">
                  <node concept="37vLTw" id="3GM_nagTtm4" role="2Oq$k0">
                    <ref role="3cqZAo" node="1zHDQsywvkv" resolve="builder" />
                  </node>
                  <node concept="liA8E" id="1zHDQsywvkW" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~StringBuilder.append(char)" resolve="append" />
                    <node concept="1Xhbcc" id="1zHDQsywvkX" role="37wK5m">
                      <property role="1XhdNS" value=":" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1zHDQsywvkY" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="37vLTw" id="6NKjxRILYHm" role="37wK5m">
                    <ref role="3cqZAo" node="6NKjxRILYHh" resolve="methodName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1zHDQsywvjK" role="3cqZAp">
          <node concept="3cpWsn" id="1zHDQsywvjL" role="3cpWs9">
            <property role="TrG5h" value="runtime" />
            <node concept="3uibUv" id="1zHDQsywvjM" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Runtime" resolve="Runtime" />
            </node>
            <node concept="2YIFZM" id="1zHDQsywvjN" role="33vP2m">
              <ref role="1Pybhc" to="wyt6:~Runtime" resolve="Runtime" />
              <ref role="37wK5l" to="wyt6:~Runtime.getRuntime()" resolve="getRuntime" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1zHDQsywvl2" role="3cqZAp">
          <node concept="2OqwBi" id="1zHDQsywvl3" role="3clFbG">
            <node concept="2OqwBi" id="1zHDQsywvl4" role="2Oq$k0">
              <node concept="37vLTw" id="3GM_nagTv69" role="2Oq$k0">
                <ref role="3cqZAo" node="1zHDQsywvkv" resolve="builder" />
              </node>
              <node concept="liA8E" id="1zHDQsywvl6" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                <node concept="Xl_RD" id="1zHDQsywvl7" role="37wK5m">
                  <property role="Xl_RC" value=":memory=" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1zHDQsywvl8" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(long)" resolve="append" />
              <node concept="3cpWsd" id="4BZqA32g2Kc" role="37wK5m">
                <node concept="2OqwBi" id="4BZqA32g2Kd" role="3uHU7w">
                  <node concept="37vLTw" id="3GM_nagTsLy" role="2Oq$k0">
                    <ref role="3cqZAo" node="1zHDQsywvjL" resolve="runtime" />
                  </node>
                  <node concept="liA8E" id="4BZqA32g2Kf" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Runtime.freeMemory()" resolve="freeMemory" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4BZqA32g2Kg" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTxVO" role="2Oq$k0">
                    <ref role="3cqZAo" node="1zHDQsywvjL" resolve="runtime" />
                  </node>
                  <node concept="liA8E" id="4BZqA32g2Ki" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Runtime.totalMemory()" resolve="totalMemory" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1zHDQsywvlc" role="3cqZAp">
          <node concept="2OqwBi" id="1zHDQsywvld" role="3clFbG">
            <node concept="2OqwBi" id="1zHDQsywvle" role="2Oq$k0">
              <node concept="37vLTw" id="3GM_nagTwOL" role="2Oq$k0">
                <ref role="3cqZAo" node="1zHDQsywvkv" resolve="builder" />
              </node>
              <node concept="liA8E" id="1zHDQsywvlg" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                <node concept="Xl_RD" id="1zHDQsywvlh" role="37wK5m">
                  <property role="Xl_RC" value=":time=" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1zHDQsywvli" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(long)" resolve="append" />
              <node concept="2YIFZM" id="4BZqA32g2Kk" role="37wK5m">
                <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4BZqA32g2Ho" role="3cqZAp" />
        <node concept="1HWtB8" id="56tRMpP_bzK" role="3cqZAp">
          <node concept="37vLTw" id="62muZCvHIl5" role="1HWFw0">
            <ref role="3cqZAo" node="56tRMpP_bx_" resolve="myOutput" />
          </node>
          <node concept="3clFbS" id="56tRMpP_bzO" role="1HWHxc">
            <node concept="3clFbF" id="56tRMpP_bzP" role="3cqZAp">
              <node concept="2OqwBi" id="56tRMpP_bzQ" role="3clFbG">
                <node concept="37vLTw" id="62muZCvHI$e" role="2Oq$k0">
                  <ref role="3cqZAo" node="56tRMpP_bx_" resolve="myOutput" />
                </node>
                <node concept="liA8E" id="56tRMpP_bzU" role="2OqNvi">
                  <ref role="37wK5l" node="56tRMpP_bEb" resolve="writeCommand" />
                  <node concept="2OqwBi" id="1zHDQsywvln" role="37wK5m">
                    <node concept="37vLTw" id="3GM_nagTtUS" role="2Oq$k0">
                      <ref role="3cqZAo" node="1zHDQsywvkv" resolve="builder" />
                    </node>
                    <node concept="liA8E" id="1zHDQsywvlp" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="56tRMpP_bzW" role="3cqZAp">
              <node concept="2OqwBi" id="56tRMpP_bzX" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeu_BG" role="2Oq$k0">
                  <ref role="3cqZAo" node="56tRMpP_bx_" resolve="myOutput" />
                </node>
                <node concept="liA8E" id="56tRMpP_bzZ" role="2OqNvi">
                  <ref role="37wK5l" node="56tRMpP_bEL" resolve="flushSafe" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="56tRMpP_b$0" role="3clF46">
        <property role="TrG5h" value="tokenPrefix" />
        <node concept="17QB3L" id="56tRMpP_b$1" role="1tU5fm" />
        <node concept="2AHcQZ" id="7uaFES0cEA1" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="56tRMpP_b$2" role="3clF46">
        <property role="TrG5h" value="description" />
        <node concept="3uibUv" id="56tRMpP_b$3" role="1tU5fm">
          <ref role="3uigEE" to="cvlm:~Description" resolve="Description" />
        </node>
        <node concept="2AHcQZ" id="7uaFES0cE_Y" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="77hRUeKhvqz" role="1B3o_S" />
    <node concept="3uibUv" id="77hRUeKhB$L" role="1zkMxy">
      <ref role="3uigEE" to="k76n:~RunListener" resolve="RunListener" />
    </node>
    <node concept="3UR2Jj" id="31Rnc327Iq0" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsBFl" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBFm" role="1PaTwD">
          <property role="3oM_SC" value="JUnit" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFn" role="1PaTwD">
          <property role="3oM_SC" value="test" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFo" role="1PaTwD">
          <property role="3oM_SC" value="listener" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFp" role="1PaTwD">
          <property role="3oM_SC" value="that" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFq" role="1PaTwD">
          <property role="3oM_SC" value="spits" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFr" role="1PaTwD">
          <property role="3oM_SC" value="out" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFs" role="1PaTwD">
          <property role="3oM_SC" value="control" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFt" role="1PaTwD">
          <property role="3oM_SC" value="sequences" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFu" role="1PaTwD">
          <property role="3oM_SC" value="into" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFv" role="1PaTwD">
          <property role="3oM_SC" value="supplied" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFw" role="1PaTwD">
          <property role="3oM_SC" value="stream." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBFx" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBFy" role="1PaTwD">
          <property role="3oM_SC" value="These" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFz" role="1PaTwD">
          <property role="3oM_SC" value="control" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBF$" role="1PaTwD">
          <property role="3oM_SC" value="sequences" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBF_" role="1PaTwD">
          <property role="3oM_SC" value="are" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFA" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFB" role="1PaTwD">
          <property role="3oM_SC" value="external" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFC" role="1PaTwD">
          <property role="3oM_SC" value="process" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFD" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFE" role="1PaTwD">
          <property role="3oM_SC" value="receive" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFF" role="1PaTwD">
          <property role="3oM_SC" value="JUnit" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFG" role="1PaTwD">
          <property role="3oM_SC" value="events." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBFH" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBFI" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBFJ" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBFK" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFL" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFM" role="1PaTwD">
          <property role="3oM_SC" value="explicit" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFN" role="1PaTwD">
          <property role="3oM_SC" value="contract" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFO" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFP" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFQ" role="1PaTwD">
          <property role="3oM_SC" value="events" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBFR" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBFS" role="1PaTwD">
          <property role="3oM_SC" value="see" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFT" role="1PaTwD">
          <property role="3oM_SC" value="https://junit.org/junit4/javadoc/4.12/org/junit/runner/notification/RunListener.html" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7rIOKY4ii2v">
    <property role="TrG5h" value="LegacyTestLauncher" />
    <node concept="2YIFZL" id="7rIOKY4ii5U" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="37vLTG" id="7rIOKY4ii5V" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="7rIOKY4ii5W" role="1tU5fm">
          <node concept="17QB3L" id="7rIOKY4ii5X" role="10Q1$1" />
        </node>
      </node>
      <node concept="3cqZAl" id="7rIOKY4ii5Y" role="3clF45" />
      <node concept="3Tm1VV" id="7rIOKY4ii5Z" role="1B3o_S" />
      <node concept="3clFbS" id="7rIOKY4ii60" role="3clF47">
        <node concept="3SKdUt" id="QfsuG7d$TZ" role="3cqZAp">
          <node concept="1PaTwC" id="QfsuG7d$U0" role="1aUNEU">
            <node concept="3oM_SD" id="QfsuG7d_jH" role="1PaTwD">
              <property role="3oM_SC" value="This" />
            </node>
            <node concept="3oM_SD" id="QfsuG7dKCm" role="1PaTwD">
              <property role="3oM_SC" value="code" />
            </node>
            <node concept="3oM_SD" id="QfsuG7dKRo" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="QfsuG7dL0g" role="1PaTwD">
              <property role="3oM_SC" value="pretty" />
            </node>
            <node concept="3oM_SD" id="QfsuG7dLlr" role="1PaTwD">
              <property role="3oM_SC" value="much" />
            </node>
            <node concept="3oM_SD" id="QfsuG7dL$s" role="1PaTwD">
              <property role="3oM_SC" value="simplified" />
            </node>
            <node concept="3oM_SD" id="QfsuG7dM5r" role="1PaTwD">
              <property role="3oM_SC" value="DefaultTestExecutor," />
            </node>
            <node concept="3oM_SD" id="QfsuG7dNGx" role="1PaTwD">
              <property role="3oM_SC" value="just" />
            </node>
            <node concept="3oM_SD" id="QfsuG7dO3E" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="QfsuG7dOfY" role="1PaTwD">
              <property role="3oM_SC" value="JUni4" />
            </node>
            <node concept="3oM_SD" id="QfsuG7dOyG" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="QfsuG7dQ6e" role="1PaTwD">
              <property role="3oM_SC" value="(no" />
            </node>
            <node concept="3oM_SD" id="QfsuG7dQnX" role="1PaTwD">
              <property role="3oM_SC" value="platform)" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7rIOKY4ikXo" role="3cqZAp">
          <node concept="3cpWsn" id="7rIOKY4ikXp" role="3cpWs9">
            <property role="TrG5h" value="tc" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="7rIOKY4ikXq" role="1tU5fm">
              <ref role="3uigEE" node="5m2bsnoH5mM" resolve="DefaultTestExecutor.CommandLineTestContributor" />
            </node>
            <node concept="2ShNRf" id="7rIOKY4ikXr" role="33vP2m">
              <node concept="1pGfFk" id="7rIOKY4ikXs" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="5m2bsnoHmaB" resolve="DefaultTestExecutor.CommandLineTestContributor" />
                <node concept="37vLTw" id="7rIOKY4ikXt" role="37wK5m">
                  <ref role="3cqZAo" node="7rIOKY4ii5V" resolve="args" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7rIOKY4il9Q" role="3cqZAp">
          <node concept="3cpWsn" id="7rIOKY4il9R" role="3cpWs9">
            <property role="TrG5h" value="exec" />
            <node concept="3uibUv" id="7rIOKY4il7o" role="1tU5fm">
              <ref role="3uigEE" node="2u2lerfkia6" resolve="JUnit4TestExecutor" />
            </node>
            <node concept="2ShNRf" id="7rIOKY4il9S" role="33vP2m">
              <node concept="1pGfFk" id="7rIOKY4il9T" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="2u2lerfkiGC" resolve="JUnit4TestExecutor" />
                <node concept="2ShNRf" id="QfsuG7dyvF" role="37wK5m">
                  <node concept="YeOm9" id="QfsuG7d$uA" role="2ShVmc">
                    <node concept="1Y3b0j" id="QfsuG7d$uD" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <property role="373rjd" value="true" />
                      <ref role="1Y3XeK" node="QfsuG7cJQw" resolve="JUnit4TestContributor" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="312cEg" id="QfsuG7dS0K" role="jymVt">
                        <property role="TrG5h" value="myRunnerBuilder" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3Tm6S6" id="QfsuG7dS0L" role="1B3o_S" />
                        <node concept="3uibUv" id="QfsuG7dS0M" role="1tU5fm">
                          <ref role="3uigEE" to="7cms:~RunnerBuilder" resolve="RunnerBuilder" />
                        </node>
                        <node concept="2ShNRf" id="5m2bsnoSi0I" role="33vP2m">
                          <node concept="1pGfFk" id="5m2bsnoSi0J" role="2ShVmc">
                            <ref role="37wK5l" to="456n:~AllDefaultPossibilitiesBuilder.&lt;init&gt;(boolean)" resolve="AllDefaultPossibilitiesBuilder" />
                            <node concept="3clFbT" id="5m2bsnoSi0K" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                        <node concept="z59LJ" id="QfsuG7el$a" role="lGtFl">
                          <node concept="1PaTwC" id="1E1X3WHsBHM" role="1Vez_I">
                            <node concept="3oM_SD" id="1E1X3WHsBHN" role="1PaTwD">
                              <property role="3oM_SC" value="we" />
                            </node>
                            <node concept="3oM_SD" id="1E1X3WHsBHO" role="1PaTwD">
                              <property role="3oM_SC" value="don't" />
                            </node>
                            <node concept="3oM_SD" id="1E1X3WHsBHP" role="1PaTwD">
                              <property role="3oM_SC" value="need" />
                            </node>
                            <node concept="3oM_SD" id="1E1X3WHsBHQ" role="1PaTwD">
                              <property role="3oM_SC" value="to" />
                            </node>
                            <node concept="3oM_SD" id="1E1X3WHsBHR" role="1PaTwD">
                              <property role="3oM_SC" value="pass" />
                            </node>
                            <node concept="3oM_SD" id="1E1X3WHsBHS" role="1PaTwD">
                              <property role="3oM_SC" value="Environment," />
                            </node>
                            <node concept="3oM_SD" id="1E1X3WHsBHT" role="1PaTwD">
                              <property role="3oM_SC" value="generic" />
                            </node>
                            <node concept="3oM_SD" id="1E1X3WHsBHU" role="1PaTwD">
                              <property role="3oM_SC" value="JUnit4" />
                            </node>
                            <node concept="3oM_SD" id="1E1X3WHsBHV" role="1PaTwD">
                              <property role="3oM_SC" value="builder" />
                            </node>
                            <node concept="3oM_SD" id="1E1X3WHsBHW" role="1PaTwD">
                              <property role="3oM_SC" value="is" />
                            </node>
                            <node concept="3oM_SD" id="1E1X3WHsBHX" role="1PaTwD">
                              <property role="3oM_SC" value="fine" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2tJIrI" id="QfsuG7dRPH" role="jymVt" />
                      <node concept="3Tm1VV" id="QfsuG7d$uE" role="1B3o_S" />
                      <node concept="3clFb_" id="QfsuG7d$uS" role="jymVt">
                        <property role="TrG5h" value="gatherTests" />
                        <property role="DiZV1" value="false" />
                        <property role="od$2w" value="false" />
                        <node concept="3Tm1VV" id="QfsuG7d$uT" role="1B3o_S" />
                        <node concept="3uibUv" id="QfsuG7d$uU" role="Sfmx6">
                          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                        </node>
                        <node concept="3uibUv" id="QfsuG7d$uW" role="3clF45">
                          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                          <node concept="3uibUv" id="QfsuG7d$uX" role="11_B2D">
                            <ref role="3uigEE" to="cvlm:~Request" resolve="Request" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="QfsuG7d$uY" role="3clF47">
                          <node concept="3cpWs8" id="QfsuG7e1pY" role="3cqZAp">
                            <node concept="3cpWsn" id="QfsuG7e1pZ" role="3cpWs9">
                              <property role="TrG5h" value="tests" />
                              <node concept="3uibUv" id="QfsuG7e1q0" role="1tU5fm">
                                <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
                                <node concept="3uibUv" id="QfsuG7e1q1" role="11_B2D">
                                  <ref role="3uigEE" to="cvlm:~Request" resolve="Request" />
                                </node>
                              </node>
                              <node concept="2ShNRf" id="QfsuG7e1q2" role="33vP2m">
                                <node concept="1pGfFk" id="QfsuG7e1q3" role="2ShVmc">
                                  <property role="373rjd" value="true" />
                                  <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1DcWWT" id="QfsuG7e1q4" role="3cqZAp">
                            <node concept="3clFbS" id="QfsuG7e1q5" role="2LFqv$">
                              <node concept="3cpWs8" id="QfsuG7e1q6" role="3cqZAp">
                                <node concept="3cpWsn" id="QfsuG7e1q7" role="3cpWs9">
                                  <property role="TrG5h" value="classLoader" />
                                  <property role="3TUv4t" value="true" />
                                  <node concept="3uibUv" id="QfsuG7e1q8" role="1tU5fm">
                                    <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
                                  </node>
                                  <node concept="2OqwBi" id="QfsuG7e1q9" role="33vP2m">
                                    <node concept="37vLTw" id="QfsuG7e1qa" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7rIOKY4ikXp" resolve="tc" />
                                    </node>
                                    <node concept="liA8E" id="QfsuG7e1qb" role="2OqNvi">
                                      <ref role="37wK5l" node="5m2bsnoH8hx" resolve="classLoader" />
                                      <node concept="37vLTw" id="QfsuG7e1qc" role="37wK5m">
                                        <ref role="3cqZAo" node="QfsuG7e1r8" resolve="tr" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="1Dw8fO" id="QfsuG7e1qd" role="3cqZAp">
                                <node concept="1gjucp" id="QfsuG7e1qe" role="_NwL_">
                                  <property role="TrG5h" value="x" />
                                  <node concept="10Oyi0" id="QfsuG7e1qf" role="1tU5fm" />
                                  <node concept="2OqwBi" id="QfsuG7e1qg" role="33vP2m">
                                    <node concept="2OqwBi" id="QfsuG7e1qh" role="2Oq$k0">
                                      <node concept="37vLTw" id="QfsuG7e1qi" role="2Oq$k0">
                                        <ref role="3cqZAo" node="QfsuG7e1r8" resolve="tr" />
                                      </node>
                                      <node concept="2OwXpG" id="QfsuG7e1qj" role="2OqNvi">
                                        <ref role="2Oxat5" node="6fYV1N6aeCV" resolve="myTestQualifiedName" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="QfsuG7e1qk" role="2OqNvi">
                                      <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbS" id="QfsuG7e1ql" role="2LFqv$">
                                  <node concept="3cpWs8" id="QfsuG7e1qm" role="3cqZAp">
                                    <node concept="3cpWsn" id="QfsuG7e1qn" role="3cpWs9">
                                      <property role="TrG5h" value="qualifiedName" />
                                      <node concept="17QB3L" id="QfsuG7e1qo" role="1tU5fm" />
                                      <node concept="2OqwBi" id="QfsuG7e1qp" role="33vP2m">
                                        <node concept="2OqwBi" id="QfsuG7e1qq" role="2Oq$k0">
                                          <node concept="37vLTw" id="QfsuG7e1qr" role="2Oq$k0">
                                            <ref role="3cqZAo" node="QfsuG7e1r8" resolve="tr" />
                                          </node>
                                          <node concept="2OwXpG" id="QfsuG7e1qs" role="2OqNvi">
                                            <ref role="2Oxat5" node="6fYV1N6aeCV" resolve="myTestQualifiedName" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="QfsuG7e1qt" role="2OqNvi">
                                          <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                          <node concept="37vLTw" id="QfsuG7e1qu" role="37wK5m">
                                            <ref role="3cqZAo" node="QfsuG7e1r0" resolve="i" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs8" id="QfsuG7e1qv" role="3cqZAp">
                                    <node concept="3cpWsn" id="QfsuG7e1qw" role="3cpWs9">
                                      <property role="TrG5h" value="isTestCase" />
                                      <node concept="10P_77" id="QfsuG7e1qx" role="1tU5fm" />
                                      <node concept="2OqwBi" id="QfsuG7e1qy" role="33vP2m">
                                        <node concept="2YIFZM" id="QfsuG7e1qz" role="2Oq$k0">
                                          <ref role="37wK5l" to="wyt6:~Boolean.valueOf(java.lang.String)" resolve="valueOf" />
                                          <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                                          <node concept="2OqwBi" id="QfsuG7e1q$" role="37wK5m">
                                            <node concept="2OqwBi" id="QfsuG7e1q_" role="2Oq$k0">
                                              <node concept="37vLTw" id="QfsuG7e1qA" role="2Oq$k0">
                                                <ref role="3cqZAo" node="QfsuG7e1r8" resolve="tr" />
                                              </node>
                                              <node concept="2OwXpG" id="QfsuG7e1qB" role="2OqNvi">
                                                <ref role="2Oxat5" node="4FBFA_GHaaU" resolve="isTestCase" />
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="QfsuG7e1qC" role="2OqNvi">
                                              <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                              <node concept="37vLTw" id="QfsuG7e1qD" role="37wK5m">
                                                <ref role="3cqZAo" node="QfsuG7e1r0" resolve="i" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="QfsuG7e1qE" role="2OqNvi">
                                          <ref role="37wK5l" to="wyt6:~Boolean.booleanValue()" resolve="booleanValue" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs8" id="QfsuG7e1qF" role="3cqZAp">
                                    <node concept="3cpWsn" id="QfsuG7e1qG" role="3cpWs9">
                                      <property role="TrG5h" value="r" />
                                      <node concept="3uibUv" id="QfsuG7e1qH" role="1tU5fm">
                                        <ref role="3uigEE" to="cvlm:~Request" resolve="Request" />
                                      </node>
                                      <node concept="3K4zz7" id="QfsuG7e1qI" role="33vP2m">
                                        <node concept="1rXfSq" id="QfsuG7e1qJ" role="3K4E3e">
                                          <ref role="37wK5l" node="5m2bsnoSmWO" resolve="processTestClass" />
                                          <node concept="37vLTw" id="QfsuG7e1qK" role="37wK5m">
                                            <ref role="3cqZAo" node="QfsuG7e1q7" resolve="classLoader" />
                                          </node>
                                          <node concept="37vLTw" id="QfsuG7e1qL" role="37wK5m">
                                            <ref role="3cqZAo" node="QfsuG7e1qn" resolve="qualifiedName" />
                                          </node>
                                        </node>
                                        <node concept="1rXfSq" id="QfsuG7e1qM" role="3K4GZi">
                                          <ref role="37wK5l" node="5m2bsnoSoHG" resolve="processTestMethod" />
                                          <node concept="37vLTw" id="QfsuG7e1qN" role="37wK5m">
                                            <ref role="3cqZAo" node="QfsuG7e1q7" resolve="classLoader" />
                                          </node>
                                          <node concept="37vLTw" id="QfsuG7e1qO" role="37wK5m">
                                            <ref role="3cqZAo" node="QfsuG7e1qn" resolve="qualifiedName" />
                                          </node>
                                        </node>
                                        <node concept="37vLTw" id="QfsuG7e1qP" role="3K4Cdx">
                                          <ref role="3cqZAo" node="QfsuG7e1qw" resolve="isTestCase" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbJ" id="QfsuG7e1qQ" role="3cqZAp">
                                    <node concept="3clFbS" id="QfsuG7e1qR" role="3clFbx">
                                      <node concept="3clFbF" id="QfsuG7e1qS" role="3cqZAp">
                                        <node concept="2OqwBi" id="QfsuG7e1qT" role="3clFbG">
                                          <node concept="37vLTw" id="QfsuG7e1qU" role="2Oq$k0">
                                            <ref role="3cqZAo" node="QfsuG7e1pZ" resolve="tests" />
                                          </node>
                                          <node concept="liA8E" id="QfsuG7e1qV" role="2OqNvi">
                                            <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                                            <node concept="37vLTw" id="QfsuG7e1qW" role="37wK5m">
                                              <ref role="3cqZAo" node="QfsuG7e1qG" resolve="r" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3y3z36" id="QfsuG7e1qX" role="3clFbw">
                                      <node concept="10Nm6u" id="QfsuG7e1qY" role="3uHU7w" />
                                      <node concept="37vLTw" id="QfsuG7e1qZ" role="3uHU7B">
                                        <ref role="3cqZAo" node="QfsuG7e1qG" resolve="r" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWsn" id="QfsuG7e1r0" role="1Duv9x">
                                  <property role="TrG5h" value="i" />
                                  <node concept="10Oyi0" id="QfsuG7e1r1" role="1tU5fm" />
                                  <node concept="3cmrfG" id="QfsuG7e1r2" role="33vP2m">
                                    <property role="3cmrfH" value="0" />
                                  </node>
                                </node>
                                <node concept="3eOVzh" id="QfsuG7e1r3" role="1Dwp0S">
                                  <node concept="37vLTw" id="QfsuG7e1r4" role="3uHU7w">
                                    <ref role="3cqZAo" node="QfsuG7e1qe" resolve="x" />
                                  </node>
                                  <node concept="37vLTw" id="QfsuG7e1r5" role="3uHU7B">
                                    <ref role="3cqZAo" node="QfsuG7e1r0" resolve="i" />
                                  </node>
                                </node>
                                <node concept="3uNrnE" id="QfsuG7e1r6" role="1Dwrff">
                                  <node concept="37vLTw" id="QfsuG7e1r7" role="2$L3a6">
                                    <ref role="3cqZAo" node="QfsuG7e1r0" resolve="i" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWsn" id="QfsuG7e1r8" role="1Duv9x">
                              <property role="TrG5h" value="tr" />
                              <node concept="3uibUv" id="QfsuG7e1r9" role="1tU5fm">
                                <ref role="3uigEE" node="6fYV1N6aevT" resolve="ExecutorScript.TestRecord" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="QfsuG7e1ra" role="1DdaDG">
                              <node concept="37vLTw" id="QfsuG7ec02" role="2Oq$k0">
                                <ref role="3cqZAo" node="7rIOKY4ikXp" resolve="tc" />
                              </node>
                              <node concept="liA8E" id="QfsuG7e1rc" role="2OqNvi">
                                <ref role="37wK5l" node="5m2bsnoH8hg" resolve="tests" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="QfsuG7e6qM" role="3cqZAp">
                            <node concept="37vLTw" id="QfsuG7e8Wk" role="3cqZAk">
                              <ref role="3cqZAo" node="QfsuG7e1pZ" resolve="tests" />
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="QfsuG7d$v0" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="2tJIrI" id="QfsuG7dY8n" role="jymVt" />
                      <node concept="3clFb_" id="5m2bsnoSmWO" role="jymVt">
                        <property role="TrG5h" value="processTestClass" />
                        <node concept="3clFbS" id="5m2bsnoR9yY" role="3clF47">
                          <node concept="3cpWs8" id="5m2bsnoSLKW" role="3cqZAp">
                            <node concept="3cpWsn" id="5m2bsnoSLKX" role="3cpWs9">
                              <property role="TrG5h" value="testClass" />
                              <node concept="3uibUv" id="5m2bsnoSLKY" role="1tU5fm">
                                <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                                <node concept="3qTvmN" id="5m2bsnoSLKZ" role="11_B2D" />
                              </node>
                              <node concept="1rXfSq" id="5m2bsnoSLL0" role="33vP2m">
                                <ref role="37wK5l" node="5m2bsnoSBAY" resolve="getTestClass" />
                                <node concept="37vLTw" id="5m2bsnoSOYl" role="37wK5m">
                                  <ref role="3cqZAo" node="5m2bsnoRdNG" resolve="cl" />
                                </node>
                                <node concept="37vLTw" id="5m2bsnoSLL1" role="37wK5m">
                                  <ref role="3cqZAo" node="5m2bsnoRdQx" resolve="fqName" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="5m2bsnoSLLd" role="3cqZAp">
                            <node concept="3K4zz7" id="5m2bsnoSSAH" role="3cqZAk">
                              <node concept="10Nm6u" id="5m2bsnoSVO3" role="3K4GZi" />
                              <node concept="3y3z36" id="5m2bsnoSLLa" role="3K4Cdx">
                                <node concept="10Nm6u" id="5m2bsnoSLLb" role="3uHU7w" />
                                <node concept="37vLTw" id="5m2bsnoSLLc" role="3uHU7B">
                                  <ref role="3cqZAo" node="5m2bsnoSLKX" resolve="testClass" />
                                </node>
                              </node>
                              <node concept="2YIFZM" id="5m2bsnoSLL5" role="3K4E3e">
                                <ref role="37wK5l" to="cvlm:~Request.runner(org.junit.runner.Runner)" resolve="runner" />
                                <ref role="1Pybhc" to="cvlm:~Request" resolve="Request" />
                                <node concept="2OqwBi" id="5m2bsnoSLL6" role="37wK5m">
                                  <node concept="37vLTw" id="5m2bsnoSLL7" role="2Oq$k0">
                                    <ref role="3cqZAo" node="QfsuG7dS0K" resolve="myRunnerBuilder" />
                                  </node>
                                  <node concept="liA8E" id="5m2bsnoSLL8" role="2OqNvi">
                                    <ref role="37wK5l" to="7cms:~RunnerBuilder.safeRunnerForClass(java.lang.Class)" resolve="safeRunnerForClass" />
                                    <node concept="37vLTw" id="5m2bsnoSLL9" role="37wK5m">
                                      <ref role="3cqZAo" node="5m2bsnoSLKX" resolve="testClass" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTG" id="5m2bsnoRdNG" role="3clF46">
                          <property role="TrG5h" value="cl" />
                          <node concept="3uibUv" id="5m2bsnoRdNF" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="5m2bsnoRdQx" role="3clF46">
                          <property role="TrG5h" value="fqName" />
                          <node concept="3uibUv" id="5m2bsnoRdU6" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                          </node>
                        </node>
                        <node concept="3uibUv" id="5m2bsnoRbhv" role="3clF45">
                          <ref role="3uigEE" to="cvlm:~Request" resolve="Request" />
                        </node>
                        <node concept="3Tm6S6" id="5m2bsnoR8Hd" role="1B3o_S" />
                      </node>
                      <node concept="2tJIrI" id="5m2bsnoRmKx" role="jymVt" />
                      <node concept="3clFb_" id="5m2bsnoSoHG" role="jymVt">
                        <property role="TrG5h" value="processTestMethod" />
                        <node concept="3clFbS" id="5m2bsnoRloX" role="3clF47">
                          <node concept="3cpWs8" id="5m2bsnoT0q7" role="3cqZAp">
                            <node concept="3cpWsn" id="5m2bsnoT0q8" role="3cpWs9">
                              <property role="3TUv4t" value="false" />
                              <property role="TrG5h" value="index" />
                              <node concept="10Oyi0" id="5m2bsnoT0q9" role="1tU5fm" />
                              <node concept="2OqwBi" id="5m2bsnoT0qa" role="33vP2m">
                                <node concept="37vLTw" id="5m2bsnoT0qb" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5m2bsnoRlp2" resolve="fqName" />
                                </node>
                                <node concept="liA8E" id="5m2bsnoT0qc" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.lastIndexOf(int)" resolve="lastIndexOf" />
                                  <node concept="1Xhbcc" id="5m2bsnoT0qd" role="37wK5m">
                                    <property role="1XhdNS" value="." />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="5m2bsnoT0qe" role="3cqZAp">
                            <node concept="3cpWsn" id="5m2bsnoT0qf" role="3cpWs9">
                              <property role="3TUv4t" value="false" />
                              <property role="TrG5h" value="testClassName" />
                              <node concept="3uibUv" id="5m2bsnoT0qg" role="1tU5fm">
                                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                              </node>
                              <node concept="2OqwBi" id="5m2bsnoT0qh" role="33vP2m">
                                <node concept="37vLTw" id="5m2bsnoT0qi" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5m2bsnoRlp2" resolve="fqName" />
                                </node>
                                <node concept="liA8E" id="5m2bsnoT0qj" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                                  <node concept="3cmrfG" id="5m2bsnoT0qk" role="37wK5m">
                                    <property role="3cmrfH" value="0" />
                                  </node>
                                  <node concept="37vLTw" id="5m2bsnoT0ql" role="37wK5m">
                                    <ref role="3cqZAo" node="5m2bsnoT0q8" resolve="index" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="5m2bsnoT0qm" role="3cqZAp">
                            <node concept="3cpWsn" id="5m2bsnoT0qn" role="3cpWs9">
                              <property role="3TUv4t" value="false" />
                              <property role="TrG5h" value="testMethod" />
                              <node concept="3uibUv" id="5m2bsnoT0qo" role="1tU5fm">
                                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                              </node>
                              <node concept="2OqwBi" id="5m2bsnoT0qp" role="33vP2m">
                                <node concept="37vLTw" id="5m2bsnoT0qq" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5m2bsnoRlp2" resolve="fqName" />
                                </node>
                                <node concept="liA8E" id="5m2bsnoT0qr" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                                  <node concept="3cpWs3" id="5m2bsnoT0qs" role="37wK5m">
                                    <node concept="37vLTw" id="5m2bsnoT0qt" role="3uHU7B">
                                      <ref role="3cqZAo" node="5m2bsnoT0q8" resolve="index" />
                                    </node>
                                    <node concept="3cmrfG" id="5m2bsnoT0qu" role="3uHU7w">
                                      <property role="3cmrfH" value="1" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="5m2bsnoT0qv" role="3cqZAp">
                            <node concept="3cpWsn" id="5m2bsnoT0qw" role="3cpWs9">
                              <property role="TrG5h" value="classReq" />
                              <node concept="3uibUv" id="5m2bsnoT0qx" role="1tU5fm">
                                <ref role="3uigEE" to="cvlm:~Request" resolve="Request" />
                              </node>
                              <node concept="1rXfSq" id="5m2bsnoT0qy" role="33vP2m">
                                <ref role="37wK5l" node="5m2bsnoSmWO" resolve="processTestClass" />
                                <node concept="37vLTw" id="5m2bsnoTc30" role="37wK5m">
                                  <ref role="3cqZAo" node="5m2bsnoRlp0" resolve="cl" />
                                </node>
                                <node concept="37vLTw" id="5m2bsnoT0qz" role="37wK5m">
                                  <ref role="3cqZAo" node="5m2bsnoT0qf" resolve="testClassName" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3SKdUt" id="5m2bsnoT0qF" role="3cqZAp">
                            <node concept="1PaTwC" id="5m2bsnoT0qG" role="1aUNEU">
                              <node concept="3oM_SD" id="5m2bsnoT0qH" role="1PaTwD">
                                <property role="3oM_SC" value="Copied" />
                              </node>
                              <node concept="3oM_SD" id="5m2bsnoT0qI" role="1PaTwD">
                                <property role="3oM_SC" value="from" />
                              </node>
                              <node concept="3oM_SD" id="5m2bsnoT0qJ" role="1PaTwD">
                                <property role="3oM_SC" value="Request.method(Class&lt;?&gt;," />
                              </node>
                              <node concept="3oM_SD" id="5m2bsnoT0qK" role="1PaTwD">
                                <property role="3oM_SC" value="String);" />
                              </node>
                              <node concept="3oM_SD" id="5m2bsnoT0qL" role="1PaTwD">
                                <property role="3oM_SC" value="all" />
                              </node>
                              <node concept="3oM_SD" id="5m2bsnoT0qM" role="1PaTwD">
                                <property role="3oM_SC" value="we" />
                              </node>
                              <node concept="3oM_SD" id="5m2bsnoT0qN" role="1PaTwD">
                                <property role="3oM_SC" value="care" />
                              </node>
                              <node concept="3oM_SD" id="5m2bsnoT0qO" role="1PaTwD">
                                <property role="3oM_SC" value="is" />
                              </node>
                              <node concept="3oM_SD" id="5m2bsnoT0qP" role="1PaTwD">
                                <property role="3oM_SC" value="uniqueId" />
                              </node>
                              <node concept="3oM_SD" id="5m2bsnoT0qQ" role="1PaTwD">
                                <property role="3oM_SC" value="(built" />
                              </node>
                              <node concept="3oM_SD" id="5m2bsnoT0qR" role="1PaTwD">
                                <property role="3oM_SC" value="from" />
                              </node>
                              <node concept="3oM_SD" id="5m2bsnoT0qS" role="1PaTwD">
                                <property role="3oM_SC" value="class" />
                              </node>
                              <node concept="3oM_SD" id="5m2bsnoT0qT" role="1PaTwD">
                                <property role="3oM_SC" value="and" />
                              </node>
                              <node concept="3oM_SD" id="5m2bsnoT0qU" role="1PaTwD">
                                <property role="3oM_SC" value="methods" />
                              </node>
                              <node concept="3oM_SD" id="5m2bsnoT0qV" role="1PaTwD">
                                <property role="3oM_SC" value="names)," />
                              </node>
                              <node concept="3oM_SD" id="5m2bsnoT0qW" role="1PaTwD">
                                <property role="3oM_SC" value="so" />
                              </node>
                              <node concept="3oM_SD" id="5m2bsnoT0qX" role="1PaTwD">
                                <property role="3oM_SC" value="don't" />
                              </node>
                              <node concept="3oM_SD" id="5m2bsnoT0qY" role="1PaTwD">
                                <property role="3oM_SC" value="care" />
                              </node>
                              <node concept="3oM_SD" id="5m2bsnoT0qZ" role="1PaTwD">
                                <property role="3oM_SC" value="about" />
                              </node>
                              <node concept="3oM_SD" id="5m2bsnoT0r0" role="1PaTwD">
                                <property role="3oM_SC" value="Class&lt;&gt;" />
                              </node>
                              <node concept="3oM_SD" id="5m2bsnoT0r1" role="1PaTwD">
                                <property role="3oM_SC" value="instance" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="5m2bsnoT0r2" role="3cqZAp">
                            <node concept="3K4zz7" id="5m2bsnoTkzy" role="3cqZAk">
                              <node concept="10Nm6u" id="5m2bsnoTnHO" role="3K4GZi" />
                              <node concept="3y3z36" id="5m2bsnoTipn" role="3K4Cdx">
                                <node concept="10Nm6u" id="5m2bsnoTjF1" role="3uHU7w" />
                                <node concept="37vLTw" id="5m2bsnoTgIZ" role="3uHU7B">
                                  <ref role="3cqZAo" node="5m2bsnoT0qw" resolve="classReq" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="5m2bsnoT0r3" role="3K4E3e">
                                <node concept="37vLTw" id="5m2bsnoT0r4" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5m2bsnoT0qw" resolve="classReq" />
                                </node>
                                <node concept="liA8E" id="5m2bsnoT0r5" role="2OqNvi">
                                  <ref role="37wK5l" to="cvlm:~Request.filterWith(org.junit.runner.Description)" resolve="filterWith" />
                                  <node concept="2YIFZM" id="5m2bsnoT0r6" role="37wK5m">
                                    <ref role="1Pybhc" to="cvlm:~Description" resolve="Description" />
                                    <ref role="37wK5l" to="cvlm:~Description.createTestDescription(java.lang.String,java.lang.String,java.lang.annotation.Annotation...)" resolve="createTestDescription" />
                                    <node concept="37vLTw" id="5m2bsnoT0r7" role="37wK5m">
                                      <ref role="3cqZAo" node="5m2bsnoT0qf" resolve="testClassName" />
                                    </node>
                                    <node concept="37vLTw" id="5m2bsnoT0r8" role="37wK5m">
                                      <ref role="3cqZAo" node="5m2bsnoT0qn" resolve="testMethod" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTG" id="5m2bsnoRlp0" role="3clF46">
                          <property role="TrG5h" value="cl" />
                          <node concept="3uibUv" id="5m2bsnoRlp1" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="5m2bsnoRlp2" role="3clF46">
                          <property role="TrG5h" value="fqName" />
                          <node concept="3uibUv" id="5m2bsnoRlp3" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                          </node>
                        </node>
                        <node concept="3uibUv" id="5m2bsnoRloZ" role="3clF45">
                          <ref role="3uigEE" to="cvlm:~Request" resolve="Request" />
                        </node>
                        <node concept="3Tm6S6" id="5m2bsnoRloY" role="1B3o_S" />
                      </node>
                      <node concept="2tJIrI" id="5m2bsnoSvPI" role="jymVt" />
                      <node concept="2YIFZL" id="5m2bsnoSBAY" role="jymVt">
                        <property role="TrG5h" value="getTestClass" />
                        <node concept="3clFbS" id="5m2bsnoS_J9" role="3clF47">
                          <node concept="3cpWs8" id="5m2bsnoS_Ja" role="3cqZAp">
                            <node concept="3cpWsn" id="5m2bsnoS_Jb" role="3cpWs9">
                              <property role="TrG5h" value="testClass" />
                              <node concept="3uibUv" id="5m2bsnoS_Jc" role="1tU5fm">
                                <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                                <node concept="3qTvmN" id="5m2bsnoS_Jd" role="11_B2D" />
                              </node>
                              <node concept="10Nm6u" id="5m2bsnoS_Je" role="33vP2m" />
                            </node>
                          </node>
                          <node concept="3J1_TO" id="5m2bsnoS_Jf" role="3cqZAp">
                            <node concept="3clFbS" id="5m2bsnoS_Jg" role="1zxBo7">
                              <node concept="3clFbF" id="5m2bsnoS_Jh" role="3cqZAp">
                                <node concept="37vLTI" id="5m2bsnoS_Ji" role="3clFbG">
                                  <node concept="2OqwBi" id="5m2bsnoSGF2" role="37vLTx">
                                    <node concept="37vLTw" id="5m2bsnoSFq$" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5m2bsnoSCFF" resolve="cl" />
                                    </node>
                                    <node concept="liA8E" id="5m2bsnoSHDr" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~ClassLoader.loadClass(java.lang.String)" resolve="loadClass" />
                                      <node concept="37vLTw" id="5m2bsnoSIvu" role="37wK5m">
                                        <ref role="3cqZAo" node="5m2bsnoS_J7" resolve="className" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="5m2bsnoS_Jl" role="37vLTJ">
                                    <ref role="3cqZAo" node="5m2bsnoS_Jb" resolve="testClass" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3uVAMA" id="5m2bsnoS_Jm" role="1zxBo5">
                              <node concept="XOnhg" id="5m2bsnoS_Jn" role="1zc67B">
                                <property role="3TUv4t" value="false" />
                                <property role="TrG5h" value="e" />
                                <node concept="nSUau" id="5m2bsnoS_Jo" role="1tU5fm">
                                  <node concept="3uibUv" id="5m2bsnoS_Jp" role="nSUat">
                                    <ref role="3uigEE" to="wyt6:~ClassNotFoundException" resolve="ClassNotFoundException" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="5m2bsnoS_Jq" role="1zc67A">
                                <node concept="RRSsy" id="5m2bsnoS_Jr" role="3cqZAp">
                                  <property role="RRSoG" value="gZ5fh_4/error" />
                                  <node concept="3cpWs3" id="5m2bsnoS_Js" role="RRSoy">
                                    <node concept="3cpWs3" id="5m2bsnoS_Jt" role="3uHU7B">
                                      <node concept="37vLTw" id="5m2bsnoS_Ju" role="3uHU7w">
                                        <ref role="3cqZAo" node="5m2bsnoS_J7" resolve="className" />
                                      </node>
                                      <node concept="Xl_RD" id="5m2bsnoS_Jv" role="3uHU7B">
                                        <property role="Xl_RC" value="Test class " />
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="5m2bsnoS_Jw" role="3uHU7w">
                                      <property role="Xl_RC" value=" has not been found: it will be skipped" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="5m2bsnoS_Jx" role="RRSow">
                                    <ref role="3cqZAo" node="5m2bsnoS_Jn" resolve="e" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="5m2bsnoS_Jy" role="3cqZAp">
                            <node concept="37vLTw" id="5m2bsnoS_Jz" role="3cqZAk">
                              <ref role="3cqZAo" node="5m2bsnoS_Jb" resolve="testClass" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTG" id="5m2bsnoSCFF" role="3clF46">
                          <property role="TrG5h" value="cl" />
                          <node concept="3uibUv" id="5m2bsnoSDxC" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="5m2bsnoS_J7" role="3clF46">
                          <property role="TrG5h" value="className" />
                          <node concept="3uibUv" id="5m2bsnoS_J8" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                          </node>
                        </node>
                        <node concept="3uibUv" id="5m2bsnoS_J5" role="3clF45">
                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                          <node concept="3qTvmN" id="5m2bsnoS_J6" role="11_B2D" />
                        </node>
                        <node concept="3Tm6S6" id="5m2bsnoS_J4" role="1B3o_S" />
                      </node>
                      <node concept="2tJIrI" id="QfsuG7dYbl" role="jymVt" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbT" id="7rIOKY4il9V" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7rIOKY4niEa" role="3cqZAp">
          <node concept="2YIFZM" id="7rIOKY4iiE5" role="3clFbG">
            <ref role="1Pybhc" node="56tRMpP_bxe" resolve="DefaultTestExecutor" />
            <ref role="37wK5l" node="7rIOKY4hPSv" resolve="runAndQuit" />
            <node concept="37vLTw" id="7rIOKY4il9W" role="37wK5m">
              <ref role="3cqZAo" node="7rIOKY4il9R" resolve="exec" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7rIOKY4ii2w" role="1B3o_S" />
    <node concept="3UR2Jj" id="QfsuG7d_K$" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsBFU" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBFV" role="1PaTwD">
          <property role="3oM_SC" value="XXX" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFW" role="1PaTwD">
          <property role="3oM_SC" value="I" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFX" role="1PaTwD">
          <property role="3oM_SC" value="wonder" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFY" role="1PaTwD">
          <property role="3oM_SC" value="if" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBFZ" role="1PaTwD">
          <property role="3oM_SC" value="this" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBG0" role="1PaTwD">
          <property role="3oM_SC" value="class" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBG1" role="1PaTwD">
          <property role="3oM_SC" value="shall" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBG2" role="1PaTwD">
          <property role="3oM_SC" value="not" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBG3" role="1PaTwD">
          <property role="3oM_SC" value="be" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBG4" role="1PaTwD">
          <property role="3oM_SC" value="in" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBG5" role="1PaTwD">
          <property role="3oM_SC" value="some" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBG6" role="1PaTwD">
          <property role="3oM_SC" value="relation" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBG7" role="1PaTwD">
          <property role="3oM_SC" value="with" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBG8" role="1PaTwD">
          <property role="3oM_SC" value="DefaultTestExecutor" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBG9" role="1PaTwD">
          <property role="3oM_SC" value="-" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGa" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGb" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGc" role="1PaTwD">
          <property role="3oM_SC" value="same" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGd" role="1PaTwD">
          <property role="3oM_SC" value="reason" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBGe" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBGf" role="1PaTwD">
          <property role="3oM_SC" value="WithPlatformTestExecutor" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGg" role="1PaTwD">
          <property role="3oM_SC" value="extends" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGh" role="1PaTwD">
          <property role="3oM_SC" value="DefaultTestExecutor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2u2lerfkrHn">
    <property role="TrG5h" value="JUnit5TestExecutor" />
    <node concept="312cEg" id="2u2lerfks5R" role="jymVt">
      <property role="TrG5h" value="myTestContributor" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2u2lerfks5S" role="1B3o_S" />
      <node concept="3uibUv" id="2u2lerfks5U" role="1tU5fm">
        <ref role="3uigEE" node="1wWWPEu9Bc8" resolve="JUnit5TestContributor" />
      </node>
    </node>
    <node concept="312cEg" id="2u2lerfl9ar" role="jymVt">
      <property role="TrG5h" value="myContextCL" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2u2lerfl9as" role="1B3o_S" />
      <node concept="3uibUv" id="2u2lerfl9au" role="1tU5fm">
        <ref role="3uigEE" to="82uw:~Supplier" resolve="Supplier" />
        <node concept="3uibUv" id="2u2lerfl9av" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4Tt$Oebp$X8" role="jymVt" />
    <node concept="3clFbW" id="2u2lerfkrVg" role="jymVt">
      <node concept="3cqZAl" id="2u2lerfkrVi" role="3clF45" />
      <node concept="3Tm1VV" id="2u2lerfkrVj" role="1B3o_S" />
      <node concept="3clFbS" id="2u2lerfkrVk" role="3clF47">
        <node concept="XkiVB" id="2u2lerfkAIX" role="3cqZAp">
          <ref role="37wK5l" node="4iq05MkydUo" resolve="AbstractJUnitTestMixin" />
          <node concept="37vLTw" id="2u2lerflani" role="37wK5m">
            <ref role="3cqZAo" node="2u2lerfl8OO" resolve="redirectStdOutErr" />
          </node>
        </node>
        <node concept="3clFbF" id="2u2lerfks5V" role="3cqZAp">
          <node concept="37vLTI" id="2u2lerfks5X" role="3clFbG">
            <node concept="37vLTw" id="2u2lerfks60" role="37vLTJ">
              <ref role="3cqZAo" node="2u2lerfks5R" resolve="myTestContributor" />
            </node>
            <node concept="37vLTw" id="2u2lerfks61" role="37vLTx">
              <ref role="3cqZAo" node="2u2lerfks01" resolve="testContributor" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2u2lerfl9aw" role="3cqZAp">
          <node concept="37vLTI" id="2u2lerfl9ay" role="3clFbG">
            <node concept="37vLTw" id="2u2lerfl9a_" role="37vLTJ">
              <ref role="3cqZAo" node="2u2lerfl9ar" resolve="myContextCL" />
            </node>
            <node concept="37vLTw" id="2u2lerfl9aA" role="37vLTx">
              <ref role="3cqZAo" node="2u2lerfl8IB" resolve="contextCL" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3n2SaE96vIx" role="3cqZAp">
          <node concept="1PaTwC" id="3n2SaE96vIy" role="1aUNEU">
            <node concept="3oM_SD" id="3n2SaE96vIL" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="3n2SaE96vMQ" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="3n2SaE96vQz" role="1PaTwD">
              <property role="3oM_SC" value="similar" />
            </node>
            <node concept="3oM_SD" id="3n2SaE96vPg" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="3n2SaE96vQT" role="1PaTwD">
              <property role="3oM_SC" value="AbstractJUnit5Launcher" />
            </node>
            <node concept="3oM_SD" id="3n2SaE96vSV" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="3n2SaE96vUo" role="1PaTwD">
              <property role="3oM_SC" value="subclasses." />
            </node>
            <node concept="3oM_SD" id="3n2SaE96vWG" role="1PaTwD">
              <property role="3oM_SC" value="Eventually," />
            </node>
            <node concept="3oM_SD" id="3n2SaE96vZR" role="1PaTwD">
              <property role="3oM_SC" value="shall" />
            </node>
            <node concept="3oM_SD" id="3n2SaE96w0h" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="3n2SaE96w1y" role="1PaTwD">
              <property role="3oM_SC" value="converged" />
            </node>
            <node concept="3oM_SD" id="3n2SaE96w4K" role="1PaTwD">
              <property role="3oM_SC" value="into" />
            </node>
            <node concept="3oM_SD" id="3n2SaE96w4X" role="1PaTwD">
              <property role="3oM_SC" value="single" />
            </node>
            <node concept="3oM_SD" id="3n2SaE96w61" role="1PaTwD">
              <property role="3oM_SC" value="facility" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2u2lerfks01" role="3clF46">
        <property role="TrG5h" value="testContributor" />
        <node concept="3uibUv" id="2u2lerfks00" role="1tU5fm">
          <ref role="3uigEE" node="1wWWPEu9Bc8" resolve="JUnit5TestContributor" />
        </node>
      </node>
      <node concept="37vLTG" id="2u2lerfl8OO" role="3clF46">
        <property role="TrG5h" value="redirectStdOutErr" />
        <node concept="10P_77" id="2u2lerfl8OP" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2u2lerfl8IB" role="3clF46">
        <property role="TrG5h" value="contextCL" />
        <node concept="3uibUv" id="2u2lerfl90X" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Supplier" resolve="Supplier" />
          <node concept="3uibUv" id="2u2lerfl94t" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="35_wH_Fvkrm" role="jymVt" />
    <node concept="3clFbW" id="35_wH_FvjAI" role="jymVt">
      <node concept="3cqZAl" id="35_wH_FvjAJ" role="3clF45" />
      <node concept="3Tm1VV" id="35_wH_FvjAK" role="1B3o_S" />
      <node concept="3clFbS" id="35_wH_FvjAL" role="3clF47">
        <node concept="1VxSAg" id="35_wH_FvmMt" role="3cqZAp">
          <ref role="37wK5l" node="2u2lerfkrVg" resolve="JUnit5TestExecutor" />
          <node concept="37vLTw" id="35_wH_FvmXz" role="37wK5m">
            <ref role="3cqZAo" node="35_wH_FvjBc" resolve="testContributor" />
          </node>
          <node concept="37vLTw" id="35_wH_FvnhW" role="37wK5m">
            <ref role="3cqZAo" node="35_wH_FvjBe" resolve="redirectStdOutErr" />
          </node>
          <node concept="10QFUN" id="35_wH_FvqeT" role="37wK5m">
            <node concept="3uibUv" id="35_wH_FvqAx" role="10QFUM">
              <ref role="3uigEE" to="82uw:~Supplier" resolve="Supplier" />
              <node concept="3uibUv" id="35_wH_FvqSR" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
              </node>
            </node>
            <node concept="37Ijox" id="35_wH_Fvs0$" role="10QFUP">
              <ref role="37Ijqf" to="wyt6:~Class.getClassLoader()" resolve="getClassLoader" />
              <node concept="3VsKOn" id="35_wH_FvlE1" role="wWaWy">
                <ref role="3VsUkX" node="2u2lerfkrHn" resolve="JUnit5TestExecutor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="35_wH_FvoPr" role="3cqZAp">
          <node concept="1PaTwC" id="35_wH_FvoPs" role="1aUNEU">
            <node concept="3oM_SD" id="35_wH_FvoVr" role="1PaTwD">
              <property role="3oM_SC" value="XXX" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvoVz" role="1PaTwD">
              <property role="3oM_SC" value="class::getCL," />
            </node>
            <node concept="3oM_SD" id="35_wH_Fvsk8" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvoVH" role="1PaTwD">
              <property role="3oM_SC" value="getClass().getClassloader()" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvpU9" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="35_wH_Fvsk$" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="35_wH_Fvsl7" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="35_wH_Fvslf" role="1PaTwD">
              <property role="3oM_SC" value="feel" />
            </node>
            <node concept="3oM_SD" id="35_wH_Fvsmk" role="1PaTwD">
              <property role="3oM_SC" value="subclasses" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvsmO" role="1PaTwD">
              <property role="3oM_SC" value="could" />
            </node>
            <node concept="3oM_SD" id="35_wH_Fvsok" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvsoW" role="1PaTwD">
              <property role="3oM_SC" value="any" />
            </node>
            <node concept="3oM_SD" id="35_wH_Fvsp9" role="1PaTwD">
              <property role="3oM_SC" value="better" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvssM" role="1PaTwD">
              <property role="3oM_SC" value="(this" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvstG" role="1PaTwD">
              <property role="3oM_SC" value="class" />
            </node>
            <node concept="3oM_SD" id="35_wH_Fvsu1" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvsuH" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="35_wH_Fvsv4" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="35_wH_FvsK6" role="3cqZAp">
          <node concept="1PaTwC" id="35_wH_FvsJI" role="1aUNEU">
            <node concept="3oM_SD" id="35_wH_FvsJH" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvsSJ" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvsTd" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvsUu" role="1PaTwD">
              <property role="3oM_SC" value="have" />
            </node>
            <node concept="3oM_SD" id="35_wH_Fvsw2" role="1PaTwD">
              <property role="3oM_SC" value="access" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvswL" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="35_wH_Fvsxb" role="1PaTwD">
              <property role="3oM_SC" value="JUnit5" />
            </node>
            <node concept="3oM_SD" id="35_wH_Fvt5N" role="1PaTwD">
              <property role="3oM_SC" value="classes" />
            </node>
            <node concept="3oM_SD" id="35_wH_Fvt6B" role="1PaTwD">
              <property role="3oM_SC" value="anyway)." />
            </node>
            <node concept="3oM_SD" id="35_wH_Fvt4k" role="1PaTwD">
              <property role="3oM_SC" value="If" />
            </node>
            <node concept="3oM_SD" id="35_wH_Fvsqy" role="1PaTwD">
              <property role="3oM_SC" value="needed," />
            </node>
            <node concept="3oM_SD" id="35_wH_Fvsr8" role="1PaTwD">
              <property role="3oM_SC" value="could" />
            </node>
            <node concept="3oM_SD" id="35_wH_Fvsrv" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="35_wH_FvsrL" role="1PaTwD">
              <property role="3oM_SC" value="explicit." />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="35_wH_FvjBc" role="3clF46">
        <property role="TrG5h" value="testContributor" />
        <node concept="3uibUv" id="35_wH_FvjBd" role="1tU5fm">
          <ref role="3uigEE" node="1wWWPEu9Bc8" resolve="JUnit5TestContributor" />
        </node>
      </node>
      <node concept="37vLTG" id="35_wH_FvjBe" role="3clF46">
        <property role="TrG5h" value="redirectStdOutErr" />
        <node concept="10P_77" id="35_wH_FvjBf" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5m2bsnoP7CH" role="jymVt" />
    <node concept="3clFb_" id="2$dYB7PEl1k" role="jymVt">
      <property role="TrG5h" value="executeSafe" />
      <node concept="3Tmbuc" id="2$dYB7PEl1l" role="1B3o_S" />
      <node concept="3cqZAl" id="2$dYB7PEl1m" role="3clF45" />
      <node concept="3uibUv" id="2$dYB7PEl1n" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
      </node>
      <node concept="2AHcQZ" id="2$dYB7PEl1o" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="2$dYB7PEl1p" role="3clF47">
        <node concept="3clFbF" id="2bvzdxLO42z" role="3cqZAp">
          <node concept="1rXfSq" id="2bvzdxLO42$" role="3clFbG">
            <ref role="37wK5l" node="1h_3Jr6BXCM" resolve="executeWithContextClassLoader" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1h_3Jr6BVUP" role="jymVt" />
    <node concept="3clFb_" id="1h_3Jr6BXCM" role="jymVt">
      <property role="TrG5h" value="executeWithContextClassLoader" />
      <node concept="3Tmbuc" id="1h_3Jr6BXCN" role="1B3o_S" />
      <node concept="3cqZAl" id="1h_3Jr6BXCO" role="3clF45" />
      <node concept="3uibUv" id="1h_3Jr6BXCP" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
      </node>
      <node concept="3clFbS" id="1h_3Jr6BXCQ" role="3clF47">
        <node concept="3cpWs8" id="1h_3Jr6BXCR" role="3cqZAp">
          <node concept="3cpWsn" id="1h_3Jr6BXCS" role="3cpWs9">
            <property role="TrG5h" value="contextClassLoader" />
            <node concept="3uibUv" id="1h_3Jr6BXCT" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
            </node>
            <node concept="2OqwBi" id="1h_3Jr6BXCU" role="33vP2m">
              <node concept="2YIFZM" id="1h_3Jr6BXCV" role="2Oq$k0">
                <ref role="37wK5l" to="wyt6:~Thread.currentThread()" resolve="currentThread" />
                <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
              </node>
              <node concept="liA8E" id="1h_3Jr6BXCW" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Thread.getContextClassLoader()" resolve="getContextClassLoader" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="1h_3Jr6BXCX" role="3cqZAp">
          <node concept="3clFbS" id="1h_3Jr6BXCY" role="1zxBo7">
            <node concept="3clFbF" id="1h_3Jr6BXCZ" role="3cqZAp">
              <node concept="2OqwBi" id="1h_3Jr6BXD0" role="3clFbG">
                <node concept="2YIFZM" id="1h_3Jr6BXD1" role="2Oq$k0">
                  <ref role="37wK5l" to="wyt6:~Thread.currentThread()" resolve="currentThread" />
                  <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                </node>
                <node concept="liA8E" id="1h_3Jr6BXD2" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Thread.setContextClassLoader(java.lang.ClassLoader)" resolve="setContextClassLoader" />
                  <node concept="2OqwBi" id="2u2lerflbS_" role="37wK5m">
                    <node concept="37vLTw" id="2u2lerflbfc" role="2Oq$k0">
                      <ref role="3cqZAo" node="2u2lerfl9ar" resolve="myContextCL" />
                    </node>
                    <node concept="liA8E" id="2u2lerflcNC" role="2OqNvi">
                      <ref role="37wK5l" to="82uw:~Supplier.get()" resolve="get" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1h_3Jr6BXD4" role="3cqZAp">
              <node concept="1rXfSq" id="1h_3Jr6BXD5" role="3clFbG">
                <ref role="37wK5l" node="2bvzdxLOgDO" resolve="executeWithJUnit5" />
                <node concept="2OqwBi" id="2u2lerfkBLK" role="37wK5m">
                  <node concept="37vLTw" id="2u2lerfkBcX" role="2Oq$k0">
                    <ref role="3cqZAo" node="2u2lerfks5R" resolve="myTestContributor" />
                  </node>
                  <node concept="liA8E" id="2u2lerfkCph" role="2OqNvi">
                    <ref role="37wK5l" node="1wWWPEua5Su" resolve="collectSelectors" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1h_3Jr6BXD7" role="3cqZAp" />
          </node>
          <node concept="1wplmZ" id="1h_3Jr6BXD8" role="1zxBo6">
            <node concept="3clFbS" id="1h_3Jr6BXD9" role="1wplMD">
              <node concept="3clFbF" id="1h_3Jr6BXDa" role="3cqZAp">
                <node concept="2OqwBi" id="1h_3Jr6BXDb" role="3clFbG">
                  <node concept="2YIFZM" id="1h_3Jr6BXDc" role="2Oq$k0">
                    <ref role="37wK5l" to="wyt6:~Thread.currentThread()" resolve="currentThread" />
                    <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                  </node>
                  <node concept="liA8E" id="1h_3Jr6BXDd" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Thread.setContextClassLoader(java.lang.ClassLoader)" resolve="setContextClassLoader" />
                    <node concept="37vLTw" id="1h_3Jr6BXDe" role="37wK5m">
                      <ref role="3cqZAo" node="1h_3Jr6BXCS" resolve="contextClassLoader" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2bvzdxLO5su" role="jymVt" />
    <node concept="3clFb_" id="2bvzdxLOgDO" role="jymVt">
      <property role="TrG5h" value="executeWithJUnit5" />
      <node concept="37vLTG" id="2bvzdxLOgDP" role="3clF46">
        <property role="TrG5h" value="selectors" />
        <node concept="3uibUv" id="2bvzdxLOgDQ" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="2bvzdxLOgDR" role="11_B2D">
            <ref role="3uigEE" to="n4ib:~DiscoverySelector" resolve="DiscoverySelector" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="2bvzdxLOgDS" role="3clF45" />
      <node concept="3Tmbuc" id="2bvzdxLOgDT" role="1B3o_S" />
      <node concept="3clFbS" id="2bvzdxLOgDU" role="3clF47">
        <node concept="3cpWs8" id="2bvzdxLOgDV" role="3cqZAp">
          <node concept="3cpWsn" id="2bvzdxLOgDW" role="3cpWs9">
            <property role="TrG5h" value="request" />
            <node concept="3uibUv" id="2bvzdxLOgDX" role="1tU5fm">
              <ref role="3uigEE" to="bws1:~LauncherDiscoveryRequest" resolve="LauncherDiscoveryRequest" />
            </node>
            <node concept="2OqwBi" id="2bvzdxLOgDY" role="33vP2m">
              <property role="hSjvv" value="true" />
              <node concept="2OqwBi" id="2bvzdxLOgDZ" role="2Oq$k0">
                <property role="hSjvv" value="true" />
                <node concept="2OqwBi" id="2bvzdxLOgE0" role="2Oq$k0">
                  <property role="hSjvv" value="true" />
                  <node concept="2OqwBi" id="2bvzdxLOgE1" role="2Oq$k0">
                    <property role="hSjvv" value="true" />
                    <node concept="2YIFZM" id="2bvzdxLOgE2" role="2Oq$k0">
                      <ref role="37wK5l" to="z4cc:~LauncherDiscoveryRequestBuilder.request()" resolve="request" />
                      <ref role="1Pybhc" to="z4cc:~LauncherDiscoveryRequestBuilder" resolve="LauncherDiscoveryRequestBuilder" />
                    </node>
                    <node concept="liA8E" id="2bvzdxLOgE3" role="2OqNvi">
                      <ref role="37wK5l" to="z4cc:~LauncherDiscoveryRequestBuilder.selectors(java.util.List)" resolve="selectors" />
                      <node concept="37vLTw" id="2bvzdxLOgE4" role="37wK5m">
                        <ref role="3cqZAo" node="2bvzdxLOgDP" resolve="selectors" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="2bvzdxLOgE5" role="2OqNvi">
                    <ref role="37wK5l" to="z4cc:~LauncherDiscoveryRequestBuilder.configurationParameter(java.lang.String,java.lang.String)" resolve="configurationParameter" />
                    <node concept="Xl_RD" id="2bvzdxLOgE6" role="37wK5m">
                      <property role="Xl_RC" value="junit.platform.output.capture.stdout" />
                    </node>
                    <node concept="Xl_RD" id="2bvzdxLOgE7" role="37wK5m">
                      <property role="Xl_RC" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2bvzdxLOgE8" role="2OqNvi">
                  <ref role="37wK5l" to="z4cc:~LauncherDiscoveryRequestBuilder.configurationParameter(java.lang.String,java.lang.String)" resolve="configurationParameter" />
                  <node concept="Xl_RD" id="2bvzdxLOgE9" role="37wK5m">
                    <property role="Xl_RC" value="junit.platform.output.capture.stderr" />
                  </node>
                  <node concept="Xl_RD" id="2bvzdxLOgEa" role="37wK5m">
                    <property role="Xl_RC" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2bvzdxLOgEb" role="2OqNvi">
                <ref role="37wK5l" to="z4cc:~LauncherDiscoveryRequestBuilder.build()" resolve="build" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2bvzdxLOgEc" role="3cqZAp" />
        <node concept="3cpWs8" id="4rQ9_5cUrM4" role="3cqZAp">
          <node concept="3cpWsn" id="4rQ9_5cUrM5" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="4rQ9_5cUrM6" role="1tU5fm">
              <ref role="3uigEE" to="z4cc:~LauncherConfig$Builder" resolve="LauncherConfig.Builder" />
            </node>
            <node concept="2OqwBi" id="4rQ9_5cUrM7" role="33vP2m">
              <property role="hSjvv" value="true" />
              <node concept="2OqwBi" id="4rQ9_5cUrM8" role="2Oq$k0">
                <property role="hSjvv" value="true" />
                <node concept="2OqwBi" id="4rQ9_5cUrM9" role="2Oq$k0">
                  <property role="hSjvv" value="true" />
                  <node concept="2OqwBi" id="4rQ9_5cUrMa" role="2Oq$k0">
                    <property role="hSjvv" value="true" />
                    <node concept="2OqwBi" id="4rQ9_5cUrMb" role="2Oq$k0">
                      <property role="hSjvv" value="true" />
                      <node concept="2YIFZM" id="4rQ9_5cUrMc" role="2Oq$k0">
                        <ref role="37wK5l" to="z4cc:~LauncherConfig.builder()" resolve="builder" />
                        <ref role="1Pybhc" to="z4cc:~LauncherConfig" resolve="LauncherConfig" />
                      </node>
                      <node concept="liA8E" id="4rQ9_5cUrMd" role="2OqNvi">
                        <ref role="37wK5l" to="z4cc:~LauncherConfig$Builder.enableTestEngineAutoRegistration(boolean)" resolve="enableTestEngineAutoRegistration" />
                        <node concept="3clFbT" id="4rQ9_5cUrMe" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="4rQ9_5cUrMf" role="2OqNvi">
                      <ref role="37wK5l" to="z4cc:~LauncherConfig$Builder.enablePostDiscoveryFilterAutoRegistration(boolean)" resolve="enablePostDiscoveryFilterAutoRegistration" />
                      <node concept="3clFbT" id="4rQ9_5cUrMg" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4rQ9_5cUrMh" role="2OqNvi">
                    <ref role="37wK5l" to="z4cc:~LauncherConfig$Builder.enableLauncherSessionListenerAutoRegistration(boolean)" resolve="enableLauncherSessionListenerAutoRegistration" />
                    <node concept="3clFbT" id="4rQ9_5cUrMi" role="37wK5m" />
                  </node>
                </node>
                <node concept="liA8E" id="4rQ9_5cUrMj" role="2OqNvi">
                  <ref role="37wK5l" to="z4cc:~LauncherConfig$Builder.enableLauncherDiscoveryListenerAutoRegistration(boolean)" resolve="enableLauncherDiscoveryListenerAutoRegistration" />
                  <node concept="3clFbT" id="4rQ9_5cUrMk" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="4rQ9_5cUrMl" role="2OqNvi">
                <ref role="37wK5l" to="z4cc:~LauncherConfig$Builder.enableTestExecutionListenerAutoRegistration(boolean)" resolve="enableTestExecutionListenerAutoRegistration" />
                <node concept="3clFbT" id="4rQ9_5cUrMm" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4rQ9_5cWacz" role="3cqZAp" />
        <node concept="3cpWs8" id="2bvzdxLOgEd" role="3cqZAp">
          <node concept="3cpWsn" id="2bvzdxLOgEe" role="3cpWs9">
            <property role="TrG5h" value="launcherConfig" />
            <node concept="3uibUv" id="2bvzdxLOgEf" role="1tU5fm">
              <ref role="3uigEE" to="z4cc:~LauncherConfig" resolve="LauncherConfig" />
            </node>
            <node concept="2OqwBi" id="4rQ9_5cVGVQ" role="33vP2m">
              <node concept="37vLTw" id="4rQ9_5cVES6" role="2Oq$k0">
                <ref role="3cqZAo" node="4rQ9_5cUrM5" resolve="builder" />
              </node>
              <node concept="liA8E" id="4rQ9_5cVLI5" role="2OqNvi">
                <ref role="37wK5l" to="z4cc:~LauncherConfig$Builder.build()" resolve="build" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2bvzdxLOgEC" role="3cqZAp">
          <node concept="3cpWsn" id="2bvzdxLOgED" role="3cpWs9">
            <property role="TrG5h" value="launcher" />
            <node concept="3uibUv" id="2bvzdxLOgEE" role="1tU5fm">
              <ref role="3uigEE" to="bws1:~Launcher" resolve="Launcher" />
            </node>
            <node concept="2OqwBi" id="2bvzdxLOgEF" role="33vP2m">
              <node concept="2YIFZM" id="2bvzdxLOgEG" role="2Oq$k0">
                <ref role="37wK5l" to="z4cc:~LauncherFactory.openSession(org.junit.platform.launcher.core.LauncherConfig)" resolve="openSession" />
                <ref role="1Pybhc" to="z4cc:~LauncherFactory" resolve="LauncherFactory" />
                <node concept="37vLTw" id="2bvzdxLOgEH" role="37wK5m">
                  <ref role="3cqZAo" node="2bvzdxLOgEe" resolve="launcherConfig" />
                </node>
              </node>
              <node concept="liA8E" id="2bvzdxLOgEI" role="2OqNvi">
                <ref role="37wK5l" to="bws1:~LauncherSession.getLauncher()" resolve="getLauncher" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2bvzdxLOgEJ" role="3cqZAp">
          <node concept="3cpWsn" id="2bvzdxLOgEK" role="3cpWs9">
            <property role="TrG5h" value="listener" />
            <node concept="3uibUv" id="2bvzdxLOgEL" role="1tU5fm">
              <ref role="3uigEE" node="6maaEP0G01l" resolve="DefaultTestExecutionListener" />
            </node>
            <node concept="1rXfSq" id="1W7Tdy_U0sF" role="33vP2m">
              <ref role="37wK5l" node="1W7Tdy_U0sC" resolve="createTestExecutionListener" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2bvzdxLOgEP" role="3cqZAp">
          <node concept="3clFbS" id="2bvzdxLOgEQ" role="1zxBo7">
            <node concept="3clFbF" id="2bvzdxLOgER" role="3cqZAp">
              <node concept="2OqwBi" id="2bvzdxLOgES" role="3clFbG">
                <node concept="37vLTw" id="2bvzdxLOgET" role="2Oq$k0">
                  <ref role="3cqZAo" node="2bvzdxLOgED" resolve="launcher" />
                </node>
                <node concept="liA8E" id="2bvzdxLOgEU" role="2OqNvi">
                  <ref role="37wK5l" to="bws1:~Launcher.execute(org.junit.platform.launcher.LauncherDiscoveryRequest,org.junit.platform.launcher.TestExecutionListener...)" resolve="execute" />
                  <node concept="37vLTw" id="2bvzdxLOgEV" role="37wK5m">
                    <ref role="3cqZAo" node="2bvzdxLOgDW" resolve="request" />
                  </node>
                  <node concept="37vLTw" id="2bvzdxLOgEW" role="37wK5m">
                    <ref role="3cqZAo" node="2bvzdxLOgEK" resolve="listener" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2bvzdxLOgEX" role="3cqZAp" />
          </node>
          <node concept="1wplmZ" id="2bvzdxLOgEY" role="1zxBo6">
            <node concept="3clFbS" id="2bvzdxLOgEZ" role="1wplMD">
              <node concept="3clFbF" id="2bvzdxLOgF0" role="3cqZAp">
                <node concept="37vLTI" id="2bvzdxLOgF1" role="3clFbG">
                  <node concept="2OqwBi" id="2bvzdxLOgF2" role="37vLTx">
                    <node concept="37vLTw" id="2bvzdxLOgF3" role="2Oq$k0">
                      <ref role="3cqZAo" node="2bvzdxLOgEK" resolve="listener" />
                    </node>
                    <node concept="liA8E" id="2bvzdxLOgF4" role="2OqNvi">
                      <ref role="37wK5l" node="2NMjZ1W$mqU" resolve="getFailuresCount" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2bvzdxLOgF5" role="37vLTJ">
                    <node concept="Xjq3P" id="2bvzdxLOgF6" role="2Oq$k0" />
                    <node concept="2OwXpG" id="2bvzdxLOgF7" role="2OqNvi">
                      <ref role="2Oxat5" node="4br3RNOLtwz" resolve="myFailureCount" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1W7Tdy_U0MP" role="jymVt" />
    <node concept="3clFb_" id="1W7Tdy_U0sC" role="jymVt">
      <property role="TrG5h" value="createTestExecutionListener" />
      <node concept="3Tmbuc" id="1W7Tdy_U0sD" role="1B3o_S" />
      <node concept="3uibUv" id="1W7Tdy_U0sE" role="3clF45">
        <ref role="3uigEE" node="6maaEP0G01l" resolve="DefaultTestExecutionListener" />
      </node>
      <node concept="3clFbS" id="1W7Tdy_U0sy" role="3clF47">
        <node concept="3cpWs6" id="1W7Tdy_U0sz" role="3cqZAp">
          <node concept="2ShNRf" id="1W7Tdy_U0s$" role="3cqZAk">
            <node concept="YeOm9" id="1W7Tdy_U9EA" role="2ShVmc">
              <node concept="1Y3b0j" id="1W7Tdy_U9ED" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="6maaEP0G6k$" resolve="DefaultTestExecutionListener" />
                <ref role="1Y3XeK" node="6maaEP0G01l" resolve="DefaultTestExecutionListener" />
                <node concept="3Tm1VV" id="1W7Tdy_U9EE" role="1B3o_S" />
                <node concept="37vLTw" id="1W7Tdy_U0sA" role="37wK5m">
                  <ref role="3cqZAo" node="6WFPrF9Qc1B" resolve="myOutStream" />
                </node>
                <node concept="3clFb_" id="1W7Tdy_Ua82" role="jymVt">
                  <property role="TrG5h" value="flush" />
                  <node concept="3Tmbuc" id="1W7Tdy_Ua83" role="1B3o_S" />
                  <node concept="3cqZAl" id="1W7Tdy_Ua84" role="3clF45" />
                  <node concept="3clFbS" id="1W7Tdy_Ua8f" role="3clF47">
                    <node concept="3SKdUt" id="1W7Tdy_Uf9D" role="3cqZAp">
                      <node concept="1PaTwC" id="1W7Tdy_Uf9E" role="1aUNEU">
                        <node concept="3oM_SD" id="1W7Tdy_Ufyd" role="1PaTwD">
                          <property role="3oM_SC" value="NOP:" />
                        </node>
                        <node concept="3oM_SD" id="1W7Tdy_UfyI" role="1PaTwD">
                          <property role="3oM_SC" value="avoid" />
                        </node>
                        <node concept="3oM_SD" id="1W7Tdy_Ufzg" role="1PaTwD">
                          <property role="3oM_SC" value="attempting" />
                        </node>
                        <node concept="3oM_SD" id="1W7Tdy_UfzL" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="1W7Tdy_UfzM" role="1PaTwD">
                          <property role="3oM_SC" value="flush" />
                        </node>
                        <node concept="3oM_SD" id="1W7Tdy_Uf_j" role="1PaTwD">
                          <property role="3oM_SC" value="stdout/stderr" />
                        </node>
                        <node concept="3oM_SD" id="1W7Tdy_UfAO" role="1PaTwD">
                          <property role="3oM_SC" value="in" />
                        </node>
                        <node concept="3oM_SD" id="1W7Tdy_UfBR" role="1PaTwD">
                          <property role="3oM_SC" value="order" />
                        </node>
                        <node concept="3oM_SD" id="1W7Tdy_UfCo" role="1PaTwD">
                          <property role="3oM_SC" value="not" />
                        </node>
                        <node concept="3oM_SD" id="1W7Tdy_UfCp" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="1W7Tdy_UfEs" role="1PaTwD">
                          <property role="3oM_SC" value="deadlock;" />
                        </node>
                        <node concept="3oM_SD" id="1W7Tdy_UXpB" role="1PaTwD">
                          <property role="3oM_SC" value="MPS-37852" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="1W7Tdy_Ua8g" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5m2bsnoUAqZ" role="jymVt" />
    <node concept="3clFb_" id="5vTxdEzG54E" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="processThrowable" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="5vTxdEzG54H" role="3clF47">
        <node concept="3clFbF" id="4br3RNOP_7_" role="3cqZAp">
          <node concept="3nyPlj" id="4br3RNOP_7w" role="3clFbG">
            <ref role="37wK5l" node="4br3RNOLXja" resolve="processThrowable" />
            <node concept="37vLTw" id="4br3RNOP_pB" role="37wK5m">
              <ref role="3cqZAo" node="5vTxdEzG5FY" resolve="t" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6WFPrF9S8k7" role="3cqZAp">
          <node concept="2OqwBi" id="6WFPrF9S8lt" role="3clFbG">
            <node concept="37vLTw" id="6WFPrF9S8k6" role="2Oq$k0">
              <ref role="3cqZAo" node="5vTxdEzG5FY" resolve="t" />
            </node>
            <node concept="liA8E" id="6WFPrF9S8yA" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace(java.io.PrintStream)" resolve="printStackTrace" />
              <node concept="10M0yZ" id="6WFPrF9S8By" role="37wK5m">
                <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="5vTxdEzG4qO" role="1B3o_S" />
      <node concept="3cqZAl" id="5vTxdEzG51f" role="3clF45" />
      <node concept="37vLTG" id="5vTxdEzG5FY" role="3clF46">
        <property role="TrG5h" value="t" />
        <node concept="3uibUv" id="5vTxdEzG5FX" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4br3RNOLZgB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2u2lerfkrHo" role="1B3o_S" />
    <node concept="3uibUv" id="2u2lerfkrSD" role="1zkMxy">
      <ref role="3uigEE" node="4iq05MkwMhJ" resolve="AbstractJUnitTestMixin" />
    </node>
  </node>
  <node concept="312cEu" id="1wWWPEubhZx">
    <property role="TrG5h" value="JUnit5TestContributorConverter" />
    <node concept="312cEg" id="5m2bsnoTPmt" role="jymVt">
      <property role="TrG5h" value="myTestsContributor" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5m2bsnoTPmu" role="1B3o_S" />
      <node concept="3uibUv" id="5m2bsnoTPmw" role="1tU5fm">
        <ref role="3uigEE" node="5Ti9jVZ8rxi" resolve="TestsContributor" />
      </node>
    </node>
    <node concept="2tJIrI" id="5m2bsnoTQXz" role="jymVt" />
    <node concept="3clFbW" id="1wWWPEubiSm" role="jymVt">
      <node concept="37vLTG" id="1wWWPEubiUp" role="3clF46">
        <property role="TrG5h" value="toConvert" />
        <node concept="3uibUv" id="5m2bsnoTB$F" role="1tU5fm">
          <ref role="3uigEE" node="5Ti9jVZ8rxi" resolve="TestsContributor" />
        </node>
      </node>
      <node concept="3cqZAl" id="1wWWPEubiSo" role="3clF45" />
      <node concept="3Tm1VV" id="1wWWPEubiSp" role="1B3o_S" />
      <node concept="3clFbS" id="1wWWPEubiSq" role="3clF47">
        <node concept="3clFbF" id="5m2bsnoTPmx" role="3cqZAp">
          <node concept="37vLTI" id="5m2bsnoTPmz" role="3clFbG">
            <node concept="37vLTw" id="5m2bsnoTPmA" role="37vLTJ">
              <ref role="3cqZAo" node="5m2bsnoTPmt" resolve="myTestsContributor" />
            </node>
            <node concept="37vLTw" id="5m2bsnoTPmB" role="37vLTx">
              <ref role="3cqZAo" node="1wWWPEubiUp" resolve="toConvert" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="1wWWPEubi6D" role="EKbjA">
      <ref role="3uigEE" node="1wWWPEu9Bc8" resolve="JUnit5TestContributor" />
    </node>
    <node concept="2tJIrI" id="4rQ9_5djO2b" role="jymVt" />
    <node concept="3clFb_" id="1wWWPEubi7S" role="jymVt">
      <property role="TrG5h" value="collectSelectors" />
      <node concept="3uibUv" id="1wWWPEubi7T" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1wWWPEubi7U" role="11_B2D">
          <ref role="3uigEE" to="n4ib:~DiscoverySelector" resolve="DiscoverySelector" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1wWWPEubi7V" role="1B3o_S" />
      <node concept="3clFbS" id="1wWWPEubi7X" role="3clF47">
        <node concept="3cpWs8" id="1wWWPEubpIH" role="3cqZAp">
          <node concept="3cpWsn" id="1wWWPEubpII" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="selectors" />
            <node concept="3uibUv" id="1wWWPEubpIJ" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="1wWWPEubpIK" role="11_B2D">
                <ref role="3uigEE" to="n4ib:~DiscoverySelector" resolve="DiscoverySelector" />
              </node>
            </node>
            <node concept="2ShNRf" id="1wWWPEubpIL" role="33vP2m">
              <node concept="1pGfFk" id="1wWWPEubpIM" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~LinkedList.&lt;init&gt;()" resolve="LinkedList" />
                <node concept="3uibUv" id="1wWWPEubpIN" role="1pMfVU">
                  <ref role="3uigEE" to="n4ib:~DiscoverySelector" resolve="DiscoverySelector" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5m2bsnoU77G" role="3cqZAp">
          <node concept="3clFbS" id="5m2bsnoU77H" role="2LFqv$">
            <node concept="3cpWs8" id="5m2bsnoU77I" role="3cqZAp">
              <node concept="3cpWsn" id="5m2bsnoU77J" role="3cpWs9">
                <property role="TrG5h" value="classLoader" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="5m2bsnoU77K" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
                </node>
                <node concept="2OqwBi" id="5m2bsnoU77L" role="33vP2m">
                  <node concept="37vLTw" id="5m2bsnoU77M" role="2Oq$k0">
                    <ref role="3cqZAo" node="5m2bsnoTPmt" resolve="myTestsContributor" />
                  </node>
                  <node concept="liA8E" id="5m2bsnoU77N" role="2OqNvi">
                    <ref role="37wK5l" node="5m2bsnoH09a" resolve="classLoader" />
                    <node concept="37vLTw" id="5m2bsnoU77O" role="37wK5m">
                      <ref role="3cqZAo" node="5m2bsnoU78K" resolve="tr" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Dw8fO" id="5m2bsnoU77P" role="3cqZAp">
              <node concept="1gjucp" id="5m2bsnoU77Q" role="_NwL_">
                <property role="TrG5h" value="x" />
                <node concept="10Oyi0" id="5m2bsnoU77R" role="1tU5fm" />
                <node concept="2OqwBi" id="5m2bsnoU77S" role="33vP2m">
                  <node concept="2OqwBi" id="5m2bsnoU77T" role="2Oq$k0">
                    <node concept="37vLTw" id="5m2bsnoU77U" role="2Oq$k0">
                      <ref role="3cqZAo" node="5m2bsnoU78K" resolve="tr" />
                    </node>
                    <node concept="2OwXpG" id="5m2bsnoU77V" role="2OqNvi">
                      <ref role="2Oxat5" node="6fYV1N6aeCV" resolve="myTestQualifiedName" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5m2bsnoU77W" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5m2bsnoU77X" role="2LFqv$">
                <node concept="3cpWs8" id="5m2bsnoU77Y" role="3cqZAp">
                  <node concept="3cpWsn" id="5m2bsnoU77Z" role="3cpWs9">
                    <property role="TrG5h" value="qualifiedName" />
                    <node concept="17QB3L" id="5m2bsnoU780" role="1tU5fm" />
                    <node concept="2OqwBi" id="5m2bsnoU781" role="33vP2m">
                      <node concept="2OqwBi" id="5m2bsnoU782" role="2Oq$k0">
                        <node concept="37vLTw" id="5m2bsnoU783" role="2Oq$k0">
                          <ref role="3cqZAo" node="5m2bsnoU78K" resolve="tr" />
                        </node>
                        <node concept="2OwXpG" id="5m2bsnoU784" role="2OqNvi">
                          <ref role="2Oxat5" node="6fYV1N6aeCV" resolve="myTestQualifiedName" />
                        </node>
                      </node>
                      <node concept="liA8E" id="5m2bsnoU785" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                        <node concept="37vLTw" id="5m2bsnoU786" role="37wK5m">
                          <ref role="3cqZAo" node="5m2bsnoU78C" resolve="i" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="5m2bsnoU787" role="3cqZAp">
                  <node concept="3cpWsn" id="5m2bsnoU788" role="3cpWs9">
                    <property role="TrG5h" value="isTestCase" />
                    <node concept="10P_77" id="5m2bsnoU789" role="1tU5fm" />
                    <node concept="2OqwBi" id="5m2bsnoU78a" role="33vP2m">
                      <node concept="2YIFZM" id="5m2bsnoU78b" role="2Oq$k0">
                        <ref role="37wK5l" to="wyt6:~Boolean.valueOf(java.lang.String)" resolve="valueOf" />
                        <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                        <node concept="2OqwBi" id="5m2bsnoU78c" role="37wK5m">
                          <node concept="2OqwBi" id="5m2bsnoU78d" role="2Oq$k0">
                            <node concept="37vLTw" id="5m2bsnoU78e" role="2Oq$k0">
                              <ref role="3cqZAo" node="5m2bsnoU78K" resolve="tr" />
                            </node>
                            <node concept="2OwXpG" id="5m2bsnoU78f" role="2OqNvi">
                              <ref role="2Oxat5" node="4FBFA_GHaaU" resolve="isTestCase" />
                            </node>
                          </node>
                          <node concept="liA8E" id="5m2bsnoU78g" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                            <node concept="37vLTw" id="5m2bsnoU78h" role="37wK5m">
                              <ref role="3cqZAo" node="5m2bsnoU78C" resolve="i" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="5m2bsnoU78i" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Boolean.booleanValue()" resolve="booleanValue" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="5m2bsnoU78j" role="3cqZAp">
                  <node concept="3cpWsn" id="5m2bsnoU78k" role="3cpWs9">
                    <property role="TrG5h" value="r" />
                    <node concept="3uibUv" id="5m2bsnoU78l" role="1tU5fm">
                      <ref role="3uigEE" to="n4ib:~DiscoverySelector" resolve="DiscoverySelector" />
                    </node>
                    <node concept="3K4zz7" id="5m2bsnoU78m" role="33vP2m">
                      <node concept="1rXfSq" id="5m2bsnoU78n" role="3K4E3e">
                        <ref role="37wK5l" node="1wWWPEubrw3" resolve="processTestClass" />
                        <node concept="37vLTw" id="5m2bsnoV07g" role="37wK5m">
                          <ref role="3cqZAo" node="5m2bsnoU77J" resolve="classLoader" />
                        </node>
                        <node concept="37vLTw" id="5m2bsnoU78p" role="37wK5m">
                          <ref role="3cqZAo" node="5m2bsnoU77Z" resolve="qualifiedName" />
                        </node>
                      </node>
                      <node concept="1rXfSq" id="5m2bsnoU78q" role="3K4GZi">
                        <ref role="37wK5l" node="1wWWPEubEqc" resolve="processTestMethod" />
                        <node concept="37vLTw" id="5m2bsnoV1ev" role="37wK5m">
                          <ref role="3cqZAo" node="5m2bsnoU77J" resolve="classLoader" />
                        </node>
                        <node concept="37vLTw" id="5m2bsnoU78s" role="37wK5m">
                          <ref role="3cqZAo" node="5m2bsnoU77Z" resolve="qualifiedName" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="5m2bsnoU78t" role="3K4Cdx">
                        <ref role="3cqZAo" node="5m2bsnoU788" resolve="isTestCase" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5m2bsnoU78u" role="3cqZAp">
                  <node concept="3clFbS" id="5m2bsnoU78v" role="3clFbx">
                    <node concept="3clFbF" id="5m2bsnoU78w" role="3cqZAp">
                      <node concept="2OqwBi" id="5m2bsnoU78x" role="3clFbG">
                        <node concept="37vLTw" id="5m2bsnoUmAC" role="2Oq$k0">
                          <ref role="3cqZAo" node="1wWWPEubpII" resolve="selectors" />
                        </node>
                        <node concept="liA8E" id="5m2bsnoU78z" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                          <node concept="37vLTw" id="5m2bsnoU78$" role="37wK5m">
                            <ref role="3cqZAo" node="5m2bsnoU78k" resolve="r" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="5m2bsnoU78_" role="3clFbw">
                    <node concept="10Nm6u" id="5m2bsnoU78A" role="3uHU7w" />
                    <node concept="37vLTw" id="5m2bsnoU78B" role="3uHU7B">
                      <ref role="3cqZAo" node="5m2bsnoU78k" resolve="r" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="5m2bsnoU78C" role="1Duv9x">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="5m2bsnoU78D" role="1tU5fm" />
                <node concept="3cmrfG" id="5m2bsnoU78E" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3eOVzh" id="5m2bsnoU78F" role="1Dwp0S">
                <node concept="37vLTw" id="5m2bsnoU78G" role="3uHU7w">
                  <ref role="3cqZAo" node="5m2bsnoU77Q" resolve="x" />
                </node>
                <node concept="37vLTw" id="5m2bsnoU78H" role="3uHU7B">
                  <ref role="3cqZAo" node="5m2bsnoU78C" resolve="i" />
                </node>
              </node>
              <node concept="3uNrnE" id="5m2bsnoU78I" role="1Dwrff">
                <node concept="37vLTw" id="5m2bsnoU78J" role="2$L3a6">
                  <ref role="3cqZAo" node="5m2bsnoU78C" resolve="i" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5m2bsnoU78K" role="1Duv9x">
            <property role="TrG5h" value="tr" />
            <node concept="3uibUv" id="5m2bsnoU78L" role="1tU5fm">
              <ref role="3uigEE" node="6fYV1N6aevT" resolve="ExecutorScript.TestRecord" />
            </node>
          </node>
          <node concept="2OqwBi" id="5m2bsnoU78M" role="1DdaDG">
            <node concept="37vLTw" id="5m2bsnoU78N" role="2Oq$k0">
              <ref role="3cqZAo" node="5m2bsnoTPmt" resolve="myTestsContributor" />
            </node>
            <node concept="liA8E" id="5m2bsnoU78O" role="2OqNvi">
              <ref role="37wK5l" node="5m2bsnoGUC3" resolve="tests" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1wWWPEubpJU" role="3cqZAp">
          <node concept="37vLTw" id="1wWWPEubpJV" role="3cqZAk">
            <ref role="3cqZAo" node="1wWWPEubpII" resolve="selectors" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1wWWPEubi7Y" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3uibUv" id="5m2bsnoURtM" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
    <node concept="2tJIrI" id="766HyAgUCnV" role="jymVt" />
    <node concept="3clFb_" id="1wWWPEubrw3" role="jymVt">
      <property role="TrG5h" value="processTestClass" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="5m2bsnoVi$q" role="3clF46">
        <property role="TrG5h" value="cl" />
        <node concept="3uibUv" id="5m2bsnoVi$r" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
        </node>
      </node>
      <node concept="37vLTG" id="1wWWPEubrw4" role="3clF46">
        <property role="TrG5h" value="classString" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="1wWWPEubrw5" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="1wWWPEubrw7" role="3clF47">
        <node concept="3cpWs8" id="1wWWPEubrw8" role="3cqZAp">
          <node concept="3cpWsn" id="1wWWPEubrw9" role="3cpWs9">
            <property role="TrG5h" value="testClass" />
            <node concept="3uibUv" id="1wWWPEubrwa" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
              <node concept="3qTvmN" id="1wWWPEubrwb" role="11_B2D" />
            </node>
            <node concept="1rXfSq" id="1wWWPEubrwc" role="33vP2m">
              <ref role="37wK5l" node="5m2bsnoV9wV" resolve="getTestClass" />
              <node concept="37vLTw" id="5m2bsnoVn1n" role="37wK5m">
                <ref role="3cqZAo" node="5m2bsnoVi$q" resolve="cl" />
              </node>
              <node concept="37vLTw" id="1wWWPEubrwd" role="37wK5m">
                <ref role="3cqZAo" node="1wWWPEubrw4" resolve="classString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1wWWPEubrwp" role="3cqZAp">
          <node concept="3K4zz7" id="5m2bsnoUEcL" role="3cqZAk">
            <node concept="10Nm6u" id="5m2bsnoUFQR" role="3K4GZi" />
            <node concept="3y3z36" id="1wWWPEubrwm" role="3K4Cdx">
              <node concept="10Nm6u" id="1wWWPEubrwn" role="3uHU7w" />
              <node concept="37vLTw" id="1wWWPEubrwo" role="3uHU7B">
                <ref role="3cqZAo" node="1wWWPEubrw9" resolve="testClass" />
              </node>
            </node>
            <node concept="2YIFZM" id="1wWWPEubCGI" role="3K4E3e">
              <ref role="37wK5l" to="s3rp:~DiscoverySelectors.selectClass(java.lang.Class)" resolve="selectClass" />
              <ref role="1Pybhc" to="s3rp:~DiscoverySelectors" resolve="DiscoverySelectors" />
              <node concept="37vLTw" id="1wWWPEubDy$" role="37wK5m">
                <ref role="3cqZAo" node="1wWWPEubrw9" resolve="testClass" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1wWWPEubrwr" role="1B3o_S" />
      <node concept="3uibUv" id="1wWWPEubrws" role="3clF45">
        <ref role="3uigEE" to="n4ib:~DiscoverySelector" resolve="DiscoverySelector" />
      </node>
    </node>
    <node concept="2tJIrI" id="1wWWPEubIKq" role="jymVt" />
    <node concept="3clFb_" id="1wWWPEubEqc" role="jymVt">
      <property role="TrG5h" value="processTestMethod" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="5m2bsnoVjSh" role="3clF46">
        <property role="TrG5h" value="cl" />
        <node concept="3uibUv" id="5m2bsnoVjSi" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
        </node>
      </node>
      <node concept="37vLTG" id="1wWWPEubEqd" role="3clF46">
        <property role="TrG5h" value="methodString" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="1wWWPEubEqe" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="1wWWPEubEqg" role="3clF47">
        <node concept="3cpWs8" id="1wWWPEubEqh" role="3cqZAp">
          <node concept="3cpWsn" id="1wWWPEubEqi" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="index" />
            <node concept="10Oyi0" id="1wWWPEubEqj" role="1tU5fm" />
            <node concept="2OqwBi" id="1wWWPEubEqk" role="33vP2m">
              <node concept="37vLTw" id="1wWWPEubEql" role="2Oq$k0">
                <ref role="3cqZAo" node="1wWWPEubEqd" resolve="methodString" />
              </node>
              <node concept="liA8E" id="1wWWPEubEqm" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.lastIndexOf(int)" resolve="lastIndexOf" />
                <node concept="1Xhbcc" id="1wWWPEubEqn" role="37wK5m">
                  <property role="1XhdNS" value="." />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1wWWPEubEqo" role="3cqZAp">
          <node concept="3cpWsn" id="1wWWPEubEqp" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="testClassName" />
            <node concept="3uibUv" id="1wWWPEubEqq" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2OqwBi" id="1wWWPEubEqr" role="33vP2m">
              <node concept="37vLTw" id="1wWWPEubEqs" role="2Oq$k0">
                <ref role="3cqZAo" node="1wWWPEubEqd" resolve="methodString" />
              </node>
              <node concept="liA8E" id="1wWWPEubEqt" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                <node concept="3cmrfG" id="1wWWPEubEqu" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="1wWWPEubEqv" role="37wK5m">
                  <ref role="3cqZAo" node="1wWWPEubEqi" resolve="index" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1wWWPEubEqw" role="3cqZAp">
          <node concept="3cpWsn" id="1wWWPEubEqx" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="testMethod" />
            <node concept="3uibUv" id="1wWWPEubEqy" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2OqwBi" id="1wWWPEubEqz" role="33vP2m">
              <node concept="37vLTw" id="1wWWPEubEq$" role="2Oq$k0">
                <ref role="3cqZAo" node="1wWWPEubEqd" resolve="methodString" />
              </node>
              <node concept="liA8E" id="1wWWPEubEq_" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                <node concept="3cpWs3" id="1wWWPEubEqA" role="37wK5m">
                  <node concept="37vLTw" id="1wWWPEubEqB" role="3uHU7B">
                    <ref role="3cqZAo" node="1wWWPEubEqi" resolve="index" />
                  </node>
                  <node concept="3cmrfG" id="1wWWPEubEqC" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1wWWPEuc1vS" role="3cqZAp">
          <node concept="3cpWsn" id="1wWWPEuc1vT" role="3cpWs9">
            <property role="TrG5h" value="testClass" />
            <node concept="3uibUv" id="1wWWPEuc1vU" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
              <node concept="3qTvmN" id="1wWWPEuc1vV" role="11_B2D" />
            </node>
            <node concept="1rXfSq" id="1wWWPEuc1vW" role="33vP2m">
              <ref role="37wK5l" node="5m2bsnoV9wV" resolve="getTestClass" />
              <node concept="37vLTw" id="5m2bsnoVlWd" role="37wK5m">
                <ref role="3cqZAo" node="5m2bsnoVjSh" resolve="cl" />
              </node>
              <node concept="37vLTw" id="1wWWPEuc1vX" role="37wK5m">
                <ref role="3cqZAo" node="1wWWPEubEqp" resolve="testClassName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1wWWPEuc1w6" role="3cqZAp">
          <node concept="3K4zz7" id="5m2bsnoUUoN" role="3cqZAk">
            <node concept="10Nm6u" id="5m2bsnoUW4r" role="3K4GZi" />
            <node concept="3y3z36" id="1wWWPEuc1w3" role="3K4Cdx">
              <node concept="10Nm6u" id="1wWWPEuc1w4" role="3uHU7w" />
              <node concept="37vLTw" id="1wWWPEuc1w5" role="3uHU7B">
                <ref role="3cqZAo" node="1wWWPEuc1vT" resolve="testClass" />
              </node>
            </node>
            <node concept="2YIFZM" id="1wWWPEucfFv" role="3K4E3e">
              <ref role="37wK5l" to="s3rp:~DiscoverySelectors.selectMethod(java.lang.Class,java.lang.String)" resolve="selectMethod" />
              <ref role="1Pybhc" to="s3rp:~DiscoverySelectors" resolve="DiscoverySelectors" />
              <node concept="37vLTw" id="1wWWPEucfFw" role="37wK5m">
                <ref role="3cqZAo" node="1wWWPEuc1vT" resolve="testClass" />
              </node>
              <node concept="37vLTw" id="1wWWPEucfFx" role="37wK5m">
                <ref role="3cqZAo" node="1wWWPEubEqx" resolve="testMethod" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1wWWPEubErj" role="1B3o_S" />
      <node concept="3uibUv" id="1wWWPEubErk" role="3clF45">
        <ref role="3uigEE" to="n4ib:~DiscoverySelector" resolve="DiscoverySelector" />
      </node>
    </node>
    <node concept="2tJIrI" id="1wWWPEubEls" role="jymVt" />
    <node concept="2tJIrI" id="1wWWPEubrsd" role="jymVt" />
    <node concept="2YIFZL" id="5m2bsnoV9wV" role="jymVt">
      <property role="TrG5h" value="getTestClass" />
      <node concept="3clFbS" id="1wWWPEubxr6" role="3clF47">
        <node concept="3cpWs8" id="1wWWPEubxr7" role="3cqZAp">
          <node concept="3cpWsn" id="1wWWPEubxr8" role="3cpWs9">
            <property role="TrG5h" value="testClass" />
            <node concept="3uibUv" id="1wWWPEubxr9" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
              <node concept="3qTvmN" id="1wWWPEubxra" role="11_B2D" />
            </node>
            <node concept="10Nm6u" id="1wWWPEubxrb" role="33vP2m" />
          </node>
        </node>
        <node concept="3J1_TO" id="1wWWPEubxrc" role="3cqZAp">
          <node concept="3clFbS" id="1wWWPEubxrd" role="1zxBo7">
            <node concept="3clFbF" id="1wWWPEubxre" role="3cqZAp">
              <node concept="37vLTI" id="1wWWPEubxrf" role="3clFbG">
                <node concept="2OqwBi" id="5m2bsnoVgvB" role="37vLTx">
                  <node concept="37vLTw" id="5m2bsnoVexF" role="2Oq$k0">
                    <ref role="3cqZAo" node="5m2bsnoVclr" resolve="cl" />
                  </node>
                  <node concept="liA8E" id="5m2bsnoVhbb" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~ClassLoader.loadClass(java.lang.String)" resolve="loadClass" />
                    <node concept="37vLTw" id="5m2bsnoVhM8" role="37wK5m">
                      <ref role="3cqZAo" node="1wWWPEubxr4" resolve="className" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1wWWPEubxri" role="37vLTJ">
                  <ref role="3cqZAo" node="1wWWPEubxr8" resolve="testClass" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="1wWWPEubxrj" role="1zxBo5">
            <node concept="XOnhg" id="1wWWPEubxrk" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="1wWWPEubxrl" role="1tU5fm">
                <node concept="3uibUv" id="1wWWPEubxrm" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~ClassNotFoundException" resolve="ClassNotFoundException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1wWWPEubxrn" role="1zc67A">
              <node concept="RRSsy" id="1wWWPEubxro" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="3cpWs3" id="1wWWPEubxrp" role="RRSoy">
                  <node concept="3cpWs3" id="1wWWPEubxrq" role="3uHU7B">
                    <node concept="37vLTw" id="1wWWPEubxrr" role="3uHU7w">
                      <ref role="3cqZAo" node="1wWWPEubxr4" resolve="className" />
                    </node>
                    <node concept="Xl_RD" id="1wWWPEubxrs" role="3uHU7B">
                      <property role="Xl_RC" value="Test class " />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="1wWWPEubxrt" role="3uHU7w">
                    <property role="Xl_RC" value=" has not been found: it will be skipped" />
                  </node>
                </node>
                <node concept="37vLTw" id="1wWWPEubxru" role="RRSow">
                  <ref role="3cqZAo" node="1wWWPEubxrk" resolve="e" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1wWWPEubxrv" role="3cqZAp">
          <node concept="37vLTw" id="1wWWPEubxrw" role="3cqZAk">
            <ref role="3cqZAo" node="1wWWPEubxr8" resolve="testClass" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5m2bsnoVclr" role="3clF46">
        <property role="TrG5h" value="cl" />
        <node concept="3uibUv" id="5m2bsnoVcls" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
        </node>
      </node>
      <node concept="37vLTG" id="1wWWPEubxr4" role="3clF46">
        <property role="TrG5h" value="className" />
        <node concept="3uibUv" id="1wWWPEubxr5" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3uibUv" id="1wWWPEubxr2" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        <node concept="3qTvmN" id="1wWWPEubxr3" role="11_B2D" />
      </node>
      <node concept="3Tm6S6" id="1wWWPEubxr1" role="1B3o_S" />
    </node>
    <node concept="3UR2Jj" id="QfsuG7fdDh" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsBGi" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBGj" role="1PaTwD">
          <property role="3oM_SC" value="No-platform" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGk" role="1PaTwD">
          <property role="3oM_SC" value="alternative" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGl" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGm" role="1PaTwD">
          <property role="3oM_SC" value="supply" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGn" role="1PaTwD">
          <property role="3oM_SC" value="JUnit5" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGo" role="1PaTwD">
          <property role="3oM_SC" value="tests," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGp" role="1PaTwD">
          <property role="3oM_SC" value="much" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGq" role="1PaTwD">
          <property role="3oM_SC" value="like" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHsBGr" role="1PaTwD">
          <node concept="1VuTSG" id="1E1X3WHsBGs" role="1Vtduc">
            <node concept="1PaTwC" id="1E1X3WHsBGv" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHsBGw" role="1PaTwD">
                <property role="3oM_SC" value="JUnit5ScriptTestContributor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGx" role="1PaTwD">
          <property role="3oM_SC" value="," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGy" role="1PaTwD">
          <property role="3oM_SC" value="just" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGz" role="1PaTwD">
          <property role="3oM_SC" value="no" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBG$" role="1PaTwD">
          <property role="3oM_SC" value="MPS" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBG_" role="1PaTwD">
          <property role="3oM_SC" value="modules" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGA" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGB" role="1PaTwD">
          <property role="3oM_SC" value="classloading" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3HP615" id="1wWWPEu9Bc8">
    <property role="TrG5h" value="JUnit5TestContributor" />
    <node concept="3clFb_" id="1wWWPEua5Su" role="jymVt">
      <property role="TrG5h" value="collectSelectors" />
      <node concept="3uibUv" id="1wWWPEua5Tr" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1wWWPEua5UH" role="11_B2D">
          <ref role="3uigEE" to="n4ib:~DiscoverySelector" resolve="DiscoverySelector" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1wWWPEua5Sx" role="1B3o_S" />
      <node concept="3clFbS" id="1wWWPEua5Sy" role="3clF47" />
      <node concept="3uibUv" id="5m2bsnoUMG8" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1wWWPEu9Bc9" role="1B3o_S" />
    <node concept="3UR2Jj" id="1G0B_lkF4B$" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsBGC" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBGD" role="1PaTwD">
          <property role="3oM_SC" value="My" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGE" role="1PaTwD">
          <property role="3oM_SC" value="plan" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGF" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGG" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGH" role="1PaTwD">
          <property role="3oM_SC" value="replace" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGI" role="1PaTwD">
          <property role="3oM_SC" value="this" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGJ" role="1PaTwD">
          <property role="3oM_SC" value="one" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGK" role="1PaTwD">
          <property role="3oM_SC" value="with" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGL" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGM" role="1PaTwD">
          <property role="3oM_SC" value="common" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGN" role="1PaTwD">
          <property role="3oM_SC" value="JUnit5TestContributor" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGO" role="1PaTwD">
          <property role="3oM_SC" value="from" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGP" role="1PaTwD">
          <property role="3oM_SC" value="[mps-testing]" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGQ" role="1PaTwD">
          <property role="3oM_SC" value="plugin," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGR" role="1PaTwD">
          <property role="3oM_SC" value="although" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBGS" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBGT" role="1PaTwD">
          <property role="3oM_SC" value="unlike" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGU" role="1PaTwD">
          <property role="3oM_SC" value="this" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGV" role="1PaTwD">
          <property role="3oM_SC" value="one," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGW" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGX" role="1PaTwD">
          <property role="3oM_SC" value="other" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGY" role="1PaTwD">
          <property role="3oM_SC" value="one" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBGZ" role="1PaTwD">
          <property role="3oM_SC" value="lives" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBH0" role="1PaTwD">
          <property role="3oM_SC" value="in" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBH1" role="1PaTwD">
          <property role="3oM_SC" value="MPS" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBH2" role="1PaTwD">
          <property role="3oM_SC" value="CL" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBH3" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBH4" role="1PaTwD">
          <property role="3oM_SC" value="I" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBH5" role="1PaTwD">
          <property role="3oM_SC" value="hope" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBH6" role="1PaTwD">
          <property role="3oM_SC" value="I" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBH7" role="1PaTwD">
          <property role="3oM_SC" value="can" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBH8" role="1PaTwD">
          <property role="3oM_SC" value="this" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBH9" role="1PaTwD">
          <property role="3oM_SC" value="working" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBHa" role="1PaTwD">
          <property role="3oM_SC" value="(no-platform" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBHb" role="1PaTwD">
          <property role="3oM_SC" value="JUnit5" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBHc" role="1PaTwD">
          <property role="3oM_SC" value="execution" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBHd" role="1PaTwD">
          <property role="3oM_SC" value="might" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBHe" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBHf" role="1PaTwD">
          <property role="3oM_SC" value="end" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBHg" role="1PaTwD">
          <property role="3oM_SC" value="up" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBHh" role="1PaTwD">
          <property role="3oM_SC" value="as" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBHi" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBHj" role="1PaTwD">
          <property role="3oM_SC" value="duplicated" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBHk" role="1PaTwD">
          <property role="3oM_SC" value="code," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBHl" role="1PaTwD">
          <property role="3oM_SC" value="after" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBHm" role="1PaTwD">
          <property role="3oM_SC" value="all)" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6maaEP0G01l">
    <property role="TrG5h" value="DefaultTestExecutionListener" />
    <node concept="312cEg" id="6maaEP0G6to" role="jymVt">
      <property role="TrG5h" value="myOutput" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6maaEP0G6tp" role="1B3o_S" />
      <node concept="3uibUv" id="6maaEP0G6tq" role="1tU5fm">
        <ref role="3uigEE" node="56tRMpP_bCe" resolve="CommandOutputStream" />
      </node>
    </node>
    <node concept="312cEg" id="2NMjZ1W$5JQ" role="jymVt">
      <property role="TrG5h" value="myFailuresCount" />
      <node concept="3Tm6S6" id="2NMjZ1W$5JR" role="1B3o_S" />
      <node concept="10Oyi0" id="2NMjZ1W$9LS" role="1tU5fm" />
      <node concept="3cmrfG" id="2NMjZ1W$apO" role="33vP2m">
        <property role="3cmrfH" value="0" />
      </node>
    </node>
    <node concept="2tJIrI" id="6maaEP0G66m" role="jymVt" />
    <node concept="3clFbW" id="6maaEP0G6k$" role="jymVt">
      <node concept="37vLTG" id="6maaEP0G6lD" role="3clF46">
        <property role="TrG5h" value="out" />
        <node concept="3uibUv" id="6maaEP0G6oi" role="1tU5fm">
          <ref role="3uigEE" node="56tRMpP_bCe" resolve="CommandOutputStream" />
        </node>
      </node>
      <node concept="3cqZAl" id="6maaEP0G6kA" role="3clF45" />
      <node concept="3Tm1VV" id="6maaEP0G6kB" role="1B3o_S" />
      <node concept="3clFbS" id="6maaEP0G6kC" role="3clF47">
        <node concept="3clFbF" id="6maaEP0G6uj" role="3cqZAp">
          <node concept="37vLTI" id="6maaEP0G6uk" role="3clFbG">
            <node concept="37vLTw" id="6maaEP0G6ul" role="37vLTx">
              <ref role="3cqZAo" node="6maaEP0G6lD" resolve="out" />
            </node>
            <node concept="2OqwBi" id="6maaEP0H1UI" role="37vLTJ">
              <node concept="Xjq3P" id="6maaEP0H1ZU" role="2Oq$k0" />
              <node concept="2OwXpG" id="6maaEP0H1UL" role="2OqNvi">
                <ref role="2Oxat5" node="6maaEP0G6to" resolve="myOutput" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6maaEP0I_Xh" role="jymVt" />
    <node concept="3clFb_" id="2NMjZ1W$mqU" role="jymVt">
      <property role="TrG5h" value="getFailuresCount" />
      <node concept="10Oyi0" id="2NMjZ1W$oFq" role="3clF45" />
      <node concept="3Tm1VV" id="2NMjZ1W$mqX" role="1B3o_S" />
      <node concept="3clFbS" id="2NMjZ1W$mqY" role="3clF47">
        <node concept="3clFbF" id="2NMjZ1W$w3w" role="3cqZAp">
          <node concept="37vLTw" id="2NMjZ1W$w3v" role="3clFbG">
            <ref role="3cqZAo" node="2NMjZ1W$5JQ" resolve="myFailuresCount" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6maaEP0G6Dj" role="jymVt" />
    <node concept="3Tm1VV" id="6maaEP0G01m" role="1B3o_S" />
    <node concept="3uibUv" id="6maaEP0G5Wt" role="EKbjA">
      <ref role="3uigEE" to="bws1:~TestExecutionListener" resolve="TestExecutionListener" />
    </node>
    <node concept="3UR2Jj" id="6maaEP0G67g" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsBHn" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBHo" role="1PaTwD">
          <property role="3oM_SC" value="Adaptation" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBHp" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHsBHq" role="1PaTwD">
          <node concept="1VuTSG" id="1E1X3WHsBHr" role="1Vtduc">
            <node concept="1PaTwC" id="1E1X3WHsBHu" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHsBHv" role="1PaTwD">
                <property role="3oM_SC" value="DefaultRunListener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBHw" role="1PaTwD">
          <property role="3oM_SC" value="class" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBHx" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBHy" role="1PaTwD">
          <property role="3oM_SC" value="JUnit5" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBHz" role="1PaTwD">
          <property role="3oM_SC" value="API." />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6maaEP0G6Hc" role="jymVt">
      <property role="TrG5h" value="executionStarted" />
      <node concept="3Tm1VV" id="6maaEP0G6He" role="1B3o_S" />
      <node concept="3cqZAl" id="6maaEP0G6Hg" role="3clF45" />
      <node concept="37vLTG" id="6maaEP0G6Hh" role="3clF46">
        <property role="TrG5h" value="testIdentifier" />
        <node concept="3uibUv" id="6maaEP0G6Hi" role="1tU5fm">
          <ref role="3uigEE" to="bws1:~TestIdentifier" resolve="TestIdentifier" />
        </node>
      </node>
      <node concept="3clFbS" id="6maaEP0G6Hj" role="3clF47">
        <node concept="3clFbJ" id="2NMjZ1Wylfu" role="3cqZAp">
          <node concept="3clFbS" id="2NMjZ1Wylfw" role="3clFbx">
            <node concept="3clFbF" id="6maaEP0G6Ym" role="3cqZAp">
              <node concept="1rXfSq" id="6maaEP0G6Yn" role="3clFbG">
                <ref role="37wK5l" node="6maaEP0G6xK" resolve="flush" />
              </node>
            </node>
            <node concept="3clFbF" id="6maaEP0G6Yo" role="3cqZAp">
              <node concept="1rXfSq" id="6maaEP0G6Yp" role="3clFbG">
                <ref role="37wK5l" node="6maaEP0G8WU" resolve="printSyncToken" />
                <node concept="10M0yZ" id="7rIOKY48ZIU" role="37wK5m">
                  <ref role="3cqZAo" to="lxc5:1zHDQsywvlq" resolve="START_TEST" />
                  <ref role="1PxDUh" to="lxc5:1zHDQsywvgL" resolve="TestEventMessage" />
                </node>
                <node concept="2YIFZM" id="6maaEP0XlF2" role="37wK5m">
                  <ref role="37wK5l" to="33ny:~Optional.of(java.lang.Object)" resolve="of" />
                  <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
                  <node concept="37vLTw" id="6maaEP0XmOV" role="37wK5m">
                    <ref role="3cqZAo" node="6maaEP0G6Hh" resolve="testIdentifier" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2NMjZ1Wz424" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="2NMjZ1WypL5" role="3clFbw">
            <node concept="37vLTw" id="2NMjZ1WymJe" role="2Oq$k0">
              <ref role="3cqZAo" node="6maaEP0G6Hh" resolve="testIdentifier" />
            </node>
            <node concept="liA8E" id="2NMjZ1WyrF6" role="2OqNvi">
              <ref role="37wK5l" to="bws1:~TestIdentifier.isTest()" resolve="isTest" />
            </node>
          </node>
          <node concept="3eNFk2" id="2NMjZ1WyTWG" role="3eNLev">
            <node concept="3fqX7Q" id="2NMjZ1WyWSM" role="3eO9$A">
              <node concept="1rXfSq" id="2NMjZ1WyYca" role="3fr31v">
                <ref role="37wK5l" node="5gsHVKBeiJM" resolve="shouldSkipContainer" />
                <node concept="37vLTw" id="2NMjZ1Wz1f7" role="37wK5m">
                  <ref role="3cqZAo" node="6maaEP0G6Hh" resolve="testIdentifier" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2NMjZ1WyTWI" role="3eOfB_">
              <node concept="3clFbF" id="2NMjZ1Wz5jR" role="3cqZAp">
                <node concept="1rXfSq" id="2NMjZ1Wz5jS" role="3clFbG">
                  <ref role="37wK5l" node="6maaEP0G6xK" resolve="flush" />
                </node>
              </node>
              <node concept="3clFbF" id="2NMjZ1Wz5jT" role="3cqZAp">
                <node concept="1rXfSq" id="2NMjZ1Wz5jU" role="3clFbG">
                  <ref role="37wK5l" node="6maaEP0G8WU" resolve="printSyncToken" />
                  <node concept="10M0yZ" id="7rIOKY48ZIO" role="37wK5m">
                    <ref role="3cqZAo" to="lxc5:2Zbjobgnloc" resolve="START_TESTRUN" />
                    <ref role="1PxDUh" to="lxc5:1zHDQsywvgL" resolve="TestEventMessage" />
                  </node>
                  <node concept="2YIFZM" id="2NMjZ1Wz5jW" role="37wK5m">
                    <ref role="37wK5l" to="33ny:~Optional.of(java.lang.Object)" resolve="of" />
                    <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
                    <node concept="37vLTw" id="2NMjZ1Wz5jX" role="37wK5m">
                      <ref role="3cqZAo" node="6maaEP0G6Hh" resolve="testIdentifier" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6maaEP0G6Hk" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6maaEP0I5Td" role="jymVt" />
    <node concept="3clFb_" id="6maaEP0IRlt" role="jymVt">
      <property role="TrG5h" value="executionSkipped" />
      <node concept="3Tm1VV" id="6maaEP0IRlv" role="1B3o_S" />
      <node concept="3cqZAl" id="6maaEP0IRlx" role="3clF45" />
      <node concept="37vLTG" id="6maaEP0IRly" role="3clF46">
        <property role="TrG5h" value="testIdentifier" />
        <node concept="3uibUv" id="6maaEP0IRlz" role="1tU5fm">
          <ref role="3uigEE" to="bws1:~TestIdentifier" resolve="TestIdentifier" />
        </node>
      </node>
      <node concept="37vLTG" id="6maaEP0IRl$" role="3clF46">
        <property role="TrG5h" value="reason" />
        <node concept="3uibUv" id="6maaEP0IRl_" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="6maaEP0IRlA" role="3clF47">
        <node concept="3clFbJ" id="2NMjZ1Wzb8y" role="3cqZAp">
          <node concept="3clFbS" id="2NMjZ1Wzb8$" role="3clFbx">
            <node concept="3clFbF" id="6maaEP0IUCI" role="3cqZAp">
              <node concept="1rXfSq" id="6maaEP0IUCJ" role="3clFbG">
                <ref role="37wK5l" node="6maaEP0G8WU" resolve="printSyncToken" />
                <node concept="10M0yZ" id="7rIOKY48ZJ5" role="37wK5m">
                  <ref role="3cqZAo" to="lxc5:5d37arGBotJ" resolve="IGNORE_FAILURE_TEST_PREFIX" />
                  <ref role="1PxDUh" to="lxc5:1zHDQsywvgL" resolve="TestEventMessage" />
                </node>
                <node concept="2YIFZM" id="6maaEP0L6y4" role="37wK5m">
                  <ref role="37wK5l" to="33ny:~Optional.of(java.lang.Object)" resolve="of" />
                  <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
                  <node concept="37vLTw" id="6maaEP0L7zB" role="37wK5m">
                    <ref role="3cqZAo" node="6maaEP0IRly" resolve="testIdentifier" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2NMjZ1WzdS9" role="3clFbw">
            <node concept="37vLTw" id="2NMjZ1Wzcun" role="2Oq$k0">
              <ref role="3cqZAo" node="6maaEP0IRly" resolve="testIdentifier" />
            </node>
            <node concept="liA8E" id="2NMjZ1WzgS3" role="2OqNvi">
              <ref role="37wK5l" to="bws1:~TestIdentifier.isTest()" resolve="isTest" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6maaEP0IRlB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6maaEP0ISYi" role="jymVt" />
    <node concept="3clFb_" id="6maaEP0I76B" role="jymVt">
      <property role="TrG5h" value="executionFinished" />
      <node concept="3Tm1VV" id="6maaEP0I76D" role="1B3o_S" />
      <node concept="3cqZAl" id="6maaEP0I76F" role="3clF45" />
      <node concept="37vLTG" id="6maaEP0I76G" role="3clF46">
        <property role="TrG5h" value="testIdentifier" />
        <node concept="3uibUv" id="6maaEP0I76H" role="1tU5fm">
          <ref role="3uigEE" to="bws1:~TestIdentifier" resolve="TestIdentifier" />
        </node>
      </node>
      <node concept="37vLTG" id="6maaEP0I76I" role="3clF46">
        <property role="TrG5h" value="testExecutionResult" />
        <node concept="3uibUv" id="6maaEP0I76J" role="1tU5fm">
          <ref role="3uigEE" to="n4ib:~TestExecutionResult" resolve="TestExecutionResult" />
        </node>
      </node>
      <node concept="3clFbS" id="6maaEP0I76K" role="3clF47">
        <node concept="3clFbJ" id="2NMjZ1Wxxch" role="3cqZAp">
          <node concept="3clFbS" id="2NMjZ1Wxxcj" role="3clFbx">
            <node concept="3KaCP$" id="6maaEP0MYDy" role="3cqZAp">
              <node concept="2OqwBi" id="6maaEP0MLUt" role="3KbGdf">
                <node concept="37vLTw" id="6maaEP0MKPu" role="2Oq$k0">
                  <ref role="3cqZAo" node="6maaEP0I76I" resolve="testExecutionResult" />
                </node>
                <node concept="liA8E" id="6maaEP0MQx5" role="2OqNvi">
                  <ref role="37wK5l" to="n4ib:~TestExecutionResult.getStatus()" resolve="getStatus" />
                </node>
              </node>
              <node concept="3KbdKl" id="6maaEP0N0Hw" role="3KbHQx">
                <node concept="Rm8GO" id="6maaEP0N89_" role="3Kbmr1">
                  <ref role="Rm8GQ" to="n4ib:~TestExecutionResult$Status.ABORTED" resolve="ABORTED" />
                  <ref role="1Px2BO" to="n4ib:~TestExecutionResult$Status" resolve="TestExecutionResult.Status" />
                </node>
                <node concept="3clFbS" id="6maaEP0Nbat" role="3Kbo56">
                  <node concept="3SKdUt" id="6maaEP0NXX_" role="3cqZAp">
                    <node concept="1PaTwC" id="6maaEP0NXXA" role="1aUNEU">
                      <node concept="3oM_SD" id="6maaEP0O0yh" role="1PaTwD">
                        <property role="3oM_SC" value="fall" />
                      </node>
                      <node concept="3oM_SD" id="6maaEP0O0z9" role="1PaTwD">
                        <property role="3oM_SC" value="through" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="6maaEP0ObTv" role="3cqZAp" />
                </node>
              </node>
              <node concept="3KbdKl" id="6maaEP0Ncar" role="3KbHQx">
                <node concept="Rm8GO" id="6maaEP0NdYd" role="3Kbmr1">
                  <ref role="Rm8GQ" to="n4ib:~TestExecutionResult$Status.FAILED" resolve="FAILED" />
                  <ref role="1Px2BO" to="n4ib:~TestExecutionResult$Status" resolve="TestExecutionResult.Status" />
                </node>
                <node concept="3clFbS" id="6maaEP0Ncat" role="3Kbo56">
                  <node concept="3clFbF" id="6maaEP0Nh2l" role="3cqZAp">
                    <node concept="1rXfSq" id="6maaEP0Nh2m" role="3clFbG">
                      <ref role="37wK5l" node="6maaEP0G8WU" resolve="printSyncToken" />
                      <node concept="10M0yZ" id="7rIOKY48ZJ0" role="37wK5m">
                        <ref role="3cqZAo" to="lxc5:1zHDQsywvly" resolve="FAILURE_TEST_BEGIN" />
                        <ref role="1PxDUh" to="lxc5:1zHDQsywvgL" resolve="TestEventMessage" />
                      </node>
                      <node concept="2YIFZM" id="6maaEP0NUr6" role="37wK5m">
                        <ref role="37wK5l" to="33ny:~Optional.of(java.lang.Object)" resolve="of" />
                        <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
                        <node concept="37vLTw" id="6maaEP0NWNv" role="37wK5m">
                          <ref role="3cqZAo" node="6maaEP0I76G" resolve="testIdentifier" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6maaEP0Nh2u" role="3cqZAp">
                    <node concept="2OqwBi" id="6maaEP0NpwW" role="3clFbG">
                      <node concept="2OqwBi" id="6maaEP0Nn4T" role="2Oq$k0">
                        <node concept="37vLTw" id="6maaEP0Nh2x" role="2Oq$k0">
                          <ref role="3cqZAo" node="6maaEP0I76I" resolve="testExecutionResult" />
                        </node>
                        <node concept="liA8E" id="6maaEP0NomY" role="2OqNvi">
                          <ref role="37wK5l" to="n4ib:~TestExecutionResult.getThrowable()" resolve="getThrowable" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6maaEP0NrNI" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Optional.ifPresent(java.util.function.Consumer)" resolve="ifPresent" />
                        <node concept="1bVj0M" id="6maaEP0NupT" role="37wK5m">
                          <node concept="3clFbS" id="6maaEP0NupU" role="1bW5cS">
                            <node concept="3clFbF" id="6maaEP0NCah" role="3cqZAp">
                              <node concept="2OqwBi" id="6maaEP0NCKD" role="3clFbG">
                                <node concept="37vLTw" id="6maaEP0NCag" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6maaEP0NwWr" resolve="ex" />
                                </node>
                                <node concept="liA8E" id="6maaEP0NEQz" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace(java.io.PrintStream)" resolve="printStackTrace" />
                                  <node concept="2ShNRf" id="4F7vylNqYFc" role="37wK5m">
                                    <node concept="1pGfFk" id="4F7vylNr1LZ" role="2ShVmc">
                                      <property role="373rjd" value="true" />
                                      <ref role="37wK5l" to="guwi:~PrintStream.&lt;init&gt;(java.io.OutputStream)" resolve="PrintStream" />
                                      <node concept="37vLTw" id="4F7vylNr3sH" role="37wK5m">
                                        <ref role="3cqZAo" node="6maaEP0G6to" resolve="myOutput" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="6maaEP0NwWr" role="1bW2Oz">
                            <property role="TrG5h" value="ex" />
                            <node concept="2jxLKc" id="6maaEP0NwWs" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2NMjZ1W$dBv" role="3cqZAp">
                    <node concept="3uNrnE" id="2NMjZ1W$g$s" role="3clFbG">
                      <node concept="37vLTw" id="2NMjZ1W$g$u" role="2$L3a6">
                        <ref role="3cqZAo" node="2NMjZ1W$5JQ" resolve="myFailuresCount" />
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="2NMjZ1WyEV8" role="3cqZAp">
                    <node concept="1PaTwC" id="2NMjZ1WyEV9" role="1aUNEU">
                      <node concept="3oM_SD" id="2NMjZ1WyGr2" role="1PaTwD">
                        <property role="3oM_SC" value="fall" />
                      </node>
                      <node concept="3oM_SD" id="2NMjZ1WyGto" role="1PaTwD">
                        <property role="3oM_SC" value="through" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="6maaEP0Ncau" role="3cqZAp" />
                </node>
              </node>
              <node concept="3KbdKl" id="6maaEP0NeYi" role="3KbHQx">
                <node concept="Rm8GO" id="6maaEP0NfZR" role="3Kbmr1">
                  <ref role="Rm8GQ" to="n4ib:~TestExecutionResult$Status.SUCCESSFUL" resolve="SUCCESSFUL" />
                  <ref role="1Px2BO" to="n4ib:~TestExecutionResult$Status" resolve="TestExecutionResult.Status" />
                </node>
                <node concept="3clFbS" id="6maaEP0NeYk" role="3Kbo56">
                  <node concept="3clFbF" id="6maaEP0I9j4" role="3cqZAp">
                    <node concept="1rXfSq" id="6maaEP0I9j5" role="3clFbG">
                      <ref role="37wK5l" node="6maaEP0G6xK" resolve="flush" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="6maaEP0I9jc" role="3cqZAp">
                    <node concept="1rXfSq" id="6maaEP0I9jd" role="3clFbG">
                      <ref role="37wK5l" node="6maaEP0G8WU" resolve="printSyncToken" />
                      <node concept="10M0yZ" id="7rIOKY48ZIX" role="37wK5m">
                        <ref role="3cqZAo" to="lxc5:1zHDQsywvlu" resolve="FINISH_TEST" />
                        <ref role="1PxDUh" to="lxc5:1zHDQsywvgL" resolve="TestEventMessage" />
                      </node>
                      <node concept="2YIFZM" id="6maaEP0O8dc" role="37wK5m">
                        <ref role="37wK5l" to="33ny:~Optional.of(java.lang.Object)" resolve="of" />
                        <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
                        <node concept="37vLTw" id="6maaEP0O9qh" role="37wK5m">
                          <ref role="3cqZAo" node="6maaEP0I76G" resolve="testIdentifier" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6maaEP0I9jj" role="3cqZAp">
                    <node concept="1rXfSq" id="6maaEP0I9jk" role="3clFbG">
                      <ref role="37wK5l" node="6maaEP0G6xK" resolve="flush" />
                    </node>
                  </node>
                  <node concept="3zACq4" id="6maaEP0O3nu" role="3cqZAp" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2NMjZ1Wxxci" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="2NMjZ1Wx_l6" role="3clFbw">
            <node concept="37vLTw" id="2NMjZ1WxzZY" role="2Oq$k0">
              <ref role="3cqZAo" node="6maaEP0I76G" resolve="testIdentifier" />
            </node>
            <node concept="liA8E" id="2NMjZ1WxATO" role="2OqNvi">
              <ref role="37wK5l" to="bws1:~TestIdentifier.isTest()" resolve="isTest" />
            </node>
          </node>
          <node concept="3eNFk2" id="2NMjZ1WxNqw" role="3eNLev">
            <node concept="3clFbS" id="2NMjZ1WxNqx" role="3eOfB_">
              <node concept="3clFbF" id="2NMjZ1WzsCD" role="3cqZAp">
                <node concept="1rXfSq" id="2NMjZ1WzsCE" role="3clFbG">
                  <ref role="37wK5l" node="6maaEP0G6xK" resolve="flush" />
                </node>
              </node>
              <node concept="3clFbF" id="2NMjZ1WzsCF" role="3cqZAp">
                <node concept="1rXfSq" id="2NMjZ1WzsCG" role="3clFbG">
                  <ref role="37wK5l" node="6maaEP0G8WU" resolve="printSyncToken" />
                  <node concept="10M0yZ" id="7rIOKY48ZIR" role="37wK5m">
                    <ref role="3cqZAo" to="lxc5:2Zbjobgnlt2" resolve="FINISH_TESTRUN" />
                    <ref role="1PxDUh" to="lxc5:1zHDQsywvgL" resolve="TestEventMessage" />
                  </node>
                  <node concept="2YIFZM" id="2NMjZ1WzsCI" role="37wK5m">
                    <ref role="37wK5l" to="33ny:~Optional.of(java.lang.Object)" resolve="of" />
                    <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
                    <node concept="37vLTw" id="2NMjZ1WzsCJ" role="37wK5m">
                      <ref role="3cqZAo" node="6maaEP0I76G" resolve="testIdentifier" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2NMjZ1WzsCN" role="3cqZAp">
                <node concept="1rXfSq" id="2NMjZ1WzsCO" role="3clFbG">
                  <ref role="37wK5l" node="6maaEP0G6xK" resolve="flush" />
                </node>
              </node>
              <node concept="3clFbH" id="2NMjZ1WxWLQ" role="3cqZAp" />
            </node>
            <node concept="3fqX7Q" id="2NMjZ1WxQfo" role="3eO9$A">
              <node concept="1rXfSq" id="2NMjZ1WxQhk" role="3fr31v">
                <ref role="37wK5l" node="5gsHVKBeiJM" resolve="shouldSkipContainer" />
                <node concept="37vLTw" id="2NMjZ1WxTRw" role="37wK5m">
                  <ref role="3cqZAo" node="6maaEP0I76G" resolve="testIdentifier" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6maaEP0I76L" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6maaEP0Gdxy" role="jymVt" />
    <node concept="3clFb_" id="6maaEP0G6xK" role="jymVt">
      <property role="TrG5h" value="flush" />
      <node concept="3Tmbuc" id="1W7Tdy_U80W" role="1B3o_S" />
      <node concept="3cqZAl" id="6maaEP0G6xM" role="3clF45" />
      <node concept="3clFbS" id="6maaEP0G6xN" role="3clF47">
        <node concept="3clFbF" id="4F7vylNqvd9" role="3cqZAp">
          <node concept="2OqwBi" id="4F7vylNqwfg" role="3clFbG">
            <node concept="37vLTw" id="4F7vylNqvd7" role="2Oq$k0">
              <ref role="3cqZAo" node="6maaEP0G6to" resolve="myOutput" />
            </node>
            <node concept="liA8E" id="4F7vylNqzOx" role="2OqNvi">
              <ref role="37wK5l" node="56tRMpP_bEL" resolve="flushSafe" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6maaEP0G5XT" role="jymVt" />
    <node concept="3clFb_" id="6maaEP0G8WU" role="jymVt">
      <property role="TrG5h" value="printSyncToken" />
      <node concept="3cqZAl" id="6maaEP0G8WV" role="3clF45" />
      <node concept="3Tm6S6" id="6maaEP0G8WW" role="1B3o_S" />
      <node concept="3clFbS" id="6maaEP0G8WX" role="3clF47">
        <node concept="3SKdUt" id="6maaEP0HXmt" role="3cqZAp">
          <node concept="1PaTwC" id="6maaEP0HYtN" role="1aUNEU">
            <node concept="3oM_SD" id="6maaEP0HYtO" role="1PaTwD">
              <property role="3oM_SC" value="simply" />
            </node>
            <node concept="3oM_SD" id="6maaEP0HYX8" role="1PaTwD">
              <property role="3oM_SC" value="mimic" />
            </node>
            <node concept="3oM_SD" id="6maaEP0HYXA" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6maaEP0HZ0M" role="1PaTwD">
              <property role="3oM_SC" value="standard" />
            </node>
            <node concept="3oM_SD" id="6maaEP0HZ42" role="1PaTwD">
              <property role="3oM_SC" value="structure" />
            </node>
            <node concept="3oM_SD" id="6maaEP0HZ6B" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="6maaEP0HZ8C" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="6maaEP0HZah" role="1PaTwD">
              <property role="3oM_SC" value="class/test" />
            </node>
            <node concept="3oM_SD" id="6maaEP0HZ91" role="1PaTwD">
              <property role="3oM_SC" value="methods" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6maaEP0G8WY" role="3cqZAp">
          <node concept="3cpWsn" id="6maaEP0G8WZ" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="6maaEP0G8X0" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="6maaEP0G8X1" role="33vP2m">
              <node concept="1pGfFk" id="6maaEP0G8X2" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6maaEP0G8X3" role="3cqZAp">
          <node concept="2OqwBi" id="6maaEP0G8X4" role="3clFbG">
            <node concept="37vLTw" id="6maaEP0G8X5" role="2Oq$k0">
              <ref role="3cqZAo" node="6maaEP0G8WZ" resolve="builder" />
            </node>
            <node concept="liA8E" id="6maaEP0G8X6" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="37vLTw" id="6maaEP0G8X7" role="37wK5m">
                <ref role="3cqZAo" node="6maaEP0G8Yi" resolve="tokenPrefix" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6maaEP0JsSy" role="3cqZAp">
          <node concept="2OqwBi" id="6maaEP0Ju9Q" role="3clFbG">
            <node concept="2OqwBi" id="6maaEP0VKsZ" role="2Oq$k0">
              <node concept="37vLTw" id="6maaEP0JsSw" role="2Oq$k0">
                <ref role="3cqZAo" node="6maaEP0G8Yl" resolve="identifier" />
              </node>
              <node concept="liA8E" id="6maaEP0VLQ7" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Optional.flatMap(java.util.function.Function)" resolve="flatMap" />
                <node concept="37Ijox" id="6maaEP0VVbI" role="37wK5m">
                  <ref role="37Ijqf" to="bws1:~TestIdentifier.getSource()" resolve="getSource" />
                  <node concept="2FaPjH" id="6maaEP0VVbK" role="wWaWy">
                    <node concept="3uibUv" id="6maaEP0VVbL" role="2FaQuo">
                      <ref role="3uigEE" to="bws1:~TestIdentifier" resolve="TestIdentifier" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6maaEP0JvBf" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Optional.ifPresentOrElse(java.util.function.Consumer,java.lang.Runnable)" resolve="ifPresentOrElse" />
              <node concept="1bVj0M" id="6maaEP0Jwr1" role="37wK5m">
                <node concept="3clFbS" id="6maaEP0Jwr2" role="1bW5cS">
                  <node concept="3clFbJ" id="6maaEP0Twh5" role="3cqZAp">
                    <node concept="3clFbS" id="6maaEP0Twh7" role="3clFbx">
                      <node concept="3clFbF" id="6maaEP0UaQx" role="3cqZAp">
                        <node concept="2OqwBi" id="6maaEP0UaQy" role="3clFbG">
                          <node concept="37vLTw" id="6maaEP0UaQz" role="2Oq$k0">
                            <ref role="3cqZAo" node="6maaEP0G8WZ" resolve="builder" />
                          </node>
                          <node concept="liA8E" id="6maaEP0UaQ$" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                            <node concept="2OqwBi" id="6maaEP0Wh9d" role="37wK5m">
                              <node concept="1eOMI4" id="6maaEP0Wh9e" role="2Oq$k0">
                                <node concept="10QFUN" id="6maaEP0Wh9f" role="1eOMHV">
                                  <node concept="3uibUv" id="6maaEP0Wh9g" role="10QFUM">
                                    <ref role="3uigEE" to="9pnt:~ClassSource" resolve="ClassSource" />
                                  </node>
                                  <node concept="37vLTw" id="6maaEP0Wh9h" role="10QFUP">
                                    <ref role="3cqZAo" node="6maaEP0JzpD" resolve="src" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="6maaEP0Wh9i" role="2OqNvi">
                                <ref role="37wK5l" to="9pnt:~ClassSource.getClassName()" resolve="getClassName" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="6maaEP0TPVs" role="3cqZAp" />
                    </node>
                    <node concept="2ZW3vV" id="6maaEP0TzhZ" role="3clFbw">
                      <node concept="3uibUv" id="6maaEP0T$zc" role="2ZW6by">
                        <ref role="3uigEE" to="9pnt:~ClassSource" resolve="ClassSource" />
                      </node>
                      <node concept="37vLTw" id="6maaEP0TxEr" role="2ZW6bz">
                        <ref role="3cqZAo" node="6maaEP0JzpD" resolve="src" />
                      </node>
                    </node>
                    <node concept="3eNFk2" id="6maaEP0TRbS" role="3eNLev">
                      <node concept="3clFbS" id="6maaEP0TRbT" role="3eOfB_">
                        <node concept="3clFbF" id="6maaEP0UqMi" role="3cqZAp">
                          <node concept="2OqwBi" id="6maaEP0UWbl" role="3clFbG">
                            <node concept="2OqwBi" id="6maaEP0URi2" role="2Oq$k0">
                              <node concept="2OqwBi" id="6maaEP0UqMj" role="2Oq$k0">
                                <node concept="37vLTw" id="6maaEP0UqMk" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6maaEP0G8WZ" resolve="builder" />
                                </node>
                                <node concept="liA8E" id="6maaEP0UqMl" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                  <node concept="2OqwBi" id="6maaEP0WrVf" role="37wK5m">
                                    <node concept="1eOMI4" id="6maaEP0WrVg" role="2Oq$k0">
                                      <node concept="10QFUN" id="6maaEP0WrVh" role="1eOMHV">
                                        <node concept="3uibUv" id="6maaEP0WrVi" role="10QFUM">
                                          <ref role="3uigEE" to="9pnt:~MethodSource" resolve="MethodSource" />
                                        </node>
                                        <node concept="37vLTw" id="6maaEP0WrVj" role="10QFUP">
                                          <ref role="3cqZAo" node="6maaEP0JzpD" resolve="src" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="6maaEP0WrVk" role="2OqNvi">
                                      <ref role="37wK5l" to="9pnt:~MethodSource.getClassName()" resolve="getClassName" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="6maaEP0UwAZ" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                <node concept="Xl_RD" id="6maaEP0UwB0" role="37wK5m">
                                  <property role="Xl_RC" value=":" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="6maaEP0UBFr" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                              <node concept="2OqwBi" id="6maaEP0WqBF" role="37wK5m">
                                <node concept="1eOMI4" id="6maaEP0WqBG" role="2Oq$k0">
                                  <node concept="10QFUN" id="6maaEP0WqBH" role="1eOMHV">
                                    <node concept="3uibUv" id="6maaEP0WqBI" role="10QFUM">
                                      <ref role="3uigEE" to="9pnt:~MethodSource" resolve="MethodSource" />
                                    </node>
                                    <node concept="37vLTw" id="6maaEP0WqBJ" role="10QFUP">
                                      <ref role="3cqZAo" node="6maaEP0JzpD" resolve="src" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="6maaEP0WqBK" role="2OqNvi">
                                  <ref role="37wK5l" to="9pnt:~MethodSource.getMethodName()" resolve="getMethodName" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="6maaEP0UnPQ" role="3cqZAp" />
                      </node>
                      <node concept="2ZW3vV" id="6maaEP0TVSn" role="3eO9$A">
                        <node concept="3uibUv" id="6maaEP0TXqm" role="2ZW6by">
                          <ref role="3uigEE" to="9pnt:~MethodSource" resolve="MethodSource" />
                        </node>
                        <node concept="37vLTw" id="6maaEP0TSu$" role="2ZW6bz">
                          <ref role="3cqZAo" node="6maaEP0JzpD" resolve="src" />
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="6maaEP0XzxE" role="9aQIa">
                      <node concept="3clFbS" id="6maaEP0XzxF" role="9aQI4">
                        <node concept="3clFbF" id="6maaEP0XAd9" role="3cqZAp">
                          <node concept="2OqwBi" id="6maaEP0XAda" role="3clFbG">
                            <node concept="37vLTw" id="6maaEP0XAdb" role="2Oq$k0">
                              <ref role="3cqZAo" node="6maaEP0G8WZ" resolve="builder" />
                            </node>
                            <node concept="liA8E" id="6maaEP0XAdc" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.Object)" resolve="append" />
                              <node concept="2OqwBi" id="6maaEP0YK1b" role="37wK5m">
                                <node concept="37vLTw" id="6maaEP0YIPj" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6maaEP0G8Yl" resolve="identifier" />
                                </node>
                                <node concept="liA8E" id="6maaEP0YRH8" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~Optional.map(java.util.function.Function)" resolve="map" />
                                  <node concept="37Ijox" id="6maaEP0YUdt" role="37wK5m">
                                    <ref role="37Ijqf" to="bws1:~TestIdentifier.getDisplayName()" resolve="getDisplayName" />
                                    <node concept="2FaPjH" id="6maaEP0YUdv" role="wWaWy">
                                      <node concept="3uibUv" id="6maaEP0YUdw" role="2FaQuo">
                                        <ref role="3uigEE" to="bws1:~TestIdentifier" resolve="TestIdentifier" />
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
                  <node concept="3clFbH" id="6maaEP0W3Cv" role="3cqZAp" />
                </node>
                <node concept="gl6BB" id="6maaEP0JzpD" role="1bW2Oz">
                  <property role="TrG5h" value="src" />
                  <node concept="2jxLKc" id="6maaEP0JzpE" role="1tU5fm" />
                </node>
              </node>
              <node concept="1bVj0M" id="6maaEP0Jy$j" role="37wK5m">
                <node concept="3clFbS" id="6maaEP0Jy$l" role="1bW5cS">
                  <node concept="3clFbH" id="6maaEP0Owe4" role="3cqZAp" />
                  <node concept="3clFbF" id="6maaEP0L04S" role="3cqZAp">
                    <node concept="2OqwBi" id="6maaEP0L04U" role="3clFbG">
                      <node concept="37vLTw" id="6maaEP0L04V" role="2Oq$k0">
                        <ref role="3cqZAo" node="6maaEP0G8WZ" resolve="builder" />
                      </node>
                      <node concept="liA8E" id="6maaEP0L04W" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                        <node concept="Xl_RD" id="6maaEP0L04X" role="37wK5m">
                          <property role="Xl_RC" value="FAKEDESCRIPTION" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="6maaEP0Ov6c" role="3cqZAp" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6maaEP0HOue" role="3cqZAp" />
        <node concept="3cpWs8" id="6maaEP0G8XD" role="3cqZAp">
          <node concept="3cpWsn" id="6maaEP0G8XE" role="3cpWs9">
            <property role="TrG5h" value="runtime" />
            <node concept="3uibUv" id="6maaEP0G8XF" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Runtime" resolve="Runtime" />
            </node>
            <node concept="2YIFZM" id="6maaEP0G8XG" role="33vP2m">
              <ref role="1Pybhc" to="wyt6:~Runtime" resolve="Runtime" />
              <ref role="37wK5l" to="wyt6:~Runtime.getRuntime()" resolve="getRuntime" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6maaEP0G8XH" role="3cqZAp">
          <node concept="2OqwBi" id="6maaEP0G8XI" role="3clFbG">
            <node concept="2OqwBi" id="6maaEP0G8XJ" role="2Oq$k0">
              <node concept="37vLTw" id="6maaEP0G8XK" role="2Oq$k0">
                <ref role="3cqZAo" node="6maaEP0G8WZ" resolve="builder" />
              </node>
              <node concept="liA8E" id="6maaEP0G8XL" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                <node concept="Xl_RD" id="6maaEP0G8XM" role="37wK5m">
                  <property role="Xl_RC" value=":memory=" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6maaEP0G8XN" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(long)" resolve="append" />
              <node concept="3cpWsd" id="6maaEP0G8XO" role="37wK5m">
                <node concept="2OqwBi" id="6maaEP0G8XP" role="3uHU7w">
                  <node concept="37vLTw" id="6maaEP0G8XQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="6maaEP0G8XE" resolve="runtime" />
                  </node>
                  <node concept="liA8E" id="6maaEP0G8XR" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Runtime.freeMemory()" resolve="freeMemory" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6maaEP0G8XS" role="3uHU7B">
                  <node concept="37vLTw" id="6maaEP0G8XT" role="2Oq$k0">
                    <ref role="3cqZAo" node="6maaEP0G8XE" resolve="runtime" />
                  </node>
                  <node concept="liA8E" id="6maaEP0G8XU" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Runtime.totalMemory()" resolve="totalMemory" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6maaEP0G8XV" role="3cqZAp">
          <node concept="2OqwBi" id="6maaEP0G8XW" role="3clFbG">
            <node concept="2OqwBi" id="6maaEP0G8XX" role="2Oq$k0">
              <node concept="37vLTw" id="6maaEP0G8XY" role="2Oq$k0">
                <ref role="3cqZAo" node="6maaEP0G8WZ" resolve="builder" />
              </node>
              <node concept="liA8E" id="6maaEP0G8XZ" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                <node concept="Xl_RD" id="6maaEP0G8Y0" role="37wK5m">
                  <property role="Xl_RC" value=":time=" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6maaEP0G8Y1" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(long)" resolve="append" />
              <node concept="2YIFZM" id="6maaEP0G8Y2" role="37wK5m">
                <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2zvrUBdN5zK" role="3cqZAp">
          <node concept="2OqwBi" id="2zvrUBdN6uB" role="3clFbG">
            <node concept="37vLTw" id="2zvrUBdN5zI" role="2Oq$k0">
              <ref role="3cqZAo" node="6maaEP0G8Yl" resolve="identifier" />
            </node>
            <node concept="liA8E" id="2zvrUBdN8s$" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Optional.ifPresent(java.util.function.Consumer)" resolve="ifPresent" />
              <node concept="1bVj0M" id="2zvrUBdN9xK" role="37wK5m">
                <node concept="gl6BB" id="2zvrUBdN9xU" role="1bW2Oz">
                  <property role="TrG5h" value="id" />
                  <node concept="2jxLKc" id="2zvrUBdN9xV" role="1tU5fm" />
                </node>
                <node concept="3clFbS" id="2zvrUBdN9xZ" role="1bW5cS">
                  <node concept="3clFbF" id="2zvrUBdM$iS" role="3cqZAp">
                    <node concept="2OqwBi" id="2zvrUBdMS5g" role="3clFbG">
                      <node concept="2OqwBi" id="2zvrUBdMAaK" role="2Oq$k0">
                        <node concept="37vLTw" id="2zvrUBdM$iQ" role="2Oq$k0">
                          <ref role="3cqZAo" node="6maaEP0G8WZ" resolve="builder" />
                        </node>
                        <node concept="liA8E" id="2zvrUBdMFwG" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                          <node concept="Xl_RD" id="2zvrUBdMGXh" role="37wK5m">
                            <property role="Xl_RC" value=":" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="2zvrUBdMXtS" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                        <node concept="2OqwBi" id="2zvrUBdN1E0" role="37wK5m">
                          <node concept="37vLTw" id="2zvrUBdMYZm" role="2Oq$k0">
                            <ref role="3cqZAo" node="2zvrUBdN9xU" resolve="id" />
                          </node>
                          <node concept="liA8E" id="2zvrUBdNkm4" role="2OqNvi">
                            <ref role="37wK5l" to="bws1:~TestIdentifier.getDisplayName()" resolve="getDisplayName" />
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
        <node concept="1HWtB8" id="6maaEP0G8Y4" role="3cqZAp">
          <node concept="37vLTw" id="6maaEP0G8Y5" role="1HWFw0">
            <ref role="3cqZAo" node="6maaEP0G6to" resolve="myOutput" />
          </node>
          <node concept="3clFbS" id="6maaEP0G8Y6" role="1HWHxc">
            <node concept="3clFbF" id="6maaEP0G8Y7" role="3cqZAp">
              <node concept="2OqwBi" id="6maaEP0G8Y8" role="3clFbG">
                <node concept="37vLTw" id="6maaEP0G8Y9" role="2Oq$k0">
                  <ref role="3cqZAo" node="6maaEP0G6to" resolve="myOutput" />
                </node>
                <node concept="liA8E" id="6maaEP0G8Ya" role="2OqNvi">
                  <ref role="37wK5l" node="56tRMpP_bEb" resolve="writeCommand" />
                  <node concept="2OqwBi" id="6maaEP0G8Yb" role="37wK5m">
                    <node concept="37vLTw" id="6maaEP0G8Yc" role="2Oq$k0">
                      <ref role="3cqZAo" node="6maaEP0G8WZ" resolve="builder" />
                    </node>
                    <node concept="liA8E" id="6maaEP0G8Yd" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6maaEP0G8Ye" role="3cqZAp">
              <node concept="2OqwBi" id="6maaEP0G8Yf" role="3clFbG">
                <node concept="37vLTw" id="6maaEP0G8Yg" role="2Oq$k0">
                  <ref role="3cqZAo" node="6maaEP0G6to" resolve="myOutput" />
                </node>
                <node concept="liA8E" id="6maaEP0G8Yh" role="2OqNvi">
                  <ref role="37wK5l" node="56tRMpP_bEL" resolve="flushSafe" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6maaEP0G8Yi" role="3clF46">
        <property role="TrG5h" value="tokenPrefix" />
        <node concept="17QB3L" id="6maaEP0G8Yj" role="1tU5fm" />
        <node concept="2AHcQZ" id="6maaEP0G8Yk" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="6maaEP0G8Yl" role="3clF46">
        <property role="TrG5h" value="identifier" />
        <node concept="3uibUv" id="6maaEP0G8Ym" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
          <node concept="3uibUv" id="6maaEP0JobL" role="11_B2D">
            <ref role="3uigEE" to="bws1:~TestIdentifier" resolve="TestIdentifier" />
          </node>
        </node>
        <node concept="2AHcQZ" id="6maaEP0Mji5" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2NMjZ1WxH5i" role="jymVt" />
    <node concept="3clFb_" id="5gsHVKBeiJM" role="jymVt">
      <property role="TrG5h" value="shouldSkipContainer" />
      <node concept="37vLTG" id="5gsHVKBeiJN" role="3clF46">
        <property role="TrG5h" value="testIdentifier" />
        <node concept="3uibUv" id="5gsHVKBeiJO" role="1tU5fm">
          <ref role="3uigEE" to="bws1:~TestIdentifier" resolve="TestIdentifier" />
        </node>
      </node>
      <node concept="3clFbS" id="5gsHVKBeiJP" role="3clF47">
        <node concept="3cpWs8" id="5gsHVKBeiJR" role="3cqZAp">
          <node concept="3cpWsn" id="5gsHVKBeiJQ" role="3cpWs9">
            <property role="TrG5h" value="id" />
            <node concept="3uibUv" id="5gsHVKBeiJS" role="1tU5fm">
              <ref role="3uigEE" to="n4ib:~UniqueId" resolve="UniqueId" />
            </node>
            <node concept="2YIFZM" id="5gsHVKBh9rn" role="33vP2m">
              <ref role="1Pybhc" to="n4ib:~UniqueId" resolve="UniqueId" />
              <ref role="37wK5l" to="n4ib:~UniqueId.parse(java.lang.String)" resolve="parse" />
              <node concept="2OqwBi" id="5gsHVKBRYfY" role="37wK5m">
                <node concept="37vLTw" id="5gsHVKBFMtz" role="2Oq$k0">
                  <ref role="3cqZAo" node="5gsHVKBeiJN" resolve="testIdentifier" />
                </node>
                <node concept="liA8E" id="5gsHVKBRYfZ" role="2OqNvi">
                  <ref role="37wK5l" to="bws1:~TestIdentifier.getUniqueId()" resolve="getUniqueId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5gsHVKBeiJW" role="3cqZAp">
          <node concept="3cpWsn" id="5gsHVKBeiJV" role="3cpWs9">
            <property role="TrG5h" value="segments" />
            <node concept="3uibUv" id="5gsHVKBeiJX" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="5gsHVKBeiJY" role="11_B2D">
                <ref role="3uigEE" to="n4ib:~UniqueId$Segment" resolve="UniqueId.Segment" />
              </node>
            </node>
            <node concept="2OqwBi" id="5gsHVKBxhfK" role="33vP2m">
              <node concept="37vLTw" id="5gsHVKBiQsO" role="2Oq$k0">
                <ref role="3cqZAo" node="5gsHVKBeiJQ" resolve="id" />
              </node>
              <node concept="liA8E" id="5gsHVKBxhfL" role="2OqNvi">
                <ref role="37wK5l" to="n4ib:~UniqueId.getSegments()" resolve="getSegments" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5gsHVKBeiK0" role="3cqZAp">
          <node concept="2OqwBi" id="5gsHVKBGTJA" role="3clFbw">
            <node concept="37vLTw" id="5gsHVKBh9t$" role="2Oq$k0">
              <ref role="3cqZAo" node="5gsHVKBeiJV" resolve="segments" />
            </node>
            <node concept="liA8E" id="5gsHVKBGTJB" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
            </node>
          </node>
          <node concept="3clFbS" id="5gsHVKBeiK4" role="3clFbx">
            <node concept="3cpWs6" id="5gsHVKBeiK2" role="3cqZAp">
              <node concept="3clFbT" id="5gsHVKBeiK3" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5gsHVKBeiK6" role="3cqZAp">
          <node concept="3cpWsn" id="5gsHVKBeiK5" role="3cpWs9">
            <property role="TrG5h" value="lastSegment" />
            <node concept="3uibUv" id="5gsHVKBeiK7" role="1tU5fm">
              <ref role="3uigEE" to="n4ib:~UniqueId$Segment" resolve="UniqueId.Segment" />
            </node>
            <node concept="2OqwBi" id="5gsHVKBFrCP" role="33vP2m">
              <node concept="37vLTw" id="5gsHVKBiQpV" role="2Oq$k0">
                <ref role="3cqZAo" node="5gsHVKBeiJV" resolve="segments" />
              </node>
              <node concept="liA8E" id="5gsHVKBFrCQ" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                <node concept="3cpWsd" id="5gsHVKBFrCR" role="37wK5m">
                  <node concept="2OqwBi" id="5gsHVKBVzez" role="3uHU7B">
                    <node concept="37vLTw" id="5gsHVKBFrCT" role="2Oq$k0">
                      <ref role="3cqZAo" node="5gsHVKBeiJV" resolve="segments" />
                    </node>
                    <node concept="liA8E" id="5gsHVKBVze$" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                    </node>
                  </node>
                  <node concept="3cmrfG" id="5gsHVKBFrCU" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5gsHVKBeiKc" role="3cqZAp">
          <node concept="2OqwBi" id="5gsHVKBUJqS" role="3cqZAk">
            <node concept="2OqwBi" id="5gsHVKB$OwV" role="2Oq$k0">
              <node concept="37vLTw" id="5gsHVKBiQnO" role="2Oq$k0">
                <ref role="3cqZAo" node="5gsHVKBeiK5" resolve="lastSegment" />
              </node>
              <node concept="liA8E" id="5gsHVKB$OwW" role="2OqNvi">
                <ref role="37wK5l" to="n4ib:~UniqueId$Segment.getType()" resolve="getType" />
              </node>
            </node>
            <node concept="liA8E" id="5gsHVKBUJqT" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="Xl_RD" id="5gsHVKBUJqU" role="37wK5m">
                <property role="Xl_RC" value="engine" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5gsHVKBeiKn" role="1B3o_S" />
      <node concept="10P_77" id="5gsHVKBeiKo" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6maaEP0G8QM" role="jymVt" />
  </node>
  <node concept="3HP615" id="QfsuG7cJQw">
    <property role="TrG5h" value="JUnit4TestContributor" />
    <node concept="3clFb_" id="QfsuG7cLIV" role="jymVt">
      <property role="TrG5h" value="gatherTests" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="QfsuG7cLIW" role="1B3o_S" />
      <node concept="3uibUv" id="QfsuG7cLIX" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
      <node concept="3clFbS" id="QfsuG7cLIY" role="3clF47" />
      <node concept="3uibUv" id="QfsuG7cLIZ" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="QfsuG7cLJ0" role="11_B2D">
          <ref role="3uigEE" to="cvlm:~Request" resolve="Request" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="QfsuG7cJQx" role="1B3o_S" />
    <node concept="3UR2Jj" id="QfsuG7cNS6" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsBH$" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBH_" role="1PaTwD">
          <property role="3oM_SC" value="Much" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBHA" role="1PaTwD">
          <property role="3oM_SC" value="like" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHsBHB" role="1PaTwD">
          <node concept="1VuXuv" id="1E1X3WHsBHC" role="1Vtduc">
            <node concept="VXe08" id="QfsuG7cP$1" role="1VuXuu">
              <ref role="VXe09" node="1wWWPEu9Bc8" resolve="JUnit5TestContributor" />
            </node>
            <node concept="1PaTwC" id="1E1X3WHsBHF" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHsBHG" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBHH" role="1PaTwD">
          <property role="3oM_SC" value="," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBHI" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBHJ" role="1PaTwD">
          <property role="3oM_SC" value="run" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBHK" role="1PaTwD">
          <property role="3oM_SC" value="JUnit4" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBHL" role="1PaTwD">
          <property role="3oM_SC" value="tests" />
        </node>
      </node>
    </node>
  </node>
</model>

