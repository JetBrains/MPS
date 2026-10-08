<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7b2ffdb7-2bfc-4488-8c0c-ee8fe93fe3c1(jetbrains.mps.build.ant)">
  <persistence version="9" />
  <languages>
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
  </languages>
  <imports>
    <import index="gola" ref="847a3235-09f9-403c-b6a9-1c294a212e92/java:org.apache.tools.ant(Ant/)" />
    <import index="rg95" ref="847a3235-09f9-403c-b6a9-1c294a212e92/java:org.apache.tools.ant.types(Ant/)" />
    <import index="67b4" ref="847a3235-09f9-403c-b6a9-1c294a212e92/java:org.apache.tools.ant.types.resources(Ant/)" />
    <import index="kpdv" ref="847a3235-09f9-403c-b6a9-1c294a212e92/java:org.apache.tools.ant.taskdefs(Ant/)" />
    <import index="qy5u" ref="847a3235-09f9-403c-b6a9-1c294a212e92/java:org.apache.tools.ant.util(Ant/)" />
    <import index="asz6" ref="r:067fd2c9-d009-4506-91db-a69992d65964(jetbrains.mps.tool.common)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="zf81" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.net(JDK/)" />
    <import index="t6h5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.reflect(JDK/)" />
    <import index="kio7" ref="r:f80180a9-2bac-487b-83fc-3ef65f97aea3(jetbrains.mps.build.ant.generation)" />
    <import index="dr5r" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.logging(JDK/)" />
    <import index="7x5y" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.charset(JDK/)" />
    <import index="eoo2" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.file(JDK/)" />
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
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
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
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1188220165133" name="jetbrains.mps.baseLanguage.structure.ArrayLiteral" flags="nn" index="2BsdOp">
        <child id="1188220173759" name="item" index="2BsfMF" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
        <child id="363746191845183793" name="loopLabel" index="3Wmhwa" />
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
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
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
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1214918975462" name="jetbrains.mps.baseLanguage.structure.PostfixDecrementExpression" flags="nn" index="3uO5VW" />
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="7024111702304501416" name="jetbrains.mps.baseLanguage.structure.OrAssignmentExpression" flags="nn" index="3vZ8r8" />
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
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="5351203823916832286" name="jetbrains.mps.baseLanguage.structure.ResourceVariable" flags="ng" index="3J1hQo" />
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367509" name="finallyClause" index="1zxBo6" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
        <child id="5351203823916750334" name="resource" index="3J1_TS" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt">
        <child id="9056323058805226429" name="loopLabelReference" index="2mVjTF" />
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
      <concept id="363746191845183785" name="jetbrains.mps.baseLanguage.structure.LoopLabelReference" flags="ng" index="3Wmhwi">
        <reference id="363746191845183786" name="loopLabel" index="3Wmhwh" />
      </concept>
      <concept id="363746191845175146" name="jetbrains.mps.baseLanguage.structure.LoopLabel" flags="ng" index="3Wmmph" />
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
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
      <concept id="5085607816306633585" name="jetbrains.mps.baseLanguage.javadoc.structure.CodeInlineDocTagTE" flags="ng" index="1VuTSG" />
      <concept id="5085607816306647746" name="jetbrains.mps.baseLanguage.javadoc.structure.LinkInlineDocTagTE" flags="ng" index="1VuXuv">
        <child id="5085607816306647747" name="reference" index="1VuXuu" />
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
      <concept id="1436320362825107485" name="jetbrains.mps.lang.text.structure.UniversalHtmlTag" flags="ng" index="22dLRv">
        <property id="1436320362825107486" name="name" index="22dLRs" />
        <child id="1436320362825109043" name="body" index="22dLJL" />
      </concept>
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="3ufQioQQsm3">
    <property role="TrG5h" value="Arg" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="3ufQioQQsm4" role="1B3o_S" />
    <node concept="3uibUv" id="3ufQioQQsm5" role="1zkMxy">
      <ref role="3uigEE" to="gola:~ProjectComponent" resolve="ProjectComponent" />
    </node>
    <node concept="312cEg" id="3ufQioQQsm6" role="jymVt">
      <property role="TrG5h" value="myValue" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="17QB3L" id="2uUiGxAaMGI" role="1tU5fm" />
      <node concept="3Tm6S6" id="3ufQioQQsm8" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="1hBlbKBNfHf" role="jymVt">
      <property role="TrG5h" value="myOverridePattern" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1hBlbKBNfDq" role="1B3o_S" />
      <node concept="17QB3L" id="1hBlbKBNfGV" role="1tU5fm" />
    </node>
    <node concept="3clFbW" id="3ufQioQQsm9" role="jymVt">
      <node concept="3Tm1VV" id="3ufQioQQsma" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQsmb" role="3clF45" />
      <node concept="3clFbS" id="3ufQioQQsmc" role="3clF47">
        <node concept="3clFbF" id="1hBlbKBNgW_" role="3cqZAp">
          <node concept="37vLTI" id="1hBlbKBNgYA" role="3clFbG">
            <node concept="10Nm6u" id="1hBlbKBNh1Q" role="37vLTx" />
            <node concept="37vLTw" id="1hBlbKBNgW$" role="37vLTJ">
              <ref role="3cqZAo" node="1hBlbKBNfHf" resolve="myOverridePattern" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4s_xB2uaruC" role="jymVt" />
    <node concept="3clFbW" id="4s_xB2uakWR" role="jymVt">
      <node concept="3Tm1VV" id="4s_xB2uakWS" role="1B3o_S" />
      <node concept="3cqZAl" id="4s_xB2uakWT" role="3clF45" />
      <node concept="3clFbS" id="4s_xB2uakWU" role="3clF47">
        <node concept="1VxSAg" id="1hBlbKBNfTr" role="3cqZAp">
          <ref role="37wK5l" node="1hBlbKBNftw" resolve="Arg" />
          <node concept="37vLTw" id="1hBlbKBNfW$" role="37wK5m">
            <ref role="3cqZAo" node="4s_xB2uapzu" resolve="value" />
          </node>
          <node concept="10Nm6u" id="1hBlbKBNfZz" role="37wK5m" />
        </node>
      </node>
      <node concept="37vLTG" id="4s_xB2uapzu" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="4s_xB2uapzt" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1hBlbKBNfx4" role="jymVt" />
    <node concept="3clFbW" id="1hBlbKBNftw" role="jymVt">
      <node concept="3Tm1VV" id="1hBlbKBNftx" role="1B3o_S" />
      <node concept="3cqZAl" id="1hBlbKBNfty" role="3clF45" />
      <node concept="3clFbS" id="1hBlbKBNftz" role="3clF47">
        <node concept="3clFbF" id="1hBlbKBNft$" role="3cqZAp">
          <node concept="37vLTI" id="1hBlbKBNft_" role="3clFbG">
            <node concept="37vLTw" id="1hBlbKBNftA" role="37vLTx">
              <ref role="3cqZAo" node="1hBlbKBNftC" resolve="value" />
            </node>
            <node concept="37vLTw" id="1hBlbKBNftB" role="37vLTJ">
              <ref role="3cqZAo" node="3ufQioQQsm6" resolve="myValue" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1hBlbKBNg9N" role="3cqZAp">
          <node concept="37vLTI" id="1hBlbKBNgID" role="3clFbG">
            <node concept="37vLTw" id="1hBlbKBNgSM" role="37vLTx">
              <ref role="3cqZAo" node="1hBlbKBNfzA" resolve="pattern" />
            </node>
            <node concept="37vLTw" id="1hBlbKBNg9L" role="37vLTJ">
              <ref role="3cqZAo" node="1hBlbKBNfHf" resolve="myOverridePattern" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1hBlbKBNftC" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="1hBlbKBNftD" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1hBlbKBNfzA" role="3clF46">
        <property role="TrG5h" value="pattern" />
        <node concept="17QB3L" id="1hBlbKBNf$S" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4s_xB2uakTB" role="jymVt" />
    <node concept="3clFb_" id="3ufQioQQsmd" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getValue" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3ufQioQQsme" role="1B3o_S" />
      <node concept="17QB3L" id="2uUiGxAaMHz" role="3clF45" />
      <node concept="3clFbS" id="3ufQioQQsmg" role="3clF47">
        <node concept="3cpWs6" id="3ufQioQQsmh" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeurqp" role="3cqZAk">
            <ref role="3cqZAo" node="3ufQioQQsm6" resolve="myValue" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3ufQioQQsmj" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setValue" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3ufQioQQsmk" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQsml" role="3clF45" />
      <node concept="37vLTG" id="3ufQioQQsmm" role="3clF46">
        <property role="TrG5h" value="value" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="2uUiGxAaMGc" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3ufQioQQsmo" role="3clF47">
        <node concept="3clFbF" id="3ufQioQQsmp" role="3cqZAp">
          <node concept="37vLTI" id="3ufQioQQsmq" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuoOw" role="37vLTJ">
              <ref role="3cqZAo" node="3ufQioQQsm6" resolve="myValue" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm819" role="37vLTx">
              <ref role="3cqZAo" node="3ufQioQQsmm" resolve="value" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1hBlbKBNh3h" role="jymVt" />
    <node concept="3clFb_" id="1hBlbKBNhbr" role="jymVt">
      <property role="TrG5h" value="overriddenBy" />
      <node concept="3clFbS" id="1hBlbKBNhbu" role="3clF47">
        <node concept="3SKdUt" id="1hBlbKC4kUj" role="3cqZAp">
          <node concept="1PaTwC" id="1hBlbKC4kUk" role="1aUNEU">
            <node concept="3oM_SD" id="1hBlbKC4kUl" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="1hBlbKC4kZL" role="1PaTwD">
              <property role="3oM_SC" value="another" />
            </node>
            <node concept="3oM_SD" id="1hBlbKC4l03" role="1PaTwD">
              <property role="3oM_SC" value="specifies" />
            </node>
            <node concept="3oM_SD" id="1hBlbKC4l0O" role="1PaTwD">
              <property role="3oM_SC" value="anything" />
            </node>
            <node concept="3oM_SD" id="1hBlbKC4l1l" role="1PaTwD">
              <property role="3oM_SC" value="matching" />
            </node>
            <node concept="3oM_SD" id="1hBlbKC4l2A" role="1PaTwD">
              <property role="3oM_SC" value="our" />
            </node>
            <node concept="3oM_SD" id="1hBlbKC4l37" role="1PaTwD">
              <property role="3oM_SC" value="'pattern'," />
            </node>
            <node concept="3oM_SD" id="1hBlbKC4l3C" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="1hBlbKC4l49" role="1PaTwD">
              <property role="3oM_SC" value="consider" />
            </node>
            <node concept="3oM_SD" id="1hBlbKC4l4E" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="1hBlbKC4l4F" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="1hBlbKC4l4W" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="1hBlbKC4l5d" role="1PaTwD">
              <property role="3oM_SC" value="providing" />
            </node>
            <node concept="3oM_SD" id="1hBlbKC4l5u" role="1PaTwD">
              <property role="3oM_SC" value="more" />
            </node>
            <node concept="3oM_SD" id="1hBlbKC4l5v" role="1PaTwD">
              <property role="3oM_SC" value="precise/actual" />
            </node>
            <node concept="3oM_SD" id="1hBlbKC4l60" role="1PaTwD">
              <property role="3oM_SC" value="value" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1hBlbKBNhEz" role="3cqZAp">
          <node concept="1Wc70l" id="1hBlbKBNieW" role="3cqZAk">
            <node concept="2OqwBi" id="1hBlbKBNlZA" role="3uHU7w">
              <node concept="2OqwBi" id="1hBlbKBNiy7" role="2Oq$k0">
                <node concept="37vLTw" id="1hBlbKBNikk" role="2Oq$k0">
                  <ref role="3cqZAo" node="1hBlbKBNhjf" resolve="another" />
                </node>
                <node concept="liA8E" id="1hBlbKBNiIW" role="2OqNvi">
                  <ref role="37wK5l" node="3ufQioQQsmd" resolve="getValue" />
                </node>
              </node>
              <node concept="liA8E" id="1hBlbKBNmdT" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                <node concept="37vLTw" id="1hBlbKBNmkA" role="37wK5m">
                  <ref role="3cqZAo" node="1hBlbKBNfHf" resolve="myOverridePattern" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="1hBlbKBNi7L" role="3uHU7B">
              <node concept="37vLTw" id="1hBlbKBNhLj" role="3uHU7B">
                <ref role="3cqZAo" node="1hBlbKBNfHf" resolve="myOverridePattern" />
              </node>
              <node concept="10Nm6u" id="1hBlbKBNicE" role="3uHU7w" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1hBlbKBNh70" role="1B3o_S" />
      <node concept="10P_77" id="1hBlbKBNhfx" role="3clF45" />
      <node concept="37vLTG" id="1hBlbKBNhjf" role="3clF46">
        <property role="TrG5h" value="another" />
        <node concept="3uibUv" id="1hBlbKBNhje" role="1tU5fm">
          <ref role="3uigEE" node="3ufQioQQsm3" resolve="Arg" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3ufQioQQt1t">
    <property role="TrG5h" value="MyExecuteStreamHandler" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="3ufQioQQt1u" role="1B3o_S" />
    <node concept="3uibUv" id="3ufQioQQt1v" role="EKbjA">
      <ref role="3uigEE" to="kpdv:~ExecuteStreamHandler" resolve="ExecuteStreamHandler" />
    </node>
    <node concept="312cEg" id="3ufQioQQt1w" role="jymVt">
      <property role="TrG5h" value="myOutputReadingThread" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="3ufQioQQt1x" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Thread" resolve="Thread" />
      </node>
      <node concept="3Tm6S6" id="3ufQioQQt1y" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3ufQioQQt1z" role="jymVt">
      <property role="TrG5h" value="myErrorReadingThread" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="3ufQioQQt1$" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Thread" resolve="Thread" />
      </node>
      <node concept="3Tm6S6" id="3ufQioQQt1_" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3ufQioQQt1A" role="jymVt">
      <property role="TrG5h" value="myTask" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3ufQioQQt1B" role="1tU5fm">
        <ref role="3uigEE" to="gola:~Task" resolve="Task" />
      </node>
      <node concept="3Tm6S6" id="3ufQioQQt1C" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="3ufQioQQt1D" role="jymVt">
      <node concept="3Tm1VV" id="3ufQioQQt1E" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQt1F" role="3clF45" />
      <node concept="37vLTG" id="3ufQioQQt1G" role="3clF46">
        <property role="TrG5h" value="task" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3ufQioQQt1H" role="1tU5fm">
          <ref role="3uigEE" to="gola:~Task" resolve="Task" />
        </node>
      </node>
      <node concept="3clFbS" id="3ufQioQQt1I" role="3clF47">
        <node concept="3clFbF" id="3ufQioQQt1J" role="3cqZAp">
          <node concept="37vLTI" id="3ufQioQQt1K" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuPrc" role="37vLTJ">
              <ref role="3cqZAo" node="3ufQioQQt1A" resolve="myTask" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm8ct" role="37vLTx">
              <ref role="3cqZAo" node="3ufQioQQt1G" resolve="task" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3ufQioQQt1N" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setProcessInputStream" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3ufQioQQt1O" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQt1P" role="3clF45" />
      <node concept="37vLTG" id="3ufQioQQt1Q" role="3clF46">
        <property role="TrG5h" value="os" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3ufQioQQt1R" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~OutputStream" resolve="OutputStream" />
        </node>
      </node>
      <node concept="3clFbS" id="3ufQioQQt1S" role="3clF47" />
      <node concept="3uibUv" id="3ufQioQQt1T" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="2AHcQZ" id="3tYsUK_p6cs" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3ufQioQQt1U" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setProcessErrorStream" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3ufQioQQt1V" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQt1W" role="3clF45" />
      <node concept="37vLTG" id="3ufQioQQt1X" role="3clF46">
        <property role="TrG5h" value="is" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3ufQioQQt1Y" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~InputStream" resolve="InputStream" />
        </node>
      </node>
      <node concept="3clFbS" id="3ufQioQQt1Z" role="3clF47">
        <node concept="3clFbF" id="3ufQioQQt20" role="3cqZAp">
          <node concept="37vLTI" id="3ufQioQQt21" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuoJX" role="37vLTJ">
              <ref role="3cqZAo" node="3ufQioQQt1z" resolve="myErrorReadingThread" />
            </node>
            <node concept="2ShNRf" id="3ufQioQQt23" role="37vLTx">
              <node concept="1pGfFk" id="3ufQioQQt24" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~Thread.&lt;init&gt;(java.lang.Runnable)" resolve="Thread" />
                <node concept="2ShNRf" id="3ufQioQQt25" role="37wK5m">
                  <node concept="YeOm9" id="3ufQioQQt26" role="2ShVmc">
                    <node concept="1Y3b0j" id="3ufQioQQt27" role="YeSDq">
                      <property role="TrG5h" value="" />
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="3clFb_" id="3ufQioQQt28" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="run" />
                        <property role="DiZV1" value="false" />
                        <node concept="3Tm1VV" id="3ufQioQQt29" role="1B3o_S" />
                        <node concept="3cqZAl" id="3ufQioQQt2a" role="3clF45" />
                        <node concept="3clFbS" id="3ufQioQQt3q" role="3clF47">
                          <node concept="3cpWs8" id="3ufQioQQt3r" role="3cqZAp">
                            <node concept="3cpWsn" id="3ufQioQQt3s" role="3cpWs9">
                              <property role="TrG5h" value="s" />
                              <property role="3TUv4t" value="false" />
                              <node concept="3uibUv" id="3ufQioQQt3t" role="1tU5fm">
                                <ref role="3uigEE" to="33ny:~Scanner" resolve="Scanner" />
                              </node>
                              <node concept="2ShNRf" id="3ufQioQQt3u" role="33vP2m">
                                <node concept="1pGfFk" id="3ufQioQQt3v" role="2ShVmc">
                                  <ref role="37wK5l" to="33ny:~Scanner.&lt;init&gt;(java.io.InputStream)" resolve="Scanner" />
                                  <node concept="37vLTw" id="2BHiRxgm$Fs" role="37wK5m">
                                    <ref role="3cqZAo" node="3ufQioQQt1X" resolve="is" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2$JKZl" id="3ufQioQQt3x" role="3cqZAp">
                            <node concept="2OqwBi" id="3ufQioQQt3y" role="2$JKZa">
                              <node concept="37vLTw" id="3GM_nagTx3I" role="2Oq$k0">
                                <ref role="3cqZAo" node="3ufQioQQt3s" resolve="s" />
                              </node>
                              <node concept="liA8E" id="3ufQioQQt3$" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Scanner.hasNextLine()" resolve="hasNextLine" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="3ufQioQQt3_" role="2LFqv$">
                              <node concept="3clFbF" id="3ufQioQQt3A" role="3cqZAp">
                                <node concept="1rXfSq" id="4hiugqyyW_Z" role="3clFbG">
                                  <ref role="37wK5l" node="3ufQioQQt2c" resolve="logError" />
                                  <node concept="2OqwBi" id="3ufQioQQt3C" role="37wK5m">
                                    <node concept="37vLTw" id="3GM_nagTuyD" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3ufQioQQt3s" resolve="s" />
                                    </node>
                                    <node concept="liA8E" id="3ufQioQQt3E" role="2OqNvi">
                                      <ref role="37wK5l" to="33ny:~Scanner.nextLine()" resolve="nextLine" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="3tYsUK_p6l0" role="2AJF6D">
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
      <node concept="3uibUv" id="3ufQioQQt2b" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="2AHcQZ" id="3tYsUK_p6cx" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3ufQioQQt2c" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="logError" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="3ufQioQQt2d" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQt2e" role="3clF45" />
      <node concept="37vLTG" id="3ufQioQQt2f" role="3clF46">
        <property role="TrG5h" value="line" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="2uUiGxAaMF$" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3ufQioQQt2h" role="3clF47">
        <node concept="3clFbF" id="3ufQioQQt2i" role="3cqZAp">
          <node concept="2OqwBi" id="3ufQioQQt2j" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuWdj" role="2Oq$k0">
              <ref role="3cqZAo" node="3ufQioQQt1A" resolve="myTask" />
            </node>
            <node concept="liA8E" id="3ufQioQQt2l" role="2OqNvi">
              <ref role="37wK5l" to="gola:~Task.log(java.lang.String,int)" resolve="log" />
              <node concept="37vLTw" id="2BHiRxgmaFQ" role="37wK5m">
                <ref role="3cqZAo" node="3ufQioQQt2f" resolve="line" />
              </node>
              <node concept="10M0yZ" id="3ufQioQQt2n" role="37wK5m">
                <ref role="1PxDUh" to="gola:~Project" resolve="Project" />
                <ref role="3cqZAo" to="gola:~Project.MSG_ERR" resolve="MSG_ERR" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3ufQioQQt2o" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setProcessOutputStream" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3ufQioQQt2p" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQt2q" role="3clF45" />
      <node concept="37vLTG" id="3ufQioQQt2r" role="3clF46">
        <property role="TrG5h" value="is" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3ufQioQQt2s" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~InputStream" resolve="InputStream" />
        </node>
      </node>
      <node concept="3clFbS" id="3ufQioQQt2t" role="3clF47">
        <node concept="3clFbF" id="3ufQioQQt2u" role="3cqZAp">
          <node concept="37vLTI" id="3ufQioQQt2v" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuKkS" role="37vLTJ">
              <ref role="3cqZAo" node="3ufQioQQt1w" resolve="myOutputReadingThread" />
            </node>
            <node concept="2ShNRf" id="3ufQioQQt2x" role="37vLTx">
              <node concept="1pGfFk" id="3ufQioQQt2y" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~Thread.&lt;init&gt;(java.lang.Runnable)" resolve="Thread" />
                <node concept="2ShNRf" id="3ufQioQQt2z" role="37wK5m">
                  <node concept="YeOm9" id="3ufQioQQt2$" role="2ShVmc">
                    <node concept="1Y3b0j" id="3ufQioQQt2_" role="YeSDq">
                      <property role="TrG5h" value="" />
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="3clFb_" id="3ufQioQQt2A" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="run" />
                        <property role="DiZV1" value="false" />
                        <node concept="3Tm1VV" id="3ufQioQQt2B" role="1B3o_S" />
                        <node concept="3cqZAl" id="3ufQioQQt2C" role="3clF45" />
                        <node concept="3clFbS" id="3ufQioQQt3F" role="3clF47">
                          <node concept="3cpWs8" id="3ufQioQQt3G" role="3cqZAp">
                            <node concept="3cpWsn" id="3ufQioQQt3H" role="3cpWs9">
                              <property role="TrG5h" value="s" />
                              <property role="3TUv4t" value="false" />
                              <node concept="3uibUv" id="3ufQioQQt3I" role="1tU5fm">
                                <ref role="3uigEE" to="33ny:~Scanner" resolve="Scanner" />
                              </node>
                              <node concept="2ShNRf" id="3ufQioQQt3J" role="33vP2m">
                                <node concept="1pGfFk" id="3ufQioQQt3K" role="2ShVmc">
                                  <ref role="37wK5l" to="33ny:~Scanner.&lt;init&gt;(java.io.InputStream)" resolve="Scanner" />
                                  <node concept="37vLTw" id="2BHiRxgheoF" role="37wK5m">
                                    <ref role="3cqZAo" node="3ufQioQQt2r" resolve="is" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2$JKZl" id="3ufQioQQt3M" role="3cqZAp">
                            <node concept="2OqwBi" id="3ufQioQQt3N" role="2$JKZa">
                              <node concept="37vLTw" id="3GM_nagTsul" role="2Oq$k0">
                                <ref role="3cqZAo" node="3ufQioQQt3H" resolve="s" />
                              </node>
                              <node concept="liA8E" id="3ufQioQQt3P" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Scanner.hasNextLine()" resolve="hasNextLine" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="3ufQioQQt3Q" role="2LFqv$">
                              <node concept="3clFbF" id="3ufQioQQt3R" role="3cqZAp">
                                <node concept="1rXfSq" id="4hiugqyzhCD" role="3clFbG">
                                  <ref role="37wK5l" node="3ufQioQQt2E" resolve="logOutput" />
                                  <node concept="2OqwBi" id="3ufQioQQt3T" role="37wK5m">
                                    <node concept="37vLTw" id="3GM_nagTsBz" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3ufQioQQt3H" resolve="s" />
                                    </node>
                                    <node concept="liA8E" id="3ufQioQQt3V" role="2OqNvi">
                                      <ref role="37wK5l" to="33ny:~Scanner.nextLine()" resolve="nextLine" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="3tYsUK_p5e0" role="2AJF6D">
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
      <node concept="3uibUv" id="3ufQioQQt2D" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="2AHcQZ" id="3tYsUK_p6cm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3ufQioQQt2E" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="logOutput" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="3ufQioQQt2F" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQt2G" role="3clF45" />
      <node concept="37vLTG" id="3ufQioQQt2H" role="3clF46">
        <property role="TrG5h" value="line" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="2uUiGxAaMFT" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3ufQioQQt2J" role="3clF47">
        <node concept="3clFbF" id="3ufQioQQt2K" role="3cqZAp">
          <node concept="2OqwBi" id="3ufQioQQt2L" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuoP$" role="2Oq$k0">
              <ref role="3cqZAo" node="3ufQioQQt1A" resolve="myTask" />
            </node>
            <node concept="liA8E" id="3ufQioQQt2N" role="2OqNvi">
              <ref role="37wK5l" to="gola:~Task.log(java.lang.String)" resolve="log" />
              <node concept="37vLTw" id="2BHiRxgm90V" role="37wK5m">
                <ref role="3cqZAo" node="3ufQioQQt2H" resolve="line" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3ufQioQQt2P" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="start" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3ufQioQQt2Q" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQt2R" role="3clF45" />
      <node concept="3clFbS" id="3ufQioQQt2S" role="3clF47">
        <node concept="3clFbF" id="3ufQioQQt2T" role="3cqZAp">
          <node concept="2OqwBi" id="3ufQioQQt2U" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuTtx" role="2Oq$k0">
              <ref role="3cqZAo" node="3ufQioQQt1w" resolve="myOutputReadingThread" />
            </node>
            <node concept="liA8E" id="3ufQioQQt2W" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Thread.start()" resolve="start" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ufQioQQt2X" role="3cqZAp">
          <node concept="2OqwBi" id="3ufQioQQt2Y" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeulwy" role="2Oq$k0">
              <ref role="3cqZAo" node="3ufQioQQt1z" resolve="myErrorReadingThread" />
            </node>
            <node concept="liA8E" id="3ufQioQQt30" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Thread.start()" resolve="start" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3ufQioQQt31" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="2AHcQZ" id="3tYsUK_p6c$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3ufQioQQt32" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="stop" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3ufQioQQt33" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQt34" role="3clF45" />
      <node concept="3clFbS" id="3ufQioQQt35" role="3clF47">
        <node concept="3J1_TO" id="3ufQioQQt36" role="3cqZAp">
          <node concept="3clFbS" id="3ufQioQQt3b" role="1zxBo7">
            <node concept="3clFbF" id="3ufQioQQt3c" role="3cqZAp">
              <node concept="2OqwBi" id="3ufQioQQt3d" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeuIiT" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ufQioQQt1w" resolve="myOutputReadingThread" />
                </node>
                <node concept="liA8E" id="3ufQioQQt3f" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Thread.join()" resolve="join" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="3ufQioQQt37" role="1zxBo5">
            <node concept="XOnhg" id="3ufQioQQt39" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="xvs04dGs3s" role="1tU5fm">
                <node concept="3uibUv" id="3ufQioQQt3a" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="3ufQioQQt38" role="1zc67A">
              <node concept="3SKdUt" id="3ufQioQQufI" role="3cqZAp">
                <node concept="1PaTwC" id="ATZLwXo87l" role="1aUNEU">
                  <node concept="3oM_SD" id="ATZLwXo87m" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXo87n" role="1PaTwD">
                    <property role="3oM_SC" value="ignore" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="3ufQioQQt3g" role="3cqZAp">
          <node concept="3clFbS" id="3ufQioQQt3l" role="1zxBo7">
            <node concept="3clFbF" id="3ufQioQQt3m" role="3cqZAp">
              <node concept="2OqwBi" id="3ufQioQQt3n" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeun1e" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ufQioQQt1z" resolve="myErrorReadingThread" />
                </node>
                <node concept="liA8E" id="3ufQioQQt3p" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Thread.join()" resolve="join" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="3ufQioQQt3h" role="1zxBo5">
            <node concept="XOnhg" id="3ufQioQQt3j" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="xvs04dGs3u" role="1tU5fm">
                <node concept="3uibUv" id="3ufQioQQt3k" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="3ufQioQQt3i" role="1zc67A">
              <node concept="3SKdUt" id="3ufQioQQufK" role="3cqZAp">
                <node concept="1PaTwC" id="ATZLwXo87o" role="1aUNEU">
                  <node concept="3oM_SD" id="ATZLwXo87p" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                  <node concept="3oM_SD" id="ATZLwXo87q" role="1PaTwD">
                    <property role="3oM_SC" value="ignore" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_p6cC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3ufQioQQt4w">
    <property role="TrG5h" value="Macro" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="3ufQioQQt4x" role="1B3o_S" />
    <node concept="3uibUv" id="3ufQioQQt4y" role="1zkMxy">
      <ref role="3uigEE" to="rg95:~DataType" resolve="DataType" />
    </node>
    <node concept="312cEg" id="3ufQioQQt4z" role="jymVt">
      <property role="TrG5h" value="myName" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="17QB3L" id="2uUiGxAaMFE" role="1tU5fm" />
      <node concept="3Tm6S6" id="3ufQioQQt4_" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3ufQioQQt4A" role="jymVt">
      <property role="TrG5h" value="myPath" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="3ufQioQQt4B" role="1tU5fm">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
      <node concept="3Tm6S6" id="3ufQioQQt4C" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="3ufQioQQt4D" role="jymVt">
      <node concept="3Tm1VV" id="3ufQioQQt4E" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQt4F" role="3clF45" />
      <node concept="3clFbS" id="3ufQioQQt4G" role="3clF47" />
    </node>
    <node concept="3clFb_" id="3ufQioQQt4H" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getName" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3ufQioQQt4I" role="1B3o_S" />
      <node concept="17QB3L" id="2uUiGxAaMFe" role="3clF45" />
      <node concept="3clFbS" id="3ufQioQQt4K" role="3clF47">
        <node concept="3cpWs6" id="3ufQioQQt4L" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeun6w" role="3cqZAk">
            <ref role="3cqZAo" node="3ufQioQQt4z" resolve="myName" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3ufQioQQt4N" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setName" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3ufQioQQt4O" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQt4P" role="3clF45" />
      <node concept="37vLTG" id="3ufQioQQt4Q" role="3clF46">
        <property role="TrG5h" value="name" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="2uUiGxAaMEx" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3ufQioQQt4S" role="3clF47">
        <node concept="3clFbF" id="3ufQioQQt4T" role="3cqZAp">
          <node concept="37vLTI" id="3ufQioQQt4U" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuFGR" role="37vLTJ">
              <ref role="3cqZAo" node="3ufQioQQt4z" resolve="myName" />
            </node>
            <node concept="37vLTw" id="2BHiRxgmGU8" role="37vLTx">
              <ref role="3cqZAo" node="3ufQioQQt4Q" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3ufQioQQt4X" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPath" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3ufQioQQt4Y" role="1B3o_S" />
      <node concept="3uibUv" id="3ufQioQQt4Z" role="3clF45">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
      <node concept="3clFbS" id="3ufQioQQt50" role="3clF47">
        <node concept="3cpWs6" id="3ufQioQQt51" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeunmY" role="3cqZAk">
            <ref role="3cqZAo" node="3ufQioQQt4A" resolve="myPath" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3ufQioQQt53" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setPath" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3ufQioQQt54" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQt55" role="3clF45" />
      <node concept="37vLTG" id="3ufQioQQt56" role="3clF46">
        <property role="TrG5h" value="path" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3ufQioQQt57" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3clFbS" id="3ufQioQQt58" role="3clF47">
        <node concept="3clFbF" id="3ufQioQQt59" role="3cqZAp">
          <node concept="37vLTI" id="3ufQioQQt5a" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeul51" role="37vLTJ">
              <ref role="3cqZAo" node="3ufQioQQt4A" resolve="myPath" />
            </node>
            <node concept="37vLTw" id="2BHiRxgkX49" role="37vLTx">
              <ref role="3cqZAo" node="3ufQioQQt56" resolve="path" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3ufQioQQtf7">
    <property role="TrG5h" value="JvmArgs" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="true" />
    <node concept="3Tm1VV" id="3ufQioQQtf8" role="1B3o_S" />
    <node concept="3uibUv" id="3ufQioQQtf9" role="1zkMxy">
      <ref role="3uigEE" to="rg95:~DataType" resolve="DataType" />
    </node>
    <node concept="312cEg" id="3ufQioQQtfa" role="jymVt">
      <property role="TrG5h" value="myArgs" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3ufQioQQtfb" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1hBlbKBNqX1" role="11_B2D">
          <ref role="3uigEE" node="3ufQioQQsm3" resolve="Arg" />
        </node>
      </node>
      <node concept="3Tm6S6" id="3ufQioQQtfd" role="1B3o_S" />
      <node concept="2ShNRf" id="3ufQioQQtfe" role="33vP2m">
        <node concept="1pGfFk" id="1hBlbKBNJf4" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1OjIqd7UP7p" role="jymVt" />
    <node concept="3clFbW" id="3ufQioQQtfz" role="jymVt">
      <node concept="3Tm1VV" id="3ufQioQQtf$" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQtf_" role="3clF45" />
      <node concept="3clFbS" id="3ufQioQQtfA" role="3clF47">
        <node concept="1VxSAg" id="1hBlbKBXaBX" role="3cqZAp">
          <ref role="37wK5l" node="1hBlbKBX2QW" resolve="JvmArgs" />
          <node concept="3clFbT" id="1hBlbKBXaCZ" role="37wK5m">
            <property role="3clFbU" value="true" />
          </node>
        </node>
        <node concept="3SKdUt" id="1hBlbKBXclr" role="3cqZAp">
          <node concept="1PaTwC" id="1hBlbKBXcls" role="1aUNEU">
            <node concept="3oM_SD" id="1hBlbKBXclt" role="1PaTwD">
              <property role="3oM_SC" value="although" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBXcnu" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBXcnw" role="1PaTwD">
              <property role="3oM_SC" value="feel" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBXcnx" role="1PaTwD">
              <property role="3oM_SC" value="withDefaults" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBXcoP" role="1PaTwD">
              <property role="3oM_SC" value="==" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBXcp6" role="1PaTwD">
              <property role="3oM_SC" value="'false'" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBXcny" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBXcnz" role="1PaTwD">
              <property role="3oM_SC" value="right," />
            </node>
            <node concept="3oM_SD" id="1hBlbKBXcnO" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBXcpn" role="1PaTwD">
              <property role="3oM_SC" value="'true'" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBXcpS" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBXcq9" role="1PaTwD">
              <property role="3oM_SC" value="mimic" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBXcqq" role="1PaTwD">
              <property role="3oM_SC" value="current" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBXcrF" role="1PaTwD">
              <property role="3oM_SC" value="behavior," />
            </node>
            <node concept="3oM_SD" id="1hBlbKBXcss" role="1PaTwD">
              <property role="3oM_SC" value="just" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBXcst" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBXcsY" role="1PaTwD">
              <property role="3oM_SC" value="case" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBXcsZ" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBXct0" role="1PaTwD">
              <property role="3oM_SC" value="matters" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1hBlbKBX6qL" role="jymVt" />
    <node concept="3clFbW" id="1hBlbKBX2QW" role="jymVt">
      <node concept="3Tm1VV" id="1hBlbKBX2QX" role="1B3o_S" />
      <node concept="3cqZAl" id="1hBlbKBX2QY" role="3clF45" />
      <node concept="3clFbS" id="1hBlbKBX2QZ" role="3clF47">
        <node concept="3clFbJ" id="1hBlbKBXb3Q" role="3cqZAp">
          <node concept="3clFbS" id="1hBlbKBXb3S" role="3clFbx">
            <node concept="3clFbF" id="1hBlbKBX2R0" role="3cqZAp">
              <node concept="2OqwBi" id="1hBlbKBX2R1" role="3clFbG">
                <node concept="37vLTw" id="1hBlbKBX2R2" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ufQioQQtfa" resolve="myArgs" />
                </node>
                <node concept="liA8E" id="1hBlbKBX2R3" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="2ShNRf" id="1hBlbKBX2R4" role="37wK5m">
                    <node concept="1pGfFk" id="1hBlbKBX2R5" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" node="1hBlbKBNftw" resolve="Arg" />
                      <node concept="Xl_RD" id="1hBlbKBX2R6" role="37wK5m">
                        <property role="Xl_RC" value="-Xmx512m" />
                      </node>
                      <node concept="Xl_RD" id="1hBlbKBX2R7" role="37wK5m">
                        <property role="Xl_RC" value="-Xmx" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1hBlbKBX2R8" role="3cqZAp">
              <node concept="2OqwBi" id="1hBlbKBX2R9" role="3clFbG">
                <node concept="37vLTw" id="1hBlbKBX2Ra" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ufQioQQtfa" resolve="myArgs" />
                </node>
                <node concept="liA8E" id="1hBlbKBX2Rb" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="2ShNRf" id="1hBlbKBX2Rc" role="37wK5m">
                    <node concept="1pGfFk" id="1hBlbKBX2Rd" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" node="1hBlbKBNftw" resolve="Arg" />
                      <node concept="Xl_RD" id="1hBlbKBX2Re" role="37wK5m">
                        <property role="Xl_RC" value="-XX:+HeapDumpOnOutOfMemoryError" />
                      </node>
                      <node concept="Xl_RD" id="1hBlbKBX2Rf" role="37wK5m">
                        <property role="Xl_RC" value="HeapDumpOnOutOfMemoryError" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1hBlbKBXbhW" role="3clFbw">
            <ref role="3cqZAo" node="1hBlbKBX9Z4" resolve="withDefaults" />
          </node>
        </node>
        <node concept="3clFbF" id="1hBlbKC8tHK" role="3cqZAp">
          <node concept="2OqwBi" id="1hBlbKC8uLf" role="3clFbG">
            <node concept="37vLTw" id="1hBlbKC8tHI" role="2Oq$k0">
              <ref role="3cqZAo" node="3ufQioQQtfa" resolve="myArgs" />
            </node>
            <node concept="liA8E" id="1hBlbKC8wxR" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection)" resolve="addAll" />
              <node concept="2YIFZM" id="1hBlbKC8xHJ" role="37wK5m">
                <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
                <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                <node concept="37vLTw" id="1hBlbKC8y7B" role="37wK5m">
                  <ref role="3cqZAo" node="1hBlbKC8sUu" resolve="otherDefaults" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1hBlbKBX9Z4" role="3clF46">
        <property role="TrG5h" value="withDefaults" />
        <node concept="10P_77" id="1hBlbKBX9Z3" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1hBlbKC8sUu" role="3clF46">
        <property role="TrG5h" value="otherDefaults" />
        <node concept="8X2XB" id="1hBlbKC8thL" role="1tU5fm">
          <node concept="3uibUv" id="1hBlbKC8tfv" role="8Xvag">
            <ref role="3uigEE" node="3ufQioQQsm3" resolve="Arg" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1hBlbKBWYSn" role="jymVt" />
    <node concept="3clFb_" id="3ufQioQQtfB" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addConfiguredArg" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3ufQioQQtfC" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQtfD" role="3clF45" />
      <node concept="37vLTG" id="3ufQioQQtfE" role="3clF46">
        <property role="TrG5h" value="arg" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3ufQioQQtfF" role="1tU5fm">
          <ref role="3uigEE" node="3ufQioQQsm3" resolve="Arg" />
        </node>
      </node>
      <node concept="3clFbS" id="3ufQioQQtfG" role="3clF47">
        <node concept="3clFbF" id="3ufQioQQtfH" role="3cqZAp">
          <node concept="2OqwBi" id="3ufQioQQtfI" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuogf" role="2Oq$k0">
              <ref role="3cqZAo" node="3ufQioQQtfa" resolve="myArgs" />
            </node>
            <node concept="liA8E" id="3ufQioQQtfK" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="2BHiRxgmsgO" role="37wK5m">
                <ref role="3cqZAo" node="3ufQioQQtfE" resolve="arg" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3ufQioQQtfO" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addConfiguredJvmArgs" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3ufQioQQtfP" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQtfQ" role="3clF45" />
      <node concept="37vLTG" id="3ufQioQQtfR" role="3clF46">
        <property role="TrG5h" value="jvmargs" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3ufQioQQtfS" role="1tU5fm">
          <ref role="3uigEE" node="3ufQioQQtf7" resolve="JvmArgs" />
        </node>
      </node>
      <node concept="3clFbS" id="3ufQioQQtfT" role="3clF47">
        <node concept="3clFbF" id="3ufQioQQtfU" role="3cqZAp">
          <node concept="2OqwBi" id="3ufQioQQtfV" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeugbT" role="2Oq$k0">
              <ref role="3cqZAo" node="3ufQioQQtfa" resolve="myArgs" />
            </node>
            <node concept="liA8E" id="3ufQioQQtfX" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection)" resolve="addAll" />
              <node concept="2OqwBi" id="3ufQioQQtfY" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxglp2v" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ufQioQQtfR" resolve="jvmargs" />
                </node>
                <node concept="liA8E" id="1hBlbKBOdbt" role="2OqNvi">
                  <ref role="37wK5l" node="3ufQioQQtg8" resolve="getMergedArgs" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3ufQioQQtg1" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getArgs" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3ufQioQQtg2" role="1B3o_S" />
      <node concept="3uibUv" id="3ufQioQQtg3" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="17QB3L" id="2uUiGxAaMG3" role="11_B2D" />
      </node>
      <node concept="3clFbS" id="3ufQioQQtg5" role="3clF47">
        <node concept="3cpWs8" id="1hBlbKBOw2N" role="3cqZAp">
          <node concept="3cpWsn" id="1hBlbKBOw2T" role="3cpWs9">
            <property role="TrG5h" value="rv" />
            <node concept="3uibUv" id="1hBlbKBOw2V" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
              <node concept="17QB3L" id="1hBlbKBOy3d" role="11_B2D" />
            </node>
            <node concept="2ShNRf" id="1hBlbKBO_KA" role="33vP2m">
              <node concept="1pGfFk" id="1hBlbKBOCQa" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="1hBlbKBOomE" role="3cqZAp">
          <node concept="3clFbS" id="1hBlbKBOomG" role="2LFqv$">
            <node concept="3clFbF" id="1hBlbKBOL6S" role="3cqZAp">
              <node concept="2OqwBi" id="1hBlbKBOOWR" role="3clFbG">
                <node concept="37vLTw" id="1hBlbKBOL6Q" role="2Oq$k0">
                  <ref role="3cqZAo" node="1hBlbKBOw2T" resolve="rv" />
                </node>
                <node concept="liA8E" id="1hBlbKBORXV" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                  <node concept="2OqwBi" id="1hBlbKBOWkX" role="37wK5m">
                    <node concept="37vLTw" id="1hBlbKBOU3y" role="2Oq$k0">
                      <ref role="3cqZAo" node="1hBlbKBOomH" resolve="a" />
                    </node>
                    <node concept="liA8E" id="1hBlbKBOYUR" role="2OqNvi">
                      <ref role="37wK5l" node="3ufQioQQsmd" resolve="getValue" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1hBlbKBOomH" role="1Duv9x">
            <property role="TrG5h" value="a" />
            <node concept="3uibUv" id="1hBlbKBOpx_" role="1tU5fm">
              <ref role="3uigEE" node="3ufQioQQsm3" resolve="Arg" />
            </node>
          </node>
          <node concept="1rXfSq" id="4hiugqyz9mk" role="1DdaDG">
            <ref role="37wK5l" node="3ufQioQQtg8" resolve="getMergedArgs" />
          </node>
        </node>
        <node concept="3cpWs6" id="3ufQioQQtg6" role="3cqZAp">
          <node concept="37vLTw" id="1hBlbKBOJkv" role="3cqZAk">
            <ref role="3cqZAo" node="1hBlbKBOw2T" resolve="rv" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3ufQioQQtg8" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getMergedArgs" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm6S6" id="3ufQioQQtg9" role="1B3o_S" />
      <node concept="3uibUv" id="3ufQioQQtga" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1hBlbKBO8yw" role="11_B2D">
          <ref role="3uigEE" node="3ufQioQQsm3" resolve="Arg" />
        </node>
      </node>
      <node concept="3clFbS" id="3ufQioQQtgc" role="3clF47">
        <node concept="3clFbJ" id="3ufQioQQtgd" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzk$2" role="3clFbw">
            <ref role="37wK5l" to="rg95:~DataType.isReference()" resolve="isReference" />
          </node>
          <node concept="3clFbS" id="3ufQioQQtgf" role="3clFbx">
            <node concept="3cpWs6" id="3ufQioQQtgg" role="3cqZAp">
              <node concept="2OqwBi" id="3ufQioQQtgh" role="3cqZAk">
                <node concept="liA8E" id="3ufQioQQtgm" role="2OqNvi">
                  <ref role="37wK5l" node="3ufQioQQtg8" resolve="getMergedArgs" />
                </node>
                <node concept="1rXfSq" id="4hiugqyyZZO" role="2Oq$k0">
                  <ref role="37wK5l" to="rg95:~DataType.getCheckedRef(java.lang.Class)" resolve="getCheckedRef" />
                  <node concept="3VsKOn" id="1hBlbKBN7Ra" role="37wK5m">
                    <ref role="3VsUkX" node="3ufQioQQtf7" resolve="JvmArgs" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1hBlbKBSqMz" role="3cqZAp">
          <node concept="1PaTwC" id="1hBlbKBSqM$" role="1aUNEU">
            <node concept="3oM_SD" id="1hBlbKBSqM_" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBSuJo" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBSuJq" role="1PaTwD">
              <property role="3oM_SC" value="include" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBSuJF" role="1PaTwD">
              <property role="3oM_SC" value="any" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBSuJW" role="1PaTwD">
              <property role="3oM_SC" value="argument" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBSuKt" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBSuM0" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBSuM1" role="1PaTwD">
              <property role="3oM_SC" value="been" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBSuMy" role="1PaTwD">
              <property role="3oM_SC" value="overridden" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBSuN3" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBSuN$" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBSuNP" role="1PaTwD">
              <property role="3oM_SC" value="subsequent" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBSuOm" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBSuOB" role="1PaTwD">
              <property role="3oM_SC" value="(i.e." />
            </node>
            <node concept="3oM_SD" id="1hBlbKBSuOS" role="1PaTwD">
              <property role="3oM_SC" value="added" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBSuP9" role="1PaTwD">
              <property role="3oM_SC" value="later" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBSuPa" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBSuPr" role="1PaTwD">
              <property role="3oM_SC" value="higher" />
            </node>
            <node concept="3oM_SD" id="1hBlbKBSuQG" role="1PaTwD">
              <property role="3oM_SC" value="precedence)" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3ufQioQQtgn" role="3cqZAp">
          <node concept="3cpWsn" id="3ufQioQQtgo" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="3ufQioQQtgp" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~LinkedList" resolve="LinkedList" />
              <node concept="3uibUv" id="1hBlbKBP4MF" role="11_B2D">
                <ref role="3uigEE" node="3ufQioQQsm3" resolve="Arg" />
              </node>
            </node>
            <node concept="2ShNRf" id="3ufQioQQtgr" role="33vP2m">
              <node concept="1pGfFk" id="3ufQioQQtgs" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~LinkedList.&lt;init&gt;()" resolve="LinkedList" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="1hBlbKBPyId" role="3cqZAp">
          <node concept="3clFbS" id="1hBlbKBPyIf" role="2LFqv$">
            <node concept="3cpWs8" id="1hBlbKBQgUE" role="3cqZAp">
              <node concept="3cpWsn" id="1hBlbKBQgUF" role="3cpWs9">
                <property role="TrG5h" value="candidate" />
                <node concept="3uibUv" id="1hBlbKBQgUG" role="1tU5fm">
                  <ref role="3uigEE" node="3ufQioQQsm3" resolve="Arg" />
                </node>
                <node concept="2OqwBi" id="1hBlbKBQq3r" role="33vP2m">
                  <node concept="37vLTw" id="1hBlbKBQnMQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="3ufQioQQtfa" resolve="myArgs" />
                  </node>
                  <node concept="liA8E" id="1hBlbKBQtD8" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="37vLTw" id="1hBlbKBQvDk" role="37wK5m">
                      <ref role="3cqZAo" node="1hBlbKBPyIg" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="1hBlbKBQKSY" role="3cqZAp">
              <node concept="3clFbS" id="1hBlbKBQKT5" role="2LFqv$">
                <node concept="3clFbJ" id="1hBlbKBR0EU" role="3cqZAp">
                  <node concept="3clFbS" id="1hBlbKBR0EW" role="3clFbx">
                    <node concept="3N13vt" id="1hBlbKBSyG3" role="3cqZAp">
                      <node concept="3Wmhwi" id="1hBlbKBS_HV" role="2mVjTF">
                        <ref role="3Wmhwh" node="1hBlbKBRHoc" resolve="L1" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1hBlbKBR89q" role="3clFbw">
                    <node concept="37vLTw" id="1hBlbKBR4nm" role="2Oq$k0">
                      <ref role="3cqZAo" node="1hBlbKBQgUF" resolve="candidate" />
                    </node>
                    <node concept="liA8E" id="1hBlbKBRcXB" role="2OqNvi">
                      <ref role="37wK5l" node="1hBlbKBNhbr" resolve="overriddenBy" />
                      <node concept="37vLTw" id="1hBlbKBRhdY" role="37wK5m">
                        <ref role="3cqZAo" node="1hBlbKBQKT6" resolve="present" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="1hBlbKBQKT6" role="1Duv9x">
                <property role="TrG5h" value="present" />
                <node concept="3uibUv" id="1hBlbKBQMUC" role="1tU5fm">
                  <ref role="3uigEE" node="3ufQioQQsm3" resolve="Arg" />
                </node>
              </node>
              <node concept="37vLTw" id="1hBlbKBQWZ0" role="1DdaDG">
                <ref role="3cqZAo" node="3ufQioQQtgo" resolve="result" />
              </node>
            </node>
            <node concept="3clFbF" id="1hBlbKBRZWM" role="3cqZAp">
              <node concept="2OqwBi" id="1hBlbKBS5N7" role="3clFbG">
                <node concept="37vLTw" id="1hBlbKBRZWK" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ufQioQQtgo" resolve="result" />
                </node>
                <node concept="liA8E" id="1hBlbKBScbh" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~LinkedList.addFirst(java.lang.Object)" resolve="addFirst" />
                  <node concept="37vLTw" id="1hBlbKBSfYN" role="37wK5m">
                    <ref role="3cqZAo" node="1hBlbKBQgUF" resolve="candidate" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1hBlbKBPyIg" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="1hBlbKBP$Hm" role="1tU5fm" />
            <node concept="3cpWsd" id="1hBlbKBPMLi" role="33vP2m">
              <node concept="3cmrfG" id="1hBlbKBPMLy" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="1hBlbKBPGpQ" role="3uHU7B">
                <node concept="37vLTw" id="1hBlbKBPEkr" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ufQioQQtfa" resolve="myArgs" />
                </node>
                <node concept="liA8E" id="1hBlbKBPK7m" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2d3UOw" id="1hBlbKBQ6IR" role="1Dwp0S">
            <node concept="37vLTw" id="1hBlbKBQ0iI" role="3uHU7B">
              <ref role="3cqZAo" node="1hBlbKBPyIg" resolve="i" />
            </node>
            <node concept="3cmrfG" id="1hBlbKBQ8G7" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3uO5VW" id="1hBlbKBQc1Y" role="1Dwrff">
            <node concept="37vLTw" id="1hBlbKBQc20" role="2$L3a6">
              <ref role="3cqZAo" node="1hBlbKBPyIg" resolve="i" />
            </node>
          </node>
          <node concept="3Wmmph" id="1hBlbKBRHoc" role="3Wmhwa">
            <property role="TrG5h" value="L1" />
          </node>
        </node>
        <node concept="3cpWs6" id="3ufQioQQthj" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTsxF" role="3cqZAk">
            <ref role="3cqZAo" node="3ufQioQQtgo" resolve="result" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3ufQioQQti6">
    <property role="TrG5h" value="MpsLoadTask" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="3ufQioQQti7" role="1B3o_S" />
    <node concept="3uibUv" id="3ufQioQQti8" role="1zkMxy">
      <ref role="3uigEE" to="gola:~Task" resolve="Task" />
    </node>
    <node concept="Wx3nA" id="3ufQioQQtj3" role="jymVt">
      <property role="TrG5h" value="CONFIGURATION_NAME" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="2uUiGxAaMGH" role="1tU5fm" />
      <node concept="3Tm1VV" id="3ufQioQQtj5" role="1B3o_S" />
      <node concept="Xl_RD" id="3ufQioQQtj6" role="33vP2m">
        <property role="Xl_RC" value="configuration.name" />
      </node>
    </node>
    <node concept="Wx3nA" id="3ufQioQQtj7" role="jymVt">
      <property role="TrG5h" value="BUILD_NUMBER" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="2uUiGxAaMH5" role="1tU5fm" />
      <node concept="3Tm1VV" id="3ufQioQQtj9" role="1B3o_S" />
      <node concept="Xl_RD" id="3ufQioQQtja" role="33vP2m">
        <property role="Xl_RC" value="build.number" />
      </node>
    </node>
    <node concept="Wx3nA" id="4QSveR2UwNM" role="jymVt">
      <property role="TrG5h" value="DEFAULT_JNA_LIBRARY_PATH" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="4QSveR2UwNN" role="1tU5fm" />
      <node concept="3Tm1VV" id="4QSveR2UwNO" role="1B3o_S" />
      <node concept="Xl_RD" id="4QSveR2UwNP" role="33vP2m">
        <property role="Xl_RC" value="lib/jna" />
      </node>
    </node>
    <node concept="312cEg" id="3ufQioQQtjb" role="jymVt">
      <property role="TrG5h" value="myMpsHome" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="3ufQioQQtjc" role="1tU5fm">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
      <node concept="3Tm6S6" id="3ufQioQQtjd" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3ufQioQQtje" role="jymVt">
      <property role="TrG5h" value="myWhatToDo" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3ufQioQQtjf" role="1tU5fm">
        <ref role="3uigEE" to="asz6:KL8Aql8enO" resolve="Script" />
      </node>
      <node concept="3Tmbuc" id="3ufQioQQtjg" role="1B3o_S" />
      <node concept="2ShNRf" id="3ufQioQQtjh" role="33vP2m">
        <node concept="1pGfFk" id="3ufQioQQtji" role="2ShVmc">
          <ref role="37wK5l" to="asz6:KL8Aql8epN" resolve="Script" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3ufQioQQtjj" role="jymVt">
      <property role="TrG5h" value="myUsePropertiesAsMacro" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="10P_77" id="3ufQioQQtjk" role="1tU5fm" />
      <node concept="3Tm6S6" id="3ufQioQQtjl" role="1B3o_S" />
      <node concept="3clFbT" id="3ufQioQQtjm" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="312cEg" id="3ufQioQQtjn" role="jymVt">
      <property role="TrG5h" value="myFork" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="10P_77" id="3ufQioQQtjo" role="1tU5fm" />
      <node concept="3Tm6S6" id="3ufQioQQtjp" role="1B3o_S" />
      <node concept="3clFbT" id="3ufQioQQtjq" role="33vP2m">
        <property role="3clFbU" value="true" />
      </node>
    </node>
    <node concept="312cEg" id="1$mDfZ_uyJm" role="jymVt">
      <property role="TrG5h" value="myOpenPackages" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="10P_77" id="1$mDfZ_uyJn" role="1tU5fm" />
      <node concept="3Tm6S6" id="1$mDfZ_uyJo" role="1B3o_S" />
      <node concept="3clFbT" id="1$mDfZ_uyJp" role="33vP2m" />
      <node concept="z59LJ" id="1$mDfZ_uTHp" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs_k0" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_k1" role="1PaTwD">
            <property role="3oM_SC" value="whether" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_k2" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_k3" role="1PaTwD">
            <property role="3oM_SC" value="specify" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_k4" role="1PaTwD">
            <property role="3oM_SC" value="(platform-specific)" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_k5" role="1PaTwD">
            <property role="3oM_SC" value="set" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_k6" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_k7" role="1PaTwD">
            <property role="3oM_SC" value="--add-opens" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_k8" role="1PaTwD">
            <property role="3oM_SC" value="arguments" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_k9" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_ka" role="1PaTwD">
            <property role="3oM_SC" value="Necessary" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kb" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kc" role="1PaTwD">
            <property role="3oM_SC" value="workers" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kd" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_ke" role="1PaTwD">
            <property role="3oM_SC" value="IdeaEnvironment" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kf" role="1PaTwD">
            <property role="3oM_SC" value="&amp;&amp;" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kg" role="1PaTwD">
            <property role="3oM_SC" value="myFork" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kh" role="1PaTwD">
            <property role="3oM_SC" value="==" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_ki" role="1PaTwD">
            <property role="3oM_SC" value="true," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kj" role="1PaTwD">
            <property role="3oM_SC" value="MpsEnvironment" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kk" role="1PaTwD">
            <property role="3oM_SC" value="seems" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kl" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_km" role="1PaTwD">
            <property role="3oM_SC" value="work" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kn" role="1PaTwD">
            <property role="3oM_SC" value="fine" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_ko" role="1PaTwD">
            <property role="3oM_SC" value="without" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kp" role="1PaTwD">
            <property role="3oM_SC" value="these." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_kq" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_kr" role="1PaTwD">
            <property role="3oM_SC" value="false" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_ks" role="1PaTwD">
            <property role="3oM_SC" value="by" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kt" role="1PaTwD">
            <property role="3oM_SC" value="default" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_ku" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kv" role="1PaTwD">
            <property role="3oM_SC" value="compatibility" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kw" role="1PaTwD">
            <property role="3oM_SC" value="reasons," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kx" role="1PaTwD">
            <property role="3oM_SC" value="likely" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_ky" role="1PaTwD">
            <property role="3oM_SC" value="need" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kz" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_k$" role="1PaTwD">
            <property role="3oM_SC" value="change" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_k_" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kA" role="1PaTwD">
            <property role="3oM_SC" value="true" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kB" role="1PaTwD">
            <property role="3oM_SC" value="once" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kC" role="1PaTwD">
            <property role="3oM_SC" value="all" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kD" role="1PaTwD">
            <property role="3oM_SC" value="MpsEnv" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kE" role="1PaTwD">
            <property role="3oM_SC" value="tasks" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kF" role="1PaTwD">
            <property role="3oM_SC" value="have" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kG" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kH" role="1PaTwD">
            <property role="3oM_SC" value="set" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kI" role="1PaTwD">
            <property role="3oM_SC" value="explicitly" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4QSveR2Svbf" role="jymVt">
      <property role="TrG5h" value="myJnaLibraryPath" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="17QB3L" id="4QSveR2U8ux" role="1tU5fm" />
      <node concept="3Tm6S6" id="4QSveR2Svbh" role="1B3o_S" />
      <node concept="10Nm6u" id="4QSveR2UiDN" role="33vP2m" />
    </node>
    <node concept="312cEg" id="4vDU0BPy5F9" role="jymVt">
      <property role="TrG5h" value="myWorkerClass" />
      <node concept="3Tm6S6" id="4vDU0BPxYwB" role="1B3o_S" />
      <node concept="3uibUv" id="4vDU0BPy4t$" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="312cEg" id="3ufQioQQtjr" role="jymVt">
      <property role="TrG5h" value="myJvmArgs" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3ufQioQQtju" role="1B3o_S" />
      <node concept="2ShNRf" id="1hBlbKBU6Be" role="33vP2m">
        <node concept="1pGfFk" id="1hBlbKBUdnj" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" node="1hBlbKBX2QW" resolve="JvmArgs" />
          <node concept="3clFbT" id="1hBlbKBYs5W" role="37wK5m">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1hBlbKBTOrj" role="1tU5fm">
        <ref role="3uigEE" node="3ufQioQQtf7" resolve="JvmArgs" />
      </node>
    </node>
    <node concept="312cEg" id="4fMXdiUKqlq" role="jymVt">
      <property role="TrG5h" value="myExtraArgs" />
      <node concept="3Tm6S6" id="4fMXdiUKebD" role="1B3o_S" />
      <node concept="3uibUv" id="4fMXdiUKlrs" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="17QB3L" id="4fMXdiUKlVA" role="11_B2D" />
      </node>
    </node>
    <node concept="2tJIrI" id="4vDU0BPxrCV" role="jymVt" />
    <node concept="3clFbW" id="3ufQioQQtjy" role="jymVt">
      <node concept="3Tm1VV" id="3ufQioQQtjz" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQtj$" role="3clF45" />
      <node concept="3clFbS" id="3ufQioQQtj_" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4vDU0BPxGJC" role="jymVt" />
    <node concept="3clFbW" id="4vDU0BPxMGt" role="jymVt">
      <node concept="3cqZAl" id="4vDU0BPxMGu" role="3clF45" />
      <node concept="3clFbS" id="4vDU0BPxMGw" role="3clF47">
        <node concept="3clFbF" id="4vDU0BPybO0" role="3cqZAp">
          <node concept="37vLTI" id="4vDU0BPycf8" role="3clFbG">
            <node concept="37vLTw" id="4vDU0BPycnT" role="37vLTx">
              <ref role="3cqZAo" node="4vDU0BPxSIm" resolve="workerClass" />
            </node>
            <node concept="37vLTw" id="4vDU0BPybNZ" role="37vLTJ">
              <ref role="3cqZAo" node="4vDU0BPy5F9" resolve="myWorkerClass" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4vDU0BP$axq" role="1B3o_S" />
      <node concept="37vLTG" id="4vDU0BPxSIm" role="3clF46">
        <property role="TrG5h" value="workerClass" />
        <node concept="3uibUv" id="4vDU0BPxSIl" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_4F7FNq2Ws" role="jymVt" />
    <node concept="3clFb_" id="3ufQioQQtjA" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setMpsHome" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3ufQioQQtjB" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQtjC" role="3clF45" />
      <node concept="37vLTG" id="3ufQioQQtjD" role="3clF46">
        <property role="TrG5h" value="mpsHome" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3ufQioQQtjE" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3clFbS" id="3ufQioQQtjF" role="3clF47">
        <node concept="3clFbF" id="3ufQioQQtjG" role="3cqZAp">
          <node concept="37vLTI" id="3ufQioQQtjH" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuw_a" role="37vLTJ">
              <ref role="3cqZAo" node="3ufQioQQtjb" resolve="myMpsHome" />
            </node>
            <node concept="37vLTw" id="2BHiRxghfDc" role="37vLTx">
              <ref role="3cqZAo" node="3ufQioQQtjD" resolve="mpsHome" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_4F7FNq2Wt" role="jymVt" />
    <node concept="3clFb_" id="3ufQioQQtjK" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getMpsHome" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3ufQioQQtjL" role="1B3o_S" />
      <node concept="3uibUv" id="3ufQioQQtjM" role="3clF45">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
      <node concept="3clFbS" id="3ufQioQQtjN" role="3clF47">
        <node concept="3cpWs6" id="3ufQioQQtjO" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuvGX" role="3cqZAk">
            <ref role="3cqZAo" node="3ufQioQQtjb" resolve="myMpsHome" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_4F7FNq2Wu" role="jymVt" />
    <node concept="3clFb_" id="3ufQioQQtjQ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setFailOnError" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3ufQioQQtjR" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQtjS" role="3clF45" />
      <node concept="37vLTG" id="3ufQioQQtjT" role="3clF46">
        <property role="TrG5h" value="failOnError" />
        <property role="3TUv4t" value="false" />
        <node concept="10P_77" id="3ufQioQQtjU" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3ufQioQQtjV" role="3clF47">
        <node concept="3clFbF" id="3ufQioQQtjW" role="3cqZAp">
          <node concept="2OqwBi" id="3ufQioQQtjX" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuMya" role="2Oq$k0">
              <ref role="3cqZAo" node="3ufQioQQtje" resolve="myWhatToDo" />
            </node>
            <node concept="liA8E" id="3ufQioQQtjZ" role="2OqNvi">
              <ref role="37wK5l" to="asz6:KL8Aql8et$" resolve="updateFailOnError" />
              <node concept="37vLTw" id="2BHiRxghiYp" role="37wK5m">
                <ref role="3cqZAo" node="3ufQioQQtjT" resolve="failOnError" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_4F7FNq2Wv" role="jymVt" />
    <node concept="3clFb_" id="3ufQioQQtk1" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setLogLevel" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3ufQioQQtk2" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQtk3" role="3clF45" />
      <node concept="37vLTG" id="3ufQioQQtk4" role="3clF46">
        <property role="TrG5h" value="logLevel" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3ufQioQQtk5" role="1tU5fm">
          <ref role="3uigEE" node="3ufQioQQtiq" resolve="MpsLoadTask.LogLevelAttribute" />
        </node>
      </node>
      <node concept="3clFbS" id="3ufQioQQtk6" role="3clF47">
        <node concept="3clFbF" id="3ufQioQQtk7" role="3cqZAp">
          <node concept="2OqwBi" id="3ufQioQQtk8" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuuY_" role="2Oq$k0">
              <ref role="3cqZAo" node="3ufQioQQtje" resolve="myWhatToDo" />
            </node>
            <node concept="liA8E" id="3ufQioQQtka" role="2OqNvi">
              <ref role="37wK5l" to="asz6:KL8Aql8evE" resolve="updateLogLevel" />
              <node concept="2OqwBi" id="3ufQioQQtkb" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxghgtz" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ufQioQQtk4" resolve="logLevel" />
                </node>
                <node concept="liA8E" id="3ufQioQQtkd" role="2OqNvi">
                  <ref role="37wK5l" node="3ufQioQQtiH" resolve="getLevel" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_4F7FNq2Ww" role="jymVt" />
    <node concept="3clFb_" id="3ufQioQQtke" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setFork" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3ufQioQQtkf" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQtkg" role="3clF45" />
      <node concept="37vLTG" id="3ufQioQQtkh" role="3clF46">
        <property role="TrG5h" value="fork" />
        <property role="3TUv4t" value="false" />
        <node concept="10P_77" id="3ufQioQQtki" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3ufQioQQtkj" role="3clF47">
        <node concept="3clFbF" id="3ufQioQQtkk" role="3cqZAp">
          <node concept="37vLTI" id="3ufQioQQtkl" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeujIQ" role="37vLTJ">
              <ref role="3cqZAo" node="3ufQioQQtjn" resolve="myFork" />
            </node>
            <node concept="37vLTw" id="2BHiRxgha7D" role="37vLTx">
              <ref role="3cqZAo" node="3ufQioQQtkh" resolve="fork" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_4F7FNq2Wx" role="jymVt" />
    <node concept="3clFb_" id="6aGZllYQQiW" role="jymVt">
      <property role="TrG5h" value="addConfiguredRepository" />
      <node concept="3cqZAl" id="6aGZllYQQiY" role="3clF45" />
      <node concept="3Tm1VV" id="6aGZllYQQiZ" role="1B3o_S" />
      <node concept="3clFbS" id="6aGZllYQQj0" role="3clF47">
        <node concept="3clFbF" id="6aGZllYRrHJ" role="3cqZAp">
          <node concept="2OqwBi" id="6aGZllYRrTC" role="3clFbG">
            <node concept="37vLTw" id="6aGZllYRrHI" role="2Oq$k0">
              <ref role="3cqZAo" node="3ufQioQQtje" resolve="myWhatToDo" />
            </node>
            <node concept="liA8E" id="1O4zZOk7lh8" role="2OqNvi">
              <ref role="37wK5l" to="asz6:6aGZllYSILO" resolve="setRepoDescriptor" />
              <node concept="2OqwBi" id="1O4zZOk7lru" role="37wK5m">
                <node concept="37vLTw" id="1O4zZOk7lkC" role="2Oq$k0">
                  <ref role="3cqZAo" node="6aGZllYRkCc" resolve="repo" />
                </node>
                <node concept="liA8E" id="1O4zZOk7lAM" role="2OqNvi">
                  <ref role="37wK5l" node="6aGZllYQz29" resolve="getDescriptor" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6aGZllYRkCc" role="3clF46">
        <property role="TrG5h" value="repo" />
        <node concept="3uibUv" id="6aGZllYRkCb" role="1tU5fm">
          <ref role="3uigEE" node="1TP$JLLo6fv" resolve="RepositoryDataType" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6aGZllYRo7E" role="jymVt" />
    <node concept="3clFb_" id="2Zuhns8AXOD" role="jymVt">
      <property role="TrG5h" value="addConfiguredExclude" />
      <node concept="37vLTG" id="2Zuhns8AXOH" role="3clF46">
        <property role="TrG5h" value="excludeInner" />
        <node concept="3uibUv" id="2Zuhns8AXOJ" role="1tU5fm">
          <ref role="3uigEE" node="2Zuhns8AUbI" resolve="ExcludeNested" />
        </node>
      </node>
      <node concept="3cqZAl" id="2Zuhns8AXOE" role="3clF45" />
      <node concept="3Tm1VV" id="2Zuhns8AXOF" role="1B3o_S" />
      <node concept="3clFbS" id="2Zuhns8AXOG" role="3clF47">
        <node concept="1DcWWT" id="2Zuhns8AXOK" role="3cqZAp">
          <node concept="2OqwBi" id="2Zuhns8AXOL" role="1DdaDG">
            <node concept="37vLTw" id="2Zuhns8AXOW" role="2Oq$k0">
              <ref role="3cqZAo" node="2Zuhns8AXOH" resolve="excludeInner" />
            </node>
            <node concept="liA8E" id="2Zuhns8AXON" role="2OqNvi">
              <ref role="37wK5l" node="2Zuhns8AXcH" resolve="getExcludedFromDiffFiles" />
            </node>
          </node>
          <node concept="3cpWsn" id="2Zuhns8AXOO" role="1Duv9x">
            <property role="TrG5h" value="file" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="2Zuhns8AXOP" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
          </node>
          <node concept="3clFbS" id="2Zuhns8AXOQ" role="2LFqv$">
            <node concept="3clFbF" id="2Zuhns8AXOR" role="3cqZAp">
              <node concept="2OqwBi" id="2Zuhns8AXOS" role="3clFbG">
                <node concept="37vLTw" id="2Zuhns8AXOX" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ufQioQQtje" resolve="myWhatToDo" />
                </node>
                <node concept="liA8E" id="2Zuhns8AXOU" role="2OqNvi">
                  <ref role="37wK5l" to="asz6:KL8Aql8eqD" resolve="excludeFileFromDiff" />
                  <node concept="37vLTw" id="2Zuhns8AXOV" role="37wK5m">
                    <ref role="3cqZAo" node="2Zuhns8AXOO" resolve="file" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_4F7FNq2Wy" role="jymVt" />
    <node concept="3clFb_" id="3ufQioQQtmx" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addConfiguredMacro" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3ufQioQQtmy" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQtmz" role="3clF45" />
      <node concept="37vLTG" id="3ufQioQQtm$" role="3clF46">
        <property role="TrG5h" value="macro" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3ufQioQQtm_" role="1tU5fm">
          <ref role="3uigEE" node="3ufQioQQt4w" resolve="Macro" />
        </node>
      </node>
      <node concept="3clFbS" id="3ufQioQQtmA" role="3clF47">
        <node concept="3clFbF" id="3ufQioQQtmB" role="3cqZAp">
          <node concept="2OqwBi" id="3ufQioQQtmC" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuoTp" role="2Oq$k0">
              <ref role="3cqZAo" node="3ufQioQQtje" resolve="myWhatToDo" />
            </node>
            <node concept="liA8E" id="3ufQioQQtmE" role="2OqNvi">
              <ref role="37wK5l" to="asz6:KL8Aql8ev6" resolve="addMacro" />
              <node concept="2OqwBi" id="3ufQioQQtmF" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxgm7o$" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ufQioQQtm$" resolve="macro" />
                </node>
                <node concept="liA8E" id="3ufQioQQtmH" role="2OqNvi">
                  <ref role="37wK5l" node="3ufQioQQt4H" resolve="getName" />
                </node>
              </node>
              <node concept="2OqwBi" id="3ufQioQQtmI" role="37wK5m">
                <node concept="2OqwBi" id="3ufQioQQtmJ" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxgm8MB" role="2Oq$k0">
                    <ref role="3cqZAo" node="3ufQioQQtm$" resolve="macro" />
                  </node>
                  <node concept="liA8E" id="3ufQioQQtmL" role="2OqNvi">
                    <ref role="37wK5l" node="3ufQioQQt4X" resolve="getPath" />
                  </node>
                </node>
                <node concept="liA8E" id="3ufQioQQtmM" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_4F7FNq2Wz" role="jymVt" />
    <node concept="3clFb_" id="3ufQioQQtmN" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getUsePropertiesAsMacro" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3ufQioQQtmO" role="1B3o_S" />
      <node concept="10P_77" id="3ufQioQQtmP" role="3clF45" />
      <node concept="3clFbS" id="3ufQioQQtmQ" role="3clF47">
        <node concept="3cpWs6" id="3ufQioQQtmR" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuUsP" role="3cqZAk">
            <ref role="3cqZAo" node="3ufQioQQtjj" resolve="myUsePropertiesAsMacro" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_4F7FNq2W$" role="jymVt" />
    <node concept="3clFb_" id="3ufQioQQtmT" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setUsePropertiesAsMacro" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3ufQioQQtmU" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQtmV" role="3clF45" />
      <node concept="37vLTG" id="3ufQioQQtmW" role="3clF46">
        <property role="TrG5h" value="usePropertiesAsMacro" />
        <property role="3TUv4t" value="false" />
        <node concept="10P_77" id="3ufQioQQtmX" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3ufQioQQtmY" role="3clF47">
        <node concept="3clFbF" id="3ufQioQQtmZ" role="3cqZAp">
          <node concept="37vLTI" id="3ufQioQQtn0" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuhTK" role="37vLTJ">
              <ref role="3cqZAo" node="3ufQioQQtjj" resolve="myUsePropertiesAsMacro" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm7Jo" role="37vLTx">
              <ref role="3cqZAo" node="3ufQioQQtmW" resolve="usePropertiesAsMacro" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5P325eDnEhx" role="jymVt" />
    <node concept="3clFb_" id="5P325eDnuBO" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setAutoPluginDiscovery" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="5P325eDnuBP" role="1B3o_S" />
      <node concept="3cqZAl" id="5P325eDnuBQ" role="3clF45" />
      <node concept="3clFbS" id="5P325eDnuBT" role="3clF47">
        <node concept="3clFbJ" id="6DTB6TKcZJ8" role="3cqZAp">
          <node concept="3clFbS" id="6DTB6TKcZJa" role="3clFbx">
            <node concept="3clFbF" id="6DTB6TKbV8A" role="3cqZAp">
              <node concept="2OqwBi" id="6DTB6TKc38f" role="3clFbG">
                <node concept="37vLTw" id="6DTB6TKbV8x" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ufQioQQtje" resolve="myWhatToDo" />
                </node>
                <node concept="liA8E" id="6DTB6TKcclF" role="2OqNvi">
                  <ref role="37wK5l" to="asz6:5P325eDkHBS" resolve="setAutomaticPluginDiscoveryMode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="6DTB6TKcZKu" role="3clFbw">
            <ref role="3cqZAo" node="6DTB6TKcQbR" resolve="value" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6DTB6TKcQbR" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="10P_77" id="6DTB6TKcQbQ" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1$mDfZ_yH4c" role="jymVt" />
    <node concept="3clFb_" id="1$mDfZ_zcl8" role="jymVt">
      <property role="TrG5h" value="setOpenPackages" />
      <node concept="3clFbS" id="1$mDfZ_zclb" role="3clF47">
        <node concept="3clFbF" id="1$mDfZ_ztYL" role="3cqZAp">
          <node concept="37vLTI" id="1$mDfZ_zC$k" role="3clFbG">
            <node concept="37vLTw" id="1$mDfZ_zI1E" role="37vLTx">
              <ref role="3cqZAo" node="1$mDfZ_zoU2" resolve="v" />
            </node>
            <node concept="37vLTw" id="1$mDfZ_ztYK" role="37vLTJ">
              <ref role="3cqZAo" node="1$mDfZ_uyJm" resolve="myOpenPackages" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1$mDfZ_yZ1X" role="1B3o_S" />
      <node concept="3cqZAl" id="1$mDfZ_zbKO" role="3clF45" />
      <node concept="37vLTG" id="1$mDfZ_zoU2" role="3clF46">
        <property role="TrG5h" value="v" />
        <node concept="10P_77" id="1$mDfZ_zoU1" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4QSveR2SSjt" role="jymVt" />
    <node concept="3clFb_" id="4QSveR2V4Uk" role="jymVt">
      <property role="TrG5h" value="setJnaLibraryPath" />
      <node concept="3cqZAl" id="4QSveR2V4Ul" role="3clF45" />
      <node concept="3Tm1VV" id="4QSveR2V4Um" role="1B3o_S" />
      <node concept="3clFbS" id="4QSveR2V4Un" role="3clF47">
        <node concept="3SKdUt" id="2o55QbnISQC" role="3cqZAp">
          <node concept="1PaTwC" id="2o55QbnISQD" role="1aUNEU">
            <node concept="3oM_SD" id="2o55QbnJ4an" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ4aC" role="1PaTwD">
              <property role="3oM_SC" value="now" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ4aE" role="1PaTwD">
              <property role="3oM_SC" value="there's" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ4bW" role="1PaTwD">
              <property role="3oM_SC" value="confusion" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ4bF" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ4cd" role="1PaTwD">
              <property role="3oM_SC" value="some" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ4d1" role="1PaTwD">
              <property role="3oM_SC" value="tasks" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ4ce" role="1PaTwD">
              <property role="3oM_SC" value="specify" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ4di" role="1PaTwD">
              <property role="3oM_SC" value="JNA" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ4dz" role="1PaTwD">
              <property role="3oM_SC" value="lib" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ4d$" role="1PaTwD">
              <property role="3oM_SC" value="path" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ4d_" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ6SP" role="1PaTwD">
              <property role="3oM_SC" value="both" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ4dA" role="1PaTwD">
              <property role="3oM_SC" value="-D" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ4dR" role="1PaTwD">
              <property role="3oM_SC" value="system" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ4dS" role="1PaTwD">
              <property role="3oM_SC" value="property" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ6S$" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ6Tm" role="1PaTwD">
              <property role="3oM_SC" value="default" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ6Tn" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ6To" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ6Tp" role="1PaTwD">
              <property role="3oM_SC" value="task's" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ6TE" role="1PaTwD">
              <property role="3oM_SC" value="constructor" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4QSveR2V4Uo" role="3cqZAp">
          <node concept="37vLTI" id="4QSveR2V4Up" role="3clFbG">
            <node concept="37vLTw" id="4QSveR2V4Uq" role="37vLTx">
              <ref role="3cqZAo" node="4QSveR2V4Ur" resolve="jnaLibraryPath" />
            </node>
            <node concept="2OqwBi" id="4QSveR2V4Uh" role="37vLTJ">
              <node concept="Xjq3P" id="4QSveR2V4Ui" role="2Oq$k0" />
              <node concept="2OwXpG" id="4QSveR2V4Uj" role="2OqNvi">
                <ref role="2Oxat5" node="4QSveR2Svbf" resolve="myJnaLibraryPath" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4QSveR2V4Ur" role="3clF46">
        <property role="TrG5h" value="jnaLibraryPath" />
        <node concept="17QB3L" id="4QSveR2V4Us" role="1tU5fm" />
      </node>
      <node concept="P$JXv" id="1gHrQBMJp8o" role="lGtFl">
        <node concept="TUZQ0" id="1gHrQBMJp8r" role="3nqlJM">
          <property role="TUZQ4" value="" />
          <node concept="zr_55" id="1gHrQBMJp8t" role="zr_5Q">
            <ref role="zr_51" node="4QSveR2V4Ur" resolve="jnaLibraryPath" />
          </node>
          <node concept="1PaTwC" id="1E1X3WHs_mR" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHs_mS" role="1PaTwD">
              <property role="3oM_SC" value="path" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_mT" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_mU" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_mV" role="1PaTwD">
              <property role="3oM_SC" value="directory" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_mW" role="1PaTwD">
              <property role="3oM_SC" value="containing" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_mX" role="1PaTwD">
              <property role="3oM_SC" value="native" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_mY" role="1PaTwD">
              <property role="3oM_SC" value="JNA" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_mZ" role="1PaTwD">
              <property role="3oM_SC" value="library," />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_n0" role="1PaTwD">
              <property role="3oM_SC" value="relative" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_n1" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_n2" role="1PaTwD">
              <property role="3oM_SC" value="MPS" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_n3" role="1PaTwD">
              <property role="3oM_SC" value="home" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_n4" role="1PaTwD">
              <property role="3oM_SC" value="(the" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_n5" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_n6" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_n7" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_n8" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_n9" role="1PaTwD">
              <property role="3oM_SC" value="launch" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_na" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_nb" role="1PaTwD">
              <property role="3oM_SC" value="task)" />
            </node>
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_kJ" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_kK" role="1PaTwD">
            <property role="3oM_SC" value="JNA" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kL" role="1PaTwD">
            <property role="3oM_SC" value="library" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kM" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kN" role="1PaTwD">
            <property role="3oM_SC" value="needed" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kO" role="1PaTwD">
            <property role="3oM_SC" value="by" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kP" role="1PaTwD">
            <property role="3oM_SC" value="IdeaEnvironment" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kQ" role="1PaTwD">
            <property role="3oM_SC" value="class" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kR" role="1PaTwD">
            <property role="3oM_SC" value="which" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kS" role="1PaTwD">
            <property role="3oM_SC" value="bootstraps" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kT" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kU" role="1PaTwD">
            <property role="3oM_SC" value="platform" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kV" role="1PaTwD">
            <property role="3oM_SC" value="using" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_kW" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_kX" role="1PaTwD">
            <property role="3oM_SC" value="PlatformStarter.startApplicationAsync()" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kY" role="1PaTwD">
            <property role="3oM_SC" value="via" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_kZ" role="1PaTwD">
            <property role="3oM_SC" value="MPSHeadlessPlatformStarter." />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_l0" role="1PaTwD">
            <property role="3oM_SC" value="MpsEnvironment" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_l1" role="1PaTwD">
            <property role="3oM_SC" value="on" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_l2" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_l3" role="1PaTwD">
            <property role="3oM_SC" value="other" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_l4" role="1PaTwD">
            <property role="3oM_SC" value="hand" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_l5" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_l6" role="1PaTwD">
            <property role="3oM_SC" value="does" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_l7" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_l8" role="1PaTwD">
            <property role="3oM_SC" value="require" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_l9" role="1PaTwD">
            <property role="3oM_SC" value="JNA" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_la" role="1PaTwD">
            <property role="3oM_SC" value="libraries." />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lb" role="1PaTwD">
            <property role="3oM_SC" value="This" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lc" role="1PaTwD">
            <property role="3oM_SC" value="setter" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_ld" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_le" role="1PaTwD">
            <property role="3oM_SC" value="therefore" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lf" role="1PaTwD">
            <property role="3oM_SC" value="currently" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lg" role="1PaTwD">
            <property role="3oM_SC" value="used" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lh" role="1PaTwD">
            <property role="3oM_SC" value="only" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_li" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lj" role="1PaTwD">
            <property role="3oM_SC" value="MigrationTask" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lk" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_ll" role="1PaTwD">
            <property role="3oM_SC" value="MpsRunnerTask." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_lm" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_ln" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_lo" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_lp" role="1PaTwD">
            <property role="3oM_SC" value="NOTE," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lq" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lr" role="1PaTwD">
            <property role="3oM_SC" value="some" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_ls" role="1PaTwD">
            <property role="3oM_SC" value="tasks" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lt" role="1PaTwD">
            <property role="3oM_SC" value="using" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lu" role="1PaTwD">
            <property role="3oM_SC" value="explicit" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lv" role="1PaTwD">
            <property role="3oM_SC" value="jvmarg" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lw" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="1Vtdud" id="1E1X3WHs_lx" role="1PaTwD">
            <node concept="1VuTSG" id="1E1X3WHs_ly" role="1Vtduc">
              <node concept="1PaTwC" id="1E1X3WHs_l_" role="2JaDBN">
                <node concept="3oM_SD" id="1E1X3WHs_lA" role="1PaTwD">
                  <property role="3oM_SC" value="-Djna.boot.library.path=" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lB" role="1PaTwD">
            <property role="3oM_SC" value="conflicts" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lC" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lD" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lE" role="1PaTwD">
            <property role="3oM_SC" value="way" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lF" role="1PaTwD">
            <property role="3oM_SC" value="value" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lG" role="1PaTwD">
            <property role="3oM_SC" value="supplied" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lH" role="1PaTwD">
            <property role="3oM_SC" value="here" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lI" role="1PaTwD">
            <property role="3oM_SC" value="ends" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lJ" role="1PaTwD">
            <property role="3oM_SC" value="up" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lK" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lL" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lM" role="1PaTwD">
            <property role="3oM_SC" value="command" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lN" role="1PaTwD">
            <property role="3oM_SC" value="line." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_lO" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_lP" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lQ" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lR" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lS" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lT" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lU" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lV" role="1PaTwD">
            <property role="3oM_SC" value="Perhaps," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lW" role="1PaTwD">
            <property role="3oM_SC" value="shall" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_lX" role="1PaTwD">
            <property role="3oM_SC" value="use" />
          </node>
          <node concept="1Vtdud" id="1E1X3WHs_lY" role="1PaTwD">
            <node concept="1VuTSG" id="1E1X3WHs_lZ" role="1Vtduc">
              <node concept="1PaTwC" id="1E1X3WHs_m2" role="2JaDBN">
                <node concept="3oM_SD" id="1E1X3WHs_m3" role="1PaTwD">
                  <property role="3oM_SC" value="addConfiguredJvmArgs()" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_m4" role="1PaTwD">
            <property role="3oM_SC" value="," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_m5" role="1PaTwD">
            <property role="3oM_SC" value="instead," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_m6" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_m7" role="1PaTwD">
            <property role="3oM_SC" value="facilitate" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_m8" role="1PaTwD">
            <property role="3oM_SC" value="proper" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_m9" role="1PaTwD">
            <property role="3oM_SC" value="replacement" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_ma" role="1PaTwD">
            <property role="3oM_SC" value="(if" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_mb" role="1PaTwD">
            <property role="3oM_SC" value="user" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_mc" role="1PaTwD">
            <property role="3oM_SC" value="supplies" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_md" role="1PaTwD">
            <property role="3oM_SC" value="own" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_me" role="1PaTwD">
            <property role="3oM_SC" value="jvmarg)" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_mf" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_mg" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_mh" role="1PaTwD">
            <property role="3oM_SC" value="single" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_mi" role="1PaTwD">
            <property role="3oM_SC" value="occurrence" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_mj" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_mk" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_ml" role="1PaTwD">
            <property role="3oM_SC" value="argument." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_mm" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_mn" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_mo" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_mp" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_mq" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_mr" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_ms" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_mt" role="1PaTwD">
            <property role="3oM_SC" value="However," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_mu" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="1Vtdud" id="1E1X3WHs_mv" role="1PaTwD">
            <node concept="1VuTSG" id="1E1X3WHs_mw" role="1Vtduc">
              <node concept="1PaTwC" id="1E1X3WHs_mz" role="2JaDBN">
                <node concept="3oM_SD" id="1E1X3WHs_m$" role="1PaTwD">
                  <property role="3oM_SC" value="getMpsHome_Checked()" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_m_" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_mA" role="1PaTwD">
            <property role="3oM_SC" value="available" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_mB" role="1PaTwD">
            <property role="3oM_SC" value="at" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_mC" role="1PaTwD">
            <property role="3oM_SC" value="construction" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_mD" role="1PaTwD">
            <property role="3oM_SC" value="time," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_mE" role="1PaTwD">
            <property role="3oM_SC" value="there's" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_mF" role="1PaTwD">
            <property role="3oM_SC" value="no" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_mG" role="1PaTwD">
            <property role="3oM_SC" value="easy" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_mH" role="1PaTwD">
            <property role="3oM_SC" value="way" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_mI" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_mJ" role="1PaTwD">
            <property role="3oM_SC" value="use" />
          </node>
          <node concept="1Vtdud" id="1E1X3WHs_mK" role="1PaTwD">
            <node concept="1VuTSG" id="1E1X3WHs_mL" role="1Vtduc">
              <node concept="1PaTwC" id="1E1X3WHs_mO" role="2JaDBN">
                <node concept="3oM_SD" id="1E1X3WHs_mP" role="1PaTwD">
                  <property role="3oM_SC" value="addConfiguredJvmArgs()" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_mQ" role="1PaTwD">
            <property role="3oM_SC" value="." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_4F7FNq2W_" role="jymVt" />
    <node concept="3clFb_" id="3ufQioQQtn3" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addConfiguredJvmArg" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3ufQioQQtn4" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQtn5" role="3clF45" />
      <node concept="37vLTG" id="3ufQioQQtn6" role="3clF46">
        <property role="TrG5h" value="jvmArg" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3ufQioQQtn7" role="1tU5fm">
          <ref role="3uigEE" node="3ufQioQQsm3" resolve="Arg" />
        </node>
      </node>
      <node concept="3clFbS" id="3ufQioQQtn8" role="3clF47">
        <node concept="3clFbJ" id="3ufQioQQtn9" role="3cqZAp">
          <node concept="3fqX7Q" id="3ufQioQQtna" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxeuq67" role="3fr31v">
              <ref role="3cqZAo" node="3ufQioQQtjn" resolve="myFork" />
            </node>
          </node>
          <node concept="3clFbS" id="3ufQioQQtnc" role="3clFbx">
            <node concept="YS8fn" id="3ufQioQQtnd" role="3cqZAp">
              <node concept="2ShNRf" id="3ufQioQQtne" role="YScLw">
                <node concept="1pGfFk" id="3ufQioQQtnf" role="2ShVmc">
                  <ref role="37wK5l" to="gola:~BuildException.&lt;init&gt;(java.lang.String)" resolve="BuildException" />
                  <node concept="Xl_RD" id="3ufQioQQtng" role="37wK5m">
                    <property role="Xl_RC" value="Nested jvmarg is only allowed in fork mode." />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ufQioQQtnh" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzcL2" role="3clFbG">
            <ref role="37wK5l" to="gola:~Task.log(java.lang.String,int)" resolve="log" />
            <node concept="Xl_RD" id="3ufQioQQtnj" role="37wK5m">
              <property role="Xl_RC" value="Nested jvmarg is deprecated. Use jvmargs instead." />
            </node>
            <node concept="10M0yZ" id="3ufQioQQtnk" role="37wK5m">
              <ref role="1PxDUh" to="gola:~Project" resolve="Project" />
              <ref role="3cqZAo" to="gola:~Project.MSG_WARN" resolve="MSG_WARN" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ufQioQQtnl" role="3cqZAp">
          <node concept="2OqwBi" id="3ufQioQQtnm" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuu2e" role="2Oq$k0">
              <ref role="3cqZAo" node="3ufQioQQtjr" resolve="myJvmArgs" />
            </node>
            <node concept="liA8E" id="3ufQioQQtno" role="2OqNvi">
              <ref role="37wK5l" node="3ufQioQQtfB" resolve="addConfiguredArg" />
              <node concept="37vLTw" id="2BHiRxgmKRB" role="37wK5m">
                <ref role="3cqZAo" node="3ufQioQQtn6" resolve="jvmArg" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_4F7FNq2WA" role="jymVt" />
    <node concept="3clFb_" id="3ufQioQQtns" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addConfiguredJvmArgs" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3ufQioQQtnt" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQtnu" role="3clF45" />
      <node concept="37vLTG" id="3ufQioQQtnv" role="3clF46">
        <property role="TrG5h" value="jvmArg" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3ufQioQQtnw" role="1tU5fm">
          <ref role="3uigEE" node="3ufQioQQtf7" resolve="JvmArgs" />
        </node>
      </node>
      <node concept="3clFbS" id="3ufQioQQtnx" role="3clF47">
        <node concept="3clFbJ" id="3ufQioQQtny" role="3cqZAp">
          <node concept="3fqX7Q" id="3ufQioQQtnz" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxeuyOw" role="3fr31v">
              <ref role="3cqZAo" node="3ufQioQQtjn" resolve="myFork" />
            </node>
          </node>
          <node concept="3clFbS" id="3ufQioQQtn_" role="3clFbx">
            <node concept="YS8fn" id="3ufQioQQtnA" role="3cqZAp">
              <node concept="2ShNRf" id="3ufQioQQtnB" role="YScLw">
                <node concept="1pGfFk" id="3ufQioQQtnC" role="2ShVmc">
                  <ref role="37wK5l" to="gola:~BuildException.&lt;init&gt;(java.lang.String)" resolve="BuildException" />
                  <node concept="Xl_RD" id="3ufQioQQtnD" role="37wK5m">
                    <property role="Xl_RC" value="Nested jvmargs is only allowed in fork mode." />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ufQioQQtnE" role="3cqZAp">
          <node concept="2OqwBi" id="3ufQioQQtnF" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeut3H" role="2Oq$k0">
              <ref role="3cqZAo" node="3ufQioQQtjr" resolve="myJvmArgs" />
            </node>
            <node concept="liA8E" id="3ufQioQQtnH" role="2OqNvi">
              <ref role="37wK5l" node="3ufQioQQtfO" resolve="addConfiguredJvmArgs" />
              <node concept="37vLTw" id="2BHiRxgl1$T" role="37wK5m">
                <ref role="3cqZAo" node="3ufQioQQtnv" resolve="jvmArg" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1hBlbKBVFmA" role="jymVt" />
    <node concept="3clFb_" id="1hBlbKBW1jB" role="jymVt">
      <property role="TrG5h" value="jvmArgsFrom" />
      <property role="DiZV1" value="true" />
      <node concept="3clFbS" id="1hBlbKBW1jE" role="3clF47">
        <node concept="3cpWs8" id="1hBlbKBX_So" role="3cqZAp">
          <node concept="3cpWsn" id="1hBlbKBX_Sp" role="3cpWs9">
            <property role="TrG5h" value="rv" />
            <node concept="3uibUv" id="1hBlbKBX_Sq" role="1tU5fm">
              <ref role="3uigEE" node="3ufQioQQtf7" resolve="JvmArgs" />
            </node>
            <node concept="2ShNRf" id="1hBlbKBXUnd" role="33vP2m">
              <node concept="1pGfFk" id="1hBlbKBY51K" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="1hBlbKBX2QW" resolve="JvmArgs" />
                <node concept="3clFbT" id="1hBlbKBYfNf" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="1hBlbKC2ike" role="3cqZAp">
          <node concept="3clFbS" id="1hBlbKC2ikg" role="2LFqv$">
            <node concept="3clFbF" id="1hBlbKC2Rzl" role="3cqZAp">
              <node concept="2OqwBi" id="1hBlbKC2Xvm" role="3clFbG">
                <node concept="37vLTw" id="1hBlbKC2Rzj" role="2Oq$k0">
                  <ref role="3cqZAo" node="1hBlbKBX_Sp" resolve="rv" />
                </node>
                <node concept="liA8E" id="1hBlbKC37Oo" role="2OqNvi">
                  <ref role="37wK5l" node="3ufQioQQtfB" resolve="addConfiguredArg" />
                  <node concept="2ShNRf" id="1hBlbKC3dq2" role="37wK5m">
                    <node concept="1pGfFk" id="1hBlbKC3kNn" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" node="4s_xB2uakWR" resolve="Arg" />
                      <node concept="37vLTw" id="1hBlbKC3t7v" role="37wK5m">
                        <ref role="3cqZAo" node="1hBlbKC2ikh" resolve="a" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1hBlbKC2ikh" role="1Duv9x">
            <property role="TrG5h" value="a" />
            <node concept="17QB3L" id="1hBlbKC2tG4" role="1tU5fm" />
          </node>
          <node concept="37vLTw" id="1hBlbKC2Hta" role="1DdaDG">
            <ref role="3cqZAo" node="1hBlbKBWeYf" resolve="args" />
          </node>
        </node>
        <node concept="3cpWs6" id="1hBlbKC1S9m" role="3cqZAp">
          <node concept="37vLTw" id="1hBlbKC1ZzE" role="3cqZAk">
            <ref role="3cqZAo" node="1hBlbKBX_Sp" resolve="rv" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="1hBlbKBVNqH" role="1B3o_S" />
      <node concept="37vLTG" id="1hBlbKBWeYf" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="1hBlbKBWrAO" role="1tU5fm">
          <node concept="17QB3L" id="1hBlbKBWeYe" role="8Xvag" />
        </node>
      </node>
      <node concept="3uibUv" id="1hBlbKBWOor" role="3clF45">
        <ref role="3uigEE" node="3ufQioQQtf7" resolve="JvmArgs" />
      </node>
    </node>
    <node concept="2tJIrI" id="r$A3E5p1nH" role="jymVt" />
    <node concept="3clFb_" id="QkG2t1byP_" role="jymVt">
      <property role="TrG5h" value="addConfiguredPlugin" />
      <node concept="37vLTG" id="QkG2t1byPP" role="3clF46">
        <property role="TrG5h" value="plugin" />
        <node concept="3uibUv" id="r$A3E5oOCb" role="1tU5fm">
          <ref role="3uigEE" node="QkG2t1bwWL" resolve="Plugin" />
        </node>
      </node>
      <node concept="3cqZAl" id="QkG2t1byPA" role="3clF45" />
      <node concept="3Tm1VV" id="QkG2t1byPB" role="1B3o_S" />
      <node concept="3clFbS" id="QkG2t1byPC" role="3clF47">
        <node concept="3clFbF" id="r$A3E5uv$b" role="3cqZAp">
          <node concept="2OqwBi" id="r$A3E5uw$l" role="3clFbG">
            <node concept="37vLTw" id="r$A3E5uv$9" role="2Oq$k0">
              <ref role="3cqZAo" node="3ufQioQQtje" resolve="myWhatToDo" />
            </node>
            <node concept="liA8E" id="r$A3E5uxyP" role="2OqNvi">
              <ref role="37wK5l" to="asz6:r$A3E5tFQu" resolve="addPlugin" />
              <node concept="2OqwBi" id="r$A3E5xTV4" role="37wK5m">
                <node concept="37vLTw" id="r$A3E5uxDO" role="2Oq$k0">
                  <ref role="3cqZAo" node="QkG2t1byPP" resolve="plugin" />
                </node>
                <node concept="liA8E" id="r$A3E5xUkg" role="2OqNvi">
                  <ref role="37wK5l" node="r$A3E5vYGp" resolve="getDescriptor" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="cofj70HdsK" role="jymVt" />
    <node concept="3clFb_" id="28$8eDn2SGn" role="jymVt">
      <property role="TrG5h" value="addConfigured" />
      <node concept="3cqZAl" id="28$8eDn2SGo" role="3clF45" />
      <node concept="3Tm1VV" id="28$8eDn2SGp" role="1B3o_S" />
      <node concept="3clFbS" id="28$8eDn2SGq" role="3clF47">
        <node concept="3clFbF" id="28$8eDn2SGB" role="3cqZAp">
          <node concept="1rXfSq" id="28$8eDn2SGC" role="3clFbG">
            <ref role="37wK5l" node="28$8eDmZz2T" resolve="addLibraryJar" />
            <node concept="2OqwBi" id="cofj70HXke" role="37wK5m">
              <node concept="37vLTw" id="cofj70HXkf" role="2Oq$k0">
                <ref role="3cqZAo" node="28$8eDn2SGE" resolve="jar" />
              </node>
              <node concept="liA8E" id="cofj70HXkg" role="2OqNvi">
                <ref role="37wK5l" node="3ag$5R8QD_N" resolve="getFile" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="28$8eDn2SGE" role="3clF46">
        <property role="TrG5h" value="jar" />
        <node concept="3uibUv" id="28$8eDn2SGF" role="1tU5fm">
          <ref role="3uigEE" node="3ufQioQQu2K" resolve="ModuleJarDataType" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="28$8eDn0UlL" role="jymVt" />
    <node concept="3clFb_" id="28$8eDmZz2T" role="jymVt">
      <property role="TrG5h" value="addLibraryJar" />
      <property role="DiZV1" value="true" />
      <node concept="3clFbS" id="28$8eDmZz2W" role="3clF47">
        <node concept="3clFbJ" id="4Vsuddjh5hB" role="3cqZAp">
          <node concept="3clFbS" id="4Vsuddjh5hC" role="3clFbx">
            <node concept="3cpWs6" id="4Y7Caw8vzuc" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="4Y7Caw8vyDS" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTAvy" role="3uHU7B">
              <ref role="3cqZAo" node="28$8eDmZDFi" resolve="file" />
            </node>
            <node concept="10Nm6u" id="4Vsuddjh5hL" role="3uHU7w" />
          </node>
        </node>
        <node concept="3clFbF" id="4Vsuddjh5hD" role="3cqZAp">
          <node concept="2OqwBi" id="4Vsuddjh5hE" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuCqq" role="2Oq$k0">
              <ref role="3cqZAo" node="3ufQioQQtje" resolve="myWhatToDo" />
            </node>
            <node concept="liA8E" id="4Vsuddjh5hG" role="2OqNvi">
              <ref role="37wK5l" to="asz6:3GGnItM95YQ" resolve="addLibraryJar" />
              <node concept="2OqwBi" id="4Vsuddjh5hH" role="37wK5m">
                <node concept="37vLTw" id="3GM_nagT_Y_" role="2Oq$k0">
                  <ref role="3cqZAo" node="28$8eDmZDFi" resolve="file" />
                </node>
                <node concept="liA8E" id="4Vsuddjh5hJ" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4Y7Caw8wb_f" role="3cqZAp">
          <node concept="3cpWsn" id="4Y7Caw8wb_g" role="3cpWs9">
            <property role="TrG5h" value="fname" />
            <node concept="3uibUv" id="4Y7Caw8wbxc" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2OqwBi" id="4Y7Caw8wb_h" role="33vP2m">
              <node concept="37vLTw" id="4Y7Caw8wb_i" role="2Oq$k0">
                <ref role="3cqZAo" node="28$8eDmZDFi" resolve="file" />
              </node>
              <node concept="liA8E" id="4Y7Caw8wb_j" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.getName()" resolve="getName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4Y7Caw8vzQO" role="3cqZAp">
          <node concept="3clFbS" id="4Y7Caw8vzQQ" role="3clFbx">
            <node concept="3SKdUt" id="4Y7Caw8v_vM" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXo87r" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXo87s" role="1PaTwD">
                  <property role="3oM_SC" value="perhaps," />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87t" role="1PaTwD">
                  <property role="3oM_SC" value="it's" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87u" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87v" role="1PaTwD">
                  <property role="3oM_SC" value="language.jar," />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87w" role="1PaTwD">
                  <property role="3oM_SC" value="register" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87x" role="1PaTwD">
                  <property role="3oM_SC" value="corresponding" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87y" role="1PaTwD">
                  <property role="3oM_SC" value="generator.jar," />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87z" role="1PaTwD">
                  <property role="3oM_SC" value="if" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87$" role="1PaTwD">
                  <property role="3oM_SC" value="any." />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="4Y7Caw8v_wz" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXo87_" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXo87A" role="1PaTwD">
                  <property role="3oM_SC" value="FIXME" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87B" role="1PaTwD">
                  <property role="3oM_SC" value="note," />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87C" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87D" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87E" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87F" role="1PaTwD">
                  <property role="3oM_SC" value="hack" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87G" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87H" role="1PaTwD">
                  <property role="3oM_SC" value="build" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87I" role="1PaTwD">
                  <property role="3oM_SC" value="language" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87J" role="1PaTwD">
                  <property role="3oM_SC" value="doesn't" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87K" role="1PaTwD">
                  <property role="3oM_SC" value="record" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87L" role="1PaTwD">
                  <property role="3oM_SC" value="generators" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87M" role="1PaTwD">
                  <property role="3oM_SC" value="among" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87N" role="1PaTwD">
                  <property role="3oM_SC" value="MPSModulesClosure.generationDependenciesClosure()" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="4Y7Caw8w5MS" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXo87O" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXo87P" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87Q" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87R" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87S" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87T" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87U" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87V" role="1PaTwD">
                  <property role="3oM_SC" value="(check" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87W" role="1PaTwD">
                  <property role="3oM_SC" value="MPSModulesPartitioner.buildExternalDependencies()" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87X" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87Y" role="1PaTwD">
                  <property role="3oM_SC" value="&lt;generate&gt;" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo87Z" role="1PaTwD">
                  <property role="3oM_SC" value="task" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo880" role="1PaTwD">
                  <property role="3oM_SC" value="template." />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="4Y7Caw8w68G" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXo881" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXo882" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo883" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo884" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo885" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo886" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo887" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo888" role="1PaTwD">
                  <property role="3oM_SC" value="MPS" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo889" role="1PaTwD">
                  <property role="3oM_SC" value="used" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88a" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88b" role="1PaTwD">
                  <property role="3oM_SC" value="guess" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88c" role="1PaTwD">
                  <property role="3oM_SC" value="(aka" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88d" role="1PaTwD">
                  <property role="3oM_SC" value="'derive')" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88e" role="1PaTwD">
                  <property role="3oM_SC" value="generator" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88f" role="1PaTwD">
                  <property role="3oM_SC" value="module" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88g" role="1PaTwD">
                  <property role="3oM_SC" value="from" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88h" role="1PaTwD">
                  <property role="3oM_SC" value="language's" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88i" role="1PaTwD">
                  <property role="3oM_SC" value="module" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88j" role="1PaTwD">
                  <property role="3oM_SC" value="(ProjectPathUtil" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88k" role="1PaTwD">
                  <property role="3oM_SC" value="gave" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88l" role="1PaTwD">
                  <property role="3oM_SC" value="file" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88m" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88n" role="1PaTwD">
                  <property role="3oM_SC" value="&quot;-generator.jar&quot;" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88o" role="1PaTwD">
                  <property role="3oM_SC" value="suffix" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="4Y7Caw8w69D" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXo88p" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXo88q" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88r" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88s" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88t" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88u" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88v" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88w" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88x" role="1PaTwD">
                  <property role="3oM_SC" value="classpath" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88y" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88z" role="1PaTwD">
                  <property role="3oM_SC" value="packaged" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88$" role="1PaTwD">
                  <property role="3oM_SC" value="Generator" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88_" role="1PaTwD">
                  <property role="3oM_SC" value="module)," />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88A" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88B" role="1PaTwD">
                  <property role="3oM_SC" value="2017.1" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88C" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88D" role="1PaTwD">
                  <property role="3oM_SC" value="try" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88E" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88F" role="1PaTwD">
                  <property role="3oM_SC" value="switch" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88G" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88H" role="1PaTwD">
                  <property role="3oM_SC" value="'honest'" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88I" role="1PaTwD">
                  <property role="3oM_SC" value="modules," />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88J" role="1PaTwD">
                  <property role="3oM_SC" value="gradually" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88K" role="1PaTwD">
                  <property role="3oM_SC" value="moving" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88L" role="1PaTwD">
                  <property role="3oM_SC" value="towards" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88M" role="1PaTwD">
                  <property role="3oM_SC" value="generators" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88N" role="1PaTwD">
                  <property role="3oM_SC" value="listed" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="4Y7Caw8w6bg" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXo88O" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXo88P" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88Q" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88R" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88S" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88T" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88U" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88V" role="1PaTwD">
                  <property role="3oM_SC" value="inside" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88W" role="1PaTwD">
                  <property role="3oM_SC" value="&lt;generate&gt;" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88X" role="1PaTwD">
                  <property role="3oM_SC" value="task." />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88Y" role="1PaTwD">
                  <property role="3oM_SC" value="For" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo88Z" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo890" role="1PaTwD">
                  <property role="3oM_SC" value="transition" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo891" role="1PaTwD">
                  <property role="3oM_SC" value="period," />
                </node>
                <node concept="3oM_SD" id="ATZLwXo892" role="1PaTwD">
                  <property role="3oM_SC" value="however," />
                </node>
                <node concept="3oM_SD" id="ATZLwXo893" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo894" role="1PaTwD">
                  <property role="3oM_SC" value="code" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo895" role="1PaTwD">
                  <property role="3oM_SC" value="below" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo896" role="1PaTwD">
                  <property role="3oM_SC" value="mimics" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo897" role="1PaTwD">
                  <property role="3oM_SC" value="what" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo898" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo899" role="1PaTwD">
                  <property role="3oM_SC" value="would" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo89a" role="1PaTwD">
                  <property role="3oM_SC" value="have" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo89b" role="1PaTwD">
                  <property role="3oM_SC" value="explicitly" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo89c" role="1PaTwD">
                  <property role="3oM_SC" value="specified" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo89d" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo89e" role="1PaTwD">
                  <property role="3oM_SC" value="&lt;generate&gt;." />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="28$8eDn1Ix9" role="3cqZAp">
              <node concept="3cpWsn" id="28$8eDn1Ixa" role="3cpWs9">
                <property role="TrG5h" value="stem" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="28$8eDn1IwW" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="28$8eDn1Ixb" role="33vP2m">
                  <node concept="liA8E" id="28$8eDn1Ixc" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                    <node concept="3cmrfG" id="28$8eDn1Ixd" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cpWsd" id="28$8eDn1Ixe" role="37wK5m">
                      <node concept="2OqwBi" id="28$8eDn1Ixf" role="3uHU7B">
                        <node concept="37vLTw" id="28$8eDn1Ixg" role="2Oq$k0">
                          <ref role="3cqZAo" node="4Y7Caw8wb_g" resolve="fname" />
                        </node>
                        <node concept="liA8E" id="28$8eDn1Ixh" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                        </node>
                      </node>
                      <node concept="3cmrfG" id="28$8eDn1Ixi" role="3uHU7w">
                        <property role="3cmrfH" value="4" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="28$8eDn1Ixj" role="2Oq$k0">
                    <ref role="3cqZAo" node="4Y7Caw8wb_g" resolve="fname" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="28$8eDn2hZV" role="3cqZAp">
              <node concept="3cpWsn" id="28$8eDn2hZT" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="maxGeneratorNumberToStopForSure" />
                <node concept="10Oyi0" id="28$8eDn2ieY" role="1tU5fm" />
                <node concept="3cmrfG" id="28$8eDn2iL_" role="33vP2m">
                  <property role="3cmrfH" value="10" />
                </node>
              </node>
            </node>
            <node concept="1Dw8fO" id="28$8eDn2ccU" role="3cqZAp">
              <node concept="3clFbS" id="28$8eDn2ccW" role="2LFqv$">
                <node concept="3SKdUt" id="4Y7Caw8wm4i" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXo89f" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXo89g" role="1PaTwD">
                      <property role="3oM_SC" value="XXX" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89h" role="1PaTwD">
                      <property role="3oM_SC" value="Unless" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89i" role="1PaTwD">
                      <property role="3oM_SC" value="I" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89j" role="1PaTwD">
                      <property role="3oM_SC" value="fix" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89k" role="1PaTwD">
                      <property role="3oM_SC" value="build" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89l" role="1PaTwD">
                      <property role="3oM_SC" value="language" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89m" role="1PaTwD">
                      <property role="3oM_SC" value="templates" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89n" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89o" role="1PaTwD">
                      <property role="3oM_SC" value="list" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89p" role="1PaTwD">
                      <property role="3oM_SC" value="generator.jar" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89q" role="1PaTwD">
                      <property role="3oM_SC" value="explicitly," />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89r" role="1PaTwD">
                      <property role="3oM_SC" value="shall" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89s" role="1PaTwD">
                      <property role="3oM_SC" value="account" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89t" role="1PaTwD">
                      <property role="3oM_SC" value="for" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89u" role="1PaTwD">
                      <property role="3oM_SC" value="lang-N-generator.jar" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89v" role="1PaTwD">
                      <property role="3oM_SC" value="here" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89w" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89x" role="1PaTwD">
                      <property role="3oM_SC" value="support" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89y" role="1PaTwD">
                      <property role="3oM_SC" value="multiple" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89z" role="1PaTwD">
                      <property role="3oM_SC" value="generators" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89$" role="1PaTwD">
                      <property role="3oM_SC" value="per" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89_" role="1PaTwD">
                      <property role="3oM_SC" value="language" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89A" role="1PaTwD">
                      <property role="3oM_SC" value="case." />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4Y7Caw8wg78" role="3cqZAp">
                  <node concept="3cpWsn" id="4Y7Caw8wg79" role="3cpWs9">
                    <property role="TrG5h" value="generatorJar" />
                    <node concept="3uibUv" id="4Y7Caw8wg6Q" role="1tU5fm">
                      <ref role="3uigEE" to="guwi:~File" resolve="File" />
                    </node>
                    <node concept="2ShNRf" id="4Y7Caw8wg7a" role="33vP2m">
                      <node concept="1pGfFk" id="4Y7Caw8wg7b" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="File" />
                        <node concept="2OqwBi" id="4Y7Caw8wg7c" role="37wK5m">
                          <node concept="37vLTw" id="4Y7Caw8wkDa" role="2Oq$k0">
                            <ref role="3cqZAo" node="28$8eDmZDFi" resolve="file" />
                          </node>
                          <node concept="liA8E" id="4Y7Caw8wg7e" role="2OqNvi">
                            <ref role="37wK5l" to="guwi:~File.getParent()" resolve="getParent" />
                          </node>
                        </node>
                        <node concept="3cpWs3" id="4Y7Caw8wg7f" role="37wK5m">
                          <node concept="Xl_RD" id="4Y7Caw8wg7g" role="3uHU7w">
                            <property role="Xl_RC" value="-generator.jar" />
                          </node>
                          <node concept="3cpWs3" id="28$8eDn298m" role="3uHU7B">
                            <node concept="37vLTw" id="28$8eDn1Ixk" role="3uHU7B">
                              <ref role="3cqZAo" node="28$8eDn1Ixa" resolve="stem" />
                            </node>
                            <node concept="1eOMI4" id="28$8eDn2na4" role="3uHU7w">
                              <node concept="3K4zz7" id="28$8eDn2nI1" role="1eOMHV">
                                <node concept="Xl_RD" id="28$8eDn2nN$" role="3K4E3e">
                                  <property role="Xl_RC" value="" />
                                </node>
                                <node concept="3cpWs3" id="28$8eDn2ucD" role="3K4GZi">
                                  <node concept="2YIFZM" id="28$8eDn2w8x" role="3uHU7w">
                                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                                    <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                                    <node concept="37vLTw" id="28$8eDn2xY9" role="37wK5m">
                                      <ref role="3cqZAo" node="28$8eDn2ccX" resolve="i" />
                                    </node>
                                  </node>
                                  <node concept="1Xhbcc" id="28$8eDn2nSV" role="3uHU7B">
                                    <property role="1XhdNS" value="-" />
                                  </node>
                                </node>
                                <node concept="3clFbC" id="28$8eDn2jXs" role="3K4Cdx">
                                  <node concept="37vLTw" id="28$8eDn2js9" role="3uHU7B">
                                    <ref role="3cqZAo" node="28$8eDn2ccX" resolve="i" />
                                  </node>
                                  <node concept="3cmrfG" id="28$8eDn2lGM" role="3uHU7w">
                                    <property role="3cmrfH" value="0" />
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
                <node concept="3clFbJ" id="4Y7Caw8wir9" role="3cqZAp">
                  <node concept="3clFbS" id="4Y7Caw8wirb" role="3clFbx">
                    <node concept="3clFbF" id="4Y7Caw8w6ei" role="3cqZAp">
                      <node concept="2OqwBi" id="4Y7Caw8w6lo" role="3clFbG">
                        <node concept="37vLTw" id="4Y7Caw8w6eg" role="2Oq$k0">
                          <ref role="3cqZAo" node="3ufQioQQtje" resolve="myWhatToDo" />
                        </node>
                        <node concept="liA8E" id="4Y7Caw8w6uP" role="2OqNvi">
                          <ref role="37wK5l" to="asz6:3GGnItM95YQ" resolve="addLibraryJar" />
                          <node concept="2OqwBi" id="4Y7Caw8wl0J" role="37wK5m">
                            <node concept="37vLTw" id="4Y7Caw8wky3" role="2Oq$k0">
                              <ref role="3cqZAo" node="4Y7Caw8wg79" resolve="generatorJar" />
                            </node>
                            <node concept="liA8E" id="4Y7Caw8wle4" role="2OqNvi">
                              <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4Y7Caw8wj1X" role="3clFbw">
                    <node concept="37vLTw" id="4Y7Caw8wiUr" role="2Oq$k0">
                      <ref role="3cqZAo" node="4Y7Caw8wg79" resolve="generatorJar" />
                    </node>
                    <node concept="liA8E" id="4Y7Caw8wja4" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~File.isFile()" resolve="isFile" />
                    </node>
                  </node>
                  <node concept="9aQIb" id="28$8eDn2ba9" role="9aQIa">
                    <node concept="3clFbS" id="28$8eDn2baa" role="9aQI4">
                      <node concept="3SKdUt" id="28$8eDn2_O4" role="3cqZAp">
                        <node concept="1PaTwC" id="ATZLwXo89B" role="1aUNEU">
                          <node concept="3oM_SD" id="ATZLwXo89C" role="1PaTwD">
                            <property role="3oM_SC" value="expect" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXo89D" role="1PaTwD">
                            <property role="3oM_SC" value="consecutive" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXo89E" role="1PaTwD">
                            <property role="3oM_SC" value="mudule" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXo89F" role="1PaTwD">
                            <property role="3oM_SC" value="numbering" />
                          </node>
                        </node>
                      </node>
                      <node concept="3zACq4" id="28$8eDn2bem" role="3cqZAp" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="jVJrchjdya" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXo89G" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXo89H" role="1PaTwD">
                      <property role="3oM_SC" value="FIXME" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89I" role="1PaTwD">
                      <property role="3oM_SC" value="there's" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89J" role="1PaTwD">
                      <property role="3oM_SC" value="similar" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89K" role="1PaTwD">
                      <property role="3oM_SC" value="code" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89L" role="1PaTwD">
                      <property role="3oM_SC" value="in" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89M" role="1PaTwD">
                      <property role="3oM_SC" value="MpsTestSuite," />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89N" role="1PaTwD">
                      <property role="3oM_SC" value="but" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89O" role="1PaTwD">
                      <property role="3oM_SC" value="not" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89P" role="1PaTwD">
                      <property role="3oM_SC" value="in" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89Q" role="1PaTwD">
                      <property role="3oM_SC" value="jUnit" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXo89R" role="1PaTwD">
                      <property role="3oM_SC" value="launcher" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="28$8eDn2ccX" role="1Duv9x">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="28$8eDn2ct1" role="1tU5fm" />
                <node concept="3cmrfG" id="28$8eDn2cxE" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3eOVzh" id="28$8eDn2dbW" role="1Dwp0S">
                <node concept="37vLTw" id="28$8eDn2jla" role="3uHU7w">
                  <ref role="3cqZAo" node="28$8eDn2hZT" resolve="maxGeneratorNumberToStopForSure" />
                </node>
                <node concept="37vLTw" id="28$8eDn2czs" role="3uHU7B">
                  <ref role="3cqZAo" node="28$8eDn2ccX" resolve="i" />
                </node>
              </node>
              <node concept="3uNrnE" id="28$8eDn2dMO" role="1Dwrff">
                <node concept="37vLTw" id="28$8eDn2dMQ" role="2$L3a6">
                  <ref role="3cqZAo" node="28$8eDn2ccX" resolve="i" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="4Y7Caw8v$uL" role="3clFbw">
            <node concept="2OqwBi" id="4Y7Caw8v$Qq" role="3uHU7B">
              <node concept="37vLTw" id="4Y7Caw8v$Ez" role="2Oq$k0">
                <ref role="3cqZAo" node="28$8eDmZDFi" resolve="file" />
              </node>
              <node concept="liA8E" id="4Y7Caw8v_2Q" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.isFile()" resolve="isFile" />
              </node>
            </node>
            <node concept="2OqwBi" id="4Y7Caw8v_cA" role="3uHU7w">
              <node concept="37vLTw" id="4Y7Caw8wb_l" role="2Oq$k0">
                <ref role="3cqZAo" node="4Y7Caw8wb_g" resolve="fname" />
              </node>
              <node concept="liA8E" id="4Y7Caw8v_nQ" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                <node concept="Xl_RD" id="4Y7Caw8v_qq" role="37wK5m">
                  <property role="Xl_RC" value=".jar" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="28$8eDmZuCh" role="1B3o_S" />
      <node concept="3cqZAl" id="28$8eDmZz1G" role="3clF45" />
      <node concept="37vLTG" id="28$8eDmZDFi" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="3uibUv" id="28$8eDmZDFh" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="P$JXv" id="28$8eDn10P7" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs_nc" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_nd" role="1PaTwD">
            <property role="3oM_SC" value="handy" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_ne" role="1PaTwD">
            <property role="3oM_SC" value="alternative" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_nf" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_ng" role="1PaTwD">
            <property role="3oM_SC" value="myWhatToDo.addLibraryJar()," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_nh" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_ni" role="1PaTwD">
            <property role="3oM_SC" value="hardcoded" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_nj" role="1PaTwD">
            <property role="3oM_SC" value="knowledge" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_nk" role="1PaTwD">
            <property role="3oM_SC" value="about" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_nl" role="1PaTwD">
            <property role="3oM_SC" value="generator" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_nm" role="1PaTwD">
            <property role="3oM_SC" value="modules" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_nn" role="1PaTwD">
            <property role="3oM_SC" value="distributed" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_no" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_np" role="1PaTwD">
            <property role="3oM_SC" value="distinct" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_nq" role="1PaTwD">
            <property role="3oM_SC" value="jars" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4vDU0BPycGH" role="jymVt" />
    <node concept="3clFb_" id="4vDU0BPyiY6" role="jymVt">
      <property role="TrG5h" value="setWorker" />
      <property role="DiZV1" value="true" />
      <node concept="3cqZAl" id="4vDU0BPyiY8" role="3clF45" />
      <node concept="3Tm1VV" id="4vDU0BPyiY9" role="1B3o_S" />
      <node concept="3clFbS" id="4vDU0BPyiYa" role="3clF47">
        <node concept="3clFbF" id="4vDU0BPyzGX" role="3cqZAp">
          <node concept="37vLTI" id="4vDU0BPy$7P" role="3clFbG">
            <node concept="37vLTw" id="4vDU0BPy$vs" role="37vLTx">
              <ref role="3cqZAo" node="4vDU0BPytkV" resolve="workerClass" />
            </node>
            <node concept="37vLTw" id="4vDU0BPyzGW" role="37vLTJ">
              <ref role="3cqZAo" node="4vDU0BPy5F9" resolve="myWorkerClass" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4vDU0BPytkV" role="3clF46">
        <property role="TrG5h" value="workerClass" />
        <node concept="3uibUv" id="4vDU0BPytkU" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4vDU0BPy$KG" role="jymVt" />
    <node concept="3clFb_" id="4vDU0BPyKWd" role="jymVt">
      <property role="TrG5h" value="getWorker" />
      <property role="DiZV1" value="true" />
      <node concept="3clFbS" id="4vDU0BPyKWg" role="3clF47">
        <node concept="3clFbF" id="4vDU0BPz2j7" role="3cqZAp">
          <node concept="37vLTw" id="4vDU0BPz2j6" role="3clFbG">
            <ref role="3cqZAo" node="4vDU0BPy5F9" resolve="myWorkerClass" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4vDU0BPyF3P" role="1B3o_S" />
      <node concept="3uibUv" id="4vDU0BPyKiY" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2tJIrI" id="g9$9d2_YNq" role="jymVt" />
    <node concept="3clFb_" id="g9$9d2AipS" role="jymVt">
      <property role="TrG5h" value="finalizeScriptSettings" />
      <node concept="3clFbS" id="g9$9d2AipV" role="3clF47">
        <node concept="3clFbJ" id="3ufQioQQtnW" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuxRw" role="3clFbw">
            <ref role="3cqZAo" node="3ufQioQQtjj" resolve="myUsePropertiesAsMacro" />
          </node>
          <node concept="3clFbS" id="3ufQioQQtnY" role="3clFbx">
            <node concept="3cpWs8" id="3ufQioQQtnZ" role="3cqZAp">
              <node concept="3cpWsn" id="3ufQioQQto0" role="3cpWs9">
                <property role="TrG5h" value="properties" />
                <property role="3TUv4t" value="false" />
                <node concept="3uibUv" id="3ufQioQQto1" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Hashtable" resolve="Hashtable" />
                </node>
                <node concept="2OqwBi" id="3ufQioQQto2" role="33vP2m">
                  <node concept="1rXfSq" id="4hiugqyyHVZ" role="2Oq$k0">
                    <ref role="37wK5l" to="gola:~ProjectComponent.getProject()" resolve="getProject" />
                  </node>
                  <node concept="liA8E" id="3ufQioQQto4" role="2OqNvi">
                    <ref role="37wK5l" to="gola:~Project.getProperties()" resolve="getProperties" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="3ufQioQQto5" role="3cqZAp">
              <node concept="2OqwBi" id="3ufQioQQto6" role="1DdaDG">
                <node concept="37vLTw" id="3GM_nagTxd4" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ufQioQQto0" resolve="properties" />
                </node>
                <node concept="liA8E" id="3ufQioQQto8" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Hashtable.keySet()" resolve="keySet" />
                </node>
              </node>
              <node concept="3cpWsn" id="3ufQioQQto9" role="1Duv9x">
                <property role="TrG5h" value="name" />
                <property role="3TUv4t" value="false" />
                <node concept="3uibUv" id="3ufQioQQtoa" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="3clFbS" id="3ufQioQQtob" role="2LFqv$">
                <node concept="3cpWs8" id="3ufQioQQtoc" role="3cqZAp">
                  <node concept="3cpWsn" id="3ufQioQQtod" role="3cpWs9">
                    <property role="TrG5h" value="value" />
                    <property role="3TUv4t" value="false" />
                    <node concept="3uibUv" id="3ufQioQQtoe" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                    <node concept="2OqwBi" id="3ufQioQQtof" role="33vP2m">
                      <node concept="37vLTw" id="3GM_nagT$0A" role="2Oq$k0">
                        <ref role="3cqZAo" node="3ufQioQQto0" resolve="properties" />
                      </node>
                      <node concept="liA8E" id="3ufQioQQtoh" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Hashtable.get(java.lang.Object)" resolve="get" />
                        <node concept="37vLTw" id="3GM_nagTr4V" role="37wK5m">
                          <ref role="3cqZAo" node="3ufQioQQto9" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3ufQioQQtoj" role="3cqZAp">
                  <node concept="2OqwBi" id="3ufQioQQtok" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxeusxd" role="2Oq$k0">
                      <ref role="3cqZAo" node="g9$9d2Au4y" resolve="whatToDo" />
                    </node>
                    <node concept="liA8E" id="3ufQioQQtom" role="2OqNvi">
                      <ref role="37wK5l" to="asz6:KL8Aql8ev6" resolve="addMacro" />
                      <node concept="10QFUN" id="3ufQioQQton" role="37wK5m">
                        <node concept="37vLTw" id="3GM_nagTBps" role="10QFUP">
                          <ref role="3cqZAo" node="3ufQioQQto9" resolve="name" />
                        </node>
                        <node concept="17QB3L" id="2uUiGxAaMIl" role="10QFUM" />
                      </node>
                      <node concept="10QFUN" id="3ufQioQQtoq" role="37wK5m">
                        <node concept="37vLTw" id="3GM_nagTy7V" role="10QFUP">
                          <ref role="3cqZAo" node="3ufQioQQtod" resolve="value" />
                        </node>
                        <node concept="17QB3L" id="2uUiGxAaMGW" role="10QFUM" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="g9$9d2A6Jv" role="1B3o_S" />
      <node concept="3cqZAl" id="g9$9d2Ahpe" role="3clF45" />
      <node concept="37vLTG" id="g9$9d2Au4y" role="3clF46">
        <property role="TrG5h" value="whatToDo" />
        <node concept="3uibUv" id="g9$9d2Au4x" role="1tU5fm">
          <ref role="3uigEE" to="asz6:KL8Aql8enO" resolve="Script" />
        </node>
      </node>
      <node concept="P$JXv" id="g9$9d2ACe8" role="lGtFl">
        <node concept="TUZQ0" id="g9$9d2ACeb" role="3nqlJM">
          <property role="TUZQ4" value="" />
          <node concept="zr_55" id="g9$9d2ACed" role="zr_5Q">
            <ref role="zr_51" node="g9$9d2Au4y" resolve="whatToDo" />
          </node>
          <node concept="1PaTwC" id="1E1X3WHs_nW" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHs_nX" role="1PaTwD">
              <property role="3oM_SC" value="description" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_nY" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_nZ" role="1PaTwD">
              <property role="3oM_SC" value="what" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_o0" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_o1" role="1PaTwD">
              <property role="3oM_SC" value="how" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_o2" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_o3" role="1PaTwD">
              <property role="3oM_SC" value="run" />
            </node>
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_nr" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_ns" role="1PaTwD">
            <property role="3oM_SC" value="Gives" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_nt" role="1PaTwD">
            <property role="3oM_SC" value="subclasses" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_nu" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_nv" role="1PaTwD">
            <property role="3oM_SC" value="chance" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_nw" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_nx" role="1PaTwD">
            <property role="3oM_SC" value="put" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_ny" role="1PaTwD">
            <property role="3oM_SC" value="anything" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_nz" role="1PaTwD">
            <property role="3oM_SC" value="necessary" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_n$" role="1PaTwD">
            <property role="3oM_SC" value="into" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_n_" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_nA" role="1PaTwD">
            <property role="3oM_SC" value="script" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_nB" role="1PaTwD">
            <property role="3oM_SC" value="prior" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_nC" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="1Vtdud" id="1E1X3WHs_nD" role="1PaTwD">
            <node concept="1VuXuv" id="1E1X3WHs_nE" role="1Vtduc">
              <node concept="VXe0Z" id="g9$9d2AMFf" role="1VuXuu">
                <ref role="VXe0S" node="3ufQioQQtnL" resolve="execute" />
              </node>
              <node concept="1PaTwC" id="1E1X3WHs_nH" role="2JaDBN">
                <node concept="3oM_SD" id="1E1X3WHs_nI" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_nJ" role="1PaTwD">
            <property role="3oM_SC" value="." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_nK" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_nL" role="1PaTwD">
            <property role="3oM_SC" value="If" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_nM" role="1PaTwD">
            <property role="3oM_SC" value="you" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_nN" role="1PaTwD">
            <property role="3oM_SC" value="override" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_nO" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_nP" role="1PaTwD">
            <property role="3oM_SC" value="method," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_nQ" role="1PaTwD">
            <property role="3oM_SC" value="don't" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_nR" role="1PaTwD">
            <property role="3oM_SC" value="forget" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_nS" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_nT" role="1PaTwD">
            <property role="3oM_SC" value="invoke" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_nU" role="1PaTwD">
            <property role="3oM_SC" value="super" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_nV" role="1PaTwD">
            <property role="3oM_SC" value="implementation" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_4F7FNq2WB" role="jymVt" />
    <node concept="3clFb_" id="3ufQioQQtnL" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="execute" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3ufQioQQtnM" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQtnN" role="3clF45" />
      <node concept="3clFbS" id="3ufQioQQtnO" role="3clF47">
        <node concept="3SKdUt" id="1hBlbKC7Mmg" role="3cqZAp">
          <node concept="1PaTwC" id="1hBlbKC7Mmh" role="1aUNEU">
            <node concept="3oM_SD" id="1hBlbKC7Mmi" role="1PaTwD">
              <property role="3oM_SC" value="first," />
            </node>
            <node concept="3oM_SD" id="1hBlbKC7X_5" role="1PaTwD">
              <property role="3oM_SC" value="let" />
            </node>
            <node concept="3oM_SD" id="1hBlbKC7X_7" role="1PaTwD">
              <property role="3oM_SC" value="subclasses" />
            </node>
            <node concept="3oM_SD" id="1hBlbKC7XCw" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="1hBlbKC7XCx" role="1PaTwD">
              <property role="3oM_SC" value="last" />
            </node>
            <node concept="3oM_SD" id="1hBlbKC7XJi" role="1PaTwD">
              <property role="3oM_SC" value="changes" />
            </node>
            <node concept="3oM_SD" id="1hBlbKC7XMF" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1hBlbKC7XMG" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1hBlbKC7XMH" role="1PaTwD">
              <property role="3oM_SC" value="configuration," />
            </node>
            <node concept="3oM_SD" id="1hBlbKC7XMI" role="1PaTwD">
              <property role="3oM_SC" value="then," />
            </node>
            <node concept="3oM_SD" id="1hBlbKC7XQ7" role="1PaTwD">
              <property role="3oM_SC" value="everything" />
            </node>
            <node concept="3oM_SD" id="1hBlbKC7XS6" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="1hBlbKC7Y2h" role="1PaTwD">
              <property role="3oM_SC" value="ready" />
            </node>
            <node concept="3oM_SD" id="1hBlbKC7Y2i" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1hBlbKC7Y2j" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="1hBlbKC7Y2k" role="1PaTwD">
              <property role="3oM_SC" value="error" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="g9$9d2BuAC" role="3cqZAp">
          <node concept="1rXfSq" id="g9$9d2BuAA" role="3clFbG">
            <ref role="37wK5l" node="g9$9d2AipS" resolve="finalizeScriptSettings" />
            <node concept="37vLTw" id="g9$9d2BCBJ" role="37wK5m">
              <ref role="3cqZAo" node="3ufQioQQtje" resolve="myWhatToDo" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4vDU0BP_vDF" role="3cqZAp">
          <node concept="3clFbS" id="4vDU0BP_vDH" role="3clFbx">
            <node concept="YS8fn" id="4vDU0BPzkAp" role="3cqZAp">
              <node concept="2ShNRf" id="4vDU0BPzpQq" role="YScLw">
                <node concept="1pGfFk" id="4vDU0BPzqP2" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="4vDU0BP_QN7" role="37wK5m">
                    <property role="Xl_RC" value="Please specify 'worker' class to execute" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4vDU0BP__wF" role="3clFbw">
            <node concept="10Nm6u" id="4vDU0BP__xU" role="3uHU7w" />
            <node concept="1rXfSq" id="1hBlbKC7fU8" role="3uHU7B">
              <ref role="37wK5l" node="4vDU0BPyKWd" resolve="getWorker" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3QFNug6zPhh" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo89S" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo89T" role="1PaTwD">
              <property role="3oM_SC" value="By" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo89U" role="1PaTwD">
              <property role="3oM_SC" value="default," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo89V" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo89W" role="1PaTwD">
              <property role="3oM_SC" value="build" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo89X" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo89Y" role="1PaTwD">
              <property role="3oM_SC" value="classpath" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo89Z" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8a0" role="1PaTwD">
              <property role="3oM_SC" value="presumably" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8a1" role="1PaTwD">
              <property role="3oM_SC" value="contains" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8a2" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8a3" role="1PaTwD">
              <property role="3oM_SC" value="necessary" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8a4" role="1PaTwD">
              <property role="3oM_SC" value="MPS" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8a5" role="1PaTwD">
              <property role="3oM_SC" value="jars" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8a6" role="1PaTwD">
              <property role="3oM_SC" value="(expecting" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8a7" role="1PaTwD">
              <property role="3oM_SC" value="MpsEnvironment" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8a8" role="1PaTwD">
              <property role="3oM_SC" value="or" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8a9" role="1PaTwD">
              <property role="3oM_SC" value="even" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8aa" role="1PaTwD">
              <property role="3oM_SC" value="IdeaEnvironment" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8ab" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8ac" role="1PaTwD">
              <property role="3oM_SC" value="fire" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8ad" role="1PaTwD">
              <property role="3oM_SC" value="up)" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3uHpWKwwPIH" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo8ae" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo8af" role="1PaTwD">
              <property role="3oM_SC" value="though" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8ag" role="1PaTwD">
              <property role="3oM_SC" value="specific" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8ah" role="1PaTwD">
              <property role="3oM_SC" value="task" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8ai" role="1PaTwD">
              <property role="3oM_SC" value="subclasses" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8aj" role="1PaTwD">
              <property role="3oM_SC" value="have" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8ak" role="1PaTwD">
              <property role="3oM_SC" value="control" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8al" role="1PaTwD">
              <property role="3oM_SC" value="over" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8am" role="1PaTwD">
              <property role="3oM_SC" value="what" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8an" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8ao" role="1PaTwD">
              <property role="3oM_SC" value="include" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8ap" role="1PaTwD">
              <property role="3oM_SC" value="there." />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8aq" role="1PaTwD">
              <property role="3oM_SC" value="Unfortunately," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8ar" role="1PaTwD">
              <property role="3oM_SC" value="there's" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8as" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8at" role="1PaTwD">
              <property role="3oM_SC" value="yet" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8au" role="1PaTwD">
              <property role="3oM_SC" value="fine-grained" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8av" role="1PaTwD">
              <property role="3oM_SC" value="control" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8aw" role="1PaTwD">
              <property role="3oM_SC" value="e.g." />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8ax" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8ay" role="1PaTwD">
              <property role="3oM_SC" value="include" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3uHpWKwx34R" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo8az" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo8a$" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8a_" role="1PaTwD">
              <property role="3oM_SC" value="jars" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8aA" role="1PaTwD">
              <property role="3oM_SC" value="sufficient" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8aB" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8aC" role="1PaTwD">
              <property role="3oM_SC" value="MpsEnvironment" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8aD" role="1PaTwD">
              <property role="3oM_SC" value="(i.e." />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8aE" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8aF" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8aG" role="1PaTwD">
              <property role="3oM_SC" value="include" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8aH" role="1PaTwD">
              <property role="3oM_SC" value="any" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8aI" role="1PaTwD">
              <property role="3oM_SC" value="IDEA" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8aJ" role="1PaTwD">
              <property role="3oM_SC" value="stuff)" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3ufQioQQtnR" role="3cqZAp">
          <node concept="3cpWsn" id="3ufQioQQtnS" role="3cpWs9">
            <property role="TrG5h" value="classPaths" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="3ufQioQQtnT" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="3ufQioQQtnU" role="11_B2D">
                <ref role="3uigEE" to="guwi:~File" resolve="File" />
              </node>
            </node>
            <node concept="1rXfSq" id="4hiugqyyHVP" role="33vP2m">
              <ref role="37wK5l" node="3ufQioQQtwU" resolve="calculateClassPath" />
              <node concept="37vLTw" id="6IC6gZqF6P1" role="37wK5m">
                <ref role="3cqZAo" node="3ufQioQQtjn" resolve="myFork" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3ufQioQQtot" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuq7M" role="3clFbw">
            <ref role="3cqZAo" node="3ufQioQQtjn" resolve="myFork" />
          </node>
          <node concept="9aQIb" id="3ufQioQQtov" role="9aQIa">
            <node concept="3clFbS" id="3ufQioQQtow" role="9aQI4">
              <node concept="3cpWs8" id="3ufQioQQtox" role="3cqZAp">
                <node concept="3cpWsn" id="3ufQioQQtoy" role="3cpWs9">
                  <property role="TrG5h" value="classPathUrls" />
                  <property role="3TUv4t" value="false" />
                  <node concept="3uibUv" id="3ufQioQQtoz" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="3ufQioQQto$" role="11_B2D">
                      <ref role="3uigEE" to="zf81:~URL" resolve="URL" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="3ufQioQQto_" role="33vP2m">
                    <node concept="1pGfFk" id="3ufQioQQtoA" role="2ShVmc">
                      <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                      <node concept="3uibUv" id="3ufQioQQtoB" role="1pMfVU">
                        <ref role="3uigEE" to="zf81:~URL" resolve="URL" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1DcWWT" id="3ufQioQQtoC" role="3cqZAp">
                <node concept="37vLTw" id="3GM_nagTryd" role="1DdaDG">
                  <ref role="3cqZAo" node="3ufQioQQtnS" resolve="classPaths" />
                </node>
                <node concept="3cpWsn" id="3ufQioQQtoE" role="1Duv9x">
                  <property role="TrG5h" value="path" />
                  <property role="3TUv4t" value="false" />
                  <node concept="3uibUv" id="3ufQioQQtoF" role="1tU5fm">
                    <ref role="3uigEE" to="guwi:~File" resolve="File" />
                  </node>
                </node>
                <node concept="3clFbS" id="3ufQioQQtoG" role="2LFqv$">
                  <node concept="3J1_TO" id="3ufQioQQtoH" role="3cqZAp">
                    <node concept="3clFbS" id="3ufQioQQtoQ" role="1zxBo7">
                      <node concept="3clFbF" id="3ufQioQQtoR" role="3cqZAp">
                        <node concept="2OqwBi" id="3ufQioQQtoS" role="3clFbG">
                          <node concept="37vLTw" id="3GM_nagTv_j" role="2Oq$k0">
                            <ref role="3cqZAo" node="3ufQioQQtoy" resolve="classPathUrls" />
                          </node>
                          <node concept="liA8E" id="3ufQioQQtoU" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                            <node concept="1rXfSq" id="5JXeQM0vQFw" role="37wK5m">
                              <ref role="37wK5l" node="5JXeQM0vQFr" resolve="fileToUrl" />
                              <node concept="37vLTw" id="5JXeQM0vQFv" role="37wK5m">
                                <ref role="3cqZAo" node="3ufQioQQtoE" resolve="path" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3uVAMA" id="3ufQioQQtoI" role="1zxBo5">
                      <node concept="XOnhg" id="3ufQioQQtoO" role="1zc67B">
                        <property role="3TUv4t" value="false" />
                        <property role="TrG5h" value="e" />
                        <node concept="nSUau" id="xvs04dGs3c" role="1tU5fm">
                          <node concept="3uibUv" id="3ufQioQQtoP" role="nSUat">
                            <ref role="3uigEE" to="zf81:~MalformedURLException" resolve="MalformedURLException" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="3ufQioQQtoJ" role="1zc67A">
                        <node concept="YS8fn" id="3ufQioQQtoK" role="3cqZAp">
                          <node concept="2ShNRf" id="3ufQioQQtoL" role="YScLw">
                            <node concept="1pGfFk" id="3ufQioQQtoM" role="2ShVmc">
                              <ref role="37wK5l" to="gola:~BuildException.&lt;init&gt;(java.lang.Throwable)" resolve="BuildException" />
                              <node concept="37vLTw" id="3GM_nagTsFy" role="37wK5m">
                                <ref role="3cqZAo" node="3ufQioQQtoO" resolve="e" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="3ufQioQQtp8" role="3cqZAp">
                <node concept="3cpWsn" id="3ufQioQQtp9" role="3cpWs9">
                  <property role="TrG5h" value="classLoader" />
                  <property role="3TUv4t" value="false" />
                  <node concept="3uibUv" id="3ufQioQQtpa" role="1tU5fm">
                    <ref role="3uigEE" to="zf81:~URLClassLoader" resolve="URLClassLoader" />
                  </node>
                  <node concept="2ShNRf" id="3ufQioQQtpb" role="33vP2m">
                    <node concept="1pGfFk" id="3ufQioQQtpc" role="2ShVmc">
                      <ref role="37wK5l" to="zf81:~URLClassLoader.&lt;init&gt;(java.net.URL[],java.lang.ClassLoader)" resolve="URLClassLoader" />
                      <node concept="2OqwBi" id="3ufQioQQtpd" role="37wK5m">
                        <node concept="37vLTw" id="3GM_nagTByB" role="2Oq$k0">
                          <ref role="3cqZAo" node="3ufQioQQtoy" resolve="classPathUrls" />
                        </node>
                        <node concept="liA8E" id="3ufQioQQtpf" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.toArray(java.lang.Object[])" resolve="toArray" />
                          <node concept="2ShNRf" id="3ufQioQQtpg" role="37wK5m">
                            <node concept="3$_iS1" id="3ufQioQQtph" role="2ShVmc">
                              <node concept="3$GHV9" id="3ufQioQQtpi" role="3$GQph">
                                <node concept="2OqwBi" id="3ufQioQQtpj" role="3$I4v7">
                                  <node concept="37vLTw" id="3GM_nagTzFC" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3ufQioQQtoy" resolve="classPathUrls" />
                                  </node>
                                  <node concept="liA8E" id="3ufQioQQtpl" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3uibUv" id="3ufQioQQtpm" role="3$_nBY">
                                <ref role="3uigEE" to="zf81:~URL" resolve="URL" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3ufQioQQtpn" role="37wK5m">
                        <node concept="1rXfSq" id="3QFNug6$cj$" role="2Oq$k0">
                          <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                        </node>
                        <node concept="liA8E" id="3ufQioQQtpp" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Class.getClassLoader()" resolve="getClassLoader" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="gQDJKNdiRq" role="3cqZAp">
                <node concept="3cpWsn" id="gQDJKNdiRo" role="3cpWs9">
                  <property role="3TUv4t" value="true" />
                  <property role="TrG5h" value="threadContextCL" />
                  <node concept="3uibUv" id="gQDJKNdjHH" role="1tU5fm">
                    <ref role="3uigEE" to="wyt6:~ClassLoader" resolve="ClassLoader" />
                  </node>
                  <node concept="2OqwBi" id="gQDJKNdkMz" role="33vP2m">
                    <node concept="2YIFZM" id="gQDJKNdkAi" role="2Oq$k0">
                      <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                      <ref role="37wK5l" to="wyt6:~Thread.currentThread()" resolve="currentThread" />
                    </node>
                    <node concept="liA8E" id="gQDJKNdkZl" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Thread.getContextClassLoader()" resolve="getContextClassLoader" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3J1_TO" id="gQDJKNdl8P" role="3cqZAp">
                <node concept="3clFbS" id="3ufQioQQtpH" role="1zxBo7">
                  <node concept="3clFbF" id="3RhXwLD0ObW" role="3cqZAp">
                    <node concept="2OqwBi" id="3RhXwLD0OFS" role="3clFbG">
                      <node concept="2YIFZM" id="3RhXwLD0OBI" role="2Oq$k0">
                        <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                        <ref role="37wK5l" to="wyt6:~Thread.currentThread()" resolve="currentThread" />
                      </node>
                      <node concept="liA8E" id="3RhXwLD0P5V" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Thread.setContextClassLoader(java.lang.ClassLoader)" resolve="setContextClassLoader" />
                        <node concept="37vLTw" id="3RhXwLD0Pg0" role="37wK5m">
                          <ref role="3cqZAo" node="3ufQioQQtp9" resolve="classLoader" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="3ufQioQQtq3" role="3cqZAp">
                    <node concept="3cpWsn" id="3ufQioQQtq4" role="3cpWs9">
                      <property role="TrG5h" value="workerClass" />
                      <property role="3TUv4t" value="false" />
                      <node concept="3uibUv" id="3ufQioQQtq5" role="1tU5fm">
                        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                        <node concept="3qTvmN" id="3ufQioQQtq6" role="11_B2D" />
                      </node>
                      <node concept="2OqwBi" id="3ufQioQQtq7" role="33vP2m">
                        <node concept="37vLTw" id="3GM_nagTxy2" role="2Oq$k0">
                          <ref role="3cqZAo" node="3ufQioQQtp9" resolve="classLoader" />
                        </node>
                        <node concept="liA8E" id="3ufQioQQtq9" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~ClassLoader.loadClass(java.lang.String)" resolve="loadClass" />
                          <node concept="1rXfSq" id="4hiugqyza05" role="37wK5m">
                            <ref role="37wK5l" node="4vDU0BPyKWd" resolve="getWorker" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1XAHtgEDsaN" role="3cqZAp">
                    <node concept="1rXfSq" id="1XAHtgEDsaL" role="3clFbG">
                      <ref role="37wK5l" node="1XAHtgECVZn" resolve="doInProcessWork" />
                      <node concept="37vLTw" id="1XAHtgEDsYq" role="37wK5m">
                        <ref role="3cqZAo" node="3ufQioQQtq4" resolve="workerClass" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uVAMA" id="1XAHtgEGE8j" role="1zxBo5">
                  <node concept="XOnhg" id="1XAHtgEGE8k" role="1zc67B">
                    <property role="3TUv4t" value="false" />
                    <property role="TrG5h" value="ex" />
                    <node concept="nSUau" id="xvs04dGs3g" role="1tU5fm">
                      <node concept="3uibUv" id="1XAHtgEGEOG" role="nSUat">
                        <ref role="3uigEE" to="gola:~BuildException" resolve="BuildException" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="1XAHtgEGE8m" role="1zc67A">
                    <node concept="YS8fn" id="1XAHtgEGFqi" role="3cqZAp">
                      <node concept="37vLTw" id="1XAHtgEGFx8" role="YScLw">
                        <ref role="3cqZAo" node="1XAHtgEGE8k" resolve="ex" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uVAMA" id="3ufQioQQtpr" role="1zxBo5">
                  <node concept="XOnhg" id="3ufQioQQtpF" role="1zc67B">
                    <property role="3TUv4t" value="false" />
                    <property role="TrG5h" value="t" />
                    <node concept="nSUau" id="xvs04dGs3i" role="1tU5fm">
                      <node concept="3uibUv" id="3ufQioQQtpG" role="nSUat">
                        <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="3ufQioQQtps" role="1zc67A">
                    <node concept="3clFbJ" id="6NgXkpAZm1i" role="3cqZAp">
                      <node concept="1Wc70l" id="6NgXkpAZm1j" role="3clFbw">
                        <node concept="2ZW3vV" id="6NgXkpAZm1m" role="3uHU7B">
                          <node concept="37vLTw" id="6NgXkpAZm1k" role="2ZW6bz">
                            <ref role="3cqZAo" node="3ufQioQQtpF" resolve="t" />
                          </node>
                          <node concept="3uibUv" id="6NgXkpAZm1l" role="2ZW6by">
                            <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
                          </node>
                        </node>
                        <node concept="2ZW3vV" id="6NgXkpAZm1q" role="3uHU7w">
                          <node concept="2OqwBi" id="6NgXkpAZm2u" role="2ZW6bz">
                            <node concept="37vLTw" id="6NgXkpAZm2t" role="2Oq$k0">
                              <ref role="3cqZAo" node="3ufQioQQtpF" resolve="t" />
                            </node>
                            <node concept="liA8E" id="6NgXkpAZm2v" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Throwable.getCause()" resolve="getCause" />
                            </node>
                          </node>
                          <node concept="3uibUv" id="6NgXkpAZm1p" role="2ZW6by">
                            <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="6NgXkpAZm1s" role="3clFbx">
                        <node concept="3clFbF" id="6NgXkpAZm1t" role="3cqZAp">
                          <node concept="37vLTI" id="6NgXkpAZm1u" role="3clFbG">
                            <node concept="2OqwBi" id="6NgXkpAZm2y" role="37vLTx">
                              <node concept="37vLTw" id="6NgXkpAZm2x" role="2Oq$k0">
                                <ref role="3cqZAo" node="3ufQioQQtpF" resolve="t" />
                              </node>
                              <node concept="liA8E" id="6NgXkpAZm2z" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~Throwable.getCause()" resolve="getCause" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="6NgXkpAZm1v" role="37vLTJ">
                              <ref role="3cqZAo" node="3ufQioQQtpF" resolve="t" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3eNFk2" id="2FjfLS1Xh0E" role="3eNLev">
                        <node concept="2ZW3vV" id="2FjfLS1XiJW" role="3eO9$A">
                          <node concept="3uibUv" id="2FjfLS1XiK3" role="2ZW6by">
                            <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
                          </node>
                          <node concept="37vLTw" id="2FjfLS1XiI8" role="2ZW6bz">
                            <ref role="3cqZAo" node="3ufQioQQtpF" resolve="t" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2FjfLS1Xh0G" role="3eOfB_">
                          <node concept="3clFbF" id="2FjfLS1XjJa" role="3cqZAp">
                            <node concept="37vLTI" id="2FjfLS1XjKZ" role="3clFbG">
                              <node concept="37vLTw" id="2FjfLS1XjJ9" role="37vLTJ">
                                <ref role="3cqZAo" node="3ufQioQQtpF" resolve="t" />
                              </node>
                              <node concept="2OqwBi" id="2FjfLS1XiMP" role="37vLTx">
                                <node concept="liA8E" id="2FjfLS1XjCB" role="2OqNvi">
                                  <ref role="37wK5l" to="t6h5:~InvocationTargetException.getTargetException()" resolve="getTargetException" />
                                </node>
                                <node concept="1eOMI4" id="2FjfLS1XiKi" role="2Oq$k0">
                                  <node concept="10QFUN" id="2FjfLS1XiKf" role="1eOMHV">
                                    <node concept="3uibUv" id="2FjfLS1XiKk" role="10QFUM">
                                      <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
                                    </node>
                                    <node concept="37vLTw" id="2FjfLS1XiKl" role="10QFUP">
                                      <ref role="3cqZAo" node="3ufQioQQtpF" resolve="t" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1XAHtgEGFEY" role="3cqZAp">
                      <node concept="1rXfSq" id="1XAHtgEGFEW" role="3clFbG">
                        <ref role="37wK5l" to="gola:~Task.log(java.lang.String,java.lang.Throwable,int)" resolve="log" />
                        <node concept="2YIFZM" id="1XAHtgEH5hD" role="37wK5m">
                          <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                          <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                          <node concept="Xl_RD" id="1XAHtgEH60H" role="37wK5m">
                            <property role="Xl_RC" value="Task [%s] failed with exception" />
                          </node>
                          <node concept="1rXfSq" id="1XAHtgEH7tg" role="37wK5m">
                            <ref role="37wK5l" to="gola:~Task.getTaskName()" resolve="getTaskName" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="1XAHtgEGUS9" role="37wK5m">
                          <ref role="3cqZAo" node="3ufQioQQtpF" resolve="t" />
                        </node>
                        <node concept="10M0yZ" id="1XAHtgEGVU$" role="37wK5m">
                          <ref role="3cqZAo" to="gola:~Project.MSG_ERR" resolve="MSG_ERR" />
                          <ref role="1PxDUh" to="gola:~Project" resolve="Project" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1XAHtgEGWmp" role="3cqZAp">
                      <node concept="1rXfSq" id="1XAHtgEGWmq" role="3clFbG">
                        <ref role="37wK5l" to="gola:~Task.log(java.lang.String,int)" resolve="log" />
                        <node concept="3cpWs3" id="1XAHtgEGXR_" role="37wK5m">
                          <node concept="Xl_RD" id="1XAHtgEGXRG" role="3uHU7B">
                            <property role="Xl_RC" value="Used class path: " />
                          </node>
                          <node concept="2OqwBi" id="1XAHtgEGXRH" role="3uHU7w">
                            <node concept="37vLTw" id="1XAHtgEGXRI" role="2Oq$k0">
                              <ref role="3cqZAo" node="3ufQioQQtoy" resolve="classPathUrls" />
                            </node>
                            <node concept="liA8E" id="1XAHtgEGXRJ" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                            </node>
                          </node>
                        </node>
                        <node concept="10M0yZ" id="1XAHtgEGWmt" role="37wK5m">
                          <ref role="3cqZAo" to="gola:~Project.MSG_ERR" resolve="MSG_ERR" />
                          <ref role="1PxDUh" to="gola:~Project" resolve="Project" />
                        </node>
                      </node>
                    </node>
                    <node concept="YS8fn" id="3ufQioQQtpt" role="3cqZAp">
                      <node concept="2ShNRf" id="3ufQioQQtpu" role="YScLw">
                        <node concept="1pGfFk" id="3ufQioQQtpv" role="2ShVmc">
                          <ref role="37wK5l" to="gola:~BuildException.&lt;init&gt;(java.lang.Throwable,org.apache.tools.ant.Location)" resolve="BuildException" />
                          <node concept="37vLTw" id="1XAHtgEH1P3" role="37wK5m">
                            <ref role="3cqZAo" node="3ufQioQQtpF" resolve="t" />
                          </node>
                          <node concept="1rXfSq" id="1XAHtgEH2$7" role="37wK5m">
                            <ref role="37wK5l" to="gola:~ProjectComponent.getLocation()" resolve="getLocation" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1wplmZ" id="xvs04dGy__" role="1zxBo6">
                  <node concept="3clFbS" id="gQDJKNdl8S" role="1wplMD">
                    <node concept="3clFbF" id="gQDJKNdnnT" role="3cqZAp">
                      <node concept="2OqwBi" id="gQDJKNdnHW" role="3clFbG">
                        <node concept="2YIFZM" id="gQDJKNdnxV" role="2Oq$k0">
                          <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                          <ref role="37wK5l" to="wyt6:~Thread.currentThread()" resolve="currentThread" />
                        </node>
                        <node concept="liA8E" id="gQDJKNdnUy" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Thread.setContextClassLoader(java.lang.ClassLoader)" resolve="setContextClassLoader" />
                          <node concept="37vLTw" id="gQDJKNdo4m" role="37wK5m">
                            <ref role="3cqZAo" node="gQDJKNdiRo" resolve="threadContextCL" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3ufQioQQtqE" role="3clFbx">
            <node concept="3cpWs8" id="3ufQioQQtqF" role="3cqZAp">
              <node concept="3cpWsn" id="3ufQioQQtqG" role="3cpWs9">
                <property role="TrG5h" value="currentClassPathString" />
                <property role="3TUv4t" value="false" />
                <node concept="17QB3L" id="2uUiGxAaMFS" role="1tU5fm" />
                <node concept="2YIFZM" id="3ufQioQQtqI" role="33vP2m">
                  <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                  <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String)" resolve="getProperty" />
                  <node concept="Xl_RD" id="3ufQioQQtqJ" role="37wK5m">
                    <property role="Xl_RC" value="java.class.path" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3ufQioQQtqK" role="3cqZAp">
              <node concept="3cpWsn" id="3ufQioQQtqL" role="3cpWs9">
                <property role="TrG5h" value="commandLine" />
                <property role="3TUv4t" value="false" />
                <node concept="3uibUv" id="3ufQioQQtqM" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="17QB3L" id="2uUiGxAaMFC" role="11_B2D" />
                </node>
                <node concept="2ShNRf" id="3ufQioQQtqO" role="33vP2m">
                  <node concept="1pGfFk" id="3ufQioQQtqP" role="2ShVmc">
                    <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                    <node concept="17QB3L" id="2uUiGxAaMGu" role="1pMfVU" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3ufQioQQtqR" role="3cqZAp">
              <node concept="2OqwBi" id="3ufQioQQtqS" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagT_mV" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ufQioQQtqL" resolve="commandLine" />
                </node>
                <node concept="liA8E" id="3ufQioQQtqU" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="2YIFZM" id="3ufQioQQtqV" role="37wK5m">
                    <ref role="1Pybhc" to="qy5u:~JavaEnvUtils" resolve="JavaEnvUtils" />
                    <ref role="37wK5l" to="qy5u:~JavaEnvUtils.getJreExecutable(java.lang.String)" resolve="getJreExecutable" />
                    <node concept="Xl_RD" id="3ufQioQQtqW" role="37wK5m">
                      <property role="Xl_RC" value="java" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3ufQioQQtr3" role="3cqZAp">
              <node concept="2OqwBi" id="3ufQioQQtr4" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagT$mj" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ufQioQQtqL" resolve="commandLine" />
                </node>
                <node concept="liA8E" id="3ufQioQQtr6" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection)" resolve="addAll" />
                  <node concept="2OqwBi" id="1hBlbKBUnIu" role="37wK5m">
                    <node concept="37vLTw" id="2BHiRxeuGyc" role="2Oq$k0">
                      <ref role="3cqZAo" node="3ufQioQQtjr" resolve="myJvmArgs" />
                    </node>
                    <node concept="liA8E" id="1hBlbKBUzan" role="2OqNvi">
                      <ref role="37wK5l" node="3ufQioQQtg1" resolve="getArgs" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3HIEjxvbE$9" role="3cqZAp">
              <node concept="3cpWsn" id="3HIEjxvbE$a" role="3cpWs9">
                <property role="TrG5h" value="javaHome" />
                <node concept="17QB3L" id="70B3qCBD4_i" role="1tU5fm" />
                <node concept="2YIFZM" id="3HIEjxvbE$c" role="33vP2m">
                  <ref role="1Pybhc" to="qy5u:~JavaEnvUtils" resolve="JavaEnvUtils" />
                  <ref role="37wK5l" to="qy5u:~JavaEnvUtils.getJavaHome()" resolve="getJavaHome" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3ufQioQQtrh" role="3cqZAp">
              <node concept="3cpWsn" id="3ufQioQQtri" role="3cpWs9">
                <property role="TrG5h" value="sb" />
                <property role="3TUv4t" value="false" />
                <node concept="3uibUv" id="3ufQioQQtrj" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                </node>
                <node concept="2ShNRf" id="3ufQioQQtrk" role="33vP2m">
                  <node concept="1pGfFk" id="3ufQioQQtrl" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3HIEjxvbqjV" role="3cqZAp">
              <node concept="3cpWsn" id="3HIEjxvbqjW" role="3cpWs9">
                <property role="TrG5h" value="entries" />
                <node concept="3uibUv" id="3HIEjxvbqjX" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                  <node concept="17QB3L" id="70B3qCBD4_h" role="11_B2D" />
                </node>
                <node concept="2ShNRf" id="3HIEjxvbqk1" role="33vP2m">
                  <node concept="1pGfFk" id="3HIEjxvbE7j" role="2ShVmc">
                    <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                    <node concept="17QB3L" id="70B3qCBD4_j" role="1pMfVU" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3ufQioQQtrm" role="3cqZAp">
              <node concept="3cpWsn" id="3ufQioQQtrn" role="3cpWs9">
                <property role="TrG5h" value="pathSeparator" />
                <property role="3TUv4t" value="false" />
                <node concept="17QB3L" id="2uUiGxAaMGF" role="1tU5fm" />
                <node concept="Xl_RD" id="3HIEjxvbE8t" role="33vP2m">
                  <property role="Xl_RC" value="" />
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="3HIEjxvbE8w" role="3cqZAp">
              <node concept="3clFbS" id="3HIEjxvbE8x" role="2LFqv$">
                <node concept="3clFbJ" id="3HIEjxvbE8X" role="3cqZAp">
                  <node concept="3clFbS" id="3HIEjxvbE8Y" role="3clFbx">
                    <node concept="3clFbF" id="3HIEjxvbE8Z" role="3cqZAp">
                      <node concept="2OqwBi" id="3HIEjxvbE90" role="3clFbG">
                        <node concept="37vLTw" id="3GM_nagTtK0" role="2Oq$k0">
                          <ref role="3cqZAo" node="3HIEjxvbqjW" resolve="entries" />
                        </node>
                        <node concept="liA8E" id="3HIEjxvbE92" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                          <node concept="37vLTw" id="3GM_nagTtpw" role="37wK5m">
                            <ref role="3cqZAo" node="3HIEjxvbE8z" resolve="entry" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3HIEjxvbE94" role="3cqZAp">
                      <node concept="2OqwBi" id="3HIEjxvbE95" role="3clFbG">
                        <node concept="37vLTw" id="3GM_nagTvHT" role="2Oq$k0">
                          <ref role="3cqZAo" node="3ufQioQQtri" resolve="sb" />
                        </node>
                        <node concept="liA8E" id="3HIEjxvbE97" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                          <node concept="37vLTw" id="3GM_nagTBHU" role="37wK5m">
                            <ref role="3cqZAo" node="3ufQioQQtrn" resolve="pathSeparator" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3HIEjxvbE99" role="3cqZAp">
                      <node concept="2OqwBi" id="3HIEjxvbE9a" role="3clFbG">
                        <node concept="37vLTw" id="3GM_nagTxRl" role="2Oq$k0">
                          <ref role="3cqZAo" node="3ufQioQQtri" resolve="sb" />
                        </node>
                        <node concept="liA8E" id="3HIEjxvbE9c" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                          <node concept="37vLTw" id="3GM_nagTsaO" role="37wK5m">
                            <ref role="3cqZAo" node="3HIEjxvbE8z" resolve="entry" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3HIEjxvbE9e" role="3cqZAp">
                      <node concept="37vLTI" id="3HIEjxvbF4t" role="3clFbG">
                        <node concept="10M0yZ" id="3HIEjxvbF4x" role="37vLTx">
                          <ref role="1PxDUh" to="guwi:~File" resolve="File" />
                          <ref role="3cqZAo" to="guwi:~File.pathSeparator" resolve="pathSeparator" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTBCm" role="37vLTJ">
                          <ref role="3cqZAo" node="3ufQioQQtrn" resolve="pathSeparator" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="76_s2Q$DRxA" role="3clFbw">
                    <node concept="3fqX7Q" id="76_s2Q$E1AN" role="3uHU7w">
                      <node concept="1rXfSq" id="76_s2Q_abdw" role="3fr31v">
                        <ref role="37wK5l" node="76_s2Q_8RRz" resolve="filterClasspathEntry" />
                        <node concept="37vLTw" id="76_s2Q_atW0" role="37wK5m">
                          <ref role="3cqZAo" node="3HIEjxvbE8z" resolve="entry" />
                        </node>
                      </node>
                    </node>
                    <node concept="1Wc70l" id="3HIEjxvbE$q" role="3uHU7B">
                      <node concept="3fqX7Q" id="3HIEjxvbE9j" role="3uHU7B">
                        <node concept="2OqwBi" id="3HIEjxvbE9k" role="3fr31v">
                          <node concept="37vLTw" id="3GM_nagTzJ9" role="2Oq$k0">
                            <ref role="3cqZAo" node="3HIEjxvbqjW" resolve="entries" />
                          </node>
                          <node concept="liA8E" id="3HIEjxvbE9m" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object)" resolve="contains" />
                            <node concept="37vLTw" id="3GM_nagTv1b" role="37wK5m">
                              <ref role="3cqZAo" node="3HIEjxvbE8z" resolve="entry" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="3HIEjxvbE$t" role="3uHU7w">
                        <node concept="1rXfSq" id="4hiugqyzeho" role="3fr31v">
                          <ref role="37wK5l" node="1TaHNgiI6p3" resolve="startsWith" />
                          <node concept="37vLTw" id="3GM_nagTBQ3" role="37wK5m">
                            <ref role="3cqZAo" node="3HIEjxvbE8z" resolve="entry" />
                          </node>
                          <node concept="37vLTw" id="3GM_nagTtHM" role="37wK5m">
                            <ref role="3cqZAo" node="3HIEjxvbE$a" resolve="javaHome" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="3HIEjxvbE8z" role="1Duv9x">
                <property role="TrG5h" value="entry" />
                <node concept="17QB3L" id="70B3qCBD4_g" role="1tU5fm" />
              </node>
              <node concept="2OqwBi" id="3HIEjxvbE8N" role="1DdaDG">
                <node concept="37vLTw" id="3GM_nagTroI" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ufQioQQtqG" resolve="currentClassPathString" />
                </node>
                <node concept="liA8E" id="3HIEjxvbE8T" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.split(java.lang.String)" resolve="split" />
                  <node concept="10M0yZ" id="3HIEjxvbF4D" role="37wK5m">
                    <ref role="1PxDUh" to="guwi:~File" resolve="File" />
                    <ref role="3cqZAo" to="guwi:~File.pathSeparator" resolve="pathSeparator" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="3ufQioQQtrr" role="3cqZAp">
              <node concept="37vLTw" id="3GM_nagT$TJ" role="1DdaDG">
                <ref role="3cqZAo" node="3ufQioQQtnS" resolve="classPaths" />
              </node>
              <node concept="3cpWsn" id="3ufQioQQtrt" role="1Duv9x">
                <property role="TrG5h" value="cp" />
                <property role="3TUv4t" value="false" />
                <node concept="3uibUv" id="3ufQioQQtru" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~File" resolve="File" />
                </node>
              </node>
              <node concept="3clFbS" id="3ufQioQQtrv" role="2LFqv$">
                <node concept="3cpWs8" id="3HIEjxvbqjh" role="3cqZAp">
                  <node concept="3cpWsn" id="3HIEjxvbqji" role="3cpWs9">
                    <property role="TrG5h" value="entry" />
                    <node concept="17QB3L" id="70B3qCBD4_k" role="1tU5fm" />
                    <node concept="2OqwBi" id="3HIEjxvbqjk" role="33vP2m">
                      <node concept="37vLTw" id="3GM_nagTssp" role="2Oq$k0">
                        <ref role="3cqZAo" node="3ufQioQQtrt" resolve="cp" />
                      </node>
                      <node concept="liA8E" id="3HIEjxvbqjm" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="3HIEjxvbE7p" role="3cqZAp">
                  <node concept="3clFbS" id="3HIEjxvbE7q" role="3clFbx">
                    <node concept="3clFbF" id="3HIEjxvbE7Z" role="3cqZAp">
                      <node concept="2OqwBi" id="3HIEjxvbE8d" role="3clFbG">
                        <node concept="37vLTw" id="3GM_nagTw4q" role="2Oq$k0">
                          <ref role="3cqZAo" node="3HIEjxvbqjW" resolve="entries" />
                        </node>
                        <node concept="liA8E" id="3HIEjxvbE8j" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                          <node concept="37vLTw" id="3GM_nagTxn$" role="37wK5m">
                            <ref role="3cqZAo" node="3HIEjxvbqji" resolve="entry" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3ufQioQQtrw" role="3cqZAp">
                      <node concept="2OqwBi" id="3ufQioQQtrx" role="3clFbG">
                        <node concept="37vLTw" id="3GM_nagTBnW" role="2Oq$k0">
                          <ref role="3cqZAo" node="3ufQioQQtri" resolve="sb" />
                        </node>
                        <node concept="liA8E" id="3ufQioQQtrz" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                          <node concept="37vLTw" id="3GM_nagTs0n" role="37wK5m">
                            <ref role="3cqZAo" node="3ufQioQQtrn" resolve="pathSeparator" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3ufQioQQtr_" role="3cqZAp">
                      <node concept="2OqwBi" id="3ufQioQQtrA" role="3clFbG">
                        <node concept="37vLTw" id="3GM_nagTwTd" role="2Oq$k0">
                          <ref role="3cqZAo" node="3ufQioQQtri" resolve="sb" />
                        </node>
                        <node concept="liA8E" id="3ufQioQQtrC" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                          <node concept="37vLTw" id="3GM_nagTxbm" role="37wK5m">
                            <ref role="3cqZAo" node="3HIEjxvbqji" resolve="entry" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3HIEjxvbF4_" role="3cqZAp">
                      <node concept="37vLTI" id="3HIEjxvbF4A" role="3clFbG">
                        <node concept="10M0yZ" id="3HIEjxvbF4B" role="37vLTx">
                          <ref role="1PxDUh" to="guwi:~File" resolve="File" />
                          <ref role="3cqZAo" to="guwi:~File.pathSeparator" resolve="pathSeparator" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTt0O" role="37vLTJ">
                          <ref role="3cqZAo" node="3ufQioQQtrn" resolve="pathSeparator" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="3HIEjxvbE7Q" role="3clFbw">
                    <node concept="2OqwBi" id="3HIEjxvbE7R" role="3fr31v">
                      <node concept="37vLTw" id="3GM_nagTBBe" role="2Oq$k0">
                        <ref role="3cqZAo" node="3HIEjxvbqjW" resolve="entries" />
                      </node>
                      <node concept="liA8E" id="3HIEjxvbE7T" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object)" resolve="contains" />
                        <node concept="37vLTw" id="3GM_nagTxfP" role="37wK5m">
                          <ref role="3cqZAo" node="3HIEjxvbqji" resolve="entry" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3_J5669ZAIA" role="3cqZAp">
              <node concept="2OqwBi" id="3_J5669ZAL$" role="3clFbG">
                <node concept="37vLTw" id="3_J5669ZAJ3" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ufQioQQtqL" resolve="commandLine" />
                </node>
                <node concept="liA8E" id="3_J5669ZAL_" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="3cpWs3" id="3_J5669ZALA" role="37wK5m">
                    <node concept="Xl_RD" id="3_J5669ZALB" role="3uHU7B">
                      <property role="Xl_RC" value="@" />
                    </node>
                    <node concept="2OqwBi" id="3_J5669ZALY" role="3uHU7w">
                      <node concept="1rXfSq" id="3_J5669ZALD" role="2Oq$k0">
                        <ref role="37wK5l" node="3_J5669Z5$H" resolve="dumpClassPathToArgFile" />
                        <node concept="2OqwBi" id="3_J5669ZAMh" role="37wK5m">
                          <node concept="37vLTw" id="3_J5669ZAM6" role="2Oq$k0">
                            <ref role="3cqZAo" node="3ufQioQQtri" resolve="sb" />
                          </node>
                          <node concept="liA8E" id="3_J5669ZAMi" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="3_J5669ZALZ" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1$mDfZ_vQBv" role="3cqZAp">
              <node concept="3clFbS" id="1$mDfZ_vQBx" role="3clFbx">
                <node concept="3SKdUt" id="1$mDfZ_EzUq" role="3cqZAp">
                  <node concept="1PaTwC" id="1$mDfZ_EzUr" role="1aUNEU">
                    <node concept="3oM_SD" id="1$mDfZ_EEOH" role="1PaTwD">
                      <property role="3oM_SC" value="list" />
                    </node>
                    <node concept="3oM_SD" id="1$mDfZ_EEOJ" role="1PaTwD">
                      <property role="3oM_SC" value="taken" />
                    </node>
                    <node concept="3oM_SD" id="1$mDfZ_EEOM" role="1PaTwD">
                      <property role="3oM_SC" value="from" />
                    </node>
                    <node concept="3oM_SD" id="1$mDfZ_EEOQ" role="1PaTwD">
                      <property role="3oM_SC" value="MPS" />
                    </node>
                    <node concept="3oM_SD" id="1$mDfZ_EEOV" role="1PaTwD">
                      <property role="3oM_SC" value="own" />
                    </node>
                    <node concept="3oM_SD" id="1$mDfZ_EEP8" role="1PaTwD">
                      <property role="3oM_SC" value="run" />
                    </node>
                    <node concept="3oM_SD" id="1$mDfZ_EEP1" role="1PaTwD">
                      <property role="3oM_SC" value="configuration" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1$mDfZ_w7W8" role="3cqZAp">
                  <node concept="3cpWsn" id="1$mDfZ_w7W6" role="3cpWs9">
                    <property role="3TUv4t" value="true" />
                    <property role="TrG5h" value="packages" />
                    <node concept="10Q1$e" id="1$mDfZ_weE6" role="1tU5fm">
                      <node concept="3uibUv" id="1$mDfZ_weE3" role="10Q1$1">
                        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                      </node>
                    </node>
                    <node concept="2BsdOp" id="1$mDfZ_wBBj" role="33vP2m">
                      <node concept="Xl_RD" id="1$mDfZ_wKzQ" role="2BsfMF">
                        <property role="Xl_RC" value="java.base/java.io" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_wYfI" role="2BsfMF">
                        <property role="Xl_RC" value="java.base/java.lang" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_A2Ui" role="2BsfMF">
                        <property role="Xl_RC" value="java.base/java.lang.reflect" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_AnAA" role="2BsfMF">
                        <property role="Xl_RC" value="java.base/java.net" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_ArG4" role="2BsfMF">
                        <property role="Xl_RC" value="java.base/java.nio" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_ArGa" role="2BsfMF">
                        <property role="Xl_RC" value="java.base/java.nio.charset" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_AvLQ" role="2BsfMF">
                        <property role="Xl_RC" value="java.base/java.text" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_AvLY" role="2BsfMF">
                        <property role="Xl_RC" value="java.base/java.time" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_AvM7" role="2BsfMF">
                        <property role="Xl_RC" value="java.base/java.util" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_AvMh" role="2BsfMF">
                        <property role="Xl_RC" value="java.base/java.util.concurrent" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_AvMs" role="2BsfMF">
                        <property role="Xl_RC" value="java.base/java.util.concurrent.atomic" />
                      </node>
                      <node concept="Xl_RD" id="4RTpV3VB8f4" role="2BsfMF">
                        <property role="Xl_RC" value="java.base/jdk.internal.ref" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_AvMC" role="2BsfMF">
                        <property role="Xl_RC" value="java.base/jdk.internal.vm" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_AvMP" role="2BsfMF">
                        <property role="Xl_RC" value="java.base/sun.nio.ch" />
                      </node>
                      <node concept="Xl_RD" id="1Dir_WFffHK" role="2BsfMF">
                        <property role="Xl_RC" value="java.base/sun.nio.fs" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_AvN3" role="2BsfMF">
                        <property role="Xl_RC" value="java.base/sun.security.ssl" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_AvNi" role="2BsfMF">
                        <property role="Xl_RC" value="java.base/sun.security.util" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_AvNy" role="2BsfMF">
                        <property role="Xl_RC" value="java.desktop/com.apple.eawt" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_AvNN" role="2BsfMF">
                        <property role="Xl_RC" value="java.desktop/com.apple.eawt.event" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_CuqJ" role="2BsfMF">
                        <property role="Xl_RC" value="java.desktop/com.apple.laf" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_Cur2" role="2BsfMF">
                        <property role="Xl_RC" value="java.desktop/sun.awt.X11" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_Curm" role="2BsfMF">
                        <property role="Xl_RC" value="java.desktop/java.awt" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_CurF" role="2BsfMF">
                        <property role="Xl_RC" value="java.desktop/java.awt.dnd.peer" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_DiUT" role="2BsfMF">
                        <property role="Xl_RC" value="java.desktop/java.awt.event" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_DiVi" role="2BsfMF">
                        <property role="Xl_RC" value="java.desktop/java.awt.image" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_Cus1" role="2BsfMF">
                        <property role="Xl_RC" value="java.desktop/java.awt.peer" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_Cuso" role="2BsfMF">
                        <property role="Xl_RC" value="java.desktop/javax.swing" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_DXSt" role="2BsfMF">
                        <property role="Xl_RC" value="java.desktop/javax.swing.plaf.basic" />
                      </node>
                      <node concept="Xl_RD" id="rnX0t1ueN4" role="2BsfMF">
                        <property role="Xl_RC" value="java.desktop/javax.swing.text" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_DXSS" role="2BsfMF">
                        <property role="Xl_RC" value="java.desktop/javax.swing.text.html" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_DXTk" role="2BsfMF">
                        <property role="Xl_RC" value="java.desktop/sun.awt.datatransfer" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_DXTL" role="2BsfMF">
                        <property role="Xl_RC" value="java.desktop/sun.awt.image" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_DXUf" role="2BsfMF">
                        <property role="Xl_RC" value="java.desktop/sun.awt.windows" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_DXUI" role="2BsfMF">
                        <property role="Xl_RC" value="java.desktop/sun.awt" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_DXVe" role="2BsfMF">
                        <property role="Xl_RC" value="java.desktop/sun.font" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_F9ys" role="2BsfMF">
                        <property role="Xl_RC" value="java.desktop/sun.java2d" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_F9yZ" role="2BsfMF">
                        <property role="Xl_RC" value="java.desktop/sun.swing" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_DXVJ" role="2BsfMF">
                        <property role="Xl_RC" value="jdk.attach/sun.tools.attach" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_FzZm" role="2BsfMF">
                        <property role="Xl_RC" value="jdk.compiler/com.sun.tools.javac.api" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_FzZV" role="2BsfMF">
                        <property role="Xl_RC" value="jdk.internal.jvmstat/sun.jvmstat.monitor" />
                      </node>
                      <node concept="Xl_RD" id="1$mDfZ_F$0x" role="2BsfMF">
                        <property role="Xl_RC" value="jdk.jdi/com.sun.tools.jdi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1DcWWT" id="1$mDfZ_xdPc" role="3cqZAp">
                  <node concept="3clFbS" id="1$mDfZ_xdPe" role="2LFqv$">
                    <node concept="3clFbF" id="1$mDfZ_xJGJ" role="3cqZAp">
                      <node concept="2OqwBi" id="1$mDfZ_xOoB" role="3clFbG">
                        <node concept="37vLTw" id="1$mDfZ_xJGH" role="2Oq$k0">
                          <ref role="3cqZAo" node="3ufQioQQtqL" resolve="commandLine" />
                        </node>
                        <node concept="liA8E" id="1$mDfZ_xW9r" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                          <node concept="3cpWs3" id="1$mDfZ_HaeY" role="37wK5m">
                            <node concept="Xl_RD" id="1$mDfZ_Hjv8" role="3uHU7w">
                              <property role="Xl_RC" value="=ALL-UNNAMED" />
                            </node>
                            <node concept="3cpWs3" id="1$mDfZ_Gz43" role="3uHU7B">
                              <node concept="Xl_RD" id="1$mDfZ_y68s" role="3uHU7B">
                                <property role="Xl_RC" value="--add-opens=" />
                              </node>
                              <node concept="37vLTw" id="1$mDfZ_H4oe" role="3uHU7w">
                                <ref role="3cqZAo" node="1$mDfZ_xdPf" resolve="p" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="1$mDfZ_xdPf" role="1Duv9x">
                    <property role="TrG5h" value="p" />
                    <node concept="3uibUv" id="1$mDfZ_xocC" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1$mDfZ_x_xD" role="1DdaDG">
                    <ref role="3cqZAo" node="1$mDfZ_w7W6" resolve="packages" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="1$mDfZ_vXLi" role="3clFbw">
                <ref role="3cqZAo" node="1$mDfZ_uyJm" resolve="myOpenPackages" />
              </node>
            </node>
            <node concept="3clFbJ" id="4QSveR2W6iz" role="3cqZAp">
              <node concept="3clFbS" id="4QSveR2W6i_" role="3clFbx">
                <node concept="3cpWs8" id="4QSveR2YUJ3" role="3cqZAp">
                  <node concept="3cpWsn" id="4QSveR2YUJ6" role="3cpWs9">
                    <property role="TrG5h" value="fullPath" />
                    <node concept="17QB3L" id="4QSveR2YUJ1" role="1tU5fm" />
                    <node concept="2OqwBi" id="4QSveR30saR" role="33vP2m">
                      <node concept="2ShNRf" id="4QSveR2Z$Yw" role="2Oq$k0">
                        <node concept="1pGfFk" id="4QSveR2ZHXE" role="2ShVmc">
                          <property role="373rjd" value="true" />
                          <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                          <node concept="1rXfSq" id="4QSveR2ZQGX" role="37wK5m">
                            <ref role="37wK5l" node="4OPNMy25ZUO" resolve="getMpsHome_Checked" />
                          </node>
                          <node concept="37vLTw" id="4QSveR30l9J" role="37wK5m">
                            <ref role="3cqZAo" node="4QSveR2Svbf" resolve="myJnaLibraryPath" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="4QSveR30AXg" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4QSveR2Yi7j" role="3cqZAp">
                  <node concept="2OqwBi" id="4QSveR2Yi7k" role="3clFbG">
                    <node concept="37vLTw" id="4QSveR2Yi7l" role="2Oq$k0">
                      <ref role="3cqZAo" node="3ufQioQQtqL" resolve="commandLine" />
                    </node>
                    <node concept="liA8E" id="4QSveR2Yi7m" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="3cpWs3" id="4QSveR2Yi7p" role="37wK5m">
                        <node concept="Xl_RD" id="4QSveR2Yi7q" role="3uHU7B">
                          <property role="Xl_RC" value="-Djna.boot.library.path=" />
                        </node>
                        <node concept="37vLTw" id="4QSveR31mGr" role="3uHU7w">
                          <ref role="3cqZAo" node="4QSveR2YUJ6" resolve="fullPath" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4QSveR2Xuvl" role="3clFbw">
                <node concept="37vLTw" id="4QSveR2XaGJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="4QSveR2Svbf" resolve="myJnaLibraryPath" />
                </node>
                <node concept="17RvpY" id="4QSveR2XVpM" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbF" id="3ufQioQQts1" role="3cqZAp">
              <node concept="2OqwBi" id="3ufQioQQts2" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTxnd" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ufQioQQtqL" resolve="commandLine" />
                </node>
                <node concept="liA8E" id="3ufQioQQts4" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="1rXfSq" id="4hiugqyz8YN" role="37wK5m">
                    <ref role="37wK5l" node="4vDU0BPyKWd" resolve="getWorker" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3ufQioQQts8" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyzbU1" role="3clFbG">
                <ref role="37wK5l" node="3ufQioQQtvE" resolve="dumpPropertiesToWhatToDo" />
              </node>
            </node>
            <node concept="3J1_TO" id="3ufQioQQtsa" role="3cqZAp">
              <node concept="3clFbS" id="3ufQioQQtsj" role="1zxBo7">
                <node concept="3clFbF" id="3ufQioQQtsk" role="3cqZAp">
                  <node concept="2OqwBi" id="3ufQioQQtsl" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTxHy" role="2Oq$k0">
                      <ref role="3cqZAo" node="3ufQioQQtqL" resolve="commandLine" />
                    </node>
                    <node concept="liA8E" id="3ufQioQQtsn" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="2OqwBi" id="3ufQioQQtso" role="37wK5m">
                        <node concept="2OqwBi" id="3ufQioQQtsp" role="2Oq$k0">
                          <node concept="37vLTw" id="2BHiRxeuwxd" role="2Oq$k0">
                            <ref role="3cqZAo" node="3ufQioQQtje" resolve="myWhatToDo" />
                          </node>
                          <node concept="liA8E" id="3ufQioQQtsr" role="2OqNvi">
                            <ref role="37wK5l" to="asz6:KL8Aql8eAb" resolve="dumpToTmpFile" />
                          </node>
                        </node>
                        <node concept="liA8E" id="3ufQioQQtss" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uVAMA" id="UQTJWazjPn" role="1zxBo5">
                <node concept="XOnhg" id="UQTJWazjPo" role="1zc67B">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="e" />
                  <node concept="nSUau" id="xvs04dGs3k" role="1tU5fm">
                    <node concept="3uibUv" id="UQTJWazjPw" role="nSUat">
                      <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="UQTJWazjPq" role="1zc67A">
                  <node concept="YS8fn" id="UQTJWazjPx" role="3cqZAp">
                    <node concept="2ShNRf" id="UQTJWazjPy" role="YScLw">
                      <node concept="1pGfFk" id="UQTJWazjPz" role="2ShVmc">
                        <ref role="37wK5l" to="gola:~BuildException.&lt;init&gt;(java.lang.Throwable)" resolve="BuildException" />
                        <node concept="37vLTw" id="3GM_nagTwnv" role="37wK5m">
                          <ref role="3cqZAo" node="UQTJWazjPo" resolve="e" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="7oFdQJwIzI5" role="3cqZAp">
              <node concept="3clFbS" id="7oFdQJwIzI7" role="2LFqv$">
                <node concept="3clFbF" id="7oFdQJwHngO" role="3cqZAp">
                  <node concept="2OqwBi" id="7oFdQJwHoWp" role="3clFbG">
                    <node concept="37vLTw" id="7oFdQJwHngM" role="2Oq$k0">
                      <ref role="3cqZAo" node="3ufQioQQtqL" resolve="commandLine" />
                    </node>
                    <node concept="liA8E" id="7oFdQJwHpX7" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="37vLTw" id="7oFdQJwIGxw" role="37wK5m">
                        <ref role="3cqZAo" node="7oFdQJwIzI8" resolve="s" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="7oFdQJwIzI8" role="1Duv9x">
                <property role="TrG5h" value="s" />
                <node concept="3uibUv" id="7oFdQJwI_yQ" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
              <node concept="1rXfSq" id="7oFdQJwHL8I" role="1DdaDG">
                <ref role="37wK5l" node="7oFdQJwHF24" resolve="getAdditionalArgs" />
              </node>
            </node>
            <node concept="3clFbF" id="oY$DTc6ImX" role="3cqZAp">
              <node concept="1rXfSq" id="oY$DTc6ImV" role="3clFbG">
                <ref role="37wK5l" node="oY$DTc6Hyy" resolve="checkHasEAOption" />
                <node concept="37vLTw" id="oY$DTc6MoI" role="37wK5m">
                  <ref role="3cqZAo" node="3ufQioQQtqL" resolve="commandLine" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5qUkmeYAmcy" role="3cqZAp">
              <node concept="3cpWsn" id="5qUkmeYAmcz" role="3cpWs9">
                <property role="TrG5h" value="exe" />
                <property role="3TUv4t" value="false" />
                <node concept="3uibUv" id="5qUkmeYAmc$" role="1tU5fm">
                  <ref role="3uigEE" to="kpdv:~Execute" resolve="Execute" />
                </node>
                <node concept="2ShNRf" id="5qUkmeYAmc_" role="33vP2m">
                  <node concept="1pGfFk" id="5qUkmeYAmcA" role="2ShVmc">
                    <ref role="37wK5l" to="kpdv:~Execute.&lt;init&gt;(org.apache.tools.ant.taskdefs.ExecuteStreamHandler)" resolve="Execute" />
                    <node concept="1rXfSq" id="1rGdf3Zyfjj" role="37wK5m">
                      <ref role="37wK5l" node="1rGdf3ZwV9j" resolve="createStreamHandler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3ufQioQQtsz" role="3cqZAp">
              <node concept="2OqwBi" id="3ufQioQQts$" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTsMD" role="2Oq$k0">
                  <ref role="3cqZAo" node="5qUkmeYAmcz" resolve="exe" />
                </node>
                <node concept="liA8E" id="3ufQioQQtsA" role="2OqNvi">
                  <ref role="37wK5l" to="kpdv:~Execute.setAntRun(org.apache.tools.ant.Project)" resolve="setAntRun" />
                  <node concept="2OqwBi" id="3ufQioQQtsB" role="37wK5m">
                    <node concept="Xjq3P" id="3ufQioQQtsC" role="2Oq$k0" />
                    <node concept="liA8E" id="3ufQioQQtsD" role="2OqNvi">
                      <ref role="37wK5l" to="gola:~ProjectComponent.getProject()" resolve="getProject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3ufQioQQtsE" role="3cqZAp">
              <node concept="2OqwBi" id="3ufQioQQtsF" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTB$8" role="2Oq$k0">
                  <ref role="3cqZAo" node="5qUkmeYAmcz" resolve="exe" />
                </node>
                <node concept="liA8E" id="3ufQioQQtsH" role="2OqNvi">
                  <ref role="37wK5l" to="kpdv:~Execute.setWorkingDirectory(java.io.File)" resolve="setWorkingDirectory" />
                  <node concept="2OqwBi" id="3ufQioQQtsI" role="37wK5m">
                    <node concept="2OqwBi" id="3ufQioQQtsJ" role="2Oq$k0">
                      <node concept="Xjq3P" id="3ufQioQQtsK" role="2Oq$k0" />
                      <node concept="liA8E" id="3ufQioQQtsL" role="2OqNvi">
                        <ref role="37wK5l" to="gola:~ProjectComponent.getProject()" resolve="getProject" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3ufQioQQtsM" role="2OqNvi">
                      <ref role="37wK5l" to="gola:~Project.getBaseDir()" resolve="getBaseDir" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3ufQioQQtsN" role="3cqZAp">
              <node concept="2OqwBi" id="3ufQioQQtsO" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTsD$" role="2Oq$k0">
                  <ref role="3cqZAo" node="5qUkmeYAmcz" resolve="exe" />
                </node>
                <node concept="liA8E" id="3ufQioQQtsQ" role="2OqNvi">
                  <ref role="37wK5l" to="kpdv:~Execute.setCommandline(java.lang.String[])" resolve="setCommandline" />
                  <node concept="2OqwBi" id="3ufQioQQtsR" role="37wK5m">
                    <node concept="37vLTw" id="3GM_nagTBvZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="3ufQioQQtqL" resolve="commandLine" />
                    </node>
                    <node concept="liA8E" id="3ufQioQQtsT" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.toArray(java.lang.Object[])" resolve="toArray" />
                      <node concept="2ShNRf" id="3ufQioQQtsU" role="37wK5m">
                        <node concept="3$_iS1" id="3ufQioQQtsV" role="2ShVmc">
                          <node concept="3$GHV9" id="3ufQioQQtsW" role="3$GQph">
                            <node concept="2OqwBi" id="3ufQioQQtsX" role="3$I4v7">
                              <node concept="37vLTw" id="3GM_nagT_4_" role="2Oq$k0">
                                <ref role="3cqZAo" node="3ufQioQQtqL" resolve="commandLine" />
                              </node>
                              <node concept="liA8E" id="3ufQioQQtsZ" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                              </node>
                            </node>
                          </node>
                          <node concept="17QB3L" id="2uUiGxAaMGP" role="3$_nBY" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3J1_TO" id="3ufQioQQtt1" role="3cqZAp">
              <node concept="3clFbS" id="3ufQioQQtta" role="1zxBo7">
                <node concept="3cpWs8" id="3ufQioQQttb" role="3cqZAp">
                  <node concept="3cpWsn" id="3ufQioQQttc" role="3cpWs9">
                    <property role="TrG5h" value="i" />
                    <property role="3TUv4t" value="false" />
                    <node concept="10Oyi0" id="3ufQioQQttd" role="1tU5fm" />
                    <node concept="2OqwBi" id="3ufQioQQtte" role="33vP2m">
                      <node concept="37vLTw" id="3GM_nagTA1t" role="2Oq$k0">
                        <ref role="3cqZAo" node="5qUkmeYAmcz" resolve="exe" />
                      </node>
                      <node concept="liA8E" id="3ufQioQQttg" role="2OqNvi">
                        <ref role="37wK5l" to="kpdv:~Execute.execute()" resolve="execute" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="3ufQioQQtth" role="3cqZAp">
                  <node concept="3y3z36" id="3ufQioQQtti" role="3clFbw">
                    <node concept="37vLTw" id="3GM_nagTuya" role="3uHU7B">
                      <ref role="3cqZAo" node="3ufQioQQttc" resolve="i" />
                    </node>
                    <node concept="3cmrfG" id="3ufQioQQttk" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="3ufQioQQttl" role="3clFbx">
                    <node concept="3clFbF" id="3ufQioQQttm" role="3cqZAp">
                      <node concept="1rXfSq" id="4hiugqyz9ry" role="3clFbG">
                        <ref role="37wK5l" node="3ufQioQQtvs" resolve="processNonZeroExitCode" />
                        <node concept="37vLTw" id="3GM_nagTywZ" role="37wK5m">
                          <ref role="3cqZAo" node="3ufQioQQttc" resolve="i" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uVAMA" id="3ufQioQQtt2" role="1zxBo5">
                <node concept="XOnhg" id="3ufQioQQtt8" role="1zc67B">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="e" />
                  <node concept="nSUau" id="xvs04dGs3m" role="1tU5fm">
                    <node concept="3uibUv" id="3ufQioQQtt9" role="nSUat">
                      <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="3ufQioQQtt3" role="1zc67A">
                  <node concept="YS8fn" id="4sLvEXhfQQe" role="3cqZAp">
                    <node concept="2ShNRf" id="4sLvEXhfQQg" role="YScLw">
                      <node concept="1pGfFk" id="4sLvEXhfQQi" role="2ShVmc">
                        <ref role="37wK5l" to="gola:~BuildException.&lt;init&gt;(java.lang.Throwable)" resolve="BuildException" />
                        <node concept="37vLTw" id="3GM_nagTBTB" role="37wK5m">
                          <ref role="3cqZAo" node="3ufQioQQtt8" resolve="e" />
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
      <node concept="2AHcQZ" id="3ufQioQQttp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3uibUv" id="3ufQioQQttq" role="Sfmx6">
        <ref role="3uigEE" to="gola:~BuildException" resolve="BuildException" />
      </node>
    </node>
    <node concept="2tJIrI" id="oY$DTc6HWo" role="jymVt" />
    <node concept="3clFb_" id="3_J5669Z5$H" role="jymVt">
      <property role="TrG5h" value="dumpClassPathToArgFile" />
      <node concept="37vLTG" id="3_J5669Z5$I" role="3clF46">
        <property role="TrG5h" value="classPath" />
        <node concept="17QB3L" id="3Q_y3ii6hAg" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3_J5669Z5$K" role="3clF47">
        <node concept="3J1_TO" id="3_J5669Z5_r" role="3cqZAp">
          <node concept="3uVAMA" id="3_J5669Z5_s" role="1zxBo5">
            <node concept="3clFbS" id="3_J5669Z5_n" role="1zc67A">
              <node concept="YS8fn" id="3_J5669Z5_q" role="3cqZAp">
                <node concept="2ShNRf" id="3_J5669Zab9" role="YScLw">
                  <node concept="1pGfFk" id="3_J5669Zahb" role="2ShVmc">
                    <ref role="37wK5l" to="gola:~BuildException.&lt;init&gt;(java.lang.Throwable)" resolve="BuildException" />
                    <node concept="37vLTw" id="3_J5669Zahc" role="37wK5m">
                      <ref role="3cqZAo" node="3_J5669Z5_j" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="3_J5669Z5_j" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="3_J5669Z5_l" role="1tU5fm">
                <node concept="3uibUv" id="3_J5669Z5_k" role="nSUat">
                  <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3_J5669Z5$M" role="1zxBo7">
            <node concept="3cpWs8" id="3_J5669Z5$O" role="3cqZAp">
              <node concept="3cpWsn" id="3_J5669Z5$N" role="3cpWs9">
                <property role="TrG5h" value="argFile" />
                <node concept="3uibUv" id="3_J5669Z5$P" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~File" resolve="File" />
                </node>
                <node concept="2YIFZM" id="3_J5669Zahj" role="33vP2m">
                  <ref role="1Pybhc" to="guwi:~File" resolve="File" />
                  <ref role="37wK5l" to="guwi:~File.createTempFile(java.lang.String,java.lang.String)" resolve="createTempFile" />
                  <node concept="Xl_RD" id="3_J5669Zahk" role="37wK5m">
                    <property role="Xl_RC" value="mpsLoadTask-cp" />
                  </node>
                  <node concept="Xl_RD" id="3_J5669Zahl" role="37wK5m">
                    <property role="Xl_RC" value=".txt" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3_J5669Z5$T" role="3cqZAp">
              <node concept="2OqwBi" id="3_J5669ZaJz" role="3clFbG">
                <node concept="37vLTw" id="3_J5669Zahs" role="2Oq$k0">
                  <ref role="3cqZAo" node="3_J5669Z5$N" resolve="argFile" />
                </node>
                <node concept="liA8E" id="3_J5669ZaJ$" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.deleteOnExit()" resolve="deleteOnExit" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3_J5669Z5$W" role="3cqZAp">
              <node concept="3cpWsn" id="3_J5669Z5$V" role="3cpWs9">
                <property role="TrG5h" value="content" />
                <node concept="17QB3L" id="3Q_y3ii7h4H" role="1tU5fm" />
                <node concept="3cpWs3" id="3_J5669Z5$Y" role="33vP2m">
                  <node concept="3cpWs3" id="3_J5669Z5$Z" role="3uHU7B">
                    <node concept="Xl_RD" id="3_J5669Z5_0" role="3uHU7B">
                      <property role="Xl_RC" value="-classpath \&quot;" />
                    </node>
                    <node concept="2OqwBi" id="3_J5669Zc8I" role="3uHU7w">
                      <node concept="37vLTw" id="3_J5669Zah$" role="2Oq$k0">
                        <ref role="3cqZAo" node="3_J5669Z5$I" resolve="classPath" />
                      </node>
                      <node concept="liA8E" id="3_J5669Zc8J" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.replace(char,char)" resolve="replace" />
                        <node concept="1Xhbcc" id="3_J5669Zc8K" role="37wK5m">
                          <property role="1XhdNS" value="\\" />
                        </node>
                        <node concept="1Xhbcc" id="3_J5669Zc8L" role="37wK5m">
                          <property role="1XhdNS" value="/" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3_J5669Z5_4" role="3uHU7w">
                    <property role="Xl_RC" value="\&quot;" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3Q_y3ii8s5j" role="3cqZAp">
              <node concept="2YIFZM" id="3Q_y3ii8UqM" role="3clFbG">
                <ref role="37wK5l" to="eoo2:~Files.writeString(java.nio.file.Path,java.lang.CharSequence,java.nio.file.OpenOption...)" resolve="writeString" />
                <ref role="1Pybhc" to="eoo2:~Files" resolve="Files" />
                <node concept="2OqwBi" id="3Q_y3ii8UqN" role="37wK5m">
                  <node concept="37vLTw" id="3Q_y3ii8UqO" role="2Oq$k0">
                    <ref role="3cqZAo" node="3_J5669Z5$N" resolve="argFile" />
                  </node>
                  <node concept="liA8E" id="3Q_y3ii8UqP" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~File.toPath()" resolve="toPath" />
                  </node>
                </node>
                <node concept="37vLTw" id="3Q_y3ii8UqR" role="37wK5m">
                  <ref role="3cqZAo" node="3_J5669Z5$V" resolve="content" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3_J5669Z5_h" role="3cqZAp">
              <node concept="37vLTw" id="3_J5669Z5_i" role="3cqZAk">
                <ref role="3cqZAo" node="3_J5669Z5$N" resolve="argFile" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3_J5669Z5_t" role="1B3o_S" />
      <node concept="3uibUv" id="3_J5669Z5_u" role="3clF45">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
    </node>
    <node concept="2tJIrI" id="3_J5669ZXFw" role="jymVt" />
    <node concept="3clFb_" id="oY$DTc6Hyy" role="jymVt">
      <property role="TrG5h" value="checkHasEAOption" />
      <node concept="37vLTG" id="oY$DTc6Imd" role="3clF46">
        <property role="TrG5h" value="cmdLine" />
        <node concept="3uibUv" id="oY$DTc6Imh" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="17QB3L" id="oY$DTc6Imi" role="11_B2D" />
        </node>
      </node>
      <node concept="3cqZAl" id="oY$DTc6Hy$" role="3clF45" />
      <node concept="3Tm6S6" id="oY$DTc6Ima" role="1B3o_S" />
      <node concept="3clFbS" id="oY$DTc6HyA" role="3clF47">
        <node concept="1DcWWT" id="oY$DTc6Mqf" role="3cqZAp">
          <node concept="3cpWsn" id="oY$DTc6Mqg" role="1Duv9x">
            <property role="TrG5h" value="arg" />
            <node concept="17QB3L" id="oY$DTc6Mqr" role="1tU5fm" />
          </node>
          <node concept="37vLTw" id="oY$DTc6Mr9" role="1DdaDG">
            <ref role="3cqZAo" node="oY$DTc6Imd" resolve="cmdLine" />
          </node>
          <node concept="3clFbS" id="oY$DTc6Mqi" role="2LFqv$">
            <node concept="3clFbJ" id="oY$DTc6Mrv" role="3cqZAp">
              <node concept="2OqwBi" id="oY$DTc6MXp" role="3clFbw">
                <node concept="37vLTw" id="oY$DTc6MrS" role="2Oq$k0">
                  <ref role="3cqZAo" node="oY$DTc6Mqg" resolve="arg" />
                </node>
                <node concept="liA8E" id="oY$DTc6N03" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="oY$DTc6N0p" role="37wK5m">
                    <property role="Xl_RC" value="-ea" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="oY$DTc6Mrx" role="3clFbx">
                <node concept="3cpWs6" id="oY$DTc6N4e" role="3cqZAp" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="oY$DTc6N5p" role="3cqZAp">
          <node concept="1rXfSq" id="oY$DTc6N5n" role="3clFbG">
            <ref role="37wK5l" to="gola:~Task.log(java.lang.String,int)" resolve="log" />
            <node concept="3cpWs3" id="oY$DTc6NRW" role="37wK5m">
              <node concept="2OqwBi" id="oY$DTc6Omu" role="3uHU7w">
                <node concept="2OqwBi" id="oY$DTc6O0Q" role="2Oq$k0">
                  <node concept="Xjq3P" id="oY$DTc6NSs" role="2Oq$k0" />
                  <node concept="liA8E" id="oY$DTc6Ocg" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                  </node>
                </node>
                <node concept="liA8E" id="oY$DTc6OOJ" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Class.getSimpleName()" resolve="getSimpleName" />
                </node>
              </node>
              <node concept="Xl_RD" id="oY$DTc6Npm" role="3uHU7B">
                <property role="Xl_RC" value="The executed worker's command line does not have the -ea option, which is highly recommended. Task: " />
              </node>
            </node>
            <node concept="10M0yZ" id="oY$DTc6Nj0" role="37wK5m">
              <ref role="3cqZAo" to="gola:~Project.MSG_WARN" resolve="MSG_WARN" />
              <ref role="1PxDUh" to="gola:~Project" resolve="Project" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5JXeQM0w0x5" role="jymVt" />
    <node concept="3clFb_" id="5JXeQM0vQFr" role="jymVt">
      <property role="TrG5h" value="fileToUrl" />
      <node concept="3Tm6S6" id="5JXeQM0vQFs" role="1B3o_S" />
      <node concept="3uibUv" id="5JXeQM0vQFt" role="3clF45">
        <ref role="3uigEE" to="zf81:~URL" resolve="URL" />
      </node>
      <node concept="37vLTG" id="5JXeQM0vQAd" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="3uibUv" id="5JXeQM0vQAe" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3clFbS" id="5JXeQM0vQwP" role="3clF47">
        <node concept="3cpWs6" id="5JXeQM0vQ_Z" role="3cqZAp">
          <node concept="2OqwBi" id="1fH6pN1aiAH" role="3cqZAk">
            <node concept="2OqwBi" id="1fH6pN1a7Ur" role="2Oq$k0">
              <node concept="37vLTw" id="1fH6pN1a3yZ" role="2Oq$k0">
                <ref role="3cqZAo" node="5JXeQM0vQAd" resolve="file" />
              </node>
              <node concept="liA8E" id="1fH6pN1aeh6" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.toURI()" resolve="toURI" />
              </node>
            </node>
            <node concept="liA8E" id="1fH6pN1andp" role="2OqNvi">
              <ref role="37wK5l" to="zf81:~URI.toURL()" resolve="toURL" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5JXeQM0vQFu" role="Sfmx6">
        <ref role="3uigEE" to="zf81:~MalformedURLException" resolve="MalformedURLException" />
      </node>
    </node>
    <node concept="2tJIrI" id="1XAHtgECJ9k" role="jymVt" />
    <node concept="3clFb_" id="1XAHtgECVZn" role="jymVt">
      <property role="TrG5h" value="doInProcessWork" />
      <node concept="37vLTG" id="1XAHtgED2eR" role="3clF46">
        <property role="TrG5h" value="workerClass" />
        <node concept="3uibUv" id="1XAHtgED2eS" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="1XAHtgED2eT" role="11_B2D" />
        </node>
        <node concept="2AHcQZ" id="1XAHtgED2eU" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="1XAHtgECVZq" role="3clF47">
        <node concept="3cpWs8" id="1XAHtgEDmz$" role="3cqZAp">
          <node concept="3cpWsn" id="1XAHtgEDmz_" role="3cpWs9">
            <property role="TrG5h" value="worker" />
            <property role="3TUv4t" value="false" />
            <node concept="1rXfSq" id="1XAHtgEDmzA" role="33vP2m">
              <ref role="37wK5l" node="3QFNug6_7d9" resolve="instantiateInProcessWorker" />
              <node concept="37vLTw" id="1XAHtgEDmzB" role="37wK5m">
                <ref role="3cqZAo" node="1XAHtgED2eR" resolve="workerClass" />
              </node>
            </node>
            <node concept="3uibUv" id="1XAHtgEDmzC" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1XAHtgEDv8G" role="3cqZAp">
          <node concept="1rXfSq" id="1XAHtgEDv8E" role="3clFbG">
            <ref role="37wK5l" node="1XAHtgEBNbH" resolve="invokeInProcessMain" />
            <node concept="37vLTw" id="1XAHtgEDvB0" role="37wK5m">
              <ref role="3cqZAo" node="1XAHtgED2eR" resolve="workerClass" />
            </node>
            <node concept="37vLTw" id="1XAHtgEDw3m" role="37wK5m">
              <ref role="3cqZAo" node="1XAHtgEDmz_" resolve="worker" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="1XAHtgECPBL" role="1B3o_S" />
      <node concept="3cqZAl" id="1XAHtgECVIw" role="3clF45" />
      <node concept="3uibUv" id="1XAHtgEDgKi" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
      <node concept="P$JXv" id="1XAHtgEDZ3o" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs_o4" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_o5" role="1PaTwD">
            <property role="3oM_SC" value="Receives" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_o6" role="1PaTwD">
            <property role="3oM_SC" value="properly" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_o7" role="1PaTwD">
            <property role="3oM_SC" value="loaded" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_o8" role="1PaTwD">
            <property role="3oM_SC" value="worker" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_o9" role="1PaTwD">
            <property role="3oM_SC" value="class" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_oa" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_ob" role="1PaTwD">
            <property role="3oM_SC" value="may" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_oc" role="1PaTwD">
            <property role="3oM_SC" value="start" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_od" role="1PaTwD">
            <property role="3oM_SC" value="worker" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_oe" role="1PaTwD">
            <property role="3oM_SC" value="as" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_of" role="1PaTwD">
            <property role="3oM_SC" value="appropriate." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_og" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_oh" role="1PaTwD">
            <property role="3oM_SC" value="By" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_oi" role="1PaTwD">
            <property role="3oM_SC" value="default," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_oj" role="1PaTwD">
            <property role="3oM_SC" value="instantiates" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_ok" role="1PaTwD">
            <property role="3oM_SC" value="an" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_ol" role="1PaTwD">
            <property role="3oM_SC" value="object" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_om" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_on" role="1PaTwD">
            <property role="3oM_SC" value="fires" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_oo" role="1PaTwD">
            <property role="3oM_SC" value="its" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_op" role="1PaTwD">
            <property role="3oM_SC" value="no-arg" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_oq" role="1PaTwD">
            <property role="3oM_SC" value="&quot;work&quot;" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_or" role="1PaTwD">
            <property role="3oM_SC" value="method," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_os" role="1PaTwD">
            <property role="3oM_SC" value="see" />
          </node>
          <node concept="1Vtdud" id="1E1X3WHs_ot" role="1PaTwD">
            <node concept="1VuXuv" id="1E1X3WHs_ou" role="1Vtduc">
              <node concept="VXe0Z" id="1XAHtgEEemc" role="1VuXuu">
                <ref role="VXe0S" node="3QFNug6_7d9" resolve="instantiateInProcessWorker" />
              </node>
              <node concept="1PaTwC" id="1E1X3WHs_ox" role="2JaDBN">
                <node concept="3oM_SD" id="1E1X3WHs_oy" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_oz" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="1Vtdud" id="1E1X3WHs_o$" role="1PaTwD">
            <node concept="1VuXuv" id="1E1X3WHs_o_" role="1Vtduc">
              <node concept="VXe0Z" id="1XAHtgEEpYf" role="1VuXuu">
                <ref role="VXe0S" node="1XAHtgEBNbH" resolve="invokeInProcessMain" />
              </node>
              <node concept="1PaTwC" id="1E1X3WHs_oC" role="2JaDBN">
                <node concept="3oM_SD" id="1E1X3WHs_oD" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_oE" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3QFNug6$TSH" role="jymVt" />
    <node concept="3clFb_" id="3QFNug6_7d9" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="instantiateInProcessWorker" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3QFNug6_7dc" role="3clF47">
        <node concept="3SKdUt" id="3QFNug6$qZd" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo8aK" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo8aL" role="1PaTwD">
              <property role="3oM_SC" value="First," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8aM" role="1PaTwD">
              <property role="3oM_SC" value="check" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8aN" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8aO" role="1PaTwD">
              <property role="3oM_SC" value="there's" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8aP" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8aQ" role="1PaTwD">
              <property role="3oM_SC" value="desire" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8aR" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8aS" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8aT" role="1PaTwD">
              <property role="3oM_SC" value="ProjectComponent," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8aU" role="1PaTwD">
              <property role="3oM_SC" value="i.e." />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8aV" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8aW" role="1PaTwD">
              <property role="3oM_SC" value="worker" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8aX" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8aY" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8aZ" role="1PaTwD">
              <property role="3oM_SC" value="Ant-aware" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="3QFNug6$iae" role="3cqZAp">
          <node concept="3clFbS" id="3QFNug6$iag" role="2LFqv$">
            <node concept="3clFbJ" id="3QFNug6$mzp" role="3cqZAp">
              <node concept="3clFbS" id="3QFNug6$mzr" role="3clFbx">
                <node concept="3N13vt" id="3QFNug6$pZF" role="3cqZAp" />
              </node>
              <node concept="3y3z36" id="3QFNug6$pba" role="3clFbw">
                <node concept="3cmrfG" id="3QFNug6$py8" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="2OqwBi" id="3QFNug6$nja" role="3uHU7B">
                  <node concept="37vLTw" id="3QFNug6$mQa" role="2Oq$k0">
                    <ref role="3cqZAo" node="3QFNug6$iah" resolve="constructor" />
                  </node>
                  <node concept="liA8E" id="3QFNug6$nHE" role="2OqNvi">
                    <ref role="37wK5l" to="t6h5:~Constructor.getParameterCount()" resolve="getParameterCount" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3QFNug6$wex" role="3cqZAp">
              <node concept="3cpWsn" id="3QFNug6$wey" role="3cpWs9">
                <property role="TrG5h" value="parameterTypes" />
                <node concept="10Q1$e" id="3QFNug6$weo" role="1tU5fm">
                  <node concept="3uibUv" id="3QFNug6$wev" role="10Q1$1">
                    <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                    <node concept="3qTvmN" id="3QFNug6$wew" role="11_B2D" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3QFNug6$wez" role="33vP2m">
                  <node concept="37vLTw" id="3QFNug6$we$" role="2Oq$k0">
                    <ref role="3cqZAo" node="3QFNug6$iah" resolve="constructor" />
                  </node>
                  <node concept="liA8E" id="3QFNug6$we_" role="2OqNvi">
                    <ref role="37wK5l" to="t6h5:~Constructor.getParameterTypes()" resolve="getParameterTypes" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3QFNug6$uP0" role="3cqZAp">
              <node concept="3clFbS" id="3QFNug6$uP2" role="3clFbx">
                <node concept="3cpWs6" id="3QFNug6_Ip8" role="3cqZAp">
                  <node concept="2OqwBi" id="3QFNug6_NjJ" role="3cqZAk">
                    <node concept="37vLTw" id="3QFNug6_NjK" role="2Oq$k0">
                      <ref role="3cqZAo" node="3QFNug6$iah" resolve="constructor" />
                    </node>
                    <node concept="liA8E" id="3QFNug6_NjL" role="2OqNvi">
                      <ref role="37wK5l" to="t6h5:~Constructor.newInstance(java.lang.Object...)" resolve="newInstance" />
                      <node concept="37vLTw" id="3QFNug6_NjM" role="37wK5m">
                        <ref role="3cqZAo" node="3ufQioQQtje" resolve="myWhatToDo" />
                      </node>
                      <node concept="Xjq3P" id="3QFNug6_NjN" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="3QFNug6$EgY" role="3clFbw">
                <node concept="2OqwBi" id="3QFNug6$GKD" role="3uHU7w">
                  <node concept="AH0OO" id="3QFNug6$Fu$" role="2Oq$k0">
                    <node concept="3cmrfG" id="3QFNug6$Fvd" role="AHEQo">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="37vLTw" id="3QFNug6$EW8" role="AHHXb">
                      <ref role="3cqZAo" node="3QFNug6$wey" resolve="parameterTypes" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3QFNug6$Hoy" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Class.isAssignableFrom(java.lang.Class)" resolve="isAssignableFrom" />
                    <node concept="3VsKOn" id="3QFNug6$I1P" role="37wK5m">
                      <ref role="3VsUkX" to="gola:~ProjectComponent" resolve="ProjectComponent" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3QFNug6$xE1" role="3uHU7B">
                  <node concept="AH0OO" id="3QFNug6$wPx" role="2Oq$k0">
                    <node concept="3cmrfG" id="3QFNug6$xdG" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="37vLTw" id="3QFNug6$weA" role="AHHXb">
                      <ref role="3cqZAo" node="3QFNug6$wey" resolve="parameterTypes" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3QFNug6$y0P" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Class.isAssignableFrom(java.lang.Class)" resolve="isAssignableFrom" />
                    <node concept="3VsKOn" id="3QFNug6$zG2" role="37wK5m">
                      <ref role="3VsUkX" to="asz6:KL8Aql8enO" resolve="Script" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3QFNug6$iah" role="1Duv9x">
            <property role="TrG5h" value="constructor" />
            <node concept="3uibUv" id="3QFNug6$iKi" role="1tU5fm">
              <ref role="3uigEE" to="t6h5:~Constructor" resolve="Constructor" />
              <node concept="3qTvmN" id="3QFNug6$jze" role="11_B2D" />
            </node>
          </node>
          <node concept="2OqwBi" id="3QFNug6$fuA" role="1DdaDG">
            <node concept="37vLTw" id="3QFNug6$fe0" role="2Oq$k0">
              <ref role="3cqZAo" node="3QFNug6_BrL" resolve="workerClass" />
            </node>
            <node concept="liA8E" id="3QFNug6$g0u" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Class.getConstructors()" resolve="getConstructors" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3QFNug6AT8r" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo8b0" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo8b1" role="1PaTwD">
              <property role="3oM_SC" value="Then," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8b2" role="1PaTwD">
              <property role="3oM_SC" value="resort" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8b3" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8b4" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8b5" role="1PaTwD">
              <property role="3oM_SC" value="worker" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8b6" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8b7" role="1PaTwD">
              <property role="3oM_SC" value="doesn't" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8b8" role="1PaTwD">
              <property role="3oM_SC" value="depend" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8b9" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8ba" role="1PaTwD">
              <property role="3oM_SC" value="Ant" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="3QFNug6$RMd" role="3cqZAp">
          <node concept="3clFbS" id="3QFNug6$RMe" role="2LFqv$">
            <node concept="3clFbJ" id="3QFNug6$RMf" role="3cqZAp">
              <node concept="3clFbS" id="3QFNug6$RMg" role="3clFbx">
                <node concept="3N13vt" id="3QFNug6$RMh" role="3cqZAp" />
              </node>
              <node concept="3y3z36" id="3QFNug6$RMi" role="3clFbw">
                <node concept="2OqwBi" id="3QFNug6$RMk" role="3uHU7B">
                  <node concept="37vLTw" id="3QFNug6$RMl" role="2Oq$k0">
                    <ref role="3cqZAo" node="3QFNug6$RMR" resolve="constructor" />
                  </node>
                  <node concept="liA8E" id="3QFNug6$RMm" role="2OqNvi">
                    <ref role="37wK5l" to="t6h5:~Constructor.getParameterCount()" resolve="getParameterCount" />
                  </node>
                </node>
                <node concept="3cmrfG" id="3QFNug6$T$p" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3QFNug6$RMn" role="3cqZAp">
              <node concept="3cpWsn" id="3QFNug6$RMo" role="3cpWs9">
                <property role="TrG5h" value="parameterTypes" />
                <node concept="10Q1$e" id="3QFNug6$RMp" role="1tU5fm">
                  <node concept="3uibUv" id="3QFNug6$RMq" role="10Q1$1">
                    <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                    <node concept="3qTvmN" id="3QFNug6$RMr" role="11_B2D" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3QFNug6$RMs" role="33vP2m">
                  <node concept="37vLTw" id="3QFNug6$RMt" role="2Oq$k0">
                    <ref role="3cqZAo" node="3QFNug6$RMR" resolve="constructor" />
                  </node>
                  <node concept="liA8E" id="3QFNug6$RMu" role="2OqNvi">
                    <ref role="37wK5l" to="t6h5:~Constructor.getParameterTypes()" resolve="getParameterTypes" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3QFNug6$RMv" role="3cqZAp">
              <node concept="3clFbS" id="3QFNug6$RMw" role="3clFbx">
                <node concept="3cpWs6" id="3QFNug6B6xd" role="3cqZAp">
                  <node concept="2OqwBi" id="3QFNug6$RMz" role="3cqZAk">
                    <node concept="37vLTw" id="3QFNug6$RM$" role="2Oq$k0">
                      <ref role="3cqZAo" node="3QFNug6$RMR" resolve="constructor" />
                    </node>
                    <node concept="liA8E" id="3QFNug6$RM_" role="2OqNvi">
                      <ref role="37wK5l" to="t6h5:~Constructor.newInstance(java.lang.Object...)" resolve="newInstance" />
                      <node concept="37vLTw" id="3QFNug6$RMA" role="37wK5m">
                        <ref role="3cqZAo" node="3ufQioQQtje" resolve="myWhatToDo" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3QFNug6$RML" role="3clFbw">
                <node concept="AH0OO" id="3QFNug6$RMM" role="2Oq$k0">
                  <node concept="3cmrfG" id="3QFNug6$RMN" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="3QFNug6$RMO" role="AHHXb">
                    <ref role="3cqZAo" node="3QFNug6$RMo" resolve="parameterTypes" />
                  </node>
                </node>
                <node concept="liA8E" id="3QFNug6$RMP" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Class.isAssignableFrom(java.lang.Class)" resolve="isAssignableFrom" />
                  <node concept="3VsKOn" id="3QFNug6$RMQ" role="37wK5m">
                    <ref role="3VsUkX" to="asz6:KL8Aql8enO" resolve="Script" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3QFNug6$RMR" role="1Duv9x">
            <property role="TrG5h" value="constructor" />
            <node concept="3uibUv" id="3QFNug6$RMS" role="1tU5fm">
              <ref role="3uigEE" to="t6h5:~Constructor" resolve="Constructor" />
              <node concept="3qTvmN" id="3QFNug6$RMT" role="11_B2D" />
            </node>
          </node>
          <node concept="2OqwBi" id="3QFNug6$RMU" role="1DdaDG">
            <node concept="37vLTw" id="3QFNug6$RMV" role="2Oq$k0">
              <ref role="3cqZAo" node="3QFNug6_BrL" resolve="workerClass" />
            </node>
            <node concept="liA8E" id="3QFNug6$RMW" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Class.getConstructors()" resolve="getConstructors" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3QFNug6BG58" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo8bb" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo8bc" role="1PaTwD">
              <property role="3oM_SC" value="Last," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8bd" role="1PaTwD">
              <property role="3oM_SC" value="respect" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8be" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8bf" role="1PaTwD">
              <property role="3oM_SC" value="case" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8bg" role="1PaTwD">
              <property role="3oM_SC" value="worker" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8bh" role="1PaTwD">
              <property role="3oM_SC" value="doesn't" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8bi" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8bj" role="1PaTwD">
              <property role="3oM_SC" value="anything" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3QFNug6BUv1" role="3cqZAp">
          <node concept="2OqwBi" id="3QFNug6C7$B" role="3cqZAk">
            <node concept="liA8E" id="3QFNug6Ccu0" role="2OqNvi">
              <ref role="37wK5l" to="t6h5:~Constructor.newInstance(java.lang.Object...)" resolve="newInstance" />
            </node>
            <node concept="2OqwBi" id="1hBlbKBYBNz" role="2Oq$k0">
              <node concept="37vLTw" id="3QFNug6C3p4" role="2Oq$k0">
                <ref role="3cqZAo" node="3QFNug6_BrL" resolve="workerClass" />
              </node>
              <node concept="liA8E" id="1hBlbKBYNFH" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Class.getDeclaredConstructor(java.lang.Class...)" resolve="getDeclaredConstructor" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="3QFNug6_c3b" role="1B3o_S" />
      <node concept="3uibUv" id="3QFNug6_g_J" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="37vLTG" id="3QFNug6_BrL" role="3clF46">
        <property role="TrG5h" value="workerClass" />
        <node concept="3uibUv" id="3QFNug6_BrK" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="3QFNug6_G8W" role="11_B2D" />
        </node>
        <node concept="2AHcQZ" id="3QFNug6ArmL" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3uibUv" id="1XAHtgEDK7o" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
      <node concept="P$JXv" id="1XAHtgEEtgc" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs_oF" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_oG" role="1PaTwD">
            <property role="3oM_SC" value="Controls" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_oH" role="1PaTwD">
            <property role="3oM_SC" value="construction" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_oI" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_oJ" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_oK" role="1PaTwD">
            <property role="3oM_SC" value="new" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_oL" role="1PaTwD">
            <property role="3oM_SC" value="worker" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_oM" role="1PaTwD">
            <property role="3oM_SC" value="instance," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_oN" role="1PaTwD">
            <property role="3oM_SC" value="subclasses" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_oO" role="1PaTwD">
            <property role="3oM_SC" value="may" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_oP" role="1PaTwD">
            <property role="3oM_SC" value="override" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_oQ" role="1PaTwD">
            <property role="3oM_SC" value="e.g." />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_oR" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_oS" role="1PaTwD">
            <property role="3oM_SC" value="pass" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_oT" role="1PaTwD">
            <property role="3oM_SC" value="arguments" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_oU" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_oV" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_oW" role="1PaTwD">
            <property role="3oM_SC" value="worker" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_oX" role="1PaTwD">
            <property role="3oM_SC" value="through" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_oY" role="1PaTwD">
            <property role="3oM_SC" value="constructor." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_oZ" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_p0" role="1PaTwD">
            <property role="3oM_SC" value="This" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_p1" role="1PaTwD">
            <property role="3oM_SC" value="method" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_p2" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_p3" role="1PaTwD">
            <property role="3oM_SC" value="part" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_p4" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="1Vtdud" id="1E1X3WHs_p5" role="1PaTwD">
            <node concept="1VuXuv" id="1E1X3WHs_p6" role="1Vtduc">
              <node concept="VXe0Z" id="1XAHtgEEFFK" role="1VuXuu">
                <ref role="VXe0S" node="1XAHtgECVZn" resolve="doInProcessWork" />
              </node>
              <node concept="1PaTwC" id="1E1X3WHs_p9" role="2JaDBN">
                <node concept="3oM_SD" id="1E1X3WHs_pa" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pb" role="1PaTwD">
            <property role="3oM_SC" value="." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1XAHtgEBAtY" role="jymVt" />
    <node concept="3clFb_" id="1XAHtgEBNbH" role="jymVt">
      <property role="TrG5h" value="invokeInProcessMain" />
      <node concept="37vLTG" id="1XAHtgEC6DH" role="3clF46">
        <property role="TrG5h" value="workerClass" />
        <node concept="3uibUv" id="1XAHtgEC6DI" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="1XAHtgEC6DJ" role="11_B2D" />
        </node>
        <node concept="2AHcQZ" id="1XAHtgEC6DK" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1XAHtgEBTmO" role="3clF46">
        <property role="TrG5h" value="workerInstance" />
        <node concept="3uibUv" id="1XAHtgEBZgc" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="2AHcQZ" id="1XAHtgECiqr" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="1XAHtgEBNbK" role="3clF47">
        <node concept="3cpWs8" id="1XAHtgECiYL" role="3cqZAp">
          <node concept="3cpWsn" id="1XAHtgECiYM" role="3cpWs9">
            <property role="TrG5h" value="method" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="1XAHtgECiYN" role="1tU5fm">
              <ref role="3uigEE" to="t6h5:~Method" resolve="Method" />
            </node>
            <node concept="2OqwBi" id="1XAHtgECiYO" role="33vP2m">
              <node concept="37vLTw" id="1XAHtgECiYP" role="2Oq$k0">
                <ref role="3cqZAo" node="1XAHtgEC6DH" resolve="workerClass" />
              </node>
              <node concept="liA8E" id="1XAHtgECiYQ" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Class.getMethod(java.lang.String,java.lang.Class...)" resolve="getMethod" />
                <node concept="Xl_RD" id="1XAHtgECiYR" role="37wK5m">
                  <property role="Xl_RC" value="work" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1XAHtgECiYS" role="3cqZAp">
          <node concept="2OqwBi" id="1XAHtgECiYT" role="3clFbG">
            <node concept="37vLTw" id="1XAHtgECiYU" role="2Oq$k0">
              <ref role="3cqZAo" node="1XAHtgECiYM" resolve="method" />
            </node>
            <node concept="liA8E" id="1XAHtgECiYV" role="2OqNvi">
              <ref role="37wK5l" to="t6h5:~Method.invoke(java.lang.Object,java.lang.Object...)" resolve="invoke" />
              <node concept="37vLTw" id="1XAHtgECICi" role="37wK5m">
                <ref role="3cqZAo" node="1XAHtgEBTmO" resolve="workerInstance" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="1XAHtgEBGS5" role="1B3o_S" />
      <node concept="3cqZAl" id="1XAHtgEBMUT" role="3clF45" />
      <node concept="3uibUv" id="1XAHtgEDwLV" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
      <node concept="P$JXv" id="1XAHtgEEIWS" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs_pc" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_pd" role="1PaTwD">
            <property role="3oM_SC" value="Controls" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pe" role="1PaTwD">
            <property role="3oM_SC" value="execution" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pf" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pg" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_ph" role="1PaTwD">
            <property role="3oM_SC" value="worker" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pi" role="1PaTwD">
            <property role="3oM_SC" value="code," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pj" role="1PaTwD">
            <property role="3oM_SC" value="by" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pk" role="1PaTwD">
            <property role="3oM_SC" value="default" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pl" role="1PaTwD">
            <property role="3oM_SC" value="just" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pm" role="1PaTwD">
            <property role="3oM_SC" value="invokes" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pn" role="1PaTwD">
            <property role="3oM_SC" value="&quot;work&quot;" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_po" role="1PaTwD">
            <property role="3oM_SC" value="no-arg" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pp" role="1PaTwD">
            <property role="3oM_SC" value="method" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pq" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pr" role="1PaTwD">
            <property role="3oM_SC" value="supplied" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_ps" role="1PaTwD">
            <property role="3oM_SC" value="worker" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pt" role="1PaTwD">
            <property role="3oM_SC" value="instance." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_pu" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_pv" role="1PaTwD">
            <property role="3oM_SC" value="Subclasses" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pw" role="1PaTwD">
            <property role="3oM_SC" value="may" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_px" role="1PaTwD">
            <property role="3oM_SC" value="override." />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_py" role="1PaTwD">
            <property role="3oM_SC" value="This" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pz" role="1PaTwD">
            <property role="3oM_SC" value="method" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_p$" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_p_" role="1PaTwD">
            <property role="3oM_SC" value="part" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pA" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="1Vtdud" id="1E1X3WHs_pB" role="1PaTwD">
            <node concept="1VuXuv" id="1E1X3WHs_pC" role="1Vtduc">
              <node concept="VXe0Z" id="1XAHtgEEX7I" role="1VuXuu">
                <ref role="VXe0S" node="1XAHtgECVZn" resolve="doInProcessWork" />
              </node>
              <node concept="1PaTwC" id="1E1X3WHs_pF" role="2JaDBN">
                <node concept="3oM_SD" id="1E1X3WHs_pG" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pH" role="1PaTwD">
            <property role="3oM_SC" value="." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4fMXdiUJnmk" role="jymVt" />
    <node concept="3clFb_" id="4fMXdiUJIup" role="jymVt">
      <property role="TrG5h" value="setArgs" />
      <node concept="3clFbS" id="4fMXdiUJIus" role="3clF47">
        <node concept="3clFbF" id="4fMXdiUKAph" role="3cqZAp">
          <node concept="37vLTI" id="4fMXdiUKFJM" role="3clFbG">
            <node concept="2YIFZM" id="4fMXdiUL35Y" role="37vLTx">
              <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
              <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
              <node concept="2OqwBi" id="4fMXdiULgGH" role="37wK5m">
                <node concept="37vLTw" id="4fMXdiULbfk" role="2Oq$k0">
                  <ref role="3cqZAo" node="4fMXdiUJUo9" resolve="args" />
                </node>
                <node concept="liA8E" id="4fMXdiULqhy" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.split(java.lang.String)" resolve="split" />
                  <node concept="Xl_RD" id="4fMXdiULv9s" role="37wK5m">
                    <property role="Xl_RC" value=" " />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4fMXdiUKApg" role="37vLTJ">
              <ref role="3cqZAo" node="4fMXdiUKqlq" resolve="myExtraArgs" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4fMXdiUJzwG" role="1B3o_S" />
      <node concept="3cqZAl" id="4fMXdiUJ$1F" role="3clF45" />
      <node concept="37vLTG" id="4fMXdiUJUo9" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="3uibUv" id="4fMXdiUJUo8" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_4F7FNq2WC" role="jymVt" />
    <node concept="3clFb_" id="7oFdQJwHF24" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getAdditionalArgs" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="2AHcQZ" id="1y5ORaoxfQz" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="7oFdQJwHF27" role="3clF47">
        <node concept="3clFbF" id="7oFdQJwImQD" role="3cqZAp">
          <node concept="3K4zz7" id="4fMXdiUM458" role="3clFbG">
            <node concept="37vLTw" id="4fMXdiUMhcT" role="3K4GZi">
              <ref role="3cqZAo" node="4fMXdiUKqlq" resolve="myExtraArgs" />
            </node>
            <node concept="3clFbC" id="4fMXdiULVft" role="3K4Cdx">
              <node concept="10Nm6u" id="4fMXdiUM0d1" role="3uHU7w" />
              <node concept="37vLTw" id="4fMXdiULQ39" role="3uHU7B">
                <ref role="3cqZAo" node="4fMXdiUKqlq" resolve="myExtraArgs" />
              </node>
            </node>
            <node concept="2YIFZM" id="7oFdQJwImRM" role="3K4E3e">
              <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              <node concept="17QB3L" id="4fMXdiUMqdI" role="3PaCim" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="7oFdQJwH_6S" role="1B3o_S" />
      <node concept="3uibUv" id="7oFdQJwIqVj" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="17QB3L" id="4fMXdiUMyAe" role="11_B2D" />
      </node>
    </node>
    <node concept="2tJIrI" id="7oFdQJwHr1l" role="jymVt" />
    <node concept="3clFb_" id="4OPNMy2a6Ln" role="jymVt">
      <property role="TrG5h" value="outputBuildNumber" />
      <node concept="3clFbS" id="4OPNMy2a6Lp" role="3clF47">
        <node concept="3cpWs8" id="4OPNMy2a6Lq" role="3cqZAp">
          <node concept="3cpWsn" id="4OPNMy2a6Lr" role="3cpWs9">
            <property role="TrG5h" value="antTaskBuildNumber" />
            <property role="3TUv4t" value="false" />
            <node concept="17QB3L" id="4OPNMy2a6Ls" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="4OPNMy2a6Lt" role="3cqZAp">
          <node concept="3cpWsn" id="4OPNMy2a6Lu" role="3cpWs9">
            <property role="TrG5h" value="resource" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="4OPNMy2a6Lv" role="1tU5fm">
              <ref role="3uigEE" to="zf81:~URL" resolve="URL" />
            </node>
            <node concept="2OqwBi" id="4OPNMy2a6Lw" role="33vP2m">
              <node concept="1rXfSq" id="4OPNMy2a6Lx" role="2Oq$k0">
                <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
              </node>
              <node concept="liA8E" id="4OPNMy2a6Ly" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Class.getResource(java.lang.String)" resolve="getResource" />
                <node concept="Xl_RD" id="4OPNMy2a6Lz" role="37wK5m">
                  <property role="Xl_RC" value="/build.number" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4OPNMy2a6L$" role="3cqZAp">
          <node concept="3clFbC" id="4OPNMy2a6L_" role="3clFbw">
            <node concept="37vLTw" id="4OPNMy2a6LA" role="3uHU7B">
              <ref role="3cqZAo" node="4OPNMy2a6Lu" resolve="resource" />
            </node>
            <node concept="10Nm6u" id="4OPNMy2a6LB" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="4OPNMy2a6LC" role="3clFbx">
            <node concept="3clFbF" id="4OPNMy2a6LD" role="3cqZAp">
              <node concept="1rXfSq" id="4OPNMy2a6LE" role="3clFbG">
                <ref role="37wK5l" to="gola:~Task.log(java.lang.String,int)" resolve="log" />
                <node concept="Xl_RD" id="4OPNMy2a6LF" role="37wK5m">
                  <property role="Xl_RC" value="Can't determine version of ant task." />
                </node>
                <node concept="10M0yZ" id="4OPNMy2a6LG" role="37wK5m">
                  <ref role="1PxDUh" to="gola:~Project" resolve="Project" />
                  <ref role="3cqZAo" to="gola:~Project.MSG_DEBUG" resolve="MSG_DEBUG" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4OPNMy2a6LH" role="3cqZAp" />
          </node>
        </node>
        <node concept="3J1_TO" id="4OPNMy2a6LI" role="3cqZAp">
          <node concept="3clFbS" id="4OPNMy2a6LS" role="1zxBo7">
            <node concept="3clFbF" id="4OPNMy2a6LT" role="3cqZAp">
              <node concept="37vLTI" id="4OPNMy2a6LU" role="3clFbG">
                <node concept="37vLTw" id="4OPNMy2a6LV" role="37vLTJ">
                  <ref role="3cqZAo" node="4OPNMy2a6Lr" resolve="antTaskBuildNumber" />
                </node>
                <node concept="2YIFZM" id="4OPNMy2a6LW" role="37vLTx">
                  <ref role="1Pybhc" node="3ufQioQQti6" resolve="MpsLoadTask" />
                  <ref role="37wK5l" node="3ufQioQQtAL" resolve="readBuildNumber" />
                  <node concept="2OqwBi" id="4OPNMy2a6LX" role="37wK5m">
                    <node concept="37vLTw" id="4OPNMy2a6LY" role="2Oq$k0">
                      <ref role="3cqZAo" node="4OPNMy2a6Lu" resolve="resource" />
                    </node>
                    <node concept="liA8E" id="4OPNMy2a6LZ" role="2OqNvi">
                      <ref role="37wK5l" to="zf81:~URL.openStream()" resolve="openStream" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4OPNMy2a6M0" role="3cqZAp">
              <node concept="22lmx$" id="4OPNMy2a6M1" role="3clFbw">
                <node concept="3clFbC" id="4OPNMy2a6M2" role="3uHU7B">
                  <node concept="37vLTw" id="4OPNMy2a6M3" role="3uHU7B">
                    <ref role="3cqZAo" node="4OPNMy2a6Lr" resolve="antTaskBuildNumber" />
                  </node>
                  <node concept="10Nm6u" id="4OPNMy2a6M4" role="3uHU7w" />
                </node>
                <node concept="2OqwBi" id="4OPNMy2a6M5" role="3uHU7w">
                  <node concept="37vLTw" id="4OPNMy2a6M6" role="2Oq$k0">
                    <ref role="3cqZAo" node="4OPNMy2a6Lr" resolve="antTaskBuildNumber" />
                  </node>
                  <node concept="liA8E" id="4OPNMy2a6M7" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.isEmpty()" resolve="isEmpty" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="4OPNMy2a6M8" role="3clFbx">
                <node concept="3clFbF" id="4OPNMy2a6M9" role="3cqZAp">
                  <node concept="1rXfSq" id="4OPNMy2a6Ma" role="3clFbG">
                    <ref role="37wK5l" to="gola:~Task.log(java.lang.String,int)" resolve="log" />
                    <node concept="Xl_RD" id="4OPNMy2a6Mb" role="37wK5m">
                      <property role="Xl_RC" value="Can't determine version of ant task." />
                    </node>
                    <node concept="10M0yZ" id="4OPNMy2a6Mc" role="37wK5m">
                      <ref role="1PxDUh" to="gola:~Project" resolve="Project" />
                      <ref role="3cqZAo" to="gola:~Project.MSG_DEBUG" resolve="MSG_DEBUG" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="4OPNMy2a6Md" role="3cqZAp" />
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="4OPNMy2a6LJ" role="1zxBo5">
            <node concept="XOnhg" id="4OPNMy2a6LQ" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ignore" />
              <node concept="nSUau" id="xvs04dGs3w" role="1tU5fm">
                <node concept="3uibUv" id="4OPNMy2a6LR" role="nSUat">
                  <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="4OPNMy2a6LK" role="1zc67A">
              <node concept="3clFbF" id="4OPNMy2a6LL" role="3cqZAp">
                <node concept="1rXfSq" id="4OPNMy2a6LM" role="3clFbG">
                  <ref role="37wK5l" to="gola:~Task.log(java.lang.String,int)" resolve="log" />
                  <node concept="Xl_RD" id="4OPNMy2a6LN" role="37wK5m">
                    <property role="Xl_RC" value="Can't determine version of ant task." />
                  </node>
                  <node concept="10M0yZ" id="4OPNMy2a6LO" role="37wK5m">
                    <ref role="1PxDUh" to="gola:~Project" resolve="Project" />
                    <ref role="3cqZAo" to="gola:~Project.MSG_DEBUG" resolve="MSG_DEBUG" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4OPNMy2a6LP" role="3cqZAp" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4OPNMy2a6Me" role="3cqZAp">
          <node concept="3cpWsn" id="4OPNMy2a6Mf" role="3cpWs9">
            <property role="TrG5h" value="mpsBuildNumber" />
            <property role="3TUv4t" value="false" />
            <node concept="17QB3L" id="4OPNMy2a6Mg" role="1tU5fm" />
          </node>
        </node>
        <node concept="3J1_TO" id="4OPNMy2a6Mh" role="3cqZAp">
          <node concept="3clFbS" id="4OPNMy2a6Mr" role="1zxBo7">
            <node concept="3clFbF" id="4OPNMy2a6Ms" role="3cqZAp">
              <node concept="37vLTI" id="4OPNMy2a6Mt" role="3clFbG">
                <node concept="37vLTw" id="4OPNMy2a6Mu" role="37vLTJ">
                  <ref role="3cqZAo" node="4OPNMy2a6Mf" resolve="mpsBuildNumber" />
                </node>
                <node concept="2YIFZM" id="4OPNMy2a6Mv" role="37vLTx">
                  <ref role="1Pybhc" node="3ufQioQQti6" resolve="MpsLoadTask" />
                  <ref role="37wK5l" node="3ufQioQQtAL" resolve="readBuildNumber" />
                  <node concept="2ShNRf" id="4OPNMy2a6Mw" role="37wK5m">
                    <node concept="1pGfFk" id="4OPNMy2a6Mx" role="2ShVmc">
                      <ref role="37wK5l" to="guwi:~FileInputStream.&lt;init&gt;(java.io.File)" resolve="FileInputStream" />
                      <node concept="2ShNRf" id="4OPNMy2a6My" role="37wK5m">
                        <node concept="1pGfFk" id="4OPNMy2a6Mz" role="2ShVmc">
                          <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                          <node concept="3cpWs3" id="4OPNMy2a6M$" role="37wK5m">
                            <node concept="3cpWs3" id="4OPNMy2a6M_" role="3uHU7B">
                              <node concept="2OqwBi" id="4OPNMy2a6MA" role="3uHU7B">
                                <node concept="37vLTw" id="4OPNMy2a6MB" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4OPNMy2a6Nm" resolve="mpsHome" />
                                </node>
                                <node concept="liA8E" id="4OPNMy2a6MC" role="2OqNvi">
                                  <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                                </node>
                              </node>
                              <node concept="10M0yZ" id="4OPNMy2a6MD" role="3uHU7w">
                                <ref role="1PxDUh" to="guwi:~File" resolve="File" />
                                <ref role="3cqZAo" to="guwi:~File.separator" resolve="separator" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="4OPNMy2a6ME" role="3uHU7w">
                              <property role="Xl_RC" value="build.number" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4OPNMy2a6MF" role="3cqZAp">
              <node concept="22lmx$" id="4OPNMy2a6MG" role="3clFbw">
                <node concept="3clFbC" id="4OPNMy2a6MH" role="3uHU7B">
                  <node concept="37vLTw" id="4OPNMy2a6MI" role="3uHU7B">
                    <ref role="3cqZAo" node="4OPNMy2a6Mf" resolve="mpsBuildNumber" />
                  </node>
                  <node concept="10Nm6u" id="4OPNMy2a6MJ" role="3uHU7w" />
                </node>
                <node concept="2OqwBi" id="4OPNMy2a6MK" role="3uHU7w">
                  <node concept="37vLTw" id="4OPNMy2a6ML" role="2Oq$k0">
                    <ref role="3cqZAo" node="4OPNMy2a6Mf" resolve="mpsBuildNumber" />
                  </node>
                  <node concept="liA8E" id="4OPNMy2a6MM" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.isEmpty()" resolve="isEmpty" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="4OPNMy2a6MN" role="3clFbx">
                <node concept="3clFbF" id="4OPNMy2a6MO" role="3cqZAp">
                  <node concept="1rXfSq" id="4OPNMy2a6MP" role="3clFbG">
                    <ref role="37wK5l" to="gola:~Task.log(java.lang.String,int)" resolve="log" />
                    <node concept="Xl_RD" id="4OPNMy2a6MQ" role="37wK5m">
                      <property role="Xl_RC" value="Can't determine version of MPS." />
                    </node>
                    <node concept="10M0yZ" id="4OPNMy2a6MR" role="37wK5m">
                      <ref role="1PxDUh" to="gola:~Project" resolve="Project" />
                      <ref role="3cqZAo" to="gola:~Project.MSG_DEBUG" resolve="MSG_DEBUG" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="4OPNMy2a6MS" role="3cqZAp" />
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="4OPNMy2a6Mi" role="1zxBo5">
            <node concept="XOnhg" id="4OPNMy2a6Mp" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ignore" />
              <node concept="nSUau" id="xvs04dGs3y" role="1tU5fm">
                <node concept="3uibUv" id="4OPNMy2a6Mq" role="nSUat">
                  <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="4OPNMy2a6Mj" role="1zc67A">
              <node concept="3clFbF" id="4OPNMy2a6Mk" role="3cqZAp">
                <node concept="1rXfSq" id="4OPNMy2a6Ml" role="3clFbG">
                  <ref role="37wK5l" to="gola:~Task.log(java.lang.String,int)" resolve="log" />
                  <node concept="Xl_RD" id="4OPNMy2a6Mm" role="37wK5m">
                    <property role="Xl_RC" value="Can't determine version of MPS." />
                  </node>
                  <node concept="10M0yZ" id="4OPNMy2a6Mn" role="37wK5m">
                    <ref role="1PxDUh" to="gola:~Project" resolve="Project" />
                    <ref role="3cqZAo" to="gola:~Project.MSG_DEBUG" resolve="MSG_DEBUG" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4OPNMy2a6Mo" role="3cqZAp" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4OPNMy2a6MT" role="3cqZAp">
          <node concept="2OqwBi" id="4OPNMy2a6MU" role="3clFbw">
            <node concept="37vLTw" id="4OPNMy2a6MV" role="2Oq$k0">
              <ref role="3cqZAo" node="4OPNMy2a6Mf" resolve="mpsBuildNumber" />
            </node>
            <node concept="liA8E" id="4OPNMy2a6MW" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="37vLTw" id="4OPNMy2a6MX" role="37wK5m">
                <ref role="3cqZAo" node="4OPNMy2a6Lr" resolve="antTaskBuildNumber" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="4OPNMy2a6MY" role="9aQIa">
            <node concept="3clFbS" id="4OPNMy2a6MZ" role="9aQI4">
              <node concept="3clFbF" id="4OPNMy2a6N0" role="3cqZAp">
                <node concept="1rXfSq" id="4OPNMy2a6N1" role="3clFbG">
                  <ref role="37wK5l" to="gola:~Task.log(java.lang.String,int)" resolve="log" />
                  <node concept="3cpWs3" id="4OPNMy2a6N2" role="37wK5m">
                    <node concept="3cpWs3" id="4OPNMy2a6N3" role="3uHU7B">
                      <node concept="3cpWs3" id="4OPNMy2a6N4" role="3uHU7B">
                        <node concept="3cpWs3" id="4OPNMy2a6N5" role="3uHU7B">
                          <node concept="3cpWs3" id="4OPNMy2a6N6" role="3uHU7B">
                            <node concept="Xl_RD" id="4OPNMy2a6N7" role="3uHU7B">
                              <property role="Xl_RC" value="MPS build number is " />
                            </node>
                            <node concept="37vLTw" id="4OPNMy2a6N8" role="3uHU7w">
                              <ref role="3cqZAo" node="4OPNMy2a6Mf" resolve="mpsBuildNumber" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="4OPNMy2a6N9" role="3uHU7w">
                            <property role="Xl_RC" value=", while ant task build number is " />
                          </node>
                        </node>
                        <node concept="37vLTw" id="4OPNMy2a6Na" role="3uHU7w">
                          <ref role="3cqZAo" node="4OPNMy2a6Lr" resolve="antTaskBuildNumber" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="4OPNMy2a6Nb" role="3uHU7w">
                        <property role="Xl_RC" value=".\n" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="4OPNMy2a6Nc" role="3uHU7w">
                      <property role="Xl_RC" value="This may cause errors." />
                    </node>
                  </node>
                  <node concept="10M0yZ" id="4OPNMy2a6Nd" role="37wK5m">
                    <ref role="1PxDUh" to="gola:~Project" resolve="Project" />
                    <ref role="3cqZAo" to="gola:~Project.MSG_WARN" resolve="MSG_WARN" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4OPNMy2a6Ne" role="3clFbx">
            <node concept="3clFbF" id="4OPNMy2a6Nf" role="3cqZAp">
              <node concept="1rXfSq" id="4OPNMy2a6Ng" role="3clFbG">
                <ref role="37wK5l" to="gola:~Task.log(java.lang.String,int)" resolve="log" />
                <node concept="3cpWs3" id="4OPNMy2a6Nh" role="37wK5m">
                  <node concept="Xl_RD" id="4OPNMy2a6Ni" role="3uHU7B">
                    <property role="Xl_RC" value="Build number " />
                  </node>
                  <node concept="37vLTw" id="4OPNMy2a6Nj" role="3uHU7w">
                    <ref role="3cqZAo" node="4OPNMy2a6Mf" resolve="mpsBuildNumber" />
                  </node>
                </node>
                <node concept="10M0yZ" id="4OPNMy2a6Nk" role="37wK5m">
                  <ref role="1PxDUh" to="gola:~Project" resolve="Project" />
                  <ref role="3cqZAo" to="gola:~Project.MSG_INFO" resolve="MSG_INFO" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4OPNMy2a6Nl" role="3clF45" />
      <node concept="37vLTG" id="4OPNMy2a6Nm" role="3clF46">
        <property role="TrG5h" value="mpsHome" />
        <node concept="3uibUv" id="4OPNMy2a6Nn" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3Tm6S6" id="4OPNMy2a6No" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1_4F7FNq2WD" role="jymVt" />
    <node concept="3clFb_" id="3ufQioQQtvs" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="processNonZeroExitCode" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm6S6" id="3ufQioQQtvt" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQtvu" role="3clF45" />
      <node concept="37vLTG" id="3ufQioQQtvv" role="3clF46">
        <property role="TrG5h" value="i" />
        <property role="3TUv4t" value="false" />
        <node concept="10Oyi0" id="3ufQioQQtvw" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3ufQioQQtvx" role="3clF47">
        <node concept="YS8fn" id="3ufQioQQtvy" role="3cqZAp">
          <node concept="2ShNRf" id="3ufQioQQtvz" role="YScLw">
            <node concept="1pGfFk" id="3ufQioQQtv$" role="2ShVmc">
              <ref role="37wK5l" to="gola:~BuildException.&lt;init&gt;(java.lang.String)" resolve="BuildException" />
              <node concept="3cpWs3" id="3ufQioQQtv_" role="37wK5m">
                <node concept="3cpWs3" id="3ufQioQQtvA" role="3uHU7B">
                  <node concept="Xl_RD" id="3ufQioQQtvB" role="3uHU7B">
                    <property role="Xl_RC" value="Process exited with code " />
                  </node>
                  <node concept="37vLTw" id="2BHiRxgm9E_" role="3uHU7w">
                    <ref role="3cqZAo" node="3ufQioQQtvv" resolve="i" />
                  </node>
                </node>
                <node concept="Xl_RD" id="3ufQioQQtvD" role="3uHU7w">
                  <property role="Xl_RC" value="." />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_4F7FNq2WE" role="jymVt" />
    <node concept="3clFb_" id="3ufQioQQtvE" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="dumpPropertiesToWhatToDo" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm6S6" id="3ufQioQQtvF" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQtvG" role="3clF45" />
      <node concept="3clFbS" id="3ufQioQQtvH" role="3clF47">
        <node concept="3cpWs8" id="3ufQioQQtvI" role="3cqZAp">
          <node concept="3cpWsn" id="3ufQioQQtvJ" role="3cpWs9">
            <property role="TrG5h" value="properties" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="3ufQioQQtvK" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Hashtable" resolve="Hashtable" />
              <node concept="3uibUv" id="1hBlbKBZBsa" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3uibUv" id="1hBlbKBZJvS" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="2OqwBi" id="3ufQioQQtvL" role="33vP2m">
              <node concept="1rXfSq" id="4hiugqyyP62" role="2Oq$k0">
                <ref role="37wK5l" to="gola:~ProjectComponent.getProject()" resolve="getProject" />
              </node>
              <node concept="liA8E" id="3ufQioQQtvN" role="2OqNvi">
                <ref role="37wK5l" to="gola:~Project.getProperties()" resolve="getProperties" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="3ufQioQQtvO" role="3cqZAp">
          <node concept="2OqwBi" id="3ufQioQQtvP" role="1DdaDG">
            <node concept="37vLTw" id="3GM_nagTBOV" role="2Oq$k0">
              <ref role="3cqZAo" node="3ufQioQQtvJ" resolve="properties" />
            </node>
            <node concept="liA8E" id="3ufQioQQtvR" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Hashtable.keySet()" resolve="keySet" />
            </node>
          </node>
          <node concept="3cpWsn" id="3ufQioQQtvS" role="1Duv9x">
            <property role="TrG5h" value="key" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="3ufQioQQtvT" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
          <node concept="3clFbS" id="3ufQioQQtvU" role="2LFqv$">
            <node concept="3clFbF" id="3ufQioQQtvV" role="3cqZAp">
              <node concept="2OqwBi" id="3ufQioQQtvW" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeuvND" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ufQioQQtje" resolve="myWhatToDo" />
                </node>
                <node concept="liA8E" id="3ufQioQQtvY" role="2OqNvi">
                  <ref role="37wK5l" to="asz6:KL8Aql8eBe" resolve="putProperty" />
                  <node concept="37vLTw" id="3GM_nagTskL" role="37wK5m">
                    <ref role="3cqZAo" node="3ufQioQQtvS" resolve="key" />
                  </node>
                  <node concept="2YIFZM" id="1hBlbKC0z00" role="37wK5m">
                    <ref role="37wK5l" to="33ny:~Objects.toString(java.lang.Object,java.lang.String)" resolve="toString" />
                    <ref role="1Pybhc" to="33ny:~Objects" resolve="Objects" />
                    <node concept="2OqwBi" id="1hBlbKC0KxO" role="37wK5m">
                      <node concept="37vLTw" id="1hBlbKC0FCo" role="2Oq$k0">
                        <ref role="3cqZAo" node="3ufQioQQtvJ" resolve="properties" />
                      </node>
                      <node concept="liA8E" id="1hBlbKC0Ycc" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Hashtable.get(java.lang.Object)" resolve="get" />
                        <node concept="37vLTw" id="1hBlbKC19uv" role="37wK5m">
                          <ref role="3cqZAo" node="3ufQioQQtvS" resolve="key" />
                        </node>
                      </node>
                    </node>
                    <node concept="10Nm6u" id="1hBlbKC1i_8" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_4F7FNq2WF" role="jymVt" />
    <node concept="3clFb_" id="4OPNMy25ZUO" role="jymVt">
      <property role="TrG5h" value="getMpsHome_Checked" />
      <property role="DiZV1" value="true" />
      <node concept="3clFbS" id="4OPNMy25ZUR" role="3clF47">
        <node concept="3cpWs8" id="4OPNMy26mqh" role="3cqZAp">
          <node concept="3cpWsn" id="4OPNMy26mqi" role="3cpWs9">
            <property role="TrG5h" value="mpsHome" />
            <node concept="3uibUv" id="4OPNMy26mqf" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="37vLTw" id="4OPNMy26pLu" role="33vP2m">
              <ref role="3cqZAo" node="3ufQioQQtjb" resolve="myMpsHome" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3ufQioQQtwk" role="3cqZAp">
          <node concept="3clFbC" id="3ufQioQQtwl" role="3clFbw">
            <node concept="37vLTw" id="4OPNMy26qsr" role="3uHU7B">
              <ref role="3cqZAo" node="4OPNMy26mqi" resolve="mpsHome" />
            </node>
            <node concept="10Nm6u" id="3ufQioQQtwn" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="3ufQioQQtwo" role="3clFbx">
            <node concept="3SKdUt" id="gQDJKN92DZ" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXo8bk" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXo8bl" role="1PaTwD">
                  <property role="3oM_SC" value="myMpsHome" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bm" role="1PaTwD">
                  <property role="3oM_SC" value="serves" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bn" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bo" role="1PaTwD">
                  <property role="3oM_SC" value="an" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bp" role="1PaTwD">
                  <property role="3oM_SC" value="indicator" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bq" role="1PaTwD">
                  <property role="3oM_SC" value="whether" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8br" role="1PaTwD">
                  <property role="3oM_SC" value="user" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bs" role="1PaTwD">
                  <property role="3oM_SC" value="set" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bt" role="1PaTwD">
                  <property role="3oM_SC" value="its" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bu" role="1PaTwD">
                  <property role="3oM_SC" value="location" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bv" role="1PaTwD">
                  <property role="3oM_SC" value="explicitly" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bw" role="1PaTwD">
                  <property role="3oM_SC" value="(hence," />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bx" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8by" role="1PaTwD">
                  <property role="3oM_SC" value="desire" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bz" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8b$" role="1PaTwD">
                  <property role="3oM_SC" value="force" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8b_" role="1PaTwD">
                  <property role="3oM_SC" value="its" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bA" role="1PaTwD">
                  <property role="3oM_SC" value="own" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bB" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bC" role="1PaTwD">
                  <property role="3oM_SC" value="ignore" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bD" role="1PaTwD">
                  <property role="3oM_SC" value="default" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bE" role="1PaTwD">
                  <property role="3oM_SC" value="home" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bF" role="1PaTwD">
                  <property role="3oM_SC" value="lookup" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bG" role="1PaTwD">
                  <property role="3oM_SC" value="logic" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="gQDJKN92HJ" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXo8bH" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXo8bI" role="1PaTwD">
                  <property role="3oM_SC" value="presently" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bJ" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bK" role="1PaTwD">
                  <property role="3oM_SC" value="MPSClasspathUtil," />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bL" role="1PaTwD">
                  <property role="3oM_SC" value="see" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bM" role="1PaTwD">
                  <property role="3oM_SC" value="#calculateClassPath(boolean))." />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bN" role="1PaTwD">
                  <property role="3oM_SC" value="This" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bO" role="1PaTwD">
                  <property role="3oM_SC" value="method" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bP" role="1PaTwD">
                  <property role="3oM_SC" value="shall" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bQ" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bR" role="1PaTwD">
                  <property role="3oM_SC" value="assign" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bS" role="1PaTwD">
                  <property role="3oM_SC" value="myMpsHome" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8bT" role="1PaTwD">
                  <property role="3oM_SC" value="value." />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="LYSlkhhyI8" role="3cqZAp">
              <node concept="3cpWsn" id="LYSlkhhyI9" role="3cpWs9">
                <property role="TrG5h" value="mpsHomePath" />
                <property role="3TUv4t" value="false" />
                <node concept="17QB3L" id="LYSlkhhyIa" role="1tU5fm" />
                <node concept="2OqwBi" id="LYSlkhhyIb" role="33vP2m">
                  <node concept="liA8E" id="LYSlkhhyIc" role="2OqNvi">
                    <ref role="37wK5l" to="gola:~Project.getProperty(java.lang.String)" resolve="getProperty" />
                    <node concept="Xl_RD" id="LYSlkhhyId" role="37wK5m">
                      <property role="Xl_RC" value="mps.home" />
                    </node>
                  </node>
                  <node concept="1rXfSq" id="LYSlkhhNCR" role="2Oq$k0">
                    <ref role="37wK5l" to="gola:~ProjectComponent.getProject()" resolve="getProject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="LYSlkhhyIf" role="3cqZAp">
              <node concept="3clFbS" id="LYSlkhhyIg" role="3clFbx">
                <node concept="3clFbF" id="LYSlkhhyIh" role="3cqZAp">
                  <node concept="37vLTI" id="LYSlkhhyIi" role="3clFbG">
                    <node concept="37vLTw" id="LYSlkhhyIj" role="37vLTJ">
                      <ref role="3cqZAo" node="LYSlkhhyI9" resolve="mpsHomePath" />
                    </node>
                    <node concept="2OqwBi" id="LYSlkhhyIk" role="37vLTx">
                      <node concept="liA8E" id="LYSlkhhyIm" role="2OqNvi">
                        <ref role="37wK5l" to="gola:~Project.getProperty(java.lang.String)" resolve="getProperty" />
                        <node concept="Xl_RD" id="LYSlkhhyIn" role="37wK5m">
                          <property role="Xl_RC" value="mps_home" />
                        </node>
                      </node>
                      <node concept="1rXfSq" id="LYSlkhhXOZ" role="2Oq$k0">
                        <ref role="37wK5l" to="gola:~ProjectComponent.getProject()" resolve="getProject" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="LYSlkhhyIo" role="3clFbw">
                <node concept="37vLTw" id="LYSlkhhyIp" role="2Oq$k0">
                  <ref role="3cqZAo" node="LYSlkhhyI9" resolve="mpsHomePath" />
                </node>
                <node concept="17RlXB" id="LYSlkhhyIq" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbJ" id="LYSlkhhyIr" role="3cqZAp">
              <node concept="22lmx$" id="LYSlkhhyIs" role="3clFbw">
                <node concept="3clFbC" id="LYSlkhhyIt" role="3uHU7B">
                  <node concept="37vLTw" id="LYSlkhhyIu" role="3uHU7B">
                    <ref role="3cqZAo" node="LYSlkhhyI9" resolve="mpsHomePath" />
                  </node>
                  <node concept="10Nm6u" id="LYSlkhhyIv" role="3uHU7w" />
                </node>
                <node concept="3fqX7Q" id="LYSlkhhyIw" role="3uHU7w">
                  <node concept="2OqwBi" id="LYSlkhhyIx" role="3fr31v">
                    <node concept="2OqwBi" id="LYSlkhhyIy" role="2Oq$k0">
                      <node concept="liA8E" id="LYSlkhhyI$" role="2OqNvi">
                        <ref role="37wK5l" to="gola:~Project.resolveFile(java.lang.String)" resolve="resolveFile" />
                        <node concept="37vLTw" id="LYSlkhhyI_" role="37wK5m">
                          <ref role="3cqZAo" node="LYSlkhhyI9" resolve="mpsHomePath" />
                        </node>
                      </node>
                      <node concept="1rXfSq" id="LYSlkhi8bS" role="2Oq$k0">
                        <ref role="37wK5l" to="gola:~ProjectComponent.getProject()" resolve="getProject" />
                      </node>
                    </node>
                    <node concept="liA8E" id="LYSlkhhyIA" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="LYSlkhhyIB" role="3clFbx">
                <node concept="YS8fn" id="LYSlkhhyIE" role="3cqZAp">
                  <node concept="2ShNRf" id="LYSlkhhyIF" role="YScLw">
                    <node concept="1pGfFk" id="LYSlkhhyIG" role="2ShVmc">
                      <ref role="37wK5l" to="gola:~BuildException.&lt;init&gt;(java.lang.String)" resolve="BuildException" />
                      <node concept="Xl_RD" id="LYSlkhhyIH" role="37wK5m">
                        <property role="Xl_RC" value="Path to mps home expected. Specify mps.home property or mpsHome attribute." />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="LYSlkhhyIN" role="3cqZAp">
              <node concept="37vLTI" id="LYSlkhiS$E" role="3clFbG">
                <node concept="37vLTw" id="LYSlkhj35s" role="37vLTJ">
                  <ref role="3cqZAo" node="4OPNMy26mqi" resolve="mpsHome" />
                </node>
                <node concept="2OqwBi" id="LYSlkhhyIO" role="37vLTx">
                  <node concept="1rXfSq" id="LYSlkhi_mQ" role="2Oq$k0">
                    <ref role="37wK5l" to="gola:~ProjectComponent.getProject()" resolve="getProject" />
                  </node>
                  <node concept="liA8E" id="LYSlkhhyIQ" role="2OqNvi">
                    <ref role="37wK5l" to="gola:~Project.resolveFile(java.lang.String)" resolve="resolveFile" />
                    <node concept="37vLTw" id="LYSlkhhyIR" role="37wK5m">
                      <ref role="3cqZAo" node="LYSlkhhyI9" resolve="mpsHomePath" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4OPNMy26kbi" role="3cqZAp">
          <node concept="1rXfSq" id="4OPNMy26kbg" role="3clFbG">
            <ref role="37wK5l" node="4OPNMy29iST" resolve="checkMpsHome" />
            <node concept="37vLTw" id="4OPNMy26mqm" role="37wK5m">
              <ref role="3cqZAo" node="4OPNMy26mqi" resolve="mpsHome" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4OPNMy26tCS" role="3cqZAp">
          <node concept="37vLTw" id="4OPNMy26zeh" role="3cqZAk">
            <ref role="3cqZAo" node="4OPNMy26mqi" resolve="mpsHome" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="4OPNMy25S0I" role="1B3o_S" />
      <node concept="3uibUv" id="4OPNMy25Z87" role="3clF45">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
      <node concept="2AHcQZ" id="4OPNMy27rfZ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="P$JXv" id="LYSlkhsNfu" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs_pI" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_pJ" role="1PaTwD">
            <property role="3oM_SC" value="XXX" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pK" role="1PaTwD">
            <property role="3oM_SC" value="it's" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pL" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pM" role="1PaTwD">
            <property role="3oM_SC" value="clear" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pN" role="1PaTwD">
            <property role="3oM_SC" value="whether" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pO" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pP" role="1PaTwD">
            <property role="3oM_SC" value="use" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pQ" role="1PaTwD">
            <property role="3oM_SC" value="mps.home" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pR" role="1PaTwD">
            <property role="3oM_SC" value="variable" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pS" role="1PaTwD">
            <property role="3oM_SC" value="or" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pT" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pU" role="1PaTwD">
            <property role="3oM_SC" value="rely" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pV" role="1PaTwD">
            <property role="3oM_SC" value="on" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pW" role="1PaTwD">
            <property role="3oM_SC" value="build" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pX" role="1PaTwD">
            <property role="3oM_SC" value="project" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pY" role="1PaTwD">
            <property role="3oM_SC" value="dependencies" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_pZ" role="1PaTwD">
            <property role="3oM_SC" value="(that's" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_q0" role="1PaTwD">
            <property role="3oM_SC" value="what" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_q1" role="1PaTwD">
            <property role="3oM_SC" value="MPSClasspathUtil.getClassPathRootsFromDependencies()" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_q2" role="1PaTwD">
            <property role="3oM_SC" value="does)." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_q3" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_q4" role="1PaTwD">
            <property role="3oM_SC" value="There's" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_q5" role="1PaTwD">
            <property role="3oM_SC" value="https://youtrack.jetbrains.com/issue/MPS-30056" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_q6" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_q7" role="1PaTwD">
            <property role="3oM_SC" value="track" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_q8" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_q9" role="1PaTwD">
            <property role="3oM_SC" value="issue." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_qa" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_qb" role="1PaTwD">
            <property role="3oM_SC" value="What" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qc" role="1PaTwD">
            <property role="3oM_SC" value="I" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qd" role="1PaTwD">
            <property role="3oM_SC" value="don't" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qe" role="1PaTwD">
            <property role="3oM_SC" value="like" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qf" role="1PaTwD">
            <property role="3oM_SC" value="about" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qg" role="1PaTwD">
            <property role="3oM_SC" value="mps.home" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qh" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qi" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qj" role="1PaTwD">
            <property role="3oM_SC" value="generate" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qk" role="1PaTwD">
            <property role="3oM_SC" value="task" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_ql" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qm" role="1PaTwD">
            <property role="3oM_SC" value="its" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qn" role="1PaTwD">
            <property role="3oM_SC" value="MPSEnvironment" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qo" role="1PaTwD">
            <property role="3oM_SC" value="loads" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qp" role="1PaTwD">
            <property role="3oM_SC" value="mps" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qq" role="1PaTwD">
            <property role="3oM_SC" value="core" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qr" role="1PaTwD">
            <property role="3oM_SC" value="libraries" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qs" role="1PaTwD">
            <property role="3oM_SC" value="based" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qt" role="1PaTwD">
            <property role="3oM_SC" value="on" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qu" role="1PaTwD">
            <property role="3oM_SC" value="artifacts.*" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qv" role="1PaTwD">
            <property role="3oM_SC" value="locations," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qw" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qx" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qy" role="1PaTwD">
            <property role="3oM_SC" value="case" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qz" role="1PaTwD">
            <property role="3oM_SC" value="mps.home" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_q$" role="1PaTwD">
            <property role="3oM_SC" value="doesn't" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_q_" role="1PaTwD">
            <property role="3oM_SC" value="match" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_qA" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_qB" role="1PaTwD">
            <property role="3oM_SC" value="artifacts.*," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qC" role="1PaTwD">
            <property role="3oM_SC" value="we" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qD" role="1PaTwD">
            <property role="3oM_SC" value="end" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qE" role="1PaTwD">
            <property role="3oM_SC" value="up" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qF" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qG" role="1PaTwD">
            <property role="3oM_SC" value="an" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qH" role="1PaTwD">
            <property role="3oM_SC" value="MPS" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qI" role="1PaTwD">
            <property role="3oM_SC" value="filled" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qJ" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qK" role="1PaTwD">
            <property role="3oM_SC" value="undetermined" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qL" role="1PaTwD">
            <property role="3oM_SC" value="set" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qM" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qN" role="1PaTwD">
            <property role="3oM_SC" value="modules" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qO" role="1PaTwD">
            <property role="3oM_SC" value="(e.g." />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qP" role="1PaTwD">
            <property role="3oM_SC" value="whether" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qQ" role="1PaTwD">
            <property role="3oM_SC" value="coming" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qR" role="1PaTwD">
            <property role="3oM_SC" value="from" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qS" role="1PaTwD">
            <property role="3oM_SC" value="mps.home/lib" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qT" role="1PaTwD">
            <property role="3oM_SC" value="or" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qU" role="1PaTwD">
            <property role="3oM_SC" value="artifacts.mps/lib)" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4OPNMy268WR" role="jymVt" />
    <node concept="3clFb_" id="4OPNMy29iST" role="jymVt">
      <property role="TrG5h" value="checkMpsHome" />
      <node concept="3clFbS" id="4OPNMy29iSV" role="3clF47">
        <node concept="3SKdUt" id="4OPNMy29iSW" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo8bU" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo8bV" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8bW" role="1PaTwD">
              <property role="3oM_SC" value="following" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8bX" role="1PaTwD">
              <property role="3oM_SC" value="code" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8bY" role="1PaTwD">
              <property role="3oM_SC" value="checks" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8bZ" role="1PaTwD">
              <property role="3oM_SC" value="mps" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8c0" role="1PaTwD">
              <property role="3oM_SC" value="home" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8c1" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8c2" role="1PaTwD">
              <property role="3oM_SC" value="specified" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8c3" role="1PaTwD">
              <property role="3oM_SC" value="correctly" />
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="4OPNMy29iSY" role="3cqZAp">
          <node concept="3y3z36" id="4OPNMy29iSZ" role="1gVkn0">
            <node concept="37vLTw" id="4OPNMy29iT0" role="3uHU7B">
              <ref role="3cqZAo" node="4OPNMy29iTx" resolve="mpsHome" />
            </node>
            <node concept="10Nm6u" id="4OPNMy29iT1" role="3uHU7w" />
          </node>
          <node concept="Xl_RD" id="4OPNMy29iT2" role="1gVpfI">
            <property role="Xl_RC" value="MPS home folder must be specified. Use either mpshome task attribute or mps_home or mps.home Ant property to specify home folder." />
          </node>
        </node>
        <node concept="1gVbGN" id="4yJL2wVNmT0" role="3cqZAp">
          <node concept="2OqwBi" id="4yJL2wVNGgN" role="1gVkn0">
            <node concept="2ShNRf" id="4yJL2wVN_P6" role="2Oq$k0">
              <node concept="1pGfFk" id="4yJL2wVN_Pq" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                <node concept="37vLTw" id="4yJL2wVN_Pr" role="37wK5m">
                  <ref role="3cqZAo" node="4OPNMy29iTx" resolve="mpsHome" />
                </node>
                <node concept="Xl_RD" id="4yJL2wVN_Ps" role="37wK5m">
                  <property role="Xl_RC" value="build.txt" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="4yJL2wVNGgO" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
            </node>
          </node>
          <node concept="Xl_RD" id="4yJL2wVNmSZ" role="1gVpfI">
            <property role="Xl_RC" value="MPS home folder is the folder where build.txt file is located. Please correct mpshome attribute, mps_home/mps.home property, depending on which was set" />
          </node>
        </node>
        <node concept="3clFbH" id="4OPNMy29iTu" role="3cqZAp" />
        <node concept="3clFbF" id="4OPNMy29iTv" role="3cqZAp">
          <node concept="1rXfSq" id="4OPNMy29iTw" role="3clFbG">
            <ref role="37wK5l" node="4OPNMy2a6Ln" resolve="outputBuildNumber" />
            <node concept="37vLTw" id="4OPNMy2aeei" role="37wK5m">
              <ref role="3cqZAo" node="4OPNMy29iTx" resolve="mpsHome" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4OPNMy29iTz" role="3clF45" />
      <node concept="37vLTG" id="4OPNMy29iTx" role="3clF46">
        <property role="TrG5h" value="mpsHome" />
        <node concept="3uibUv" id="4OPNMy29iTy" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3Tm6S6" id="4OPNMy29iT$" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1_4F7FNq2WG" role="jymVt" />
    <node concept="3clFb_" id="1TaHNgiI6p3" role="jymVt">
      <property role="TrG5h" value="startsWith" />
      <node concept="10P_77" id="1TaHNgiI6p4" role="3clF45" />
      <node concept="3Tm6S6" id="1TaHNgiI6p5" role="1B3o_S" />
      <node concept="3clFbS" id="1TaHNgiI6p6" role="3clF47">
        <node concept="3clFbF" id="1TaHNgiI6p7" role="3cqZAp">
          <node concept="1Wc70l" id="1TaHNgiI6p8" role="3clFbG">
            <node concept="1eOMI4" id="1TaHNgiI6p9" role="3uHU7w">
              <node concept="22lmx$" id="1TaHNgiI6pa" role="1eOMHV">
                <node concept="22lmx$" id="1TaHNgiI6pb" role="3uHU7B">
                  <node concept="2OqwBi" id="1TaHNgiI6pc" role="3uHU7w">
                    <node concept="37vLTw" id="2BHiRxgm8xp" role="2Oq$k0">
                      <ref role="3cqZAo" node="1TaHNgiI6p_" resolve="prefix" />
                    </node>
                    <node concept="liA8E" id="1TaHNgiI6pe" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                      <node concept="10M0yZ" id="3HIEjxvbF3O" role="37wK5m">
                        <ref role="1PxDUh" to="guwi:~File" resolve="File" />
                        <ref role="3cqZAo" to="guwi:~File.separator" resolve="separator" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="1TaHNgiI6pg" role="3uHU7B">
                    <node concept="2OqwBi" id="1TaHNgiI6ph" role="3uHU7B">
                      <node concept="37vLTw" id="2BHiRxgm8MT" role="2Oq$k0">
                        <ref role="3cqZAo" node="1TaHNgiI6pz" resolve="path" />
                      </node>
                      <node concept="liA8E" id="1TaHNgiI6pj" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1TaHNgiI6pk" role="3uHU7w">
                      <node concept="37vLTw" id="2BHiRxgm7bM" role="2Oq$k0">
                        <ref role="3cqZAo" node="1TaHNgiI6p_" resolve="prefix" />
                      </node>
                      <node concept="liA8E" id="1TaHNgiI6pm" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="3HIEjxvbF4d" role="3uHU7w">
                  <node concept="10M0yZ" id="3HIEjxvbF4g" role="3uHU7w">
                    <ref role="1PxDUh" to="guwi:~File" resolve="File" />
                    <ref role="3cqZAo" to="guwi:~File.separatorChar" resolve="separatorChar" />
                  </node>
                  <node concept="2OqwBi" id="1TaHNgiI6pp" role="3uHU7B">
                    <node concept="37vLTw" id="2BHiRxgl4Wg" role="2Oq$k0">
                      <ref role="3cqZAo" node="1TaHNgiI6pz" resolve="path" />
                    </node>
                    <node concept="liA8E" id="1TaHNgiI6pr" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.charAt(int)" resolve="charAt" />
                      <node concept="2OqwBi" id="1TaHNgiI6ps" role="37wK5m">
                        <node concept="37vLTw" id="2BHiRxglrzb" role="2Oq$k0">
                          <ref role="3cqZAo" node="1TaHNgiI6p_" resolve="prefix" />
                        </node>
                        <node concept="liA8E" id="1TaHNgiI6pu" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1TaHNgiI6pv" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxgmasG" role="2Oq$k0">
                <ref role="3cqZAo" node="1TaHNgiI6pz" resolve="path" />
              </node>
              <node concept="liA8E" id="1TaHNgiI6px" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                <node concept="37vLTw" id="2BHiRxgmjH7" role="37wK5m">
                  <ref role="3cqZAo" node="1TaHNgiI6p_" resolve="prefix" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1TaHNgiI6pz" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="17QB3L" id="1TaHNgiI6p$" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1TaHNgiI6p_" role="3clF46">
        <property role="TrG5h" value="prefix" />
        <node concept="17QB3L" id="1TaHNgiI6pA" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1_4F7FNq2WH" role="jymVt" />
    <node concept="3clFb_" id="3ufQioQQtwU" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="calculateClassPath" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="tKbzP52n7a" role="1B3o_S" />
      <node concept="3uibUv" id="3ufQioQQtwW" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="3ufQioQQtwX" role="11_B2D">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3clFbS" id="3ufQioQQtwY" role="3clF47">
        <node concept="3cpWs8" id="gQDJKN6Qjv" role="3cqZAp">
          <node concept="3cpWsn" id="gQDJKN6Qjw" role="3cpWs9">
            <property role="TrG5h" value="classPathRoots" />
            <node concept="3uibUv" id="3eyCFyRtD6O" role="1tU5fm">
              <ref role="3uigEE" node="3t7WP23N$8C" resolve="MPSClasspathUtil" />
            </node>
            <node concept="2ShNRf" id="3eyCFyRw4KF" role="33vP2m">
              <node concept="1pGfFk" id="3eyCFyRwbNw" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="3eyCFyRtpOK" resolve="MPSClasspathUtil" />
                <node concept="1rXfSq" id="3eyCFyRwmmF" role="37wK5m">
                  <ref role="37wK5l" to="gola:~ProjectComponent.getProject()" resolve="getProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="gQDJKN8hUb" role="3cqZAp">
          <node concept="3clFbS" id="gQDJKN8hUd" role="3clFbx">
            <node concept="3SKdUt" id="gQDJKN8LBt" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXo8c4" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXo8c5" role="1PaTwD">
                  <property role="3oM_SC" value="if" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8c6" role="1PaTwD">
                  <property role="3oM_SC" value="user" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8c7" role="1PaTwD">
                  <property role="3oM_SC" value="set" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8c8" role="1PaTwD">
                  <property role="3oM_SC" value="mps" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8c9" role="1PaTwD">
                  <property role="3oM_SC" value="home" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8ca" role="1PaTwD">
                  <property role="3oM_SC" value="location" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8cb" role="1PaTwD">
                  <property role="3oM_SC" value="explicitly," />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8cc" role="1PaTwD">
                  <property role="3oM_SC" value="assume" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8cd" role="1PaTwD">
                  <property role="3oM_SC" value="he" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8ce" role="1PaTwD">
                  <property role="3oM_SC" value="knows" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8cf" role="1PaTwD">
                  <property role="3oM_SC" value="what" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8cg" role="1PaTwD">
                  <property role="3oM_SC" value="he's" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8ch" role="1PaTwD">
                  <property role="3oM_SC" value="doing" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8ci" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8cj" role="1PaTwD">
                  <property role="3oM_SC" value="wishes" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8ck" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8cl" role="1PaTwD">
                  <property role="3oM_SC" value="force" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8cm" role="1PaTwD">
                  <property role="3oM_SC" value="it" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="3uHpWKwxs0A" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXo8cn" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXo8co" role="1PaTwD">
                  <property role="3oM_SC" value="XXX" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8cp" role="1PaTwD">
                  <property role="3oM_SC" value="perhaps," />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8cq" role="1PaTwD">
                  <property role="3oM_SC" value="would" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8cr" role="1PaTwD">
                  <property role="3oM_SC" value="be" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8cs" role="1PaTwD">
                  <property role="3oM_SC" value="better" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8ct" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8cu" role="1PaTwD">
                  <property role="3oM_SC" value="have" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8cv" role="1PaTwD">
                  <property role="3oM_SC" value="nested" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8cw" role="1PaTwD">
                  <property role="3oM_SC" value="&lt;mps&gt;" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8cx" role="1PaTwD">
                  <property role="3oM_SC" value="element" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8cy" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8cz" role="1PaTwD">
                  <property role="3oM_SC" value="rich" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8c$" role="1PaTwD">
                  <property role="3oM_SC" value="set" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8c_" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo8cA" role="1PaTwD">
                  <property role="3oM_SC" value="options?" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="gQDJKN8EGj" role="3cqZAp">
              <node concept="2OqwBi" id="3eyCFyRvc6p" role="3clFbG">
                <node concept="37vLTw" id="gQDJKN8EGh" role="2Oq$k0">
                  <ref role="3cqZAo" node="gQDJKN6Qjw" resolve="classPathRoots" />
                </node>
                <node concept="liA8E" id="3eyCFyRviRp" role="2OqNvi">
                  <ref role="37wK5l" node="3eyCFyRtT2t" resolve="fillClassPath" />
                  <node concept="2ShNRf" id="gQDJKN9aSq" role="37wK5m">
                    <node concept="1pGfFk" id="gQDJKN9aSr" role="2ShVmc">
                      <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                      <node concept="37vLTw" id="gQDJKN9aSs" role="37wK5m">
                        <ref role="3cqZAo" node="3ufQioQQtjb" resolve="myMpsHome" />
                      </node>
                      <node concept="Xl_RD" id="gQDJKN9aSt" role="37wK5m">
                        <property role="Xl_RC" value="lib/" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="gQDJKN8oF9" role="3clFbw">
            <node concept="10Nm6u" id="gQDJKN8p8S" role="3uHU7w" />
            <node concept="37vLTw" id="gQDJKN8mw6" role="3uHU7B">
              <ref role="3cqZAo" node="3ufQioQQtjb" resolve="myMpsHome" />
            </node>
          </node>
          <node concept="9aQIb" id="gQDJKN8F31" role="9aQIa">
            <node concept="3clFbS" id="gQDJKN8F32" role="9aQI4">
              <node concept="3clFbF" id="gQDJKN8pBh" role="3cqZAp">
                <node concept="2OqwBi" id="3eyCFyRvDM8" role="3clFbG">
                  <node concept="37vLTw" id="gQDJKN8pBn" role="2Oq$k0">
                    <ref role="3cqZAo" node="gQDJKN6Qjw" resolve="classPathRoots" />
                  </node>
                  <node concept="liA8E" id="3eyCFyRvNPq" role="2OqNvi">
                    <ref role="37wK5l" node="3eyCFyRudR9" resolve="fillClassPathRootsFromProjectDependencies" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="gQDJKN6Qj_" role="3cqZAp">
          <node concept="3fqX7Q" id="3eyCFyRzlnH" role="3clFbw">
            <node concept="2OqwBi" id="3eyCFyRzlnJ" role="3fr31v">
              <node concept="liA8E" id="3eyCFyRzlnK" role="2OqNvi">
                <ref role="37wK5l" node="3eyCFyRyM$R" resolve="hasClasspathRoots" />
              </node>
              <node concept="37vLTw" id="3eyCFyRzlnL" role="2Oq$k0">
                <ref role="3cqZAo" node="gQDJKN6Qjw" resolve="classPathRoots" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="gQDJKN6QjD" role="3clFbx">
            <node concept="3cpWs8" id="7Ronifnpy2r" role="3cqZAp">
              <node concept="3cpWsn" id="7Ronifnpy2s" role="3cpWs9">
                <property role="TrG5h" value="m" />
                <node concept="17QB3L" id="7Ronifnpy2q" role="1tU5fm" />
                <node concept="Xl_RD" id="7Ronifnpy2t" role="33vP2m">
                  <property role="Xl_RC" value="Dependency on MPS build scripts (e.g. 'mps', 'mpsWorkbench' or 'mpsPlugin' is required to generate MPS modules in project %s." />
                </node>
              </node>
            </node>
            <node concept="YS8fn" id="gQDJKN6QjE" role="3cqZAp">
              <node concept="2ShNRf" id="gQDJKN6QjF" role="YScLw">
                <node concept="1pGfFk" id="gQDJKN6QjG" role="2ShVmc">
                  <ref role="37wK5l" to="gola:~BuildException.&lt;init&gt;(java.lang.String)" resolve="BuildException" />
                  <node concept="2YIFZM" id="7Ronifnp$hh" role="37wK5m">
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                    <node concept="37vLTw" id="7RonifnpA62" role="37wK5m">
                      <ref role="3cqZAo" node="7Ronifnpy2s" resolve="m" />
                    </node>
                    <node concept="2OqwBi" id="7RonifnpBVN" role="37wK5m">
                      <node concept="1rXfSq" id="7RonifnpB54" role="2Oq$k0">
                        <ref role="37wK5l" to="gola:~ProjectComponent.getProject()" resolve="getProject" />
                      </node>
                      <node concept="liA8E" id="7RonifnpC$t" role="2OqNvi">
                        <ref role="37wK5l" to="gola:~Project.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="gQDJKN6Qk0" role="3cqZAp">
          <node concept="2OqwBi" id="3eyCFyRwVWD" role="3cqZAk">
            <node concept="37vLTw" id="gQDJKN6QjR" role="2Oq$k0">
              <ref role="3cqZAo" node="gQDJKN6Qjw" resolve="classPathRoots" />
            </node>
            <node concept="liA8E" id="3eyCFyRx4ve" role="2OqNvi">
              <ref role="37wK5l" node="3eyCFyRwzjX" resolve="getAllClassesAndJars" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6IC6gZqG5Jm" role="3clF46">
        <property role="TrG5h" value="fork" />
        <node concept="10P_77" id="6IC6gZqG5Jl" role="1tU5fm" />
      </node>
      <node concept="P$JXv" id="3uHpWKwx6Dk" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs_qV" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_qW" role="1PaTwD">
            <property role="3oM_SC" value="subclasses" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qX" role="1PaTwD">
            <property role="3oM_SC" value="shall" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qY" role="1PaTwD">
            <property role="3oM_SC" value="override" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_qZ" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_r0" role="1PaTwD">
            <property role="3oM_SC" value="case" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_r1" role="1PaTwD">
            <property role="3oM_SC" value="they" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_r2" role="1PaTwD">
            <property role="3oM_SC" value="got" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_r3" role="1PaTwD">
            <property role="3oM_SC" value="better" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_r4" role="1PaTwD">
            <property role="3oM_SC" value="idea" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_r5" role="1PaTwD">
            <property role="3oM_SC" value="how" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_r6" role="1PaTwD">
            <property role="3oM_SC" value="worker" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_r7" role="1PaTwD">
            <property role="3oM_SC" value="classpath" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_r8" role="1PaTwD">
            <property role="3oM_SC" value="shall" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_r9" role="1PaTwD">
            <property role="3oM_SC" value="look" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_ra" role="1PaTwD">
            <property role="3oM_SC" value="like." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_rb" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_rc" role="1PaTwD">
            <property role="3oM_SC" value="Generally," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rd" role="1PaTwD">
            <property role="3oM_SC" value="subclasses" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_re" role="1PaTwD">
            <property role="3oM_SC" value="use" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rf" role="1PaTwD">
            <property role="3oM_SC" value="properties" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rg" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rh" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="1Vtdud" id="1E1X3WHs_ri" role="1PaTwD">
            <node concept="1VuXuv" id="1E1X3WHs_rj" role="1Vtduc">
              <node concept="VXe0Z" id="3uHpWKwxl0h" role="1VuXuu">
                <ref role="VXe0S" to="gola:~Target.getProject()" resolve="getProject" />
              </node>
              <node concept="1PaTwC" id="1E1X3WHs_rm" role="2JaDBN">
                <node concept="3oM_SD" id="1E1X3WHs_rn" role="1PaTwD">
                  <property role="3oM_SC" value="ant" />
                </node>
                <node concept="3oM_SD" id="1E1X3WHs_ro" role="1PaTwD">
                  <property role="3oM_SC" value="project" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rp" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rq" role="1PaTwD">
            <property role="3oM_SC" value="access" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rr" role="1PaTwD">
            <property role="3oM_SC" value="information" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rs" role="1PaTwD">
            <property role="3oM_SC" value="about" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rt" role="1PaTwD">
            <property role="3oM_SC" value="environment" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_4F7FNq2WI" role="jymVt" />
    <node concept="3clFb_" id="76_s2Q_8RRz" role="jymVt">
      <property role="TrG5h" value="filterClasspathEntry" />
      <node concept="37vLTG" id="76_s2Q_9JRF" role="3clF46">
        <property role="TrG5h" value="entry" />
        <node concept="17QB3L" id="76_s2Q_9T0i" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="76_s2Q_9ji7" role="3clF45" />
      <node concept="3Tmbuc" id="76_s2Q_9dJ7" role="1B3o_S" />
      <node concept="3clFbS" id="76_s2Q_8RRB" role="3clF47">
        <node concept="3clFbF" id="76_s2Q_bbFc" role="3cqZAp">
          <node concept="3clFbT" id="76_s2Q_bbFb" role="3clFbG" />
        </node>
      </node>
      <node concept="P$JXv" id="76_s2Q_aHFn" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs_ru" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_rv" role="1PaTwD">
            <property role="3oM_SC" value="Override" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rw" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rx" role="1PaTwD">
            <property role="3oM_SC" value="veto" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_ry" role="1PaTwD">
            <property role="3oM_SC" value="adding" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rz" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_r$" role="1PaTwD">
            <property role="3oM_SC" value="classpath" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_r_" role="1PaTwD">
            <property role="3oM_SC" value="entry" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rA" role="1PaTwD">
            <property role="3oM_SC" value="from" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rB" role="1PaTwD">
            <property role="3oM_SC" value="current" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rC" role="1PaTwD">
            <property role="3oM_SC" value="process's" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rD" role="1PaTwD">
            <property role="3oM_SC" value="classpath" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_rE" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_rF" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rG" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rH" role="1PaTwD">
            <property role="3oM_SC" value="classpath" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rI" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rJ" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rK" role="1PaTwD">
            <property role="3oM_SC" value="forked" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rL" role="1PaTwD">
            <property role="3oM_SC" value="process." />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rM" role="1PaTwD">
            <property role="3oM_SC" value="Entries" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rN" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rO" role="1PaTwD">
            <property role="3oM_SC" value="which" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rP" role="1PaTwD">
            <property role="3oM_SC" value="true" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rQ" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rR" role="1PaTwD">
            <property role="3oM_SC" value="returned" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rS" role="1PaTwD">
            <property role="3oM_SC" value="will" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rT" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rU" role="1PaTwD">
            <property role="3oM_SC" value="skipped." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1rGdf3ZwIXd" role="jymVt" />
    <node concept="3clFb_" id="1rGdf3ZwV9j" role="jymVt">
      <property role="TrG5h" value="createStreamHandler" />
      <node concept="3uibUv" id="1rGdf3Zx6$V" role="3clF45">
        <ref role="3uigEE" to="kpdv:~ExecuteStreamHandler" resolve="ExecuteStreamHandler" />
      </node>
      <node concept="3Tmbuc" id="1rGdf3ZxSH0" role="1B3o_S" />
      <node concept="3clFbS" id="1rGdf3ZwV9n" role="3clF47">
        <node concept="3clFbF" id="1rGdf3ZxxzO" role="3cqZAp">
          <node concept="2ShNRf" id="1rGdf3ZxxzM" role="3clFbG">
            <node concept="1pGfFk" id="1rGdf3ZxB6d" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" node="3ufQioQQt1D" resolve="MyExecuteStreamHandler" />
              <node concept="Xjq3P" id="1rGdf3ZxGor" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="1rGdf3ZxXF9" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs_rV" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_rW" role="1PaTwD">
            <property role="3oM_SC" value="Override" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rX" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rY" role="1PaTwD">
            <property role="3oM_SC" value="set" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_rZ" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_s0" role="1PaTwD">
            <property role="3oM_SC" value="appropriate" />
          </node>
          <node concept="1Vtdud" id="1E1X3WHs_s1" role="1PaTwD">
            <node concept="1VuTSG" id="1E1X3WHs_s2" role="1Vtduc">
              <node concept="1PaTwC" id="1E1X3WHs_s5" role="2JaDBN">
                <node concept="3oM_SD" id="1E1X3WHs_s6" role="1PaTwD">
                  <property role="3oM_SC" value="ExecuteStreamHandler" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_s9" role="1PaTwD">
            <property role="3oM_SC" value="on" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_sa" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_sb" role="1PaTwD">
            <property role="3oM_SC" value="forked" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_sc" role="1PaTwD">
            <property role="3oM_SC" value="process." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_4F7FNq2WJ" role="jymVt" />
    <node concept="2YIFZL" id="3ufQioQQtAL" role="jymVt">
      <property role="TrG5h" value="readBuildNumber" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3ufQioQQtAM" role="1B3o_S" />
      <node concept="17QB3L" id="2uUiGxAaMHv" role="3clF45" />
      <node concept="37vLTG" id="3ufQioQQtAO" role="3clF46">
        <property role="TrG5h" value="stream" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3ufQioQQtAP" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~InputStream" resolve="InputStream" />
        </node>
      </node>
      <node concept="3clFbS" id="3ufQioQQtAQ" role="3clF47">
        <node concept="3cpWs8" id="3ufQioQQtAR" role="3cqZAp">
          <node concept="3cpWsn" id="3ufQioQQtAS" role="3cpWs9">
            <property role="TrG5h" value="bufferedReader" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="3ufQioQQtAT" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~BufferedReader" resolve="BufferedReader" />
            </node>
            <node concept="10Nm6u" id="3ufQioQQtAU" role="33vP2m" />
          </node>
        </node>
        <node concept="3J1_TO" id="3ufQioQQtAV" role="3cqZAp">
          <node concept="3clFbS" id="3ufQioQQtBk" role="1zxBo7">
            <node concept="3clFbF" id="3ufQioQQtBl" role="3cqZAp">
              <node concept="37vLTI" id="3ufQioQQtBm" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTzmk" role="37vLTJ">
                  <ref role="3cqZAo" node="3ufQioQQtAS" resolve="bufferedReader" />
                </node>
                <node concept="2ShNRf" id="3ufQioQQtBo" role="37vLTx">
                  <node concept="1pGfFk" id="3ufQioQQtBp" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~BufferedReader.&lt;init&gt;(java.io.Reader)" resolve="BufferedReader" />
                    <node concept="2ShNRf" id="3ufQioQQtBq" role="37wK5m">
                      <node concept="1pGfFk" id="3ufQioQQtBr" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~InputStreamReader.&lt;init&gt;(java.io.InputStream)" resolve="InputStreamReader" />
                        <node concept="37vLTw" id="2BHiRxgm9Qn" role="37wK5m">
                          <ref role="3cqZAo" node="3ufQioQQtAO" resolve="stream" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3ufQioQQtBt" role="3cqZAp">
              <node concept="3cpWsn" id="3ufQioQQtBu" role="3cpWs9">
                <property role="TrG5h" value="buildNumber" />
                <property role="3TUv4t" value="false" />
                <node concept="17QB3L" id="2uUiGxAaMGi" role="1tU5fm" />
                <node concept="10Nm6u" id="3ufQioQQtBw" role="33vP2m" />
              </node>
            </node>
            <node concept="3cpWs8" id="3ufQioQQtBx" role="3cqZAp">
              <node concept="3cpWsn" id="3ufQioQQtBy" role="3cpWs9">
                <property role="TrG5h" value="configurationName" />
                <property role="3TUv4t" value="false" />
                <node concept="17QB3L" id="2uUiGxAaMGh" role="1tU5fm" />
                <node concept="10Nm6u" id="3ufQioQQtB$" role="33vP2m" />
              </node>
            </node>
            <node concept="2$JKZl" id="3ufQioQQtB_" role="3cqZAp">
              <node concept="3clFbT" id="3ufQioQQtBA" role="2$JKZa">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="3clFbS" id="3ufQioQQtBB" role="2LFqv$">
                <node concept="3cpWs8" id="3ufQioQQtBC" role="3cqZAp">
                  <node concept="3cpWsn" id="3ufQioQQtBD" role="3cpWs9">
                    <property role="TrG5h" value="line" />
                    <property role="3TUv4t" value="false" />
                    <node concept="17QB3L" id="2uUiGxAaMEt" role="1tU5fm" />
                    <node concept="2OqwBi" id="3ufQioQQtBF" role="33vP2m">
                      <node concept="37vLTw" id="3GM_nagT$9L" role="2Oq$k0">
                        <ref role="3cqZAo" node="3ufQioQQtAS" resolve="bufferedReader" />
                      </node>
                      <node concept="liA8E" id="3ufQioQQtBH" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~BufferedReader.readLine()" resolve="readLine" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="3ufQioQQtBI" role="3cqZAp">
                  <node concept="3clFbC" id="3ufQioQQtBJ" role="3clFbw">
                    <node concept="37vLTw" id="3GM_nagTwiq" role="3uHU7B">
                      <ref role="3cqZAo" node="3ufQioQQtBD" resolve="line" />
                    </node>
                    <node concept="10Nm6u" id="3ufQioQQtBL" role="3uHU7w" />
                  </node>
                  <node concept="3clFbS" id="3ufQioQQtBM" role="3clFbx">
                    <node concept="3zACq4" id="3ufQioQQtBN" role="3cqZAp" />
                  </node>
                </node>
                <node concept="3clFbJ" id="3ufQioQQtBO" role="3cqZAp">
                  <node concept="2OqwBi" id="3ufQioQQtBP" role="3clFbw">
                    <node concept="37vLTw" id="3GM_nagTwfu" role="2Oq$k0">
                      <ref role="3cqZAo" node="3ufQioQQtBD" resolve="line" />
                    </node>
                    <node concept="liA8E" id="3ufQioQQtBR" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                      <node concept="37vLTw" id="2BHiRxeop2U" role="37wK5m">
                        <ref role="3cqZAo" node="3ufQioQQtj3" resolve="CONFIGURATION_NAME" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="3ufQioQQtBT" role="9aQIa">
                    <node concept="2OqwBi" id="3ufQioQQtBU" role="3clFbw">
                      <node concept="37vLTw" id="3GM_nagTteC" role="2Oq$k0">
                        <ref role="3cqZAo" node="3ufQioQQtBD" resolve="line" />
                      </node>
                      <node concept="liA8E" id="3ufQioQQtBW" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                        <node concept="37vLTw" id="2BHiRxeoq9c" role="37wK5m">
                          <ref role="3cqZAo" node="3ufQioQQtj7" resolve="BUILD_NUMBER" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="3ufQioQQtBY" role="3clFbx">
                      <node concept="3cpWs8" id="3ufQioQQtBZ" role="3cqZAp">
                        <node concept="3cpWsn" id="3ufQioQQtC0" role="3cpWs9">
                          <property role="TrG5h" value="tmp" />
                          <property role="3TUv4t" value="false" />
                          <node concept="17QB3L" id="2uUiGxAaMH_" role="1tU5fm" />
                          <node concept="2OqwBi" id="3ufQioQQtC2" role="33vP2m">
                            <node concept="37vLTw" id="3GM_nagTwne" role="2Oq$k0">
                              <ref role="3cqZAo" node="3ufQioQQtBD" resolve="line" />
                            </node>
                            <node concept="liA8E" id="3ufQioQQtC4" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                              <node concept="2OqwBi" id="3ufQioQQtC5" role="37wK5m">
                                <node concept="37vLTw" id="2BHiRxeoqqT" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3ufQioQQtj7" resolve="BUILD_NUMBER" />
                                </node>
                                <node concept="liA8E" id="3ufQioQQtC7" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="3ufQioQQtC8" role="3cqZAp">
                        <node concept="37vLTI" id="3ufQioQQtC9" role="3clFbG">
                          <node concept="37vLTw" id="3GM_nagT_6Q" role="37vLTJ">
                            <ref role="3cqZAo" node="3ufQioQQtBu" resolve="buildNumber" />
                          </node>
                          <node concept="2OqwBi" id="3ufQioQQtCb" role="37vLTx">
                            <node concept="37vLTw" id="3GM_nagTtV_" role="2Oq$k0">
                              <ref role="3cqZAo" node="3ufQioQQtC0" resolve="tmp" />
                            </node>
                            <node concept="liA8E" id="3ufQioQQtCd" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.replaceAll(java.lang.String,java.lang.String)" resolve="replaceAll" />
                              <node concept="Xl_RD" id="3ufQioQQtCe" role="37wK5m">
                                <property role="Xl_RC" value="(\\s*)=(\\s*)(.*)" />
                              </node>
                              <node concept="Xl_RD" id="3ufQioQQtCf" role="37wK5m">
                                <property role="Xl_RC" value="$3" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="3ufQioQQtCg" role="3clFbx">
                    <node concept="3cpWs8" id="3ufQioQQtCh" role="3cqZAp">
                      <node concept="3cpWsn" id="3ufQioQQtCi" role="3cpWs9">
                        <property role="TrG5h" value="tmp" />
                        <property role="3TUv4t" value="false" />
                        <node concept="17QB3L" id="2uUiGxAaMG6" role="1tU5fm" />
                        <node concept="2OqwBi" id="3ufQioQQtCk" role="33vP2m">
                          <node concept="37vLTw" id="3GM_nagTxS_" role="2Oq$k0">
                            <ref role="3cqZAo" node="3ufQioQQtBD" resolve="line" />
                          </node>
                          <node concept="liA8E" id="3ufQioQQtCm" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                            <node concept="2OqwBi" id="3ufQioQQtCn" role="37wK5m">
                              <node concept="37vLTw" id="2BHiRxeoicG" role="2Oq$k0">
                                <ref role="3cqZAo" node="3ufQioQQtj3" resolve="CONFIGURATION_NAME" />
                              </node>
                              <node concept="liA8E" id="3ufQioQQtCp" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3ufQioQQtCq" role="3cqZAp">
                      <node concept="37vLTI" id="3ufQioQQtCr" role="3clFbG">
                        <node concept="37vLTw" id="3GM_nagTtPo" role="37vLTJ">
                          <ref role="3cqZAo" node="3ufQioQQtBy" resolve="configurationName" />
                        </node>
                        <node concept="2OqwBi" id="3ufQioQQtCt" role="37vLTx">
                          <node concept="37vLTw" id="3GM_nagTyAm" role="2Oq$k0">
                            <ref role="3cqZAo" node="3ufQioQQtCi" resolve="tmp" />
                          </node>
                          <node concept="liA8E" id="3ufQioQQtCv" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.replaceAll(java.lang.String,java.lang.String)" resolve="replaceAll" />
                            <node concept="Xl_RD" id="3ufQioQQtCw" role="37wK5m">
                              <property role="Xl_RC" value="(\\s*)=(\\s*)(.*)" />
                            </node>
                            <node concept="Xl_RD" id="3ufQioQQtCx" role="37wK5m">
                              <property role="Xl_RC" value="$3" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3ufQioQQtCy" role="3cqZAp">
              <node concept="1Wc70l" id="3ufQioQQtCz" role="3clFbw">
                <node concept="3y3z36" id="3ufQioQQtC$" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTBLT" role="3uHU7B">
                    <ref role="3cqZAo" node="3ufQioQQtBu" resolve="buildNumber" />
                  </node>
                  <node concept="10Nm6u" id="3ufQioQQtCA" role="3uHU7w" />
                </node>
                <node concept="3y3z36" id="3ufQioQQtCB" role="3uHU7w">
                  <node concept="37vLTw" id="3GM_nagTAWE" role="3uHU7B">
                    <ref role="3cqZAo" node="3ufQioQQtBy" resolve="configurationName" />
                  </node>
                  <node concept="10Nm6u" id="3ufQioQQtCD" role="3uHU7w" />
                </node>
              </node>
              <node concept="3clFbS" id="3ufQioQQtCE" role="3clFbx">
                <node concept="3cpWs6" id="3ufQioQQtCF" role="3cqZAp">
                  <node concept="3cpWs3" id="3ufQioQQtCG" role="3cqZAk">
                    <node concept="3cpWs3" id="3ufQioQQtCH" role="3uHU7B">
                      <node concept="37vLTw" id="3GM_nagTsLQ" role="3uHU7B">
                        <ref role="3cqZAo" node="3ufQioQQtBy" resolve="configurationName" />
                      </node>
                      <node concept="Xl_RD" id="3ufQioQQtCJ" role="3uHU7w">
                        <property role="Xl_RC" value="." />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3GM_nagTtHE" role="3uHU7w">
                      <ref role="3cqZAo" node="3ufQioQQtBu" resolve="buildNumber" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="3ufQioQQtB0" role="1zxBo5">
            <node concept="XOnhg" id="3ufQioQQtB2" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ignore" />
              <node concept="nSUau" id="xvs04dGs3$" role="1tU5fm">
                <node concept="3uibUv" id="3ufQioQQtB3" role="nSUat">
                  <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="3ufQioQQtB1" role="1zc67A" />
          </node>
          <node concept="1wplmZ" id="xvs04dGy_B" role="1zxBo6">
            <node concept="3clFbS" id="3ufQioQQtB4" role="1wplMD">
              <node concept="3clFbJ" id="3ufQioQQtB5" role="3cqZAp">
                <node concept="3y3z36" id="3ufQioQQtB6" role="3clFbw">
                  <node concept="37vLTw" id="3GM_nagTxfN" role="3uHU7B">
                    <ref role="3cqZAo" node="3ufQioQQtAS" resolve="bufferedReader" />
                  </node>
                  <node concept="10Nm6u" id="3ufQioQQtB8" role="3uHU7w" />
                </node>
                <node concept="3clFbS" id="3ufQioQQtB9" role="3clFbx">
                  <node concept="3J1_TO" id="3ufQioQQtBa" role="3cqZAp">
                    <node concept="3clFbS" id="3ufQioQQtBf" role="1zxBo7">
                      <node concept="3clFbF" id="3ufQioQQtBg" role="3cqZAp">
                        <node concept="2OqwBi" id="3ufQioQQtBh" role="3clFbG">
                          <node concept="37vLTw" id="3GM_nagTyte" role="2Oq$k0">
                            <ref role="3cqZAo" node="3ufQioQQtAS" resolve="bufferedReader" />
                          </node>
                          <node concept="liA8E" id="3ufQioQQtBj" role="2OqNvi">
                            <ref role="37wK5l" to="guwi:~BufferedReader.close()" resolve="close" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3uVAMA" id="3ufQioQQtBb" role="1zxBo5">
                      <node concept="XOnhg" id="3ufQioQQtBd" role="1zc67B">
                        <property role="3TUv4t" value="false" />
                        <property role="TrG5h" value="ignore" />
                        <node concept="nSUau" id="xvs04dGs3e" role="1tU5fm">
                          <node concept="3uibUv" id="3ufQioQQtBe" role="nSUat">
                            <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="3ufQioQQtBc" role="1zc67A" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3ufQioQQtCL" role="3cqZAp">
          <node concept="10Nm6u" id="3ufQioQQtCM" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_4F7FNq5Bk" role="jymVt" />
    <node concept="312cEu" id="3ufQioQQtiq" role="jymVt">
      <property role="TrG5h" value="LogLevelAttribute" />
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <node concept="3Tm1VV" id="3ufQioQQtir" role="1B3o_S" />
      <node concept="3uibUv" id="3ufQioQQtis" role="1zkMxy">
        <ref role="3uigEE" to="rg95:~EnumeratedAttribute" resolve="EnumeratedAttribute" />
      </node>
      <node concept="3clFbW" id="3ufQioQQtix" role="jymVt">
        <node concept="3Tm1VV" id="3ufQioQQtiy" role="1B3o_S" />
        <node concept="3cqZAl" id="3ufQioQQtiz" role="3clF45" />
        <node concept="3clFbS" id="3ufQioQQtDf" role="3clF47" />
      </node>
      <node concept="3clFb_" id="3ufQioQQtiD" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getValues" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="3ufQioQQtiE" role="1B3o_S" />
        <node concept="10Q1$e" id="3ufQioQQtiF" role="3clF45">
          <node concept="17QB3L" id="2uUiGxAaMIi" role="10Q1$1" />
        </node>
        <node concept="3clFbS" id="3ufQioQQtDn" role="3clF47">
          <node concept="3SKdUt" id="5awNCDyJSAI" role="3cqZAp">
            <node concept="1PaTwC" id="5awNCDyJSAJ" role="1aUNEU">
              <node concept="3oM_SD" id="5awNCDyK0IL" role="1PaTwD">
                <property role="3oM_SC" value="if" />
              </node>
              <node concept="3oM_SD" id="5awNCDyK0IN" role="1PaTwD">
                <property role="3oM_SC" value="new" />
              </node>
              <node concept="3oM_SD" id="5awNCDyK0IQ" role="1PaTwD">
                <property role="3oM_SC" value="values" />
              </node>
              <node concept="3oM_SD" id="5awNCDyK0IU" role="1PaTwD">
                <property role="3oM_SC" value="added," />
              </node>
              <node concept="3oM_SD" id="5awNCDyK0IZ" role="1PaTwD">
                <property role="3oM_SC" value="please" />
              </node>
              <node concept="3oM_SD" id="5awNCDyK0J5" role="1PaTwD">
                <property role="3oM_SC" value="update" />
              </node>
              <node concept="3oM_SD" id="5awNCDyK0Jc" role="1PaTwD">
                <property role="3oM_SC" value="getLevel()" />
              </node>
              <node concept="3oM_SD" id="5awNCDyK0Jk" role="1PaTwD">
                <property role="3oM_SC" value="impl" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="3ufQioQQtDo" role="3cqZAp">
            <node concept="2ShNRf" id="7EACmBJyfnx" role="3cqZAk">
              <node concept="3g6Rrh" id="7EACmBJyq7T" role="2ShVmc">
                <node concept="17QB3L" id="7EACmBJyiPi" role="3g7fb8" />
                <node concept="Xl_RD" id="5awNCDy_eYs" role="3g7hyw">
                  <property role="Xl_RC" value="off" />
                </node>
                <node concept="Xl_RD" id="7EACmBJyt4B" role="3g7hyw">
                  <property role="Xl_RC" value="error" />
                </node>
                <node concept="Xl_RD" id="7EACmBJBUj0" role="3g7hyw">
                  <property role="Xl_RC" value="warn" />
                </node>
                <node concept="Xl_RD" id="7EACmBJCpzq" role="3g7hyw">
                  <property role="Xl_RC" value="warning" />
                </node>
                <node concept="Xl_RD" id="7EACmBJCSCM" role="3g7hyw">
                  <property role="Xl_RC" value="info" />
                </node>
                <node concept="Xl_RD" id="7EACmBJDH3T" role="3g7hyw">
                  <property role="Xl_RC" value="debug" />
                </node>
                <node concept="Xl_RD" id="5awNCDy__cR" role="3g7hyw">
                  <property role="Xl_RC" value="all" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_p6kO" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3ufQioQQtiH" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getLevel" />
        <property role="DiZV1" value="false" />
        <node concept="3uibUv" id="7EACmBJy8d1" role="3clF45">
          <ref role="3uigEE" to="dr5r:~Level" resolve="Level" />
        </node>
        <node concept="3Tm1VV" id="3ufQioQQtiI" role="1B3o_S" />
        <node concept="3clFbS" id="3ufQioQQtDz" role="3clF47">
          <node concept="3cpWs8" id="5awNCDyGr$C" role="3cqZAp">
            <node concept="3cpWsn" id="5awNCDyGr$A" role="3cpWs9">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="rv" />
              <node concept="10Q1$e" id="5awNCDyG_rd" role="1tU5fm">
                <node concept="3uibUv" id="5awNCDyGxwf" role="10Q1$1">
                  <ref role="3uigEE" to="dr5r:~Level" resolve="Level" />
                </node>
              </node>
              <node concept="2ShNRf" id="5awNCDyH0kA" role="33vP2m">
                <node concept="3g6Rrh" id="5awNCDyHgMr" role="2ShVmc">
                  <node concept="3uibUv" id="5awNCDyH7lY" role="3g7fb8">
                    <ref role="3uigEE" to="dr5r:~Level" resolve="Level" />
                  </node>
                  <node concept="10M0yZ" id="5awNCDyHum2" role="3g7hyw">
                    <ref role="3cqZAo" to="dr5r:~Level.OFF" resolve="OFF" />
                    <ref role="1PxDUh" to="dr5r:~Level" resolve="Level" />
                  </node>
                  <node concept="10M0yZ" id="5awNCDyHQ4V" role="3g7hyw">
                    <ref role="3cqZAo" to="dr5r:~Level.SEVERE" resolve="SEVERE" />
                    <ref role="1PxDUh" to="dr5r:~Level" resolve="Level" />
                  </node>
                  <node concept="10M0yZ" id="5awNCDyHYjW" role="3g7hyw">
                    <ref role="3cqZAo" to="dr5r:~Level.WARNING" resolve="WARNING" />
                    <ref role="1PxDUh" to="dr5r:~Level" resolve="Level" />
                  </node>
                  <node concept="10M0yZ" id="5awNCDyI7bP" role="3g7hyw">
                    <ref role="3cqZAo" to="dr5r:~Level.WARNING" resolve="WARNING" />
                    <ref role="1PxDUh" to="dr5r:~Level" resolve="Level" />
                  </node>
                  <node concept="10M0yZ" id="5awNCDyInWc" role="3g7hyw">
                    <ref role="3cqZAo" to="dr5r:~Level.INFO" resolve="INFO" />
                    <ref role="1PxDUh" to="dr5r:~Level" resolve="Level" />
                  </node>
                  <node concept="10M0yZ" id="5awNCDyJcn7" role="3g7hyw">
                    <ref role="3cqZAo" to="dr5r:~Level.FINE" resolve="FINE" />
                    <ref role="1PxDUh" to="dr5r:~Level" resolve="Level" />
                  </node>
                  <node concept="10M0yZ" id="5awNCDyJq0D" role="3g7hyw">
                    <ref role="3cqZAo" to="dr5r:~Level.ALL" resolve="ALL" />
                    <ref role="1PxDUh" to="dr5r:~Level" resolve="Level" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5awNCDyKMkq" role="3cqZAp">
            <node concept="3cpWsn" id="5awNCDyKMkr" role="3cpWs9">
              <property role="TrG5h" value="stringValues" />
              <node concept="10Q1$e" id="5awNCDyKI0a" role="1tU5fm">
                <node concept="17QB3L" id="5awNCDyKI0d" role="10Q1$1" />
              </node>
              <node concept="1rXfSq" id="5awNCDyKMks" role="33vP2m">
                <ref role="37wK5l" node="3ufQioQQtiD" resolve="getValues" />
              </node>
            </node>
          </node>
          <node concept="1gVbGN" id="5awNCDyLmTk" role="3cqZAp">
            <node concept="3clFbC" id="5awNCDyLJB$" role="1gVkn0">
              <node concept="2OqwBi" id="5awNCDyLYLL" role="3uHU7w">
                <node concept="37vLTw" id="5awNCDyLSSd" role="2Oq$k0">
                  <ref role="3cqZAo" node="5awNCDyGr$A" resolve="rv" />
                </node>
                <node concept="1Rwk04" id="5awNCDyM7FZ" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="5awNCDyL_rj" role="3uHU7B">
                <node concept="37vLTw" id="5awNCDyLw54" role="2Oq$k0">
                  <ref role="3cqZAo" node="5awNCDyKMkr" resolve="stringValues" />
                </node>
                <node concept="1Rwk04" id="5awNCDyLENN" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5awNCDyMxnb" role="3cqZAp">
            <node concept="3cpWsn" id="5awNCDyMxnc" role="3cpWs9">
              <property role="TrG5h" value="val" />
              <property role="3TUv4t" value="true" />
              <node concept="1rXfSq" id="5awNCDyMxnd" role="33vP2m">
                <ref role="37wK5l" to="rg95:~EnumeratedAttribute.getValue()" resolve="getValue" />
              </node>
              <node concept="17QB3L" id="5awNCDyMxne" role="1tU5fm" />
            </node>
          </node>
          <node concept="1Dw8fO" id="5awNCDyMxna" role="3cqZAp">
            <node concept="3clFbS" id="5awNCDyMxnf" role="2LFqv$">
              <node concept="3clFbJ" id="5awNCDyO$$P" role="3cqZAp">
                <node concept="2OqwBi" id="5awNCDyP9oZ" role="3clFbw">
                  <node concept="AH0OO" id="5awNCDyOQRK" role="2Oq$k0">
                    <node concept="37vLTw" id="5awNCDyP009" role="AHEQo">
                      <ref role="3cqZAo" node="5awNCDyMxng" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="5awNCDyOHxh" role="AHHXb">
                      <ref role="3cqZAo" node="5awNCDyKMkr" resolve="stringValues" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5awNCDyPhcI" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                    <node concept="37vLTw" id="5awNCDyPqiW" role="37wK5m">
                      <ref role="3cqZAo" node="5awNCDyMxnc" resolve="val" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="5awNCDyO$$R" role="3clFbx">
                  <node concept="3cpWs6" id="5awNCDyPzD0" role="3cqZAp">
                    <node concept="AH0OO" id="5awNCDyPLfB" role="3cqZAk">
                      <node concept="37vLTw" id="5awNCDyPRdd" role="AHEQo">
                        <ref role="3cqZAo" node="5awNCDyMxng" resolve="i" />
                      </node>
                      <node concept="37vLTw" id="5awNCDyPDSY" role="AHHXb">
                        <ref role="3cqZAo" node="5awNCDyGr$A" resolve="rv" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="5awNCDyMxng" role="1Duv9x">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="5awNCDyMAiw" role="1tU5fm" />
              <node concept="3cmrfG" id="5awNCDyMX5d" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3eOVzh" id="5awNCDyNguH" role="1Dwp0S">
              <node concept="2OqwBi" id="5awNCDyNspM" role="3uHU7w">
                <node concept="37vLTw" id="5awNCDyNn6R" role="2Oq$k0">
                  <ref role="3cqZAo" node="5awNCDyKMkr" resolve="stringValues" />
                </node>
                <node concept="1Rwk04" id="5awNCDyNxIO" role="2OqNvi" />
              </node>
              <node concept="37vLTw" id="5awNCDyN68c" role="3uHU7B">
                <ref role="3cqZAo" node="5awNCDyMxng" resolve="i" />
              </node>
            </node>
            <node concept="3uNrnE" id="5awNCDyNJCc" role="1Dwrff">
              <node concept="37vLTw" id="5awNCDyNJCe" role="2$L3a6">
                <ref role="3cqZAo" node="5awNCDyMxng" resolve="i" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="3ufQioQQtD$" role="3cqZAp">
            <node concept="10M0yZ" id="5awNCDyQBp_" role="3cqZAk">
              <ref role="3cqZAo" to="dr5r:~Level.ALL" resolve="ALL" />
              <ref role="1PxDUh" to="dr5r:~Level" resolve="Level" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_4F7FNq4i1" role="jymVt" />
    <node concept="312cEu" id="3ufQioQQtiK" role="jymVt">
      <property role="TrG5h" value="AbstractOutputReader" />
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="true" />
      <property role="1EXbeo" value="false" />
      <node concept="3Tm1VV" id="3ufQioQQtiL" role="1B3o_S" />
      <node concept="3uibUv" id="3ufQioQQtiM" role="1zkMxy">
        <ref role="3uigEE" to="wyt6:~Thread" resolve="Thread" />
      </node>
      <node concept="312cEg" id="3ufQioQQtiN" role="jymVt">
        <property role="TrG5h" value="myInputStream" />
        <property role="34CwA1" value="false" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3ufQioQQtiO" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~InputStream" resolve="InputStream" />
        </node>
        <node concept="3Tm6S6" id="3ufQioQQtiP" role="1B3o_S" />
      </node>
      <node concept="3clFbW" id="3ufQioQQtiQ" role="jymVt">
        <node concept="3Tm1VV" id="3ufQioQQtiR" role="1B3o_S" />
        <node concept="3cqZAl" id="3ufQioQQtiS" role="3clF45" />
        <node concept="37vLTG" id="3ufQioQQtiT" role="3clF46">
          <property role="TrG5h" value="inputStream" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="3ufQioQQtiU" role="1tU5fm">
            <ref role="3uigEE" to="guwi:~InputStream" resolve="InputStream" />
          </node>
        </node>
        <node concept="3clFbS" id="3ufQioQQtDH" role="3clF47">
          <node concept="3clFbF" id="3ufQioQQtDI" role="3cqZAp">
            <node concept="37vLTI" id="3ufQioQQtDJ" role="3clFbG">
              <node concept="2OqwBi" id="3ufQioQQtDK" role="37vLTJ">
                <node concept="2OwXpG" id="3ufQioQQtDL" role="2OqNvi">
                  <ref role="2Oxat5" node="3ufQioQQtiN" resolve="myInputStream" />
                </node>
                <node concept="Xjq3P" id="3ufQioQQtDM" role="2Oq$k0" />
              </node>
              <node concept="37vLTw" id="2BHiRxgm2u8" role="37vLTx">
                <ref role="3cqZAo" node="3ufQioQQtiT" resolve="inputStream" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="3ufQioQQtiV" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="run" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="3ufQioQQtiW" role="1B3o_S" />
        <node concept="3cqZAl" id="3ufQioQQtiX" role="3clF45" />
        <node concept="3clFbS" id="3ufQioQQtDO" role="3clF47">
          <node concept="3cpWs8" id="3ufQioQQtDP" role="3cqZAp">
            <node concept="3cpWsn" id="3ufQioQQtDQ" role="3cpWs9">
              <property role="TrG5h" value="s" />
              <property role="3TUv4t" value="false" />
              <node concept="3uibUv" id="3ufQioQQtDR" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~Scanner" resolve="Scanner" />
              </node>
              <node concept="2ShNRf" id="3ufQioQQtDS" role="33vP2m">
                <node concept="1pGfFk" id="3ufQioQQtDT" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~Scanner.&lt;init&gt;(java.io.InputStream)" resolve="Scanner" />
                  <node concept="2OqwBi" id="3ufQioQQtDU" role="37wK5m">
                    <node concept="2OwXpG" id="3ufQioQQtDV" role="2OqNvi">
                      <ref role="2Oxat5" node="3ufQioQQtiN" resolve="myInputStream" />
                    </node>
                    <node concept="Xjq3P" id="3ufQioQQtDW" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3J1_TO" id="3ufQioQQtDX" role="3cqZAp">
            <node concept="3clFbS" id="3ufQioQQtE2" role="1zxBo7">
              <node concept="2$JKZl" id="3ufQioQQtE3" role="3cqZAp">
                <node concept="1Wc70l" id="3ufQioQQtE4" role="2$JKZa">
                  <node concept="3fqX7Q" id="3ufQioQQtE5" role="3uHU7B">
                    <node concept="1eOMI4" id="3ufQioQQtE6" role="3fr31v">
                      <node concept="2OqwBi" id="3ufQioQQtE7" role="1eOMHV">
                        <node concept="Xjq3P" id="3ufQioQQtE8" role="2Oq$k0" />
                        <node concept="liA8E" id="3ufQioQQtE9" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Thread.isInterrupted()" resolve="isInterrupted" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3ufQioQQtEa" role="3uHU7w">
                    <node concept="37vLTw" id="3GM_nagTw8u" role="2Oq$k0">
                      <ref role="3cqZAo" node="3ufQioQQtDQ" resolve="s" />
                    </node>
                    <node concept="liA8E" id="3ufQioQQtEc" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Scanner.hasNextLine()" resolve="hasNextLine" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="3ufQioQQtEd" role="2LFqv$">
                  <node concept="3clFbF" id="3ufQioQQtEe" role="3cqZAp">
                    <node concept="2OqwBi" id="3ufQioQQtEf" role="3clFbG">
                      <node concept="Xjq3P" id="3ufQioQQtEg" role="2Oq$k0" />
                      <node concept="liA8E" id="3ufQioQQtEh" role="2OqNvi">
                        <ref role="37wK5l" node="3ufQioQQtiY" resolve="addMessage" />
                        <node concept="2OqwBi" id="3ufQioQQtEi" role="37wK5m">
                          <node concept="37vLTw" id="3GM_nagT_W5" role="2Oq$k0">
                            <ref role="3cqZAo" node="3ufQioQQtDQ" resolve="s" />
                          </node>
                          <node concept="liA8E" id="3ufQioQQtEk" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Scanner.nextLine()" resolve="nextLine" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uVAMA" id="3ufQioQQtDY" role="1zxBo5">
              <node concept="XOnhg" id="3ufQioQQtE0" role="1zc67B">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="e" />
                <node concept="nSUau" id="xvs04dGs3q" role="1tU5fm">
                  <node concept="3uibUv" id="3ufQioQQtE1" role="nSUat">
                    <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="3ufQioQQtDZ" role="1zc67A" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_p6q9" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3ufQioQQtiY" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="addMessage" />
        <property role="DiZV1" value="false" />
        <node concept="3Tmbuc" id="3ufQioQQtiZ" role="1B3o_S" />
        <node concept="3cqZAl" id="3ufQioQQtj0" role="3clF45" />
        <node concept="37vLTG" id="3ufQioQQtj1" role="3clF46">
          <property role="TrG5h" value="message" />
          <property role="3TUv4t" value="false" />
          <node concept="17QB3L" id="2uUiGxAaMGg" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="3ufQioQQtEl" role="3clF47" />
      </node>
    </node>
    <node concept="3UR2Jj" id="4vDU0BPxjHv" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHs_hq" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_hr" role="1PaTwD">
          <property role="3oM_SC" value="Ant" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hs" role="1PaTwD">
          <property role="3oM_SC" value="task" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_ht" role="1PaTwD">
          <property role="3oM_SC" value="that" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hu" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hv" role="1PaTwD">
          <property role="3oM_SC" value="capable" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hw" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hx" role="1PaTwD">
          <property role="3oM_SC" value="execute" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hy" role="1PaTwD">
          <property role="3oM_SC" value="an" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hz" role="1PaTwD">
          <property role="3oM_SC" value="MPS-aware" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_h$" role="1PaTwD">
          <property role="3oM_SC" value="'worker'" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_h_" role="1PaTwD">
          <property role="3oM_SC" value="class." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_hA" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_hB" role="1PaTwD">
          <property role="3oM_SC" value="Generally," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hC" role="1PaTwD">
          <property role="3oM_SC" value="MPS" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hD" role="1PaTwD">
          <property role="3oM_SC" value="Ant" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hE" role="1PaTwD">
          <property role="3oM_SC" value="tasks" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hF" role="1PaTwD">
          <property role="3oM_SC" value="have" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hG" role="1PaTwD">
          <property role="3oM_SC" value="very" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hH" role="1PaTwD">
          <property role="3oM_SC" value="limited" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hI" role="1PaTwD">
          <property role="3oM_SC" value="classpath" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hJ" role="1PaTwD">
          <property role="3oM_SC" value="(j.m.tool.common" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hK" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hL" role="1PaTwD">
          <property role="3oM_SC" value="j.m.tool.ant," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hM" role="1PaTwD">
          <property role="3oM_SC" value="respectively" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hN" role="1PaTwD">
          <property role="3oM_SC" value="[ant-mps]" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hO" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hP" role="1PaTwD">
          <property role="3oM_SC" value="[ant-mps-common])" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_hQ" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_hR" role="1PaTwD">
          <property role="3oM_SC" value="while" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hS" role="1PaTwD">
          <property role="3oM_SC" value="actual" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hT" role="1PaTwD">
          <property role="3oM_SC" value="'worker'" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hU" role="1PaTwD">
          <property role="3oM_SC" value="class" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hV" role="1PaTwD">
          <property role="3oM_SC" value="likely" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hW" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hX" role="1PaTwD">
          <property role="3oM_SC" value="employ" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hY" role="1PaTwD">
          <property role="3oM_SC" value="full" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_hZ" role="1PaTwD">
          <property role="3oM_SC" value="power" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_i0" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_i1" role="1PaTwD">
          <property role="3oM_SC" value="MPS" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_i2" role="1PaTwD">
          <property role="3oM_SC" value="(either" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_i3" role="1PaTwD">
          <property role="3oM_SC" value="with" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_i4" role="1PaTwD">
          <property role="3oM_SC" value="MpsEnvironment" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_i5" role="1PaTwD">
          <property role="3oM_SC" value="or" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_i6" role="1PaTwD">
          <property role="3oM_SC" value="IdeaEnvironment)." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_i7" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_i8" role="1PaTwD">
          <property role="3oM_SC" value="Hence," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_i9" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_ia" role="1PaTwD">
          <property role="3oM_SC" value="idea" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_ib" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_ic" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_id" role="1PaTwD">
          <property role="3oM_SC" value="task" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_ie" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_if" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_ig" role="1PaTwD">
          <property role="3oM_SC" value="get" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_ih" role="1PaTwD">
          <property role="3oM_SC" value="worker's" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_ii" role="1PaTwD">
          <property role="3oM_SC" value="classpath" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_ij" role="1PaTwD">
          <property role="3oM_SC" value="ready" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_ik" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_il" role="1PaTwD">
          <property role="3oM_SC" value="use" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_im" role="1PaTwD">
          <property role="3oM_SC" value="whatever" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_in" role="1PaTwD">
          <property role="3oM_SC" value="MPS" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_io" role="1PaTwD">
          <property role="3oM_SC" value="functionality" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_ip" role="1PaTwD">
          <property role="3oM_SC" value="needed." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_iq" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_ir" role="1PaTwD">
          <property role="3oM_SC" value="Specific" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_is" role="1PaTwD">
          <property role="3oM_SC" value="task" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_it" role="1PaTwD">
          <property role="3oM_SC" value="subclasses" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_iu" role="1PaTwD">
          <property role="3oM_SC" value="may" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_iv" role="1PaTwD">
          <property role="3oM_SC" value="control" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_iw" role="1PaTwD">
          <property role="3oM_SC" value="exact" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_ix" role="1PaTwD">
          <property role="3oM_SC" value="classpath" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_iy" role="1PaTwD">
          <property role="3oM_SC" value="with" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHs_iz" role="1PaTwD">
          <node concept="1VuXuv" id="1E1X3WHs_i$" role="1Vtduc">
            <node concept="VXe0Z" id="3uHpWKwvkjf" role="1VuXuu">
              <ref role="VXe0S" node="3ufQioQQtwU" resolve="calculateClassPath" />
            </node>
            <node concept="1PaTwC" id="1E1X3WHs_iB" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHs_iC" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_iD" role="1PaTwD">
          <property role="3oM_SC" value="based" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_iE" role="1PaTwD">
          <property role="3oM_SC" value="on" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_iF" role="1PaTwD">
          <property role="3oM_SC" value="their" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_iG" role="1PaTwD">
          <property role="3oM_SC" value="worker's" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_iH" role="1PaTwD">
          <property role="3oM_SC" value="demand." />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3ufQioQQu2K">
    <property role="TrG5h" value="ModuleJarDataType" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="3ufQioQQu2L" role="1B3o_S" />
    <node concept="3uibUv" id="3ufQioQQu2M" role="1zkMxy">
      <ref role="3uigEE" to="rg95:~DataType" resolve="DataType" />
    </node>
    <node concept="312cEg" id="3ufQioQQu2Q" role="jymVt">
      <property role="TrG5h" value="myJar" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="3ufQioQQu2R" role="1tU5fm">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
      <node concept="3Tm6S6" id="3ufQioQQu2S" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="34i8I8dxCus" role="jymVt">
      <property role="TrG5h" value="myModuleManifest" />
      <node concept="3Tm6S6" id="34i8I8dxCut" role="1B3o_S" />
      <node concept="3uibUv" id="34i8I8dxCuv" role="1tU5fm">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
    </node>
    <node concept="2tJIrI" id="34i8I8dxCwH" role="jymVt" />
    <node concept="3clFbW" id="3ufQioQQu2X" role="jymVt">
      <node concept="3Tm1VV" id="3ufQioQQu2Y" role="1B3o_S" />
      <node concept="3cqZAl" id="3ufQioQQu2Z" role="3clF45" />
      <node concept="3clFbS" id="3ufQioQQu30" role="3clF47" />
    </node>
    <node concept="3clFb_" id="3ag$5R8QD_N" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getFile" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3ag$5R8QD_O" role="1B3o_S" />
      <node concept="3uibUv" id="3ag$5R8QD_P" role="3clF45">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
      <node concept="3clFbS" id="3ag$5R8QD_Q" role="3clF47">
        <node concept="3cpWs6" id="3ag$5R8QD_R" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuxJS" role="3cqZAk">
            <ref role="3cqZAo" node="3ufQioQQu2Q" resolve="myJar" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3ag$5R8QD_D" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setFile" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3ag$5R8QD_E" role="1B3o_S" />
      <node concept="3cqZAl" id="3ag$5R8QD_F" role="3clF45" />
      <node concept="37vLTG" id="3ag$5R8QD_G" role="3clF46">
        <property role="TrG5h" value="dir" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3ag$5R8QD_H" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3clFbS" id="3ag$5R8QD_I" role="3clF47">
        <node concept="1gVbGN" id="4Ncgb9xKx0w" role="3cqZAp">
          <node concept="2OqwBi" id="4Ncgb9xKxy1" role="1gVkn0">
            <node concept="2OqwBi" id="4Ncgb9xKxk_" role="2Oq$k0">
              <node concept="37vLTw" id="4Ncgb9xKx2m" role="2Oq$k0">
                <ref role="3cqZAo" node="3ag$5R8QD_G" resolve="dir" />
              </node>
              <node concept="liA8E" id="4Ncgb9xKxp7" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.getName()" resolve="getName" />
              </node>
            </node>
            <node concept="liA8E" id="4Ncgb9xKxFB" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
              <node concept="Xl_RD" id="4Ncgb9xKxHB" role="37wK5m">
                <property role="Xl_RC" value=".jar" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="4Ncgb9xKxU8" role="1gVpfI">
            <property role="Xl_RC" value="Only jar files are supported" />
          </node>
        </node>
        <node concept="3clFbF" id="3ag$5R8QD_J" role="3cqZAp">
          <node concept="37vLTI" id="3ag$5R8QD_K" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeurqK" role="37vLTJ">
              <ref role="3cqZAo" node="3ufQioQQu2Q" resolve="myJar" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm9Qx" role="37vLTx">
              <ref role="3cqZAo" node="3ag$5R8QD_G" resolve="dir" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="34i8I8dxCkW" role="jymVt" />
    <node concept="3clFb_" id="34i8I8dxCqh" role="jymVt">
      <property role="TrG5h" value="setManifest" />
      <node concept="3clFbS" id="34i8I8dxCqk" role="3clF47">
        <node concept="3clFbF" id="34i8I8dxCuw" role="3cqZAp">
          <node concept="37vLTI" id="34i8I8dxCuy" role="3clFbG">
            <node concept="37vLTw" id="34i8I8dxCu_" role="37vLTJ">
              <ref role="3cqZAo" node="34i8I8dxCus" resolve="myModuleManifest" />
            </node>
            <node concept="37vLTw" id="34i8I8dxCuA" role="37vLTx">
              <ref role="3cqZAo" node="34i8I8dxCs1" resolve="moduleManifest" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="34i8I8dxCnR" role="1B3o_S" />
      <node concept="3cqZAl" id="34i8I8dxCq9" role="3clF45" />
      <node concept="37vLTG" id="34i8I8dxCs1" role="3clF46">
        <property role="TrG5h" value="moduleManifest" />
        <node concept="3uibUv" id="34i8I8dxCs0" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="34i8I8dxCCP" role="jymVt">
      <property role="TrG5h" value="getManifest" />
      <node concept="3uibUv" id="34i8I8dxCFg" role="3clF45">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
      <node concept="3Tm1VV" id="34i8I8dxCCS" role="1B3o_S" />
      <node concept="3clFbS" id="34i8I8dxCCT" role="3clF47">
        <node concept="3clFbF" id="34i8I8dxCMP" role="3cqZAp">
          <node concept="37vLTw" id="34i8I8dxCMO" role="3clFbG">
            <ref role="3cqZAo" node="34i8I8dxCus" resolve="myModuleManifest" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3UR2Jj" id="1TP$JLLo7v2" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHs_iI" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_iJ" role="1PaTwD">
          <property role="3oM_SC" value="Alternatively," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_iK" role="1PaTwD">
          <property role="3oM_SC" value="use" />
        </node>
        <node concept="22dLRv" id="1E1X3WHs_iL" role="1PaTwD">
          <property role="22dLRs" value="repo" />
          <node concept="1PaTwC" id="1E1X3WHs_iN" role="22dLJL">
            <node concept="22dLRv" id="1E1X3WHs_iO" role="1PaTwD">
              <property role="22dLRs" value="module jar=&quot;smth&quot;" />
              <node concept="1PaTwC" id="1E1X3WHs_iQ" role="22dLJL">
                <node concept="3oM_SD" id="1E1X3WHs_iR" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_iS" role="1PaTwD">
          <property role="3oM_SC" value="instead" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3t7WP23N$8C">
    <property role="TrG5h" value="MPSClasspathUtil" />
    <node concept="312cEg" id="3eyCFyRtrrc" role="jymVt">
      <property role="TrG5h" value="project" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3eyCFyRtrrd" role="1B3o_S" />
      <node concept="3uibUv" id="3eyCFyRtrrf" role="1tU5fm">
        <ref role="3uigEE" to="gola:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="312cEg" id="3eyCFyRu3KC" role="jymVt">
      <property role="TrG5h" value="myClasspathRoots" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3eyCFyRu26O" role="1B3o_S" />
      <node concept="3uibUv" id="3eyCFyRu3_o" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3eyCFyRu3Aq" role="11_B2D">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="2ShNRf" id="3eyCFyRu5ua" role="33vP2m">
        <node concept="1pGfFk" id="3eyCFyRu6Zp" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3eyCFyRzI3W" role="jymVt">
      <property role="TrG5h" value="myCompleteClasspath" />
      <node concept="3Tm6S6" id="3eyCFyRzI3X" role="1B3o_S" />
      <node concept="3uibUv" id="3eyCFyRzK2_" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="3eyCFyRzKse" role="11_B2D">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3eyCFyRzIdr" role="jymVt" />
    <node concept="2tJIrI" id="3eyCFyRtkJG" role="jymVt" />
    <node concept="3clFbW" id="3eyCFyRtpOK" role="jymVt">
      <node concept="37vLTG" id="3eyCFyRtrh2" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3eyCFyRtrh3" role="1tU5fm">
          <ref role="3uigEE" to="gola:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3cqZAl" id="3eyCFyRtpOL" role="3clF45" />
      <node concept="3clFbS" id="3eyCFyRtpON" role="3clF47">
        <node concept="3clFbF" id="3eyCFyRtrrg" role="3cqZAp">
          <node concept="37vLTI" id="3eyCFyRtrri" role="3clFbG">
            <node concept="2OqwBi" id="3eyCFyRtuuW" role="37vLTJ">
              <node concept="Xjq3P" id="3eyCFyRtur_" role="2Oq$k0" />
              <node concept="2OwXpG" id="3eyCFyRtu_P" role="2OqNvi">
                <ref role="2Oxat5" node="3eyCFyRtrrc" resolve="project" />
              </node>
            </node>
            <node concept="37vLTw" id="3eyCFyRtrrm" role="37vLTx">
              <ref role="3cqZAo" node="3eyCFyRtrh2" resolve="project" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3eyCFyRtnBZ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3eyCFyRthBF" role="jymVt" />
    <node concept="3clFb_" id="3eyCFyRtT2t" role="jymVt">
      <property role="TrG5h" value="fillClassPath" />
      <node concept="3cqZAl" id="3eyCFyRtT2v" role="3clF45" />
      <node concept="3clFbS" id="3eyCFyRtT2w" role="3clF47">
        <node concept="3clFbF" id="3eyCFyRu747" role="3cqZAp">
          <node concept="2OqwBi" id="3eyCFyRu8$7" role="3clFbG">
            <node concept="37vLTw" id="3eyCFyRu746" role="2Oq$k0">
              <ref role="3cqZAo" node="3eyCFyRu3KC" resolve="myClasspathRoots" />
            </node>
            <node concept="liA8E" id="3eyCFyRuaLe" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="3eyCFyRubda" role="37wK5m">
                <ref role="3cqZAo" node="3eyCFyRtZMR" resolve="location" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3eyCFyRtZMR" role="3clF46">
        <property role="TrG5h" value="location" />
        <node concept="3uibUv" id="3eyCFyRtZMQ" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
        <node concept="2AHcQZ" id="3eyCFyRuc8I" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="gQDJKN7WNe" role="jymVt" />
    <node concept="3clFb_" id="3eyCFyRudR9" role="jymVt">
      <property role="TrG5h" value="fillClassPathRootsFromProjectDependencies" />
      <node concept="3clFbS" id="3eyCFyRudRb" role="3clF47">
        <node concept="3cpWs8" id="3eyCFyRudRc" role="3cqZAp">
          <node concept="3cpWsn" id="3eyCFyRudRd" role="3cpWs9">
            <property role="TrG5h" value="roots" />
            <node concept="2ShNRf" id="3eyCFyRudRe" role="33vP2m">
              <node concept="1pGfFk" id="3eyCFyRudRf" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="3eyCFyRudRg" role="1pMfVU">
                  <ref role="3uigEE" to="guwi:~File" resolve="File" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="3eyCFyRudRh" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="3eyCFyRudRi" role="11_B2D">
                <ref role="3uigEE" to="guwi:~File" resolve="File" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3eyCFyRudRj" role="3cqZAp" />
        <node concept="3SKdUt" id="3eyCFyR_vph" role="3cqZAp">
          <node concept="1PaTwC" id="3eyCFyR_vpi" role="1aUNEU">
            <node concept="3oM_SD" id="3eyCFyR_x5y" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR_x$y" role="1PaTwD">
              <property role="3oM_SC" value="why" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR_x$_" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR_x$T" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR_x$Y" role="1PaTwD">
              <property role="3oM_SC" value="hard-coded" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR_x_O" role="1PaTwD">
              <property role="3oM_SC" value="knowledge," />
            </node>
            <node concept="3oM_SD" id="3eyCFyR_xAr" role="1PaTwD">
              <property role="3oM_SC" value="when" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR_xAN" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR_xBs" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR_xBA" role="1PaTwD">
              <property role="3oM_SC" value="declare" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR_xCh" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR_xCH" role="1PaTwD">
              <property role="3oM_SC" value="&lt;path&gt;" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR_xDE" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR_xE8" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3eyCFyR_xFo" role="3cqZAp">
          <node concept="1PaTwC" id="3eyCFyR_xF8" role="1aUNEU">
            <node concept="3oM_SD" id="3eyCFyR_xF7" role="1PaTwD">
              <property role="3oM_SC" value="reference" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR_$K$" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR_$KB" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR_$KF" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR_$L0" role="1PaTwD">
              <property role="3oM_SC" value="id" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR_$LA" role="1PaTwD">
              <property role="3oM_SC" value="(just" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR_$LH" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR_$LP" role="1PaTwD">
              <property role="3oM_SC" value="single" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR_$Me" role="1PaTwD">
              <property role="3oM_SC" value="hard-coded" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR_$MS" role="1PaTwD">
              <property role="3oM_SC" value="string)?" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3eyCFyR_tdV" role="3cqZAp" />
        <node concept="3cpWs8" id="3eyCFyRudRk" role="3cqZAp">
          <node concept="3cpWsn" id="3eyCFyRudRl" role="3cpWs9">
            <property role="TrG5h" value="mpsHome" />
            <node concept="17QB3L" id="3eyCFyRudRm" role="1tU5fm" />
            <node concept="2OqwBi" id="3eyCFyRudRn" role="33vP2m">
              <node concept="37vLTw" id="3eyCFyRudRo" role="2Oq$k0">
                <ref role="3cqZAo" node="3eyCFyRtrrc" resolve="project" />
              </node>
              <node concept="liA8E" id="3eyCFyRudRp" role="2OqNvi">
                <ref role="37wK5l" to="gola:~Project.getProperty(java.lang.String)" resolve="getProperty" />
                <node concept="Xl_RD" id="3eyCFyRudRq" role="37wK5m">
                  <property role="Xl_RC" value="artifacts.mps" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3eyCFyRudRr" role="3cqZAp">
          <node concept="3cpWsn" id="3eyCFyRudRs" role="3cpWs9">
            <property role="TrG5h" value="pluginHome" />
            <node concept="17QB3L" id="3eyCFyRudRt" role="1tU5fm" />
            <node concept="2OqwBi" id="3eyCFyRudRu" role="33vP2m">
              <node concept="37vLTw" id="3eyCFyRudRv" role="2Oq$k0">
                <ref role="3cqZAo" node="3eyCFyRtrrc" resolve="project" />
              </node>
              <node concept="liA8E" id="3eyCFyRudRw" role="2OqNvi">
                <ref role="37wK5l" to="gola:~Project.getProperty(java.lang.String)" resolve="getProperty" />
                <node concept="Xl_RD" id="3eyCFyRudRx" role="37wK5m">
                  <property role="Xl_RC" value="artifacts.mpsPlugin" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3eyCFyRudRy" role="3cqZAp">
          <node concept="3cpWsn" id="3eyCFyRudRz" role="3cpWs9">
            <property role="TrG5h" value="ideaHome" />
            <node concept="17QB3L" id="3eyCFyRudR$" role="1tU5fm" />
            <node concept="2OqwBi" id="3eyCFyRudR_" role="33vP2m">
              <node concept="37vLTw" id="3eyCFyRudRA" role="2Oq$k0">
                <ref role="3cqZAo" node="3eyCFyRtrrc" resolve="project" />
              </node>
              <node concept="liA8E" id="3eyCFyRudRB" role="2OqNvi">
                <ref role="37wK5l" to="gola:~Project.getProperty(java.lang.String)" resolve="getProperty" />
                <node concept="Xl_RD" id="3eyCFyRudRC" role="37wK5m">
                  <property role="Xl_RC" value="artifacts.IDEA" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3eyCFyRudRD" role="3cqZAp">
          <node concept="3cpWsn" id="3eyCFyRudRE" role="3cpWs9">
            <property role="TrG5h" value="mpsCoreHome" />
            <node concept="17QB3L" id="3eyCFyRudRF" role="1tU5fm" />
            <node concept="2OqwBi" id="3eyCFyRudRG" role="33vP2m">
              <node concept="37vLTw" id="3eyCFyRudRH" role="2Oq$k0">
                <ref role="3cqZAo" node="3eyCFyRtrrc" resolve="project" />
              </node>
              <node concept="liA8E" id="3eyCFyRudRI" role="2OqNvi">
                <ref role="37wK5l" to="gola:~Project.getProperty(java.lang.String)" resolve="getProperty" />
                <node concept="Xl_RD" id="3eyCFyRudRJ" role="37wK5m">
                  <property role="Xl_RC" value="artifacts.mpsBootstrapCore" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3eyCFyRudRK" role="3cqZAp">
          <node concept="3cpWsn" id="3eyCFyRudRL" role="3cpWs9">
            <property role="TrG5h" value="mpsWorkbenchHome" />
            <node concept="2OqwBi" id="3eyCFyRudRM" role="33vP2m">
              <node concept="37vLTw" id="3eyCFyRudRN" role="2Oq$k0">
                <ref role="3cqZAo" node="3eyCFyRtrrc" resolve="project" />
              </node>
              <node concept="liA8E" id="3eyCFyRudRO" role="2OqNvi">
                <ref role="37wK5l" to="gola:~Project.getProperty(java.lang.String)" resolve="getProperty" />
                <node concept="Xl_RD" id="3eyCFyRudRP" role="37wK5m">
                  <property role="Xl_RC" value="artifacts.mpsWorkbench" />
                </node>
              </node>
            </node>
            <node concept="17QB3L" id="3eyCFyRudRQ" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="3eyCFyRudRR" role="3cqZAp">
          <node concept="3cpWsn" id="3eyCFyRudRS" role="3cpWs9">
            <property role="TrG5h" value="mpsStandaloneHome" />
            <property role="3TUv4t" value="true" />
            <node concept="2OqwBi" id="3eyCFyRudRT" role="33vP2m">
              <node concept="37vLTw" id="3eyCFyRudRU" role="2Oq$k0">
                <ref role="3cqZAo" node="3eyCFyRtrrc" resolve="project" />
              </node>
              <node concept="liA8E" id="3eyCFyRudRV" role="2OqNvi">
                <ref role="37wK5l" to="gola:~Project.getProperty(java.lang.String)" resolve="getProperty" />
                <node concept="Xl_RD" id="3eyCFyRudRW" role="37wK5m">
                  <property role="Xl_RC" value="artifacts.mpsStandalone" />
                </node>
              </node>
            </node>
            <node concept="17QB3L" id="3eyCFyRudRX" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="3eyCFyRudRY" role="3cqZAp">
          <node concept="3cpWsn" id="3eyCFyRudRZ" role="3cpWs9">
            <property role="TrG5h" value="mpsTrueBootstrapHome" />
            <property role="3TUv4t" value="true" />
            <node concept="2OqwBi" id="3eyCFyRudS0" role="33vP2m">
              <node concept="37vLTw" id="3eyCFyRudS1" role="2Oq$k0">
                <ref role="3cqZAo" node="3eyCFyRtrrc" resolve="project" />
              </node>
              <node concept="liA8E" id="3eyCFyRudS2" role="2OqNvi">
                <ref role="37wK5l" to="gola:~Project.getProperty(java.lang.String)" resolve="getProperty" />
                <node concept="Xl_RD" id="3eyCFyRudS3" role="37wK5m">
                  <property role="Xl_RC" value="artifacts.mpsTrueBootstrap" />
                </node>
              </node>
            </node>
            <node concept="17QB3L" id="3eyCFyRudS4" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbH" id="3eyCFyRudS5" role="3cqZAp" />
        <node concept="3clFbJ" id="3eyCFyRudS6" role="3cqZAp">
          <node concept="3clFbS" id="3eyCFyRudS7" role="3clFbx">
            <node concept="3SKdUt" id="3eyCFyRudS8" role="3cqZAp">
              <node concept="1PaTwC" id="3eyCFyRudS9" role="1aUNEU">
                <node concept="3oM_SD" id="3eyCFyRudSa" role="1PaTwD">
                  <property role="3oM_SC" value="we've" />
                </node>
                <node concept="3oM_SD" id="3eyCFyRudSb" role="1PaTwD">
                  <property role="3oM_SC" value="got" />
                </node>
                <node concept="3oM_SD" id="3eyCFyRudSc" role="1PaTwD">
                  <property role="3oM_SC" value="regular" />
                </node>
                <node concept="3oM_SD" id="3eyCFyRudSd" role="1PaTwD">
                  <property role="3oM_SC" value="MPS" />
                </node>
                <node concept="3oM_SD" id="3eyCFyRudSe" role="1PaTwD">
                  <property role="3oM_SC" value="installation" />
                </node>
                <node concept="3oM_SD" id="3eyCFyRudSf" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="3eyCFyRudSg" role="1PaTwD">
                  <property role="3oM_SC" value="everything" />
                </node>
                <node concept="3oM_SD" id="3eyCFyRudSh" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="3eyCFyRudSi" role="1PaTwD">
                  <property role="3oM_SC" value="need" />
                </node>
                <node concept="3oM_SD" id="3eyCFyRudSj" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="3eyCFyRudSk" role="1PaTwD">
                  <property role="3oM_SC" value="under" />
                </node>
                <node concept="3oM_SD" id="3eyCFyRudSl" role="1PaTwD">
                  <property role="3oM_SC" value="its" />
                </node>
                <node concept="3oM_SD" id="3eyCFyRudSm" role="1PaTwD">
                  <property role="3oM_SC" value="&quot;lib/&quot;" />
                </node>
                <node concept="3oM_SD" id="3eyCFyRudSn" role="1PaTwD">
                  <property role="3oM_SC" value="folder," />
                </node>
                <node concept="3oM_SD" id="3eyCFyRudSo" role="1PaTwD">
                  <property role="3oM_SC" value="both" />
                </node>
                <node concept="3oM_SD" id="3eyCFyRudSp" role="1PaTwD">
                  <property role="3oM_SC" value="IDEA" />
                </node>
                <node concept="3oM_SD" id="3eyCFyRudSq" role="1PaTwD">
                  <property role="3oM_SC" value="platform" />
                </node>
                <node concept="3oM_SD" id="3eyCFyRudSr" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="3eyCFyRudSs" role="1PaTwD">
                  <property role="3oM_SC" value="MPS" />
                </node>
                <node concept="3oM_SD" id="3eyCFyRudSt" role="1PaTwD">
                  <property role="3oM_SC" value="stuff" />
                </node>
                <node concept="3oM_SD" id="3eyCFyRudSu" role="1PaTwD">
                  <property role="3oM_SC" value="(including" />
                </node>
                <node concept="3oM_SD" id="3eyCFyRudSv" role="1PaTwD">
                  <property role="3oM_SC" value="lib/ext)" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3eyCFyRudSw" role="3cqZAp">
              <node concept="2OqwBi" id="3eyCFyRudSx" role="3clFbG">
                <node concept="liA8E" id="3eyCFyRudSy" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="2ShNRf" id="3eyCFyRudSz" role="37wK5m">
                    <node concept="1pGfFk" id="3eyCFyRudS$" role="2ShVmc">
                      <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                      <node concept="2OqwBi" id="3eyCFyRudS_" role="37wK5m">
                        <node concept="liA8E" id="3eyCFyRudSA" role="2OqNvi">
                          <ref role="37wK5l" to="gola:~Project.resolveFile(java.lang.String)" resolve="resolveFile" />
                          <node concept="37vLTw" id="3eyCFyRudSB" role="37wK5m">
                            <ref role="3cqZAo" node="3eyCFyRudRl" resolve="mpsHome" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="3eyCFyRudSC" role="2Oq$k0">
                          <ref role="3cqZAo" node="3eyCFyRtrrc" resolve="project" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="3eyCFyRudSD" role="37wK5m">
                        <property role="Xl_RC" value="lib" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3eyCFyRudSE" role="2Oq$k0">
                  <ref role="3cqZAo" node="3eyCFyRudRd" resolve="roots" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3eyCFyRudSF" role="3clFbw">
            <node concept="37vLTw" id="3eyCFyRudSG" role="2Oq$k0">
              <ref role="3cqZAo" node="3eyCFyRudRl" resolve="mpsHome" />
            </node>
            <node concept="17RvpY" id="3eyCFyRudSH" role="2OqNvi" />
          </node>
          <node concept="3eNFk2" id="3eyCFyRudSI" role="3eNLev">
            <node concept="1Wc70l" id="3eyCFyRudSJ" role="3eO9$A">
              <node concept="2OqwBi" id="3eyCFyRudSK" role="3uHU7w">
                <node concept="37vLTw" id="3eyCFyRudSL" role="2Oq$k0">
                  <ref role="3cqZAo" node="3eyCFyRudRz" resolve="ideaHome" />
                </node>
                <node concept="17RvpY" id="3eyCFyRudSM" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="3eyCFyRudSN" role="3uHU7B">
                <node concept="37vLTw" id="3eyCFyRudSO" role="2Oq$k0">
                  <ref role="3cqZAo" node="3eyCFyRudRs" resolve="pluginHome" />
                </node>
                <node concept="17RvpY" id="3eyCFyRudSP" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbS" id="3eyCFyRudSQ" role="3eOfB_">
              <node concept="3SKdUt" id="3eyCFyRudSR" role="3cqZAp">
                <node concept="1PaTwC" id="3eyCFyRudSS" role="1aUNEU">
                  <node concept="3oM_SD" id="3eyCFyRudST" role="1PaTwD">
                    <property role="3oM_SC" value="buildPlugin" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudSU" role="1PaTwD">
                    <property role="3oM_SC" value="+" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudSV" role="1PaTwD">
                    <property role="3oM_SC" value="IDEA" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="3eyCFyRudSW" role="3cqZAp">
                <node concept="1PaTwC" id="3eyCFyRudSX" role="1aUNEU">
                  <node concept="3oM_SD" id="3eyCFyRudSY" role="1PaTwD">
                    <property role="3oM_SC" value="XXX" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudSZ" role="1PaTwD">
                    <property role="3oM_SC" value="not" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudT0" role="1PaTwD">
                    <property role="3oM_SC" value="sure" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudT1" role="1PaTwD">
                    <property role="3oM_SC" value="if" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudT2" role="1PaTwD">
                    <property role="3oM_SC" value="it's" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudT3" role="1PaTwD">
                    <property role="3oM_SC" value="possible" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudT4" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudT5" role="1PaTwD">
                    <property role="3oM_SC" value="build" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudT6" role="1PaTwD">
                    <property role="3oM_SC" value="with" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudT7" role="1PaTwD">
                    <property role="3oM_SC" value="an" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudT8" role="1PaTwD">
                    <property role="3oM_SC" value="MPS-generated" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudT9" role="1PaTwD">
                    <property role="3oM_SC" value="script" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudTa" role="1PaTwD">
                    <property role="3oM_SC" value="having" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudTb" role="1PaTwD">
                    <property role="3oM_SC" value="just" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudTc" role="1PaTwD">
                    <property role="3oM_SC" value="an" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudTd" role="1PaTwD">
                    <property role="3oM_SC" value="MPS-IDEA" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudTe" role="1PaTwD">
                    <property role="3oM_SC" value="plugin," />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudTf" role="1PaTwD">
                    <property role="3oM_SC" value="but" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudTg" role="1PaTwD">
                    <property role="3oM_SC" value="anyway..." />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3eyCFyRudTh" role="3cqZAp">
                <node concept="2OqwBi" id="3eyCFyRudTi" role="3clFbG">
                  <node concept="liA8E" id="3eyCFyRudTj" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                    <node concept="2ShNRf" id="3eyCFyRudTk" role="37wK5m">
                      <node concept="1pGfFk" id="3eyCFyRudTl" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                        <node concept="2OqwBi" id="3eyCFyRudTm" role="37wK5m">
                          <node concept="liA8E" id="3eyCFyRudTn" role="2OqNvi">
                            <ref role="37wK5l" to="gola:~Project.resolveFile(java.lang.String)" resolve="resolveFile" />
                            <node concept="37vLTw" id="3eyCFyRudTo" role="37wK5m">
                              <ref role="3cqZAo" node="3eyCFyRudRz" resolve="ideaHome" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="3eyCFyRudTp" role="2Oq$k0">
                            <ref role="3cqZAo" node="3eyCFyRtrrc" resolve="project" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="3eyCFyRudTq" role="37wK5m">
                          <property role="Xl_RC" value="lib" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3eyCFyRudTr" role="2Oq$k0">
                    <ref role="3cqZAo" node="3eyCFyRudRd" resolve="roots" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3eyCFyRudTs" role="3cqZAp">
                <node concept="2OqwBi" id="3eyCFyRudTt" role="3clFbG">
                  <node concept="liA8E" id="3eyCFyRudTu" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                    <node concept="2ShNRf" id="3eyCFyRudTv" role="37wK5m">
                      <node concept="1pGfFk" id="3eyCFyRudTw" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                        <node concept="2OqwBi" id="3eyCFyRudTx" role="37wK5m">
                          <node concept="liA8E" id="3eyCFyRudTy" role="2OqNvi">
                            <ref role="37wK5l" to="gola:~Project.resolveFile(java.lang.String)" resolve="resolveFile" />
                            <node concept="37vLTw" id="3eyCFyRudTz" role="37wK5m">
                              <ref role="3cqZAo" node="3eyCFyRudRs" resolve="pluginHome" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="3eyCFyRudT$" role="2Oq$k0">
                            <ref role="3cqZAo" node="3eyCFyRtrrc" resolve="project" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="3eyCFyRudT_" role="37wK5m">
                          <property role="Xl_RC" value="mps-core/lib" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3eyCFyRudTA" role="2Oq$k0">
                    <ref role="3cqZAo" node="3eyCFyRudRd" resolve="roots" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="3eyCFyRudTB" role="3eNLev">
            <node concept="1Wc70l" id="3eyCFyRudTC" role="3eO9$A">
              <node concept="2OqwBi" id="3eyCFyRudTD" role="3uHU7w">
                <node concept="37vLTw" id="3eyCFyRudTE" role="2Oq$k0">
                  <ref role="3cqZAo" node="3eyCFyRudRz" resolve="ideaHome" />
                </node>
                <node concept="17RvpY" id="3eyCFyRudTF" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="3eyCFyRudTG" role="3uHU7B">
                <node concept="37vLTw" id="3eyCFyRudTH" role="2Oq$k0">
                  <ref role="3cqZAo" node="3eyCFyRudRE" resolve="mpsCoreHome" />
                </node>
                <node concept="17RvpY" id="3eyCFyRudTI" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbS" id="3eyCFyRudTJ" role="3eOfB_">
              <node concept="3SKdUt" id="3eyCFyRudTK" role="3cqZAp">
                <node concept="1PaTwC" id="3eyCFyRudTL" role="1aUNEU">
                  <node concept="3oM_SD" id="3eyCFyRudTM" role="1PaTwD">
                    <property role="3oM_SC" value="we" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudTN" role="1PaTwD">
                    <property role="3oM_SC" value="are" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudTO" role="1PaTwD">
                    <property role="3oM_SC" value="building" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudTP" role="1PaTwD">
                    <property role="3oM_SC" value="something" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudTQ" role="1PaTwD">
                    <property role="3oM_SC" value="with" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudTR" role="1PaTwD">
                    <property role="3oM_SC" value="dependency" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudTS" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudTT" role="1PaTwD">
                    <property role="3oM_SC" value="mpsBootstrapCore," />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudTU" role="1PaTwD">
                    <property role="3oM_SC" value="likely" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudTV" role="1PaTwD">
                    <property role="3oM_SC" value="part" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudTW" role="1PaTwD">
                    <property role="3oM_SC" value="of" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudTX" role="1PaTwD">
                    <property role="3oM_SC" value="MPS" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudTY" role="1PaTwD">
                    <property role="3oM_SC" value="itself." />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="3eyCFyRudTZ" role="3cqZAp">
                <node concept="1PaTwC" id="3eyCFyRudU0" role="1aUNEU">
                  <node concept="3oM_SD" id="3eyCFyRudU1" role="1PaTwD">
                    <property role="3oM_SC" value="There's" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudU2" role="1PaTwD">
                    <property role="3oM_SC" value="IDEA" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudU3" role="1PaTwD">
                    <property role="3oM_SC" value="installation" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudU4" role="1PaTwD">
                    <property role="3oM_SC" value="we" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudU5" role="1PaTwD">
                    <property role="3oM_SC" value="use," />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudU6" role="1PaTwD">
                    <property role="3oM_SC" value="and" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudU7" role="1PaTwD">
                    <property role="3oM_SC" value="we" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudU8" role="1PaTwD">
                    <property role="3oM_SC" value="shall" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudU9" role="1PaTwD">
                    <property role="3oM_SC" value="reference" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudUa" role="1PaTwD">
                    <property role="3oM_SC" value="MPS-built" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudUb" role="1PaTwD">
                    <property role="3oM_SC" value="artifacts" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3eyCFyRudUc" role="3cqZAp">
                <node concept="2OqwBi" id="3eyCFyRudUd" role="3clFbG">
                  <node concept="liA8E" id="3eyCFyRudUe" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                    <node concept="2ShNRf" id="3eyCFyRudUf" role="37wK5m">
                      <node concept="1pGfFk" id="3eyCFyRudUg" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                        <node concept="2OqwBi" id="3eyCFyRudUh" role="37wK5m">
                          <node concept="liA8E" id="3eyCFyRudUi" role="2OqNvi">
                            <ref role="37wK5l" to="gola:~Project.resolveFile(java.lang.String)" resolve="resolveFile" />
                            <node concept="37vLTw" id="3eyCFyRudUj" role="37wK5m">
                              <ref role="3cqZAo" node="3eyCFyRudRE" resolve="mpsCoreHome" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="3eyCFyRudUk" role="2Oq$k0">
                            <ref role="3cqZAo" node="3eyCFyRtrrc" resolve="project" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="3eyCFyRudUl" role="37wK5m">
                          <property role="Xl_RC" value="lib" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3eyCFyRudUm" role="2Oq$k0">
                    <ref role="3cqZAo" node="3eyCFyRudRd" resolve="roots" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3eyCFyRudUn" role="3cqZAp">
                <node concept="2OqwBi" id="3eyCFyRudUo" role="3clFbG">
                  <node concept="liA8E" id="3eyCFyRudUp" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                    <node concept="2ShNRf" id="3eyCFyRudUq" role="37wK5m">
                      <node concept="1pGfFk" id="3eyCFyRudUr" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                        <node concept="2OqwBi" id="3eyCFyRudUs" role="37wK5m">
                          <node concept="liA8E" id="3eyCFyRudUt" role="2OqNvi">
                            <ref role="37wK5l" to="gola:~Project.resolveFile(java.lang.String)" resolve="resolveFile" />
                            <node concept="37vLTw" id="3eyCFyRudUu" role="37wK5m">
                              <ref role="3cqZAo" node="3eyCFyRudRz" resolve="ideaHome" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="3eyCFyRudUv" role="2Oq$k0">
                            <ref role="3cqZAo" node="3eyCFyRtrrc" resolve="project" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="3eyCFyRudUw" role="37wK5m">
                          <property role="Xl_RC" value="lib" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3eyCFyRudUx" role="2Oq$k0">
                    <ref role="3cqZAo" node="3eyCFyRudRd" resolve="roots" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="3eyCFyRudUy" role="3cqZAp">
                <node concept="2OqwBi" id="3eyCFyRudUz" role="3clFbw">
                  <node concept="17RvpY" id="3eyCFyRudU$" role="2OqNvi" />
                  <node concept="37vLTw" id="3eyCFyRudU_" role="2Oq$k0">
                    <ref role="3cqZAo" node="3eyCFyRudRL" resolve="mpsWorkbenchHome" />
                  </node>
                </node>
                <node concept="3clFbS" id="3eyCFyRudUA" role="3clFbx">
                  <node concept="3clFbF" id="3eyCFyRudUB" role="3cqZAp">
                    <node concept="2OqwBi" id="3eyCFyRudUC" role="3clFbG">
                      <node concept="liA8E" id="3eyCFyRudUD" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                        <node concept="2ShNRf" id="3eyCFyRudUE" role="37wK5m">
                          <node concept="1pGfFk" id="3eyCFyRudUF" role="2ShVmc">
                            <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                            <node concept="2OqwBi" id="3eyCFyRudUG" role="37wK5m">
                              <node concept="liA8E" id="3eyCFyRudUH" role="2OqNvi">
                                <ref role="37wK5l" to="gola:~Project.resolveFile(java.lang.String)" resolve="resolveFile" />
                                <node concept="37vLTw" id="3eyCFyRudUI" role="37wK5m">
                                  <ref role="3cqZAo" node="3eyCFyRudRL" resolve="mpsWorkbenchHome" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="3eyCFyRudUJ" role="2Oq$k0">
                                <ref role="3cqZAo" node="3eyCFyRtrrc" resolve="project" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="3eyCFyRudUK" role="37wK5m">
                              <property role="Xl_RC" value="lib" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="3eyCFyRudUL" role="2Oq$k0">
                        <ref role="3cqZAo" node="3eyCFyRudRd" resolve="roots" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="3eyCFyRudUM" role="3eNLev">
            <node concept="1Wc70l" id="3eyCFyRudUN" role="3eO9$A">
              <node concept="2OqwBi" id="3eyCFyRudUO" role="3uHU7w">
                <node concept="Xl_RD" id="3eyCFyRudUP" role="2Oq$k0">
                  <property role="Xl_RC" value="mpsBootstrapCore" />
                </node>
                <node concept="liA8E" id="3eyCFyRudUQ" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="3eyCFyRudUR" role="37wK5m">
                    <node concept="37vLTw" id="3eyCFyRudUS" role="2Oq$k0">
                      <ref role="3cqZAo" node="3eyCFyRtrrc" resolve="project" />
                    </node>
                    <node concept="liA8E" id="3eyCFyRudUT" role="2OqNvi">
                      <ref role="37wK5l" to="gola:~Project.getName()" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3eyCFyRudUU" role="3uHU7B">
                <node concept="37vLTw" id="3eyCFyRudUV" role="2Oq$k0">
                  <ref role="3cqZAo" node="3eyCFyRudRz" resolve="ideaHome" />
                </node>
                <node concept="17RvpY" id="3eyCFyRudUW" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbS" id="3eyCFyRudUX" role="3eOfB_">
              <node concept="3SKdUt" id="3eyCFyRudUY" role="3cqZAp">
                <node concept="1PaTwC" id="3eyCFyRudUZ" role="1aUNEU">
                  <node concept="3oM_SD" id="3eyCFyRudV0" role="1PaTwD">
                    <property role="3oM_SC" value="This" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudV1" role="1PaTwD">
                    <property role="3oM_SC" value="piece" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudV2" role="1PaTwD">
                    <property role="3oM_SC" value="of" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudV3" role="1PaTwD">
                    <property role="3oM_SC" value="code" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudV4" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudV5" role="1PaTwD">
                    <property role="3oM_SC" value="solely" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudV6" role="1PaTwD">
                    <property role="3oM_SC" value="for" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudV7" role="1PaTwD">
                    <property role="3oM_SC" value="use" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudV8" role="1PaTwD">
                    <property role="3oM_SC" value="in" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudV9" role="1PaTwD">
                    <property role="3oM_SC" value="bootstrap" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVa" role="1PaTwD">
                    <property role="3oM_SC" value="scenario" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVb" role="1PaTwD">
                    <property role="3oM_SC" value="(building" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVc" role="1PaTwD">
                    <property role="3oM_SC" value="mps" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVd" role="1PaTwD">
                    <property role="3oM_SC" value="modules" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVe" role="1PaTwD">
                    <property role="3oM_SC" value="in" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVf" role="1PaTwD">
                    <property role="3oM_SC" value="mpsBootstrapCore" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVg" role="1PaTwD">
                    <property role="3oM_SC" value="project)," />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVh" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="3eyCFyRudVi" role="3cqZAp">
                <node concept="1PaTwC" id="3eyCFyRudVj" role="1aUNEU">
                  <node concept="3oM_SD" id="3eyCFyRudVk" role="1PaTwD">
                    <property role="3oM_SC" value="where" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVl" role="1PaTwD">
                    <property role="3oM_SC" value="we" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVm" role="1PaTwD">
                    <property role="3oM_SC" value="assume" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVn" role="1PaTwD">
                    <property role="3oM_SC" value="all" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVo" role="1PaTwD">
                    <property role="3oM_SC" value="relevant" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVp" role="1PaTwD">
                    <property role="3oM_SC" value="jars" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVq" role="1PaTwD">
                    <property role="3oM_SC" value="come" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVr" role="1PaTwD">
                    <property role="3oM_SC" value="from" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVs" role="1PaTwD">
                    <property role="3oM_SC" value="mpsTrueBootstrap" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVt" role="1PaTwD">
                    <property role="3oM_SC" value="project" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVu" role="1PaTwD">
                    <property role="3oM_SC" value="artifacts." />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="3eyCFyRudVv" role="3cqZAp">
                <node concept="1PaTwC" id="3eyCFyRudVw" role="1aUNEU">
                  <node concept="3oM_SD" id="3eyCFyRudVx" role="1PaTwD">
                    <property role="3oM_SC" value="mpsBootstrapCore" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVy" role="1PaTwD">
                    <property role="3oM_SC" value="uses" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVz" role="1PaTwD">
                    <property role="3oM_SC" value="ant" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudV$" role="1PaTwD">
                    <property role="3oM_SC" value="task" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudV_" role="1PaTwD">
                    <property role="3oM_SC" value="(copyModels" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVA" role="1PaTwD">
                    <property role="3oM_SC" value="in" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVB" role="1PaTwD">
                    <property role="3oM_SC" value="&lt;assemble&gt;" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVC" role="1PaTwD">
                    <property role="3oM_SC" value="task)" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVD" role="1PaTwD">
                    <property role="3oM_SC" value="that" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVE" role="1PaTwD">
                    <property role="3oM_SC" value="needs" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVF" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVG" role="1PaTwD">
                    <property role="3oM_SC" value="start" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVH" role="1PaTwD">
                    <property role="3oM_SC" value="MPS" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVI" role="1PaTwD">
                    <property role="3oM_SC" value="in-process" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVJ" role="1PaTwD">
                    <property role="3oM_SC" value="at" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVK" role="1PaTwD">
                    <property role="3oM_SC" value="PERSISTENCE" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudVL" role="1PaTwD">
                    <property role="3oM_SC" value="level." />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3eyCFyRudVM" role="3cqZAp">
                <node concept="2OqwBi" id="3eyCFyRudVN" role="3clFbG">
                  <node concept="liA8E" id="3eyCFyRudVO" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                    <node concept="2ShNRf" id="3eyCFyRudVP" role="37wK5m">
                      <node concept="1pGfFk" id="3eyCFyRudVQ" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                        <node concept="2OqwBi" id="3eyCFyRudVR" role="37wK5m">
                          <node concept="liA8E" id="3eyCFyRudVS" role="2OqNvi">
                            <ref role="37wK5l" to="gola:~Project.resolveFile(java.lang.String)" resolve="resolveFile" />
                            <node concept="37vLTw" id="3eyCFyRudVT" role="37wK5m">
                              <ref role="3cqZAo" node="3eyCFyRudRz" resolve="ideaHome" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="3eyCFyRudVU" role="2Oq$k0">
                            <ref role="3cqZAo" node="3eyCFyRtrrc" resolve="project" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="3eyCFyRudVV" role="37wK5m">
                          <property role="Xl_RC" value="lib" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3eyCFyRudVW" role="2Oq$k0">
                    <ref role="3cqZAo" node="3eyCFyRudRd" resolve="roots" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3eyCFyRudVX" role="3cqZAp">
                <node concept="2OqwBi" id="3eyCFyRudVY" role="3clFbG">
                  <node concept="37vLTw" id="3eyCFyRudVZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="3eyCFyRtrrc" resolve="project" />
                  </node>
                  <node concept="liA8E" id="3eyCFyRudW0" role="2OqNvi">
                    <ref role="37wK5l" to="gola:~Project.log(java.lang.String)" resolve="log" />
                    <node concept="3cpWs3" id="3eyCFyRudW1" role="37wK5m">
                      <node concept="37vLTw" id="3eyCFyRudW2" role="3uHU7w">
                        <ref role="3cqZAo" node="3eyCFyRudRZ" resolve="mpsTrueBootstrapHome" />
                      </node>
                      <node concept="Xl_RD" id="3eyCFyRudW3" role="3uHU7B">
                        <property role="Xl_RC" value="Location with bootstrap jars: " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="3eyCFyRudW4" role="3cqZAp">
                <node concept="3clFbS" id="3eyCFyRudW5" role="3clFbx">
                  <node concept="YS8fn" id="3eyCFyRudW6" role="3cqZAp">
                    <node concept="2ShNRf" id="3eyCFyRudW7" role="YScLw">
                      <node concept="1pGfFk" id="3eyCFyRudW8" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                        <node concept="Xl_RD" id="3eyCFyRudW9" role="37wK5m">
                          <property role="Xl_RC" value="For 'mpsBootstrapCore' project, need 'mpsTrueBootstrap' artifact location" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="3eyCFyRudWa" role="3clFbw">
                  <node concept="10Nm6u" id="3eyCFyRudWb" role="3uHU7w" />
                  <node concept="37vLTw" id="3eyCFyRudWc" role="3uHU7B">
                    <ref role="3cqZAo" node="3eyCFyRudRZ" resolve="mpsTrueBootstrapHome" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3eyCFyRudWd" role="3cqZAp">
                <node concept="2OqwBi" id="3eyCFyRudWe" role="3clFbG">
                  <node concept="37vLTw" id="3eyCFyRudWf" role="2Oq$k0">
                    <ref role="3cqZAo" node="3eyCFyRudRd" resolve="roots" />
                  </node>
                  <node concept="liA8E" id="3eyCFyRudWg" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                    <node concept="2OqwBi" id="3eyCFyRudWh" role="37wK5m">
                      <node concept="37vLTw" id="3eyCFyRudWi" role="2Oq$k0">
                        <ref role="3cqZAo" node="3eyCFyRtrrc" resolve="project" />
                      </node>
                      <node concept="liA8E" id="3eyCFyRudWj" role="2OqNvi">
                        <ref role="37wK5l" to="gola:~Project.resolveFile(java.lang.String)" resolve="resolveFile" />
                        <node concept="37vLTw" id="3eyCFyRudWk" role="37wK5m">
                          <ref role="3cqZAo" node="3eyCFyRudRZ" resolve="mpsTrueBootstrapHome" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="3eyCFyRudWl" role="3eNLev">
            <node concept="2OqwBi" id="3eyCFyRudWm" role="3eO9$A">
              <node concept="37vLTw" id="3eyCFyRudWn" role="2Oq$k0">
                <ref role="3cqZAo" node="3eyCFyRudRS" resolve="mpsStandaloneHome" />
              </node>
              <node concept="17RvpY" id="3eyCFyRudWo" role="2OqNvi" />
            </node>
            <node concept="3clFbS" id="3eyCFyRudWp" role="3eOfB_">
              <node concept="3SKdUt" id="3eyCFyRudWq" role="3cqZAp">
                <node concept="1PaTwC" id="3eyCFyRudWr" role="1aUNEU">
                  <node concept="3oM_SD" id="3eyCFyRudWs" role="1PaTwD">
                    <property role="3oM_SC" value="pretty" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudWt" role="1PaTwD">
                    <property role="3oM_SC" value="much" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudWu" role="1PaTwD">
                    <property role="3oM_SC" value="identical" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudWv" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudWw" role="1PaTwD">
                    <property role="3oM_SC" value="artifacts.mps," />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudWx" role="1PaTwD">
                    <property role="3oM_SC" value="reduced" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudWy" role="1PaTwD">
                    <property role="3oM_SC" value="set" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudWz" role="1PaTwD">
                    <property role="3oM_SC" value="of" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudW$" role="1PaTwD">
                    <property role="3oM_SC" value="modules" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudW_" role="1PaTwD">
                    <property role="3oM_SC" value="for" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudWA" role="1PaTwD">
                    <property role="3oM_SC" value="standalone" />
                  </node>
                  <node concept="3oM_SD" id="3eyCFyRudWB" role="1PaTwD">
                    <property role="3oM_SC" value="applications" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3eyCFyRudWC" role="3cqZAp">
                <node concept="2OqwBi" id="3eyCFyRudWD" role="3clFbG">
                  <node concept="liA8E" id="3eyCFyRudWE" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                    <node concept="2ShNRf" id="3eyCFyRudWF" role="37wK5m">
                      <node concept="1pGfFk" id="3eyCFyRudWG" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                        <node concept="2OqwBi" id="3eyCFyRudWH" role="37wK5m">
                          <node concept="liA8E" id="3eyCFyRudWI" role="2OqNvi">
                            <ref role="37wK5l" to="gola:~Project.resolveFile(java.lang.String)" resolve="resolveFile" />
                            <node concept="37vLTw" id="3eyCFyRudWJ" role="37wK5m">
                              <ref role="3cqZAo" node="3eyCFyRudRS" resolve="mpsStandaloneHome" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="3eyCFyRudWK" role="2Oq$k0">
                            <ref role="3cqZAo" node="3eyCFyRtrrc" resolve="project" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="3eyCFyRudWL" role="37wK5m">
                          <property role="Xl_RC" value="lib" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3eyCFyRudWM" role="2Oq$k0">
                    <ref role="3cqZAo" node="3eyCFyRudRd" resolve="roots" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3eyCFyRudWN" role="3cqZAp" />
        <node concept="3clFbF" id="3eyCFyRuBu3" role="3cqZAp">
          <node concept="2OqwBi" id="3eyCFyRuCMZ" role="3clFbG">
            <node concept="37vLTw" id="3eyCFyRuBu1" role="2Oq$k0">
              <ref role="3cqZAo" node="3eyCFyRu3KC" resolve="myClasspathRoots" />
            </node>
            <node concept="liA8E" id="3eyCFyRuFk_" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection)" resolve="addAll" />
              <node concept="37vLTw" id="3eyCFyRuGhC" role="37wK5m">
                <ref role="3cqZAo" node="3eyCFyRudRd" resolve="roots" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3eyCFyRuin3" role="3clF45" />
      <node concept="3Tm1VV" id="3eyCFyRudWQ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3eyCFyRyJsX" role="jymVt" />
    <node concept="3clFb_" id="3eyCFyRyM$R" role="jymVt">
      <property role="TrG5h" value="hasClasspathRoots" />
      <node concept="10P_77" id="3eyCFyRyOj2" role="3clF45" />
      <node concept="3clFbS" id="3eyCFyRyM$U" role="3clF47">
        <node concept="3cpWs6" id="3eyCFyRyUjr" role="3cqZAp">
          <node concept="3fqX7Q" id="3eyCFyRz0pj" role="3cqZAk">
            <node concept="2OqwBi" id="3eyCFyRz0pl" role="3fr31v">
              <node concept="37vLTw" id="3eyCFyRz0pm" role="2Oq$k0">
                <ref role="3cqZAo" node="3eyCFyRu3KC" resolve="myClasspathRoots" />
              </node>
              <node concept="liA8E" id="3eyCFyRz0pn" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="gQDJKNd2XK" role="jymVt" />
    <node concept="3clFb_" id="3eyCFyRwzjX" role="jymVt">
      <property role="TrG5h" value="getAllClassesAndJars" />
      <node concept="3clFbS" id="3eyCFyRwzk0" role="3clF47">
        <node concept="3clFbF" id="3eyCFyRzM0j" role="3cqZAp">
          <node concept="37vLTI" id="3eyCFyRzO9W" role="3clFbG">
            <node concept="37vLTw" id="3eyCFyRzM0h" role="37vLTJ">
              <ref role="3cqZAo" node="3eyCFyRzI3W" resolve="myCompleteClasspath" />
            </node>
            <node concept="2ShNRf" id="gQDJKN6QjN" role="37vLTx">
              <node concept="1pGfFk" id="gQDJKN6QjO" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~LinkedHashSet.&lt;init&gt;()" resolve="LinkedHashSet" />
                <node concept="3uibUv" id="gQDJKN6QjP" role="1pMfVU">
                  <ref role="3uigEE" to="guwi:~File" resolve="File" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="gQDJKN6QjQ" role="3cqZAp">
          <node concept="3clFbS" id="gQDJKN6QjS" role="2LFqv$">
            <node concept="3clFbF" id="3eyCFyR$dQ5" role="3cqZAp">
              <node concept="1rXfSq" id="3eyCFyR$dQ3" role="3clFbG">
                <ref role="37wK5l" node="3eyCFyRzXVg" resolve="gatherAllClassesAndJarsUnder" />
                <node concept="37vLTw" id="3eyCFyR$fDe" role="37wK5m">
                  <ref role="3cqZAo" node="gQDJKN6QjX" resolve="file" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="gQDJKN6QjX" role="1Duv9x">
            <property role="TrG5h" value="file" />
            <node concept="3uibUv" id="gQDJKN6QjY" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
          </node>
          <node concept="37vLTw" id="3eyCFyRzUEL" role="1DdaDG">
            <ref role="3cqZAo" node="3eyCFyRu3KC" resolve="myClasspathRoots" />
          </node>
        </node>
        <node concept="3cpWs6" id="3eyCFyRzSKO" role="3cqZAp">
          <node concept="37vLTw" id="3eyCFyRzTrx" role="3cqZAk">
            <ref role="3cqZAo" node="3eyCFyRzI3W" resolve="myCompleteClasspath" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3eyCFyRxV1v" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="3eyCFyRxW77" role="11_B2D">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="gQDJKNd5bs" role="jymVt" />
    <node concept="3clFb_" id="3eyCFyRzXVg" role="jymVt">
      <property role="TrG5h" value="gatherAllClassesAndJarsUnder" />
      <node concept="3clFbS" id="3eyCFyRzXVq" role="3clF47">
        <node concept="3cpWs8" id="3eyCFyRzXVr" role="3cqZAp">
          <node concept="3cpWsn" id="3eyCFyRzXVs" role="3cpWs9">
            <property role="TrG5h" value="children" />
            <property role="3TUv4t" value="false" />
            <node concept="10Q1$e" id="3eyCFyRzXVt" role="1tU5fm">
              <node concept="3uibUv" id="3eyCFyRzXVu" role="10Q1$1">
                <ref role="3uigEE" to="guwi:~File" resolve="File" />
              </node>
            </node>
            <node concept="2OqwBi" id="3eyCFyRzXVv" role="33vP2m">
              <node concept="37vLTw" id="3eyCFyRzXVw" role="2Oq$k0">
                <ref role="3cqZAo" node="3eyCFyRzXVl" resolve="dir" />
              </node>
              <node concept="liA8E" id="3eyCFyRzXVx" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.listFiles()" resolve="listFiles" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3eyCFyRzXVy" role="3cqZAp">
          <node concept="3clFbS" id="3eyCFyRzXVz" role="3clFbx">
            <node concept="3clFbF" id="3eyCFyRzXV$" role="3cqZAp">
              <node concept="2OqwBi" id="3eyCFyRzXV_" role="3clFbG">
                <node concept="37vLTw" id="3eyCFyRzXVA" role="2Oq$k0">
                  <ref role="3cqZAo" node="3eyCFyRtrrc" resolve="project" />
                </node>
                <node concept="liA8E" id="3eyCFyRzXVB" role="2OqNvi">
                  <ref role="37wK5l" to="gola:~Project.log(java.lang.String,int)" resolve="log" />
                  <node concept="2YIFZM" id="3eyCFyRzXVC" role="37wK5m">
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                    <node concept="Xl_RD" id="3eyCFyRzXVD" role="37wK5m">
                      <property role="Xl_RC" value="Failed to read directory %s, ignored" />
                    </node>
                    <node concept="2OqwBi" id="3eyCFyRzXVE" role="37wK5m">
                      <node concept="37vLTw" id="3eyCFyRzXVF" role="2Oq$k0">
                        <ref role="3cqZAo" node="3eyCFyRzXVl" resolve="dir" />
                      </node>
                      <node concept="liA8E" id="3eyCFyRzXVG" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                      </node>
                    </node>
                  </node>
                  <node concept="10M0yZ" id="3eyCFyRzXVH" role="37wK5m">
                    <ref role="3cqZAo" to="gola:~Project.MSG_WARN" resolve="MSG_WARN" />
                    <ref role="1PxDUh" to="gola:~Project" resolve="Project" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3eyCFyRzXVI" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="3eyCFyRzXVJ" role="3clFbw">
            <node concept="10Nm6u" id="3eyCFyRzXVK" role="3uHU7w" />
            <node concept="37vLTw" id="3eyCFyRzXVL" role="3uHU7B">
              <ref role="3cqZAo" node="3eyCFyRzXVs" resolve="children" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3eyCFyRzXVM" role="3cqZAp">
          <node concept="1PaTwC" id="3eyCFyRzXVN" role="1aUNEU">
            <node concept="3oM_SD" id="3eyCFyRzXVO" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR$$aY" role="1PaTwD">
              <property role="3oM_SC" value="used" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR$$ba" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR$$c0" role="1PaTwD">
              <property role="3oM_SC" value="filter" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR$$cO" role="1PaTwD">
              <property role="3oM_SC" value="out" />
            </node>
            <node concept="3oM_SD" id="3eyCFyRzXVS" role="1PaTwD">
              <property role="3oM_SC" value="trove" />
            </node>
            <node concept="3oM_SD" id="3eyCFyRzXVT" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="3eyCFyRzXVU" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="3eyCFyRzXVV" role="1PaTwD">
              <property role="3oM_SC" value="ours" />
            </node>
            <node concept="3oM_SD" id="3eyCFyRzXVW" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="3eyCFyRzXVX" role="1PaTwD">
              <property role="3oM_SC" value="$mps.home$/lib," />
            </node>
            <node concept="3oM_SD" id="3eyCFyR$$dK" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR$$et" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR$$fb" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR$$fE" role="1PaTwD">
              <property role="3oM_SC" value="feel" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR$$fU" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR$$gb" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR$$h0" role="1PaTwD">
              <property role="3oM_SC" value="relevant" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR$$h$" role="1PaTwD">
              <property role="3oM_SC" value="any" />
            </node>
            <node concept="3oM_SD" id="3eyCFyR$$gt" role="1PaTwD">
              <property role="3oM_SC" value="longer" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3eyCFyRzXWa" role="3cqZAp">
          <node concept="1PaTwC" id="3eyCFyRzXWb" role="1aUNEU">
            <node concept="3oM_SD" id="3eyCFyRzXWc" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="3eyCFyRzXWd" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="3eyCFyRzXWe" role="1PaTwD">
              <property role="3oM_SC" value="provide" />
            </node>
            <node concept="3oM_SD" id="3eyCFyRzXWf" role="1PaTwD">
              <property role="3oM_SC" value="right" />
            </node>
            <node concept="3oM_SD" id="3eyCFyRzXWg" role="1PaTwD">
              <property role="3oM_SC" value="order" />
            </node>
            <node concept="3oM_SD" id="3eyCFyRzXWh" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="3eyCFyRzXWi" role="1PaTwD">
              <property role="3oM_SC" value="class" />
            </node>
            <node concept="3oM_SD" id="3eyCFyRzXWj" role="1PaTwD">
              <property role="3oM_SC" value="loading," />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3eyCFyRzXWk" role="3cqZAp">
          <node concept="1PaTwC" id="3eyCFyRzXWl" role="1aUNEU">
            <node concept="3oM_SD" id="3eyCFyRzXWm" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="3eyCFyRzXWn" role="1PaTwD">
              <property role="3oM_SC" value="files" />
            </node>
            <node concept="3oM_SD" id="3eyCFyRzXWo" role="1PaTwD">
              <property role="3oM_SC" value="go" />
            </node>
            <node concept="3oM_SD" id="3eyCFyRzXWp" role="1PaTwD">
              <property role="3oM_SC" value="first," />
            </node>
            <node concept="3oM_SD" id="3eyCFyRzXWq" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="3eyCFyRzXWr" role="1PaTwD">
              <property role="3oM_SC" value="replace" />
            </node>
            <node concept="3oM_SD" id="3eyCFyRzXWs" role="1PaTwD">
              <property role="3oM_SC" value="them" />
            </node>
            <node concept="3oM_SD" id="3eyCFyRzXWt" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="3eyCFyRzXWu" role="1PaTwD">
              <property role="3oM_SC" value="null" />
            </node>
            <node concept="3oM_SD" id="3eyCFyRzXWv" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="3eyCFyRzXWw" role="1PaTwD">
              <property role="3oM_SC" value="process" />
            </node>
            <node concept="3oM_SD" id="3eyCFyRzXWx" role="1PaTwD">
              <property role="3oM_SC" value="directories" />
            </node>
            <node concept="3oM_SD" id="3eyCFyRzXWy" role="1PaTwD">
              <property role="3oM_SC" value="later" />
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="3eyCFyRzXWz" role="3cqZAp">
          <node concept="3clFbS" id="3eyCFyRzXW$" role="2LFqv$">
            <node concept="3cpWs8" id="3eyCFyRzXW_" role="3cqZAp">
              <node concept="3cpWsn" id="3eyCFyRzXWA" role="3cpWs9">
                <property role="TrG5h" value="f" />
                <node concept="3uibUv" id="3eyCFyRzXWB" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~File" resolve="File" />
                </node>
                <node concept="AH0OO" id="3eyCFyRzXWC" role="33vP2m">
                  <node concept="37vLTw" id="3eyCFyRzXWD" role="AHEQo">
                    <ref role="3cqZAo" node="3eyCFyRzXXk" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="3eyCFyRzXWE" role="AHHXb">
                    <ref role="3cqZAo" node="3eyCFyRzXVs" resolve="children" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3eyCFyRzXWF" role="3cqZAp">
              <node concept="3clFbS" id="3eyCFyRzXWG" role="3clFbx">
                <node concept="3N13vt" id="3eyCFyRzXWH" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="3eyCFyRzXWI" role="3clFbw">
                <node concept="37vLTw" id="3eyCFyRzXWJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="3eyCFyRzXWA" resolve="f" />
                </node>
                <node concept="liA8E" id="3eyCFyRzXWK" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.isDirectory()" resolve="isDirectory" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3eyCFyRzXWL" role="3cqZAp">
              <node concept="37vLTI" id="3eyCFyRzXWM" role="3clFbG">
                <node concept="AH0OO" id="3eyCFyRzXWN" role="37vLTJ">
                  <node concept="37vLTw" id="3eyCFyRzXWO" role="AHEQo">
                    <ref role="3cqZAo" node="3eyCFyRzXXk" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="3eyCFyRzXWP" role="AHHXb">
                    <ref role="3cqZAo" node="3eyCFyRzXVs" resolve="children" />
                  </node>
                </node>
                <node concept="10Nm6u" id="3eyCFyRzXWQ" role="37vLTx" />
              </node>
            </node>
            <node concept="3clFbJ" id="3eyCFyRzXWR" role="3cqZAp">
              <node concept="1Wc70l" id="3eyCFyRzXWT" role="3clFbw">
                <node concept="2OqwBi" id="3eyCFyRzXWU" role="3uHU7B">
                  <node concept="2OqwBi" id="3eyCFyRzXWV" role="2Oq$k0">
                    <node concept="37vLTw" id="3eyCFyRzXWW" role="2Oq$k0">
                      <ref role="3cqZAo" node="3eyCFyRzXWA" resolve="f" />
                    </node>
                    <node concept="liA8E" id="3eyCFyRzXWX" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~File.getName()" resolve="getName" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3eyCFyRzXWY" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                    <node concept="Xl_RD" id="3eyCFyRzXWZ" role="37wK5m">
                      <property role="Xl_RC" value=".jar" />
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="3eyCFyRzXX0" role="3uHU7w">
                  <node concept="2OqwBi" id="3eyCFyRzXX1" role="3fr31v">
                    <node concept="2OqwBi" id="3eyCFyRzXX2" role="2Oq$k0">
                      <node concept="37vLTw" id="3eyCFyRzXX3" role="2Oq$k0">
                        <ref role="3cqZAo" node="3eyCFyRzXWA" resolve="f" />
                      </node>
                      <node concept="liA8E" id="3eyCFyRzXX4" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~File.getName()" resolve="getName" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3eyCFyRzXX5" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                      <node concept="Xl_RD" id="3eyCFyRzXX6" role="37wK5m">
                        <property role="Xl_RC" value="ant.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="3eyCFyRzXXe" role="3clFbx">
                <node concept="3SKdUt" id="3eyCFyR$GIp" role="3cqZAp">
                  <node concept="1PaTwC" id="3eyCFyR$GIq" role="1aUNEU">
                    <node concept="3oM_SD" id="3eyCFyR$IId" role="1PaTwD">
                      <property role="3oM_SC" value="XXX" />
                    </node>
                    <node concept="3oM_SD" id="3eyCFyR$IIf" role="1PaTwD">
                      <property role="3oM_SC" value="I" />
                    </node>
                    <node concept="3oM_SD" id="3eyCFyR$IIi" role="1PaTwD">
                      <property role="3oM_SC" value="wonder" />
                    </node>
                    <node concept="3oM_SD" id="3eyCFyR$IIm" role="1PaTwD">
                      <property role="3oM_SC" value="why" />
                    </node>
                    <node concept="3oM_SD" id="3eyCFyR$IIr" role="1PaTwD">
                      <property role="3oM_SC" value="excluding" />
                    </node>
                    <node concept="3oM_SD" id="3eyCFyR$IIx" role="1PaTwD">
                      <property role="3oM_SC" value="ant.jar," />
                    </node>
                    <node concept="3oM_SD" id="3eyCFyR$IIC" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="3eyCFyR$IIK" role="1PaTwD">
                      <property role="3oM_SC" value="avoid" />
                    </node>
                    <node concept="3oM_SD" id="3eyCFyR$IIT" role="1PaTwD">
                      <property role="3oM_SC" value="warning" />
                    </node>
                    <node concept="3oM_SD" id="3eyCFyR$IJ3" role="1PaTwD">
                      <property role="3oM_SC" value="about" />
                    </node>
                    <node concept="3oM_SD" id="3eyCFyR$IJe" role="1PaTwD">
                      <property role="3oM_SC" value="duplicated" />
                    </node>
                    <node concept="3oM_SD" id="3eyCFyR$IJq" role="1PaTwD">
                      <property role="3oM_SC" value="ant.Project?" />
                    </node>
                    <node concept="3oM_SD" id="3eyCFyR$IK4" role="1PaTwD">
                      <property role="3oM_SC" value="Is" />
                    </node>
                    <node concept="3oM_SD" id="3eyCFyR$IKi" role="1PaTwD">
                      <property role="3oM_SC" value="it" />
                    </node>
                    <node concept="3oM_SD" id="3eyCFyR$IKx" role="1PaTwD">
                      <property role="3oM_SC" value="necessary?" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="3eyCFyR$Ksu" role="3cqZAp">
                  <node concept="1PaTwC" id="3eyCFyR$Ksv" role="1aUNEU">
                    <node concept="3oM_SD" id="3eyCFyR$Mlu" role="1PaTwD">
                      <property role="3oM_SC" value="FWIW," />
                    </node>
                    <node concept="3oM_SD" id="3eyCFyR$MlK" role="1PaTwD">
                      <property role="3oM_SC" value="there's" />
                    </node>
                    <node concept="3oM_SD" id="3eyCFyR$MlN" role="1PaTwD">
                      <property role="3oM_SC" value="IDEA/ant/lib/ant.jar," />
                    </node>
                    <node concept="3oM_SD" id="3eyCFyR$MmR" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="3eyCFyR$MmW" role="1PaTwD">
                      <property role="3oM_SC" value="it" />
                    </node>
                    <node concept="3oM_SD" id="3eyCFyR$Mn2" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="3eyCFyR$Mn9" role="1PaTwD">
                      <property role="3oM_SC" value="target" />
                    </node>
                    <node concept="3oM_SD" id="3eyCFyR$Mo1" role="1PaTwD">
                      <property role="3oM_SC" value="of" />
                    </node>
                    <node concept="3oM_SD" id="3eyCFyR$Moa" role="1PaTwD">
                      <property role="3oM_SC" value="this" />
                    </node>
                    <node concept="3oM_SD" id="3eyCFyR$Mo$" role="1PaTwD">
                      <property role="3oM_SC" value="exclude?" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3eyCFyRzXXf" role="3cqZAp">
                  <node concept="2OqwBi" id="3eyCFyRzXXg" role="3clFbG">
                    <node concept="37vLTw" id="3eyCFyRzXXh" role="2Oq$k0">
                      <ref role="3cqZAo" node="3eyCFyRzI3W" resolve="myCompleteClasspath" />
                    </node>
                    <node concept="liA8E" id="3eyCFyRzXXi" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                      <node concept="37vLTw" id="3eyCFyRzXXj" role="37wK5m">
                        <ref role="3cqZAo" node="3eyCFyRzXWA" resolve="f" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3eyCFyRzXXk" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="3eyCFyRzXXl" role="1tU5fm" />
            <node concept="3cmrfG" id="3eyCFyRzXXm" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="3eyCFyRzXXn" role="1Dwp0S">
            <node concept="2OqwBi" id="3eyCFyRzXXo" role="3uHU7w">
              <node concept="37vLTw" id="3eyCFyRzXXp" role="2Oq$k0">
                <ref role="3cqZAo" node="3eyCFyRzXVs" resolve="children" />
              </node>
              <node concept="1Rwk04" id="3eyCFyRzXXq" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="3eyCFyRzXXr" role="3uHU7B">
              <ref role="3cqZAo" node="3eyCFyRzXXk" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="3eyCFyRzXXs" role="1Dwrff">
            <node concept="37vLTw" id="3eyCFyRzXXt" role="2$L3a6">
              <ref role="3cqZAo" node="3eyCFyRzXXk" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="3eyCFyRzXXu" role="3cqZAp">
          <node concept="37vLTw" id="3eyCFyRzXXv" role="1DdaDG">
            <ref role="3cqZAo" node="3eyCFyRzXVs" resolve="children" />
          </node>
          <node concept="3cpWsn" id="3eyCFyRzXXw" role="1Duv9x">
            <property role="TrG5h" value="f" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="3eyCFyRzXXx" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
          </node>
          <node concept="3clFbS" id="3eyCFyRzXXy" role="2LFqv$">
            <node concept="3clFbJ" id="3eyCFyRzXXz" role="3cqZAp">
              <node concept="3clFbS" id="3eyCFyRzXX$" role="3clFbx">
                <node concept="3N13vt" id="3eyCFyRzXX_" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="3eyCFyRzXXA" role="3clFbw">
                <node concept="10Nm6u" id="3eyCFyRzXXB" role="3uHU7w" />
                <node concept="37vLTw" id="3eyCFyRzXXC" role="3uHU7B">
                  <ref role="3cqZAo" node="3eyCFyRzXXw" resolve="f" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="3eyCFyRzXXD" role="3cqZAp">
              <node concept="1PaTwC" id="3eyCFyRzXXE" role="1aUNEU">
                <node concept="3oM_SD" id="3eyCFyRzXXF" role="1PaTwD">
                  <property role="3oM_SC" value="inv:" />
                </node>
                <node concept="3oM_SD" id="3eyCFyRzXXG" role="1PaTwD">
                  <property role="3oM_SC" value="f.isDirectory()" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3eyCFyR$uNT" role="3cqZAp">
              <node concept="1rXfSq" id="3eyCFyR$uNR" role="3clFbG">
                <ref role="37wK5l" node="3eyCFyRzXVg" resolve="gatherAllClassesAndJarsUnder" />
                <node concept="37vLTw" id="3eyCFyR$w_U" role="37wK5m">
                  <ref role="3cqZAo" node="3eyCFyRzXXw" resolve="f" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3eyCFyRzXVi" role="3clF45" />
      <node concept="37vLTG" id="3eyCFyRzXVl" role="3clF46">
        <property role="TrG5h" value="dir" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3eyCFyRzXVm" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3Tm6S6" id="3eyCFyR$2TH" role="1B3o_S" />
    </node>
  </node>
  <node concept="312cEu" id="2Zuhns8AUbI">
    <property role="TrG5h" value="ExcludeNested" />
    <node concept="3Tm1VV" id="2Zuhns8AUbJ" role="1B3o_S" />
    <node concept="3uibUv" id="2Zuhns8AXc3" role="1zkMxy">
      <ref role="3uigEE" to="rg95:~DataType" resolve="DataType" />
    </node>
    <node concept="312cEg" id="2Zuhns8AXc4" role="jymVt">
      <property role="TrG5h" value="excluded" />
      <node concept="3Tm6S6" id="2Zuhns8AXc5" role="1B3o_S" />
      <node concept="3uibUv" id="2Zuhns8AXc7" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2Zuhns8AXc9" role="11_B2D">
          <ref role="3uigEE" to="rg95:~FileSet" resolve="FileSet" />
        </node>
      </node>
      <node concept="2ShNRf" id="2Zuhns8AXcb" role="33vP2m">
        <node concept="1pGfFk" id="2Zuhns8AXcd" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="2Zuhns8AXcf" role="1pMfVU">
            <ref role="3uigEE" to="rg95:~FileSet" resolve="FileSet" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="2Zuhns8AUbK" role="jymVt">
      <node concept="3cqZAl" id="2Zuhns8AUbL" role="3clF45" />
      <node concept="3Tm1VV" id="2Zuhns8AUbM" role="1B3o_S" />
      <node concept="3clFbS" id="2Zuhns8AUbN" role="3clF47" />
    </node>
    <node concept="3clFb_" id="2Zuhns8AXcH" role="jymVt">
      <property role="TrG5h" value="getExcludedFromDiffFiles" />
      <node concept="3Tm1VV" id="2Zuhns8AXcJ" role="1B3o_S" />
      <node concept="3clFbS" id="2Zuhns8AXcK" role="3clF47">
        <node concept="3cpWs8" id="2Zuhns8AXcO" role="3cqZAp">
          <node concept="3cpWsn" id="2Zuhns8AXcP" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="2Zuhns8AXcQ" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2Zuhns8AXcR" role="11_B2D">
                <ref role="3uigEE" to="guwi:~File" resolve="File" />
              </node>
            </node>
            <node concept="2ShNRf" id="2Zuhns8AXcS" role="33vP2m">
              <node concept="1pGfFk" id="2Zuhns8AXcT" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2Zuhns8AXcU" role="1pMfVU">
                  <ref role="3uigEE" to="guwi:~File" resolve="File" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="2Zuhns8AXcV" role="3cqZAp">
          <node concept="37vLTw" id="2Zuhns8AXdA" role="1DdaDG">
            <ref role="3cqZAo" node="2Zuhns8AXc4" resolve="excluded" />
          </node>
          <node concept="3cpWsn" id="2Zuhns8AXcX" role="1Duv9x">
            <property role="TrG5h" value="inner" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="2Zuhns8AXcY" role="1tU5fm">
              <ref role="3uigEE" to="rg95:~FileSet" resolve="FileSet" />
            </node>
          </node>
          <node concept="3clFbS" id="2Zuhns8AXcZ" role="2LFqv$">
            <node concept="3cpWs8" id="2Zuhns8AXd0" role="3cqZAp">
              <node concept="3cpWsn" id="2Zuhns8AXd1" role="3cpWs9">
                <property role="TrG5h" value="it" />
                <property role="3TUv4t" value="false" />
                <node concept="3uibUv" id="2Zuhns8AXd2" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
                </node>
                <node concept="2OqwBi" id="2Zuhns8AXd3" role="33vP2m">
                  <node concept="37vLTw" id="2Zuhns8AXd4" role="2Oq$k0">
                    <ref role="3cqZAo" node="2Zuhns8AXcX" resolve="inner" />
                  </node>
                  <node concept="liA8E" id="2Zuhns8AXd5" role="2OqNvi">
                    <ref role="37wK5l" to="rg95:~FileSet.iterator()" resolve="iterator" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2$JKZl" id="2Zuhns8AXd6" role="3cqZAp">
              <node concept="2OqwBi" id="2Zuhns8AXd7" role="2$JKZa">
                <node concept="37vLTw" id="2Zuhns8AXd8" role="2Oq$k0">
                  <ref role="3cqZAo" node="2Zuhns8AXd1" resolve="it" />
                </node>
                <node concept="liA8E" id="2Zuhns8AXd9" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Iterator.hasNext()" resolve="hasNext" />
                </node>
              </node>
              <node concept="3clFbS" id="2Zuhns8AXda" role="2LFqv$">
                <node concept="3cpWs8" id="2Zuhns8AXdb" role="3cqZAp">
                  <node concept="3cpWsn" id="2Zuhns8AXdc" role="3cpWs9">
                    <property role="TrG5h" value="next" />
                    <property role="3TUv4t" value="false" />
                    <node concept="3uibUv" id="2Zuhns8AXdB" role="1tU5fm">
                      <ref role="3uigEE" to="67b4:~FileResource" resolve="FileResource" />
                    </node>
                    <node concept="10QFUN" id="2Zuhns8AXde" role="33vP2m">
                      <node concept="2OqwBi" id="2Zuhns8AXdf" role="10QFUP">
                        <node concept="37vLTw" id="2Zuhns8AXdg" role="2Oq$k0">
                          <ref role="3cqZAo" node="2Zuhns8AXd1" resolve="it" />
                        </node>
                        <node concept="liA8E" id="2Zuhns8AXdh" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Iterator.next()" resolve="next" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="2Zuhns8AXdC" role="10QFUM">
                        <ref role="3uigEE" to="67b4:~FileResource" resolve="FileResource" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="2Zuhns8AXdj" role="3cqZAp">
                  <node concept="3cpWsn" id="2Zuhns8AXdk" role="3cpWs9">
                    <property role="TrG5h" value="file" />
                    <property role="3TUv4t" value="false" />
                    <node concept="3uibUv" id="2Zuhns8AXdl" role="1tU5fm">
                      <ref role="3uigEE" to="guwi:~File" resolve="File" />
                    </node>
                    <node concept="2OqwBi" id="2Zuhns8AXdm" role="33vP2m">
                      <node concept="37vLTw" id="2Zuhns8AXdn" role="2Oq$k0">
                        <ref role="3cqZAo" node="2Zuhns8AXdc" resolve="next" />
                      </node>
                      <node concept="liA8E" id="2Zuhns8AXdo" role="2OqNvi">
                        <ref role="37wK5l" to="67b4:~FileResource.getFile()" resolve="getFile" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="2Zuhns8AXdp" role="3cqZAp">
                  <node concept="2OqwBi" id="2Zuhns8AXdq" role="3clFbw">
                    <node concept="37vLTw" id="2Zuhns8AXdr" role="2Oq$k0">
                      <ref role="3cqZAo" node="2Zuhns8AXdk" resolve="file" />
                    </node>
                    <node concept="liA8E" id="2Zuhns8AXds" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="2Zuhns8AXdt" role="3clFbx">
                    <node concept="3clFbF" id="2Zuhns8AXdu" role="3cqZAp">
                      <node concept="2OqwBi" id="2Zuhns8AXdv" role="3clFbG">
                        <node concept="37vLTw" id="2Zuhns8AXdw" role="2Oq$k0">
                          <ref role="3cqZAo" node="2Zuhns8AXcP" resolve="result" />
                        </node>
                        <node concept="liA8E" id="2Zuhns8AXdx" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                          <node concept="37vLTw" id="2Zuhns8AXdy" role="37wK5m">
                            <ref role="3cqZAo" node="2Zuhns8AXdk" resolve="file" />
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
        <node concept="3cpWs6" id="2Zuhns8AXdz" role="3cqZAp">
          <node concept="2YIFZM" id="2Zuhns8AXd$" role="3cqZAk">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List)" resolve="unmodifiableList" />
            <node concept="37vLTw" id="2Zuhns8AXd_" role="37wK5m">
              <ref role="3cqZAo" node="2Zuhns8AXcP" resolve="result" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2Zuhns8AXcL" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2Zuhns8AXcN" role="11_B2D">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2Zuhns8AXcg" role="jymVt">
      <property role="TrG5h" value="addFile" />
      <node concept="3cqZAl" id="2Zuhns8AXch" role="3clF45" />
      <node concept="3Tm1VV" id="2Zuhns8AXci" role="1B3o_S" />
      <node concept="3clFbS" id="2Zuhns8AXcj" role="3clF47">
        <node concept="3clFbF" id="2Zuhns8AXcs" role="3cqZAp">
          <node concept="2OqwBi" id="2Zuhns8AXcu" role="3clFbG">
            <node concept="37vLTw" id="2Zuhns8AXct" role="2Oq$k0">
              <ref role="3cqZAo" node="2Zuhns8AXc4" resolve="excluded" />
            </node>
            <node concept="liA8E" id="2Zuhns8AXcy" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="2Zuhns8AXcz" role="37wK5m">
                <ref role="3cqZAo" node="2Zuhns8AXco" resolve="inner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2Zuhns8AXco" role="3clF46">
        <property role="TrG5h" value="inner" />
        <node concept="3uibUv" id="2Zuhns8AXcp" role="1tU5fm">
          <ref role="3uigEE" to="rg95:~FileSet" resolve="FileSet" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2Zuhns8AXck" role="jymVt">
      <property role="TrG5h" value="addFiles" />
      <node concept="37vLTG" id="2Zuhns8AXcq" role="3clF46">
        <property role="TrG5h" value="inner" />
        <node concept="3uibUv" id="2Zuhns8AXcr" role="1tU5fm">
          <ref role="3uigEE" to="rg95:~FileSet" resolve="FileSet" />
        </node>
      </node>
      <node concept="3cqZAl" id="2Zuhns8AXcl" role="3clF45" />
      <node concept="3Tm1VV" id="2Zuhns8AXcm" role="1B3o_S" />
      <node concept="3clFbS" id="2Zuhns8AXcn" role="3clF47">
        <node concept="3clFbF" id="2Zuhns8AXc$" role="3cqZAp">
          <node concept="2OqwBi" id="2Zuhns8AXc_" role="3clFbG">
            <node concept="37vLTw" id="2Zuhns8AXcA" role="2Oq$k0">
              <ref role="3cqZAo" node="2Zuhns8AXc4" resolve="excluded" />
            </node>
            <node concept="liA8E" id="2Zuhns8AXcB" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="2Zuhns8AXcC" role="37wK5m">
                <ref role="3cqZAo" node="2Zuhns8AXcq" resolve="inner" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="60oBoEdcnR">
    <property role="TrG5h" value="MigrationTask" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="2tJIrI" id="3vL64MrnmEF" role="jymVt" />
    <node concept="312cEg" id="3vL64Mrnq8_" role="jymVt">
      <property role="TrG5h" value="myProps" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3vL64Mrnov$" role="1B3o_S" />
      <node concept="3uibUv" id="3vL64MrnpTD" role="1tU5fm">
        <ref role="3uigEE" to="asz6:3vL64MrmMR4" resolve="MigrateTaskProperties" />
      </node>
    </node>
    <node concept="2tJIrI" id="7zEA_IIJyIm" role="jymVt" />
    <node concept="3Tm1VV" id="60oBoEdcnS" role="1B3o_S" />
    <node concept="3uibUv" id="60oBoEdkcl" role="1zkMxy">
      <ref role="3uigEE" node="3ufQioQQti6" resolve="MpsLoadTask" />
    </node>
    <node concept="3clFbW" id="60oBoEdcop" role="jymVt">
      <node concept="3Tm1VV" id="60oBoEdcoq" role="1B3o_S" />
      <node concept="3cqZAl" id="60oBoEdcor" role="3clF45" />
      <node concept="3clFbS" id="60oBoEdcos" role="3clF47">
        <node concept="XkiVB" id="4vDU0BPA6W8" role="3cqZAp">
          <ref role="37wK5l" node="4vDU0BPxMGt" resolve="MpsLoadTask" />
          <node concept="Xl_RD" id="5reM9ACTkmr" role="37wK5m">
            <property role="Xl_RC" value="jetbrains.mps.build.migration.MigrationWorker" />
          </node>
        </node>
        <node concept="3SKdUt" id="3vL64MrqyEo" role="3cqZAp">
          <node concept="1PaTwC" id="3vL64MrqyEp" role="1aUNEU">
            <node concept="3oM_SD" id="3vL64Mrqz6y" role="1PaTwD">
              <property role="3oM_SC" value="generally," />
            </node>
            <node concept="3oM_SD" id="3vL64MrqzbJ" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="3vL64Mrqzcd" role="1PaTwD">
              <property role="3oM_SC" value="task" />
            </node>
            <node concept="3oM_SD" id="3vL64MrqzcG" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="3vL64MrqzdB" role="1PaTwD">
              <property role="3oM_SC" value="executed" />
            </node>
            <node concept="3oM_SD" id="3vL64Mrqzez" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="3vL64Mrqzfw" role="1PaTwD">
              <property role="3oM_SC" value="without" />
            </node>
            <node concept="3oM_SD" id="3vL64Mrqzkh" role="1PaTwD">
              <property role="3oM_SC" value="explicit" />
            </node>
            <node concept="3oM_SD" id="3vL64Mrqzkq" role="1PaTwD">
              <property role="3oM_SC" value="fork=&quot;true&quot;," />
            </node>
            <node concept="3oM_SD" id="3vL64MrqznW" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="3vL64MrqzoX" role="1PaTwD">
              <property role="3oM_SC" value="default" />
            </node>
            <node concept="3oM_SD" id="3vL64MrqzpZ" role="1PaTwD">
              <property role="3oM_SC" value="MpsLoadTask.myFork" />
            </node>
            <node concept="3oM_SD" id="3vL64MrqAdz" role="1PaTwD">
              <property role="3oM_SC" value="==" />
            </node>
            <node concept="3oM_SD" id="3vL64MrqAft" role="1PaTwD">
              <property role="3oM_SC" value="true." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3vL64MrnsQD" role="3cqZAp">
          <node concept="37vLTI" id="3vL64Mrnv1m" role="3clFbG">
            <node concept="2OqwBi" id="3vL64MrBJaO" role="37vLTx">
              <node concept="2OqwBi" id="5lLwtTop4lz" role="2Oq$k0">
                <node concept="2OqwBi" id="3vL64MrnIlX" role="2Oq$k0">
                  <node concept="2ShNRf" id="3vL64MrnGpo" role="2Oq$k0">
                    <node concept="1pGfFk" id="3vL64MrnHtN" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" to="asz6:3vL64MrmSlT" resolve="MigrateTaskProperties" />
                      <node concept="37vLTw" id="3vL64MrnHIS" role="37wK5m">
                        <ref role="3cqZAo" node="3ufQioQQtje" resolve="myWhatToDo" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3vL64MrnIVY" role="2OqNvi">
                    <ref role="37wK5l" to="asz6:3vL64MrnfIL" resolve="setPreCheckFailureHalt" />
                    <node concept="3clFbT" id="3vL64MrnJdJ" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5lLwtTop53k" role="2OqNvi">
                  <ref role="37wK5l" to="asz6:5lLwtTooXpW" resolve="setHaltOnDependencyError" />
                  <node concept="3clFbT" id="5lLwtTop5lC" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3vL64MrBJTR" role="2OqNvi">
                <ref role="37wK5l" to="asz6:3vL64MrATMR" resolve="setMakeDistribModules" />
                <node concept="3clFbT" id="3vL64MrBKff" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3vL64MrnsQB" role="37vLTJ">
              <ref role="3cqZAo" node="3vL64Mrnq8_" resolve="myProps" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3vL64MrBKR5" role="3cqZAp">
          <node concept="1PaTwC" id="3vL64MrBKR6" role="1aUNEU">
            <node concept="3oM_SD" id="3vL64MrBL8d" role="1PaTwD">
              <property role="3oM_SC" value="makeDistribModules==true" />
            </node>
            <node concept="3oM_SD" id="3vL64MrBL8f" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="3vL64MrBL8i" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="3vL64MrBL8m" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="3vL64MrBL8r" role="1PaTwD">
              <property role="3oM_SC" value="backwards" />
            </node>
            <node concept="3oM_SD" id="3vL64MrBL9M" role="1PaTwD">
              <property role="3oM_SC" value="compatibility" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7zEA_IIJM58" role="3cqZAp">
          <node concept="1rXfSq" id="7zEA_IIJM57" role="3clFbG">
            <ref role="37wK5l" node="3ufQioQQtjQ" resolve="setFailOnError" />
            <node concept="3clFbT" id="7zEA_IIJMPO" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1$mDfZ_txWO" role="3cqZAp">
          <node concept="1rXfSq" id="1$mDfZ_zRzG" role="3clFbG">
            <ref role="37wK5l" node="1$mDfZ_zcl8" resolve="setOpenPackages" />
            <node concept="3clFbT" id="1$mDfZ_zSAU" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4QSveR2VOhz" role="3cqZAp">
          <node concept="1rXfSq" id="4QSveR2VOhx" role="3clFbG">
            <ref role="37wK5l" node="4QSveR2V4Uk" resolve="setJnaLibraryPath" />
            <node concept="37vLTw" id="4QSveR2VOSP" role="37wK5m">
              <ref role="3cqZAo" node="4QSveR2UwNM" resolve="DEFAULT_JNA_LIBRARY_PATH" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2o55QbnMao0" role="3cqZAp">
          <node concept="1PaTwC" id="2o55QbnMao1" role="1aUNEU">
            <node concept="3oM_SD" id="2o55QbnMao2" role="1PaTwD">
              <property role="3oM_SC" value="XXX" />
            </node>
            <node concept="3oM_SD" id="2o55QbnMaIg" role="1PaTwD">
              <property role="3oM_SC" value="check" />
            </node>
            <node concept="3oM_SD" id="2o55QbnMaIy" role="1PaTwD">
              <property role="3oM_SC" value="LaunchTestTask" />
            </node>
            <node concept="3oM_SD" id="2o55QbnMaK3" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="2o55QbnMaKk" role="1PaTwD">
              <property role="3oM_SC" value="MpsRunTask" />
            </node>
            <node concept="3oM_SD" id="2o55QbnMe_X" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="2o55QbnMe_Y" role="1PaTwD">
              <property role="3oM_SC" value="ideas" />
            </node>
            <node concept="3oM_SD" id="2o55QbnMeAJ" role="1PaTwD">
              <property role="3oM_SC" value="about" />
            </node>
            <node concept="3oM_SD" id="2o55QbnMeAK" role="1PaTwD">
              <property role="3oM_SC" value="useful/necessary" />
            </node>
            <node concept="3oM_SD" id="2o55QbnMeC1" role="1PaTwD">
              <property role="3oM_SC" value="JVM" />
            </node>
            <node concept="3oM_SD" id="2o55QbnMeCi" role="1PaTwD">
              <property role="3oM_SC" value="args" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2o55QbnHB7I" role="3cqZAp">
          <node concept="3cpWsn" id="2o55QbnHB7J" role="3cpWs9">
            <property role="TrG5h" value="a2" />
            <node concept="3uibUv" id="2o55QbnHB7K" role="1tU5fm">
              <ref role="3uigEE" node="3ufQioQQsm3" resolve="Arg" />
            </node>
            <node concept="2ShNRf" id="2o55QbnHB7L" role="33vP2m">
              <node concept="1pGfFk" id="2o55QbnHB7M" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="1hBlbKBNftw" resolve="Arg" />
                <node concept="Xl_RD" id="2bvlWAl6OYE" role="37wK5m">
                  <property role="Xl_RC" value="-Dintellij.platform.load.app.info.from.resources=true" />
                </node>
                <node concept="Xl_RD" id="2o55QbnHB7O" role="37wK5m">
                  <property role="Xl_RC" value="-Dintellij.platform.load.app.info.from.resources" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2XPMm9goCr3" role="3cqZAp">
          <node concept="1PaTwC" id="2XPMm9goCr4" role="1aUNEU">
            <node concept="3oM_SD" id="2XPMm9goCr6" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goCr7" role="1PaTwD">
              <property role="3oM_SC" value="system" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goCr8" role="1PaTwD">
              <property role="3oM_SC" value="CL" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goCr9" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goCra" role="1PaTwD">
              <property role="3oM_SC" value="runMPS;" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goCrb" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goCrc" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goCrd" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goCre" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goCrf" role="1PaTwD">
              <property role="3oM_SC" value="forced" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goCrg" role="1PaTwD">
              <property role="3oM_SC" value="core" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goCrh" role="1PaTwD">
              <property role="3oM_SC" value="CL," />
            </node>
            <node concept="3oM_SD" id="2XPMm9goCri" role="1PaTwD">
              <property role="3oM_SC" value="optional" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goCrj" role="1PaTwD">
              <property role="3oM_SC" value="core" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goCrk" role="1PaTwD">
              <property role="3oM_SC" value="content" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goCrl" role="1PaTwD">
              <property role="3oM_SC" value="modules" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goCrm" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goCrn" role="1PaTwD">
              <property role="3oM_SC" value="class" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goCro" role="1PaTwD">
              <property role="3oM_SC" value="loaders" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goCrp" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goCrq" role="1PaTwD">
              <property role="3oM_SC" value="see" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goCrr" role="1PaTwD">
              <property role="3oM_SC" value="their" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goCrs" role="1PaTwD">
              <property role="3oM_SC" value="plugin" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goCrt" role="1PaTwD">
              <property role="3oM_SC" value="dependencies" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goCru" role="1PaTwD">
              <property role="3oM_SC" value="(MPS-40180)" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2XPMm9goCqS" role="3cqZAp">
          <node concept="3cpWsn" id="2XPMm9goCqR" role="3cpWs9">
            <property role="TrG5h" value="a3" />
            <node concept="3uibUv" id="2XPMm9goCqT" role="1tU5fm">
              <ref role="3uigEE" node="3ufQioQQsm3" resolve="Arg" />
            </node>
            <node concept="2ShNRf" id="2XPMm9goCrv" role="33vP2m">
              <node concept="1pGfFk" id="2XPMm9goCrO" role="2ShVmc">
                <ref role="37wK5l" node="1hBlbKBNftw" resolve="Arg" />
                <node concept="Xl_RD" id="2XPMm9goCrP" role="37wK5m">
                  <property role="Xl_RC" value="-Djava.system.class.loader=com.intellij.util.lang.PathClassLoader" />
                </node>
                <node concept="Xl_RD" id="2XPMm9goCrQ" role="37wK5m">
                  <property role="Xl_RC" value="-Djava.system.class.loader" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2XPMm9goCqY" role="3cqZAp">
          <node concept="3cpWsn" id="2XPMm9goCqX" role="3cpWs9">
            <property role="TrG5h" value="a4" />
            <node concept="3uibUv" id="2XPMm9goCqZ" role="1tU5fm">
              <ref role="3uigEE" node="3ufQioQQsm3" resolve="Arg" />
            </node>
            <node concept="2ShNRf" id="2XPMm9goCrR" role="33vP2m">
              <node concept="1pGfFk" id="2XPMm9goCsc" role="2ShVmc">
                <ref role="37wK5l" node="1hBlbKBNftw" resolve="Arg" />
                <node concept="Xl_RD" id="2XPMm9goCsd" role="37wK5m">
                  <property role="Xl_RC" value="-Didea.force.use.core.classloader=false" />
                </node>
                <node concept="Xl_RD" id="2XPMm9goCse" role="37wK5m">
                  <property role="Xl_RC" value="-Didea.force.use.core.classloader" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2XPMm9goKuZ" role="3cqZAp">
          <node concept="1rXfSq" id="2XPMm9goKv0" role="3clFbG">
            <ref role="37wK5l" node="3ufQioQQtns" resolve="addConfiguredJvmArgs" />
            <node concept="2ShNRf" id="2XPMm9goKvk" role="37wK5m">
              <node concept="1pGfFk" id="2XPMm9goKvv" role="2ShVmc">
                <ref role="37wK5l" node="1hBlbKBX2QW" resolve="JvmArgs" />
                <node concept="3clFbT" id="2XPMm9goKvw" role="37wK5m" />
                <node concept="37vLTw" id="2XPMm9goKvx" role="37wK5m">
                  <ref role="3cqZAo" node="2o55QbnHB7J" resolve="a2" />
                </node>
                <node concept="37vLTw" id="2XPMm9goKvy" role="37wK5m">
                  <ref role="3cqZAo" node="2XPMm9goCqR" resolve="a3" />
                </node>
                <node concept="37vLTw" id="2XPMm9goKvz" role="37wK5m">
                  <ref role="3cqZAo" node="2XPMm9goCqX" resolve="a4" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="75eqTYkrI0w" role="jymVt" />
    <node concept="3clFb_" id="75eqTYkrAbA" role="jymVt">
      <property role="TrG5h" value="setProject" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="75eqTYkrAbB" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="75eqTYkrAbC" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="75eqTYkrAbD" role="3clF47">
        <node concept="3cpWs8" id="3vL64MrujqL" role="3cqZAp">
          <node concept="3cpWsn" id="3vL64MrujqM" role="3cpWs9">
            <property role="TrG5h" value="file" />
            <node concept="3uibUv" id="3vL64Mrui$m" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="3vL64MrujqN" role="33vP2m">
              <node concept="1pGfFk" id="3vL64MrujqO" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                <node concept="37vLTw" id="3vL64MrujqP" role="37wK5m">
                  <ref role="3cqZAo" node="75eqTYkrAbB" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3vL64Mruh2e" role="3cqZAp">
          <node concept="3clFbS" id="3vL64Mruh2g" role="3clFbx">
            <node concept="3clFbF" id="75eqTYkrAbE" role="3cqZAp">
              <node concept="2OqwBi" id="75eqTYkrHVB" role="3clFbG">
                <node concept="37vLTw" id="75eqTYkrHVA" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ufQioQQtje" resolve="myWhatToDo" />
                </node>
                <node concept="liA8E" id="75eqTYkrHVC" role="2OqNvi">
                  <ref role="37wK5l" to="asz6:KL8Aql8eqX" resolve="addProjectFile" />
                  <node concept="37vLTw" id="3vL64MrujqQ" role="37wK5m">
                    <ref role="3cqZAo" node="3vL64MrujqM" resolve="file" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="3vL64Mruier" role="3clFbw">
            <ref role="37wK5l" node="3vL64MrtJjH" resolve="checkProperProjectDir" />
            <node concept="37vLTw" id="3vL64Mrunp6" role="37wK5m">
              <ref role="3cqZAo" node="3vL64MrujqM" resolve="file" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="75eqTYkrAbI" role="1B3o_S" />
      <node concept="3cqZAl" id="75eqTYkrAbJ" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3vL64MrqLKr" role="jymVt" />
    <node concept="3clFb_" id="3vL64MrqPjM" role="jymVt">
      <property role="TrG5h" value="addConfigured" />
      <node concept="3clFbS" id="3vL64MrqPjP" role="3clF47">
        <node concept="3clFbJ" id="3vL64Mru9aO" role="3cqZAp">
          <node concept="3clFbS" id="3vL64Mru9aQ" role="3clFbx">
            <node concept="3clFbF" id="3vL64MrqVms" role="3cqZAp">
              <node concept="2OqwBi" id="3vL64MrqWMh" role="3clFbG">
                <node concept="37vLTw" id="3vL64MrqVmr" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ufQioQQtje" resolve="myWhatToDo" />
                </node>
                <node concept="liA8E" id="3vL64MrqYqb" role="2OqNvi">
                  <ref role="37wK5l" to="asz6:KL8Aql8eqX" resolve="addProjectFile" />
                  <node concept="2OqwBi" id="3vL64Mrr0J9" role="37wK5m">
                    <node concept="37vLTw" id="3vL64MrqZw4" role="2Oq$k0">
                      <ref role="3cqZAo" node="3vL64MrqTBu" resolve="projectPath" />
                    </node>
                    <node concept="liA8E" id="3vL64Mrr2bz" role="2OqNvi">
                      <ref role="37wK5l" node="3vL64MrqKye" resolve="getPath" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="3vL64Mruan4" role="3clFbw">
            <ref role="37wK5l" node="3vL64MrtJjH" resolve="checkProperProjectDir" />
            <node concept="2OqwBi" id="3vL64MrubSy" role="37wK5m">
              <node concept="37vLTw" id="3vL64MrubSz" role="2Oq$k0">
                <ref role="3cqZAo" node="3vL64MrqTBu" resolve="projectPath" />
              </node>
              <node concept="liA8E" id="3vL64MrubS$" role="2OqNvi">
                <ref role="37wK5l" node="3vL64MrqKye" resolve="getPath" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3vL64MrqNBu" role="1B3o_S" />
      <node concept="3cqZAl" id="3vL64MrqNIx" role="3clF45" />
      <node concept="37vLTG" id="3vL64MrqTBu" role="3clF46">
        <property role="TrG5h" value="projectPath" />
        <node concept="3uibUv" id="3vL64MrqTBt" role="1tU5fm">
          <ref role="3uigEE" node="3vL64MrqJPF" resolve="ProjectPath" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3vL64Mrrc5v" role="jymVt" />
    <node concept="3clFb_" id="3vL64Mrrf0$" role="jymVt">
      <property role="TrG5h" value="addConfigured" />
      <node concept="3cqZAl" id="3vL64Mrrf0A" role="3clF45" />
      <node concept="3Tm1VV" id="3vL64Mrrf0B" role="1B3o_S" />
      <node concept="3clFbS" id="3vL64Mrrf0C" role="3clF47">
        <node concept="1DcWWT" id="3vL64Mrrvg6" role="3cqZAp">
          <node concept="3clFbS" id="3vL64Mrrvg8" role="2LFqv$">
            <node concept="3clFbJ" id="3vL64MrrBPY" role="3cqZAp">
              <node concept="3clFbS" id="3vL64MrrBQ0" role="3clFbx">
                <node concept="3cpWs8" id="3vL64MrsAVa" role="3cqZAp">
                  <node concept="3cpWsn" id="3vL64MrsAVb" role="3cpWs9">
                    <property role="TrG5h" value="dir" />
                    <node concept="3uibUv" id="3vL64Mrs_S3" role="1tU5fm">
                      <ref role="3uigEE" to="guwi:~File" resolve="File" />
                    </node>
                    <node concept="2OqwBi" id="3vL64MrsAVc" role="33vP2m">
                      <node concept="1eOMI4" id="3vL64MrsAVd" role="2Oq$k0">
                        <node concept="10QFUN" id="3vL64MrsAVe" role="1eOMHV">
                          <node concept="3uibUv" id="3vL64MrsAVf" role="10QFUM">
                            <ref role="3uigEE" to="67b4:~FileProvider" resolve="FileProvider" />
                          </node>
                          <node concept="37vLTw" id="3vL64MrsAVg" role="10QFUP">
                            <ref role="3cqZAo" node="3vL64Mrrvg9" resolve="res" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="3vL64MrsAVh" role="2OqNvi">
                        <ref role="37wK5l" to="67b4:~FileProvider.getFile()" resolve="getFile" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="3vL64MrsQsD" role="3cqZAp">
                  <node concept="3clFbS" id="3vL64MrsQsF" role="3clFbx">
                    <node concept="3clFbF" id="3vL64MrrNsP" role="3cqZAp">
                      <node concept="2OqwBi" id="3vL64MrrPdU" role="3clFbG">
                        <node concept="37vLTw" id="3vL64MrrNsN" role="2Oq$k0">
                          <ref role="3cqZAo" node="3ufQioQQtje" resolve="myWhatToDo" />
                        </node>
                        <node concept="liA8E" id="3vL64MrrQNk" role="2OqNvi">
                          <ref role="37wK5l" to="asz6:KL8Aql8eqX" resolve="addProjectFile" />
                          <node concept="37vLTw" id="3vL64MrsAVi" role="37wK5m">
                            <ref role="3cqZAo" node="3vL64MrsAVb" resolve="dir" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1rXfSq" id="3vL64Mru3KD" role="3clFbw">
                    <ref role="37wK5l" node="3vL64MrtJjH" resolve="checkProperProjectDir" />
                    <node concept="37vLTw" id="3vL64Mru4VB" role="37wK5m">
                      <ref role="3cqZAo" node="3vL64MrsAVb" resolve="dir" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="3vL64MrrYb9" role="3clFbw">
                <node concept="2ZW3vV" id="3vL64Mrs0mr" role="3uHU7w">
                  <node concept="3uibUv" id="3vL64Mrs1PP" role="2ZW6by">
                    <ref role="3uigEE" to="67b4:~FileProvider" resolve="FileProvider" />
                  </node>
                  <node concept="37vLTw" id="3vL64MrrZlr" role="2ZW6bz">
                    <ref role="3cqZAo" node="3vL64Mrrvg9" resolve="res" />
                  </node>
                </node>
                <node concept="1Wc70l" id="3vL64MrrHl1" role="3uHU7B">
                  <node concept="2OqwBi" id="3vL64MrrDTE" role="3uHU7B">
                    <node concept="37vLTw" id="3vL64MrrCUr" role="2Oq$k0">
                      <ref role="3cqZAo" node="3vL64Mrrvg9" resolve="res" />
                    </node>
                    <node concept="liA8E" id="3vL64MrrG5n" role="2OqNvi">
                      <ref role="37wK5l" to="rg95:~Resource.isDirectory()" resolve="isDirectory" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3vL64MrrJtF" role="3uHU7w">
                    <node concept="37vLTw" id="3vL64MrrIyj" role="2Oq$k0">
                      <ref role="3cqZAo" node="3vL64Mrrvg9" resolve="res" />
                    </node>
                    <node concept="liA8E" id="3vL64MrrLhk" role="2OqNvi">
                      <ref role="37wK5l" to="rg95:~Resource.isExists()" resolve="isExists" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="3vL64Mrsbom" role="9aQIa">
                <node concept="3clFbS" id="3vL64Mrsbon" role="9aQI4">
                  <node concept="3clFbF" id="3vL64MrsilT" role="3cqZAp">
                    <node concept="2OqwBi" id="3vL64MrsiZY" role="3clFbG">
                      <node concept="1rXfSq" id="3vL64MrsilS" role="2Oq$k0">
                        <ref role="37wK5l" to="gola:~ProjectComponent.getProject()" resolve="getProject" />
                      </node>
                      <node concept="liA8E" id="3vL64MrskM8" role="2OqNvi">
                        <ref role="37wK5l" to="gola:~Project.log(java.lang.String,int)" resolve="log" />
                        <node concept="2OqwBi" id="3vL64Mrsw1y" role="37wK5m">
                          <node concept="Xl_RD" id="3vL64MrslTP" role="2Oq$k0">
                            <property role="Xl_RC" value="Resource %s not recognized as a project directory" />
                          </node>
                          <node concept="2cAKMz" id="3vL64MrsxEM" role="2OqNvi">
                            <node concept="37vLTw" id="3vL64Mrsy$f" role="2cAKU6">
                              <ref role="3cqZAo" node="3vL64Mrrvg9" resolve="res" />
                            </node>
                          </node>
                        </node>
                        <node concept="10M0yZ" id="3vL64MrthVQ" role="37wK5m">
                          <ref role="3cqZAo" to="gola:~Project.MSG_INFO" resolve="MSG_INFO" />
                          <ref role="1PxDUh" to="gola:~Project" resolve="Project" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3vL64Mrrvg9" role="1Duv9x">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="3vL64MrryUP" role="1tU5fm">
              <ref role="3uigEE" to="rg95:~Resource" resolve="Resource" />
            </node>
          </node>
          <node concept="37vLTw" id="3vL64Mrrx7C" role="1DdaDG">
            <ref role="3cqZAo" node="3vL64MrriIq" resolve="projectDirs" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3vL64MrriIq" role="3clF46">
        <property role="TrG5h" value="projectDirs" />
        <node concept="3uibUv" id="3vL64MrriIp" role="1tU5fm">
          <ref role="3uigEE" to="rg95:~DirSet" resolve="DirSet" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3vL64MrtBKi" role="jymVt" />
    <node concept="3clFb_" id="3vL64MrtJjH" role="jymVt">
      <property role="TrG5h" value="checkProperProjectDir" />
      <node concept="10P_77" id="3vL64MrtXun" role="3clF45" />
      <node concept="3Tm6S6" id="3vL64MrtJjJ" role="1B3o_S" />
      <node concept="3clFbS" id="3vL64MrtJjM" role="3clF47">
        <node concept="3clFbJ" id="3vL64MrtO6Z" role="3cqZAp">
          <node concept="3clFbS" id="3vL64MrtO71" role="3clFbx">
            <node concept="3cpWs6" id="3vL64MrtQQ_" role="3cqZAp">
              <node concept="3clFbT" id="3vL64MrtS1k" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3vL64MrtPE8" role="3clFbw">
            <node concept="2ShNRf" id="3vL64MrtPE9" role="2Oq$k0">
              <node concept="1pGfFk" id="3vL64MrtPEa" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                <node concept="37vLTw" id="3vL64MrtPEb" role="37wK5m">
                  <ref role="3cqZAo" node="3vL64MrtMMg" resolve="dir" />
                </node>
                <node concept="Xl_RD" id="3vL64MrtPEc" role="37wK5m">
                  <property role="Xl_RC" value=".mps" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3vL64MrtPEd" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3vL64Mrtj8M" role="3cqZAp">
          <node concept="2OqwBi" id="3vL64Mrtj8N" role="3clFbG">
            <node concept="1rXfSq" id="3vL64Mrtj8O" role="2Oq$k0">
              <ref role="37wK5l" to="gola:~ProjectComponent.getProject()" resolve="getProject" />
            </node>
            <node concept="liA8E" id="3vL64Mrtj8P" role="2OqNvi">
              <ref role="37wK5l" to="gola:~Project.log(java.lang.String,int)" resolve="log" />
              <node concept="2OqwBi" id="3vL64Mrtj8Q" role="37wK5m">
                <node concept="Xl_RD" id="3vL64Mrtj8R" role="2Oq$k0">
                  <property role="Xl_RC" value="Not an MPS project: %s" />
                </node>
                <node concept="2cAKMz" id="3vL64Mrtj8S" role="2OqNvi">
                  <node concept="37vLTw" id="3vL64Mrtj8T" role="2cAKU6">
                    <ref role="3cqZAo" node="3vL64MrtMMg" resolve="dir" />
                  </node>
                </node>
              </node>
              <node concept="10M0yZ" id="3vL64MrtAAE" role="37wK5m">
                <ref role="3cqZAo" to="gola:~Project.MSG_WARN" resolve="MSG_WARN" />
                <ref role="1PxDUh" to="gola:~Project" resolve="Project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3vL64MrtUHG" role="3cqZAp">
          <node concept="3clFbT" id="3vL64MrtVT_" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="3vL64MrtMMg" role="3clF46">
        <property role="TrG5h" value="dir" />
        <node concept="3uibUv" id="3vL64MrtMMf" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="61n5glKlwLN" role="jymVt" />
    <node concept="3clFb_" id="61n5glKlv5M" role="jymVt">
      <property role="TrG5h" value="setHaltOnPrecheckFailure" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="61n5glKlv5N" role="3clF46">
        <property role="TrG5h" value="haltOnPrecheckFailure" />
        <property role="3TUv4t" value="false" />
        <node concept="10P_77" id="61n5glKlG6Z" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="61n5glKlv5P" role="3clF47">
        <node concept="3clFbF" id="3vL64MrnKTu" role="3cqZAp">
          <node concept="2OqwBi" id="3vL64MrnLvv" role="3clFbG">
            <node concept="37vLTw" id="3vL64MrnKTs" role="2Oq$k0">
              <ref role="3cqZAo" node="3vL64Mrnq8_" resolve="myProps" />
            </node>
            <node concept="liA8E" id="3vL64MrnMAV" role="2OqNvi">
              <ref role="37wK5l" to="asz6:3vL64MrnfIL" resolve="setPreCheckFailureHalt" />
              <node concept="37vLTw" id="3vL64MrnQwY" role="37wK5m">
                <ref role="3cqZAo" node="61n5glKlv5N" resolve="haltOnPrecheckFailure" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="61n5glKlv5X" role="1B3o_S" />
      <node concept="3cqZAl" id="61n5glKlv5Y" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5lLwtTopbso" role="jymVt" />
    <node concept="3clFb_" id="5lLwtTooXpW" role="jymVt">
      <property role="TrG5h" value="setHaltOnDependencyError" />
      <node concept="3cqZAl" id="25PDLb84aud" role="3clF45" />
      <node concept="3Tm1VV" id="5lLwtTooXpY" role="1B3o_S" />
      <node concept="3clFbS" id="5lLwtTooXpZ" role="3clF47">
        <node concept="3clFbF" id="5lLwtTopeHa" role="3cqZAp">
          <node concept="2OqwBi" id="5lLwtTopfUl" role="3clFbG">
            <node concept="37vLTw" id="5lLwtTopeH9" role="2Oq$k0">
              <ref role="3cqZAo" node="3vL64Mrnq8_" resolve="myProps" />
            </node>
            <node concept="liA8E" id="5lLwtToph85" role="2OqNvi">
              <ref role="37wK5l" to="asz6:5lLwtTooXpW" resolve="setHaltOnDependencyError" />
              <node concept="37vLTw" id="5lLwtTopikq" role="37wK5m">
                <ref role="3cqZAo" node="5lLwtTooXq9" resolve="haltOnDependencyError" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5lLwtTooXq9" role="3clF46">
        <property role="TrG5h" value="haltOnDependencyError" />
        <node concept="10P_77" id="5lLwtTooXqa" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="3vL64MrBvMn" role="jymVt" />
    <node concept="3clFb_" id="3vL64MrB$2o" role="jymVt">
      <property role="TrG5h" value="setMakeDistribModules" />
      <node concept="3clFbS" id="3vL64MrB$2r" role="3clF47">
        <node concept="3clFbF" id="3vL64MrBC6O" role="3cqZAp">
          <node concept="2OqwBi" id="3vL64MrBCS4" role="3clFbG">
            <node concept="37vLTw" id="3vL64MrBC6N" role="2Oq$k0">
              <ref role="3cqZAo" node="3vL64Mrnq8_" resolve="myProps" />
            </node>
            <node concept="liA8E" id="3vL64MrBEcp" role="2OqNvi">
              <ref role="37wK5l" to="asz6:3vL64MrATMR" resolve="setMakeDistribModules" />
              <node concept="37vLTw" id="3vL64MrBH9E" role="37wK5m">
                <ref role="3cqZAo" node="3vL64MrBAp2" resolve="makeDistrib" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3vL64MrBy6S" role="1B3o_S" />
      <node concept="3cqZAl" id="3vL64MrBzOq" role="3clF45" />
      <node concept="37vLTG" id="3vL64MrBAp2" role="3clF46">
        <property role="TrG5h" value="makeDistrib" />
        <node concept="10P_77" id="3vL64MrBAp1" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="3nVsxxCHEZQ" role="jymVt" />
    <node concept="3clFb_" id="3nVsxxCHD12" role="jymVt">
      <property role="TrG5h" value="setForce" />
      <node concept="3clFbS" id="3nVsxxCHD13" role="3clF47">
        <node concept="3clFbF" id="3nVsxxCHD14" role="3cqZAp">
          <node concept="2OqwBi" id="3nVsxxCHD15" role="3clFbG">
            <node concept="37vLTw" id="3nVsxxCHD16" role="2Oq$k0">
              <ref role="3cqZAo" node="3vL64Mrnq8_" resolve="myProps" />
            </node>
            <node concept="liA8E" id="3nVsxxCHD17" role="2OqNvi">
              <ref role="37wK5l" to="asz6:3nVsxxCHJRc" resolve="setForceFlag" />
              <node concept="37vLTw" id="3nVsxxCHD18" role="37wK5m">
                <ref role="3cqZAo" node="3nVsxxCHD1b" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3nVsxxCHD19" role="1B3o_S" />
      <node concept="3cqZAl" id="3nVsxxCHD1a" role="3clF45" />
      <node concept="37vLTG" id="3nVsxxCHD1b" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="10P_77" id="3nVsxxCHD1c" role="1tU5fm" />
      </node>
      <node concept="P$JXv" id="3nVsxxCIg3f" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs_sd" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_se" role="1PaTwD">
            <property role="3oM_SC" value="force" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_sf" role="1PaTwD">
            <property role="3oM_SC" value="flag" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_sg" role="1PaTwD">
            <property role="3oM_SC" value="ignores" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_sh" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_si" role="1PaTwD">
            <property role="3oM_SC" value="marker" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_sj" role="1PaTwD">
            <property role="3oM_SC" value="files" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_sk" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_sl" role="1PaTwD">
            <property role="3oM_SC" value="projects" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_sm" role="1PaTwD">
            <property role="3oM_SC" value="which" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_sn" role="1PaTwD">
            <property role="3oM_SC" value="allow" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_so" role="1PaTwD">
            <property role="3oM_SC" value="pending" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_sp" role="1PaTwD">
            <property role="3oM_SC" value="migrations," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_sq" role="1PaTwD">
            <property role="3oM_SC" value="migrating" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_sr" role="1PaTwD">
            <property role="3oM_SC" value="them" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_ss" role="1PaTwD">
            <property role="3oM_SC" value="anyway" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="60oBoEdxLi" role="jymVt" />
    <node concept="3clFb_" id="7zEA_IIJ2No" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="execute" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="7zEA_IIJ2Np" role="1B3o_S" />
      <node concept="3cqZAl" id="7zEA_IIJ2Nq" role="3clF45" />
      <node concept="2AHcQZ" id="7zEA_IIJ2U3" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3uibUv" id="7zEA_IIJ2U4" role="Sfmx6">
        <ref role="3uigEE" to="gola:~BuildException" resolve="BuildException" />
      </node>
      <node concept="3clFbS" id="7zEA_IIJ8Ol" role="3clF47">
        <node concept="3cpWs8" id="3vL64Mrvkz6" role="3cqZAp">
          <node concept="3cpWsn" id="3vL64Mrvkz7" role="3cpWs9">
            <property role="TrG5h" value="propFile" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="3vL64MrvjyY" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="3vL64Mrvkz8" role="33vP2m">
              <node concept="1pGfFk" id="3vL64Mrvkz9" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                <node concept="2OqwBi" id="3vL64Mrvkza" role="37wK5m">
                  <node concept="1rXfSq" id="3vL64Mrvkzb" role="2Oq$k0">
                    <ref role="37wK5l" to="gola:~ProjectComponent.getProject()" resolve="getProject" />
                  </node>
                  <node concept="liA8E" id="3vL64Mrvkzc" role="2OqNvi">
                    <ref role="37wK5l" to="gola:~Project.getBaseDir()" resolve="getBaseDir" />
                  </node>
                </node>
                <node concept="Xl_RD" id="3vL64Mrvkzd" role="37wK5m">
                  <property role="Xl_RC" value="migration_result.properties" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3vL64Mrw8mS" role="3cqZAp">
          <node concept="2OqwBi" id="3vL64Mrw9cK" role="3clFbG">
            <node concept="37vLTw" id="3vL64Mrw8mQ" role="2Oq$k0">
              <ref role="3cqZAo" node="3vL64Mrvkz7" resolve="propFile" />
            </node>
            <node concept="liA8E" id="3vL64Mrwb2J" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~File.deleteOnExit()" resolve="deleteOnExit" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3vL64Mrv_qJ" role="3cqZAp">
          <node concept="3cpWsn" id="3vL64Mrv_qK" role="3cpWs9">
            <property role="TrG5h" value="errCodeKey" />
            <property role="3TUv4t" value="true" />
            <node concept="17QB3L" id="3vL64Mrv$$z" role="1tU5fm" />
            <node concept="Xl_RD" id="3vL64Mrv_qL" role="33vP2m">
              <property role="Xl_RC" value="mps.migration.errcode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3vL64Mrv1Bk" role="3cqZAp">
          <node concept="2OqwBi" id="3vL64MrvsJJ" role="3clFbG">
            <node concept="2OqwBi" id="3vL64Mrv2Z9" role="2Oq$k0">
              <node concept="37vLTw" id="3vL64Mrv1Bi" role="2Oq$k0">
                <ref role="3cqZAo" node="3vL64Mrnq8_" resolve="myProps" />
              </node>
              <node concept="liA8E" id="3vL64Mrv4_z" role="2OqNvi">
                <ref role="37wK5l" to="asz6:3vL64Mruv9h" resolve="setOutputPropertyFile" />
                <node concept="37vLTw" id="3vL64Mrvkze" role="37wK5m">
                  <ref role="3cqZAo" node="3vL64Mrvkz7" resolve="propFile" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3vL64Mrvu07" role="2OqNvi">
              <ref role="37wK5l" to="asz6:3vL64MruPjf" resolve="setOutputPropertyErrorKey" />
              <node concept="37vLTw" id="3vL64Mrv_qM" role="37wK5m">
                <ref role="3cqZAo" node="3vL64Mrv_qK" resolve="errCodeKey" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="dd5YedZUpG" role="3cqZAp" />
        <node concept="3clFbF" id="7zEA_IIJ8On" role="3cqZAp">
          <node concept="3nyPlj" id="7zEA_IIJ8Om" role="3clFbG">
            <ref role="37wK5l" node="3ufQioQQtnL" resolve="execute" />
          </node>
        </node>
        <node concept="3cpWs8" id="7zEA_IIJcyk" role="3cqZAp">
          <node concept="3cpWsn" id="7zEA_IIJcyl" role="3cpWs9">
            <property role="TrG5h" value="p" />
            <node concept="3uibUv" id="7zEA_IIJcym" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Properties" resolve="Properties" />
            </node>
            <node concept="2ShNRf" id="7zEA_IIJcCs" role="33vP2m">
              <node concept="1pGfFk" id="7zEA_IIJcBZ" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~Properties.&lt;init&gt;()" resolve="Properties" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="3vL64MrvK7$" role="3cqZAp">
          <node concept="3uVAMA" id="3vL64Mrw1zI" role="1zxBo5">
            <node concept="XOnhg" id="3vL64Mrw1zJ" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="3vL64Mrw1zK" role="1tU5fm">
                <node concept="3uibUv" id="3vL64Mrw2Me" role="nSUat">
                  <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="3vL64Mrw1zL" role="1zc67A">
              <node concept="YS8fn" id="7zEA_IIJsN1" role="3cqZAp">
                <node concept="2ShNRf" id="7zEA_IIJsQM" role="YScLw">
                  <node concept="1pGfFk" id="7zEA_IIJt9B" role="2ShVmc">
                    <ref role="37wK5l" to="gola:~BuildException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="BuildException" />
                    <node concept="3cpWs3" id="7zEA_IIJuFg" role="37wK5m">
                      <node concept="37vLTw" id="7zEA_IIJv3Y" role="3uHU7w">
                        <ref role="3cqZAo" node="3vL64Mrvkz7" resolve="propFile" />
                      </node>
                      <node concept="Xl_RD" id="7zEA_IIJte2" role="3uHU7B">
                        <property role="Xl_RC" value="can't read task output from " />
                      </node>
                    </node>
                    <node concept="37vLTw" id="7zEA_IIJvLg" role="37wK5m">
                      <ref role="3cqZAo" node="3vL64Mrw1zJ" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3vL64MrvK7A" role="1zxBo7">
            <node concept="3clFbF" id="7zEA_IIJcIg" role="3cqZAp">
              <node concept="2OqwBi" id="7zEA_IIJcTl" role="3clFbG">
                <node concept="37vLTw" id="7zEA_IIJcIe" role="2Oq$k0">
                  <ref role="3cqZAo" node="7zEA_IIJcyl" resolve="p" />
                </node>
                <node concept="liA8E" id="7zEA_IIJddb" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Properties.load(java.io.InputStream)" resolve="load" />
                  <node concept="37vLTw" id="7zEA_IIJw5Z" role="37wK5m">
                    <ref role="3cqZAo" node="3vL64MrvK7B" resolve="fis" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3J1hQo" id="3vL64MrvK7B" role="3J1_TS">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="fis" />
            <node concept="3uibUv" id="3vL64MrvO64" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~FileInputStream" resolve="FileInputStream" />
            </node>
            <node concept="2ShNRf" id="3vL64MrvRYe" role="33vP2m">
              <node concept="1pGfFk" id="3vL64MrvV0I" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="guwi:~FileInputStream.&lt;init&gt;(java.io.File)" resolve="FileInputStream" />
                <node concept="37vLTw" id="3vL64MrvWit" role="37wK5m">
                  <ref role="3cqZAo" node="3vL64Mrvkz7" resolve="propFile" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7zEA_IIJxsW" role="3cqZAp">
          <node concept="3clFbS" id="7zEA_IIJxsY" role="3clFbx">
            <node concept="YS8fn" id="7zEA_IIJEK3" role="3cqZAp">
              <node concept="2ShNRf" id="7zEA_IIJEOC" role="YScLw">
                <node concept="1pGfFk" id="7zEA_IIJFnF" role="2ShVmc">
                  <ref role="37wK5l" to="gola:~BuildException.&lt;init&gt;(java.lang.String)" resolve="BuildException" />
                  <node concept="Xl_RD" id="6pL2ddWIZD5" role="37wK5m">
                    <property role="Xl_RC" value="Migration was not executed. See log for details." />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="17QLQc" id="7zEA_IIJDVn" role="3clFbw">
            <node concept="Xl_RD" id="7zEA_IIJEuB" role="3uHU7w">
              <property role="Xl_RC" value="0" />
            </node>
            <node concept="2OqwBi" id="7zEA_IIJxW5" role="3uHU7B">
              <node concept="37vLTw" id="7zEA_IIJx$0" role="2Oq$k0">
                <ref role="3cqZAo" node="7zEA_IIJcyl" resolve="p" />
              </node>
              <node concept="liA8E" id="7zEA_IIJyzf" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Properties.getProperty(java.lang.String)" resolve="getProperty" />
                <node concept="37vLTw" id="7zEA_IIJBUG" role="37wK5m">
                  <ref role="3cqZAo" node="3vL64Mrv_qK" resolve="errCodeKey" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7zEA_IIJarc" role="jymVt" />
    <node concept="3clFb_" id="1oo0A63FYV0" role="jymVt">
      <property role="TrG5h" value="calculateClassPath" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="1oo0A63FYV1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="1oo0A63FYV2" role="3clF46">
        <property role="TrG5h" value="fork" />
        <property role="3TUv4t" value="false" />
        <node concept="10P_77" id="1oo0A63FYV3" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1oo0A63FYV4" role="3clF47">
        <node concept="3cpWs8" id="1oo0A63FYVj" role="3cqZAp">
          <node concept="3cpWsn" id="1oo0A63FYVi" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="classPath" />
            <node concept="3uibUv" id="1oo0A63FYVk" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="1oo0A63FYVl" role="11_B2D">
                <ref role="3uigEE" to="guwi:~File" resolve="File" />
              </node>
            </node>
            <node concept="2ShNRf" id="1oo0A63FYWh" role="33vP2m">
              <node concept="1pGfFk" id="1oo0A63FYWi" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~LinkedHashSet.&lt;init&gt;(java.util.Collection)" resolve="LinkedHashSet" />
                <node concept="3uibUv" id="1oo0A63FYVn" role="1pMfVU">
                  <ref role="3uigEE" to="guwi:~File" resolve="File" />
                </node>
                <node concept="3nyPlj" id="gQDJKN7gHJ" role="37wK5m">
                  <ref role="37wK5l" node="3ufQioQQtwU" resolve="calculateClassPath" />
                  <node concept="37vLTw" id="gQDJKN7jJ5" role="37wK5m">
                    <ref role="3cqZAo" node="1oo0A63FYV2" resolve="fork" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="gQDJKN7Jl6" role="3cqZAp" />
        <node concept="3cpWs8" id="1oo0A63GPjg" role="3cqZAp">
          <node concept="3cpWsn" id="1oo0A63GPjh" role="3cpWs9">
            <property role="TrG5h" value="mpsHome" />
            <node concept="1rXfSq" id="4OPNMy26ZGv" role="33vP2m">
              <ref role="37wK5l" node="4OPNMy25ZUO" resolve="getMpsHome_Checked" />
            </node>
            <node concept="3uibUv" id="gQDJKN7uul" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="gQDJKN8T6V" role="3cqZAp" />
        <node concept="3SKdUt" id="gQDJKN7NYH" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo8hh" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo8hi" role="1PaTwD">
              <property role="3oM_SC" value="j.m.build.migration.jar" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hj" role="1PaTwD">
              <property role="3oM_SC" value="hosts" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hk" role="1PaTwD">
              <property role="3oM_SC" value="MigrationWorker" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Szs9BHE4HO" role="3cqZAp">
          <node concept="1rXfSq" id="4Szs9BHE4HN" role="3clFbG">
            <ref role="37wK5l" node="4Szs9BHE4HH" resolve="addClassPath" />
            <node concept="37vLTw" id="4Szs9BHE4HK" role="37wK5m">
              <ref role="3cqZAo" node="1oo0A63FYVi" resolve="classPath" />
            </node>
            <node concept="37vLTw" id="4Szs9BHE4HL" role="37wK5m">
              <ref role="3cqZAo" node="1oo0A63GPjh" resolve="mpsHome" />
            </node>
            <node concept="Xl_RD" id="4Szs9BHEb4N" role="37wK5m">
              <property role="Xl_RC" value="/plugins/mps-build/languages/build/jetbrains.mps.build.migration.jar" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4OPNMy2aJR7" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo8hl" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo8hm" role="1PaTwD">
              <property role="3oM_SC" value="note," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hn" role="1PaTwD">
              <property role="3oM_SC" value="unlike" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8ho" role="1PaTwD">
              <property role="3oM_SC" value="migration" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hp" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hq" role="1PaTwD">
              <property role="3oM_SC" value="modelchecker" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hr" role="1PaTwD">
              <property role="3oM_SC" value="plugins," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hs" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8ht" role="1PaTwD">
              <property role="3oM_SC" value="intentionally" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hu" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hv" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hw" role="1PaTwD">
              <property role="3oM_SC" value="add" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hx" role="1PaTwD">
              <property role="3oM_SC" value="mps-build" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hy" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hz" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8h$" role="1PaTwD">
              <property role="3oM_SC" value="plugin" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8h_" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hA" role="1PaTwD">
              <property role="3oM_SC" value="myWhatToDo" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4OPNMy2aT6c" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo8hB" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo8hC" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hD" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hE" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hF" role="1PaTwD">
              <property role="3oM_SC" value="purpose" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hG" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hH" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hI" role="1PaTwD">
              <property role="3oM_SC" value="jar" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hJ" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hK" role="1PaTwD">
              <property role="3oM_SC" value="classpath" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hL" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hM" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hN" role="1PaTwD">
              <property role="3oM_SC" value="load" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hO" role="1PaTwD">
              <property role="3oM_SC" value="MigrationWorker" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hP" role="1PaTwD">
              <property role="3oM_SC" value="class." />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hQ" role="1PaTwD">
              <property role="3oM_SC" value="Indeed," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hR" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hS" role="1PaTwD">
              <property role="3oM_SC" value="&quot;all" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hT" role="1PaTwD">
              <property role="3oM_SC" value="plugins" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hU" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hV" role="1PaTwD">
              <property role="3oM_SC" value="global" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hW" role="1PaTwD">
              <property role="3oM_SC" value="classpath&quot;" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4OPNMy2b1Uw" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo8hX" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo8hY" role="1PaTwD">
              <property role="3oM_SC" value="approach," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8hZ" role="1PaTwD">
              <property role="3oM_SC" value="adding" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8i0" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8i1" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8i2" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8i3" role="1PaTwD">
              <property role="3oM_SC" value="plugin" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8i4" role="1PaTwD">
              <property role="3oM_SC" value="would" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8i5" role="1PaTwD">
              <property role="3oM_SC" value="work," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8i6" role="1PaTwD">
              <property role="3oM_SC" value="but," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8i7" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8i8" role="1PaTwD">
              <property role="3oM_SC" value="one," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8i9" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8ia" role="1PaTwD">
              <property role="3oM_SC" value="intend" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8ib" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8ic" role="1PaTwD">
              <property role="3oM_SC" value="change" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8id" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8ie" role="1PaTwD">
              <property role="3oM_SC" value="approach," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8if" role="1PaTwD">
              <property role="3oM_SC" value="and," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8ig" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8ih" role="1PaTwD">
              <property role="3oM_SC" value="two," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8ii" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8ij" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8ik" role="1PaTwD">
              <property role="3oM_SC" value="think" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8il" role="1PaTwD">
              <property role="3oM_SC" value="complete" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4OPNMy2b7Hp" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo8im" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo8in" role="1PaTwD">
              <property role="3oM_SC" value="mps-build" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8io" role="1PaTwD">
              <property role="3oM_SC" value="plugin" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8ip" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8iq" role="1PaTwD">
              <property role="3oM_SC" value="always" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8ir" role="1PaTwD">
              <property role="3oM_SC" value="necessary." />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8is" role="1PaTwD">
              <property role="3oM_SC" value="Last" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8it" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8iu" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8iv" role="1PaTwD">
              <property role="3oM_SC" value="least," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8iw" role="1PaTwD">
              <property role="3oM_SC" value="j.m.build.migration" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8ix" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8iy" role="1PaTwD">
              <property role="3oM_SC" value="presents" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8iz" role="1PaTwD">
              <property role="3oM_SC" value="itself" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8i$" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8i_" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8iA" role="1PaTwD">
              <property role="3oM_SC" value="regular" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8iB" role="1PaTwD">
              <property role="3oM_SC" value="ModuleClassLoader-backed" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8iC" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4OPNMy2bg7r" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo8iD" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo8iE" role="1PaTwD">
              <property role="3oM_SC" value="although" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8iF" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8iG" role="1PaTwD">
              <property role="3oM_SC" value="fact" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8iH" role="1PaTwD">
              <property role="3oM_SC" value="it's" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8iI" role="1PaTwD">
              <property role="3oM_SC" value="pure" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8iJ" role="1PaTwD">
              <property role="3oM_SC" value="java" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8iK" role="1PaTwD">
              <property role="3oM_SC" value="&quot;get" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8iL" role="1PaTwD">
              <property role="3oM_SC" value="me" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8iM" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8iN" role="1PaTwD">
              <property role="3oM_SC" value="global" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8iO" role="1PaTwD">
              <property role="3oM_SC" value="cp&quot;" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8iP" role="1PaTwD">
              <property role="3oM_SC" value="class." />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4Szs9BHEcxV" role="3cqZAp" />
        <node concept="3cpWs6" id="1oo0A63FYVB" role="3cqZAp">
          <node concept="37vLTw" id="1oo0A63FYVC" role="3cqZAk">
            <ref role="3cqZAo" node="1oo0A63FYVi" resolve="classPath" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="1oo0A63FYVD" role="1B3o_S" />
      <node concept="3uibUv" id="1oo0A63FYVE" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="1oo0A63FYVF" role="11_B2D">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6cKQ1Xt_umU" role="jymVt" />
    <node concept="3clFb_" id="4Szs9BHE4HH" role="jymVt">
      <property role="TrG5h" value="addClassPath" />
      <node concept="3Tm6S6" id="4Szs9BHE4HI" role="1B3o_S" />
      <node concept="3cqZAl" id="4Szs9BHE4HJ" role="3clF45" />
      <node concept="37vLTG" id="4Szs9BHE45v" role="3clF46">
        <property role="TrG5h" value="classPath" />
        <node concept="3uibUv" id="4Szs9BHE45w" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="3uibUv" id="4Szs9BHE45x" role="11_B2D">
            <ref role="3uigEE" to="guwi:~File" resolve="File" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4Szs9BHE45y" role="3clF46">
        <property role="TrG5h" value="mpsHome" />
        <node concept="3uibUv" id="gQDJKN7_ah" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="37vLTG" id="4Szs9BHE45$" role="3clF46">
        <property role="TrG5h" value="relativePath" />
        <node concept="17QB3L" id="4Szs9BHE45_" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4Szs9BHE45l" role="3clF47">
        <node concept="3cpWs8" id="4Szs9BHEe3j" role="3cqZAp">
          <node concept="3cpWsn" id="4Szs9BHEe3k" role="3cpWs9">
            <property role="TrG5h" value="cp" />
            <node concept="3uibUv" id="4Szs9BHEe3h" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="4Szs9BHEe3l" role="33vP2m">
              <node concept="1pGfFk" id="4Szs9BHEe3m" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                <node concept="37vLTw" id="4Szs9BHEe3o" role="37wK5m">
                  <ref role="3cqZAo" node="4Szs9BHE45y" resolve="mpsHome" />
                </node>
                <node concept="37vLTw" id="gQDJKN7BoM" role="37wK5m">
                  <ref role="3cqZAo" node="4Szs9BHE45$" resolve="relativePath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="4Szs9BHEfgw" role="3cqZAp">
          <node concept="2OqwBi" id="4Szs9BHEfuy" role="1gVkn0">
            <node concept="37vLTw" id="4Szs9BHEfkb" role="2Oq$k0">
              <ref role="3cqZAo" node="4Szs9BHEe3k" resolve="cp" />
            </node>
            <node concept="liA8E" id="4Szs9BHEfDI" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
            </node>
          </node>
          <node concept="3cpWs3" id="4Szs9BHEgJX" role="1gVpfI">
            <node concept="2OqwBi" id="4Szs9BHEgU4" role="3uHU7w">
              <node concept="37vLTw" id="4Szs9BHEgKA" role="2Oq$k0">
                <ref role="3cqZAo" node="4Szs9BHEe3k" resolve="cp" />
              </node>
              <node concept="liA8E" id="4Szs9BHEh4C" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
              </node>
            </node>
            <node concept="Xl_RD" id="4Szs9BHEghP" role="3uHU7B">
              <property role="Xl_RC" value="requested file does not exist: " />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Szs9BHE45m" role="3cqZAp">
          <node concept="2OqwBi" id="4Szs9BHE45n" role="3clFbG">
            <node concept="37vLTw" id="4Szs9BHE4HD" role="2Oq$k0">
              <ref role="3cqZAo" node="4Szs9BHE45v" resolve="classPath" />
            </node>
            <node concept="liA8E" id="4Szs9BHE45p" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="4Szs9BHEe3q" role="37wK5m">
                <ref role="3cqZAo" node="4Szs9BHEe3k" resolve="cp" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1TP$JLLo6fv">
    <property role="TrG5h" value="RepositoryDataType" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <property role="3GE5qa" value="repo" />
    <node concept="312cEg" id="6aGZllYQxFF" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myDescriptor" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="6aGZllYQxEN" role="1B3o_S" />
      <node concept="3uibUv" id="1O4zZOk7aGy" role="1tU5fm">
        <ref role="3uigEE" to="asz6:6aGZllYQgzH" resolve="RepositoryDescriptor" />
      </node>
      <node concept="2ShNRf" id="6aGZllYQxGZ" role="33vP2m">
        <node concept="HV5vD" id="6aGZllYQxWM" role="2ShVmc">
          <ref role="HV5vE" to="asz6:6aGZllYQgzH" resolve="RepositoryDescriptor" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1TP$JLLo6fw" role="1B3o_S" />
    <node concept="3uibUv" id="1TP$JLLo6fx" role="1zkMxy">
      <ref role="3uigEE" to="rg95:~DataType" resolve="DataType" />
    </node>
    <node concept="3clFbW" id="6aGZllYPRmc" role="jymVt">
      <node concept="3cqZAl" id="6aGZllYPRmd" role="3clF45" />
      <node concept="3Tm1VV" id="6aGZllYPRme" role="1B3o_S" />
      <node concept="3clFbS" id="6aGZllYPRmg" role="3clF47" />
    </node>
    <node concept="3clFb_" id="6aGZllYQz29" role="jymVt">
      <property role="TrG5h" value="getDescriptor" />
      <node concept="3uibUv" id="1O4zZOk7bbI" role="3clF45">
        <ref role="3uigEE" to="asz6:6aGZllYQgzH" resolve="RepositoryDescriptor" />
      </node>
      <node concept="3Tm1VV" id="6aGZllYQz2b" role="1B3o_S" />
      <node concept="3clFbS" id="6aGZllYQz2c" role="3clF47">
        <node concept="3clFbF" id="6aGZllYQz2d" role="3cqZAp">
          <node concept="37vLTw" id="6aGZllYQz28" role="3clFbG">
            <ref role="3cqZAo" node="6aGZllYQxFF" resolve="myDescriptor" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6aGZllYQgxg" role="jymVt">
      <property role="TrG5h" value="addConfiguredModules" />
      <node concept="3cqZAl" id="6aGZllYQgxh" role="3clF45" />
      <node concept="3Tm1VV" id="6aGZllYQgxi" role="1B3o_S" />
      <node concept="3clFbS" id="6aGZllYQgxj" role="3clF47">
        <node concept="3clFbF" id="6aGZllYQzwN" role="3cqZAp">
          <node concept="2OqwBi" id="6aGZllYQ$8V" role="3clFbG">
            <node concept="2OqwBi" id="6aGZllYQzDv" role="2Oq$k0">
              <node concept="37vLTw" id="6aGZllYQzwM" role="2Oq$k0">
                <ref role="3cqZAo" node="6aGZllYQxFF" resolve="myDescriptor" />
              </node>
              <node concept="2OwXpG" id="1O4zZOk7bQ2" role="2OqNvi">
                <ref role="2Oxat5" to="asz6:6aGZllYQuUJ" resolve="folders" />
              </node>
            </node>
            <node concept="liA8E" id="6aGZllYQ$$b" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
              <node concept="2OqwBi" id="6aGZllYQA7L" role="37wK5m">
                <node concept="2OqwBi" id="6aGZllYQ_gP" role="2Oq$k0">
                  <node concept="37vLTw" id="6aGZllYQ$U$" role="2Oq$k0">
                    <ref role="3cqZAo" node="6aGZllYQz$8" resolve="folder" />
                  </node>
                  <node concept="liA8E" id="6aGZllYQ_U_" role="2OqNvi">
                    <ref role="37wK5l" node="1TP$JLLo6rv" resolve="getDir" />
                  </node>
                </node>
                <node concept="liA8E" id="6aGZllYQAPH" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6aGZllYQz$8" role="3clF46">
        <property role="TrG5h" value="folder" />
        <node concept="3uibUv" id="6aGZllYQz$7" role="1tU5fm">
          <ref role="3uigEE" node="1TP$JLLo6rl" resolve="ModulesDataType" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6aGZllYQgyh" role="jymVt">
      <property role="TrG5h" value="addConfiguredModule" />
      <node concept="3cqZAl" id="6aGZllYQgyi" role="3clF45" />
      <node concept="3Tm1VV" id="6aGZllYQgyj" role="1B3o_S" />
      <node concept="3clFbS" id="6aGZllYQgyk" role="3clF47">
        <node concept="3clFbF" id="6aGZllYQBEO" role="3cqZAp">
          <node concept="2OqwBi" id="6aGZllYQBEP" role="3clFbG">
            <node concept="2OqwBi" id="6aGZllYQBEQ" role="2Oq$k0">
              <node concept="37vLTw" id="6aGZllYQBER" role="2Oq$k0">
                <ref role="3cqZAo" node="6aGZllYQxFF" resolve="myDescriptor" />
              </node>
              <node concept="2OwXpG" id="6aGZllYQBES" role="2OqNvi">
                <ref role="2Oxat5" to="asz6:6aGZllYQuUJ" resolve="folders" />
              </node>
            </node>
            <node concept="liA8E" id="6aGZllYQBET" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
              <node concept="2OqwBi" id="6aGZllYQBEU" role="37wK5m">
                <node concept="2OqwBi" id="6aGZllYQBEV" role="2Oq$k0">
                  <node concept="37vLTw" id="6aGZllYQCfC" role="2Oq$k0">
                    <ref role="3cqZAo" node="6aGZllYQC35" resolve="module" />
                  </node>
                  <node concept="liA8E" id="6aGZllYQBEX" role="2OqNvi">
                    <ref role="37wK5l" node="1TP$JLLo6Bl" resolve="getFile" />
                  </node>
                </node>
                <node concept="liA8E" id="6aGZllYQBEY" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6aGZllYQC35" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="6aGZllYQC34" role="1tU5fm">
          <ref role="3uigEE" node="1TP$JLLo6Bb" resolve="ModuleDataType" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1TP$JLLo6rl">
    <property role="TrG5h" value="ModulesDataType" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <property role="3GE5qa" value="repo" />
    <node concept="3Tm1VV" id="1TP$JLLo6rm" role="1B3o_S" />
    <node concept="3uibUv" id="1TP$JLLo6rn" role="1zkMxy">
      <ref role="3uigEE" to="rg95:~DataType" resolve="DataType" />
    </node>
    <node concept="312cEg" id="1TP$JLLo6ro" role="jymVt">
      <property role="TrG5h" value="myDir" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="1TP$JLLo6rp" role="1tU5fm">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
      <node concept="3Tm6S6" id="1TP$JLLo6rq" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="1TP$JLLo6rr" role="jymVt">
      <node concept="3Tm1VV" id="1TP$JLLo6rs" role="1B3o_S" />
      <node concept="3cqZAl" id="1TP$JLLo6rt" role="3clF45" />
      <node concept="3clFbS" id="1TP$JLLo6ru" role="3clF47" />
    </node>
    <node concept="3clFb_" id="1TP$JLLo6rv" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDir" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="1TP$JLLo6rw" role="1B3o_S" />
      <node concept="3uibUv" id="1TP$JLLo6rx" role="3clF45">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
      <node concept="3clFbS" id="1TP$JLLo6ry" role="3clF47">
        <node concept="3cpWs6" id="1TP$JLLo6rz" role="3cqZAp">
          <node concept="37vLTw" id="1TP$JLLo6r$" role="3cqZAk">
            <ref role="3cqZAo" node="1TP$JLLo6ro" resolve="myDir" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1TP$JLLo6r_" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setDir" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="1TP$JLLo6rA" role="1B3o_S" />
      <node concept="3cqZAl" id="1TP$JLLo6rB" role="3clF45" />
      <node concept="37vLTG" id="1TP$JLLo6rC" role="3clF46">
        <property role="TrG5h" value="dir" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="1TP$JLLo6rD" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3clFbS" id="1TP$JLLo6rE" role="3clF47">
        <node concept="1gVbGN" id="1TP$JLLo6rF" role="3cqZAp">
          <node concept="3fqX7Q" id="6aGZllYPRE3" role="1gVkn0">
            <node concept="2OqwBi" id="6aGZllYPRE4" role="3fr31v">
              <node concept="37vLTw" id="6aGZllYPRE5" role="2Oq$k0">
                <ref role="3cqZAo" node="1TP$JLLo6rC" resolve="dir" />
              </node>
              <node concept="liA8E" id="6aGZllYPRE6" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.isFile()" resolve="isFile" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="1TP$JLLo6rM" role="1gVpfI">
            <property role="Xl_RC" value="Only directories are supported" />
          </node>
        </node>
        <node concept="3clFbF" id="1TP$JLLo6rN" role="3cqZAp">
          <node concept="37vLTI" id="1TP$JLLo6rO" role="3clFbG">
            <node concept="37vLTw" id="1TP$JLLo6rP" role="37vLTJ">
              <ref role="3cqZAo" node="1TP$JLLo6ro" resolve="myDir" />
            </node>
            <node concept="37vLTw" id="1TP$JLLo6rQ" role="37vLTx">
              <ref role="3cqZAo" node="1TP$JLLo6rC" resolve="dir" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1TP$JLLo6Bb">
    <property role="TrG5h" value="ModuleDataType" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <property role="3GE5qa" value="repo" />
    <node concept="3Tm1VV" id="1TP$JLLo6Bc" role="1B3o_S" />
    <node concept="3uibUv" id="1TP$JLLo6Bd" role="1zkMxy">
      <ref role="3uigEE" to="rg95:~DataType" resolve="DataType" />
    </node>
    <node concept="312cEg" id="1TP$JLLo6Be" role="jymVt">
      <property role="TrG5h" value="myFile" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="1TP$JLLo6Bf" role="1tU5fm">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
      <node concept="3Tm6S6" id="1TP$JLLo6Bg" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="1TP$JLLo6Bh" role="jymVt">
      <node concept="3Tm1VV" id="1TP$JLLo6Bi" role="1B3o_S" />
      <node concept="3cqZAl" id="1TP$JLLo6Bj" role="3clF45" />
      <node concept="3clFbS" id="1TP$JLLo6Bk" role="3clF47" />
    </node>
    <node concept="3clFb_" id="1TP$JLLo6Bl" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getFile" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="1TP$JLLo6Bm" role="1B3o_S" />
      <node concept="3uibUv" id="1TP$JLLo6Bn" role="3clF45">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
      <node concept="3clFbS" id="1TP$JLLo6Bo" role="3clF47">
        <node concept="3cpWs6" id="1TP$JLLo6Bp" role="3cqZAp">
          <node concept="37vLTw" id="1TP$JLLo6Bq" role="3cqZAk">
            <ref role="3cqZAo" node="1TP$JLLo6Be" resolve="myFile" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1TP$JLLo6Br" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setFile" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="1TP$JLLo6Bs" role="1B3o_S" />
      <node concept="3cqZAl" id="1TP$JLLo6Bt" role="3clF45" />
      <node concept="37vLTG" id="1TP$JLLo6Bu" role="3clF46">
        <property role="TrG5h" value="file" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="1TP$JLLo6Bv" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3clFbS" id="1TP$JLLo6Bw" role="3clF47">
        <node concept="3SKdUt" id="6aGZllYQ1gm" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo8iS" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo8iT" role="1PaTwD">
              <property role="3oM_SC" value="todo" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8iU" role="1PaTwD">
              <property role="3oM_SC" value="remove" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8iV" role="1PaTwD">
              <property role="3oM_SC" value="duplication" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8iW" role="1PaTwD">
              <property role="3oM_SC" value="here," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8iX" role="1PaTwD">
              <property role="3oM_SC" value="note" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8iY" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8iZ" role="1PaTwD">
              <property role="3oM_SC" value="classloader" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8j0" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8j1" role="1PaTwD">
              <property role="3oM_SC" value="doesn't" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8j2" role="1PaTwD">
              <property role="3oM_SC" value="contain" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8j3" role="1PaTwD">
              <property role="3oM_SC" value="MPSFileTypeFactory" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8j4" role="1PaTwD">
              <property role="3oM_SC" value="[use" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8j5" role="1PaTwD">
              <property role="3oM_SC" value="proposed" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8j6" role="1PaTwD">
              <property role="3oM_SC" value="inlineConstants" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8j7" role="1PaTwD">
              <property role="3oM_SC" value="language" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8j8" role="1PaTwD">
              <property role="3oM_SC" value="when" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8j9" role="1PaTwD">
              <property role="3oM_SC" value="it's" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo8ja" role="1PaTwD">
              <property role="3oM_SC" value="implemented]" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6aGZllYQ2lE" role="3cqZAp">
          <node concept="3cpWsn" id="6aGZllYQ2lK" role="3cpWs9">
            <property role="TrG5h" value="allowedExt" />
            <node concept="10Q1$e" id="6aGZllYQ2lM" role="1tU5fm">
              <node concept="3uibUv" id="6aGZllYQ2lO" role="10Q1$1">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2BsdOp" id="6aGZllYQ2qQ" role="33vP2m">
              <node concept="Xl_RD" id="6aGZllYQ2sd" role="2BsfMF">
                <property role="Xl_RC" value="jar" />
              </node>
              <node concept="Xl_RD" id="6aGZllYQ2x3" role="2BsfMF">
                <property role="Xl_RC" value="mpl" />
              </node>
              <node concept="Xl_RD" id="6aGZllYQ2_d" role="2BsfMF">
                <property role="Xl_RC" value="msd" />
              </node>
              <node concept="Xl_RD" id="6aGZllYQ2Cj" role="2BsfMF">
                <property role="Xl_RC" value="devkit" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6aGZllYQ2L_" role="3cqZAp">
          <node concept="3cpWsn" id="6aGZllYQ2LC" role="3cpWs9">
            <property role="TrG5h" value="extOk" />
            <node concept="10P_77" id="6aGZllYQ2Lz" role="1tU5fm" />
            <node concept="3clFbT" id="6aGZllYQb$d" role="33vP2m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="6aGZllYQc1l" role="3cqZAp">
          <node concept="3clFbS" id="6aGZllYQc1n" role="2LFqv$">
            <node concept="3clFbF" id="6aGZllYQdx7" role="3cqZAp">
              <node concept="3vZ8r8" id="6aGZllYQdWe" role="3clFbG">
                <node concept="37vLTw" id="6aGZllYQdx5" role="37vLTJ">
                  <ref role="3cqZAo" node="6aGZllYQ2LC" resolve="extOk" />
                </node>
                <node concept="2OqwBi" id="6aGZllYQd4q" role="37vLTx">
                  <node concept="2OqwBi" id="6aGZllYQcQD" role="2Oq$k0">
                    <node concept="37vLTw" id="6aGZllYQcIi" role="2Oq$k0">
                      <ref role="3cqZAo" node="1TP$JLLo6Bu" resolve="file" />
                    </node>
                    <node concept="liA8E" id="6aGZllYQcVm" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~File.getName()" resolve="getName" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6aGZllYQda7" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                    <node concept="3cpWs3" id="6aGZllYQdj7" role="37wK5m">
                      <node concept="37vLTw" id="6aGZllYQdlY" role="3uHU7w">
                        <ref role="3cqZAo" node="6aGZllYQc1o" resolve="ext" />
                      </node>
                      <node concept="Xl_RD" id="6aGZllYQdch" role="3uHU7B">
                        <property role="Xl_RC" value="." />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6aGZllYQc1o" role="1Duv9x">
            <property role="TrG5h" value="ext" />
            <node concept="3uibUv" id="6aGZllYQcd9" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
          <node concept="37vLTw" id="6aGZllYQcu5" role="1DdaDG">
            <ref role="3cqZAo" node="6aGZllYQ2lK" resolve="allowedExt" />
          </node>
        </node>
        <node concept="1gVbGN" id="1TP$JLLo6Bx" role="3cqZAp">
          <node concept="37vLTw" id="6aGZllYQekY" role="1gVkn0">
            <ref role="3cqZAo" node="6aGZllYQ2LC" resolve="extOk" />
          </node>
          <node concept="3cpWs3" id="6aGZllYQeFs" role="1gVpfI">
            <node concept="Xl_RD" id="6aGZllYQeqi" role="3uHU7w">
              <property role="Xl_RC" value=" files are supported" />
            </node>
            <node concept="3cpWs3" id="6aGZllYQeqa" role="3uHU7B">
              <node concept="Xl_RD" id="6aGZllYQeqg" role="3uHU7B">
                <property role="Xl_RC" value="Only " />
              </node>
              <node concept="37vLTw" id="6aGZllYQePh" role="3uHU7w">
                <ref role="3cqZAo" node="6aGZllYQ2lK" resolve="allowedExt" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1TP$JLLo6BD" role="3cqZAp">
          <node concept="37vLTI" id="1TP$JLLo6BE" role="3clFbG">
            <node concept="37vLTw" id="1TP$JLLo6BF" role="37vLTJ">
              <ref role="3cqZAo" node="1TP$JLLo6Be" resolve="myFile" />
            </node>
            <node concept="37vLTw" id="1TP$JLLo6BG" role="37vLTx">
              <ref role="3cqZAo" node="1TP$JLLo6Bu" resolve="file" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="QkG2t1bwWL">
    <property role="TrG5h" value="Plugin" />
    <node concept="312cEg" id="3djbh3AQ_st" role="jymVt">
      <property role="TrG5h" value="myPath" />
      <node concept="3Tm6S6" id="3djbh3AQ_oo" role="1B3o_S" />
      <node concept="17QB3L" id="3djbh3AQ_sl" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="3djbh3AQ_wq" role="jymVt">
      <property role="TrG5h" value="myId" />
      <node concept="3Tm6S6" id="3djbh3AQ_wr" role="1B3o_S" />
      <node concept="17QB3L" id="3djbh3AQ_ws" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="3djbh3AQ_Bt" role="jymVt" />
    <node concept="3clFbW" id="QkG2t1bxb6" role="jymVt">
      <node concept="3cqZAl" id="QkG2t1bxb7" role="3clF45" />
      <node concept="3Tm1VV" id="QkG2t1bxb8" role="1B3o_S" />
      <node concept="3clFbS" id="QkG2t1bxb9" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="3djbh3AQu2i" role="jymVt" />
    <node concept="3clFb_" id="QkG2t1bxba" role="jymVt">
      <property role="TrG5h" value="setPath" />
      <node concept="3cqZAl" id="QkG2t1bxbb" role="3clF45" />
      <node concept="3Tm1VV" id="QkG2t1bxbc" role="1B3o_S" />
      <node concept="3clFbS" id="QkG2t1bxbd" role="3clF47">
        <node concept="3clFbF" id="r$A3E5vX5o" role="3cqZAp">
          <node concept="37vLTI" id="r$A3E5vXrM" role="3clFbG">
            <node concept="37vLTw" id="3djbh3AQ_F9" role="37vLTJ">
              <ref role="3cqZAo" node="3djbh3AQ_st" resolve="myPath" />
            </node>
            <node concept="2OqwBi" id="r$A3E5vX_J" role="37vLTx">
              <node concept="37vLTw" id="r$A3E5vXtV" role="2Oq$k0">
                <ref role="3cqZAo" node="QkG2t1byP5" resolve="dir" />
              </node>
              <node concept="liA8E" id="r$A3E5vXOz" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="QkG2t1byP5" role="3clF46">
        <property role="TrG5h" value="dir" />
        <node concept="3uibUv" id="QkG2t1byP6" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3djbh3AQu2j" role="jymVt" />
    <node concept="3Tm1VV" id="QkG2t1bwWM" role="1B3o_S" />
    <node concept="3uibUv" id="QkG2t1bwWN" role="1zkMxy">
      <ref role="3uigEE" to="rg95:~DataType" resolve="DataType" />
    </node>
    <node concept="3clFb_" id="r$A3E5qP5D" role="jymVt">
      <property role="TrG5h" value="setId" />
      <node concept="3cqZAl" id="r$A3E5qP5E" role="3clF45" />
      <node concept="3Tm1VV" id="r$A3E5qP5F" role="1B3o_S" />
      <node concept="3clFbS" id="r$A3E5qP5G" role="3clF47">
        <node concept="3clFbF" id="r$A3E5qP5H" role="3cqZAp">
          <node concept="37vLTI" id="r$A3E5qP5I" role="3clFbG">
            <node concept="37vLTw" id="3djbh3AQ_Lt" role="37vLTJ">
              <ref role="3cqZAo" node="3djbh3AQ_wq" resolve="myId" />
            </node>
            <node concept="37vLTw" id="r$A3E5qP5J" role="37vLTx">
              <ref role="3cqZAo" node="r$A3E5qP5K" resolve="id" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="r$A3E5qP5K" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="3uibUv" id="r$A3E5qP5L" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3djbh3AQu2k" role="jymVt" />
    <node concept="3clFb_" id="r$A3E5vYGp" role="jymVt">
      <property role="TrG5h" value="getDescriptor" />
      <node concept="3uibUv" id="r$A3E5vYGq" role="3clF45">
        <ref role="3uigEE" to="asz6:r$A3E5vV_o" resolve="PluginData" />
      </node>
      <node concept="3Tm1VV" id="r$A3E5vYGr" role="1B3o_S" />
      <node concept="3clFbS" id="r$A3E5vYGs" role="3clF47">
        <node concept="3clFbF" id="r$A3E5vYGt" role="3cqZAp">
          <node concept="2ShNRf" id="3djbh3AQ_Vc" role="3clFbG">
            <node concept="1pGfFk" id="3djbh3AQBsb" role="2ShVmc">
              <ref role="37wK5l" to="asz6:4OPNMy23eT$" resolve="PluginData" />
              <node concept="37vLTw" id="3djbh3AQBsV" role="37wK5m">
                <ref role="3cqZAo" node="3djbh3AQ_st" resolve="myPath" />
              </node>
              <node concept="37vLTw" id="3djbh3AQBM7" role="37wK5m">
                <ref role="3cqZAo" node="3djbh3AQ_wq" resolve="myId" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3vL64MrqJPF">
    <property role="TrG5h" value="ProjectPath" />
    <node concept="312cEg" id="3vL64MrqK3J" role="jymVt">
      <property role="TrG5h" value="myProjectDir" />
      <node concept="3Tm6S6" id="3vL64MrqK1Q" role="1B3o_S" />
      <node concept="3uibUv" id="3vL64MrqK3c" role="1tU5fm">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
    </node>
    <node concept="2tJIrI" id="3vL64MrqK4r" role="jymVt" />
    <node concept="3clFbW" id="3vL64MrqK02" role="jymVt">
      <node concept="3cqZAl" id="3vL64MrqK03" role="3clF45" />
      <node concept="3clFbS" id="3vL64MrqK05" role="3clF47" />
      <node concept="3Tm1VV" id="3vL64MrqJYw" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3vL64MrqK6p" role="jymVt" />
    <node concept="3clFb_" id="3vL64MrqK82" role="jymVt">
      <property role="TrG5h" value="setPath" />
      <node concept="3cqZAl" id="3vL64MrqK84" role="3clF45" />
      <node concept="3Tm1VV" id="3vL64MrqK85" role="1B3o_S" />
      <node concept="3clFbS" id="3vL64MrqK86" role="3clF47">
        <node concept="3clFbF" id="3vL64MrqKf0" role="3cqZAp">
          <node concept="37vLTI" id="3vL64MrqKo8" role="3clFbG">
            <node concept="37vLTw" id="3vL64MrqKr0" role="37vLTx">
              <ref role="3cqZAo" node="3vL64MrqKbu" resolve="dir" />
            </node>
            <node concept="37vLTw" id="3vL64MrqKeZ" role="37vLTJ">
              <ref role="3cqZAo" node="3vL64MrqK3J" resolve="myProjectDir" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3vL64MrqKbu" role="3clF46">
        <property role="TrG5h" value="dir" />
        <node concept="3uibUv" id="3vL64MrqKbt" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3vL64MrqKsM" role="jymVt" />
    <node concept="3clFb_" id="3vL64MrqKye" role="jymVt">
      <property role="TrG5h" value="getPath" />
      <node concept="3clFbS" id="3vL64MrqKyh" role="3clF47">
        <node concept="3clFbF" id="3vL64MrqKCS" role="3cqZAp">
          <node concept="37vLTw" id="3vL64MrqKCR" role="3clFbG">
            <ref role="3cqZAo" node="3vL64MrqK3J" resolve="myProjectDir" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3vL64MrqKvB" role="1B3o_S" />
      <node concept="3uibUv" id="3vL64MrqKxF" role="3clF45">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3vL64MrqJPG" role="1B3o_S" />
    <node concept="3uibUv" id="3vL64MrqJSS" role="1zkMxy">
      <ref role="3uigEE" to="rg95:~DataType" resolve="DataType" />
    </node>
  </node>
  <node concept="312cEu" id="g9$9d2$zV2">
    <property role="TrG5h" value="GeneratorSettings" />
    <property role="1EXbeo" value="true" />
    <node concept="312cEg" id="g9$9d2$GgA" role="jymVt">
      <property role="TrG5h" value="myIsStrict" />
      <node concept="3Tm6S6" id="g9$9d2$GcS" role="1B3o_S" />
      <node concept="10P_77" id="g9$9d2$Gg0" role="1tU5fm" />
      <node concept="3clFbT" id="g9$9d2$Gl3" role="33vP2m">
        <property role="3clFbU" value="true" />
      </node>
    </node>
    <node concept="312cEg" id="g9$9d2$GlM" role="jymVt">
      <property role="TrG5h" value="myIsInplace" />
      <node concept="3Tm6S6" id="g9$9d2$GlN" role="1B3o_S" />
      <node concept="10P_77" id="g9$9d2$GlO" role="1tU5fm" />
      <node concept="3clFbT" id="g9$9d2$GlP" role="33vP2m">
        <property role="3clFbU" value="true" />
      </node>
    </node>
    <node concept="312cEg" id="g9$9d2$Gpr" role="jymVt">
      <property role="TrG5h" value="myUseStatic" />
      <node concept="3Tm6S6" id="g9$9d2$Gps" role="1B3o_S" />
      <node concept="10P_77" id="g9$9d2$Gpt" role="1tU5fm" />
      <node concept="3clFbT" id="g9$9d2$Gpu" role="33vP2m">
        <property role="3clFbU" value="true" />
      </node>
    </node>
    <node concept="312cEg" id="g9$9d2$Gtz" role="jymVt">
      <property role="TrG5h" value="mySkipUnmodified" />
      <node concept="3Tm6S6" id="g9$9d2$Gt$" role="1B3o_S" />
      <node concept="10P_77" id="g9$9d2$Gt_" role="1tU5fm" />
      <node concept="3clFbT" id="g9$9d2$GtA" role="33vP2m" />
    </node>
    <node concept="312cEg" id="g9$9d2$GFv" role="jymVt">
      <property role="TrG5h" value="myWarnWrongChild" />
      <node concept="3Tm6S6" id="g9$9d2$GFw" role="1B3o_S" />
      <node concept="10P_77" id="g9$9d2$GFx" role="1tU5fm" />
      <node concept="3clFbT" id="g9$9d2$GFy" role="33vP2m">
        <property role="3clFbU" value="true" />
      </node>
    </node>
    <node concept="312cEg" id="g9$9d2$HbQ" role="jymVt">
      <property role="TrG5h" value="myThreadCount" />
      <node concept="3Tm6S6" id="g9$9d2$HbR" role="1B3o_S" />
      <node concept="10Oyi0" id="g9$9d2$Hff" role="1tU5fm" />
      <node concept="3cmrfG" id="g9$9d2$HGw" role="33vP2m">
        <property role="3cmrfH" value="4" />
      </node>
    </node>
    <node concept="312cEg" id="g9$9d2$HPE" role="jymVt">
      <property role="TrG5h" value="myMessageLevel" />
      <node concept="3Tm6S6" id="g9$9d2$HLB" role="1B3o_S" />
      <node concept="17QB3L" id="g9$9d2$HP4" role="1tU5fm" />
      <node concept="10Nm6u" id="g9$9d2_l7I" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="g9$9d2$H1C" role="jymVt" />
    <node concept="2tJIrI" id="g9$9d2$G7r" role="jymVt" />
    <node concept="3clFbW" id="g9$9d2$BM_" role="jymVt">
      <node concept="3cqZAl" id="g9$9d2$BMC" role="3clF45" />
      <node concept="3Tm1VV" id="g9$9d2$BMD" role="1B3o_S" />
      <node concept="3clFbS" id="g9$9d2$BME" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="g9$9d2$ABl" role="jymVt" />
    <node concept="3clFb_" id="g9$9d2$E3A" role="jymVt">
      <property role="TrG5h" value="setStrictMode" />
      <node concept="3cqZAl" id="g9$9d2$E3D" role="3clF45" />
      <node concept="3Tm1VV" id="g9$9d2$E3E" role="1B3o_S" />
      <node concept="3clFbS" id="g9$9d2$E3F" role="3clF47">
        <node concept="3clFbF" id="g9$9d2_kc5" role="3cqZAp">
          <node concept="37vLTI" id="g9$9d2_kus" role="3clFbG">
            <node concept="37vLTw" id="g9$9d2_kMU" role="37vLTx">
              <ref role="3cqZAo" node="g9$9d2$E7V" resolve="strictMode" />
            </node>
            <node concept="37vLTw" id="g9$9d2_kc4" role="37vLTJ">
              <ref role="3cqZAo" node="g9$9d2$GgA" resolve="myIsStrict" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="g9$9d2$E7V" role="3clF46">
        <property role="TrG5h" value="strictMode" />
        <node concept="10P_77" id="g9$9d2$E7U" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="g9$9d2$ErW" role="jymVt" />
    <node concept="3clFb_" id="g9$9d2$Edi" role="jymVt">
      <property role="TrG5h" value="setParallelThreads" />
      <node concept="3cqZAl" id="g9$9d2$Edj" role="3clF45" />
      <node concept="3Tm1VV" id="g9$9d2$Edk" role="1B3o_S" />
      <node concept="3clFbS" id="g9$9d2$Edl" role="3clF47">
        <node concept="3clFbJ" id="g9$9d2_sqN" role="3cqZAp">
          <node concept="3clFbS" id="g9$9d2_sqP" role="3clFbx">
            <node concept="YS8fn" id="g9$9d2_ukL" role="3cqZAp">
              <node concept="2ShNRf" id="g9$9d2_uvn" role="YScLw">
                <node concept="1pGfFk" id="g9$9d2_xnT" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="gola:~BuildException.&lt;init&gt;(java.lang.String)" resolve="BuildException" />
                  <node concept="2OqwBi" id="g9$9d2_$J1" role="37wK5m">
                    <node concept="Xl_RD" id="g9$9d2_xQ2" role="2Oq$k0">
                      <property role="Xl_RC" value="Thread count has to be positive, not %d" />
                    </node>
                    <node concept="2cAKMz" id="g9$9d2__gW" role="2OqNvi">
                      <node concept="37vLTw" id="g9$9d2_Ayz" role="2cAKU6">
                        <ref role="3cqZAo" node="g9$9d2$Edm" resolve="threadCount" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="g9$9d2_tRR" role="3clFbw">
            <node concept="3cmrfG" id="g9$9d2_tSa" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="37vLTw" id="g9$9d2_sAg" role="3uHU7B">
              <ref role="3cqZAo" node="g9$9d2$Edm" resolve="threadCount" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="g9$9d2_iGg" role="3cqZAp">
          <node concept="37vLTI" id="g9$9d2_jxP" role="3clFbG">
            <node concept="37vLTw" id="g9$9d2_jEn" role="37vLTx">
              <ref role="3cqZAo" node="g9$9d2$Edm" resolve="threadCount" />
            </node>
            <node concept="37vLTw" id="g9$9d2_iGf" role="37vLTJ">
              <ref role="3cqZAo" node="g9$9d2$HbQ" resolve="myThreadCount" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="g9$9d2$Edm" role="3clF46">
        <property role="TrG5h" value="threadCount" />
        <node concept="10Oyi0" id="g9$9d2$Enp" role="1tU5fm" />
      </node>
      <node concept="P$JXv" id="g9$9d2$Ete" role="lGtFl">
        <node concept="TUZQ0" id="g9$9d2$Eth" role="3nqlJM">
          <property role="TUZQ4" value="" />
          <node concept="zr_55" id="g9$9d2$Etj" role="zr_5Q">
            <ref role="zr_51" node="g9$9d2$Edm" resolve="threadCount" />
          </node>
          <node concept="1PaTwC" id="1E1X3WHs_st" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHs_su" role="1PaTwD">
              <property role="3oM_SC" value="1" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_sv" role="1PaTwD">
              <property role="3oM_SC" value="means" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_sw" role="1PaTwD">
              <property role="3oM_SC" value="parallel" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_sx" role="1PaTwD">
              <property role="3oM_SC" value="mode" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_sy" role="1PaTwD">
              <property role="3oM_SC" value="off" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="g9$9d2$Ec5" role="jymVt" />
    <node concept="3clFb_" id="g9$9d2$Exw" role="jymVt">
      <property role="TrG5h" value="setInplaceTransform" />
      <node concept="3cqZAl" id="g9$9d2$Exx" role="3clF45" />
      <node concept="3Tm1VV" id="g9$9d2$Exy" role="1B3o_S" />
      <node concept="3clFbS" id="g9$9d2$Exz" role="3clF47">
        <node concept="3clFbF" id="g9$9d2_hYM" role="3cqZAp">
          <node concept="37vLTI" id="g9$9d2_igB" role="3clFbG">
            <node concept="37vLTw" id="g9$9d2_iuE" role="37vLTx">
              <ref role="3cqZAo" node="g9$9d2$Ex$" resolve="inplace" />
            </node>
            <node concept="37vLTw" id="g9$9d2_hYL" role="37vLTJ">
              <ref role="3cqZAo" node="g9$9d2$GlM" resolve="myIsInplace" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="g9$9d2$Ex$" role="3clF46">
        <property role="TrG5h" value="inplace" />
        <node concept="10P_77" id="g9$9d2$Ex_" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="g9$9d2$EFO" role="jymVt" />
    <node concept="3clFb_" id="g9$9d2$EDW" role="jymVt">
      <property role="TrG5h" value="setCreateStaticRefs" />
      <node concept="3cqZAl" id="g9$9d2$EDX" role="3clF45" />
      <node concept="3Tm1VV" id="g9$9d2$EDY" role="1B3o_S" />
      <node concept="3clFbS" id="g9$9d2$EDZ" role="3clF47">
        <node concept="3clFbF" id="g9$9d2_hpo" role="3cqZAp">
          <node concept="37vLTI" id="g9$9d2_h$7" role="3clFbG">
            <node concept="37vLTw" id="g9$9d2_hLd" role="37vLTx">
              <ref role="3cqZAo" node="g9$9d2$EE0" resolve="useStaticRefs" />
            </node>
            <node concept="37vLTw" id="g9$9d2_hpn" role="37vLTJ">
              <ref role="3cqZAo" node="g9$9d2$Gpr" resolve="myUseStatic" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="g9$9d2$EE0" role="3clF46">
        <property role="TrG5h" value="useStaticRefs" />
        <node concept="10P_77" id="g9$9d2$EE1" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="g9$9d2$ENy" role="jymVt" />
    <node concept="3clFb_" id="g9$9d2$ELq" role="jymVt">
      <property role="TrG5h" value="setSkipUnmodifiedModels" />
      <node concept="3cqZAl" id="g9$9d2$ELr" role="3clF45" />
      <node concept="3Tm1VV" id="g9$9d2$ELs" role="1B3o_S" />
      <node concept="3clFbS" id="g9$9d2$ELt" role="3clF47">
        <node concept="3clFbF" id="g9$9d2_gIg" role="3cqZAp">
          <node concept="37vLTI" id="g9$9d2_gZv" role="3clFbG">
            <node concept="37vLTw" id="g9$9d2_hck" role="37vLTx">
              <ref role="3cqZAo" node="g9$9d2$ELu" resolve="skipUnmodifiedModels" />
            </node>
            <node concept="37vLTw" id="g9$9d2_gIf" role="37vLTJ">
              <ref role="3cqZAo" node="g9$9d2$Gtz" resolve="mySkipUnmodified" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="g9$9d2$ELu" role="3clF46">
        <property role="TrG5h" value="skipUnmodifiedModels" />
        <node concept="10P_77" id="g9$9d2$ELv" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="g9$9d2$FtT" role="jymVt" />
    <node concept="3clFb_" id="g9$9d2$Frx" role="jymVt">
      <property role="TrG5h" value="setWarnWrongChild" />
      <node concept="3cqZAl" id="g9$9d2$Fry" role="3clF45" />
      <node concept="3Tm1VV" id="g9$9d2$Frz" role="1B3o_S" />
      <node concept="3clFbS" id="g9$9d2$Fr$" role="3clF47">
        <node concept="3clFbF" id="g9$9d2_fKC" role="3cqZAp">
          <node concept="37vLTI" id="g9$9d2_g7x" role="3clFbG">
            <node concept="37vLTw" id="g9$9d2_gBm" role="37vLTx">
              <ref role="3cqZAo" node="g9$9d2$Fr_" resolve="showBadChildWarning" />
            </node>
            <node concept="37vLTw" id="g9$9d2_fKB" role="37vLTJ">
              <ref role="3cqZAo" node="g9$9d2$GFv" resolve="myWarnWrongChild" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="g9$9d2$Fr_" role="3clF46">
        <property role="TrG5h" value="showBadChildWarning" />
        <node concept="10P_77" id="g9$9d2$FrA" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="g9$9d2$FX3" role="jymVt" />
    <node concept="3clFb_" id="g9$9d2$FUp" role="jymVt">
      <property role="TrG5h" value="setMessageLevel" />
      <node concept="3cqZAl" id="g9$9d2$FUq" role="3clF45" />
      <node concept="3Tm1VV" id="g9$9d2$FUr" role="1B3o_S" />
      <node concept="3clFbS" id="g9$9d2$FUs" role="3clF47">
        <node concept="3clFbJ" id="3xrc37t1VB_" role="3cqZAp">
          <node concept="3clFbS" id="3xrc37t1VBB" role="3clFbx">
            <node concept="3clFbF" id="g9$9d2_b7z" role="3cqZAp">
              <node concept="37vLTI" id="g9$9d2_bww" role="3clFbG">
                <node concept="37vLTw" id="g9$9d2_b7x" role="37vLTJ">
                  <ref role="3cqZAo" node="g9$9d2$HPE" resolve="myMessageLevel" />
                </node>
                <node concept="2OqwBi" id="g9$9d2_aow" role="37vLTx">
                  <node concept="37vLTw" id="3xrc37t1HNq" role="2Oq$k0">
                    <ref role="3cqZAo" node="g9$9d2$FUt" resolve="level" />
                  </node>
                  <node concept="liA8E" id="g9$9d2_ayt" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.toLowerCase()" resolve="toLowerCase" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3xrc37t23zm" role="3cqZAp" />
          </node>
          <node concept="22lmx$" id="3xrc37t1ZFQ" role="3clFbw">
            <node concept="2OqwBi" id="3xrc37t21if" role="3uHU7w">
              <node concept="Xl_RD" id="3xrc37t205b" role="2Oq$k0">
                <property role="Xl_RC" value="warn" />
              </node>
              <node concept="liA8E" id="3xrc37t21ET" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                <node concept="37vLTw" id="3xrc37t221n" role="37wK5m">
                  <ref role="3cqZAo" node="g9$9d2$FUt" resolve="level" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3xrc37t1XET" role="3uHU7B">
              <node concept="Xl_RD" id="3xrc37t1VXw" role="2Oq$k0">
                <property role="Xl_RC" value="info" />
              </node>
              <node concept="liA8E" id="3xrc37t1Y2F" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                <node concept="37vLTw" id="3xrc37t1YMh" role="37wK5m">
                  <ref role="3cqZAo" node="g9$9d2$FUt" resolve="level" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="g9$9d2_dSo" role="3cqZAp">
          <node concept="1PaTwC" id="g9$9d2_dSp" role="1aUNEU">
            <node concept="3oM_SD" id="g9$9d2_dT1" role="1PaTwD">
              <property role="3oM_SC" value="recognize" />
            </node>
            <node concept="3oM_SD" id="g9$9d2_dZK" role="1PaTwD">
              <property role="3oM_SC" value="few" />
            </node>
            <node concept="3oM_SD" id="g9$9d2_fub" role="1PaTwD">
              <property role="3oM_SC" value="other" />
            </node>
            <node concept="3oM_SD" id="g9$9d2_fwL" role="1PaTwD">
              <property role="3oM_SC" value="values," />
            </node>
            <node concept="3oM_SD" id="g9$9d2_fxh" role="1PaTwD">
              <property role="3oM_SC" value="treat" />
            </node>
            <node concept="3oM_SD" id="g9$9d2_fyK" role="1PaTwD">
              <property role="3oM_SC" value="them" />
            </node>
            <node concept="3oM_SD" id="g9$9d2_fzi" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="g9$9d2_fzq" role="1PaTwD">
              <property role="3oM_SC" value="default," />
            </node>
            <node concept="3oM_SD" id="g9$9d2_fCz" role="1PaTwD">
              <property role="3oM_SC" value="errors-only" />
            </node>
            <node concept="3oM_SD" id="g9$9d2_fDz" role="1PaTwD">
              <property role="3oM_SC" value="settings" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="g9$9d2_cNG" role="3cqZAp">
          <node concept="3clFbS" id="g9$9d2_cNI" role="3clFbx">
            <node concept="3clFbF" id="g9$9d2_c2n" role="3cqZAp">
              <node concept="37vLTI" id="g9$9d2_cm0" role="3clFbG">
                <node concept="10Nm6u" id="g9$9d2_cvQ" role="37vLTx" />
                <node concept="37vLTw" id="g9$9d2_c2l" role="37vLTJ">
                  <ref role="3cqZAo" node="g9$9d2$HPE" resolve="myMessageLevel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="g9$9d2_eQZ" role="3clFbw">
            <node concept="22lmx$" id="g9$9d2_edF" role="3uHU7B">
              <node concept="2OqwBi" id="g9$9d2_dc9" role="3uHU7B">
                <node concept="Xl_RD" id="g9$9d2_dca" role="2Oq$k0">
                  <property role="Xl_RC" value="error" />
                </node>
                <node concept="liA8E" id="g9$9d2_dcb" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                  <node concept="37vLTw" id="g9$9d2_dcc" role="37wK5m">
                    <ref role="3cqZAo" node="g9$9d2$FUt" resolve="level" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="g9$9d2_erP" role="3uHU7w">
                <node concept="Xl_RD" id="g9$9d2_erQ" role="2Oq$k0">
                  <property role="Xl_RC" value="err" />
                </node>
                <node concept="liA8E" id="g9$9d2_erR" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                  <node concept="37vLTw" id="g9$9d2_erS" role="37wK5m">
                    <ref role="3cqZAo" node="g9$9d2$FUt" resolve="level" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="g9$9d2_f8P" role="3uHU7w">
              <node concept="Xl_RD" id="g9$9d2_f8Q" role="2Oq$k0">
                <property role="Xl_RC" value="default" />
              </node>
              <node concept="liA8E" id="g9$9d2_f8R" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                <node concept="37vLTw" id="g9$9d2_f8S" role="37wK5m">
                  <ref role="3cqZAo" node="g9$9d2$FUt" resolve="level" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3xrc37t1So_" role="3cqZAp">
          <node concept="1rXfSq" id="3xrc37t1Soz" role="3clFbG">
            <ref role="37wK5l" to="gola:~ProjectComponent.log(java.lang.String,int)" resolve="log" />
            <node concept="2OqwBi" id="3xrc37t2afo" role="37wK5m">
              <node concept="Xl_RD" id="3xrc37t24Sw" role="2Oq$k0">
                <property role="Xl_RC" value="Unknown message level '%s', ignored" />
              </node>
              <node concept="2cAKMz" id="3xrc37t2b5d" role="2OqNvi">
                <node concept="37vLTw" id="3xrc37t2bwU" role="2cAKU6">
                  <ref role="3cqZAo" node="g9$9d2$FUt" resolve="level" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="3xrc37t1Uzm" role="37wK5m">
              <ref role="1PxDUh" to="gola:~Project" resolve="Project" />
              <ref role="3cqZAo" to="gola:~Project.MSG_WARN" resolve="MSG_WARN" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="g9$9d2$FUt" role="3clF46">
        <property role="TrG5h" value="level" />
        <node concept="17QB3L" id="g9$9d2$G3f" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="g9$9d2$FRh" role="jymVt" />
    <node concept="3clFb_" id="g9$9d2_ls2" role="jymVt">
      <property role="TrG5h" value="feedInto" />
      <node concept="3cqZAl" id="g9$9d2_ls4" role="3clF45" />
      <node concept="3Tm1VV" id="g9$9d2_ls5" role="1B3o_S" />
      <node concept="3clFbS" id="g9$9d2_ls6" role="3clF47">
        <node concept="3SKdUt" id="g9$9d2BVAr" role="3cqZAp">
          <node concept="1PaTwC" id="g9$9d2BVAs" role="1aUNEU">
            <node concept="3oM_SD" id="g9$9d2BWfp" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="4H3$xfoEp6F" role="1PaTwD">
              <property role="3oM_SC" value="partial" />
            </node>
            <node concept="3oM_SD" id="4H3$xfoEp6G" role="1PaTwD">
              <property role="3oM_SC" value="overrides" />
            </node>
            <node concept="3oM_SD" id="4H3$xfoEp76" role="1PaTwD">
              <property role="3oM_SC" value="scenario" />
            </node>
            <node concept="3oM_SD" id="4H3$xfoEp8i" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="4H3$xfoEp6D" role="1PaTwD">
              <property role="3oM_SC" value="first" />
            </node>
            <node concept="3oM_SD" id="g9$9d2BWfQ" role="1PaTwD">
              <property role="3oM_SC" value="feed" />
            </node>
            <node concept="3oM_SD" id="g9$9d2BWgk" role="1PaTwD">
              <property role="3oM_SC" value="'base'" />
            </node>
            <node concept="3oM_SD" id="g9$9d2BWiU" role="1PaTwD">
              <property role="3oM_SC" value="settings," />
            </node>
            <node concept="3oM_SD" id="g9$9d2BWjP" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="g9$9d2BWkm" role="1PaTwD">
              <property role="3oM_SC" value="any," />
            </node>
            <node concept="3oM_SD" id="g9$9d2BWlj" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="g9$9d2BWlQ" role="1PaTwD">
              <property role="3oM_SC" value="override" />
            </node>
            <node concept="3oM_SD" id="g9$9d2BWmP" role="1PaTwD">
              <property role="3oM_SC" value="later" />
            </node>
            <node concept="3oM_SD" id="g9$9d2BWnq" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="g9$9d2BWn_" role="1PaTwD">
              <property role="3oM_SC" value="those" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4H3$xfoEp94" role="3cqZAp">
          <node concept="1PaTwC" id="4H3$xfoEp8J" role="1aUNEU">
            <node concept="3oM_SD" id="4H3$xfoEp8I" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="4H3$xfoEpFW" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="4H3$xfoEpGD" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="g9$9d2BWoB" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="g9$9d2BWpf" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="g9$9d2BWqj" role="1PaTwD">
              <property role="3oM_SC" value="instance." />
            </node>
            <node concept="3oM_SD" id="4H3$xfoEriS" role="1PaTwD">
              <property role="3oM_SC" value="Would" />
            </node>
            <node concept="3oM_SD" id="4H3$xfoErj$" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="4H3$xfoEriT" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="4H3$xfoEriU" role="1PaTwD">
              <property role="3oM_SC" value="account" />
            </node>
            <node concept="3oM_SD" id="4H3$xfoEriV" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="4H3$xfoEriW" role="1PaTwD">
              <property role="3oM_SC" value="changed" />
            </node>
            <node concept="3oM_SD" id="4H3$xfoEriX" role="1PaTwD">
              <property role="3oM_SC" value="values" />
            </node>
            <node concept="3oM_SD" id="4H3$xfoEriY" role="1PaTwD">
              <property role="3oM_SC" value="only," />
            </node>
            <node concept="3oM_SD" id="4H3$xfoErkb" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="4H3$xfoErkF" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="4H3$xfoErl4" role="1PaTwD">
              <property role="3oM_SC" value="reset" />
            </node>
            <node concept="3oM_SD" id="4H3$xfoErlu" role="1PaTwD">
              <property role="3oM_SC" value="anything" />
            </node>
            <node concept="3oM_SD" id="4H3$xfoErlL" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="4H3$xfoErm5" role="1PaTwD">
              <property role="3oM_SC" value="default." />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="g9$9d2BOCX" role="3cqZAp">
          <node concept="3clFbS" id="g9$9d2BOCZ" role="3clFbx">
            <node concept="3clFbF" id="g9$9d2BPVG" role="3cqZAp">
              <node concept="2OqwBi" id="g9$9d2BTP6" role="3clFbG">
                <node concept="1rXfSq" id="g9$9d2BR4r" role="2Oq$k0">
                  <ref role="37wK5l" to="rg95:~DataType.getCheckedRef(java.lang.Class,java.lang.String)" resolve="getCheckedRef" />
                  <node concept="3VsKOn" id="g9$9d2BRDA" role="37wK5m">
                    <ref role="3VsUkX" node="g9$9d2$zV2" resolve="GeneratorSettings" />
                  </node>
                  <node concept="1rXfSq" id="g9$9d2BTqe" role="37wK5m">
                    <ref role="37wK5l" to="rg95:~DataType.getDataTypeName()" resolve="getDataTypeName" />
                  </node>
                </node>
                <node concept="liA8E" id="g9$9d2BUAL" role="2OqNvi">
                  <ref role="37wK5l" node="g9$9d2_ls2" resolve="feedInto" />
                  <node concept="37vLTw" id="g9$9d2BUOO" role="37wK5m">
                    <ref role="3cqZAo" node="g9$9d2_mm$" resolve="gp" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4H3$xfoEzCq" role="3cqZAp" />
          </node>
          <node concept="1rXfSq" id="g9$9d2BPhH" role="3clFbw">
            <ref role="37wK5l" to="rg95:~DataType.isReference()" resolve="isReference" />
          </node>
        </node>
        <node concept="3clFbF" id="g9$9d2_FA$" role="3cqZAp">
          <node concept="2OqwBi" id="g9$9d2_ALb" role="3clFbG">
            <node concept="2OqwBi" id="2XB5puvnC0T" role="2Oq$k0">
              <node concept="2OqwBi" id="2XB5puvn8Ml" role="2Oq$k0">
                <node concept="37vLTw" id="2XB5puvn8eA" role="2Oq$k0">
                  <ref role="3cqZAo" node="g9$9d2_mm$" resolve="gp" />
                </node>
                <node concept="liA8E" id="2XB5puvn8Sw" role="2OqNvi">
                  <ref role="37wK5l" to="asz6:4Vsuddjh5i2" resolve="setStrictMode" />
                  <node concept="37vLTw" id="g9$9d2_oP6" role="37wK5m">
                    <ref role="3cqZAo" node="g9$9d2$GgA" resolve="myIsStrict" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2XB5puvnCaC" role="2OqNvi">
                <ref role="37wK5l" to="asz6:4Vsuddjh5iI" resolve="setParallelMode" />
                <node concept="3eOSWO" id="g9$9d2_rME" role="37wK5m">
                  <node concept="3cmrfG" id="g9$9d2_rMX" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="g9$9d2_q_f" role="3uHU7B">
                    <ref role="3cqZAo" node="g9$9d2$HbQ" resolve="myThreadCount" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="g9$9d2_CON" role="2OqNvi">
              <ref role="37wK5l" to="asz6:3Iy_$1rXPWW" resolve="setParallelThreads" />
              <node concept="37vLTw" id="g9$9d2_D77" role="37wK5m">
                <ref role="3cqZAo" node="g9$9d2$HbQ" resolve="myThreadCount" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="g9$9d2_oou" role="3cqZAp">
          <node concept="2OqwBi" id="6J7GhdRUIrK" role="3clFbG">
            <node concept="2OqwBi" id="3qD9ch0q$CW" role="2Oq$k0">
              <node concept="2OqwBi" id="2XB5puvnCF$" role="2Oq$k0">
                <node concept="liA8E" id="2XB5puvnCPt" role="2OqNvi">
                  <ref role="37wK5l" to="asz6:2XB5puvllhI" resolve="setInplaceTransform" />
                  <node concept="37vLTw" id="g9$9d2_pqP" role="37wK5m">
                    <ref role="3cqZAo" node="g9$9d2$GlM" resolve="myIsInplace" />
                  </node>
                </node>
                <node concept="37vLTw" id="g9$9d2_Ftr" role="2Oq$k0">
                  <ref role="3cqZAo" node="g9$9d2_mm$" resolve="gp" />
                </node>
              </node>
              <node concept="liA8E" id="3qD9ch0q$O_" role="2OqNvi">
                <ref role="37wK5l" to="asz6:3qD9ch0oVbz" resolve="setHideWarnings" />
                <node concept="3fqX7Q" id="g9$9d2_pYp" role="37wK5m">
                  <node concept="37vLTw" id="g9$9d2_pYr" role="3fr31v">
                    <ref role="3cqZAo" node="g9$9d2$GFv" resolve="myWarnWrongChild" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6J7GhdRUIG9" role="2OqNvi">
              <ref role="37wK5l" to="asz6:6J7GhdRTuSs" resolve="setCreateStaticRefs" />
              <node concept="37vLTw" id="g9$9d2_qbN" role="37wK5m">
                <ref role="3cqZAo" node="g9$9d2$Gpr" resolve="myUseStatic" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="g9$9d2_GSc" role="3cqZAp">
          <node concept="2OqwBi" id="g9$9d2_HeH" role="3clFbG">
            <node concept="2OqwBi" id="g9$9d2_J9w" role="2Oq$k0">
              <node concept="37vLTw" id="g9$9d2_GSa" role="2Oq$k0">
                <ref role="3cqZAo" node="g9$9d2_mm$" resolve="gp" />
              </node>
              <node concept="liA8E" id="g9$9d2_JGi" role="2OqNvi">
                <ref role="37wK5l" to="asz6:dVfA4aqZjs" resolve="setSkipUnmodifiedModels" />
                <node concept="37vLTw" id="g9$9d2_Ka4" role="37wK5m">
                  <ref role="3cqZAo" node="g9$9d2$Gtz" resolve="mySkipUnmodified" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="g9$9d2_H$h" role="2OqNvi">
              <ref role="37wK5l" to="asz6:3xrc37t0fTJ" resolve="setMessageLevel" />
              <node concept="37vLTw" id="g9$9d2_I29" role="37wK5m">
                <ref role="3cqZAo" node="g9$9d2$HPE" resolve="myMessageLevel" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="g9$9d2_mm$" role="3clF46">
        <property role="TrG5h" value="gp" />
        <node concept="3uibUv" id="g9$9d2_mmz" role="1tU5fm">
          <ref role="3uigEE" to="asz6:2XB5puvk9rk" resolve="GeneratorProperties" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="g9$9d2$Eci" role="jymVt" />
    <node concept="3Tm1VV" id="g9$9d2$zV3" role="1B3o_S" />
    <node concept="3uibUv" id="g9$9d2$ABd" role="1zkMxy">
      <ref role="3uigEE" to="rg95:~DataType" resolve="DataType" />
    </node>
    <node concept="3UR2Jj" id="g9$9d2$ABz" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHs_iT" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_iU" role="1PaTwD">
          <property role="3oM_SC" value="Ant" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_iV" role="1PaTwD">
          <property role="3oM_SC" value="data" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_iW" role="1PaTwD">
          <property role="3oM_SC" value="type" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_iX" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_iY" role="1PaTwD">
          <property role="3oM_SC" value="capture" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_iZ" role="1PaTwD">
          <property role="3oM_SC" value="settings" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_j0" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_j1" role="1PaTwD">
          <property role="3oM_SC" value="M2M" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_j2" role="1PaTwD">
          <property role="3oM_SC" value="transformations" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_j3" role="1PaTwD">
          <property role="3oM_SC" value="(e.g." />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_j4" role="1PaTwD">
          <property role="3oM_SC" value="part" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_j5" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHs_j6" role="1PaTwD">
          <node concept="1VuTSG" id="1E1X3WHs_j7" role="1Vtduc">
            <node concept="1PaTwC" id="1E1X3WHs_ja" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHs_jb" role="1PaTwD">
                <property role="3oM_SC" value="&lt;generate&gt;" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jc" role="1PaTwD">
          <property role="3oM_SC" value="task." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_jd" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_je" role="1PaTwD">
          <property role="3oM_SC" value="Unlike" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jf" role="1PaTwD">
          <property role="3oM_SC" value="[ant-mps-common].GeneratorProperties," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jg" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jh" role="1PaTwD">
          <property role="3oM_SC" value="Ant-bound" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_ji" role="1PaTwD">
          <property role="3oM_SC" value="integration" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jj" role="1PaTwD">
          <property role="3oM_SC" value="class," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jk" role="1PaTwD">
          <property role="3oM_SC" value="while" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jl" role="1PaTwD">
          <property role="3oM_SC" value="GeneratorProperties" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_jm" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_jn" role="1PaTwD">
          <property role="3oM_SC" value="are" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jo" role="1PaTwD">
          <property role="3oM_SC" value="about" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jp" role="1PaTwD">
          <property role="3oM_SC" value="serialization/de-serialization" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jq" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jr" role="1PaTwD">
          <property role="3oM_SC" value="these" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_js" role="1PaTwD">
          <property role="3oM_SC" value="values" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jt" role="1PaTwD">
          <property role="3oM_SC" value="into" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_ju" role="1PaTwD">
          <property role="3oM_SC" value="Script," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jv" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jw" role="1PaTwD">
          <property role="3oM_SC" value="pass" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jx" role="1PaTwD">
          <property role="3oM_SC" value="these" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jy" role="1PaTwD">
          <property role="3oM_SC" value="options" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jz" role="1PaTwD">
          <property role="3oM_SC" value="from" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_j$" role="1PaTwD">
          <property role="3oM_SC" value="Ant" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_j_" role="1PaTwD">
          <property role="3oM_SC" value="task" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_jA" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_jB" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jC" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jD" role="1PaTwD">
          <property role="3oM_SC" value="worker," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jE" role="1PaTwD">
          <property role="3oM_SC" value="generally" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jF" role="1PaTwD">
          <property role="3oM_SC" value="running" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jG" role="1PaTwD">
          <property role="3oM_SC" value="in" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jH" role="1PaTwD">
          <property role="3oM_SC" value="another" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jI" role="1PaTwD">
          <property role="3oM_SC" value="classpath." />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jJ" role="1PaTwD">
          <property role="3oM_SC" value="I" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jK" role="1PaTwD">
          <property role="3oM_SC" value="need" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jL" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jM" role="1PaTwD">
          <property role="3oM_SC" value="keep" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jN" role="1PaTwD">
          <property role="3oM_SC" value="GeneratorProperties" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jO" role="1PaTwD">
          <property role="3oM_SC" value="independent" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jP" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jQ" role="1PaTwD">
          <property role="3oM_SC" value="Ant," />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_jR" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_jS" role="1PaTwD">
          <property role="3oM_SC" value="hence" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jT" role="1PaTwD">
          <property role="3oM_SC" value="this" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jU" role="1PaTwD">
          <property role="3oM_SC" value="class," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jV" role="1PaTwD">
          <property role="3oM_SC" value="which" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jW" role="1PaTwD">
          <property role="3oM_SC" value="indeed" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jX" role="1PaTwD">
          <property role="3oM_SC" value="looks" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jY" role="1PaTwD">
          <property role="3oM_SC" value="quite" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_jZ" role="1PaTwD">
          <property role="3oM_SC" value="similar" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1nTn8MoVTec">
    <property role="TrG5h" value="MakeTask" />
    <property role="1EXbeo" value="true" />
    <property role="3GE5qa" value="make" />
    <node concept="312cEg" id="g9$9d2Capd" role="jymVt">
      <property role="TrG5h" value="mySettings" />
      <node concept="3Tm6S6" id="g9$9d2C9cN" role="1B3o_S" />
      <node concept="3uibUv" id="g9$9d2Camo" role="1tU5fm">
        <ref role="3uigEE" node="g9$9d2$zV2" resolve="GeneratorSettings" />
      </node>
    </node>
    <node concept="2tJIrI" id="1nTn8MoVVYh" role="jymVt" />
    <node concept="3clFbW" id="1nTn8MoVVZ6" role="jymVt">
      <node concept="3cqZAl" id="1nTn8MoVVZ8" role="3clF45" />
      <node concept="3Tm1VV" id="1nTn8MoVVZ9" role="1B3o_S" />
      <node concept="3clFbS" id="1nTn8MoVVZa" role="3clF47">
        <node concept="XkiVB" id="1nTn8MoVWf2" role="3cqZAp">
          <ref role="37wK5l" node="4vDU0BPxMGt" resolve="MpsLoadTask" />
          <node concept="Xl_RD" id="1nTn8MoVWgo" role="37wK5m">
            <property role="Xl_RC" value="jetbrains.mps.tool.builder.CoreWorker" />
          </node>
        </node>
        <node concept="3SKdUt" id="2o55QbnJ_4s" role="3cqZAp">
          <node concept="1PaTwC" id="2o55QbnJ_4t" role="1aUNEU">
            <node concept="3oM_SD" id="2o55QbnJ_A1" role="1PaTwD">
              <property role="3oM_SC" value="XXX" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ_Ai" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ_Ak" role="1PaTwD">
              <property role="3oM_SC" value="there" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ_AA" role="1PaTwD">
              <property role="3oM_SC" value="any" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ_AR" role="1PaTwD">
              <property role="3oM_SC" value="default" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ_hb" role="1PaTwD">
              <property role="3oM_SC" value="JVM" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ_hs" role="1PaTwD">
              <property role="3oM_SC" value="args" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ_hH" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJ_hI" role="1PaTwD">
              <property role="3oM_SC" value="MPSEnv?" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1nTn8MoVWL4" role="jymVt" />
    <node concept="3clFb_" id="g9$9d2ChMB" role="jymVt">
      <property role="TrG5h" value="addConfiguredSettings" />
      <node concept="3cqZAl" id="g9$9d2ChMC" role="3clF45" />
      <node concept="3Tm1VV" id="g9$9d2ChMD" role="1B3o_S" />
      <node concept="3clFbS" id="g9$9d2ChME" role="3clF47">
        <node concept="3clFbJ" id="g9$9d2DaYh" role="3cqZAp">
          <node concept="3clFbS" id="g9$9d2DaYj" role="3clFbx">
            <node concept="3clFbF" id="g9$9d2DdFU" role="3cqZAp">
              <node concept="1rXfSq" id="g9$9d2DdFS" role="3clFbG">
                <ref role="37wK5l" to="gola:~Task.log(java.lang.String,int)" resolve="log" />
                <node concept="Xl_RD" id="g9$9d2DgUU" role="37wK5m">
                  <property role="Xl_RC" value="Nested &lt;settings&gt; element overrides m2m settings already specified for the task" />
                </node>
                <node concept="10M0yZ" id="g9$9d2Df6$" role="37wK5m">
                  <ref role="3cqZAo" to="gola:~Project.MSG_WARN" resolve="MSG_WARN" />
                  <ref role="1PxDUh" to="gola:~Project" resolve="Project" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="g9$9d2DcyN" role="3clFbw">
            <node concept="10Nm6u" id="g9$9d2Ddi5" role="3uHU7w" />
            <node concept="37vLTw" id="g9$9d2DbxX" role="3uHU7B">
              <ref role="3cqZAo" node="g9$9d2Capd" resolve="mySettings" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="g9$9d2D3GR" role="3cqZAp">
          <node concept="37vLTI" id="g9$9d2D4ZM" role="3clFbG">
            <node concept="37vLTw" id="g9$9d2D5yC" role="37vLTx">
              <ref role="3cqZAo" node="g9$9d2ChOk" resolve="settings" />
            </node>
            <node concept="37vLTw" id="g9$9d2D3GP" role="37vLTJ">
              <ref role="3cqZAo" node="g9$9d2Capd" resolve="mySettings" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="g9$9d2ChOk" role="3clF46">
        <property role="TrG5h" value="settings" />
        <node concept="3uibUv" id="g9$9d2ChOl" role="1tU5fm">
          <ref role="3uigEE" node="g9$9d2$zV2" resolve="GeneratorSettings" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="g9$9d2DZT_" role="jymVt" />
    <node concept="3clFb_" id="g9$9d2E22o" role="jymVt">
      <property role="TrG5h" value="addConfigured" />
      <node concept="3cqZAl" id="g9$9d2E22q" role="3clF45" />
      <node concept="3Tm1VV" id="g9$9d2E22r" role="1B3o_S" />
      <node concept="3clFbS" id="g9$9d2E22s" role="3clF47">
        <node concept="3SKdUt" id="g9$9d2E5ni" role="3cqZAp">
          <node concept="1PaTwC" id="g9$9d2E5nj" role="1aUNEU">
            <node concept="3oM_SD" id="g9$9d2E5RZ" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="g9$9d2E8wV" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="g9$9d2E8y4" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="g9$9d2E8yz" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="g9$9d2E8z3" role="1PaTwD">
              <property role="3oM_SC" value="let" />
            </node>
            <node concept="3oM_SD" id="g9$9d2E8zG" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="g9$9d2E8$L" role="1PaTwD">
              <property role="3oM_SC" value="both" />
            </node>
            <node concept="3oM_SD" id="g9$9d2E8AH" role="1PaTwD">
              <property role="3oM_SC" value="&lt;settings&gt;" />
            </node>
            <node concept="3oM_SD" id="g9$9d2E8JL" role="1PaTwD">
              <property role="3oM_SC" value="(name" />
            </node>
            <node concept="3oM_SD" id="g9$9d2E8KG" role="1PaTwD">
              <property role="3oM_SC" value="derived" />
            </node>
            <node concept="3oM_SD" id="g9$9d2E8ML" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="g9$9d2E8N3" role="1PaTwD">
              <property role="3oM_SC" value="#addConfiguredSettings)" />
            </node>
            <node concept="3oM_SD" id="g9$9d2E8Cn" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="g9$9d2Eavm" role="3cqZAp">
          <node concept="1PaTwC" id="g9$9d2Eav2" role="1aUNEU">
            <node concept="3oM_SD" id="g9$9d2Eav1" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="g9$9d2E8Dv" role="1PaTwD">
              <property role="3oM_SC" value="&lt;generator-settings&gt;" />
            </node>
            <node concept="3oM_SD" id="g9$9d2EaVD" role="1PaTwD">
              <property role="3oM_SC" value="(as" />
            </node>
            <node concept="3oM_SD" id="g9$9d2EaWR" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="g9$9d2EaX0" role="1PaTwD">
              <property role="3oM_SC" value="antlib.xml" />
            </node>
            <node concept="3oM_SD" id="g9$9d2EaZp" role="1PaTwD">
              <property role="3oM_SC" value="typedef)" />
            </node>
            <node concept="3oM_SD" id="g9$9d2E8G$" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="g9$9d2E8Hb" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="g9$9d2E8HN" role="1PaTwD">
              <property role="3oM_SC" value="nested" />
            </node>
            <node concept="3oM_SD" id="g9$9d2E8I$" role="1PaTwD">
              <property role="3oM_SC" value="element" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="g9$9d2E6Vr" role="3cqZAp">
          <node concept="1rXfSq" id="g9$9d2E6Vp" role="3clFbG">
            <ref role="37wK5l" node="g9$9d2ChMB" resolve="addConfiguredSettings" />
            <node concept="37vLTw" id="g9$9d2E7oc" role="37wK5m">
              <ref role="3cqZAo" node="g9$9d2E4RJ" resolve="settings" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="g9$9d2E4RJ" role="3clF46">
        <property role="TrG5h" value="settings" />
        <node concept="3uibUv" id="g9$9d2E4RI" role="1tU5fm">
          <ref role="3uigEE" node="g9$9d2$zV2" resolve="GeneratorSettings" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="g9$9d2BNdY" role="jymVt" />
    <node concept="3clFb_" id="g9$9d2CpMd" role="jymVt">
      <property role="TrG5h" value="getSettings" />
      <node concept="3clFbS" id="g9$9d2CpMg" role="3clF47">
        <node concept="3clFbJ" id="g9$9d2Cr5x" role="3cqZAp">
          <node concept="3clFbC" id="g9$9d2CsZb" role="3clFbw">
            <node concept="10Nm6u" id="g9$9d2CtxO" role="3uHU7w" />
            <node concept="37vLTw" id="g9$9d2CsiO" role="3uHU7B">
              <ref role="3cqZAo" node="g9$9d2Capd" resolve="mySettings" />
            </node>
          </node>
          <node concept="3clFbS" id="g9$9d2Cr5z" role="3clFbx">
            <node concept="3clFbF" id="g9$9d2Cva8" role="3cqZAp">
              <node concept="37vLTI" id="g9$9d2CvRy" role="3clFbG">
                <node concept="2ShNRf" id="g9$9d2Cwwi" role="37vLTx">
                  <node concept="1pGfFk" id="g9$9d2CyHW" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="g9$9d2$BM_" resolve="GeneratorSettings" />
                  </node>
                </node>
                <node concept="37vLTw" id="g9$9d2Cva6" role="37vLTJ">
                  <ref role="3cqZAo" node="g9$9d2Capd" resolve="mySettings" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="g9$9d2C_Zc" role="3cqZAp">
          <node concept="37vLTw" id="g9$9d2CABR" role="3cqZAk">
            <ref role="3cqZAo" node="g9$9d2Capd" resolve="mySettings" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="g9$9d2CoDZ" role="1B3o_S" />
      <node concept="3uibUv" id="g9$9d2CpHH" role="3clF45">
        <ref role="3uigEE" node="g9$9d2$zV2" resolve="GeneratorSettings" />
      </node>
    </node>
    <node concept="2tJIrI" id="1nTn8MoVWhd" role="jymVt" />
    <node concept="3clFb_" id="3w1$bnwFLyu" role="jymVt">
      <property role="TrG5h" value="addConfiguredModule" />
      <node concept="3clFbS" id="3w1$bnwFLyx" role="3clF47">
        <node concept="3clFbF" id="3w1$bnwFOLw" role="3cqZAp">
          <node concept="2OqwBi" id="3w1$bnwFP2E" role="3clFbG">
            <node concept="37vLTw" id="3w1$bnwFOLv" role="2Oq$k0">
              <ref role="3cqZAo" node="3ufQioQQtje" resolve="myWhatToDo" />
            </node>
            <node concept="liA8E" id="3w1$bnwFPmV" role="2OqNvi">
              <ref role="37wK5l" to="asz6:KL8Aql8epR" resolve="addModuleFile" />
              <node concept="2OqwBi" id="3w1$bnwFPTb" role="37wK5m">
                <node concept="37vLTw" id="3w1$bnwFP$f" role="2Oq$k0">
                  <ref role="3cqZAo" node="7SWBkX45CUr" resolve="chunk" />
                </node>
                <node concept="liA8E" id="3w1$bnwFQuZ" role="2OqNvi">
                  <ref role="37wK5l" to="kio7:7SWBkX45CX1" resolve="getFile" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3w1$bnwFLaj" role="1B3o_S" />
      <node concept="3cqZAl" id="3w1$bnwFLr6" role="3clF45" />
      <node concept="37vLTG" id="7SWBkX45CUr" role="3clF46">
        <property role="TrG5h" value="chunk" />
        <node concept="3uibUv" id="7SWBkX45CUx" role="1tU5fm">
          <ref role="3uigEE" to="kio7:7SWBkX45CM0" resolve="ModuleChunkPart" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3w1$bnwFRUU" role="jymVt" />
    <node concept="3clFb_" id="3pzB6wMWAYn" role="jymVt">
      <property role="TrG5h" value="setTargetJavaVersion" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="3pzB6wMWAYo" role="3clF46">
        <property role="TrG5h" value="targetJavaVersion" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="70B3qCBD4_u" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3pzB6wMWAYq" role="3clF47">
        <node concept="3SKdUt" id="g9$9d2EGlw" role="3cqZAp">
          <node concept="1PaTwC" id="g9$9d2EGlx" role="1aUNEU">
            <node concept="3oM_SD" id="g9$9d2EGKC" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="g9$9d2EGL5" role="1PaTwD">
              <property role="3oM_SC" value="shall" />
            </node>
            <node concept="3oM_SD" id="g9$9d2EGLY" role="1PaTwD">
              <property role="3oM_SC" value="follow" />
            </node>
            <node concept="3oM_SD" id="g9$9d2EGNj" role="1PaTwD">
              <property role="3oM_SC" value="GeneratorSettings" />
            </node>
            <node concept="3oM_SD" id="g9$9d2EGPv" role="1PaTwD">
              <property role="3oM_SC" value="approach" />
            </node>
            <node concept="3oM_SD" id="g9$9d2EGQr" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="g9$9d2EGQX" role="1PaTwD">
              <property role="3oM_SC" value="extract" />
            </node>
            <node concept="3oM_SD" id="g9$9d2EGRw" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="g9$9d2EGSU" role="1PaTwD">
              <property role="3oM_SC" value="distinct" />
            </node>
            <node concept="3oM_SD" id="g9$9d2EGT4" role="1PaTwD">
              <property role="3oM_SC" value="compile" />
            </node>
            <node concept="3oM_SD" id="g9$9d2EGVL" role="1PaTwD">
              <property role="3oM_SC" value="settings" />
            </node>
            <node concept="3oM_SD" id="g9$9d2EGVX" role="1PaTwD">
              <property role="3oM_SC" value="typedef" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3w1$bnwFTaB" role="3cqZAp">
          <node concept="3clFbS" id="3w1$bnwFTaD" role="3clFbx">
            <node concept="3clFbF" id="3w1$bnwFUyJ" role="3cqZAp">
              <node concept="2OqwBi" id="3w1$bnwFXZR" role="3clFbG">
                <node concept="2ShNRf" id="3w1$bnwFUyF" role="2Oq$k0">
                  <node concept="1pGfFk" id="3w1$bnwFXe7" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="asz6:3pzB6wMWswn" resolve="JavaCompilerProperties" />
                    <node concept="37vLTw" id="3w1$bnwFXsF" role="37wK5m">
                      <ref role="3cqZAo" node="3ufQioQQtje" resolve="myWhatToDo" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="3w1$bnwFYh1" role="2OqNvi">
                  <ref role="37wK5l" to="asz6:3pzB6wMWswx" resolve="setTargetJavaVersion" />
                  <node concept="37vLTw" id="3w1$bnwFYwy" role="37wK5m">
                    <ref role="3cqZAo" node="3pzB6wMWAYo" resolve="targetJavaVersion" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3w1$bnwFU5$" role="3clFbw">
            <node concept="10Nm6u" id="3w1$bnwFUkg" role="3uHU7w" />
            <node concept="37vLTw" id="3w1$bnwFTp_" role="3uHU7B">
              <ref role="3cqZAo" node="3pzB6wMWAYo" resolve="targetJavaVersion" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3pzB6wMWAYu" role="1B3o_S" />
      <node concept="3cqZAl" id="3pzB6wMWAYv" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1nTn8MoVVXT" role="jymVt" />
    <node concept="3Tm1VV" id="1nTn8MoVTed" role="1B3o_S" />
    <node concept="3uibUv" id="1nTn8MoVVxU" role="1zkMxy">
      <ref role="3uigEE" node="3ufQioQQti6" resolve="MpsLoadTask" />
    </node>
    <node concept="3clFb_" id="1nTn8MoVXBh" role="jymVt">
      <property role="TrG5h" value="finalizeScriptSettings" />
      <node concept="3Tmbuc" id="1nTn8MoVXBO" role="1B3o_S" />
      <node concept="3cqZAl" id="1nTn8MoVXBP" role="3clF45" />
      <node concept="37vLTG" id="1nTn8MoVXBQ" role="3clF46">
        <property role="TrG5h" value="whatToDo" />
        <node concept="3uibUv" id="1nTn8MoVXBR" role="1tU5fm">
          <ref role="3uigEE" to="asz6:KL8Aql8enO" resolve="Script" />
        </node>
      </node>
      <node concept="3clFbS" id="1nTn8MoVXC4" role="3clF47">
        <node concept="3clFbF" id="3w1$bnwBHeI" role="3cqZAp">
          <node concept="1rXfSq" id="3w1$bnwBHeG" role="3clFbG">
            <ref role="37wK5l" node="3ufQioQQtke" resolve="setFork" />
            <node concept="3clFbT" id="3w1$bnwBHoL" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1nTn8MoVXC8" role="3cqZAp">
          <node concept="3nyPlj" id="1nTn8MoVXC7" role="3clFbG">
            <ref role="37wK5l" node="g9$9d2AipS" resolve="finalizeScriptSettings" />
            <node concept="37vLTw" id="1nTn8MoVXC6" role="37wK5m">
              <ref role="3cqZAo" node="1nTn8MoVXBQ" resolve="whatToDo" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3w1$bnwBGPd" role="3cqZAp">
          <node concept="1PaTwC" id="3w1$bnwBGPe" role="1aUNEU">
            <node concept="3oM_SD" id="3w1$bnwBH2m" role="1PaTwD">
              <property role="3oM_SC" value="XXX" />
            </node>
            <node concept="3oM_SD" id="3w1$bnwBH2o" role="1PaTwD">
              <property role="3oM_SC" value="assert" />
            </node>
            <node concept="3oM_SD" id="3w1$bnwBH2S" role="1PaTwD">
              <property role="3oM_SC" value="myFork;" />
            </node>
            <node concept="3oM_SD" id="3w1$bnwBH2W" role="1PaTwD">
              <property role="3oM_SC" value="-" />
            </node>
            <node concept="3oM_SD" id="3w1$bnwBH3I" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="3w1$bnwBH3O" role="1PaTwD">
              <property role="3oM_SC" value="assume" />
            </node>
            <node concept="3oM_SD" id="3w1$bnwBH3V" role="1PaTwD">
              <property role="3oM_SC" value="default" />
            </node>
            <node concept="3oM_SD" id="3w1$bnwBH43" role="1PaTwD">
              <property role="3oM_SC" value="'true'" />
            </node>
            <node concept="3oM_SD" id="3w1$bnwBH4U" role="1PaTwD">
              <property role="3oM_SC" value="value," />
            </node>
            <node concept="3oM_SD" id="3w1$bnwBH4x" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="3w1$bnwBH4H" role="1PaTwD">
              <property role="3oM_SC" value="want" />
            </node>
            <node concept="3oM_SD" id="3w1$bnwBH56" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="3w1$bnwBH5j" role="1PaTwD">
              <property role="3oM_SC" value="specify" />
            </node>
            <node concept="3oM_SD" id="3w1$bnwBH5x" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="3w1$bnwBH5K" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="3w1$bnwBVFG" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="3w1$bnwBVFX" role="1PaTwD">
              <property role="3oM_SC" value="xml" />
            </node>
            <node concept="3oM_SD" id="3w1$bnwBVGn" role="1PaTwD">
              <property role="3oM_SC" value="explicitly" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="g9$9d2C7fA" role="3cqZAp">
          <node concept="3cpWsn" id="g9$9d2C7fB" role="3cpWs9">
            <property role="TrG5h" value="gp" />
            <node concept="3uibUv" id="g9$9d2C738" role="1tU5fm">
              <ref role="3uigEE" to="asz6:2XB5puvk9rk" resolve="GeneratorProperties" />
            </node>
            <node concept="2ShNRf" id="g9$9d2C7fC" role="33vP2m">
              <node concept="1pGfFk" id="g9$9d2C7fD" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="asz6:2XB5puvmPTq" resolve="GeneratorProperties" />
                <node concept="37vLTw" id="g9$9d2C7fE" role="37wK5m">
                  <ref role="3cqZAo" node="1nTn8MoVXBQ" resolve="whatToDo" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="g9$9d2Cdz_" role="3cqZAp">
          <node concept="2OqwBi" id="g9$9d2Ce6e" role="3clFbG">
            <node concept="liA8E" id="g9$9d2CfeR" role="2OqNvi">
              <ref role="37wK5l" node="g9$9d2_ls2" resolve="feedInto" />
              <node concept="37vLTw" id="g9$9d2Cg9t" role="37wK5m">
                <ref role="3cqZAo" node="g9$9d2C7fB" resolve="gp" />
              </node>
            </node>
            <node concept="1rXfSq" id="g9$9d2D0m8" role="2Oq$k0">
              <ref role="37wK5l" node="g9$9d2CpMd" resolve="getSettings" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1nTn8MoWiE8" role="3cqZAp">
          <node concept="2OqwBi" id="1nTn8MoWiQ6" role="3clFbG">
            <node concept="37vLTw" id="1nTn8MoWiE6" role="2Oq$k0">
              <ref role="3cqZAo" node="1nTn8MoVXBQ" resolve="whatToDo" />
            </node>
            <node concept="liA8E" id="1nTn8MoWj1j" role="2OqNvi">
              <ref role="37wK5l" to="asz6:r$A3E5tFQu" resolve="addPlugin" />
              <node concept="2ShNRf" id="1nTn8MoWvPk" role="37wK5m">
                <node concept="1pGfFk" id="1nTn8MoWyxA" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="asz6:4OPNMy23eT$" resolve="PluginData" />
                  <node concept="2OqwBi" id="1nTn8MoX1OS" role="37wK5m">
                    <node concept="2ShNRf" id="1nTn8MoWYPS" role="2Oq$k0">
                      <node concept="1pGfFk" id="1nTn8MoX0vo" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                        <node concept="1rXfSq" id="1nTn8MoX0Pd" role="37wK5m">
                          <ref role="37wK5l" node="4OPNMy25ZUO" resolve="getMpsHome_Checked" />
                        </node>
                        <node concept="Xl_RD" id="1nTn8MoWzoM" role="37wK5m">
                          <property role="Xl_RC" value="plugins/mps-ant-make" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="1nTn8MoX2lV" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="1nTn8MoWz5f" role="37wK5m">
                    <property role="Xl_RC" value="jetbrains.mps.tool.make" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1nTn8MoVXC5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1nTn8MoWHki" role="jymVt" />
    <node concept="3clFb_" id="1nTn8MoWHvB" role="jymVt">
      <property role="TrG5h" value="getAdditionalArgs" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="2AHcQZ" id="1nTn8MoWHvC" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3Tmbuc" id="1nTn8MoWHvM" role="1B3o_S" />
      <node concept="3uibUv" id="1nTn8MoWHvN" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="17QB3L" id="1nTn8MoWHvO" role="11_B2D" />
      </node>
      <node concept="3clFbS" id="1nTn8MoWHvP" role="3clF47">
        <node concept="3SKdUt" id="1nTn8MoX9Nb" role="3cqZAp">
          <node concept="1PaTwC" id="1nTn8MoX9Nc" role="1aUNEU">
            <node concept="3oM_SD" id="1nTn8MoXa7k" role="1PaTwD">
              <property role="3oM_SC" value="XXX" />
            </node>
            <node concept="3oM_SD" id="1nTn8MoXa7L" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1nTn8MoXa8f" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="1nTn8MoXa8j" role="1PaTwD">
              <property role="3oM_SC" value="ok" />
            </node>
            <node concept="3oM_SD" id="1nTn8MoXa8N" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1nTn8MoXa9J" role="1PaTwD">
              <property role="3oM_SC" value="ignore" />
            </node>
            <node concept="3oM_SD" id="1nTn8MoXaah" role="1PaTwD">
              <property role="3oM_SC" value="any" />
            </node>
            <node concept="3oM_SD" id="1nTn8MoXaaO" role="1PaTwD">
              <property role="3oM_SC" value="extra" />
            </node>
            <node concept="3oM_SD" id="1nTn8MoXabN" role="1PaTwD">
              <property role="3oM_SC" value="arguments?" />
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="1nTn8MoX9ra" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="1nTn8MoX5b2" role="8Wnug">
            <node concept="3nyPlj" id="1nTn8MoX5b0" role="3clFbG">
              <ref role="37wK5l" node="7oFdQJwHF24" resolve="getAdditionalArgs" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1nTn8MoX3$v" role="3cqZAp">
          <node concept="1PaTwC" id="1nTn8MoX3$w" role="1aUNEU">
            <node concept="3oM_SD" id="1nTn8MoX3KD" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="1nTn8MoX47U" role="1PaTwD">
              <property role="3oM_SC" value="module-reference-string/jetbrains.mps.tool.make/," />
            </node>
            <node concept="3oM_SD" id="1nTn8MoX49i" role="1PaTwD">
              <property role="3oM_SC" value="class-fqn/MakeExecutor/" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1nTn8MoWHvS" role="3cqZAp">
          <node concept="2YIFZM" id="1nTn8MoWIHy" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
            <node concept="Xl_RD" id="1nTn8MoX2zS" role="37wK5m">
              <property role="Xl_RC" value="5b452162-9701-46ff-bd09-d700008c447b(jetbrains.mps.tool.make)" />
            </node>
            <node concept="Xl_RD" id="1nTn8MoX2Ks" role="37wK5m">
              <property role="Xl_RC" value="jetbrains.mps.tool.make.MakeExecutor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1nTn8MoWHvQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

