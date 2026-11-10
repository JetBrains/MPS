<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5ff047e0-2953-4750-806a-bdc16824aa89(jetbrains.mps.smodel)">
  <persistence version="9" />
  <languages>
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="e8bb" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.ids(MPS.Core/)" />
    <import index="tpd4" ref="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="tpc2" ref="r:00000000-0000-4000-0000-011c8959029e(jetbrains.mps.lang.editor.structure)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="gp7a" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.dependency(MPS.Core/)" />
    <import index="w0gx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.structure.modules(MPS.Core/)" />
    <import index="31cb" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.module(MPS.Core/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="tpcb" ref="r:00000000-0000-4000-0000-011c89590297(jetbrains.mps.lang.editor.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
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
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
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
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ">
        <child id="1214996921760" name="bound" index="3ztrMU" />
      </concept>
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
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
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
      <concept id="8064396509828172209" name="jetbrains.mps.baseLanguage.structure.UnaryMinus" flags="nn" index="1ZRNhn" />
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
      <concept id="5085607816306633585" name="jetbrains.mps.baseLanguage.javadoc.structure.CodeInlineDocTagTE" flags="ng" index="1VuTSG" />
      <concept id="5085607816306647746" name="jetbrains.mps.baseLanguage.javadoc.structure.LinkInlineDocTagTE" flags="ng" index="1VuXuv">
        <child id="5085607816306647747" name="reference" index="1VuXuu" />
      </concept>
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="4733039728785194814" name="jetbrains.mps.lang.modelapi.structure.NamedNodeReference" flags="ng" index="ZC_QK">
        <reference id="7256306938026143658" name="target" index="2aWVGs" />
      </concept>
      <concept id="361130699826193249" name="jetbrains.mps.lang.modelapi.structure.ModulePointer" flags="ng" index="1dCxOk">
        <property id="1863527487546097500" name="moduleId" index="1XweGW" />
        <property id="1863527487545993577" name="moduleName" index="1XxBO9" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="3506770386464365589" name="jetbrains.mps.lang.smodel.structure.Model_PointerOperation" flags="ng" index="aIX43" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="4497478346159780083" name="jetbrains.mps.lang.smodel.structure.LanguageRefExpression" flags="ng" index="pHN19">
        <child id="3542851458883491298" name="languageId" index="2V$M_3" />
      </concept>
      <concept id="7400021826774799413" name="jetbrains.mps.lang.smodel.structure.NodePointerExpression" flags="ng" index="2tJFMh">
        <child id="7400021826774799510" name="ref" index="2tJFKM" />
      </concept>
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="2565258849284146373" name="jetbrains.mps.lang.smodel.structure.BootstrapAwareMetaObject" flags="ngI" index="B6Ymg">
        <property id="2565258849284158059" name="bootstrap" index="B6XcY" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG">
        <child id="6750920497477046361" name="conceptArgument" index="3MHsoP" />
      </concept>
      <concept id="1171323947159" name="jetbrains.mps.lang.smodel.structure.Model_NodesOperation" flags="nn" index="2SmgA7">
        <child id="1758937410080001570" name="conceptArgument" index="1dBWTz" />
      </concept>
      <concept id="3542851458883438784" name="jetbrains.mps.lang.smodel.structure.LanguageId" flags="nn" index="2V$Bhx">
        <property id="3542851458883439831" name="namespace" index="2V$B1Q" />
        <property id="3542851458883439832" name="languageId" index="2V$B1T" />
      </concept>
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
      </concept>
      <concept id="2644386474302386080" name="jetbrains.mps.lang.smodel.structure.PropertyIdRefExpression" flags="nn" index="355D3s">
        <reference id="2644386474302386081" name="conceptDeclaration" index="355D3t" />
        <reference id="2644386474302386082" name="propertyDeclaration" index="355D3u" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1678062499342629858" name="jetbrains.mps.lang.smodel.structure.ModuleRefExpression" flags="ng" index="37shsh">
        <child id="1678062499342629861" name="moduleId" index="37shsm" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
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
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7">
        <property id="8575328350543493365" name="message" index="huDt6" />
        <property id="2423417345669755629" name="filter" index="1eyWvh" />
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
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1207233427108" name="jetbrains.mps.baseLanguage.collections.structure.MapRemoveOperation" flags="nn" index="kI3uX">
        <child id="1207233489861" name="key" index="kIiFs" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
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
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1201872418428" name="jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation" flags="nn" index="3lbrtF" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1240824834947" name="jetbrains.mps.baseLanguage.collections.structure.ValueAccessOperation" flags="nn" index="3AV6Ez" />
      <concept id="1240825616499" name="jetbrains.mps.baseLanguage.collections.structure.KeyAccessOperation" flags="nn" index="3AY5_j" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="312cEu" id="4pBxc6EfAk4">
    <property role="TrG5h" value="BootstrapLanguages" />
    <node concept="3Tm1VV" id="4pBxc6EfAk5" role="1B3o_S" />
    <node concept="3clFbW" id="4pBxc6EfAk6" role="jymVt">
      <node concept="3Tm6S6" id="6jj_XLNiMIA" role="1B3o_S" />
      <node concept="3cqZAl" id="4pBxc6EfAk8" role="3clF45" />
      <node concept="3clFbS" id="4pBxc6EfAk9" role="3clF47" />
    </node>
    <node concept="2YIFZL" id="3ZjJlH_ZBCm" role="jymVt">
      <property role="TrG5h" value="getLangCore" />
      <node concept="3uibUv" id="3ZjJlH_ZBID" role="3clF45">
        <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
      </node>
      <node concept="3Tm1VV" id="3ZjJlH_ZBCp" role="1B3o_S" />
      <node concept="3clFbS" id="3ZjJlH_ZBCq" role="3clF47">
        <node concept="3clFbF" id="3ZjJlH_ZBJ4" role="3cqZAp">
          <node concept="pHN19" id="3ZjJlH_ZBJ2" role="3clFbG">
            <node concept="2V$Bhx" id="3ZjJlH_ZBJe" role="2V$M_3">
              <property role="2V$B1T" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c" />
              <property role="2V$B1Q" value="jetbrains.mps.lang.core" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="4_F$1bfW0$M" role="jymVt">
      <property role="TrG5h" value="getGeneratorLang" />
      <node concept="3uibUv" id="4_F$1bfW0Fe" role="3clF45">
        <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
      </node>
      <node concept="3Tm1VV" id="4_F$1bfW0$P" role="1B3o_S" />
      <node concept="3clFbS" id="4_F$1bfW0$Q" role="3clF47">
        <node concept="3clFbF" id="4_F$1bfW0FL" role="3cqZAp">
          <node concept="pHN19" id="4_F$1bfW0FJ" role="3clFbG">
            <node concept="2V$Bhx" id="4_F$1bfW0FZ" role="2V$M_3">
              <property role="2V$B1T" value="b401a680-8325-4110-8fd3-84331ff25bef" />
              <property role="2V$B1Q" value="jetbrains.mps.lang.generator" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="4_F$1bfWyDq" role="jymVt">
      <property role="TrG5h" value="getBaseLang" />
      <node concept="3uibUv" id="4_F$1bfWBaj" role="3clF45">
        <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
      </node>
      <node concept="3Tm1VV" id="4_F$1bfWyDt" role="1B3o_S" />
      <node concept="3clFbS" id="4_F$1bfWyDu" role="3clF47">
        <node concept="3clFbF" id="4_F$1bfWyKg" role="3cqZAp">
          <node concept="pHN19" id="4_F$1bfWyKe" role="3clFbG">
            <node concept="2V$Bhx" id="2OV1G3ujrjy" role="2V$M_3">
              <property role="2V$B1T" value="f3061a53-9226-4cc5-a443-f952ceaf5816" />
              <property role="2V$B1Q" value="jetbrains.mps.baseLanguage" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="63JDBWkL1Mu" role="jymVt">
      <property role="TrG5h" value="getLanguageDescriptorLang" />
      <node concept="3uibUv" id="63JDBWkL1SM" role="3clF45">
        <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
      </node>
      <node concept="3Tm1VV" id="63JDBWkL1Mx" role="1B3o_S" />
      <node concept="3clFbS" id="63JDBWkL1My" role="3clF47">
        <node concept="3clFbF" id="63JDBWkL1Tv" role="3cqZAp">
          <node concept="pHN19" id="63JDBWkL1Tt" role="3clFbG">
            <node concept="2V$Bhx" id="63JDBWkL1TH" role="2V$M_3">
              <property role="2V$B1T" value="f4ad079d-bc71-4ffb-9600-9328705cf998" />
              <property role="2V$B1Q" value="jetbrains.mps.lang.descriptor" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="29TU51taVp1" role="jymVt">
      <property role="TrG5h" value="getLanguageDescriptorDevKit" />
      <node concept="3uibUv" id="29TU51taVt2" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
      </node>
      <node concept="3Tm1VV" id="29TU51taVp4" role="1B3o_S" />
      <node concept="3clFbS" id="29TU51taVp5" role="3clF47">
        <node concept="3clFbF" id="29TU51taVx6" role="3cqZAp">
          <node concept="37shsh" id="29TU51taVx4" role="3clFbG">
            <node concept="1dCxOk" id="5ZqXG2n7xJe" role="37shsm">
              <property role="1XxBO9" value="jetbrains.mps.devkit.language-descriptor" />
              <property role="1XweGW" value="00000000-0000-4000-0000-3c66972ccb47" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="5HHFAyrKchd" role="jymVt">
      <property role="TrG5h" value="getGeneralPurposeDevKit" />
      <node concept="3uibUv" id="5HHFAyrKcnK" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
      </node>
      <node concept="3Tm1VV" id="5HHFAyrKchg" role="1B3o_S" />
      <node concept="3clFbS" id="5HHFAyrKchh" role="3clF47">
        <node concept="3clFbF" id="5HHFAyrKcq$" role="3cqZAp">
          <node concept="37shsh" id="5HHFAyrKcqy" role="3clFbG">
            <node concept="1dCxOk" id="5ZqXG2n7xJf" role="37shsm">
              <property role="1XxBO9" value="jetbrains.mps.devkit.general-purpose" />
              <property role="1XweGW" value="fbc25dd2-5da4-483a-8b19-70928e1b62d7" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="5HHFAyrKfvh" role="jymVt">
      <property role="TrG5h" value="getGeneratorTemplatesDevKit" />
      <node concept="3uibUv" id="5HHFAyrKf_V" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
      </node>
      <node concept="3Tm1VV" id="5HHFAyrKfvk" role="1B3o_S" />
      <node concept="3clFbS" id="5HHFAyrKfvl" role="3clF47">
        <node concept="3SKdUt" id="5HHFAyrKfFX" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo5W5" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo5W6" role="1PaTwD">
              <property role="3oM_SC" value="unless" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5W7" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5W8" role="1PaTwD">
              <property role="3oM_SC" value="introduce" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5W9" role="1PaTwD">
              <property role="3oM_SC" value="anything" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Wa" role="1PaTwD">
              <property role="3oM_SC" value="like" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Wb" role="1PaTwD">
              <property role="3oM_SC" value="SLanguage" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Wc" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Wd" role="1PaTwD">
              <property role="3oM_SC" value="DevKit" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5We" role="1PaTwD">
              <property role="3oM_SC" value="runtime," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Wf" role="1PaTwD">
              <property role="3oM_SC" value="SModuleReference" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Wg" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Wh" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Wi" role="1PaTwD">
              <property role="3oM_SC" value="way" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5HHFAyrKfGI" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo5Wj" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo5Wk" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Wl" role="1PaTwD">
              <property role="3oM_SC" value="identify" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Wm" role="1PaTwD">
              <property role="3oM_SC" value="devkit" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Wn" role="1PaTwD">
              <property role="3oM_SC" value="at" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Wo" role="1PaTwD">
              <property role="3oM_SC" value="RT." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5HHFAyrKfCr" role="3cqZAp">
          <node concept="37shsh" id="5HHFAyrKfCp" role="3clFbG">
            <node concept="1dCxOk" id="5ZqXG2n7xJg" role="37shsm">
              <property role="1XxBO9" value="jetbrains.mps.devkit.templates" />
              <property role="1XweGW" value="a2eb3a43-fcc2-4200-80dc-c60110c4862d" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="5QySkSuPMst" role="jymVt">
      <property role="TrG5h" value="descriptorLanguageRef" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="5QySkSuPMsw" role="3clF47">
        <node concept="3clFbF" id="3WF9HwEZM$F" role="3cqZAp">
          <node concept="37shsh" id="3WF9HwEZM$C" role="3clFbG">
            <node concept="1dCxOk" id="5ZqXG2n7xJn" role="37shsm">
              <property role="1XxBO9" value="jetbrains.mps.lang.descriptor" />
              <property role="1XweGW" value="f4ad079d-bc71-4ffb-9600-9328705cf998" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5QySkSuPM7d" role="1B3o_S" />
      <node concept="3uibUv" id="5QySkSuPMak" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
      </node>
    </node>
    <node concept="2YIFZL" id="5QySkSuUttH" role="jymVt">
      <property role="TrG5h" value="coreLanguageRef" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="5QySkSuUttI" role="3clF47">
        <node concept="3clFbF" id="3WF9HwF0P6c" role="3cqZAp">
          <node concept="37shsh" id="3WF9HwF0P69" role="3clFbG">
            <node concept="1dCxOk" id="5ZqXG2n7xJp" role="37shsm">
              <property role="1XxBO9" value="jetbrains.mps.lang.core" />
              <property role="1XweGW" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5QySkSuUttL" role="1B3o_S" />
      <node concept="3uibUv" id="5QySkSuUttM" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
      </node>
    </node>
    <node concept="2YIFZL" id="7YAFg1x$sqW" role="jymVt">
      <property role="TrG5h" value="jdkRef" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="7YAFg1x$sqX" role="3clF47">
        <node concept="3clFbF" id="3WF9HwF0PqR" role="3cqZAp">
          <node concept="37shsh" id="3WF9HwF0PqN" role="3clFbG">
            <node concept="1dCxOk" id="5ZqXG2n7xJG" role="37shsm">
              <property role="1XxBO9" value="JDK" />
              <property role="1XweGW" value="6354ebe7-c22a-4a0f-ac54-50b52ab9b065" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7YAFg1x$sr0" role="1B3o_S" />
      <node concept="3uibUv" id="7YAFg1x$sr1" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
      </node>
    </node>
    <node concept="2AHcQZ" id="4fSpAVATV_d" role="2AJF6D">
      <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      <node concept="2B6LJw" id="2sePq$_siN7" role="2B76xF">
        <ref role="2B6OnR" to="wyt6:~Deprecated.since()" resolve="since" />
        <node concept="Xl_RD" id="2sePq$_siN3" role="2B70Vg">
          <property role="Xl_RC" value="3.3" />
        </node>
      </node>
      <node concept="2B6LJw" id="2sePq$_siN8" role="2B76xF">
        <ref role="2B6OnR" to="wyt6:~Deprecated.forRemoval()" resolve="forRemoval" />
        <node concept="3clFbT" id="2sePq$_siN9" role="2B70Vg">
          <property role="3clFbU" value="true" />
        </node>
      </node>
    </node>
    <node concept="3UR2Jj" id="2sePq$_siN4" role="lGtFl">
      <node concept="TZ5HI" id="2sePq$_siN5" role="3nqlJM">
        <node concept="1PaTwC" id="1E1X3WHs$ug" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs$uh" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1YioXbrr5pb">
    <property role="TrG5h" value="SNodeUtil" />
    <property role="1EXbeo" value="true" />
    <node concept="Wx3nA" id="41ztCAMEtLU" role="jymVt">
      <property role="TrG5h" value="property_AbstractConcept_Id" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="41ztCAMEtLV" role="1B3o_S" />
      <node concept="355D3s" id="dqwjwHwzjS" role="33vP2m">
        <property role="B6XcY" value="true" />
        <ref role="355D3t" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
        <ref role="355D3u" to="tpce:5OIo7_R7SN0" resolve="conceptId" />
      </node>
      <node concept="3uibUv" id="dqwjwHwy70" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
    </node>
    <node concept="Wx3nA" id="7NTi8jMdqsl" role="jymVt">
      <property role="TrG5h" value="property_AbstractConcept_LangId" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="7NTi8jMdqsm" role="1B3o_S" />
      <node concept="355D3s" id="7NTi8jMdqsn" role="33vP2m">
        <property role="B6XcY" value="true" />
        <ref role="355D3t" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
        <ref role="355D3u" to="tpce:7NTi8jM8Rgz" resolve="languageId" />
      </node>
      <node concept="3uibUv" id="7NTi8jMdqso" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
    </node>
    <node concept="Wx3nA" id="dqwjwH$T_7" role="jymVt">
      <property role="TrG5h" value="property_Property_Id" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="dqwjwH$T_8" role="1B3o_S" />
      <node concept="355D3s" id="dqwjwH$T_9" role="33vP2m">
        <property role="B6XcY" value="true" />
        <ref role="355D3t" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
        <ref role="355D3u" to="tpce:dqwjwHwEjp" resolve="propertyId" />
      </node>
      <node concept="3uibUv" id="dqwjwH$T_a" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
    </node>
    <node concept="Wx3nA" id="dqwjwH$TMI" role="jymVt">
      <property role="TrG5h" value="property_Link_Id" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="dqwjwH$TMJ" role="1B3o_S" />
      <node concept="355D3s" id="dqwjwH$TMK" role="33vP2m">
        <property role="B6XcY" value="true" />
        <ref role="355D3t" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
        <ref role="355D3u" to="tpce:dqwjwHwEj$" resolve="linkId" />
      </node>
      <node concept="3uibUv" id="dqwjwH$TML" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
    </node>
    <node concept="Wx3nA" id="6Kv_6E718rq" role="jymVt">
      <property role="TrG5h" value="property_DataType_Id" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="6Kv_6E718rr" role="1B3o_S" />
      <node concept="355D3s" id="6Kv_6E718rs" role="33vP2m">
        <property role="B6XcY" value="true" />
        <ref role="355D3t" to="tpce:fKAxPRU" resolve="DataTypeDeclaration" />
        <ref role="355D3u" to="tpce:6Kv_6E714g3" resolve="datatypeId" />
      </node>
      <node concept="3uibUv" id="6Kv_6E718rt" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
    </node>
    <node concept="Wx3nA" id="6Kv_6E718ru" role="jymVt">
      <property role="TrG5h" value="property_DataType_LangId" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="6Kv_6E718rv" role="1B3o_S" />
      <node concept="355D3s" id="6Kv_6E718rw" role="33vP2m">
        <property role="B6XcY" value="true" />
        <ref role="355D3t" to="tpce:fKAxPRU" resolve="DataTypeDeclaration" />
        <ref role="355D3u" to="tpce:6Kv_6E714g4" resolve="languageId" />
      </node>
      <node concept="3uibUv" id="6Kv_6E718rx" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
    </node>
    <node concept="2tJIrI" id="7BIvS$tLebb" role="jymVt" />
    <node concept="Wx3nA" id="4wG2MBHiEao" role="jymVt">
      <property role="TrG5h" value="concept_PropertyAttribute" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="4wG2MBHiEap" role="1B3o_S" />
      <node concept="35c_gC" id="4wG2MBHiEaq" role="33vP2m">
        <property role="B6XcY" value="true" />
        <ref role="35c_gD" to="tpck:2ULFgo8_XDm" resolve="PropertyAttribute" />
      </node>
      <node concept="3uibUv" id="4wG2MBHiEar" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
      </node>
    </node>
    <node concept="Wx3nA" id="4wG2MBHiE$I" role="jymVt">
      <property role="TrG5h" value="concept_LinkAttribute" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="4wG2MBHiE$J" role="1B3o_S" />
      <node concept="35c_gC" id="4wG2MBHiE$K" role="33vP2m">
        <property role="B6XcY" value="true" />
        <ref role="35c_gD" to="tpck:2ULFgo8_XDh" resolve="LinkAttribute" />
      </node>
      <node concept="3uibUv" id="4wG2MBHiE$L" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
      </node>
    </node>
    <node concept="2tJIrI" id="4wG2MBHiDJ2" role="jymVt" />
    <node concept="2tJIrI" id="3zKvvWw1Qkm" role="jymVt" />
    <node concept="Wx3nA" id="3zKvvWw1Igt" role="jymVt">
      <property role="TrG5h" value="concept_VoidType" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3zKvvWw1Igu" role="1B3o_S" />
      <node concept="35c_gC" id="3zKvvWw1Igv" role="33vP2m">
        <ref role="35c_gD" to="tpee:fzcqZ_H" resolve="VoidType" />
      </node>
      <node concept="3uibUv" id="3zKvvWw1Igw" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
      </node>
      <node concept="z59LJ" id="3zKvvWw1R3q" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs$xs" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs$xt" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$xu" role="1PaTwD">
            <property role="3oM_SC" value="typesystem" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$xv" role="1PaTwD">
            <property role="3oM_SC" value="usages" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="3zKvvWw1J1f" role="jymVt">
      <property role="TrG5h" value="concept_SNodeType" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3zKvvWw1J1g" role="1B3o_S" />
      <node concept="35c_gC" id="3zKvvWw1J1h" role="33vP2m">
        <ref role="35c_gD" to="tp25:gzTqbfa" resolve="SNodeType" />
      </node>
      <node concept="3uibUv" id="3zKvvWw1J1i" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
      </node>
    </node>
    <node concept="Wx3nA" id="3zKvvWw221N" role="jymVt">
      <property role="TrG5h" value="ref_SNodeType_concept" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3zKvvWw221O" role="1B3o_S" />
      <node concept="3uibUv" id="3zKvvWw2iLx" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
      </node>
      <node concept="359W_D" id="3zKvvWw2amF" role="33vP2m">
        <ref role="359W_E" to="tp25:gzTqbfa" resolve="SNodeType" />
        <ref role="359W_F" to="tp25:g$ehGDh" resolve="concept" />
      </node>
    </node>
    <node concept="2tJIrI" id="3zKvvWw1Lfv" role="jymVt" />
    <node concept="Wx3nA" id="4wG2MBHiBII" role="jymVt">
      <property role="TrG5h" value="concept_IType" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="4wG2MBHiBIJ" role="1B3o_S" />
      <node concept="35c_gC" id="4wG2MBHiBIK" role="33vP2m">
        <ref role="35c_gD" to="tpck:hYa1RjM" resolve="IType" />
      </node>
      <node concept="3uibUv" id="4wG2MBHiCaD" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
      </node>
    </node>
    <node concept="Wx3nA" id="4zXXBldgRju" role="jymVt">
      <property role="TrG5h" value="concept_TypeAnnotated" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="4zXXBldgRjv" role="1B3o_S" />
      <node concept="35c_gC" id="4zXXBldgRjw" role="33vP2m">
        <ref role="35c_gD" to="tpck:4zXXBldea2D" resolve="TypeAnnotated" />
      </node>
      <node concept="3uibUv" id="4zXXBldgRGE" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
      </node>
    </node>
    <node concept="Wx3nA" id="4zXXBldgXgx" role="jymVt">
      <property role="TrG5h" value="link_TypeAnnotated_annotation" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="4zXXBldgXgy" role="1B3o_S" />
      <node concept="3uibUv" id="4zXXBldgYue" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
      </node>
      <node concept="359W_D" id="4zXXBldgXg$" role="33vP2m">
        <ref role="359W_E" to="tpck:4zXXBldea2D" resolve="TypeAnnotated" />
        <ref role="359W_F" to="tpck:4zXXBldea2E" resolve="annotation" />
      </node>
    </node>
    <node concept="2tJIrI" id="4wG2MBHiBy0" role="jymVt" />
    <node concept="Wx3nA" id="19LCuYC3WLt" role="jymVt">
      <property role="TrG5h" value="concept_RuntimeTypeVariable" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="19LCuYC3WLu" role="1B3o_S" />
      <node concept="35c_gC" id="19LCuYC3WLv" role="33vP2m">
        <property role="B6XcY" value="true" />
        <ref role="35c_gD" to="tpd4:hfSilrV" resolve="RuntimeTypeVariable" />
      </node>
      <node concept="3uibUv" id="2qaFQahqJkQ" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
      </node>
    </node>
    <node concept="Wx3nA" id="7r2v6u$nG9M" role="jymVt">
      <property role="TrG5h" value="concept_RuntimeHoleType" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="7r2v6u$nG9N" role="1B3o_S" />
      <node concept="35c_gC" id="7r2v6u$nG9O" role="33vP2m">
        <property role="B6XcY" value="true" />
        <ref role="35c_gD" to="tpd4:hTCw0t1" resolve="RuntimeHoleType" />
      </node>
      <node concept="3uibUv" id="7r2v6u$nG9P" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
      </node>
    </node>
    <node concept="2tJIrI" id="4soTJTMNmN0" role="jymVt" />
    <node concept="Wx3nA" id="48K6v0B_84r" role="jymVt">
      <property role="TrG5h" value="concept_Classifier" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="48K6v0B_84s" role="1B3o_S" />
      <node concept="35c_gC" id="48K6v0B_84t" role="33vP2m">
        <ref role="35c_gD" to="tpee:g7pOWCK" resolve="Classifier" />
      </node>
      <node concept="3uibUv" id="48K6v0B_84u" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
      </node>
      <node concept="z59LJ" id="296OPknEzQ$" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs$xw" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs$xx" role="1PaTwD">
            <property role="3oM_SC" value="java" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$xy" role="1PaTwD">
            <property role="3oM_SC" value="concepts" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$xz" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$x$" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$x_" role="1PaTwD">
            <property role="3oM_SC" value="used" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$xA" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$xB" role="1PaTwD">
            <property role="3oM_SC" value="idea" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$xC" role="1PaTwD">
            <property role="3oM_SC" value="plugin" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="296OPknDVV9" role="jymVt">
      <property role="TrG5h" value="concept_IMemberContainer" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="296OPknDVVa" role="1B3o_S" />
      <node concept="3uibUv" id="296OPknDVVb" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SInterfaceConcept" resolve="SInterfaceConcept" />
      </node>
      <node concept="35c_gC" id="296OPknDVVc" role="33vP2m">
        <ref role="35c_gD" to="tpee:hoSGL_l" resolve="IMemberContainer" />
      </node>
    </node>
    <node concept="Wx3nA" id="296OPknExEa" role="jymVt">
      <property role="TrG5h" value="concept_BaseMethodDeclaration" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="296OPknExEb" role="1B3o_S" />
      <node concept="3uibUv" id="296OPknExEc" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
      </node>
      <node concept="35c_gC" id="296OPknExEd" role="33vP2m">
        <ref role="35c_gD" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
      </node>
    </node>
    <node concept="Wx3nA" id="296OPknDu5W" role="jymVt">
      <property role="TrG5h" value="concept_InstanceMethodDeclaration" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="296OPknDu5X" role="1B3o_S" />
      <node concept="3uibUv" id="296OPknEwqq" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
      </node>
      <node concept="35c_gC" id="296OPknDFJ8" role="33vP2m">
        <ref role="35c_gD" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
      </node>
    </node>
    <node concept="Wx3nA" id="296OPknEwBM" role="jymVt">
      <property role="TrG5h" value="concept_StaticMethodDeclaration" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="296OPknEwBN" role="1B3o_S" />
      <node concept="3uibUv" id="296OPknEwBO" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
      </node>
      <node concept="35c_gC" id="296OPknEwBP" role="33vP2m">
        <ref role="35c_gD" to="tpee:fIYIFWa" resolve="StaticMethodDeclaration" />
      </node>
    </node>
    <node concept="Wx3nA" id="296OPknEwSn" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="concept_ConstructorDeclaration" />
      <node concept="3Tm1VV" id="296OPknEwSo" role="1B3o_S" />
      <node concept="3uibUv" id="296OPknEwSp" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
      </node>
      <node concept="35c_gC" id="296OPknEwSq" role="33vP2m">
        <ref role="35c_gD" to="tpee:fzclF84" resolve="ConstructorDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="4soTJTMNmbg" role="jymVt" />
    <node concept="3Tm1VV" id="1YioXbrr5pc" role="1B3o_S" />
    <node concept="Wx3nA" id="2iMJRNxJZTk" role="jymVt">
      <property role="TrG5h" value="concept_INamedConcept" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2iMJRNxJZTl" role="1B3o_S" />
      <node concept="35c_gC" id="2iMJRNxJZTp" role="33vP2m">
        <property role="B6XcY" value="true" />
        <ref role="35c_gD" to="tpck:h0TrEE$" resolve="INamedConcept" />
      </node>
      <node concept="3uibUv" id="2qaFQahqHla" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SInterfaceConcept" resolve="SInterfaceConcept" />
      </node>
    </node>
    <node concept="Wx3nA" id="2iMJRNxJZTq" role="jymVt">
      <property role="TrG5h" value="concept_BaseConcept" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2iMJRNxJZTr" role="1B3o_S" />
      <node concept="35c_gC" id="2iMJRNxJZTv" role="33vP2m">
        <property role="B6XcY" value="true" />
        <ref role="35c_gD" to="tpck:gw2VY9q" resolve="BaseConcept" />
      </node>
      <node concept="3uibUv" id="2qaFQahqHPq" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
      </node>
    </node>
    <node concept="Wx3nA" id="7BIvS$tLokT" role="jymVt">
      <property role="TrG5h" value="conceptId_BaseConcept" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="7BIvS$tLokR" role="1B3o_S" />
      <node concept="2YIFZM" id="16iccDOMhd3" role="33vP2m">
        <ref role="37wK5l" to="e8bb:~MetaIdHelper.getConcept(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="getConcept" />
        <ref role="1Pybhc" to="e8bb:~MetaIdHelper" resolve="MetaIdHelper" />
        <node concept="37vLTw" id="16iccDOMhjv" role="37wK5m">
          <ref role="3cqZAo" node="2iMJRNxJZTq" resolve="concept_BaseConcept" />
        </node>
      </node>
      <node concept="3uibUv" id="7BIvS$tM_QK" role="1tU5fm">
        <ref role="3uigEE" to="e8bb:~SConceptId" resolve="SConceptId" />
      </node>
    </node>
    <node concept="Wx3nA" id="2iMJRNxJZTw" role="jymVt">
      <property role="TrG5h" value="concept_AbstractConceptDeclaration" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2iMJRNxJZTx" role="1B3o_S" />
      <node concept="35c_gC" id="2iMJRNxJZT_" role="33vP2m">
        <property role="B6XcY" value="true" />
        <ref role="35c_gD" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
      </node>
      <node concept="3uibUv" id="2qaFQahqHSz" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
      </node>
    </node>
    <node concept="Wx3nA" id="2iMJRNxJZTA" role="jymVt">
      <property role="TrG5h" value="concept_ConceptDeclaration" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2iMJRNxJZTB" role="1B3o_S" />
      <node concept="35c_gC" id="2iMJRNxJZTF" role="33vP2m">
        <property role="B6XcY" value="true" />
        <ref role="35c_gD" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
      </node>
      <node concept="3uibUv" id="2qaFQahqHWu" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
      </node>
    </node>
    <node concept="Wx3nA" id="2iMJRNxJZTG" role="jymVt">
      <property role="TrG5h" value="concept_InterfaceConceptDeclaration" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2iMJRNxJZTH" role="1B3o_S" />
      <node concept="35c_gC" id="2iMJRNxJZTL" role="33vP2m">
        <property role="B6XcY" value="true" />
        <ref role="35c_gD" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
      </node>
      <node concept="3uibUv" id="2qaFQahqI03" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
      </node>
    </node>
    <node concept="Wx3nA" id="2iMJRNxJZTM" role="jymVt">
      <property role="TrG5h" value="concept_LinkDeclaration" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2iMJRNxJZTN" role="1B3o_S" />
      <node concept="35c_gC" id="2iMJRNxJZTR" role="33vP2m">
        <property role="B6XcY" value="true" />
        <ref role="35c_gD" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
      </node>
      <node concept="3uibUv" id="2qaFQahqI3$" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
      </node>
    </node>
    <node concept="2tJIrI" id="6QovVGOGfeO" role="jymVt" />
    <node concept="Wx3nA" id="2iMJRNxJZUI" role="jymVt">
      <property role="TrG5h" value="property_INamedConcept_name" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2iMJRNxJZUJ" role="1B3o_S" />
      <node concept="355D3s" id="2iMJRNxJZUN" role="33vP2m">
        <property role="B6XcY" value="true" />
        <ref role="355D3t" to="tpck:h0TrEE$" resolve="INamedConcept" />
        <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3uibUv" id="7BIvS$tMzic" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
    </node>
    <node concept="Wx3nA" id="2iMJRNxKAGD" role="jymVt">
      <property role="TrG5h" value="property_LinkDeclaration_role" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2iMJRNxKAGE" role="1B3o_S" />
      <node concept="355D3s" id="2iMJRNxKAGG" role="33vP2m">
        <property role="B6XcY" value="true" />
        <ref role="355D3u" to="tpce:fA0kJcN" resolve="role" />
        <ref role="355D3t" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
      </node>
      <node concept="3uibUv" id="7BIvS$tMzid" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
    </node>
    <node concept="Wx3nA" id="2iMJRNxJZV0" role="jymVt">
      <property role="TrG5h" value="property_BaseConcept_virtualPackage" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2iMJRNxJZV1" role="1B3o_S" />
      <node concept="355D3s" id="2iMJRNxJZV5" role="33vP2m">
        <property role="B6XcY" value="true" />
        <ref role="355D3t" to="tpck:gw2VY9q" resolve="BaseConcept" />
        <ref role="355D3u" to="tpck:hnGE5uv" resolve="virtualPackage" />
      </node>
      <node concept="3uibUv" id="7BIvS$tMzif" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
    </node>
    <node concept="Wx3nA" id="2iMJRNxJZUy" role="jymVt">
      <property role="TrG5h" value="link_BaseConcept_smodelAttribute" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2iMJRNxJZUz" role="1B3o_S" />
      <node concept="359W_D" id="2iMJRNxJZUB" role="33vP2m">
        <property role="B6XcY" value="true" />
        <ref role="359W_E" to="tpck:gw2VY9q" resolve="BaseConcept" />
        <ref role="359W_F" to="tpck:4uZwTti3__2" resolve="smodelAttribute" />
      </node>
      <node concept="3uibUv" id="7BIvS$tMzim" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
      </node>
    </node>
    <node concept="Wx3nA" id="1eSXJRel6Ib" role="jymVt">
      <property role="TrG5h" value="property_EnumerationMemberDeclaration_memberId" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1eSXJRel68B" role="1B3o_S" />
      <node concept="3uibUv" id="1eSXJRel6Dq" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
      <node concept="355D3s" id="1eSXJRel8d_" role="33vP2m">
        <property role="B6XcY" value="true" />
        <ref role="355D3t" to="tpce:2TR3acGo7Lw" resolve="EnumerationMemberDeclaration" />
        <ref role="355D3u" to="tpce:1eSXJRel0SS" resolve="memberId" />
      </node>
    </node>
    <node concept="2tJIrI" id="6z0EkmmFnsc" role="jymVt" />
    <node concept="Wx3nA" id="3qDC_E6GMTB" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="property_RuntimeTypeVariable_pullUp" />
      <node concept="3Tm1VV" id="3qDC_E6GOlB" role="1B3o_S" />
      <node concept="3uibUv" id="3qDC_E6GNf$" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
      <node concept="355D3s" id="3qDC_E6GNZi" role="33vP2m">
        <property role="B6XcY" value="true" />
        <ref role="355D3t" to="tpd4:hfSilrV" resolve="RuntimeTypeVariable" />
        <ref role="355D3u" to="tpd4:3qDC_E6FIdA" resolve="pullUp" />
      </node>
    </node>
    <node concept="2tJIrI" id="3qDC_E6GOpj" role="jymVt" />
    <node concept="3clFbW" id="1YioXbrr5pd" role="jymVt">
      <node concept="3cqZAl" id="1YioXbrr5pe" role="3clF45" />
      <node concept="3Tm6S6" id="6V6PZUYbP0g" role="1B3o_S" />
      <node concept="3clFbS" id="1YioXbrr5pg" role="3clF47" />
    </node>
    <node concept="2YIFZL" id="1YioXbrreN$" role="jymVt">
      <property role="TrG5h" value="getPresentation" />
      <node concept="17QB3L" id="1YioXbrreNC" role="3clF45" />
      <node concept="3Tm1VV" id="1YioXbrreNA" role="1B3o_S" />
      <node concept="3clFbS" id="1YioXbrreNB" role="3clF47">
        <node concept="3J1_TO" id="43w7Zi1h7R" role="3cqZAp">
          <node concept="3clFbS" id="43w7Zi1h7S" role="1zxBo7">
            <node concept="3cpWs6" id="43w7Zi1h8g" role="3cqZAp">
              <node concept="2OqwBi" id="43w7Zi1h8i" role="3cqZAk">
                <node concept="37vLTw" id="2BHiRxghiNf" role="2Oq$k0">
                  <ref role="3cqZAo" node="1YioXbrreND" resolve="node" />
                </node>
                <node concept="3zqWPK" id="70OdufORdwH" role="2OqNvi">
                  <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="43w7Zi1h7U" role="1zxBo5">
            <node concept="XOnhg" id="43w7Zi1h7V" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="t" />
              <node concept="nSUau" id="xvs04dGqFg" role="1tU5fm">
                <node concept="3uibUv" id="43w7Zi1h82" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="43w7Zi1h7X" role="1zc67A">
              <node concept="3cpWs6" id="43w7Zi1h8m" role="3cqZAp">
                <node concept="2OqwBi" id="1GH7SoqSF3I" role="3cqZAk">
                  <node concept="2JrnkZ" id="1GH7SoqSF4q" role="2Oq$k0">
                    <node concept="37vLTw" id="2BHiRxgmqhh" role="2JrQYb">
                      <ref role="3cqZAo" node="1YioXbrreND" resolve="node" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1GH7SoqSF4u" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1YioXbrreND" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1YioXbrreNE" role="1tU5fm">
          <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="1YioXbrrFWh" role="jymVt">
      <property role="TrG5h" value="getDetailedPresentation" />
      <node concept="17QB3L" id="1YioXbrrFWl" role="3clF45" />
      <node concept="3Tm1VV" id="1YioXbrrFWj" role="1B3o_S" />
      <node concept="3clFbS" id="1YioXbrrFWk" role="3clF47">
        <node concept="3clFbF" id="1YioXbrrFWo" role="3cqZAp">
          <node concept="2OqwBi" id="1YioXbrrFWq" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgl2Hk" role="2Oq$k0">
              <ref role="3cqZAo" node="1YioXbrrFWm" resolve="node" />
            </node>
            <node concept="3zqWPK" id="70OdufORdwJ" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:22G2W3WJ92t" resolve="getDetailedPresentation" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1YioXbrrFWm" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1YioXbrrFWn" role="1tU5fm">
          <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="7kDY1n$F1IM" role="jymVt">
      <property role="TrG5h" value="getMetaLevel" />
      <node concept="10Oyi0" id="7kDY1n$F1Ri" role="3clF45" />
      <node concept="3Tm1VV" id="7kDY1n$F1IO" role="1B3o_S" />
      <node concept="3clFbS" id="7kDY1n$F1IP" role="3clF47">
        <node concept="3clFbF" id="7kDY1n$F1Rl" role="3cqZAp">
          <node concept="2OqwBi" id="7kDY1n$F1Rn" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgm$7U" role="2Oq$k0">
              <ref role="3cqZAo" node="7kDY1n$F1Rj" resolve="node" />
            </node>
            <node concept="3zqWPK" id="70OdufORdwL" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:3t0v3yFOD1A" resolve="getMetaLevel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7kDY1n$F1Rj" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7kDY1n$F1Rk" role="1tU5fm">
          <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="7eX9cM$ZbeT" role="jymVt">
      <property role="TrG5h" value="isInstanceOfConceptDeclaration" />
      <node concept="10P_77" id="7eX9cM$ZbeX" role="3clF45" />
      <node concept="3Tm1VV" id="7eX9cM$ZbeV" role="1B3o_S" />
      <node concept="3clFbS" id="7eX9cM$ZbeW" role="3clF47">
        <node concept="3clFbJ" id="3hvjasysUfX" role="3cqZAp">
          <node concept="3clFbS" id="3hvjasysUfY" role="3clFbx">
            <node concept="3cpWs6" id="3hvjasysUg6" role="3cqZAp">
              <node concept="3clFbT" id="3hvjasysWED" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3hvjasysUg2" role="3clFbw">
            <node concept="10Nm6u" id="3hvjasysUg5" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxgmrdA" role="3uHU7B">
              <ref role="3cqZAo" node="7eX9cM$ZbeY" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4teNS_e1rsx" role="3cqZAp">
          <node concept="2OqwBi" id="4teNS_e1rXh" role="3cqZAk">
            <node concept="2OqwBi" id="4teNS_e1r_0" role="2Oq$k0">
              <node concept="37vLTw" id="4teNS_e1ryt" role="2Oq$k0">
                <ref role="3cqZAo" node="7eX9cM$ZbeY" resolve="node" />
              </node>
              <node concept="2yIwOk" id="4teNS_e1rNi" role="2OqNvi" />
            </node>
            <node concept="liA8E" id="4teNS_e1sgB" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
              <node concept="35c_gC" id="4teNS_e1srV" role="37wK5m">
                <ref role="35c_gD" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7eX9cM$ZbeY" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7eX9cM$Zbf0" role="1tU5fm" />
      </node>
    </node>
    <node concept="2YIFZL" id="4hzFhgYG2tV" role="jymVt">
      <property role="TrG5h" value="getChildLink" />
      <node concept="3uibUv" id="4hzFhgYG5Eq" role="3clF45">
        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
      </node>
      <node concept="3Tm1VV" id="4hzFhgYG2tX" role="1B3o_S" />
      <node concept="3clFbS" id="4hzFhgYG2tY" role="3clF47">
        <node concept="3clFbF" id="5gACAVBz852" role="3cqZAp">
          <node concept="2OqwBi" id="5gACAVBz8nd" role="3clFbG">
            <node concept="1PxgMI" id="5gACAVBz8eb" role="2Oq$k0">
              <node concept="chp4Y" id="5gACAVBz8eC" role="3oSUPX">
                <ref role="cht4Q" to="tpck:BpxLfMhSxq" resolve="ChildAttribute" />
              </node>
              <node concept="37vLTw" id="5gACAVBz851" role="1m5AlR">
                <ref role="3cqZAo" node="4hzFhgYG2uB" resolve="attribute" />
              </node>
            </node>
            <node concept="3zqWPK" id="70OdufORdwN" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:BpxLfMirzf" resolve="getLink" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4hzFhgYG2uB" role="3clF46">
        <property role="TrG5h" value="attribute" />
        <node concept="3uibUv" id="4hzFhgYG2uC" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="FmAKtTFIM$" role="jymVt">
      <property role="TrG5h" value="getConceptAlias" />
      <node concept="17QB3L" id="FmAKtTFIM_" role="3clF45" />
      <node concept="3Tm1VV" id="FmAKtTFIMA" role="1B3o_S" />
      <node concept="3clFbS" id="FmAKtTFIMB" role="3clF47">
        <node concept="3clFbF" id="FmAKtTFIMC" role="3cqZAp">
          <node concept="2OqwBi" id="2wdLO7KhHAI" role="3clFbG">
            <node concept="3TrcHB" id="2wdLO7KhHAJ" role="2OqNvi">
              <ref role="3TsBF5" to="tpce:4qF2Hm2r7ja" resolve="conceptAlias" />
            </node>
            <node concept="37vLTw" id="2BHiRxgmI7Z" role="2Oq$k0">
              <ref role="3cqZAo" node="FmAKtTFIMG" resolve="concept" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="FmAKtTFIMG" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3Tqbb2" id="FmAKtTFIMH" role="1tU5fm">
          <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="5hkhCOa5zXt" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="isSideTransformInfo" />
      <node concept="3clFbS" id="5hkhCOa5yYU" role="3clF47">
        <node concept="3cpWs6" id="5hkhCOa5FE2" role="3cqZAp">
          <node concept="2OqwBi" id="5hkhCOa5Av8" role="3cqZAk">
            <node concept="2OqwBi" id="5hkhCOa5A5D" role="2Oq$k0">
              <node concept="37vLTw" id="5hkhCOa5_Tq" role="2Oq$k0">
                <ref role="3cqZAo" node="5hkhCOa5$W4" resolve="node" />
              </node>
              <node concept="2yIwOk" id="5hkhCOa5Aoo" role="2OqNvi" />
            </node>
            <node concept="liA8E" id="5hkhCOa5F4Y" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
              <node concept="35c_gC" id="5hkhCOa5F7t" role="37wK5m">
                <ref role="35c_gD" to="tpck:Fg1jLUUh_d" resolve="SideTransformInfo" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="5hkhCOa5$VZ" role="3clF45" />
      <node concept="3Tm1VV" id="5hkhCOa5yYT" role="1B3o_S" />
      <node concept="37vLTG" id="5hkhCOa5$W4" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5hkhCOa5$W3" role="1tU5fm" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6rh3OXF7poT">
    <property role="TrG5h" value="ConceptDeclarationScanner" />
    <node concept="312cEg" id="6rh3OXF7K$c" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myExternalConcepts" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6rh3OXF7KsK" role="1B3o_S" />
      <node concept="3uibUv" id="6rh3OXF7Kza" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3Tqbb2" id="6rh3OXF7Kzp" role="11_B2D">
          <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
        </node>
      </node>
      <node concept="2ShNRf" id="6rh3OXF7KAL" role="33vP2m">
        <node concept="1pGfFk" id="6rh3OXF7M9p" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
          <node concept="3Tqbb2" id="6rh3OXF7Myb" role="1pMfVU">
            <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6rh3OXF7MJF" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myExternalIfaces" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6rh3OXF7MJG" role="1B3o_S" />
      <node concept="3uibUv" id="6rh3OXF7MJH" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3Tqbb2" id="6rh3OXF7MJI" role="11_B2D">
          <ref role="ehGHo" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
        </node>
      </node>
      <node concept="2ShNRf" id="6rh3OXF7MJJ" role="33vP2m">
        <node concept="1pGfFk" id="6rh3OXF7MJK" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
          <node concept="3Tqbb2" id="6rh3OXF7MJL" role="1pMfVU">
            <ref role="ehGHo" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6rh3OXF8g6J" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myExtendedModels" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6rh3OXF8fNH" role="1B3o_S" />
      <node concept="3uibUv" id="6rh3OXF8g5e" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="H_c77" id="6rh3OXF8g6E" role="11_B2D" />
      </node>
      <node concept="2ShNRf" id="6rh3OXF8gqa" role="33vP2m">
        <node concept="1pGfFk" id="6rh3OXF8gH2" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
          <node concept="H_c77" id="6rh3OXF8h63" role="1pMfVU" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2iPx5T$9NXn" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myExtendedModules" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2iPx5T$9NXo" role="1B3o_S" />
      <node concept="3uibUv" id="2iPx5T$9NXp" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="2iPx5T$9Pzt" role="11_B2D">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="2ShNRf" id="2iPx5T$9NXr" role="33vP2m">
        <node concept="1pGfFk" id="2iPx5T$9NXs" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
          <node concept="3uibUv" id="2iPx5T$9Q0G" role="1pMfVU">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="57J37wzeloa" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myExcludeLangCore" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="57J37wzejWx" role="1B3o_S" />
      <node concept="10P_77" id="57J37wzelnV" role="1tU5fm" />
      <node concept="3clFbT" id="57J37wzenbs" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="2tJIrI" id="57J37wze2Y_" role="jymVt" />
    <node concept="3clFbW" id="57J37wze7hV" role="jymVt">
      <node concept="3cqZAl" id="57J37wze7hY" role="3clF45" />
      <node concept="3Tm1VV" id="57J37wze7hZ" role="1B3o_S" />
      <node concept="3clFbS" id="57J37wze7i0" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="57J37wze8H3" role="jymVt" />
    <node concept="3clFb_" id="57J37wzeaaI" role="jymVt">
      <property role="TrG5h" value="omitLangCore" />
      <node concept="3uibUv" id="57J37wzeb_T" role="3clF45">
        <ref role="3uigEE" node="6rh3OXF7poT" resolve="ConceptDeclarationScanner" />
      </node>
      <node concept="3Tm1VV" id="57J37wzeaaL" role="1B3o_S" />
      <node concept="3clFbS" id="57J37wzeaaM" role="3clF47">
        <node concept="3clFbF" id="57J37wzemR6" role="3cqZAp">
          <node concept="37vLTI" id="57J37wzen6v" role="3clFbG">
            <node concept="3clFbT" id="57J37wzen8h" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="57J37wzemR4" role="37vLTJ">
              <ref role="3cqZAo" node="57J37wzeloa" resolve="myExcludeLangCore" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="57J37wzecYB" role="3cqZAp">
          <node concept="Xjq3P" id="57J37wzecYA" role="3clFbG" />
        </node>
      </node>
      <node concept="P$JXv" id="57J37wzeh8l" role="lGtFl">
        <node concept="x79VA" id="57J37wzeh8o" role="3nqlJM">
          <property role="x79VB" value="" />
          <node concept="1PaTwC" id="1E1X3WHs$yr" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHs$ys" role="1PaTwD">
              <property role="3oM_SC" value="{@code" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs$yt" role="1PaTwD">
              <property role="3oM_SC" value="this}" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs$yu" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs$yv" role="1PaTwD">
              <property role="3oM_SC" value="convenience" />
            </node>
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs$xD" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs$xE" role="1PaTwD">
            <property role="3oM_SC" value="As" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$xF" role="1PaTwD">
            <property role="3oM_SC" value="long" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$xG" role="1PaTwD">
            <property role="3oM_SC" value="as" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$xH" role="1PaTwD">
            <property role="3oM_SC" value="languages" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$xI" role="1PaTwD">
            <property role="3oM_SC" value="implicitly" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$xJ" role="1PaTwD">
            <property role="3oM_SC" value="extend" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$xK" role="1PaTwD">
            <property role="3oM_SC" value="j.m.lang.core," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$xL" role="1PaTwD">
            <property role="3oM_SC" value="any" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$xM" role="1PaTwD">
            <property role="3oM_SC" value="ConceptDeclaration" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$xN" role="1PaTwD">
            <property role="3oM_SC" value="implies" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$xO" role="1PaTwD">
            <property role="3oM_SC" value="import" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$xP" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs$xQ" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs$xR" role="1PaTwD">
            <property role="3oM_SC" value="j.m.lang.core.structure.BaseConcept." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs$xS" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs$xT" role="1PaTwD">
            <property role="3oM_SC" value="By" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$xU" role="1PaTwD">
            <property role="3oM_SC" value="default," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$xV" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$xW" role="1PaTwD">
            <property role="3oM_SC" value="scanner" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$xX" role="1PaTwD">
            <property role="3oM_SC" value="gives" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$xY" role="1PaTwD">
            <property role="3oM_SC" value="all" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$xZ" role="1PaTwD">
            <property role="3oM_SC" value="cross-model" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$y0" role="1PaTwD">
            <property role="3oM_SC" value="dependencies," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$y1" role="1PaTwD">
            <property role="3oM_SC" value="including" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$y2" role="1PaTwD">
            <property role="3oM_SC" value="one" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$y3" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="1Vtdud" id="1E1X3WHs$y4" role="1PaTwD">
            <node concept="1VuTSG" id="1E1X3WHs$y5" role="1Vtduc">
              <node concept="1PaTwC" id="1E1X3WHs$y8" role="2JaDBN">
                <node concept="3oM_SD" id="1E1X3WHs$y9" role="1PaTwD">
                  <property role="3oM_SC" value="BaseConcept" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$ya" role="1PaTwD">
            <property role="3oM_SC" value="." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs$yb" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs$yc" role="1PaTwD">
            <property role="3oM_SC" value="However," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$yd" role="1PaTwD">
            <property role="3oM_SC" value="generally," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$ye" role="1PaTwD">
            <property role="3oM_SC" value="there's" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$yf" role="1PaTwD">
            <property role="3oM_SC" value="little" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$yg" role="1PaTwD">
            <property role="3oM_SC" value="use" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$yh" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$yi" role="1PaTwD">
            <property role="3oM_SC" value="explicit" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$yj" role="1PaTwD">
            <property role="3oM_SC" value="lang.core" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$yk" role="1PaTwD">
            <property role="3oM_SC" value="import" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$yl" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$ym" role="1PaTwD">
            <property role="3oM_SC" value="we" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$yn" role="1PaTwD">
            <property role="3oM_SC" value="can" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$yo" role="1PaTwD">
            <property role="3oM_SC" value="safely" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$yp" role="1PaTwD">
            <property role="3oM_SC" value="omit" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$yq" role="1PaTwD">
            <property role="3oM_SC" value="it." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6rh3OXF7Kyc" role="jymVt" />
    <node concept="3clFb_" id="6rh3OXF7p_D" role="jymVt">
      <property role="TrG5h" value="scan" />
      <node concept="3uibUv" id="6rh3OXF7pA1" role="3clF45">
        <ref role="3uigEE" node="6rh3OXF7poT" resolve="ConceptDeclarationScanner" />
      </node>
      <node concept="3Tm1VV" id="6rh3OXF7p_F" role="1B3o_S" />
      <node concept="3clFbS" id="6rh3OXF7p_H" role="3clF47">
        <node concept="3cpWs8" id="6rh3OXF7DA6" role="3cqZAp">
          <node concept="3cpWsn" id="6rh3OXF7DA7" role="3cpWs9">
            <property role="TrG5h" value="roots" />
            <node concept="2I9FWS" id="6rh3OXF7DA4" role="1tU5fm" />
            <node concept="2OqwBi" id="6rh3OXF7DA8" role="33vP2m">
              <node concept="37vLTw" id="6rh3OXF7DA9" role="2Oq$k0">
                <ref role="3cqZAo" node="6rh3OXF7pA_" resolve="m" />
              </node>
              <node concept="2RRcyG" id="6rh3OXF7DAa" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="6rh3OXF7ug2" role="3cqZAp">
          <node concept="3clFbS" id="6rh3OXF7ug5" role="2LFqv$">
            <node concept="3cpWs8" id="6rh3OXF7RHB" role="3cqZAp">
              <node concept="3cpWsn" id="6rh3OXF7RHC" role="3cpWs9">
                <property role="TrG5h" value="ex" />
                <node concept="3Tqbb2" id="6rh3OXF7RHA" role="1tU5fm">
                  <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                </node>
                <node concept="2OqwBi" id="6rh3OXF7RHD" role="33vP2m">
                  <node concept="37vLTw" id="6rh3OXF7RHE" role="2Oq$k0">
                    <ref role="3cqZAo" node="6rh3OXF7ug6" resolve="cd" />
                  </node>
                  <node concept="3TrEf2" id="6rh3OXF7RHF" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpce:f_TJDff" resolve="extends" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="2iPx5T$9GvY" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXo5Xd" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXo5Xe" role="1PaTwD">
                  <property role="3oM_SC" value="ex" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo5Xf" role="1PaTwD">
                  <property role="3oM_SC" value="could" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo5Xg" role="1PaTwD">
                  <property role="3oM_SC" value="be" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo5Xh" role="1PaTwD">
                  <property role="3oM_SC" value="null" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo5Xi" role="1PaTwD">
                  <property role="3oM_SC" value="if" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo5Xj" role="1PaTwD">
                  <property role="3oM_SC" value="no" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo5Xk" role="1PaTwD">
                  <property role="3oM_SC" value="explicit" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo5Xl" role="1PaTwD">
                  <property role="3oM_SC" value="BaseConcept" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo5Xm" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo5Xn" role="1PaTwD">
                  <property role="3oM_SC" value="super" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6rh3OXF7Nsl" role="3cqZAp">
              <node concept="1Wc70l" id="2iPx5T$9FP4" role="3clFbw">
                <node concept="3y3z36" id="2iPx5T$9GbK" role="3uHU7B">
                  <node concept="10Nm6u" id="2iPx5T$9Gec" role="3uHU7w" />
                  <node concept="37vLTw" id="2iPx5T$9FZ1" role="3uHU7B">
                    <ref role="3cqZAo" node="6rh3OXF7RHC" resolve="ex" />
                  </node>
                </node>
                <node concept="3y3z36" id="6rh3OXF7O8_" role="3uHU7w">
                  <node concept="37vLTw" id="6rh3OXF7Obp" role="3uHU7w">
                    <ref role="3cqZAo" node="6rh3OXF7pA_" resolve="m" />
                  </node>
                  <node concept="2OqwBi" id="6rh3OXF7NCc" role="3uHU7B">
                    <node concept="37vLTw" id="6rh3OXF7RHG" role="2Oq$k0">
                      <ref role="3cqZAo" node="6rh3OXF7RHC" resolve="ex" />
                    </node>
                    <node concept="I4A8Y" id="6rh3OXF7NOp" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6rh3OXF7Nsn" role="3clFbx">
                <node concept="3clFbF" id="6rh3OXF7Oeo" role="3cqZAp">
                  <node concept="2OqwBi" id="6rh3OXF7OOM" role="3clFbG">
                    <node concept="37vLTw" id="6rh3OXF7Oen" role="2Oq$k0">
                      <ref role="3cqZAo" node="6rh3OXF7K$c" resolve="myExternalConcepts" />
                    </node>
                    <node concept="liA8E" id="6rh3OXF7Q9h" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                      <node concept="37vLTw" id="6rh3OXF7RWC" role="37wK5m">
                        <ref role="3cqZAo" node="6rh3OXF7RHC" resolve="ex" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="6rh3OXF7Sr2" role="3cqZAp">
              <node concept="3clFbS" id="6rh3OXF7Sr4" role="2LFqv$">
                <node concept="3clFbJ" id="6rh3OXF804b" role="3cqZAp">
                  <node concept="3clFbS" id="6rh3OXF804d" role="3clFbx">
                    <node concept="3SKdUt" id="4PXMYyZ77WV" role="3cqZAp">
                      <node concept="1PaTwC" id="4PXMYyZ77WW" role="1aUNEU">
                        <node concept="3oM_SD" id="4PXMYyZ79KC" role="1PaTwD">
                          <property role="3oM_SC" value="we" />
                        </node>
                        <node concept="3oM_SD" id="4PXMYyZ79KE" role="1PaTwD">
                          <property role="3oM_SC" value="respect" />
                        </node>
                        <node concept="3oM_SD" id="4PXMYyZ79KH" role="1PaTwD">
                          <property role="3oM_SC" value="'marker" />
                        </node>
                        <node concept="3oM_SD" id="4PXMYyZ79KL" role="1PaTwD">
                          <property role="3oM_SC" value="iface'" />
                        </node>
                        <node concept="3oM_SD" id="4PXMYyZ79KQ" role="1PaTwD">
                          <property role="3oM_SC" value="attribute" />
                        </node>
                        <node concept="3oM_SD" id="4PXMYyZ79KW" role="1PaTwD">
                          <property role="3oM_SC" value="for" />
                        </node>
                        <node concept="3oM_SD" id="4PXMYyZ79L3" role="1PaTwD">
                          <property role="3oM_SC" value="the" />
                        </node>
                        <node concept="3oM_SD" id="4PXMYyZ79Lb" role="1PaTwD">
                          <property role="3oM_SC" value="directly" />
                        </node>
                        <node concept="3oM_SD" id="4PXMYyZ79LD" role="1PaTwD">
                          <property role="3oM_SC" value="implemented" />
                        </node>
                        <node concept="3oM_SD" id="4PXMYyZ79MU" role="1PaTwD">
                          <property role="3oM_SC" value="interfaces," />
                        </node>
                        <node concept="3oM_SD" id="4PXMYyZ79N5" role="1PaTwD">
                          <property role="3oM_SC" value="and" />
                        </node>
                        <node concept="3oM_SD" id="4PXMYyZ79Nh" role="1PaTwD">
                          <property role="3oM_SC" value="don't" />
                        </node>
                        <node concept="3oM_SD" id="4PXMYyZ79Nu" role="1PaTwD">
                          <property role="3oM_SC" value="care" />
                        </node>
                        <node concept="3oM_SD" id="4PXMYyZ79NG" role="1PaTwD">
                          <property role="3oM_SC" value="if" />
                        </node>
                        <node concept="3oM_SD" id="4PXMYyZ79NV" role="1PaTwD">
                          <property role="3oM_SC" value="its" />
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="4PXMYyZ7bGr" role="3cqZAp">
                      <node concept="1PaTwC" id="4PXMYyZ7bGs" role="1aUNEU">
                        <node concept="3oM_SD" id="4PXMYyZ7dol" role="1PaTwD">
                          <property role="3oM_SC" value="superinterface" />
                        </node>
                        <node concept="3oM_SD" id="4PXMYyZ7do9" role="1PaTwD">
                          <property role="3oM_SC" value="may" />
                        </node>
                        <node concept="3oM_SD" id="4PXMYyZ7doc" role="1PaTwD">
                          <property role="3oM_SC" value="be" />
                        </node>
                        <node concept="3oM_SD" id="4PXMYyZ7dop" role="1PaTwD">
                          <property role="3oM_SC" value="denoted" />
                        </node>
                        <node concept="3oM_SD" id="4PXMYyZ7dou" role="1PaTwD">
                          <property role="3oM_SC" value="as" />
                        </node>
                        <node concept="3oM_SD" id="4PXMYyZ7do$" role="1PaTwD">
                          <property role="3oM_SC" value="marker." />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6rh3OXF80Qk" role="3cqZAp">
                      <node concept="2OqwBi" id="6rh3OXF81sI" role="3clFbG">
                        <node concept="37vLTw" id="6rh3OXF80Qi" role="2Oq$k0">
                          <ref role="3cqZAo" node="6rh3OXF7MJF" resolve="myExternalIfaces" />
                        </node>
                        <node concept="liA8E" id="6rh3OXF82Ln" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                          <node concept="37vLTw" id="6rh3OXF837_" role="37wK5m">
                            <ref role="3cqZAo" node="6rh3OXF7Sr5" resolve="icd" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="4m7OOLmEljF" role="3clFbw">
                    <node concept="2OqwBi" id="4m7OOLmEyoh" role="3uHU7w">
                      <node concept="2OqwBi" id="4m7OOLmEsaZ" role="2Oq$k0">
                        <node concept="37vLTw" id="4m7OOLmEnRf" role="2Oq$k0">
                          <ref role="3cqZAo" node="6rh3OXF7Sr5" resolve="icd" />
                        </node>
                        <node concept="3CFZ6_" id="4m7OOLmEuEd" role="2OqNvi">
                          <node concept="3CFYIy" id="4m7OOLmEwtR" role="3CFYIz">
                            <ref role="3CFYIx" to="tpce:4PXMYyZ4PZg" resolve="MarkerInterfaceAttribute" />
                          </node>
                        </node>
                      </node>
                      <node concept="3w_OXm" id="4m7OOLmE$nL" role="2OqNvi" />
                    </node>
                    <node concept="3y3z36" id="6rh3OXF80Ku" role="3uHU7B">
                      <node concept="2OqwBi" id="6rh3OXF80g5" role="3uHU7B">
                        <node concept="37vLTw" id="6rh3OXF804U" role="2Oq$k0">
                          <ref role="3cqZAo" node="6rh3OXF7Sr5" resolve="icd" />
                        </node>
                        <node concept="I4A8Y" id="6rh3OXF80si" role="2OqNvi" />
                      </node>
                      <node concept="37vLTw" id="6rh3OXF80Ni" role="3uHU7w">
                        <ref role="3cqZAo" node="6rh3OXF7pA_" resolve="m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="6rh3OXF7Sr5" role="1Duv9x">
                <property role="TrG5h" value="icd" />
                <node concept="3Tqbb2" id="6rh3OXF7SFf" role="1tU5fm">
                  <ref role="ehGHo" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                </node>
              </node>
              <node concept="2OqwBi" id="6rh3OXF7XlH" role="1DdaDG">
                <node concept="2OqwBi" id="6rh3OXF7UgB" role="2Oq$k0">
                  <node concept="37vLTw" id="6rh3OXF7TSX" role="2Oq$k0">
                    <ref role="3cqZAo" node="6rh3OXF7ug6" resolve="cd" />
                  </node>
                  <node concept="3Tsc0h" id="6rh3OXF7U_i" role="2OqNvi">
                    <ref role="3TtcxE" to="tpce:h0Pzm$Y" resolve="implements" />
                  </node>
                </node>
                <node concept="13MTOL" id="6rh3OXF7YN9" role="2OqNvi">
                  <ref role="13MTZf" to="tpce:h0PrY0D" resolve="intfc" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6rh3OXF7ug6" role="1Duv9x">
            <property role="TrG5h" value="cd" />
            <node concept="3Tqbb2" id="6rh3OXF7v8K" role="1tU5fm">
              <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
            </node>
          </node>
          <node concept="2OqwBi" id="6rh3OXF7EkP" role="1DdaDG">
            <node concept="37vLTw" id="6rh3OXF7DAb" role="2Oq$k0">
              <ref role="3cqZAo" node="6rh3OXF7DA7" resolve="roots" />
            </node>
            <node concept="v3k3i" id="6rh3OXF7FNv" role="2OqNvi">
              <node concept="chp4Y" id="6rh3OXF7FOt" role="v3oSu">
                <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="6rh3OXF7Gqu" role="3cqZAp">
          <node concept="3clFbS" id="6rh3OXF7Gqw" role="2LFqv$">
            <node concept="1DcWWT" id="6rh3OXF87p1" role="3cqZAp">
              <node concept="3clFbS" id="6rh3OXF87p3" role="2LFqv$">
                <node concept="3clFbJ" id="6rh3OXF83tW" role="3cqZAp">
                  <node concept="3clFbS" id="6rh3OXF83tY" role="3clFbx">
                    <node concept="3SKdUt" id="4m7OOLmEIls" role="3cqZAp">
                      <node concept="1PaTwC" id="4m7OOLmEIlt" role="1aUNEU">
                        <node concept="3oM_SD" id="4m7OOLmEKWQ" role="1PaTwD">
                          <property role="3oM_SC" value="XXX" />
                        </node>
                        <node concept="3oM_SD" id="4m7OOLmEKWS" role="1PaTwD">
                          <property role="3oM_SC" value="again," />
                        </node>
                        <node concept="3oM_SD" id="4m7OOLmEKWV" role="1PaTwD">
                          <property role="3oM_SC" value="marker" />
                        </node>
                        <node concept="3oM_SD" id="4m7OOLmEKWZ" role="1PaTwD">
                          <property role="3oM_SC" value="interface" />
                        </node>
                        <node concept="3oM_SD" id="4m7OOLmEKX4" role="1PaTwD">
                          <property role="3oM_SC" value="directly" />
                        </node>
                        <node concept="3oM_SD" id="4m7OOLmEKXa" role="1PaTwD">
                          <property role="3oM_SC" value="extended" />
                        </node>
                        <node concept="3oM_SD" id="4m7OOLmEKXh" role="1PaTwD">
                          <property role="3oM_SC" value="does" />
                        </node>
                        <node concept="3oM_SD" id="4m7OOLmEKXy" role="1PaTwD">
                          <property role="3oM_SC" value="not" />
                        </node>
                        <node concept="3oM_SD" id="4m7OOLmEKXp" role="1PaTwD">
                          <property role="3oM_SC" value="constitute" />
                        </node>
                        <node concept="3oM_SD" id="4m7OOLmEKXG" role="1PaTwD">
                          <property role="3oM_SC" value="'extends'" />
                        </node>
                        <node concept="3oM_SD" id="4m7OOLmEKXR" role="1PaTwD">
                          <property role="3oM_SC" value="for" />
                        </node>
                        <node concept="3oM_SD" id="4m7OOLmEKY3" role="1PaTwD">
                          <property role="3oM_SC" value="languages" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6rh3OXF84g5" role="3cqZAp">
                      <node concept="2OqwBi" id="6rh3OXF84Qv" role="3clFbG">
                        <node concept="37vLTw" id="6rh3OXF84g3" role="2Oq$k0">
                          <ref role="3cqZAo" node="6rh3OXF7MJF" resolve="myExternalIfaces" />
                        </node>
                        <node concept="liA8E" id="6rh3OXF85$b" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                          <node concept="37vLTw" id="6rh3OXF8eCv" role="37wK5m">
                            <ref role="3cqZAo" node="6rh3OXF87p4" resolve="iface" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="4PXMYyZ6Rdu" role="3clFbw">
                    <node concept="2OqwBi" id="4PXMYyZ71$K" role="3uHU7w">
                      <node concept="2OqwBi" id="4PXMYyZ6VN9" role="2Oq$k0">
                        <node concept="37vLTw" id="4PXMYyZ6TNO" role="2Oq$k0">
                          <ref role="3cqZAo" node="6rh3OXF87p4" resolve="iface" />
                        </node>
                        <node concept="3CFZ6_" id="4PXMYyZ6XQO" role="2OqNvi">
                          <node concept="3CFYIy" id="4PXMYyZ6ZEu" role="3CFYIz">
                            <ref role="3CFYIx" to="tpce:4PXMYyZ4PZg" resolve="MarkerInterfaceAttribute" />
                          </node>
                        </node>
                      </node>
                      <node concept="3w_OXm" id="4PXMYyZ73z_" role="2OqNvi" />
                    </node>
                    <node concept="3y3z36" id="6rh3OXF84af" role="3uHU7B">
                      <node concept="2OqwBi" id="6rh3OXF83DQ" role="3uHU7B">
                        <node concept="37vLTw" id="6rh3OXF8eyf" role="2Oq$k0">
                          <ref role="3cqZAo" node="6rh3OXF87p4" resolve="iface" />
                        </node>
                        <node concept="I4A8Y" id="6rh3OXF83Q3" role="2OqNvi" />
                      </node>
                      <node concept="37vLTw" id="6rh3OXF84d3" role="3uHU7w">
                        <ref role="3cqZAo" node="6rh3OXF7pA_" resolve="m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="6rh3OXF87p4" role="1Duv9x">
                <property role="TrG5h" value="iface" />
                <node concept="3Tqbb2" id="6rh3OXF8827" role="1tU5fm">
                  <ref role="ehGHo" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                </node>
              </node>
              <node concept="2OqwBi" id="6rh3OXF8ciF" role="1DdaDG">
                <node concept="2OqwBi" id="6rh3OXF891e" role="2Oq$k0">
                  <node concept="37vLTw" id="6rh3OXF88yl" role="2Oq$k0">
                    <ref role="3cqZAo" node="6rh3OXF7Gqx" resolve="icd" />
                  </node>
                  <node concept="3Tsc0h" id="6rh3OXF89t8" role="2OqNvi">
                    <ref role="3TtcxE" to="tpce:h0PrDRO" resolve="extends" />
                  </node>
                </node>
                <node concept="13MTOL" id="6rh3OXF8dRm" role="2OqNvi">
                  <ref role="13MTZf" to="tpce:h0PrY0D" resolve="intfc" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6rh3OXF7Gqx" role="1Duv9x">
            <property role="TrG5h" value="icd" />
            <node concept="3Tqbb2" id="6rh3OXF7GCF" role="1tU5fm">
              <ref role="ehGHo" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
            </node>
          </node>
          <node concept="2OqwBi" id="6rh3OXF7IAk" role="1DdaDG">
            <node concept="37vLTw" id="6rh3OXF7H6s" role="2Oq$k0">
              <ref role="3cqZAo" node="6rh3OXF7DA7" resolve="roots" />
            </node>
            <node concept="v3k3i" id="6rh3OXF7KbC" role="2OqNvi">
              <node concept="chp4Y" id="6rh3OXF7Kl0" role="v3oSu">
                <ref role="cht4Q" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="6rh3OXF8m8z" role="3cqZAp">
          <node concept="3clFbS" id="6rh3OXF8m8_" role="2LFqv$">
            <node concept="3clFbF" id="6rh3OXF8nH0" role="3cqZAp">
              <node concept="2OqwBi" id="6rh3OXF8o8B" role="3clFbG">
                <node concept="37vLTw" id="6rh3OXF8nGY" role="2Oq$k0">
                  <ref role="3cqZAo" node="6rh3OXF8g6J" resolve="myExtendedModels" />
                </node>
                <node concept="liA8E" id="6rh3OXF8p9m" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="2OqwBi" id="6rh3OXF8pFx" role="37wK5m">
                    <node concept="37vLTw" id="6rh3OXF8pqW" role="2Oq$k0">
                      <ref role="3cqZAo" node="6rh3OXF8m8A" resolve="cd" />
                    </node>
                    <node concept="I4A8Y" id="6rh3OXF8qmz" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6rh3OXF8m8A" role="1Duv9x">
            <property role="TrG5h" value="cd" />
            <node concept="3Tqbb2" id="6rh3OXF8mB1" role="1tU5fm">
              <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
            </node>
          </node>
          <node concept="37vLTw" id="6rh3OXF8mZE" role="1DdaDG">
            <ref role="3cqZAo" node="6rh3OXF7K$c" resolve="myExternalConcepts" />
          </node>
        </node>
        <node concept="3SKdUt" id="6rh3OXF8xRR" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo5Xo" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo5Xp" role="1PaTwD">
              <property role="3oM_SC" value="XXX" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Xq" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Xr" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Xs" role="1PaTwD">
              <property role="3oM_SC" value="time" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Xt" role="1PaTwD">
              <property role="3oM_SC" value="being," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Xu" role="1PaTwD">
              <property role="3oM_SC" value="consider" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Xv" role="1PaTwD">
              <property role="3oM_SC" value="implements" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Xw" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Xx" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Xy" role="1PaTwD">
              <property role="3oM_SC" value="CD" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Xz" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5X$" role="1PaTwD">
              <property role="3oM_SC" value="'extends'" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5X_" role="1PaTwD">
              <property role="3oM_SC" value="relation" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5XA" role="1PaTwD">
              <property role="3oM_SC" value="between" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5XB" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5XC" role="1PaTwD">
              <property role="3oM_SC" value="languages," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5XD" role="1PaTwD">
              <property role="3oM_SC" value="although" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5XE" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5XF" role="1PaTwD">
              <property role="3oM_SC" value="needs" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5XG" role="1PaTwD">
              <property role="3oM_SC" value="extra" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5XH" role="1PaTwD">
              <property role="3oM_SC" value="consideration" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6rh3OXF8$H2" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo5XI" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo5XJ" role="1PaTwD">
              <property role="3oM_SC" value="perhaps," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5XK" role="1PaTwD">
              <property role="3oM_SC" value="shall" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5XL" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5XM" role="1PaTwD">
              <property role="3oM_SC" value="treat" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5XN" role="1PaTwD">
              <property role="3oM_SC" value="CD.implements" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5XO" role="1PaTwD">
              <property role="3oM_SC" value="(but" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5XP" role="1PaTwD">
              <property role="3oM_SC" value="still" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5XQ" role="1PaTwD">
              <property role="3oM_SC" value="ICD.extends)" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5XR" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5XS" role="1PaTwD">
              <property role="3oM_SC" value="mandatory" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5XT" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5XU" role="1PaTwD">
              <property role="3oM_SC" value="'extends'" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5XV" role="1PaTwD">
              <property role="3oM_SC" value="between" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5XW" role="1PaTwD">
              <property role="3oM_SC" value="languages," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5XX" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5XY" role="1PaTwD">
              <property role="3oM_SC" value="it's" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5XZ" role="1PaTwD">
              <property role="3oM_SC" value="common" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Y0" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Y1" role="1PaTwD">
              <property role="3oM_SC" value="see" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Y2" role="1PaTwD">
              <property role="3oM_SC" value="marker" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Y3" role="1PaTwD">
              <property role="3oM_SC" value="interfaces" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6rh3OXF8Byh" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo5Y4" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo5Y5" role="1PaTwD">
              <property role="3oM_SC" value="(like" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Y6" role="1PaTwD">
              <property role="3oM_SC" value="IMainClass)" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Y7" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Y8" role="1PaTwD">
              <property role="3oM_SC" value="bring" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Y9" role="1PaTwD">
              <property role="3oM_SC" value="(sometimes" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Ya" role="1PaTwD">
              <property role="3oM_SC" value="huge)" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Yb" role="1PaTwD">
              <property role="3oM_SC" value="dependency" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Yc" role="1PaTwD">
              <property role="3oM_SC" value="hierarchy" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Yd" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Ye" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Yf" role="1PaTwD">
              <property role="3oM_SC" value="added" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Yg" role="1PaTwD">
              <property role="3oM_SC" value="value." />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="6rh3OXF8rqu" role="3cqZAp">
          <node concept="3clFbS" id="6rh3OXF8rqw" role="2LFqv$">
            <node concept="3clFbF" id="6rh3OXF8tF6" role="3cqZAp">
              <node concept="2OqwBi" id="6rh3OXF8u6H" role="3clFbG">
                <node concept="37vLTw" id="6rh3OXF8tF4" role="2Oq$k0">
                  <ref role="3cqZAo" node="6rh3OXF8g6J" resolve="myExtendedModels" />
                </node>
                <node concept="liA8E" id="6rh3OXF8v7s" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="2OqwBi" id="6rh3OXF8vDB" role="37wK5m">
                    <node concept="37vLTw" id="6rh3OXF8vp2" role="2Oq$k0">
                      <ref role="3cqZAo" node="6rh3OXF8rqx" resolve="cd" />
                    </node>
                    <node concept="I4A8Y" id="6rh3OXF8wkD" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6rh3OXF8rqx" role="1Duv9x">
            <property role="TrG5h" value="cd" />
            <node concept="3Tqbb2" id="6rh3OXF8stC" role="1tU5fm">
              <ref role="ehGHo" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
            </node>
          </node>
          <node concept="37vLTw" id="6rh3OXF8sQf" role="1DdaDG">
            <ref role="3cqZAo" node="6rh3OXF7MJF" resolve="myExternalIfaces" />
          </node>
        </node>
        <node concept="3clFbJ" id="57J37wzeo_q" role="3cqZAp">
          <node concept="3clFbS" id="57J37wzeo_s" role="3clFbx">
            <node concept="3SKdUt" id="57J37wze$Bl" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXo5Yh" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXo5Yi" role="1PaTwD">
                  <property role="3oM_SC" value="here" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo5Yj" role="1PaTwD">
                  <property role="3oM_SC" value="comes" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo5Yk" role="1PaTwD">
                  <property role="3oM_SC" value="an" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo5Yl" role="1PaTwD">
                  <property role="3oM_SC" value="odd" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo5Ym" role="1PaTwD">
                  <property role="3oM_SC" value="way" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo5Yn" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo5Yo" role="1PaTwD">
                  <property role="3oM_SC" value="deal" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo5Yp" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo5Yq" role="1PaTwD">
                  <property role="3oM_SC" value="missing" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo5Yr" role="1PaTwD">
                  <property role="3oM_SC" value="model-reference" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo5Ys" role="1PaTwD">
                  <property role="3oM_SC" value="expression" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4Bh6nQ4wIZM" role="3cqZAp">
              <node concept="3cpWsn" id="4Bh6nQ4wIZN" role="3cpWs9">
                <property role="TrG5h" value="langCoreStructureModelRef" />
                <node concept="3uibUv" id="4Bh6nQ4wIZ7" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                </node>
                <node concept="2OqwBi" id="4Bh6nQ4wIZO" role="33vP2m">
                  <node concept="2JrnkZ" id="7uvxILPmWR_" role="2Oq$k0">
                    <node concept="2tJFMh" id="7uvxILPmWR$" role="2JrQYb">
                      <node concept="ZC_QK" id="7uvxILPmWRz" role="2tJFKM">
                        <ref role="2aWVGs" to="tpck:gw2VY9q" resolve="BaseConcept" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="4Bh6nQ4wIZQ" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNodeReference.getModelReference()" resolve="getModelReference" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4Bh6nQ4wIGi" role="3cqZAp" />
            <node concept="3clFbF" id="57J37wzeqlF" role="3cqZAp">
              <node concept="2OqwBi" id="4Bh6nQ4wpYg" role="3clFbG">
                <node concept="37vLTw" id="57J37wzeqlD" role="2Oq$k0">
                  <ref role="3cqZAo" node="6rh3OXF8g6J" resolve="myExtendedModels" />
                </node>
                <node concept="liA8E" id="4Bh6nQ4wqZx" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Collection.removeIf(java.util.function.Predicate)" resolve="removeIf" />
                  <node concept="1bVj0M" id="4Bh6nQ4wrSF" role="37wK5m">
                    <node concept="3clFbS" id="4Bh6nQ4wrSH" role="1bW5cS">
                      <node concept="3clFbF" id="4Bh6nQ4wJHV" role="3cqZAp">
                        <node concept="2OqwBi" id="4Bh6nQ4wJVd" role="3clFbG">
                          <node concept="37vLTw" id="4Bh6nQ4wJHU" role="2Oq$k0">
                            <ref role="3cqZAo" node="4Bh6nQ4wIZN" resolve="langCoreStructureModelRef" />
                          </node>
                          <node concept="liA8E" id="4Bh6nQ4wKbP" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                            <node concept="2OqwBi" id="3XR0QgVCkec" role="37wK5m">
                              <node concept="37vLTw" id="3XR0QgVCkeb" role="2Oq$k0">
                                <ref role="3cqZAo" node="4Bh6nQ4wI82" resolve="m" />
                              </node>
                              <node concept="aIX43" id="3XR0QgVCked" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTG" id="4Bh6nQ4wI82" role="1bW2Oz">
                      <property role="TrG5h" value="m" />
                      <node concept="H_c77" id="4Bh6nQ4wI81" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="57J37wzepUZ" role="3clFbw">
            <ref role="3cqZAo" node="57J37wzeloa" resolve="myExcludeLangCore" />
          </node>
        </node>
        <node concept="1DcWWT" id="2iPx5T$9Y1d" role="3cqZAp">
          <node concept="3clFbS" id="2iPx5T$9Y1j" role="2LFqv$">
            <node concept="3clFbF" id="2iPx5T$9Rvq" role="3cqZAp">
              <node concept="2OqwBi" id="2iPx5T$9Tmw" role="3clFbG">
                <node concept="37vLTw" id="2iPx5T$9Rvo" role="2Oq$k0">
                  <ref role="3cqZAo" node="2iPx5T$9NXn" resolve="myExtendedModules" />
                </node>
                <node concept="liA8E" id="2iPx5T$9ULL" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="2OqwBi" id="2iPx5T$a5HU" role="37wK5m">
                    <node concept="2JrnkZ" id="2iPx5T$a5aW" role="2Oq$k0">
                      <node concept="37vLTw" id="2iPx5T$a3DQ" role="2JrQYb">
                        <ref role="3cqZAo" node="2iPx5T$9Y1k" resolve="em" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2iPx5T$a6lj" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2iPx5T$9Y1k" role="1Duv9x">
            <property role="TrG5h" value="em" />
            <node concept="H_c77" id="2iPx5T$9ZCd" role="1tU5fm" />
          </node>
          <node concept="37vLTw" id="2iPx5T$a0BE" role="1DdaDG">
            <ref role="3cqZAo" node="6rh3OXF8g6J" resolve="myExtendedModels" />
          </node>
        </node>
        <node concept="3clFbF" id="6rh3OXF7qsg" role="3cqZAp">
          <node concept="Xjq3P" id="6rh3OXF7qse" role="3clFbG" />
        </node>
      </node>
      <node concept="37vLTG" id="6rh3OXF7pA_" role="3clF46">
        <property role="TrG5h" value="m" />
        <node concept="H_c77" id="6rh3OXF7pA$" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6rh3OXF8QaI" role="jymVt" />
    <node concept="3clFb_" id="6rh3OXF8OO_" role="jymVt">
      <property role="TrG5h" value="getDependencyModels" />
      <node concept="3uibUv" id="6rh3OXF8RwF" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="H_c77" id="6rh3OXF8SPP" role="11_B2D" />
      </node>
      <node concept="3Tm1VV" id="6rh3OXF8OOC" role="1B3o_S" />
      <node concept="3clFbS" id="6rh3OXF8OOD" role="3clF47">
        <node concept="3cpWs6" id="6rh3OXF95VU" role="3cqZAp">
          <node concept="2YIFZM" id="6rh3OXF98Aq" role="3cqZAk">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableSet(java.util.Set)" resolve="unmodifiableSet" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="37vLTw" id="6rh3OXF99VW" role="37wK5m">
              <ref role="3cqZAo" node="6rh3OXF8g6J" resolve="myExtendedModels" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2iPx5T$a8ur" role="jymVt" />
    <node concept="3clFb_" id="2iPx5T$a6so" role="jymVt">
      <property role="TrG5h" value="getDependencyModules" />
      <node concept="3uibUv" id="2iPx5T$a6sp" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="2iPx5T$aauG" role="11_B2D">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2iPx5T$a6sr" role="1B3o_S" />
      <node concept="3clFbS" id="2iPx5T$a6ss" role="3clF47">
        <node concept="3cpWs6" id="2iPx5T$a6st" role="3cqZAp">
          <node concept="2YIFZM" id="2iPx5T$a6su" role="3cqZAk">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableSet(java.util.Set)" resolve="unmodifiableSet" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="37vLTw" id="2iPx5T$agv6" role="37wK5m">
              <ref role="3cqZAo" node="2iPx5T$9NXn" resolve="myExtendedModules" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6rh3OXF9bhA" role="jymVt" />
    <node concept="3clFb_" id="6rh3OXF9e5T" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getExternalConcepts" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6rh3OXF9e5W" role="3clF47">
        <node concept="3cpWs6" id="6rh3OXF9fvy" role="3cqZAp">
          <node concept="2YIFZM" id="6rh3OXF9gRW" role="3cqZAk">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableSet(java.util.Set)" resolve="unmodifiableSet" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="37vLTw" id="6rh3OXF9ifb" role="37wK5m">
              <ref role="3cqZAo" node="6rh3OXF7K$c" resolve="myExternalConcepts" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6rh3OXF9cFJ" role="1B3o_S" />
      <node concept="3uibUv" id="6rh3OXF9e3y" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3Tqbb2" id="6rh3OXF9e52" role="11_B2D">
          <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6rh3OXF9jAu" role="jymVt" />
    <node concept="3clFb_" id="6rh3OXF9mu_" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getExternalInterfaces" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6rh3OXF9muC" role="3clF47">
        <node concept="3cpWs6" id="6rh3OXF9nU6" role="3cqZAp">
          <node concept="2YIFZM" id="6rh3OXF9qFM" role="3cqZAk">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableSet(java.util.Set)" resolve="unmodifiableSet" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="37vLTw" id="6rh3OXF9s4y" role="37wK5m">
              <ref role="3cqZAo" node="6rh3OXF7MJF" resolve="myExternalIfaces" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6rh3OXF9l2A" role="1B3o_S" />
      <node concept="3uibUv" id="6rh3OXF9msf" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3Tqbb2" id="6rh3OXF9mtK" role="11_B2D">
          <ref role="ehGHo" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="6rh3OXF7poU" role="1B3o_S" />
    <node concept="3UR2Jj" id="57J37wzdOHk" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHs$ui" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs$uj" role="1PaTwD">
          <property role="3oM_SC" value="Scanner" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$uk" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$ul" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$um" role="1PaTwD">
          <property role="3oM_SC" value="model" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$un" role="1PaTwD">
          <property role="3oM_SC" value="with" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHs$uo" role="1PaTwD">
          <node concept="1VuTSG" id="1E1X3WHs$up" role="1Vtduc">
            <node concept="1PaTwC" id="1E1X3WHs$us" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHs$ut" role="1PaTwD">
                <property role="3oM_SC" value="ConceptDeclarations" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$uu" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$uv" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$uw" role="1PaTwD">
          <property role="3oM_SC" value="find" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$ux" role="1PaTwD">
          <property role="3oM_SC" value="cross-model" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$uy" role="1PaTwD">
          <property role="3oM_SC" value="dependencies." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs$uz" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs$u$" role="1PaTwD">
          <property role="3oM_SC" value="Much" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$u_" role="1PaTwD">
          <property role="3oM_SC" value="like" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHs$uA" role="1PaTwD">
          <node concept="1VuXuv" id="1E1X3WHs$uB" role="1Vtduc">
            <node concept="VXe08" id="57J37wzdV6h" role="1VuXuu">
              <ref role="VXe09" to="w1kc:~ModelDependencyScanner" resolve="ModelDependencyScanner" />
            </node>
            <node concept="1PaTwC" id="1E1X3WHs$uE" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHs$uF" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$uG" role="1PaTwD">
          <property role="3oM_SC" value="albeit" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$uH" role="1PaTwD">
          <property role="3oM_SC" value="narrow" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$uI" role="1PaTwD">
          <property role="3oM_SC" value="tailored" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$uJ" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$uK" role="1PaTwD">
          <property role="3oM_SC" value="structure" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$uL" role="1PaTwD">
          <property role="3oM_SC" value="models" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$uM" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$uN" role="1PaTwD">
          <property role="3oM_SC" value="extends" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$uO" role="1PaTwD">
          <property role="3oM_SC" value="relation" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$uP" role="1PaTwD">
          <property role="3oM_SC" value="between" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$uQ" role="1PaTwD">
          <property role="3oM_SC" value="Language" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$uR" role="1PaTwD">
          <property role="3oM_SC" value="modules." />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2GAPelUIEm4">
    <property role="TrG5h" value="SmartReferentUtil" />
    <property role="1EXbeo" value="true" />
    <node concept="2tJIrI" id="2GAPelUIELi" role="jymVt" />
    <node concept="3clFbW" id="2GAPelUIPgp" role="jymVt">
      <node concept="3cqZAl" id="2GAPelUIPgr" role="3clF45" />
      <node concept="3Tm6S6" id="2GAPelUIPiA" role="1B3o_S" />
      <node concept="3clFbS" id="2GAPelUIPgt" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="2GAPelUIP9q" role="jymVt" />
    <node concept="2YIFZL" id="2GAPelUIEMz" role="jymVt">
      <property role="TrG5h" value="getPresentation" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2GAPelUIEMA" role="3clF47">
        <node concept="3clFbJ" id="2GAPelUIEP7" role="3cqZAp">
          <node concept="2OqwBi" id="2GAPelUIFhf" role="3clFbw">
            <node concept="37vLTw" id="2GAPelUIJIw" role="2Oq$k0">
              <ref role="3cqZAo" node="2GAPelUIEO9" resolve="referent" />
            </node>
            <node concept="1mIQ4w" id="2GAPelUIFqj" role="2OqNvi">
              <node concept="chp4Y" id="2GAPelUIFse" role="cj9EA">
                <ref role="cht4Q" to="tpck:69Qfsw3InJo" resolve="ISmartReferent" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2GAPelUIEP9" role="3clFbx">
            <node concept="3cpWs6" id="2GAPelUIFv5" role="3cqZAp">
              <node concept="2OqwBi" id="2GAPelUIGca" role="3cqZAk">
                <node concept="1eOMI4" id="2GAPelUIFRm" role="2Oq$k0">
                  <node concept="1PxgMI" id="2GAPelUIG3Z" role="1eOMHV">
                    <node concept="chp4Y" id="2GAPelUIG4G" role="3oSUPX">
                      <ref role="cht4Q" to="tpck:69Qfsw3InJo" resolve="ISmartReferent" />
                    </node>
                    <node concept="37vLTw" id="2GAPelUIJMh" role="1m5AlR">
                      <ref role="3cqZAo" node="2GAPelUIEO9" resolve="referent" />
                    </node>
                  </node>
                </node>
                <node concept="3zqWPK" id="70OdufORdwP" role="2OqNvi">
                  <ref role="37wK5l" to="tpcu:69Qfsw3IoJg" resolve="getPresentation" />
                  <node concept="37vLTw" id="70OdufORdwR" role="37wK5m">
                    <ref role="3cqZAo" node="2GAPelUIEN9" resolve="reference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2GAPelUIGA$" role="3cqZAp">
          <node concept="10Nm6u" id="4tUqI3EySP0" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2GAPelUIELz" role="1B3o_S" />
      <node concept="17QB3L" id="2GAPelUIEMT" role="3clF45" />
      <node concept="37vLTG" id="2GAPelUIEN9" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3Tqbb2" id="2GAPelUIEN8" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2GAPelUIEO9" role="3clF46">
        <property role="TrG5h" value="referent" />
        <node concept="3Tqbb2" id="2GAPelUIEOw" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2GAPelUIONe" role="jymVt" />
    <node concept="2YIFZL" id="2GAPelUIHeU" role="jymVt">
      <property role="TrG5h" value="getMatchingText" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2GAPelUIHeV" role="3clF47">
        <node concept="3clFbJ" id="2GAPelUIHeW" role="3cqZAp">
          <node concept="2OqwBi" id="2GAPelUIHeX" role="3clFbw">
            <node concept="37vLTw" id="2GAPelUIK2X" role="2Oq$k0">
              <ref role="3cqZAo" node="2GAPelUIHfi" resolve="referent" />
            </node>
            <node concept="1mIQ4w" id="2GAPelUIHeZ" role="2OqNvi">
              <node concept="chp4Y" id="2GAPelUIHf0" role="cj9EA">
                <ref role="cht4Q" to="tpck:69Qfsw3InJo" resolve="ISmartReferent" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2GAPelUIHf1" role="3clFbx">
            <node concept="3cpWs6" id="2GAPelUIHf2" role="3cqZAp">
              <node concept="2OqwBi" id="2GAPelUIHf3" role="3cqZAk">
                <node concept="1eOMI4" id="2GAPelUIHf4" role="2Oq$k0">
                  <node concept="1PxgMI" id="2GAPelUIHf5" role="1eOMHV">
                    <node concept="chp4Y" id="2GAPelUIHf6" role="3oSUPX">
                      <ref role="cht4Q" to="tpck:69Qfsw3InJo" resolve="ISmartReferent" />
                    </node>
                    <node concept="37vLTw" id="2GAPelUIK6I" role="1m5AlR">
                      <ref role="3cqZAo" node="2GAPelUIHfi" resolve="referent" />
                    </node>
                  </node>
                </node>
                <node concept="3zqWPK" id="70OdufORdwS" role="2OqNvi">
                  <ref role="37wK5l" to="tpcu:69Qfsw3InJX" resolve="getMatchingText" />
                  <node concept="37vLTw" id="70OdufORdwU" role="37wK5m">
                    <ref role="3cqZAo" node="2GAPelUIHfg" resolve="reference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="m6df3Kj1ac" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo5Yt" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo5Yu" role="1PaTwD">
              <property role="3oM_SC" value="IResolveInfo" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Yv" role="1PaTwD">
              <property role="3oM_SC" value="now" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Yw" role="1PaTwD">
              <property role="3oM_SC" value="uses" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Yx" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Yy" role="1PaTwD">
              <property role="3oM_SC" value="distinct" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Yz" role="1PaTwD">
              <property role="3oM_SC" value="matchingText" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Y$" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5Y_" role="1PaTwD">
              <property role="3oM_SC" value="visibleMatchingText" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="m6df3Kj1rc" role="3cqZAp">
          <node concept="3clFbS" id="m6df3Kj1re" role="3clFbx">
            <node concept="3cpWs6" id="m6df3Kj298" role="3cqZAp">
              <node concept="2OqwBi" id="m6df3Kj2n3" role="3cqZAk">
                <node concept="1eOMI4" id="m6df3Kj285" role="2Oq$k0">
                  <node concept="1PxgMI" id="m6df3Kj286" role="1eOMHV">
                    <node concept="chp4Y" id="m6df3Kj2Jc" role="3oSUPX">
                      <ref role="cht4Q" to="tpck:hqLv6T6" resolve="IResolveInfo" />
                    </node>
                    <node concept="37vLTw" id="m6df3Kj288" role="1m5AlR">
                      <ref role="3cqZAo" node="2GAPelUIHfi" resolve="referent" />
                    </node>
                  </node>
                </node>
                <node concept="3TrcHB" id="m6df3Kj2Ws" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:hqLvdgl" resolve="resolveInfo" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="m6df3Kj1MW" role="3clFbw">
            <node concept="37vLTw" id="m6df3Kj1$w" role="2Oq$k0">
              <ref role="3cqZAo" node="2GAPelUIHfi" resolve="referent" />
            </node>
            <node concept="1mIQ4w" id="m6df3Kj23p" role="2OqNvi">
              <node concept="chp4Y" id="m6df3Kj25o" role="cj9EA">
                <ref role="cht4Q" to="tpck:hqLv6T6" resolve="IResolveInfo" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2GAPelUIHfa" role="3cqZAp">
          <node concept="10Nm6u" id="4tUqI3EySBV" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2GAPelUIHfe" role="1B3o_S" />
      <node concept="17QB3L" id="2GAPelUIHff" role="3clF45" />
      <node concept="37vLTG" id="2GAPelUIHfg" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3Tqbb2" id="2GAPelUIHfh" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2GAPelUIHfi" role="3clF46">
        <property role="TrG5h" value="referent" />
        <node concept="3Tqbb2" id="2GAPelUIHfj" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2GAPelUIP3x" role="jymVt" />
    <node concept="2YIFZL" id="2GAPelUIHqh" role="jymVt">
      <property role="TrG5h" value="getVisibleMatchingText" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2GAPelUIHqi" role="3clF47">
        <node concept="3clFbJ" id="2GAPelUIHqj" role="3cqZAp">
          <node concept="2OqwBi" id="2GAPelUIHqk" role="3clFbw">
            <node concept="37vLTw" id="2GAPelUIKmT" role="2Oq$k0">
              <ref role="3cqZAo" node="2GAPelUIHqD" resolve="referent" />
            </node>
            <node concept="1mIQ4w" id="2GAPelUIHqm" role="2OqNvi">
              <node concept="chp4Y" id="2GAPelUIHqn" role="cj9EA">
                <ref role="cht4Q" to="tpck:69Qfsw3InJo" resolve="ISmartReferent" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2GAPelUIHqo" role="3clFbx">
            <node concept="3cpWs6" id="2GAPelUIHqp" role="3cqZAp">
              <node concept="2OqwBi" id="2GAPelUIHqq" role="3cqZAk">
                <node concept="1eOMI4" id="2GAPelUIHqr" role="2Oq$k0">
                  <node concept="1PxgMI" id="2GAPelUIHqs" role="1eOMHV">
                    <node concept="chp4Y" id="2GAPelUIHqt" role="3oSUPX">
                      <ref role="cht4Q" to="tpck:69Qfsw3InJo" resolve="ISmartReferent" />
                    </node>
                    <node concept="37vLTw" id="2GAPelUIKqE" role="1m5AlR">
                      <ref role="3cqZAo" node="2GAPelUIHqD" resolve="referent" />
                    </node>
                  </node>
                </node>
                <node concept="3zqWPK" id="70OdufORdwV" role="2OqNvi">
                  <ref role="37wK5l" to="tpcu:69Qfsw3Ipre" resolve="getVisibleMatchingText" />
                  <node concept="37vLTw" id="70OdufORdwX" role="37wK5m">
                    <ref role="3cqZAo" node="2GAPelUIHqB" resolve="reference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2GAPelUIHqx" role="3cqZAp">
          <node concept="10Nm6u" id="4tUqI3EySJm" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2GAPelUIHq_" role="1B3o_S" />
      <node concept="17QB3L" id="2GAPelUIHqA" role="3clF45" />
      <node concept="37vLTG" id="2GAPelUIHqB" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3Tqbb2" id="2GAPelUIHqC" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2GAPelUIHqD" role="3clF46">
        <property role="TrG5h" value="referent" />
        <node concept="3Tqbb2" id="2GAPelUIHqE" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4zdi8JFVQBO" role="jymVt" />
    <node concept="2YIFZL" id="4zdi8JFVQIk" role="jymVt">
      <property role="TrG5h" value="getMatchingText" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4zdi8JFVQIn" role="3clF47">
        <node concept="3clFbJ" id="4zdi8JFVQOq" role="3cqZAp">
          <node concept="37vLTw" id="4zdi8JFVQPm" role="3clFbw">
            <ref role="3cqZAo" node="4zdi8JFVQM8" resolve="visible" />
          </node>
          <node concept="3clFbS" id="4zdi8JFVQOs" role="3clFbx">
            <node concept="3cpWs6" id="4zdi8JFVS5s" role="3cqZAp">
              <node concept="1rXfSq" id="4zdi8JFVRAY" role="3cqZAk">
                <ref role="37wK5l" node="2GAPelUIHqh" resolve="getVisibleMatchingText" />
                <node concept="37vLTw" id="4zdi8JFVRCT" role="37wK5m">
                  <ref role="3cqZAo" node="4zdi8JFVQK_" resolve="reference" />
                </node>
                <node concept="37vLTw" id="4zdi8JFVRJs" role="37wK5m">
                  <ref role="3cqZAo" node="4zdi8JFVQLj" resolve="referent" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="4zdi8JFVR_f" role="9aQIa">
            <node concept="3clFbS" id="4zdi8JFVR_g" role="9aQI4">
              <node concept="3cpWs6" id="4zdi8JFVRKQ" role="3cqZAp">
                <node concept="1rXfSq" id="4zdi8JFVR5F" role="3cqZAk">
                  <ref role="37wK5l" node="2GAPelUIHeU" resolve="getMatchingText" />
                  <node concept="37vLTw" id="4zdi8JFVRpk" role="37wK5m">
                    <ref role="3cqZAo" node="4zdi8JFVQK_" resolve="reference" />
                  </node>
                  <node concept="37vLTw" id="4zdi8JFVRzT" role="37wK5m">
                    <ref role="3cqZAo" node="4zdi8JFVQLj" resolve="referent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4zdi8JFVQFR" role="1B3o_S" />
      <node concept="17QB3L" id="4zdi8JFVQI7" role="3clF45" />
      <node concept="37vLTG" id="4zdi8JFVQK_" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3Tqbb2" id="4zdi8JFVQK$" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4zdi8JFVQLj" role="3clF46">
        <property role="TrG5h" value="referent" />
        <node concept="3Tqbb2" id="4zdi8JFVQLL" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4zdi8JFVQM8" role="3clF46">
        <property role="TrG5h" value="visible" />
        <node concept="10P_77" id="4zdi8JFVQMB" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2GAPelUIP5t" role="jymVt" />
    <node concept="2YIFZL" id="2GAPelUIHAU" role="jymVt">
      <property role="TrG5h" value="getDescriptionText" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2GAPelUIHAV" role="3clF47">
        <node concept="3clFbJ" id="2GAPelUIHAW" role="3cqZAp">
          <node concept="2OqwBi" id="2GAPelUIHAX" role="3clFbw">
            <node concept="37vLTw" id="2GAPelUIKEX" role="2Oq$k0">
              <ref role="3cqZAo" node="2GAPelUIHBi" resolve="referent" />
            </node>
            <node concept="1mIQ4w" id="2GAPelUIHAZ" role="2OqNvi">
              <node concept="chp4Y" id="2GAPelUIHB0" role="cj9EA">
                <ref role="cht4Q" to="tpck:69Qfsw3InJo" resolve="ISmartReferent" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2GAPelUIHB1" role="3clFbx">
            <node concept="3cpWs6" id="2GAPelUIHB2" role="3cqZAp">
              <node concept="2OqwBi" id="2GAPelUIHB3" role="3cqZAk">
                <node concept="1eOMI4" id="2GAPelUIHB4" role="2Oq$k0">
                  <node concept="1PxgMI" id="2GAPelUIHB5" role="1eOMHV">
                    <node concept="chp4Y" id="2GAPelUIHB6" role="3oSUPX">
                      <ref role="cht4Q" to="tpck:69Qfsw3InJo" resolve="ISmartReferent" />
                    </node>
                    <node concept="37vLTw" id="2GAPelUIKII" role="1m5AlR">
                      <ref role="3cqZAo" node="2GAPelUIHBi" resolve="referent" />
                    </node>
                  </node>
                </node>
                <node concept="3zqWPK" id="70OdufORdwY" role="2OqNvi">
                  <ref role="37wK5l" to="tpcu:69Qfsw3IqwE" resolve="getDescriptionText" />
                  <node concept="37vLTw" id="70OdufORdx0" role="37wK5m">
                    <ref role="3cqZAo" node="2GAPelUIHBg" resolve="reference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4zdi8JFVI_A" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo5YA" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo5YB" role="1PaTwD">
              <property role="3oM_SC" value="compatiblity" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5YC" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5YD" role="1PaTwD">
              <property role="3oM_SC" value="legacy." />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5YE" role="1PaTwD">
              <property role="3oM_SC" value="after" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5YF" role="1PaTwD">
              <property role="3oM_SC" value="3.5" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5YG" role="1PaTwD">
              <property role="3oM_SC" value="-&gt;" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5YH" role="1PaTwD">
              <property role="3oM_SC" value="&quot;return" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo5YI" role="1PaTwD">
              <property role="3oM_SC" value="null&quot;" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2GAPelUIHBa" role="3cqZAp">
          <node concept="2OqwBi" id="4zdi8JFVIQs" role="3cqZAk">
            <node concept="37vLTw" id="4zdi8JFVIJk" role="2Oq$k0">
              <ref role="3cqZAo" node="2GAPelUIHBi" resolve="referent" />
            </node>
            <node concept="3TrcHB" id="4zdi8JFVIYS" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:gOOYnlO" resolve="shortDescription" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2GAPelUIHBe" role="1B3o_S" />
      <node concept="17QB3L" id="2GAPelUIHBf" role="3clF45" />
      <node concept="37vLTG" id="2GAPelUIHBg" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3Tqbb2" id="2GAPelUIHBh" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2GAPelUIHBi" role="3clF46">
        <property role="TrG5h" value="referent" />
        <node concept="3Tqbb2" id="2GAPelUIHBj" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2GAPelUIEm5" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3MTO4OYcv9s">
    <property role="TrG5h" value="EditorDeclarationScanner" />
    <node concept="312cEg" id="3MTO4OYcNlr" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myExternalConcepts" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3MTO4OYcNls" role="1B3o_S" />
      <node concept="3uibUv" id="3MTO4OYcNlt" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3Tqbb2" id="3MTO4OYcNlu" role="11_B2D">
          <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
        </node>
      </node>
      <node concept="2ShNRf" id="3MTO4OYcNlv" role="33vP2m">
        <node concept="1pGfFk" id="3MTO4OYcNlw" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
          <node concept="3Tqbb2" id="3MTO4OYcNlx" role="1pMfVU">
            <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3MTO4OYcZ4f" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myExtendedModels" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3MTO4OYcZ4g" role="1B3o_S" />
      <node concept="3uibUv" id="3MTO4OYcZ4h" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="H_c77" id="3MTO4OYcZ4i" role="11_B2D" />
      </node>
      <node concept="2ShNRf" id="3MTO4OYcZ4j" role="33vP2m">
        <node concept="1pGfFk" id="3MTO4OYcZ4k" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
          <node concept="H_c77" id="3MTO4OYcZ4l" role="1pMfVU" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3MTO4OYcZ4m" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myExtendedModules" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3MTO4OYcZ4n" role="1B3o_S" />
      <node concept="3uibUv" id="3MTO4OYcZ4o" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="3MTO4OYcZ4p" role="11_B2D">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="2ShNRf" id="3MTO4OYcZ4q" role="33vP2m">
        <node concept="1pGfFk" id="3MTO4OYcZ4r" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
          <node concept="3uibUv" id="3MTO4OYcZ4s" role="1pMfVU">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3MTO4OYcMRg" role="jymVt" />
    <node concept="2tJIrI" id="3MTO4OYcN6l" role="jymVt" />
    <node concept="3clFbW" id="3MTO4OYcBF8" role="jymVt">
      <node concept="3cqZAl" id="3MTO4OYcBFb" role="3clF45" />
      <node concept="3Tm1VV" id="3MTO4OYcBFc" role="1B3o_S" />
      <node concept="3clFbS" id="3MTO4OYcBFd" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="3MTO4OYcD0s" role="jymVt" />
    <node concept="3clFb_" id="3MTO4OYcD1v" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="scan" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3MTO4OYcD1y" role="3clF47">
        <node concept="3cpWs8" id="3MTO4OYcTjx" role="3cqZAp">
          <node concept="3cpWsn" id="3MTO4OYcTjy" role="3cpWs9">
            <property role="TrG5h" value="owner" />
            <node concept="3uibUv" id="3MTO4OYcTju" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="2OqwBi" id="3MTO4OYcTjz" role="33vP2m">
              <node concept="2JrnkZ" id="3MTO4OYcTj$" role="2Oq$k0">
                <node concept="37vLTw" id="3MTO4OYcTj_" role="2JrQYb">
                  <ref role="3cqZAo" node="3MTO4OYcD1V" resolve="m" />
                </node>
              </node>
              <node concept="liA8E" id="3MTO4OYcTjA" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="3MTO4OYcFF6" role="3cqZAp">
          <node concept="3clFbS" id="3MTO4OYcFF9" role="2LFqv$">
            <node concept="3cpWs8" id="3MTO4OYcTEn" role="3cqZAp">
              <node concept="3cpWsn" id="3MTO4OYcTEo" role="3cpWs9">
                <property role="TrG5h" value="cd" />
                <node concept="3Tqbb2" id="3MTO4OYcTEj" role="1tU5fm">
                  <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                </node>
                <node concept="2OqwBi" id="3MTO4OYcTEp" role="33vP2m">
                  <node concept="37vLTw" id="3MTO4OYcTEq" role="2Oq$k0">
                    <ref role="3cqZAo" node="3MTO4OYcFFa" resolve="ac" />
                  </node>
                  <node concept="3TrEf2" id="3MTO4OYcTEr" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpc2:gXXX56I" resolve="conceptDeclaration" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3MTO4OYcUC3" role="3cqZAp">
              <node concept="3clFbS" id="3MTO4OYcUC5" role="3clFbx">
                <node concept="3clFbF" id="3MTO4OYcPrn" role="3cqZAp">
                  <node concept="2OqwBi" id="3MTO4OYcQ1w" role="3clFbG">
                    <node concept="37vLTw" id="3MTO4OYcPrl" role="2Oq$k0">
                      <ref role="3cqZAo" node="3MTO4OYcNlr" resolve="myExternalConcepts" />
                    </node>
                    <node concept="liA8E" id="3MTO4OYcRhO" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                      <node concept="37vLTw" id="3MTO4OYcTEs" role="37wK5m">
                        <ref role="3cqZAo" node="3MTO4OYcTEo" resolve="cd" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3MTO4OYd4kc" role="3cqZAp">
                  <node concept="2OqwBi" id="3MTO4OYd4kd" role="3clFbG">
                    <node concept="37vLTw" id="3MTO4OYd4ke" role="2Oq$k0">
                      <ref role="3cqZAo" node="3MTO4OYcZ4f" resolve="myExtendedModels" />
                    </node>
                    <node concept="liA8E" id="3MTO4OYd4kf" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                      <node concept="2OqwBi" id="3MTO4OYd4kg" role="37wK5m">
                        <node concept="37vLTw" id="3MTO4OYdbQr" role="2Oq$k0">
                          <ref role="3cqZAo" node="3MTO4OYcTEo" resolve="cd" />
                        </node>
                        <node concept="I4A8Y" id="3MTO4OYd4ki" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="62fGxV4ZkdK" role="3clFbw">
                <node concept="3y3z36" id="62fGxV4ZkFL" role="3uHU7B">
                  <node concept="10Nm6u" id="62fGxV4ZkIV" role="3uHU7w" />
                  <node concept="37vLTw" id="62fGxV4ZkuY" role="3uHU7B">
                    <ref role="3cqZAo" node="3MTO4OYcTEo" resolve="cd" />
                  </node>
                </node>
                <node concept="3y3z36" id="3MTO4OYcWJQ" role="3uHU7w">
                  <node concept="37vLTw" id="3MTO4OYcWPH" role="3uHU7w">
                    <ref role="3cqZAo" node="3MTO4OYcTjy" resolve="owner" />
                  </node>
                  <node concept="2OqwBi" id="3MTO4OYcW7l" role="3uHU7B">
                    <node concept="2JrnkZ" id="3MTO4OYcVZN" role="2Oq$k0">
                      <node concept="2OqwBi" id="3MTO4OYcUTy" role="2JrQYb">
                        <node concept="37vLTw" id="3MTO4OYcUJn" role="2Oq$k0">
                          <ref role="3cqZAo" node="3MTO4OYcTEo" resolve="cd" />
                        </node>
                        <node concept="I4A8Y" id="3MTO4OYcV4L" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3MTO4OYcWf2" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3MTO4OYcFFa" role="1Duv9x">
            <property role="TrG5h" value="ac" />
            <node concept="3Tqbb2" id="3MTO4OYcGQb" role="1tU5fm">
              <ref role="ehGHo" to="tpc2:gXXWOiD" resolve="AbstractComponent" />
            </node>
          </node>
          <node concept="2OqwBi" id="3MTO4OYcFFf" role="1DdaDG">
            <node concept="37vLTw" id="3MTO4OYcFFg" role="2Oq$k0">
              <ref role="3cqZAo" node="3MTO4OYcD1V" resolve="m" />
            </node>
            <node concept="2RRcyG" id="3MTO4OYcFFh" role="2OqNvi">
              <node concept="chp4Y" id="5QK5AMJp7zz" role="3MHsoP">
                <ref role="cht4Q" to="tpc2:gXXWOiD" resolve="AbstractComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="2buyFjAfsFJ" role="3cqZAp">
          <node concept="3clFbS" id="2buyFjAfsFM" role="2LFqv$">
            <node concept="3cpWs8" id="2buyFjAfC7L" role="3cqZAp">
              <node concept="3cpWsn" id="2buyFjAfC7M" role="3cpWs9">
                <property role="TrG5h" value="cd" />
                <node concept="3Tqbb2" id="2buyFjAfC7J" role="1tU5fm">
                  <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                </node>
                <node concept="2OqwBi" id="2buyFjAfC7N" role="33vP2m">
                  <node concept="37vLTw" id="2buyFjAfC7O" role="2Oq$k0">
                    <ref role="3cqZAo" node="2buyFjAfsFN" resolve="menuRef" />
                  </node>
                  <node concept="3zqWPK" id="70OdufORdx1" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:1quYWAD4TFX" resolve="getApplicableConcept" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2buyFjAfCaZ" role="3cqZAp">
              <node concept="3clFbS" id="2buyFjAfCb1" role="3clFbx">
                <node concept="3clFbF" id="2buyFjAfEwm" role="3cqZAp">
                  <node concept="2OqwBi" id="2buyFjAfEwn" role="3clFbG">
                    <node concept="37vLTw" id="2buyFjAfEwo" role="2Oq$k0">
                      <ref role="3cqZAo" node="3MTO4OYcNlr" resolve="myExternalConcepts" />
                    </node>
                    <node concept="liA8E" id="2buyFjAfEwp" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                      <node concept="37vLTw" id="2buyFjAfEwq" role="37wK5m">
                        <ref role="3cqZAo" node="2buyFjAfC7M" resolve="cd" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2buyFjAfEwr" role="3cqZAp">
                  <node concept="2OqwBi" id="2buyFjAfEws" role="3clFbG">
                    <node concept="37vLTw" id="2buyFjAfEwt" role="2Oq$k0">
                      <ref role="3cqZAo" node="3MTO4OYcZ4f" resolve="myExtendedModels" />
                    </node>
                    <node concept="liA8E" id="2buyFjAfEwu" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                      <node concept="2OqwBi" id="2buyFjAfEwv" role="37wK5m">
                        <node concept="37vLTw" id="2buyFjAfEww" role="2Oq$k0">
                          <ref role="3cqZAo" node="2buyFjAfC7M" resolve="cd" />
                        </node>
                        <node concept="I4A8Y" id="2buyFjAfEwx" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="2buyFjAfCV2" role="3clFbw">
                <node concept="3y3z36" id="2buyFjAfEoI" role="3uHU7w">
                  <node concept="37vLTw" id="2buyFjAfEtX" role="3uHU7w">
                    <ref role="3cqZAo" node="3MTO4OYcTjy" resolve="owner" />
                  </node>
                  <node concept="2OqwBi" id="2buyFjAfE7v" role="3uHU7B">
                    <node concept="2JrnkZ" id="2buyFjAfDZP" role="2Oq$k0">
                      <node concept="2OqwBi" id="2buyFjAfD6J" role="2JrQYb">
                        <node concept="37vLTw" id="2buyFjAfCW5" role="2Oq$k0">
                          <ref role="3cqZAo" node="2buyFjAfC7M" resolve="cd" />
                        </node>
                        <node concept="I4A8Y" id="2buyFjAfDih" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2buyFjAfEfk" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="2buyFjAfCTz" role="3uHU7B">
                  <node concept="37vLTw" id="2buyFjAfCbM" role="3uHU7B">
                    <ref role="3cqZAo" node="2buyFjAfC7M" resolve="cd" />
                  </node>
                  <node concept="10Nm6u" id="2buyFjAfCUi" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2buyFjAfsFN" role="1Duv9x">
            <property role="TrG5h" value="menuRef" />
            <node concept="3Tqbb2" id="2buyFjAfu_k" role="1tU5fm">
              <ref role="ehGHo" to="tpc2:1quYWAD2$6N" resolve="IMenuReference" />
            </node>
          </node>
          <node concept="2OqwBi" id="2buyFjAfsFS" role="1DdaDG">
            <node concept="37vLTw" id="2buyFjAfsFT" role="2Oq$k0">
              <ref role="3cqZAo" node="3MTO4OYcD1V" resolve="m" />
            </node>
            <node concept="2SmgA7" id="2buyFjAfsFU" role="2OqNvi">
              <node concept="chp4Y" id="2buyFjAfLCL" role="1dBWTz">
                <ref role="cht4Q" to="tpc2:1quYWAD2$6N" resolve="IMenuReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="2rC_CqzbP4S" role="3cqZAp">
          <node concept="3clFbS" id="2rC_CqzbP4U" role="2LFqv$">
            <node concept="3cpWs8" id="2rC_Cqzc7_6" role="3cqZAp">
              <node concept="3cpWsn" id="2rC_Cqzc7_7" role="3cpWs9">
                <property role="TrG5h" value="cd" />
                <node concept="3Tqbb2" id="2rC_Cqzc7jx" role="1tU5fm">
                  <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                </node>
                <node concept="2OqwBi" id="2rC_Cqzc7_8" role="33vP2m">
                  <node concept="37vLTw" id="2rC_Cqzc7_9" role="2Oq$k0">
                    <ref role="3cqZAo" node="2rC_CqzbP4V" resolve="mcc" />
                  </node>
                  <node concept="3TrEf2" id="2rC_Cqzc7_a" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpc2:7U0pk79ej2_" resolve="conceptDeclaration" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2rC_Cqzcaby" role="3cqZAp">
              <node concept="3clFbS" id="2rC_Cqzcabz" role="3clFbx">
                <node concept="3clFbF" id="2rC_Cqzcab$" role="3cqZAp">
                  <node concept="2OqwBi" id="2rC_Cqzcab_" role="3clFbG">
                    <node concept="37vLTw" id="2rC_CqzcabA" role="2Oq$k0">
                      <ref role="3cqZAo" node="3MTO4OYcNlr" resolve="myExternalConcepts" />
                    </node>
                    <node concept="liA8E" id="2rC_CqzcabB" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                      <node concept="37vLTw" id="2rC_CqzcabC" role="37wK5m">
                        <ref role="3cqZAo" node="2rC_Cqzc7_7" resolve="cd" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2rC_CqzcabD" role="3cqZAp">
                  <node concept="2OqwBi" id="2rC_CqzcabE" role="3clFbG">
                    <node concept="37vLTw" id="2rC_CqzcabF" role="2Oq$k0">
                      <ref role="3cqZAo" node="3MTO4OYcZ4f" resolve="myExtendedModels" />
                    </node>
                    <node concept="liA8E" id="2rC_CqzcabG" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                      <node concept="2OqwBi" id="2rC_CqzcabH" role="37wK5m">
                        <node concept="37vLTw" id="2rC_CqzcabI" role="2Oq$k0">
                          <ref role="3cqZAo" node="2rC_Cqzc7_7" resolve="cd" />
                        </node>
                        <node concept="I4A8Y" id="2rC_CqzcabJ" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="2rC_CqzcabK" role="3clFbw">
                <node concept="3y3z36" id="2rC_CqzcabL" role="3uHU7w">
                  <node concept="37vLTw" id="2rC_CqzcabM" role="3uHU7w">
                    <ref role="3cqZAo" node="3MTO4OYcTjy" resolve="owner" />
                  </node>
                  <node concept="2OqwBi" id="2rC_CqzcabN" role="3uHU7B">
                    <node concept="2JrnkZ" id="2rC_CqzcabO" role="2Oq$k0">
                      <node concept="2OqwBi" id="2rC_CqzcabP" role="2JrQYb">
                        <node concept="37vLTw" id="2rC_CqzcabQ" role="2Oq$k0">
                          <ref role="3cqZAo" node="2rC_Cqzc7_7" resolve="cd" />
                        </node>
                        <node concept="I4A8Y" id="2rC_CqzcabR" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2rC_CqzcabS" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="2rC_CqzcabT" role="3uHU7B">
                  <node concept="37vLTw" id="2rC_CqzcabU" role="3uHU7B">
                    <ref role="3cqZAo" node="2rC_Cqzc7_7" resolve="cd" />
                  </node>
                  <node concept="10Nm6u" id="2rC_CqzcabV" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2rC_CqzbP4V" role="1Duv9x">
            <property role="TrG5h" value="mcc" />
            <node concept="3Tqbb2" id="2rC_CqzbQLJ" role="1tU5fm">
              <ref role="ehGHo" to="tpc2:6iw7UxkrgbU" resolve="CompletionCustomizationContextSpecificator_Concept" />
            </node>
          </node>
          <node concept="2OqwBi" id="2rC_CqzbTJe" role="1DdaDG">
            <node concept="37vLTw" id="2rC_CqzbSBv" role="2Oq$k0">
              <ref role="3cqZAo" node="3MTO4OYcD1V" resolve="m" />
            </node>
            <node concept="2SmgA7" id="2rC_CqzbUQb" role="2OqNvi">
              <node concept="chp4Y" id="2rC_CqzbWSH" role="1dBWTz">
                <ref role="cht4Q" to="tpc2:6iw7UxkrgbU" resolve="CompletionCustomizationContextSpecificator_Concept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="3MTO4OYd22a" role="3cqZAp">
          <node concept="3clFbS" id="3MTO4OYd22b" role="2LFqv$">
            <node concept="3clFbF" id="3MTO4OYd22c" role="3cqZAp">
              <node concept="2OqwBi" id="3MTO4OYd22d" role="3clFbG">
                <node concept="37vLTw" id="3MTO4OYd22e" role="2Oq$k0">
                  <ref role="3cqZAo" node="3MTO4OYcZ4m" resolve="myExtendedModules" />
                </node>
                <node concept="liA8E" id="3MTO4OYd22f" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="2OqwBi" id="3MTO4OYd22g" role="37wK5m">
                    <node concept="2JrnkZ" id="3MTO4OYd22h" role="2Oq$k0">
                      <node concept="37vLTw" id="3MTO4OYd22i" role="2JrQYb">
                        <ref role="3cqZAo" node="3MTO4OYd22k" resolve="em" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3MTO4OYd22j" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3MTO4OYd22k" role="1Duv9x">
            <property role="TrG5h" value="em" />
            <node concept="H_c77" id="3MTO4OYd22l" role="1tU5fm" />
          </node>
          <node concept="37vLTw" id="3MTO4OYd22m" role="1DdaDG">
            <ref role="3cqZAo" node="3MTO4OYcZ4f" resolve="myExtendedModels" />
          </node>
        </node>
        <node concept="3clFbF" id="3MTO4OYcK2y" role="3cqZAp">
          <node concept="Xjq3P" id="3MTO4OYcK2w" role="3clFbG" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3MTO4OYcD0H" role="1B3o_S" />
      <node concept="3uibUv" id="3MTO4OYcD1n" role="3clF45">
        <ref role="3uigEE" node="3MTO4OYcv9s" resolve="EditorDeclarationScanner" />
      </node>
      <node concept="37vLTG" id="3MTO4OYcD1V" role="3clF46">
        <property role="TrG5h" value="m" />
        <node concept="H_c77" id="3MTO4OYcD1U" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MTO4OYcZog" role="jymVt" />
    <node concept="3clFb_" id="3MTO4OYd0VV" role="jymVt">
      <property role="TrG5h" value="getExternalStructureModels" />
      <node concept="3uibUv" id="3MTO4OYd0VW" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="H_c77" id="3MTO4OYd0VX" role="11_B2D" />
      </node>
      <node concept="3Tm1VV" id="3MTO4OYd0VY" role="1B3o_S" />
      <node concept="3clFbS" id="3MTO4OYd0VZ" role="3clF47">
        <node concept="3cpWs6" id="3MTO4OYd0W0" role="3cqZAp">
          <node concept="2YIFZM" id="3MTO4OYd0W1" role="3cqZAk">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableSet(java.util.Set)" resolve="unmodifiableSet" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="37vLTw" id="3MTO4OYd0W2" role="37wK5m">
              <ref role="3cqZAo" node="3MTO4OYcZ4f" resolve="myExtendedModels" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3MTO4OYd0W3" role="jymVt" />
    <node concept="3clFb_" id="3MTO4OYd0W4" role="jymVt">
      <property role="TrG5h" value="getDependencyModules" />
      <node concept="3uibUv" id="3MTO4OYd0W5" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="3MTO4OYd0W6" role="11_B2D">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3MTO4OYd0W7" role="1B3o_S" />
      <node concept="3clFbS" id="3MTO4OYd0W8" role="3clF47">
        <node concept="3cpWs6" id="3MTO4OYd0W9" role="3cqZAp">
          <node concept="2YIFZM" id="3MTO4OYd0Wa" role="3cqZAk">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableSet(java.util.Set)" resolve="unmodifiableSet" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="37vLTw" id="3MTO4OYd0Wb" role="37wK5m">
              <ref role="3cqZAo" node="3MTO4OYcZ4m" resolve="myExtendedModules" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3MTO4OYcLTF" role="jymVt" />
    <node concept="3clFb_" id="3MTO4OYcLUz" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getExternalConcepts" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3MTO4OYcLU$" role="3clF47">
        <node concept="3cpWs6" id="3MTO4OYcLU_" role="3cqZAp">
          <node concept="2YIFZM" id="3MTO4OYcLUA" role="3cqZAk">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableSet(java.util.Set)" resolve="unmodifiableSet" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="37vLTw" id="3MTO4OYcPiJ" role="37wK5m">
              <ref role="3cqZAo" node="3MTO4OYcNlr" resolve="myExternalConcepts" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3MTO4OYcLUC" role="1B3o_S" />
      <node concept="3uibUv" id="3MTO4OYcLUD" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3Tqbb2" id="3MTO4OYcLUE" role="11_B2D">
          <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="3MTO4OYcv9t" role="1B3o_S" />
    <node concept="3UR2Jj" id="3MTO4OYcva2" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHs$uS" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs$uT" role="1PaTwD">
          <property role="3oM_SC" value="Scan" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$uU" role="1PaTwD">
          <property role="3oM_SC" value="an" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$uV" role="1PaTwD">
          <property role="3oM_SC" value="editor" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$uW" role="1PaTwD">
          <property role="3oM_SC" value="aspect" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$uX" role="1PaTwD">
          <property role="3oM_SC" value="model" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$uY" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$uZ" role="1PaTwD">
          <property role="3oM_SC" value="find" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$v0" role="1PaTwD">
          <property role="3oM_SC" value="cross-model" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$v1" role="1PaTwD">
          <property role="3oM_SC" value="dependencies." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs$v2" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs$v3" role="1PaTwD">
          <property role="3oM_SC" value="Similar" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$v4" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHs$v5" role="1PaTwD">
          <node concept="1VuXuv" id="1E1X3WHs$v6" role="1Vtduc">
            <node concept="VXe08" id="3MTO4OYc_S6" role="1VuXuu">
              <ref role="VXe09" node="6rh3OXF7poT" resolve="ConceptDeclarationScanner" />
            </node>
            <node concept="1PaTwC" id="1E1X3WHs$v9" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHs$va" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vb" role="1PaTwD">
          <property role="3oM_SC" value="," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vc" role="1PaTwD">
          <property role="3oM_SC" value="tailored" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vd" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$ve" role="1PaTwD">
          <property role="3oM_SC" value="figure" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vf" role="1PaTwD">
          <property role="3oM_SC" value="out" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vg" role="1PaTwD">
          <property role="3oM_SC" value="necessary" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs$vh" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs$vi" role="1PaTwD">
          <property role="3oM_SC" value="extends" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vj" role="1PaTwD">
          <property role="3oM_SC" value="dependency" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vk" role="1PaTwD">
          <property role="3oM_SC" value="between" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vl" role="1PaTwD">
          <property role="3oM_SC" value="languages" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vm" role="1PaTwD">
          <property role="3oM_SC" value="due" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vn" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vo" role="1PaTwD">
          <property role="3oM_SC" value="editor" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vp" role="1PaTwD">
          <property role="3oM_SC" value="aspect" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vq" role="1PaTwD">
          <property role="3oM_SC" value="dependencies" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs$vr" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs$vs" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs$vt" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs$vu" role="1PaTwD">
          <property role="3oM_SC" value="NOTE," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vv" role="1PaTwD">
          <property role="3oM_SC" value="'extends'" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vw" role="1PaTwD">
          <property role="3oM_SC" value="dependency" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vx" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vy" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vz" role="1PaTwD">
          <property role="3oM_SC" value="design-time" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$v$" role="1PaTwD">
          <property role="3oM_SC" value="dependency," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$v_" role="1PaTwD">
          <property role="3oM_SC" value="not" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vA" role="1PaTwD">
          <property role="3oM_SC" value="necessarily" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vB" role="1PaTwD">
          <property role="3oM_SC" value="manifested" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vC" role="1PaTwD">
          <property role="3oM_SC" value="as" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vD" role="1PaTwD">
          <property role="3oM_SC" value="'extends'" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vE" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs$vF" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs$vG" role="1PaTwD">
          <property role="3oM_SC" value="language" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vH" role="1PaTwD">
          <property role="3oM_SC" value="runtime." />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vI" role="1PaTwD">
          <property role="3oM_SC" value="Here" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vJ" role="1PaTwD">
          <property role="3oM_SC" value="we" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vK" role="1PaTwD">
          <property role="3oM_SC" value="collect" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vL" role="1PaTwD">
          <property role="3oM_SC" value="references" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vM" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vN" role="1PaTwD">
          <property role="3oM_SC" value="other" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vO" role="1PaTwD">
          <property role="3oM_SC" value="structure" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vP" role="1PaTwD">
          <property role="3oM_SC" value="models" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vQ" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vR" role="1PaTwD">
          <property role="3oM_SC" value="their" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vS" role="1PaTwD">
          <property role="3oM_SC" value="languages," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vT" role="1PaTwD">
          <property role="3oM_SC" value="implying" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs$vU" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs$vV" role="1PaTwD">
          <property role="3oM_SC" value="use" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vW" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vX" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vY" role="1PaTwD">
          <property role="3oM_SC" value="concept" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$vZ" role="1PaTwD">
          <property role="3oM_SC" value="from" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$w0" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$w1" role="1PaTwD">
          <property role="3oM_SC" value="foreign" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$w2" role="1PaTwD">
          <property role="3oM_SC" value="language" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$w3" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$w4" role="1PaTwD">
          <property role="3oM_SC" value="sort" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$w5" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$w6" role="1PaTwD">
          <property role="3oM_SC" value="&quot;extension&quot;." />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$w7" role="1PaTwD">
          <property role="3oM_SC" value="Discovered" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$w8" role="1PaTwD">
          <property role="3oM_SC" value="dependencies" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$w9" role="1PaTwD">
          <property role="3oM_SC" value="shall" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wa" role="1PaTwD">
          <property role="3oM_SC" value="not" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wb" role="1PaTwD">
          <property role="3oM_SC" value="get" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs$wc" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs$wd" role="1PaTwD">
          <property role="3oM_SC" value="translated" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$we" role="1PaTwD">
          <property role="3oM_SC" value="directly" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wf" role="1PaTwD">
          <property role="3oM_SC" value="into" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wg" role="1PaTwD">
          <property role="3oM_SC" value="'extends'" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wh" role="1PaTwD">
          <property role="3oM_SC" value="between" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wi" role="1PaTwD">
          <property role="3oM_SC" value="languages," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wj" role="1PaTwD">
          <property role="3oM_SC" value="rather" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wk" role="1PaTwD">
          <property role="3oM_SC" value="as" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wl" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wm" role="1PaTwD">
          <property role="3oM_SC" value="notion" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wn" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wo" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wp" role="1PaTwD">
          <property role="3oM_SC" value="general" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wq" role="1PaTwD">
          <property role="3oM_SC" value="extension" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wr" role="1PaTwD">
          <property role="3oM_SC" value="contribution." />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5qGXSHdtRTn">
    <property role="TrG5h" value="ModuleDependencyVersions" />
    <property role="1EXbeo" value="true" />
    <node concept="312cEg" id="5qGXSHdudXB" role="jymVt">
      <property role="TrG5h" value="myLanguageRegistry" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5qGXSHdudXC" role="1B3o_S" />
      <node concept="3uibUv" id="5qGXSHdudXE" role="1tU5fm">
        <ref role="3uigEE" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
      </node>
    </node>
    <node concept="312cEg" id="5qGXSHdue0f" role="jymVt">
      <property role="TrG5h" value="myModuleRepo" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5qGXSHdue0g" role="1B3o_S" />
      <node concept="3uibUv" id="5qGXSHdue0i" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
    </node>
    <node concept="312cEg" id="4yPMgAVklil" role="jymVt">
      <property role="TrG5h" value="myRemoveOddImports" />
      <node concept="3Tm6S6" id="4yPMgAVklim" role="1B3o_S" />
      <node concept="10P_77" id="4yPMgAVklio" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="5qGXSHdudZs" role="jymVt" />
    <node concept="3clFbW" id="5qGXSHdtS66" role="jymVt">
      <node concept="3cqZAl" id="5qGXSHdtS69" role="3clF45" />
      <node concept="3Tm1VV" id="5qGXSHdtS6a" role="1B3o_S" />
      <node concept="3clFbS" id="5qGXSHdtS6b" role="3clF47">
        <node concept="3clFbF" id="5qGXSHdudXF" role="3cqZAp">
          <node concept="37vLTI" id="5qGXSHdudXH" role="3clFbG">
            <node concept="37vLTw" id="5qGXSHdudXK" role="37vLTJ">
              <ref role="3cqZAo" node="5qGXSHdudXB" resolve="myLanguageRegistry" />
            </node>
            <node concept="37vLTw" id="5qGXSHdudXL" role="37vLTx">
              <ref role="3cqZAo" node="5qGXSHdtS6S" resolve="languageRegistry" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5qGXSHdue0j" role="3cqZAp">
          <node concept="37vLTI" id="5qGXSHdue0l" role="3clFbG">
            <node concept="37vLTw" id="5qGXSHdue0o" role="37vLTJ">
              <ref role="3cqZAo" node="5qGXSHdue0f" resolve="myModuleRepo" />
            </node>
            <node concept="37vLTw" id="5qGXSHdue0p" role="37vLTx">
              <ref role="3cqZAo" node="5qGXSHdtS85" resolve="moduleRepo" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5qGXSHdtS6S" role="3clF46">
        <property role="TrG5h" value="languageRegistry" />
        <node concept="3uibUv" id="5qGXSHdtS7I" role="1tU5fm">
          <ref role="3uigEE" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
        </node>
        <node concept="2AHcQZ" id="5qGXSHdudRa" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5qGXSHdtS85" role="3clF46">
        <property role="TrG5h" value="moduleRepo" />
        <node concept="3uibUv" id="5qGXSHdtS8u" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
        <node concept="2AHcQZ" id="5qGXSHdudSC" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5qGXSHdybsX" role="jymVt" />
    <node concept="3clFb_" id="5qGXSHdyiAL" role="jymVt">
      <property role="TrG5h" value="resetVersions" />
      <node concept="3clFbS" id="5qGXSHdyiAO" role="3clF47">
        <node concept="3clFbF" id="5qGXSHdylCU" role="3cqZAp">
          <node concept="37vLTI" id="5qGXSHdylXQ" role="3clFbG">
            <node concept="3clFbT" id="5qGXSHdym2F" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="5qGXSHdylCT" role="37vLTJ">
              <ref role="3cqZAo" node="4yPMgAVklil" resolve="myRemoveOddImports" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5qGXSHdym57" role="3cqZAp">
          <node concept="Xjq3P" id="5qGXSHdym5s" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5qGXSHdyeKP" role="1B3o_S" />
      <node concept="3uibUv" id="5qGXSHdyhvJ" role="3clF45">
        <ref role="3uigEE" node="5qGXSHdtRTn" resolve="ModuleDependencyVersions" />
      </node>
      <node concept="P$JXv" id="5qGXSHdyxlR" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs$yw" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs$yx" role="1PaTwD">
            <property role="3oM_SC" value="Relevant" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$yy" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="1Vtdud" id="1E1X3WHs$yz" role="1PaTwD">
            <node concept="1VuXuv" id="1E1X3WHs$y$" role="1Vtduc">
              <node concept="VXe0Z" id="5qGXSHdy$7F" role="1VuXuu">
                <ref role="VXe0S" node="5qGXSHduhzd" resolve="needsUpdate" />
              </node>
              <node concept="1PaTwC" id="1E1X3WHs$yB" role="2JaDBN">
                <node concept="3oM_SD" id="1E1X3WHs$yC" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$yD" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="1Vtdud" id="1E1X3WHs$yE" role="1PaTwD">
            <node concept="1VuXuv" id="1E1X3WHs$yF" role="1Vtduc">
              <node concept="VXe0Z" id="5qGXSHdy$aC" role="1VuXuu">
                <ref role="VXe0S" node="5qGXSHduhsJ" resolve="update" />
              </node>
              <node concept="1PaTwC" id="1E1X3WHs$yI" role="2JaDBN">
                <node concept="3oM_SD" id="1E1X3WHs$yJ" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$yK" role="1PaTwD">
            <property role="3oM_SC" value="," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$yL" role="1PaTwD">
            <property role="3oM_SC" value="by" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$yM" role="1PaTwD">
            <property role="3oM_SC" value="default" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$yN" role="1PaTwD">
            <property role="3oM_SC" value="update" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$yO" role="1PaTwD">
            <property role="3oM_SC" value="methods" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$yP" role="1PaTwD">
            <property role="3oM_SC" value="don't" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$yQ" role="1PaTwD">
            <property role="3oM_SC" value="change" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$yR" role="1PaTwD">
            <property role="3oM_SC" value="recorded" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs$yS" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs$yT" role="1PaTwD">
            <property role="3oM_SC" value="version" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$yU" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$yV" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$yW" role="1PaTwD">
            <property role="3oM_SC" value="dependency" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$yX" role="1PaTwD">
            <property role="3oM_SC" value="that's" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$yY" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$yZ" role="1PaTwD">
            <property role="3oM_SC" value="among" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$z0" role="1PaTwD">
            <property role="3oM_SC" value="actual" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$z1" role="1PaTwD">
            <property role="3oM_SC" value="module" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$z2" role="1PaTwD">
            <property role="3oM_SC" value="dependencies." />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$z3" role="1PaTwD">
            <property role="3oM_SC" value="Change" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$z4" role="1PaTwD">
            <property role="3oM_SC" value="behavior" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$z5" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$z6" role="1PaTwD">
            <property role="3oM_SC" value="record" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$z7" role="1PaTwD">
            <property role="3oM_SC" value="only" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$z8" role="1PaTwD">
            <property role="3oM_SC" value="actual" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs$z9" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs$za" role="1PaTwD">
            <property role="3oM_SC" value="dependencies" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zb" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zc" role="1PaTwD">
            <property role="3oM_SC" value="their" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zd" role="1PaTwD">
            <property role="3oM_SC" value="versions" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$ze" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zf" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zg" role="1PaTwD">
            <property role="3oM_SC" value="method." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs$zh" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs$zi" role="1PaTwD">
            <property role="3oM_SC" value="The" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zj" role="1PaTwD">
            <property role="3oM_SC" value="flag" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zk" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zl" role="1PaTwD">
            <property role="3oM_SC" value="quite" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zm" role="1PaTwD">
            <property role="3oM_SC" value="dubious," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zn" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zo" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zp" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zq" role="1PaTwD">
            <property role="3oM_SC" value="easy" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zr" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zs" role="1PaTwD">
            <property role="3oM_SC" value="explain" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zt" role="1PaTwD">
            <property role="3oM_SC" value="use" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zu" role="1PaTwD">
            <property role="3oM_SC" value="cases." />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zv" role="1PaTwD">
            <property role="3oM_SC" value="Primarily" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zw" role="1PaTwD">
            <property role="3oM_SC" value="employed" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zx" role="1PaTwD">
            <property role="3oM_SC" value="by" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zy" role="1PaTwD">
            <property role="3oM_SC" value="Migration" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zz" role="1PaTwD">
            <property role="3oM_SC" value="code" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$z$" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$z_" role="1PaTwD">
            <property role="3oM_SC" value="likely" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs$zA" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs$zB" role="1PaTwD">
            <property role="3oM_SC" value="shall" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zC" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zD" role="1PaTwD">
            <property role="3oM_SC" value="ignored" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zE" role="1PaTwD">
            <property role="3oM_SC" value="by" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zF" role="1PaTwD">
            <property role="3oM_SC" value="others." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5qGXSHdue2s" role="jymVt" />
    <node concept="3clFb_" id="5qGXSHduhzd" role="jymVt">
      <property role="TrG5h" value="needsUpdate" />
      <node concept="10P_77" id="5qGXSHduh_Y" role="3clF45" />
      <node concept="3Tm1VV" id="5qGXSHduhzg" role="1B3o_S" />
      <node concept="3clFbS" id="5qGXSHduhzh" role="3clF47">
        <node concept="3clFbF" id="5qGXSHdwSeM" role="3cqZAp">
          <node concept="2OqwBi" id="5qGXSHdwSAn" role="3clFbG">
            <node concept="2OqwBi" id="5qGXSHdwSnF" role="2Oq$k0">
              <node concept="37vLTw" id="5qGXSHdwSeL" role="2Oq$k0">
                <ref role="3cqZAo" node="5qGXSHdue0f" resolve="myModuleRepo" />
              </node>
              <node concept="liA8E" id="5qGXSHdwSw0" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="5qGXSHdwSOq" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.checkReadAccess()" resolve="checkReadAccess" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5qGXSHdwSSz" role="3cqZAp">
          <node concept="1Wc70l" id="Er$e0jHafD" role="3cqZAk">
            <node concept="1Wc70l" id="Er$e0jHTG_" role="3uHU7B">
              <node concept="3y3z36" id="Er$e0jIobd" role="3uHU7w">
                <node concept="10Nm6u" id="Er$e0jIqZA" role="3uHU7w" />
                <node concept="2OqwBi" id="Er$e0jIdRe" role="3uHU7B">
                  <node concept="1eOMI4" id="Er$e0jI3W5" role="2Oq$k0">
                    <node concept="10QFUN" id="Er$e0jI3W2" role="1eOMHV">
                      <node concept="3uibUv" id="Er$e0jI7QH" role="10QFUM">
                        <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                      </node>
                      <node concept="37vLTw" id="Er$e0jHXS8" role="10QFUP">
                        <ref role="3cqZAo" node="5qGXSHdujn2" resolve="module" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="Er$e0jIhNE" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleDescriptor()" resolve="getModuleDescriptor" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="Er$e0jH$k9" role="3uHU7B">
                <node concept="2ZW3vV" id="Er$e0jHJNr" role="3uHU7w">
                  <node concept="3uibUv" id="Er$e0jHOdL" role="2ZW6by">
                    <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                  </node>
                  <node concept="37vLTw" id="Er$e0jHDB7" role="2ZW6bz">
                    <ref role="3cqZAo" node="5qGXSHdujn2" resolve="module" />
                  </node>
                </node>
                <node concept="3fqX7Q" id="Er$e0jHvF8" role="3uHU7B">
                  <node concept="2OqwBi" id="Er$e0jHvFa" role="3fr31v">
                    <node concept="37vLTw" id="Er$e0jHvFb" role="2Oq$k0">
                      <ref role="3cqZAo" node="5qGXSHdujn2" resolve="module" />
                    </node>
                    <node concept="liA8E" id="Er$e0jHvFc" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SModule.isReadOnly()" resolve="isReadOnly" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1rXfSq" id="5qGXSHdwSTQ" role="3uHU7w">
              <ref role="37wK5l" node="7_8SJV8KAZN" resolve="doUpdateImportVersions" />
              <node concept="37vLTw" id="5qGXSHdwVMn" role="37wK5m">
                <ref role="3cqZAo" node="5qGXSHdujn2" resolve="module" />
              </node>
              <node concept="3clFbT" id="5qGXSHdwZBo" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5qGXSHdujn2" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="5qGXSHdujn1" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
        <node concept="2AHcQZ" id="5qGXSHdx2o5" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="P$JXv" id="5qGXSHdujow" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs$zG" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs$zH" role="1PaTwD">
            <property role="3oM_SC" value="Tells" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zI" role="1PaTwD">
            <property role="3oM_SC" value="if" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zJ" role="1PaTwD">
            <property role="3oM_SC" value="version" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zK" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zL" role="1PaTwD">
            <property role="3oM_SC" value="module" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zM" role="1PaTwD">
            <property role="3oM_SC" value="dependencies" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zN" role="1PaTwD">
            <property role="3oM_SC" value="are" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zO" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zP" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zQ" role="1PaTwD">
            <property role="3oM_SC" value="accordance" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zR" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zS" role="1PaTwD">
            <property role="3oM_SC" value="expectations" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zT" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zU" role="1PaTwD">
            <property role="3oM_SC" value="it's" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zV" role="1PaTwD">
            <property role="3oM_SC" value="worth" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$zW" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="1Vtdud" id="1E1X3WHs$zX" role="1PaTwD">
            <node concept="1VuXuv" id="1E1X3WHs$zY" role="1Vtduc">
              <node concept="VXe0Z" id="5qGXSHdujGj" role="1VuXuu">
                <ref role="VXe0S" node="5qGXSHduhsJ" resolve="update" />
              </node>
              <node concept="1PaTwC" id="1E1X3WHs$$1" role="2JaDBN">
                <node concept="3oM_SD" id="1E1X3WHs$$2" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$3" role="1PaTwD">
            <property role="3oM_SC" value="them." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs$$4" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs$$5" role="1PaTwD">
            <property role="3oM_SC" value="Needs" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$6" role="1PaTwD">
            <property role="3oM_SC" value="read" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$7" role="1PaTwD">
            <property role="3oM_SC" value="access" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$8" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$9" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$a" role="1PaTwD">
            <property role="3oM_SC" value="repository" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5qGXSHduh$F" role="jymVt" />
    <node concept="3clFb_" id="5qGXSHduhsJ" role="jymVt">
      <property role="TrG5h" value="update" />
      <node concept="3clFbS" id="5qGXSHduhsM" role="3clF47">
        <node concept="3clFbF" id="5qGXSHdx6zi" role="3cqZAp">
          <node concept="2OqwBi" id="5qGXSHdx6zj" role="3clFbG">
            <node concept="2OqwBi" id="5qGXSHdx6zk" role="2Oq$k0">
              <node concept="37vLTw" id="5qGXSHdx6zl" role="2Oq$k0">
                <ref role="3cqZAo" node="5qGXSHdue0f" resolve="myModuleRepo" />
              </node>
              <node concept="liA8E" id="5qGXSHdx6zm" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="5qGXSHdx6zn" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.checkReadAccess()" resolve="checkReadAccess" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5qGXSHdx6Wn" role="3cqZAp">
          <node concept="3cpWsn" id="5qGXSHdx6Wo" role="3cpWs9">
            <property role="TrG5h" value="moduleRepo" />
            <node concept="3uibUv" id="5qGXSHdx6Ut" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="5qGXSHdx6Wp" role="33vP2m">
              <node concept="37vLTw" id="5qGXSHdx6Wq" role="2Oq$k0">
                <ref role="3cqZAo" node="5qGXSHduhvt" resolve="module" />
              </node>
              <node concept="liA8E" id="5qGXSHdx6Wr" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SModule.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5qGXSHdx78C" role="3cqZAp">
          <node concept="3clFbS" id="5qGXSHdx78E" role="3clFbx">
            <node concept="3SKdUt" id="5qGXSHdy$dD" role="3cqZAp">
              <node concept="1PaTwC" id="5qGXSHdy$dE" role="1aUNEU">
                <node concept="3oM_SD" id="5qGXSHdy$eO" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="5qGXSHdy$ew" role="1PaTwD">
                  <property role="3oM_SC" value="gonna" />
                </node>
                <node concept="3oM_SD" id="5qGXSHdy$eZ" role="1PaTwD">
                  <property role="3oM_SC" value="modify" />
                </node>
                <node concept="3oM_SD" id="5qGXSHdy$fb" role="1PaTwD">
                  <property role="3oM_SC" value="its" />
                </node>
                <node concept="3oM_SD" id="5qGXSHdy$fg" role="1PaTwD">
                  <property role="3oM_SC" value="imports" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5qGXSHdx7m4" role="3cqZAp">
              <node concept="2OqwBi" id="5qGXSHdx7_a" role="3clFbG">
                <node concept="2OqwBi" id="5qGXSHdx7qG" role="2Oq$k0">
                  <node concept="37vLTw" id="5qGXSHdx7m1" role="2Oq$k0">
                    <ref role="3cqZAo" node="5qGXSHdx6Wo" resolve="moduleRepo" />
                  </node>
                  <node concept="liA8E" id="5qGXSHdx7wK" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                  </node>
                </node>
                <node concept="liA8E" id="5qGXSHdx7HI" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~ModelAccess.checkWriteAccess()" resolve="checkWriteAccess" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="5qGXSHdx7h_" role="3clFbw">
            <node concept="10Nm6u" id="5qGXSHdx7lv" role="3uHU7w" />
            <node concept="37vLTw" id="5qGXSHdx7ao" role="3uHU7B">
              <ref role="3cqZAo" node="5qGXSHdx6Wo" resolve="moduleRepo" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5qGXSHdxOep" role="3cqZAp">
          <node concept="1rXfSq" id="5qGXSHdxOen" role="3clFbG">
            <ref role="37wK5l" node="7_8SJV8KAZN" resolve="doUpdateImportVersions" />
            <node concept="37vLTw" id="5qGXSHdxOOE" role="37wK5m">
              <ref role="3cqZAo" node="5qGXSHduhvt" resolve="module" />
            </node>
            <node concept="3clFbT" id="5qGXSHdxOV7" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5qGXSHdueCh" role="1B3o_S" />
      <node concept="3cqZAl" id="5qGXSHdueEN" role="3clF45" />
      <node concept="37vLTG" id="5qGXSHduhvt" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="5qGXSHduhvs" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
        <node concept="2AHcQZ" id="5qGXSHdx6uS" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="P$JXv" id="5qGXSHdujGR" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs$$b" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs$$c" role="1PaTwD">
            <property role="3oM_SC" value="Bring" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$d" role="1PaTwD">
            <property role="3oM_SC" value="versions" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$e" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$f" role="1PaTwD">
            <property role="3oM_SC" value="module" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$g" role="1PaTwD">
            <property role="3oM_SC" value="dependencies" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$h" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$i" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$j" role="1PaTwD">
            <property role="3oM_SC" value="reflect" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$k" role="1PaTwD">
            <property role="3oM_SC" value="actual" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$l" role="1PaTwD">
            <property role="3oM_SC" value="state" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$m" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$n" role="1PaTwD">
            <property role="3oM_SC" value="language/module" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$o" role="1PaTwD">
            <property role="3oM_SC" value="repository" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs$$p" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs$$q" role="1PaTwD">
            <property role="3oM_SC" value="Needs" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$r" role="1PaTwD">
            <property role="3oM_SC" value="write" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$s" role="1PaTwD">
            <property role="3oM_SC" value="access" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$t" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$u" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$v" role="1PaTwD">
            <property role="3oM_SC" value="module" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$w" role="1PaTwD">
            <property role="3oM_SC" value="repository" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$x" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$y" role="1PaTwD">
            <property role="3oM_SC" value="case" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$z" role="1PaTwD">
            <property role="3oM_SC" value="module" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$$" role="1PaTwD">
            <property role="3oM_SC" value="has" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$_" role="1PaTwD">
            <property role="3oM_SC" value="been" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$A" role="1PaTwD">
            <property role="3oM_SC" value="attached" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$B" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$C" role="1PaTwD">
            <property role="3oM_SC" value="one." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs$$D" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs$$E" role="1PaTwD">
            <property role="3oM_SC" value="Needs" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$F" role="1PaTwD">
            <property role="3oM_SC" value="at" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$G" role="1PaTwD">
            <property role="3oM_SC" value="least" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$H" role="1PaTwD">
            <property role="3oM_SC" value="read" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$I" role="1PaTwD">
            <property role="3oM_SC" value="access" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$J" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$K" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$L" role="1PaTwD">
            <property role="3oM_SC" value="repository" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$M" role="1PaTwD">
            <property role="3oM_SC" value="we" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$N" role="1PaTwD">
            <property role="3oM_SC" value="resolve" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$O" role="1PaTwD">
            <property role="3oM_SC" value="dependencies" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$P" role="1PaTwD">
            <property role="3oM_SC" value="with." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5qGXSHdulrn" role="jymVt" />
    <node concept="3clFb_" id="5qGXSHdulv3" role="jymVt">
      <property role="TrG5h" value="dependenciesPresent" />
      <node concept="10P_77" id="5qGXSHdulwP" role="3clF45" />
      <node concept="3Tm1VV" id="5qGXSHdulv6" role="1B3o_S" />
      <node concept="3clFbS" id="5qGXSHdulv7" role="3clF47">
        <node concept="3clFbF" id="5qGXSHdx9Au" role="3cqZAp">
          <node concept="2OqwBi" id="5qGXSHdx9Av" role="3clFbG">
            <node concept="2OqwBi" id="5qGXSHdx9Aw" role="2Oq$k0">
              <node concept="37vLTw" id="5qGXSHdx9Ax" role="2Oq$k0">
                <ref role="3cqZAo" node="5qGXSHdue0f" resolve="myModuleRepo" />
              </node>
              <node concept="liA8E" id="5qGXSHdx9Ay" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="5qGXSHdx9Az" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.checkReadAccess()" resolve="checkReadAccess" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="16MtQqZa97_" role="3cqZAp">
          <node concept="3cpWsn" id="16MtQqZa97A" role="3cpWs9">
            <property role="TrG5h" value="usedLanguages" />
            <node concept="2hMVRd" id="16MtQqZa97B" role="1tU5fm">
              <node concept="3uibUv" id="16MtQqZa97C" role="2hN53Y">
                <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
              </node>
            </node>
            <node concept="2OqwBi" id="16MtQqZa97D" role="33vP2m">
              <node concept="37vLTw" id="16MtQqZa97E" role="2Oq$k0">
                <ref role="3cqZAo" node="5qGXSHdulRp" resolve="module" />
              </node>
              <node concept="liA8E" id="16MtQqZa97F" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SModule.getUsedLanguages()" resolve="getUsedLanguages" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5qGXSHduACt" role="3cqZAp">
          <node concept="1PaTwC" id="5qGXSHduACu" role="1aUNEU">
            <node concept="3oM_SD" id="5qGXSHduACv" role="1PaTwD">
              <property role="3oM_SC" value="it's" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduAUr" role="1PaTwD">
              <property role="3oM_SC" value="tempting" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduAUI" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduAUM" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduAUR" role="1PaTwD">
              <property role="3oM_SC" value="lr.getAllLanguages().containsAll(usedLanguages)," />
            </node>
            <node concept="3oM_SD" id="5qGXSHduAWl" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduAWs" role="1PaTwD">
              <property role="3oM_SC" value="there's" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduAW$" role="1PaTwD">
              <property role="3oM_SC" value="array" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduAWP" role="1PaTwD">
              <property role="3oM_SC" value="list" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduAWZ" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduAXy" role="1PaTwD">
              <property role="3oM_SC" value="might" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5qGXSHduBus" role="3cqZAp">
          <node concept="1PaTwC" id="5qGXSHduBut" role="1aUNEU">
            <node concept="3oM_SD" id="5qGXSHduBYS" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduBZD" role="1PaTwD">
              <property role="3oM_SC" value="huge" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduBZG" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduBZK" role="1PaTwD">
              <property role="3oM_SC" value="ineffective" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduC0H" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduC0N" role="1PaTwD">
              <property role="3oM_SC" value="contains();" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduC1q" role="1PaTwD">
              <property role="3oM_SC" value="converting" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduC22" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduC2b" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduC2l" role="1PaTwD">
              <property role="3oM_SC" value="set" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduC2C" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduC2W" role="1PaTwD">
              <property role="3oM_SC" value="too" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduC39" role="1PaTwD">
              <property role="3oM_SC" value="much," />
            </node>
            <node concept="3oM_SD" id="5qGXSHduC3B" role="1PaTwD">
              <property role="3oM_SC" value="too." />
            </node>
            <node concept="3oM_SD" id="5qGXSHduC4e" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5qGXSHduC7v" role="3cqZAp">
          <node concept="1PaTwC" id="5qGXSHduC7u" role="1aUNEU">
            <node concept="3oM_SD" id="5qGXSHduC7t" role="1PaTwD">
              <property role="3oM_SC" value="Hence," />
            </node>
            <node concept="3oM_SD" id="5qGXSHduC4A" role="1PaTwD">
              <property role="3oM_SC" value="just" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduC4Z" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduC5p" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduC5G" role="1PaTwD">
              <property role="3oM_SC" value="SLanguage.isValid" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduC70" role="1PaTwD">
              <property role="3oM_SC" value="check" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduCCK" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduCCS" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduCD1" role="1PaTwD">
              <property role="3oM_SC" value="used" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduCDr" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduCDA" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduCDU" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduCE7" role="1PaTwD">
              <property role="3oM_SC" value="VersionFixer," />
            </node>
            <node concept="3oM_SD" id="5qGXSHduCE_" role="1PaTwD">
              <property role="3oM_SC" value="just" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduCEO" role="1PaTwD">
              <property role="3oM_SC" value="done" />
            </node>
            <node concept="3oM_SD" id="5qGXSHduCF4" role="1PaTwD">
              <property role="3oM_SC" value="right." />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="16MtQqZa97G" role="3cqZAp">
          <node concept="3clFbS" id="16MtQqZa97H" role="3clFbx">
            <node concept="3cpWs6" id="16MtQqZa97I" role="3cqZAp">
              <node concept="3clFbT" id="16MtQqZa97J" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="16MtQqZa97K" role="3clFbw">
            <node concept="37vLTw" id="16MtQqZa97L" role="2Oq$k0">
              <ref role="3cqZAo" node="16MtQqZa97A" resolve="usedLanguages" />
            </node>
            <node concept="2HwmR7" id="16MtQqZa97M" role="2OqNvi">
              <node concept="1bVj0M" id="16MtQqZa97N" role="23t8la">
                <node concept="3clFbS" id="16MtQqZa97O" role="1bW5cS">
                  <node concept="3clFbF" id="16MtQqZa97P" role="3cqZAp">
                    <node concept="3clFbC" id="5qGXSHdu_Jx" role="3clFbG">
                      <node concept="10Nm6u" id="5qGXSHdu_T1" role="3uHU7w" />
                      <node concept="2OqwBi" id="5qGXSHdu$Wb" role="3uHU7B">
                        <node concept="37vLTw" id="5qGXSHdu$F3" role="2Oq$k0">
                          <ref role="3cqZAo" node="5qGXSHdudXB" resolve="myLanguageRegistry" />
                        </node>
                        <node concept="liA8E" id="5qGXSHdu_kv" role="2OqNvi">
                          <ref role="37wK5l" to="vndm:~LanguageRegistry.getLanguage(org.jetbrains.mps.openapi.language.SLanguage)" resolve="getLanguage" />
                          <node concept="37vLTw" id="5qGXSHdu_re" role="37wK5m">
                            <ref role="3cqZAo" node="5W7E4fV0X5A" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0X5A" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0X5B" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="16MtQqZa97W" role="3cqZAp" />
        <node concept="3cpWs8" id="16MtQqZa97X" role="3cqZAp">
          <node concept="3cpWsn" id="16MtQqZa97Y" role="3cpWs9">
            <property role="TrG5h" value="deps" />
            <node concept="A3Dl8" id="16MtQqZa97Z" role="1tU5fm">
              <node concept="3uibUv" id="16MtQqZa980" role="A3Ik2">
                <ref role="3uigEE" to="lui2:~SDependency" resolve="SDependency" />
              </node>
            </node>
            <node concept="2OqwBi" id="16MtQqZa981" role="33vP2m">
              <node concept="37vLTw" id="16MtQqZa982" role="2Oq$k0">
                <ref role="3cqZAo" node="5qGXSHdulRp" resolve="module" />
              </node>
              <node concept="liA8E" id="16MtQqZa983" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SModule.getDeclaredDependencies()" resolve="getDeclaredDependencies" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="16MtQqZa984" role="3cqZAp">
          <node concept="3clFbS" id="16MtQqZa985" role="3clFbx">
            <node concept="3cpWs6" id="16MtQqZa986" role="3cqZAp">
              <node concept="3clFbT" id="16MtQqZa987" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="16MtQqZa988" role="3clFbw">
            <node concept="37vLTw" id="16MtQqZa989" role="2Oq$k0">
              <ref role="3cqZAo" node="16MtQqZa97Y" resolve="deps" />
            </node>
            <node concept="2HwmR7" id="16MtQqZa98a" role="2OqNvi">
              <node concept="1bVj0M" id="16MtQqZa98b" role="23t8la">
                <node concept="3clFbS" id="16MtQqZa98c" role="1bW5cS">
                  <node concept="3clFbF" id="16MtQqZa98d" role="3cqZAp">
                    <node concept="3clFbC" id="16MtQqZa98e" role="3clFbG">
                      <node concept="10Nm6u" id="16MtQqZa98f" role="3uHU7w" />
                      <node concept="2OqwBi" id="5qGXSHduuJx" role="3uHU7B">
                        <node concept="2OqwBi" id="16MtQqZa98g" role="2Oq$k0">
                          <node concept="37vLTw" id="16MtQqZa98h" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0X5C" resolve="it" />
                          </node>
                          <node concept="liA8E" id="5qGXSHduuCz" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~SDependency.getTargetModule()" resolve="getTargetModule" />
                          </node>
                        </node>
                        <node concept="liA8E" id="5qGXSHduuZj" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                          <node concept="37vLTw" id="5qGXSHduv2W" role="37wK5m">
                            <ref role="3cqZAo" node="5qGXSHdue0f" resolve="myModuleRepo" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0X5C" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0X5D" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="16MtQqZa98l" role="3cqZAp" />
        <node concept="3clFbJ" id="16MtQqZa98m" role="3cqZAp">
          <node concept="3clFbS" id="16MtQqZa98n" role="3clFbx">
            <node concept="3SKdUt" id="16MtQqZa98o" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXo7zw" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXo7zx" role="1PaTwD">
                  <property role="3oM_SC" value="todo" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7zy" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7zz" role="1PaTwD">
                  <property role="3oM_SC" value="should" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7z$" role="1PaTwD">
                  <property role="3oM_SC" value="be" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7z_" role="1PaTwD">
                  <property role="3oM_SC" value="removed" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7zA" role="1PaTwD">
                  <property role="3oM_SC" value="when" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7zB" role="1PaTwD">
                  <property role="3oM_SC" value="there's" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7zC" role="1PaTwD">
                  <property role="3oM_SC" value="API" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7zD" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7zE" role="1PaTwD">
                  <property role="3oM_SC" value="accessing" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7zF" role="1PaTwD">
                  <property role="3oM_SC" value="devkit" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7zG" role="1PaTwD">
                  <property role="3oM_SC" value="&quot;references&quot;" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="16MtQqZa98q" role="3cqZAp">
              <node concept="3cpWsn" id="16MtQqZa98r" role="3cpWs9">
                <property role="TrG5h" value="devkits" />
                <node concept="2hMVRd" id="16MtQqZa98s" role="1tU5fm">
                  <node concept="3uibUv" id="16MtQqZa98t" role="2hN53Y">
                    <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
                  </node>
                </node>
                <node concept="2OqwBi" id="16MtQqZa98u" role="33vP2m">
                  <node concept="2OqwBi" id="16MtQqZa98v" role="2Oq$k0">
                    <node concept="1eOMI4" id="16MtQqZa98w" role="2Oq$k0">
                      <node concept="10QFUN" id="16MtQqZa98x" role="1eOMHV">
                        <node concept="37vLTw" id="16MtQqZa98y" role="10QFUP">
                          <ref role="3cqZAo" node="5qGXSHdulRp" resolve="module" />
                        </node>
                        <node concept="3uibUv" id="16MtQqZa98z" role="10QFUM">
                          <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="16MtQqZa98$" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~AbstractModule.collectLanguagesAndDevkits()" resolve="collectLanguagesAndDevkits" />
                    </node>
                  </node>
                  <node concept="2OwXpG" id="16MtQqZa98_" role="2OqNvi">
                    <ref role="2Oxat5" to="z1c3:~AbstractModule$LangAndDevkits.devkits" resolve="devkits" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="16MtQqZa98A" role="3cqZAp">
              <node concept="3clFbS" id="16MtQqZa98B" role="3clFbx">
                <node concept="3cpWs6" id="16MtQqZa98C" role="3cqZAp">
                  <node concept="3clFbT" id="16MtQqZa98D" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="16MtQqZa98E" role="3clFbw">
                <node concept="37vLTw" id="16MtQqZa98F" role="2Oq$k0">
                  <ref role="3cqZAo" node="16MtQqZa98r" resolve="devkits" />
                </node>
                <node concept="2HwmR7" id="16MtQqZa98G" role="2OqNvi">
                  <node concept="1bVj0M" id="16MtQqZa98H" role="23t8la">
                    <node concept="3clFbS" id="16MtQqZa98I" role="1bW5cS">
                      <node concept="3clFbF" id="16MtQqZa98J" role="3cqZAp">
                        <node concept="3clFbC" id="16MtQqZa98K" role="3clFbG">
                          <node concept="10Nm6u" id="16MtQqZa98L" role="3uHU7w" />
                          <node concept="2OqwBi" id="16MtQqZa98M" role="3uHU7B">
                            <node concept="37vLTw" id="16MtQqZa98N" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0X5E" resolve="it" />
                            </node>
                            <node concept="liA8E" id="16MtQqZa98O" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                              <node concept="37vLTw" id="5qGXSHduuno" role="37wK5m">
                                <ref role="3cqZAo" node="5qGXSHdue0f" resolve="myModuleRepo" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0X5E" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0X5F" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="16MtQqZa98U" role="3clFbw">
            <node concept="3uibUv" id="16MtQqZa98V" role="2ZW6by">
              <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
            </node>
            <node concept="37vLTw" id="16MtQqZa98W" role="2ZW6bz">
              <ref role="3cqZAo" node="5qGXSHdulRp" resolve="module" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="16MtQqZa98X" role="3cqZAp" />
        <node concept="3cpWs6" id="16MtQqZa98Y" role="3cqZAp">
          <node concept="3clFbT" id="16MtQqZa98Z" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5qGXSHdulRp" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="5qGXSHdulRo" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="P$JXv" id="5qGXSHdulSA" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs$$Q" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs$$R" role="1PaTwD">
            <property role="3oM_SC" value="Tells" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$S" role="1PaTwD">
            <property role="3oM_SC" value="if" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$T" role="1PaTwD">
            <property role="3oM_SC" value="supplied" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$U" role="1PaTwD">
            <property role="3oM_SC" value="language/module" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$V" role="1PaTwD">
            <property role="3oM_SC" value="repository" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$W" role="1PaTwD">
            <property role="3oM_SC" value="contain" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$X" role="1PaTwD">
            <property role="3oM_SC" value="all" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$Y" role="1PaTwD">
            <property role="3oM_SC" value="necessary" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$$Z" role="1PaTwD">
            <property role="3oM_SC" value="dependencies" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$_0" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$_1" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$_2" role="1PaTwD">
            <property role="3oM_SC" value="module." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs$_3" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs$_4" role="1PaTwD">
            <property role="3oM_SC" value="Unlike" />
          </node>
          <node concept="1Vtdud" id="1E1X3WHs$_5" role="1PaTwD">
            <node concept="1VuXuv" id="1E1X3WHs$_6" role="1Vtduc">
              <node concept="VXe0Z" id="5qGXSHdulW0" role="1VuXuu">
                <ref role="VXe0S" node="5qGXSHduhzd" resolve="needsUpdate" />
              </node>
              <node concept="1PaTwC" id="1E1X3WHs$_9" role="2JaDBN">
                <node concept="3oM_SD" id="1E1X3WHs$_a" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$_b" role="1PaTwD">
            <property role="3oM_SC" value="," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$_c" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$_d" role="1PaTwD">
            <property role="3oM_SC" value="method" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$_e" role="1PaTwD">
            <property role="3oM_SC" value="doesn't" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$_f" role="1PaTwD">
            <property role="3oM_SC" value="check" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$_g" role="1PaTwD">
            <property role="3oM_SC" value="language/module" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$_h" role="1PaTwD">
            <property role="3oM_SC" value="versions," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$_i" role="1PaTwD">
            <property role="3oM_SC" value="just" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$_j" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$_k" role="1PaTwD">
            <property role="3oM_SC" value="fact" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$_l" role="1PaTwD">
            <property role="3oM_SC" value="they" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$_m" role="1PaTwD">
            <property role="3oM_SC" value="could" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$_n" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$_o" role="1PaTwD">
            <property role="3oM_SC" value="discovered." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5qGXSHdxusG" role="jymVt" />
    <node concept="3clFb_" id="7_8SJV8KAZN" role="jymVt">
      <property role="TrG5h" value="doUpdateImportVersions" />
      <node concept="37vLTG" id="5qGXSHdw9e7" role="3clF46">
        <property role="TrG5h" value="module" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="5qGXSHdwckQ" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="37vLTG" id="7_8SJV8F$c0" role="3clF46">
        <property role="TrG5h" value="dryRun" />
        <node concept="10P_77" id="7_8SJV8F$bZ" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="7_8SJV8Lo3T" role="3clF45" />
      <node concept="3Tm6S6" id="7_8SJV8Lqfr" role="1B3o_S" />
      <node concept="3clFbS" id="7_8SJV8KAZR" role="3clF47">
        <node concept="3SKdUt" id="5qGXSHdwHMN" role="3cqZAp">
          <node concept="1PaTwC" id="5qGXSHdwHMO" role="1aUNEU">
            <node concept="3oM_SD" id="5qGXSHdwHMP" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="5qGXSHdwKmg" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="5qGXSHdwKmB" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="5qGXSHdwKmF" role="1PaTwD">
              <property role="3oM_SC" value="like" />
            </node>
            <node concept="3oM_SD" id="5qGXSHdwKnh" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="5qGXSHdwKnx" role="1PaTwD">
              <property role="3oM_SC" value="method," />
            </node>
            <node concept="3oM_SD" id="5qGXSHdwKnM" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="5qGXSHdwKnU" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="5qGXSHdwKo3" role="1PaTwD">
              <property role="3oM_SC" value="want" />
            </node>
            <node concept="3oM_SD" id="5qGXSHdwKod" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5qGXSHdwKoo" role="1PaTwD">
              <property role="3oM_SC" value="bother" />
            </node>
            <node concept="3oM_SD" id="5qGXSHdwKoI" role="1PaTwD">
              <property role="3oM_SC" value="refactoring" />
            </node>
            <node concept="3oM_SD" id="5qGXSHdwKpp" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="5qGXSHdwKpB" role="1PaTwD">
              <property role="3oM_SC" value="now" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2V3ml1v4eA5" role="3cqZAp">
          <node concept="3cpWsn" id="2V3ml1v4eA6" role="3cpWs9">
            <property role="TrG5h" value="abstractModule" />
            <node concept="3uibUv" id="2V3ml1v4eA4" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
            </node>
            <node concept="10QFUN" id="2V3ml1v4eA7" role="33vP2m">
              <node concept="37vLTw" id="5qGXSHdwtjz" role="10QFUP">
                <ref role="3cqZAo" node="5qGXSHdw9e7" resolve="module" />
              </node>
              <node concept="3uibUv" id="2V3ml1v4eA9" role="10QFUM">
                <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2V3ml1v4qrM" role="3cqZAp">
          <node concept="3cpWsn" id="2V3ml1v4qrN" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="md" />
            <node concept="3uibUv" id="2V3ml1v4qrO" role="1tU5fm">
              <ref role="3uigEE" to="w0gx:~ModuleDescriptor" resolve="ModuleDescriptor" />
            </node>
            <node concept="2OqwBi" id="2V3ml1v4qrP" role="33vP2m">
              <node concept="37vLTw" id="2V3ml1v4qt5" role="2Oq$k0">
                <ref role="3cqZAo" node="2V3ml1v4eA6" resolve="abstractModule" />
              </node>
              <node concept="liA8E" id="2V3ml1v4qrR" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleDescriptor()" resolve="getModuleDescriptor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="16MtQqZaJhM" role="3cqZAp" />
        <node concept="1gVbGN" id="16MtQqZaN1J" role="3cqZAp">
          <node concept="3y3z36" id="16MtQqZaQch" role="1gVkn0">
            <node concept="10Nm6u" id="16MtQqZaRd5" role="3uHU7w" />
            <node concept="37vLTw" id="16MtQqZaOUc" role="3uHU7B">
              <ref role="3cqZAo" node="2V3ml1v4qrN" resolve="md" />
            </node>
          </node>
          <node concept="3cpWs3" id="2V3ml1v4r_3" role="1gVpfI">
            <node concept="Xl_RD" id="2V3ml1v4r_4" role="3uHU7B">
              <property role="Xl_RC" value="Module descriptor is null for module " />
            </node>
            <node concept="2OqwBi" id="4yPMgAVhDw5" role="3uHU7w">
              <node concept="37vLTw" id="5gIiJF06nMR" role="2Oq$k0">
                <ref role="3cqZAo" node="5qGXSHdw9e7" resolve="module" />
              </node>
              <node concept="liA8E" id="4yPMgAVhDLe" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7XP_KYiBlbJ" role="3cqZAp" />
        <node concept="3clFbJ" id="7XP_KYiBoNb" role="3cqZAp">
          <node concept="3clFbS" id="7XP_KYiBoNd" role="3clFbx">
            <node concept="3SKdUt" id="7XP_KYiBOt$" role="3cqZAp">
              <node concept="1PaTwC" id="7XP_KYiBOt_" role="1aUNEU">
                <node concept="3oM_SD" id="7XP_KYiBOtA" role="1PaTwD">
                  <property role="3oM_SC" value="MigrationRegistryImpl" />
                </node>
                <node concept="3oM_SD" id="7XP_KYiBU_9" role="1PaTwD">
                  <property role="3oM_SC" value="checks" />
                </node>
                <node concept="3oM_SD" id="7XP_KYiBU_D" role="1PaTwD">
                  <property role="3oM_SC" value="load" />
                </node>
                <node concept="3oM_SD" id="7XP_KYiBU_R" role="1PaTwD">
                  <property role="3oM_SC" value="exception" />
                </node>
                <node concept="3oM_SD" id="7XP_KYiBU_W" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="7XP_KYiBUAj" role="1PaTwD">
                  <property role="3oM_SC" value="doUpdateImportVersions()," />
                </node>
                <node concept="3oM_SD" id="7XP_KYiBWS8" role="1PaTwD">
                  <property role="3oM_SC" value="but" />
                </node>
                <node concept="3oM_SD" id="7XP_KYiBWT1" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="7XP_KYiBWU4" role="1PaTwD">
                  <property role="3oM_SC" value="careless" />
                </node>
                <node concept="3oM_SD" id="7XP_KYiBWUo" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="7XP_KYiBWUJ" role="1PaTwD">
                  <property role="3oM_SC" value="importVersionsUpdateRequired()" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="7XP_KYiBYGv" role="3cqZAp">
              <node concept="1PaTwC" id="7XP_KYiBYGw" role="1aUNEU">
                <node concept="3oM_SD" id="7XP_KYiC1uN" role="1PaTwD">
                  <property role="3oM_SC" value="I" />
                </node>
                <node concept="3oM_SD" id="7XP_KYiC1uX" role="1PaTwD">
                  <property role="3oM_SC" value="don't" />
                </node>
                <node concept="3oM_SD" id="7XP_KYiC1vq" role="1PaTwD">
                  <property role="3oM_SC" value="see" />
                </node>
                <node concept="3oM_SD" id="7XP_KYiC1vu" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="7XP_KYiC1vR" role="1PaTwD">
                  <property role="3oM_SC" value="reason" />
                </node>
                <node concept="3oM_SD" id="7XP_KYiC1vX" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="7XP_KYiC1w4" role="1PaTwD">
                  <property role="3oM_SC" value="fail" />
                </node>
                <node concept="3oM_SD" id="7XP_KYiC1wO" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="7XP_KYiC1wX" role="1PaTwD">
                  <property role="3oM_SC" value="assertion" />
                </node>
                <node concept="3oM_SD" id="7XP_KYiC1x_" role="1PaTwD">
                  <property role="3oM_SC" value="when" />
                </node>
                <node concept="3oM_SD" id="7XP_KYiC1y4" role="1PaTwD">
                  <property role="3oM_SC" value="it's" />
                </node>
                <node concept="3oM_SD" id="7XP_KYiC1yq" role="1PaTwD">
                  <property role="3oM_SC" value="dryRun" />
                </node>
                <node concept="3oM_SD" id="7XP_KYiC1B0" role="1PaTwD">
                  <property role="3oM_SC" value="anyway," />
                </node>
                <node concept="3oM_SD" id="7XP_KYiC1zf" role="1PaTwD">
                  <property role="3oM_SC" value="that's" />
                </node>
                <node concept="3oM_SD" id="7XP_KYiC1zt" role="1PaTwD">
                  <property role="3oM_SC" value="why" />
                </node>
                <node concept="3oM_SD" id="7XP_KYiC1zG" role="1PaTwD">
                  <property role="3oM_SC" value="I" />
                </node>
                <node concept="3oM_SD" id="7XP_KYiC1$6" role="1PaTwD">
                  <property role="3oM_SC" value="did" />
                </node>
                <node concept="3oM_SD" id="7XP_KYiC1$F" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="7XP_KYiC1BO" role="1PaTwD">
                  <property role="3oM_SC" value="fix" />
                </node>
                <node concept="3oM_SD" id="7XP_KYiC1Ad" role="1PaTwD">
                  <property role="3oM_SC" value="importVersionsUpdateRequired()." />
                </node>
              </node>
            </node>
            <node concept="1gVbGN" id="16MtQqZb7j4" role="3cqZAp">
              <node concept="37vLTw" id="7XP_KYiBJy9" role="1gVkn0">
                <ref role="3cqZAo" node="7_8SJV8F$c0" resolve="dryRun" />
              </node>
              <node concept="3cpWs3" id="16MtQqZbg2L" role="1gVpfI">
                <node concept="Xl_RD" id="16MtQqZbhaK" role="3uHU7w">
                  <property role="Xl_RC" value=" with load exceptions" />
                </node>
                <node concept="3cpWs3" id="16MtQqZbeI_" role="3uHU7B">
                  <node concept="Xl_RD" id="16MtQqZbduE" role="3uHU7B">
                    <property role="Xl_RC" value="Asked to update import versions in module " />
                  </node>
                  <node concept="2OqwBi" id="16MtQqZbfG$" role="3uHU7w">
                    <node concept="37vLTw" id="16MtQqZbfG_" role="2Oq$k0">
                      <ref role="3cqZAo" node="5qGXSHdw9e7" resolve="module" />
                    </node>
                    <node concept="liA8E" id="16MtQqZbfGA" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7XP_KYiBwUe" role="3cqZAp">
              <node concept="3clFbT" id="7XP_KYiB$7I" role="3cqZAk" />
            </node>
          </node>
          <node concept="3y3z36" id="7XP_KYiBvDI" role="3clFbw">
            <node concept="10Nm6u" id="7XP_KYiBwTd" role="3uHU7w" />
            <node concept="2OqwBi" id="7XP_KYiBu1B" role="3uHU7B">
              <node concept="37vLTw" id="7XP_KYiBu1C" role="2Oq$k0">
                <ref role="3cqZAo" node="2V3ml1v4qrN" resolve="md" />
              </node>
              <node concept="liA8E" id="7XP_KYiBu1D" role="2OqNvi">
                <ref role="37wK5l" to="w0gx:~ModuleDescriptor.getLoadException()" resolve="getLoadException" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="16MtQqZbndJ" role="3cqZAp" />
        <node concept="3clFbJ" id="16MtQqZbqZd" role="3cqZAp">
          <node concept="3clFbS" id="16MtQqZbqZf" role="3clFbx">
            <node concept="3SKdUt" id="16MtQqZbDy4" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXo7yG" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXo7yH" role="1PaTwD">
                  <property role="3oM_SC" value="myRemoveOddImports" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7yI" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7yJ" role="1PaTwD">
                  <property role="3oM_SC" value="used" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7yK" role="1PaTwD">
                  <property role="3oM_SC" value="on" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7yL" role="1PaTwD">
                  <property role="3oM_SC" value="language+sandbox_solution" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7yM" role="1PaTwD">
                  <property role="3oM_SC" value="creation" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7yN" role="1PaTwD">
                  <property role="3oM_SC" value="since" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7yO" role="1PaTwD">
                  <property role="3oM_SC" value="language" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7yP" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7yQ" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7yR" role="1PaTwD">
                  <property role="3oM_SC" value="valid" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7yS" role="1PaTwD">
                  <property role="3oM_SC" value="yet" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="16MtQqZbFAP" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXo7yT" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXo7yU" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7yV" role="1PaTwD">
                  <property role="3oM_SC" value="other" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7yW" role="1PaTwD">
                  <property role="3oM_SC" value="cases," />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7yX" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7yY" role="1PaTwD">
                  <property role="3oM_SC" value="do" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7yZ" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7z0" role="1PaTwD">
                  <property role="3oM_SC" value="allow" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7z1" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7z2" role="1PaTwD">
                  <property role="3oM_SC" value="update" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7z3" role="1PaTwD">
                  <property role="3oM_SC" value="import" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7z4" role="1PaTwD">
                  <property role="3oM_SC" value="versions" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7z5" role="1PaTwD">
                  <property role="3oM_SC" value="(since" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7z6" role="1PaTwD">
                  <property role="3oM_SC" value="broken" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7z7" role="1PaTwD">
                  <property role="3oM_SC" value="deps" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7z8" role="1PaTwD">
                  <property role="3oM_SC" value="may" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7z9" role="1PaTwD">
                  <property role="3oM_SC" value="lead" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7za" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7zb" role="1PaTwD">
                  <property role="3oM_SC" value="incorrectly" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo7zc" role="1PaTwD">
                  <property role="3oM_SC" value="optimization)" />
                </node>
              </node>
            </node>
            <node concept="1gVbGN" id="16MtQqZbkhn" role="3cqZAp">
              <node concept="1rXfSq" id="4yPMgAViWDV" role="1gVkn0">
                <ref role="37wK5l" node="5qGXSHdulv3" resolve="dependenciesPresent" />
                <node concept="37vLTw" id="16MtQqZbx7Q" role="37wK5m">
                  <ref role="3cqZAo" node="5qGXSHdw9e7" resolve="module" />
                </node>
              </node>
              <node concept="3cpWs3" id="16MtQqZb$TH" role="1gVpfI">
                <node concept="Xl_RD" id="16MtQqZb$TI" role="3uHU7w">
                  <property role="Xl_RC" value=" are satisfied" />
                </node>
                <node concept="3cpWs3" id="16MtQqZb$TJ" role="3uHU7B">
                  <node concept="Xl_RD" id="16MtQqZb$TK" role="3uHU7B">
                    <property role="Xl_RC" value="Not all dependencies of module " />
                  </node>
                  <node concept="2OqwBi" id="16MtQqZb$TL" role="3uHU7w">
                    <node concept="37vLTw" id="16MtQqZb$TM" role="2Oq$k0">
                      <ref role="3cqZAo" node="5qGXSHdw9e7" resolve="module" />
                    </node>
                    <node concept="liA8E" id="16MtQqZb$TN" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="16MtQqZbsSl" role="3clFbw">
            <ref role="3cqZAo" node="4yPMgAVklil" resolve="myRemoveOddImports" />
          </node>
        </node>
        <node concept="3clFbH" id="KWNNZSfw49" role="3cqZAp" />
        <node concept="3cpWs8" id="2V3ml1v4qs6" role="3cqZAp">
          <node concept="3cpWsn" id="2V3ml1v4qs7" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="oldDepsFiltered" />
            <node concept="3uibUv" id="2V3ml1v4qs8" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <node concept="3uibUv" id="2V3ml1v4qs9" role="11_B2D">
                <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
              </node>
              <node concept="3uibUv" id="2V3ml1v4qsa" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="1rXfSq" id="18VG85aFP15" role="33vP2m">
              <ref role="37wK5l" node="18VG85aEIcm" resolve="filterValidDependencyVersions" />
              <node concept="2OqwBi" id="7_8SJV8GvqR" role="37wK5m">
                <node concept="37vLTw" id="18VG85aFP16" role="2Oq$k0">
                  <ref role="3cqZAo" node="2V3ml1v4qrN" resolve="md" />
                </node>
                <node concept="liA8E" id="7_8SJV8GwMO" role="2OqNvi">
                  <ref role="37wK5l" to="w0gx:~ModuleDescriptor.getDependencyVersions()" resolve="getDependencyVersions" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2V3ml1v7VxD" role="3cqZAp">
          <node concept="3cpWsn" id="2V3ml1v7VxE" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="langVersions" />
            <node concept="3uibUv" id="2V3ml1v7XmL" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <node concept="3uibUv" id="2V3ml1v7XmM" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
              </node>
              <node concept="3uibUv" id="2V3ml1v7XmN" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="1rXfSq" id="18VG85aFPeC" role="33vP2m">
              <ref role="37wK5l" node="18VG85aFfsT" resolve="filterValidLanguageVersions" />
              <node concept="2OqwBi" id="7_8SJV8Hd0V" role="37wK5m">
                <node concept="37vLTw" id="18VG85aFPeD" role="2Oq$k0">
                  <ref role="3cqZAo" node="2V3ml1v4qrN" resolve="md" />
                </node>
                <node concept="liA8E" id="7_8SJV8HesW" role="2OqNvi">
                  <ref role="37wK5l" to="w0gx:~ModuleDescriptor.getLanguageVersions()" resolve="getLanguageVersions" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7_8SJV8FJMc" role="3cqZAp" />
        <node concept="3cpWs8" id="7_8SJV8HpT_" role="3cqZAp">
          <node concept="3cpWsn" id="7_8SJV8HpTC" role="3cpWs9">
            <property role="TrG5h" value="changed" />
            <node concept="10P_77" id="7_8SJV8HpTz" role="1tU5fm" />
            <node concept="3clFbT" id="7_8SJV8Hrac" role="33vP2m">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7_8SJV8HoEw" role="3cqZAp" />
        <node concept="3cpWs8" id="2V3ml1v4qt3" role="3cqZAp">
          <node concept="3cpWsn" id="2V3ml1v4qsA" role="3cpWs9">
            <property role="TrG5h" value="newDepVersions" />
            <node concept="3rvAFt" id="7_8SJV8HBE0" role="1tU5fm">
              <node concept="3uibUv" id="7_8SJV8HBZm" role="3rvQeY">
                <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
              </node>
              <node concept="3uibUv" id="7_8SJV8HCjn" role="3rvSg0">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="1rXfSq" id="2V3ml1v1VPw" role="33vP2m">
              <ref role="37wK5l" node="2V3ml1v187G" resolve="collectActualDependencyVersions" />
              <node concept="37vLTw" id="2V3ml1v4eAa" role="37wK5m">
                <ref role="3cqZAo" node="2V3ml1v4eA6" resolve="abstractModule" />
              </node>
              <node concept="37vLTw" id="2V3ml1v4YoW" role="37wK5m">
                <ref role="3cqZAo" node="2V3ml1v4qs7" resolve="oldDepsFiltered" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2V3ml1v4qse" role="3cqZAp">
          <node concept="3fqX7Q" id="2V3ml1v4qsf" role="3clFbw">
            <node concept="2OqwBi" id="2V3ml1v4qsg" role="3fr31v">
              <node concept="37vLTw" id="2V3ml1v4qsi" role="2Oq$k0">
                <ref role="3cqZAo" node="2V3ml1v4qs7" resolve="oldDepsFiltered" />
              </node>
              <node concept="liA8E" id="2V3ml1v77cw" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.equals(java.lang.Object)" resolve="equals" />
                <node concept="37vLTw" id="2V3ml1v77xK" role="37wK5m">
                  <ref role="3cqZAo" node="2V3ml1v4qsA" resolve="newDepVersions" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2V3ml1v4qso" role="3clFbx">
            <node concept="3clFbJ" id="4yPMgAVkqqK" role="3cqZAp">
              <node concept="3clFbS" id="4yPMgAVkqqM" role="3clFbx">
                <node concept="3cpWs8" id="18VG85aFXe4" role="3cqZAp">
                  <node concept="3cpWsn" id="18VG85aFXe5" role="3cpWs9">
                    <property role="TrG5h" value="keysToRemove" />
                    <node concept="A3Dl8" id="18VG85aFXdR" role="1tU5fm">
                      <node concept="3uibUv" id="18VG85aFXdU" role="A3Ik2">
                        <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="18VG85aFXe9" role="33vP2m">
                      <node concept="37vLTw" id="18VG85aFXea" role="2Oq$k0">
                        <ref role="3cqZAo" node="2V3ml1v4qs7" resolve="oldDepsFiltered" />
                      </node>
                      <node concept="liA8E" id="18VG85aFXeb" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.keySet()" resolve="keySet" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7_8SJV8Hs3I" role="3cqZAp">
                  <node concept="37vLTI" id="7_8SJV8HssV" role="3clFbG">
                    <node concept="22lmx$" id="7_8SJV8Ht0i" role="37vLTx">
                      <node concept="2OqwBi" id="7_8SJV8Htg2" role="3uHU7w">
                        <node concept="37vLTw" id="7_8SJV8Ht1r" role="2Oq$k0">
                          <ref role="3cqZAo" node="18VG85aFXe5" resolve="keysToRemove" />
                        </node>
                        <node concept="3GX2aA" id="7_8SJV8HtI9" role="2OqNvi" />
                      </node>
                      <node concept="37vLTw" id="7_8SJV8Hsxi" role="3uHU7B">
                        <ref role="3cqZAo" node="7_8SJV8HpTC" resolve="changed" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="7_8SJV8Hs3G" role="37vLTJ">
                      <ref role="3cqZAo" node="7_8SJV8HpTC" resolve="changed" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7_8SJV8Ix96" role="3cqZAp">
                  <node concept="3clFbS" id="7_8SJV8Ix98" role="3clFbx">
                    <node concept="3clFbF" id="18VG85aFPBw" role="3cqZAp">
                      <node concept="2OqwBi" id="18VG85aFZfE" role="3clFbG">
                        <node concept="37vLTw" id="18VG85aFXeq" role="2Oq$k0">
                          <ref role="3cqZAo" node="18VG85aFXe5" resolve="keysToRemove" />
                        </node>
                        <node concept="2es0OD" id="18VG85aFZB9" role="2OqNvi">
                          <node concept="1bVj0M" id="18VG85aFZBb" role="23t8la">
                            <node concept="3clFbS" id="18VG85aFZBc" role="1bW5cS">
                              <node concept="3clFbF" id="18VG85aFZXV" role="3cqZAp">
                                <node concept="2OqwBi" id="18VG85aG0gm" role="3clFbG">
                                  <node concept="liA8E" id="18VG85aG10V" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~Map.remove(java.lang.Object)" resolve="remove" />
                                    <node concept="37vLTw" id="18VG85aG1dM" role="37wK5m">
                                      <ref role="3cqZAo" node="5W7E4fV0X5G" resolve="it" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="6svLnPqF7nF" role="2Oq$k0">
                                    <node concept="37vLTw" id="6svLnPqF7nG" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2V3ml1v4qrN" resolve="md" />
                                    </node>
                                    <node concept="liA8E" id="6svLnPqF7nH" role="2OqNvi">
                                      <ref role="37wK5l" to="w0gx:~ModuleDescriptor.getDependencyVersions()" resolve="getDependencyVersions" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="5W7E4fV0X5G" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="5W7E4fV0X5H" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="7_8SJV8Ixlp" role="3clFbw">
                    <node concept="37vLTw" id="7_8SJV8Ixm7" role="3fr31v">
                      <ref role="3cqZAo" node="7_8SJV8F$c0" resolve="dryRun" />
                    </node>
                  </node>
                  <node concept="9aQIb" id="1h1oRyEIxeV" role="9aQIa">
                    <node concept="3clFbS" id="1h1oRyEIxeW" role="9aQI4">
                      <node concept="RRSsy" id="1h1oRyEI$AM" role="3cqZAp">
                        <node concept="2OqwBi" id="1h1oRyEIEJT" role="RRSoy">
                          <node concept="Xl_RD" id="1h1oRyEI$AO" role="2Oq$k0">
                            <property role="Xl_RC" value="Existing dependencies to remove in %s: %s" />
                          </node>
                          <node concept="2cAKMz" id="1h1oRyEIIsq" role="2OqNvi">
                            <node concept="2OqwBi" id="1h1oRyEMOqF" role="2cAKU6">
                              <node concept="37vLTw" id="1h1oRyEMOqG" role="2Oq$k0">
                                <ref role="3cqZAo" node="5qGXSHdw9e7" resolve="module" />
                              </node>
                              <node concept="liA8E" id="1h1oRyEMOqH" role="2OqNvi">
                                <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="1h1oRyEJ5NN" role="2cAKU6">
                              <node concept="2OqwBi" id="1h1oRyEIPbr" role="2Oq$k0">
                                <node concept="2OqwBi" id="1h1oRyEJAqa" role="2Oq$k0">
                                  <node concept="2OqwBi" id="7i2Uj4bR$io" role="2Oq$k0">
                                    <node concept="37vLTw" id="1h1oRyEILJH" role="2Oq$k0">
                                      <ref role="3cqZAo" node="18VG85aFXe5" resolve="keysToRemove" />
                                    </node>
                                    <node concept="3zZkjj" id="7i2Uj4bREa6" role="2OqNvi">
                                      <node concept="1bVj0M" id="7i2Uj4bREa8" role="23t8la">
                                        <node concept="3clFbS" id="7i2Uj4bREa9" role="1bW5cS">
                                          <node concept="3clFbF" id="7i2Uj4bRIHY" role="3cqZAp">
                                            <node concept="3fqX7Q" id="7i2Uj4bS7Kg" role="3clFbG">
                                              <node concept="2OqwBi" id="7i2Uj4bS7Ki" role="3fr31v">
                                                <node concept="37vLTw" id="7i2Uj4bS7Kj" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="2V3ml1v4qsA" resolve="newDepVersions" />
                                                </node>
                                                <node concept="2Nt0df" id="7i2Uj4bS7Kk" role="2OqNvi">
                                                  <node concept="37vLTw" id="7i2Uj4bS7Kl" role="38cxEo">
                                                    <ref role="3cqZAo" node="5W7E4fV0X5I" resolve="it" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="gl6BB" id="5W7E4fV0X5I" role="1bW2Oz">
                                          <property role="TrG5h" value="it" />
                                          <node concept="2jxLKc" id="5W7E4fV0X5J" role="1tU5fm" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3$u5V9" id="1h1oRyEJEJn" role="2OqNvi">
                                    <node concept="1bVj0M" id="1h1oRyEJEJp" role="23t8la">
                                      <node concept="3clFbS" id="1h1oRyEJEJq" role="1bW5cS">
                                        <node concept="3clFbF" id="1h1oRyEJI6d" role="3cqZAp">
                                          <node concept="2OqwBi" id="1h1oRyEJLdT" role="3clFbG">
                                            <node concept="37vLTw" id="1h1oRyEJI6c" role="2Oq$k0">
                                              <ref role="3cqZAo" node="5W7E4fV0X5K" resolve="it" />
                                            </node>
                                            <node concept="liA8E" id="1h1oRyEJRkv" role="2OqNvi">
                                              <ref role="37wK5l" to="lui2:~SModuleReference.getModuleName()" resolve="getModuleName" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="gl6BB" id="5W7E4fV0X5K" role="1bW2Oz">
                                        <property role="TrG5h" value="it" />
                                        <node concept="2jxLKc" id="5W7E4fV0X5L" role="1tU5fm" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="ANE8D" id="1h1oRyEISDZ" role="2OqNvi" />
                              </node>
                              <node concept="3uJxvA" id="1h1oRyEJyXE" role="2OqNvi">
                                <node concept="Xl_RD" id="1h1oRyEKYUR" role="3uJOhx">
                                  <property role="Xl_RC" value="," />
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
              <node concept="37vLTw" id="4yPMgAVkqEk" role="3clFbw">
                <ref role="3cqZAo" node="4yPMgAVklil" resolve="myRemoveOddImports" />
              </node>
            </node>
            <node concept="3clFbF" id="7_8SJV8H$4M" role="3cqZAp">
              <node concept="2OqwBi" id="7_8SJV8H$B1" role="3clFbG">
                <node concept="37vLTw" id="7_8SJV8H$4K" role="2Oq$k0">
                  <ref role="3cqZAo" node="2V3ml1v4qsA" resolve="newDepVersions" />
                </node>
                <node concept="2es0OD" id="7_8SJV8HD8O" role="2OqNvi">
                  <node concept="1bVj0M" id="7_8SJV8HD8Q" role="23t8la">
                    <node concept="3clFbS" id="7_8SJV8HD8R" role="1bW5cS">
                      <node concept="3cpWs8" id="7_8SJV8INU5" role="3cqZAp">
                        <node concept="3cpWsn" id="7_8SJV8INU6" role="3cpWs9">
                          <property role="TrG5h" value="willBeChanged" />
                          <node concept="10P_77" id="7_8SJV8INSF" role="1tU5fm" />
                          <node concept="17QLQc" id="3fClJd2GIxn" role="33vP2m">
                            <node concept="2OqwBi" id="7_8SJV8INU8" role="3uHU7B">
                              <node concept="2OqwBi" id="7_8SJV8INU9" role="2Oq$k0">
                                <node concept="37vLTw" id="7_8SJV8INUa" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2V3ml1v4qrN" resolve="md" />
                                </node>
                                <node concept="liA8E" id="7_8SJV8INUb" role="2OqNvi">
                                  <ref role="37wK5l" to="w0gx:~ModuleDescriptor.getDependencyVersions()" resolve="getDependencyVersions" />
                                </node>
                              </node>
                              <node concept="liA8E" id="7_8SJV8INUc" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                                <node concept="2OqwBi" id="7_8SJV8INUd" role="37wK5m">
                                  <node concept="37vLTw" id="7_8SJV8INUe" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5W7E4fV0X5M" resolve="it" />
                                  </node>
                                  <node concept="3AY5_j" id="7_8SJV8INUf" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="7_8SJV8JhsD" role="3uHU7w">
                              <node concept="37vLTw" id="7_8SJV8JgD$" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0X5M" resolve="it" />
                              </node>
                              <node concept="3AV6Ez" id="7_8SJV8Jigd" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="7_8SJV8IVwI" role="3cqZAp">
                        <node concept="37vLTI" id="7_8SJV8IWsi" role="3clFbG">
                          <node concept="22lmx$" id="7_8SJV8IXF3" role="37vLTx">
                            <node concept="37vLTw" id="7_8SJV8IYaf" role="3uHU7w">
                              <ref role="3cqZAo" node="7_8SJV8INU6" resolve="willBeChanged" />
                            </node>
                            <node concept="37vLTw" id="7_8SJV8IWYH" role="3uHU7B">
                              <ref role="3cqZAo" node="7_8SJV8HpTC" resolve="changed" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="7_8SJV8IVwG" role="37vLTJ">
                            <ref role="3cqZAo" node="7_8SJV8HpTC" resolve="changed" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="7_8SJV8IZ93" role="3cqZAp">
                        <node concept="3clFbS" id="7_8SJV8IZ95" role="3clFbx">
                          <node concept="3clFbJ" id="1h1oRyEL90s" role="3cqZAp">
                            <node concept="3clFbS" id="1h1oRyEL90u" role="3clFbx">
                              <node concept="3clFbF" id="7_8SJV8J7JW" role="3cqZAp">
                                <node concept="2OqwBi" id="7_8SJV8JiSq" role="3clFbG">
                                  <node concept="2OqwBi" id="7_8SJV8J7JY" role="2Oq$k0">
                                    <node concept="37vLTw" id="7_8SJV8J7JZ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2V3ml1v4qrN" resolve="md" />
                                    </node>
                                    <node concept="liA8E" id="7_8SJV8J7K0" role="2OqNvi">
                                      <ref role="37wK5l" to="w0gx:~ModuleDescriptor.getDependencyVersions()" resolve="getDependencyVersions" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="7_8SJV8Jkdm" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                                    <node concept="2OqwBi" id="7_8SJV8Jlzh" role="37wK5m">
                                      <node concept="37vLTw" id="7_8SJV8JkOq" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5W7E4fV0X5M" resolve="it" />
                                      </node>
                                      <node concept="3AY5_j" id="7_8SJV8Jm$0" role="2OqNvi" />
                                    </node>
                                    <node concept="2OqwBi" id="7_8SJV8JosX" role="37wK5m">
                                      <node concept="37vLTw" id="7_8SJV8JnCy" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5W7E4fV0X5M" resolve="it" />
                                      </node>
                                      <node concept="3AV6Ez" id="7_8SJV8JpEQ" role="2OqNvi" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3fqX7Q" id="1h1oRyELcrn" role="3clFbw">
                              <node concept="37vLTw" id="1h1oRyELfLq" role="3fr31v">
                                <ref role="3cqZAo" node="7_8SJV8F$c0" resolve="dryRun" />
                              </node>
                            </node>
                            <node concept="9aQIb" id="1h1oRyELvuB" role="9aQIa">
                              <node concept="3clFbS" id="1h1oRyELvuC" role="9aQI4">
                                <node concept="RRSsy" id="1h1oRyELyTD" role="3cqZAp">
                                  <node concept="2OqwBi" id="1h1oRyELSUw" role="RRSoy">
                                    <node concept="Xl_RD" id="1h1oRyELyTF" role="2Oq$k0">
                                      <property role="Xl_RC" value="Dependency to update in %s: %s" />
                                    </node>
                                    <node concept="2cAKMz" id="1h1oRyELWX5" role="2OqNvi">
                                      <node concept="2OqwBi" id="1h1oRyEMElk" role="2cAKU6">
                                        <node concept="37vLTw" id="1h1oRyEMBbJ" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5qGXSHdw9e7" resolve="module" />
                                        </node>
                                        <node concept="liA8E" id="1h1oRyEMHRF" role="2OqNvi">
                                          <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="1h1oRyEM9vG" role="2cAKU6">
                                        <node concept="2OqwBi" id="1h1oRyEM3uJ" role="2Oq$k0">
                                          <node concept="37vLTw" id="1h1oRyEM0iO" role="2Oq$k0">
                                            <ref role="3cqZAo" node="5W7E4fV0X5M" resolve="it" />
                                          </node>
                                          <node concept="3AY5_j" id="1h1oRyEM7he" role="2OqNvi" />
                                        </node>
                                        <node concept="liA8E" id="1h1oRyEMcZB" role="2OqNvi">
                                          <ref role="37wK5l" to="lui2:~SModuleReference.getModuleName()" resolve="getModuleName" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="7_8SJV8IZCC" role="3clFbw">
                          <ref role="3cqZAo" node="7_8SJV8INU6" resolve="willBeChanged" />
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0X5M" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0X5N" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2V3ml1v7VmA" role="3cqZAp" />
        <node concept="3cpWs8" id="2V3ml1v7VxL" role="3cqZAp">
          <node concept="3cpWsn" id="2V3ml1v7VxM" role="3cpWs9">
            <property role="TrG5h" value="newLangVersions" />
            <node concept="1rXfSq" id="2V3ml1v7VxQ" role="33vP2m">
              <ref role="37wK5l" node="2V3ml1v5vGQ" resolve="collectActualLanguageVersions" />
              <node concept="37vLTw" id="2V3ml1v7VxR" role="37wK5m">
                <ref role="3cqZAo" node="2V3ml1v4eA6" resolve="abstractModule" />
              </node>
              <node concept="37vLTw" id="2V3ml1v7VxS" role="37wK5m">
                <ref role="3cqZAo" node="2V3ml1v7VxE" resolve="langVersions" />
              </node>
            </node>
            <node concept="3rvAFt" id="7_8SJV8I5bg" role="1tU5fm">
              <node concept="3uibUv" id="7_8SJV8I5Dz" role="3rvQeY">
                <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
              </node>
              <node concept="3uibUv" id="7_8SJV8I5bi" role="3rvSg0">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2V3ml1v7VxU" role="3cqZAp">
          <node concept="3fqX7Q" id="2V3ml1v7VxV" role="3clFbw">
            <node concept="2OqwBi" id="2V3ml1v7VxW" role="3fr31v">
              <node concept="37vLTw" id="2V3ml1v7VxX" role="2Oq$k0">
                <ref role="3cqZAo" node="2V3ml1v7VxE" resolve="langVersions" />
              </node>
              <node concept="liA8E" id="2V3ml1v7VxY" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.equals(java.lang.Object)" resolve="equals" />
                <node concept="37vLTw" id="2V3ml1v7VxZ" role="37wK5m">
                  <ref role="3cqZAo" node="2V3ml1v7VxM" resolve="newLangVersions" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2V3ml1v7Vy0" role="3clFbx">
            <node concept="3clFbF" id="7_8SJV8HtXP" role="3cqZAp">
              <node concept="37vLTI" id="7_8SJV8HtXQ" role="3clFbG">
                <node concept="3clFbT" id="1guuOIDjxIt" role="37vLTx">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="37vLTw" id="7_8SJV8HtXW" role="37vLTJ">
                  <ref role="3cqZAo" node="7_8SJV8HpTC" resolve="changed" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1guuOIDjLEq" role="3cqZAp">
              <node concept="3clFbS" id="1guuOIDjLEs" role="3clFbx">
                <node concept="3clFbJ" id="4yPMgAVkrIr" role="3cqZAp">
                  <node concept="3clFbS" id="4yPMgAVkrIs" role="3clFbx">
                    <node concept="3cpWs8" id="18VG85aG2V6" role="3cqZAp">
                      <node concept="3cpWsn" id="18VG85aG2V7" role="3cpWs9">
                        <property role="TrG5h" value="keysToRemove" />
                        <node concept="A3Dl8" id="18VG85aG2V8" role="1tU5fm">
                          <node concept="3uibUv" id="18VG85aG4ZN" role="A3Ik2">
                            <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="18VG85aG2Vd" role="33vP2m">
                          <node concept="37vLTw" id="18VG85aG5Ix" role="2Oq$k0">
                            <ref role="3cqZAo" node="2V3ml1v7VxE" resolve="langVersions" />
                          </node>
                          <node concept="liA8E" id="18VG85aG2Vf" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Map.keySet()" resolve="keySet" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="18VG85aG2Vu" role="3cqZAp">
                      <node concept="2OqwBi" id="18VG85aG2Vv" role="3clFbG">
                        <node concept="37vLTw" id="18VG85aG2Vw" role="2Oq$k0">
                          <ref role="3cqZAo" node="18VG85aG2V7" resolve="keysToRemove" />
                        </node>
                        <node concept="2es0OD" id="18VG85aG2Vx" role="2OqNvi">
                          <node concept="1bVj0M" id="18VG85aG2Vy" role="23t8la">
                            <node concept="3clFbS" id="18VG85aG2Vz" role="1bW5cS">
                              <node concept="3clFbF" id="18VG85aG2V$" role="3cqZAp">
                                <node concept="2OqwBi" id="18VG85aG2V_" role="3clFbG">
                                  <node concept="liA8E" id="18VG85aG2VB" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~Map.remove(java.lang.Object)" resolve="remove" />
                                    <node concept="37vLTw" id="18VG85aG2VC" role="37wK5m">
                                      <ref role="3cqZAo" node="5W7E4fV0X5O" resolve="it" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="6svLnPqF7ZQ" role="2Oq$k0">
                                    <node concept="37vLTw" id="6svLnPqF7ZR" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2V3ml1v4qrN" resolve="md" />
                                    </node>
                                    <node concept="liA8E" id="6svLnPqF7ZS" role="2OqNvi">
                                      <ref role="37wK5l" to="w0gx:~ModuleDescriptor.getLanguageVersions()" resolve="getLanguageVersions" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="5W7E4fV0X5O" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="5W7E4fV0X5P" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="4yPMgAVkrIZ" role="3clFbw">
                    <ref role="3cqZAo" node="4yPMgAVklil" resolve="myRemoveOddImports" />
                  </node>
                </node>
                <node concept="3clFbF" id="7_8SJV8JqTb" role="3cqZAp">
                  <node concept="2OqwBi" id="7_8SJV8JqTc" role="3clFbG">
                    <node concept="37vLTw" id="7_8SJV8JrBK" role="2Oq$k0">
                      <ref role="3cqZAo" node="2V3ml1v7VxM" resolve="newLangVersions" />
                    </node>
                    <node concept="2es0OD" id="7_8SJV8JqTe" role="2OqNvi">
                      <node concept="1bVj0M" id="7_8SJV8JqTf" role="23t8la">
                        <node concept="3clFbS" id="7_8SJV8JqTg" role="1bW5cS">
                          <node concept="3clFbJ" id="7_8SJV8JqTA" role="3cqZAp">
                            <node concept="3clFbS" id="7_8SJV8JqTB" role="3clFbx">
                              <node concept="3clFbF" id="7_8SJV8JqTC" role="3cqZAp">
                                <node concept="2OqwBi" id="7_8SJV8JqTD" role="3clFbG">
                                  <node concept="2OqwBi" id="7_8SJV8JqTE" role="2Oq$k0">
                                    <node concept="37vLTw" id="7_8SJV8JqTF" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2V3ml1v4qrN" resolve="md" />
                                    </node>
                                    <node concept="liA8E" id="7_8SJV8JqTG" role="2OqNvi">
                                      <ref role="37wK5l" to="w0gx:~ModuleDescriptor.getLanguageVersions()" resolve="getLanguageVersions" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="7_8SJV8JqTH" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                                    <node concept="2OqwBi" id="7_8SJV8JqTI" role="37wK5m">
                                      <node concept="37vLTw" id="7_8SJV8JqTJ" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5W7E4fV0X5Q" resolve="it" />
                                      </node>
                                      <node concept="3AY5_j" id="7_8SJV8JqTK" role="2OqNvi" />
                                    </node>
                                    <node concept="2OqwBi" id="7_8SJV8JqTL" role="37wK5m">
                                      <node concept="37vLTw" id="7_8SJV8JqTM" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5W7E4fV0X5Q" resolve="it" />
                                      </node>
                                      <node concept="3AV6Ez" id="7_8SJV8JqTN" role="2OqNvi" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="17QLQc" id="1guuOIDkjh0" role="3clFbw">
                              <node concept="2OqwBi" id="1guuOIDkjh1" role="3uHU7B">
                                <node concept="2OqwBi" id="1guuOIDkjh2" role="2Oq$k0">
                                  <node concept="37vLTw" id="1guuOIDkjh3" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2V3ml1v4qrN" resolve="md" />
                                  </node>
                                  <node concept="liA8E" id="1guuOIDkjh4" role="2OqNvi">
                                    <ref role="37wK5l" to="w0gx:~ModuleDescriptor.getLanguageVersions()" resolve="getLanguageVersions" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="1guuOIDkjh5" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                                  <node concept="2OqwBi" id="1guuOIDkjh6" role="37wK5m">
                                    <node concept="37vLTw" id="1guuOIDkjh7" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5W7E4fV0X5Q" resolve="it" />
                                    </node>
                                    <node concept="3AY5_j" id="1guuOIDkjh8" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="1guuOIDkjh9" role="3uHU7w">
                                <node concept="37vLTw" id="1guuOIDkjha" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5W7E4fV0X5Q" resolve="it" />
                                </node>
                                <node concept="3AV6Ez" id="1guuOIDkjhb" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0X5Q" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5W7E4fV0X5R" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="1guuOIDjPbD" role="3clFbw">
                <node concept="37vLTw" id="1guuOIDjSpw" role="3fr31v">
                  <ref role="3cqZAo" node="7_8SJV8F$c0" resolve="dryRun" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7_8SJV8HQoF" role="3cqZAp" />
        <node concept="3SKdUt" id="7_8SJV8IpSo" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo7zd" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo7ze" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo7zf" role="1PaTwD">
              <property role="3oM_SC" value="move" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo7zg" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo7zh" role="1PaTwD">
              <property role="3oM_SC" value="check" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo7zi" role="1PaTwD">
              <property role="3oM_SC" value="somewhere" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo7zj" role="1PaTwD">
              <property role="3oM_SC" value="else" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7_8SJV8JyBk" role="3cqZAp">
          <node concept="1rXfSq" id="7_8SJV8JyBg" role="3clFbG">
            <ref role="37wK5l" node="2V3ml1v6o13" resolve="checkModelVersionsAreValid" />
            <node concept="37vLTw" id="7_8SJV8JyBe" role="37wK5m">
              <ref role="3cqZAo" node="5qGXSHdw9e7" resolve="module" />
            </node>
            <node concept="37vLTw" id="7_8SJV8JyBi" role="37wK5m">
              <ref role="3cqZAo" node="2V3ml1v7VxM" resolve="newLangVersions" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7_8SJV8IiBV" role="3cqZAp" />
        <node concept="3clFbJ" id="7_8SJV8HT6D" role="3cqZAp">
          <node concept="3clFbS" id="7_8SJV8HT6F" role="3clFbx">
            <node concept="3clFbF" id="7_8SJV8HVCS" role="3cqZAp">
              <node concept="2OqwBi" id="7_8SJV8HVQK" role="3clFbG">
                <node concept="37vLTw" id="7_8SJV8HVCQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="2V3ml1v4eA6" resolve="abstractModule" />
                </node>
                <node concept="liA8E" id="7_8SJV8HWt1" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~AbstractModule.setChanged()" resolve="setChanged" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="7_8SJV8Ju2v" role="3clFbw">
            <node concept="3fqX7Q" id="7_8SJV8Jvpr" role="3uHU7w">
              <node concept="37vLTw" id="7_8SJV8Jvtw" role="3fr31v">
                <ref role="3cqZAo" node="7_8SJV8F$c0" resolve="dryRun" />
              </node>
            </node>
            <node concept="37vLTw" id="7_8SJV8HUu1" role="3uHU7B">
              <ref role="3cqZAo" node="7_8SJV8HpTC" resolve="changed" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7_8SJV8HXRd" role="3cqZAp">
          <node concept="37vLTw" id="7_8SJV8I1xY" role="3cqZAk">
            <ref role="3cqZAo" node="7_8SJV8HpTC" resolve="changed" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="7_8SJV8LXmU" role="lGtFl">
        <node concept="TUZQ0" id="7_8SJV8LXmX" role="3nqlJM">
          <property role="TUZQ4" value="" />
          <node concept="zr_55" id="7_8SJV8LXmZ" role="zr_5Q">
            <ref role="zr_51" node="7_8SJV8F$c0" resolve="dryRun" />
          </node>
          <node concept="1PaTwC" id="1E1X3WHs$_p" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHs$_q" role="1PaTwD">
              <property role="3oM_SC" value="true" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs$_r" role="1PaTwD">
              <property role="3oM_SC" value="means" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs$_s" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs$_t" role="1PaTwD">
              <property role="3oM_SC" value="changes" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs$_u" role="1PaTwD">
              <property role="3oM_SC" value="shouldn't" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs$_v" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs$_w" role="1PaTwD">
              <property role="3oM_SC" value="committed" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs$_x" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs$_y" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs$_z" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
          </node>
        </node>
        <node concept="x79VA" id="7_8SJV8LXn0" role="3nqlJM">
          <property role="x79VB" value="" />
          <node concept="1PaTwC" id="1E1X3WHs$_$" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHs$__" role="1PaTwD">
              <property role="3oM_SC" value="true" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs$_A" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs$_B" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs$_C" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs$_D" role="1PaTwD">
              <property role="3oM_SC" value="differs" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs$_E" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs$_F" role="1PaTwD">
              <property role="3oM_SC" value="updated" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs$_G" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5qGXSHdwzB$" role="jymVt" />
    <node concept="3clFb_" id="18VG85aFfsT" role="jymVt">
      <property role="TrG5h" value="filterValidLanguageVersions" />
      <node concept="3Tm6S6" id="18VG85aFfsU" role="1B3o_S" />
      <node concept="3uibUv" id="18VG85aFfsV" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="18VG85aFfsW" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
        <node concept="3uibUv" id="18VG85aFfsX" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
      <node concept="37vLTG" id="18VG85aFfq5" role="3clF46">
        <property role="TrG5h" value="langVersions" />
        <node concept="3uibUv" id="7_8SJV8GI$3" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="3uibUv" id="7_8SJV8GI$8" role="11_B2D">
            <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
          </node>
          <node concept="3uibUv" id="7_8SJV8GI$9" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="18VG85aFfne" role="3clF47">
        <node concept="3SKdUt" id="1guuOIDftGn" role="3cqZAp">
          <node concept="1PaTwC" id="1guuOIDftGo" role="1aUNEU">
            <node concept="3oM_SD" id="1guuOIDfysG" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfysI" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfysL" role="1PaTwD">
              <property role="3oM_SC" value="quite" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfysP" role="1PaTwD">
              <property role="3oM_SC" value="suspicious" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfyt7" role="1PaTwD">
              <property role="3oM_SC" value="code," />
            </node>
            <node concept="3oM_SD" id="1guuOIDfytd" role="1PaTwD">
              <property role="3oM_SC" value="why" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfytk" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfyts" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfyt_" role="1PaTwD">
              <property role="3oM_SC" value="care" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfytJ" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfytU" role="1PaTwD">
              <property role="3oM_SC" value="see" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfyu6" role="1PaTwD">
              <property role="3oM_SC" value="&quot;valid&quot;" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfyuj" role="1PaTwD">
              <property role="3oM_SC" value="languages" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfyux" role="1PaTwD">
              <property role="3oM_SC" value="only?" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1guuOIDfBiC" role="3cqZAp">
          <node concept="1PaTwC" id="1guuOIDfBiD" role="1aUNEU">
            <node concept="3oM_SD" id="1guuOIDfErM" role="1PaTwD">
              <property role="3oM_SC" value="OTOH," />
            </node>
            <node concept="3oM_SD" id="1guuOIDfErO" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfErR" role="1PaTwD">
              <property role="3oM_SC" value="result" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfErV" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfEs0" role="1PaTwD">
              <property role="3oM_SC" value="compared" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfEs6" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfEsl" role="1PaTwD">
              <property role="3oM_SC" value="collectActualLanguageVersions()" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfEst" role="1PaTwD">
              <property role="3oM_SC" value="outcome," />
            </node>
            <node concept="3oM_SD" id="1guuOIDfEsA" role="1PaTwD">
              <property role="3oM_SC" value="where" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfEsK" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfEsV" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfEt7" role="1PaTwD">
              <property role="3oM_SC" value="actual/present" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1guuOIDfEuQ" role="3cqZAp">
          <node concept="1PaTwC" id="1guuOIDfEuR" role="1aUNEU">
            <node concept="3oM_SD" id="1guuOIDfK3h" role="1PaTwD">
              <property role="3oM_SC" value="languages," />
            </node>
            <node concept="3oM_SD" id="1guuOIDfK3j" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfK3m" role="1PaTwD">
              <property role="3oM_SC" value="filtering" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfK3q" role="1PaTwD">
              <property role="3oM_SC" value="&quot;invalid&quot;" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfK3v" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfK3_" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfK3G" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfK3O" role="1PaTwD">
              <property role="3oM_SC" value="par" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfK3X" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfK47" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfK4i" role="1PaTwD">
              <property role="3oM_SC" value="new" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfK4u" role="1PaTwD">
              <property role="3oM_SC" value="state." />
            </node>
            <node concept="3oM_SD" id="1guuOIDfK4F" role="1PaTwD">
              <property role="3oM_SC" value="Is" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfK4T" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="1guuOIDfK58" role="1PaTwD">
              <property role="3oM_SC" value="right," />
            </node>
            <node concept="3oM_SD" id="1guuOIDfK5o" role="1PaTwD">
              <property role="3oM_SC" value="however?" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="18VG85aFsQW" role="3cqZAp">
          <node concept="3cpWsn" id="18VG85aFsQX" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="versions" />
            <node concept="3uibUv" id="1guuOIDgRpE" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <node concept="3uibUv" id="1guuOIDgXXm" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
              </node>
              <node concept="3uibUv" id="1guuOIDh3JA" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="2ShNRf" id="18VG85aFsR1" role="33vP2m">
              <node concept="1pGfFk" id="18VG85aFsR2" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <node concept="3uibUv" id="18VG85aFBQ1" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                </node>
                <node concept="3uibUv" id="18VG85aFsR7" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1guuOIDiO2I" role="3cqZAp">
          <node concept="1PaTwC" id="1guuOIDiO2J" role="1aUNEU">
            <node concept="3oM_SD" id="1guuOIDiQbG" role="1PaTwD">
              <property role="3oM_SC" value="copy" />
            </node>
            <node concept="3oM_SD" id="1guuOIDiQho" role="1PaTwD">
              <property role="3oM_SC" value="pairs" />
            </node>
            <node concept="3oM_SD" id="1guuOIDiRzV" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="1guuOIDiRzZ" role="1PaTwD">
              <property role="3oM_SC" value="have" />
            </node>
            <node concept="3oM_SD" id="1guuOIDiR$4" role="1PaTwD">
              <property role="3oM_SC" value="active" />
            </node>
            <node concept="3oM_SD" id="1guuOIDiR$a" role="1PaTwD">
              <property role="3oM_SC" value="LanguageRuntime" />
            </node>
            <node concept="3oM_SD" id="1guuOIDiR$h" role="1PaTwD">
              <property role="3oM_SC" value="(i.e." />
            </node>
            <node concept="3oM_SD" id="1guuOIDiR$p" role="1PaTwD">
              <property role="3oM_SC" value="&quot;valid&quot;" />
            </node>
            <node concept="3oM_SD" id="1guuOIDiR$y" role="1PaTwD">
              <property role="3oM_SC" value="language)" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1guuOIDfYee" role="3cqZAp">
          <node concept="2OqwBi" id="1guuOIDg19I" role="3clFbG">
            <node concept="37vLTw" id="1guuOIDfYeb" role="2Oq$k0">
              <ref role="3cqZAo" node="5qGXSHdudXB" resolve="myLanguageRegistry" />
            </node>
            <node concept="liA8E" id="1guuOIDg4CW" role="2OqNvi">
              <ref role="37wK5l" to="vndm:~LanguageRegistry.withAvailableLanguages(java.util.stream.Stream,java.util.function.Consumer)" resolve="withAvailableLanguages" />
              <node concept="2OqwBi" id="1guuOIDgi4W" role="37wK5m">
                <node concept="2OqwBi" id="1guuOIDgbEX" role="2Oq$k0">
                  <node concept="37vLTw" id="1guuOIDg7JM" role="2Oq$k0">
                    <ref role="3cqZAo" node="18VG85aFfq5" resolve="langVersions" />
                  </node>
                  <node concept="liA8E" id="1guuOIDgfQJ" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.keySet()" resolve="keySet" />
                  </node>
                </node>
                <node concept="liA8E" id="1guuOIDgmJt" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                </node>
              </node>
              <node concept="1bVj0M" id="1guuOIDgxYf" role="37wK5m">
                <node concept="37vLTG" id="1guuOIDg_iv" role="1bW2Oz">
                  <property role="TrG5h" value="lr" />
                  <node concept="3uibUv" id="1guuOIDg_iw" role="1tU5fm">
                    <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                  </node>
                </node>
                <node concept="3clFbS" id="1guuOIDgxYh" role="1bW5cS">
                  <node concept="3cpWs8" id="1guuOIDh$fz" role="3cqZAp">
                    <node concept="3cpWsn" id="1guuOIDh$f$" role="3cpWs9">
                      <property role="TrG5h" value="lid" />
                      <node concept="3uibUv" id="1guuOIDhyt9" role="1tU5fm">
                        <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                      </node>
                      <node concept="2OqwBi" id="1guuOIDh$f_" role="33vP2m">
                        <node concept="37vLTw" id="1guuOIDh$fA" role="2Oq$k0">
                          <ref role="3cqZAo" node="1guuOIDg_iv" resolve="lr" />
                        </node>
                        <node concept="liA8E" id="1guuOIDh$fB" role="2OqNvi">
                          <ref role="37wK5l" to="vndm:~LanguageRuntime.getIdentity()" resolve="getIdentity" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="1guuOIDhRvW" role="3cqZAp">
                    <node concept="1PaTwC" id="1guuOIDhRvX" role="1aUNEU">
                      <node concept="3oM_SD" id="1guuOIDhRwh" role="1PaTwD">
                        <property role="3oM_SC" value="assert" />
                      </node>
                      <node concept="3oM_SD" id="1guuOIDhRwj" role="1PaTwD">
                        <property role="3oM_SC" value="langVersions.contains(lid)" />
                      </node>
                      <node concept="3oM_SD" id="1guuOIDib8m" role="1PaTwD">
                        <property role="3oM_SC" value=":" />
                      </node>
                      <node concept="3oM_SD" id="1guuOIDib8q" role="1PaTwD">
                        <property role="3oM_SC" value="how" />
                      </node>
                      <node concept="3oM_SD" id="1guuOIDiexE" role="1PaTwD">
                        <property role="3oM_SC" value="come" />
                      </node>
                      <node concept="3oM_SD" id="1guuOIDihUV" role="1PaTwD">
                        <property role="3oM_SC" value="we" />
                      </node>
                      <node concept="3oM_SD" id="1guuOIDihV2" role="1PaTwD">
                        <property role="3oM_SC" value="got" />
                      </node>
                      <node concept="3oM_SD" id="1guuOIDinCw" role="1PaTwD">
                        <property role="3oM_SC" value="'available'" />
                      </node>
                      <node concept="3oM_SD" id="1guuOIDitDf" role="1PaTwD">
                        <property role="3oM_SC" value="language," />
                      </node>
                      <node concept="3oM_SD" id="1guuOIDizMB" role="1PaTwD">
                        <property role="3oM_SC" value="then" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1guuOIDgIWz" role="3cqZAp">
                    <node concept="2OqwBi" id="1guuOIDgLd3" role="3clFbG">
                      <node concept="37vLTw" id="1guuOIDgIWx" role="2Oq$k0">
                        <ref role="3cqZAo" node="18VG85aFsQX" resolve="versions" />
                      </node>
                      <node concept="liA8E" id="1guuOIDh7yk" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                        <node concept="37vLTw" id="1guuOIDh$fC" role="37wK5m">
                          <ref role="3cqZAo" node="1guuOIDh$f$" resolve="lid" />
                        </node>
                        <node concept="2OqwBi" id="1guuOIDhs0h" role="37wK5m">
                          <node concept="37vLTw" id="1guuOIDholQ" role="2Oq$k0">
                            <ref role="3cqZAo" node="18VG85aFfq5" resolve="langVersions" />
                          </node>
                          <node concept="liA8E" id="1guuOIDhwMP" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                            <node concept="37vLTw" id="1guuOIDhFax" role="37wK5m">
                              <ref role="3cqZAo" node="1guuOIDh$f$" resolve="lid" />
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
        <node concept="3cpWs6" id="18VG85aFsRF" role="3cqZAp">
          <node concept="37vLTw" id="18VG85aFsRG" role="3cqZAk">
            <ref role="3cqZAo" node="18VG85aFsQX" resolve="versions" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2V3ml1v16Cp" role="jymVt" />
    <node concept="3clFb_" id="2V3ml1v5vGQ" role="jymVt">
      <property role="TrG5h" value="collectActualLanguageVersions" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="2V3ml1v5ClZ" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="2V3ml1v9dR9" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="37vLTG" id="2V3ml1v7xY1" role="3clF46">
        <property role="TrG5h" value="oldLangVersions" />
        <node concept="3uibUv" id="2V3ml1v7ATu" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="3uibUv" id="2V3ml1v7ATv" role="11_B2D">
            <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
          </node>
          <node concept="3uibUv" id="2V3ml1v7ATw" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2V3ml1v5vGR" role="3clF47">
        <node concept="3cpWs8" id="2V3ml1v5vHc" role="3cqZAp">
          <node concept="3cpWsn" id="2V3ml1v5vHb" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="newLangVersions" />
            <node concept="3uibUv" id="2V3ml1v5vHd" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <node concept="3uibUv" id="2V3ml1v5vHe" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
              </node>
              <node concept="3uibUv" id="2V3ml1v5vHf" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="2ShNRf" id="2V3ml1v5vJg" role="33vP2m">
              <node concept="1pGfFk" id="2V3ml1v5vJk" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <node concept="3uibUv" id="2V3ml1v5vHh" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                </node>
                <node concept="3uibUv" id="2V3ml1v5vHi" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2V3ml1v5vHo" role="3cqZAp">
          <node concept="3cpWsn" id="2V3ml1v5vHn" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="usedLanguages" />
            <node concept="3uibUv" id="2V3ml1v5vHp" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="2V3ml1v5vHq" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
              </node>
            </node>
            <node concept="2OqwBi" id="2V3ml1v7F91" role="33vP2m">
              <node concept="37vLTw" id="2V3ml1v7F92" role="2Oq$k0">
                <ref role="3cqZAo" node="2V3ml1v5ClZ" resolve="module" />
              </node>
              <node concept="liA8E" id="2V3ml1v7HdM" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SModule.getUsedLanguages()" resolve="getUsedLanguages" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2V3ml1v5vHy" role="3cqZAp">
          <node concept="3cpWsn" id="2V3ml1v5vHx" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="languageHierarchy" />
            <node concept="3uibUv" id="2V3ml1v5vHz" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~SLanguageHierarchy" resolve="SLanguageHierarchy" />
            </node>
            <node concept="2ShNRf" id="2V3ml1v5vKd" role="33vP2m">
              <node concept="1pGfFk" id="2V3ml1v5vKy" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~SLanguageHierarchy.&lt;init&gt;(jetbrains.mps.smodel.language.LanguageRegistry,java.util.Collection)" resolve="SLanguageHierarchy" />
                <node concept="37vLTw" id="5qGXSHdv7Hg" role="37wK5m">
                  <ref role="3cqZAo" node="5qGXSHdudXB" resolve="myLanguageRegistry" />
                </node>
                <node concept="37vLTw" id="2V3ml1v5vHB" role="37wK5m">
                  <ref role="3cqZAo" node="2V3ml1v5vHn" resolve="usedLanguages" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2V3ml1v5vHJ" role="3cqZAp">
          <node concept="3cpWsn" id="2V3ml1v5vHI" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="extendingLangsClosure" />
            <node concept="3uibUv" id="2V3ml1v5vHK" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="2V3ml1v5vHL" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
              </node>
            </node>
            <node concept="2OqwBi" id="2V3ml1v5vOY" role="33vP2m">
              <node concept="37vLTw" id="2V3ml1v5vOX" role="2Oq$k0">
                <ref role="3cqZAo" node="2V3ml1v5vHx" resolve="languageHierarchy" />
              </node>
              <node concept="liA8E" id="2V3ml1v6hNM" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~SLanguageHierarchy.getExtended()" resolve="getExtended" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1guuOIDd$C4" role="3cqZAp">
          <node concept="2OqwBi" id="1guuOIDdCv5" role="3clFbG">
            <node concept="37vLTw" id="1guuOIDd$C2" role="2Oq$k0">
              <ref role="3cqZAo" node="5qGXSHdudXB" resolve="myLanguageRegistry" />
            </node>
            <node concept="liA8E" id="1guuOIDdGi3" role="2OqNvi">
              <ref role="37wK5l" to="vndm:~LanguageRegistry.withAvailableLanguages(java.util.stream.Stream,java.util.function.Consumer)" resolve="withAvailableLanguages" />
              <node concept="2OqwBi" id="1guuOIDdT0U" role="37wK5m">
                <node concept="37vLTw" id="1guuOIDdM99" role="2Oq$k0">
                  <ref role="3cqZAo" node="2V3ml1v5vHI" resolve="extendingLangsClosure" />
                </node>
                <node concept="liA8E" id="1guuOIDdXQr" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                </node>
              </node>
              <node concept="1bVj0M" id="1guuOIDe713" role="37wK5m">
                <node concept="3clFbS" id="1guuOIDe715" role="1bW5cS">
                  <node concept="3cpWs8" id="1guuOIDeBED" role="3cqZAp">
                    <node concept="3cpWsn" id="1guuOIDeBEE" role="3cpWs9">
                      <property role="TrG5h" value="lang" />
                      <node concept="3uibUv" id="1guuOIDeBEF" role="1tU5fm">
                        <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                      </node>
                      <node concept="2OqwBi" id="1guuOIDeI$K" role="33vP2m">
                        <node concept="37vLTw" id="1guuOIDeFpo" role="2Oq$k0">
                          <ref role="3cqZAo" node="1guuOIDeays" resolve="lr" />
                        </node>
                        <node concept="liA8E" id="1guuOIDeMd9" role="2OqNvi">
                          <ref role="37wK5l" to="vndm:~LanguageRuntime.getIdentity()" resolve="getIdentity" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="2V3ml1v5vHV" role="3cqZAp">
                    <node concept="2OqwBi" id="2V3ml1v5vPQ" role="3clFbw">
                      <node concept="37vLTw" id="2V3ml1v7CA_" role="2Oq$k0">
                        <ref role="3cqZAo" node="2V3ml1v7xY1" resolve="oldLangVersions" />
                      </node>
                      <node concept="liA8E" id="2V3ml1v5vPR" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object)" resolve="containsKey" />
                        <node concept="37vLTw" id="2V3ml1v5vHX" role="37wK5m">
                          <ref role="3cqZAo" node="1guuOIDeBEE" resolve="lang" />
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="2V3ml1v5vI5" role="9aQIa">
                      <node concept="3clFbS" id="2V3ml1v5vI6" role="9aQI4">
                        <node concept="3clFbF" id="2V3ml1v5vIa" role="3cqZAp">
                          <node concept="2OqwBi" id="2V3ml1v5vQi" role="3clFbG">
                            <node concept="37vLTw" id="2V3ml1v5vQh" role="2Oq$k0">
                              <ref role="3cqZAo" node="2V3ml1v5vHb" resolve="newLangVersions" />
                            </node>
                            <node concept="liA8E" id="2V3ml1v5vQj" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                              <node concept="37vLTw" id="2V3ml1v5vIc" role="37wK5m">
                                <ref role="3cqZAo" node="1guuOIDeBEE" resolve="lang" />
                              </node>
                              <node concept="2OqwBi" id="1guuOIDfgod" role="37wK5m">
                                <node concept="37vLTw" id="2V3ml1v5vQH" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1guuOIDeays" resolve="lr" />
                                </node>
                                <node concept="liA8E" id="1guuOIDfk56" role="2OqNvi">
                                  <ref role="37wK5l" to="vndm:~LanguageRuntime.getVersion()" resolve="getVersion" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="2V3ml1v5vHZ" role="3clFbx">
                      <node concept="3clFbF" id="2V3ml1v5vI0" role="3cqZAp">
                        <node concept="2OqwBi" id="2V3ml1v5vRa" role="3clFbG">
                          <node concept="37vLTw" id="2V3ml1v5vR9" role="2Oq$k0">
                            <ref role="3cqZAo" node="2V3ml1v5vHb" resolve="newLangVersions" />
                          </node>
                          <node concept="liA8E" id="2V3ml1v5vRb" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                            <node concept="37vLTw" id="2V3ml1v5vI2" role="37wK5m">
                              <ref role="3cqZAo" node="1guuOIDeBEE" resolve="lang" />
                            </node>
                            <node concept="2OqwBi" id="2V3ml1v5vRA" role="37wK5m">
                              <node concept="37vLTw" id="2V3ml1v7CSc" role="2Oq$k0">
                                <ref role="3cqZAo" node="2V3ml1v7xY1" resolve="oldLangVersions" />
                              </node>
                              <node concept="liA8E" id="2V3ml1v5vRB" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                                <node concept="37vLTw" id="2V3ml1v5vI4" role="37wK5m">
                                  <ref role="3cqZAo" node="1guuOIDeBEE" resolve="lang" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="1guuOIDeays" role="1bW2Oz">
                  <property role="TrG5h" value="lr" />
                  <node concept="3uibUv" id="1guuOIDeayr" role="1tU5fm">
                    <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2V3ml1v7KzO" role="3cqZAp">
          <node concept="37vLTw" id="2V3ml1v7ObH" role="3cqZAk">
            <ref role="3cqZAo" node="2V3ml1v5vHb" resolve="newLangVersions" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4biA4YBAbch" role="1B3o_S" />
      <node concept="3uibUv" id="2V3ml1v7T8o" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="2V3ml1v7T8p" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
        <node concept="3uibUv" id="2V3ml1v7T8q" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5qGXSHduZlx" role="jymVt" />
    <node concept="3clFb_" id="18VG85aEIcm" role="jymVt">
      <property role="TrG5h" value="filterValidDependencyVersions" />
      <node concept="3Tm6S6" id="18VG85aEIcn" role="1B3o_S" />
      <node concept="3rvAFt" id="18VG85aEIco" role="3clF45">
        <node concept="3uibUv" id="18VG85aEIcp" role="3rvQeY">
          <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
        </node>
        <node concept="3uibUv" id="18VG85aEIcq" role="3rvSg0">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
      <node concept="37vLTG" id="18VG85aEIcd" role="3clF46">
        <property role="TrG5h" value="dependencyVersions" />
        <node concept="3uibUv" id="7_8SJV8FW4f" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="3uibUv" id="7_8SJV8FW4g" role="11_B2D">
            <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
          </node>
          <node concept="3uibUv" id="7_8SJV8FW4h" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="18VG85aEIbn" role="3clF47">
        <node concept="3cpWs8" id="18VG85aEIbq" role="3cqZAp">
          <node concept="3cpWsn" id="18VG85aEIbr" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="versions" />
            <node concept="3rvAFt" id="18VG85aEIbs" role="1tU5fm">
              <node concept="3uibUv" id="18VG85aEIbt" role="3rvQeY">
                <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
              </node>
              <node concept="3uibUv" id="18VG85aEIbu" role="3rvSg0">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="2ShNRf" id="18VG85aEIbv" role="33vP2m">
              <node concept="1pGfFk" id="18VG85aEIbw" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;(java.util.Map)" resolve="HashMap" />
                <node concept="37vLTw" id="7_8SJV8Gk2J" role="37wK5m">
                  <ref role="3cqZAo" node="18VG85aEIcd" resolve="dependencyVersions" />
                </node>
                <node concept="3uibUv" id="18VG85aEIb$" role="1pMfVU">
                  <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
                </node>
                <node concept="3uibUv" id="18VG85aEIb_" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="18VG85aEIbC" role="3cqZAp">
          <node concept="3cpWsn" id="18VG85aEIbD" role="3cpWs9">
            <property role="TrG5h" value="missed" />
            <node concept="_YKpA" id="18VG85aEIbE" role="1tU5fm">
              <node concept="3uibUv" id="18VG85aEIbF" role="_ZDj9">
                <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
              </node>
            </node>
            <node concept="2OqwBi" id="18VG85aEIbG" role="33vP2m">
              <node concept="2OqwBi" id="18VG85aEIbH" role="2Oq$k0">
                <node concept="2OqwBi" id="18VG85aEIbI" role="2Oq$k0">
                  <node concept="37vLTw" id="18VG85aEIbJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="18VG85aEIbr" resolve="versions" />
                  </node>
                  <node concept="3lbrtF" id="18VG85aEIbK" role="2OqNvi" />
                </node>
                <node concept="3zZkjj" id="18VG85aEIbL" role="2OqNvi">
                  <node concept="1bVj0M" id="18VG85aEIbM" role="23t8la">
                    <node concept="3clFbS" id="18VG85aEIbN" role="1bW5cS">
                      <node concept="3clFbF" id="18VG85aEIbO" role="3cqZAp">
                        <node concept="3clFbC" id="18VG85aEIbP" role="3clFbG">
                          <node concept="2OqwBi" id="18VG85aEIbQ" role="3uHU7B">
                            <node concept="37vLTw" id="18VG85aEIbR" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0X5S" resolve="it" />
                            </node>
                            <node concept="liA8E" id="18VG85aEIbS" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                              <node concept="37vLTw" id="5qGXSHduWTJ" role="37wK5m">
                                <ref role="3cqZAo" node="5qGXSHdue0f" resolve="myModuleRepo" />
                              </node>
                            </node>
                          </node>
                          <node concept="10Nm6u" id="18VG85aEIbU" role="3uHU7w" />
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0X5S" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0X5T" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="18VG85aEIbX" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="18VG85aEIbY" role="3cqZAp">
          <node concept="2OqwBi" id="18VG85aEIbZ" role="3clFbG">
            <node concept="37vLTw" id="18VG85aEIc0" role="2Oq$k0">
              <ref role="3cqZAo" node="18VG85aEIbD" resolve="missed" />
            </node>
            <node concept="2es0OD" id="18VG85aEIc1" role="2OqNvi">
              <node concept="1bVj0M" id="18VG85aEIc2" role="23t8la">
                <node concept="3clFbS" id="18VG85aEIc3" role="1bW5cS">
                  <node concept="3clFbF" id="18VG85aEIc4" role="3cqZAp">
                    <node concept="2OqwBi" id="18VG85aEIc5" role="3clFbG">
                      <node concept="37vLTw" id="18VG85aEIc6" role="2Oq$k0">
                        <ref role="3cqZAo" node="18VG85aEIbr" resolve="versions" />
                      </node>
                      <node concept="kI3uX" id="18VG85aEIc7" role="2OqNvi">
                        <node concept="37vLTw" id="18VG85aEIc8" role="kIiFs">
                          <ref role="3cqZAo" node="5W7E4fV0X5U" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0X5U" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0X5V" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="18VG85aEIcb" role="3cqZAp">
          <node concept="37vLTw" id="18VG85aEIcc" role="3cqZAk">
            <ref role="3cqZAo" node="18VG85aEIbr" resolve="versions" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5qGXSHduG8R" role="jymVt" />
    <node concept="3clFb_" id="2V3ml1v187G" role="jymVt">
      <property role="TrG5h" value="collectActualDependencyVersions" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="2V3ml1v187H" role="3clF47">
        <node concept="3cpWs8" id="2V3ml1v1882" role="3cqZAp">
          <node concept="3cpWsn" id="2V3ml1v1881" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="newDepVersions" />
            <node concept="3uibUv" id="2V3ml1v1883" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <node concept="3uibUv" id="2V3ml1v1884" role="11_B2D">
                <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
              </node>
              <node concept="3uibUv" id="2V3ml1v1885" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="2ShNRf" id="2V3ml1v189L" role="33vP2m">
              <node concept="1pGfFk" id="2V3ml1v189P" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                <node concept="3uibUv" id="2V3ml1v1887" role="1pMfVU">
                  <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
                </node>
                <node concept="3uibUv" id="2V3ml1v1888" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2V3ml1v188a" role="3cqZAp">
          <node concept="3cpWsn" id="2V3ml1v1889" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="visible" />
            <node concept="3uibUv" id="2V3ml1v188b" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="2V3ml1v188c" role="11_B2D">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
            <node concept="2ShNRf" id="2V3ml1v189Q" role="33vP2m">
              <node concept="1pGfFk" id="2V3ml1v189U" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~LinkedHashSet.&lt;init&gt;()" resolve="LinkedHashSet" />
                <node concept="3uibUv" id="2V3ml1v188e" role="1pMfVU">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2V3ml1v188f" role="3cqZAp">
          <node concept="2OqwBi" id="2V3ml1v18al" role="3clFbG">
            <node concept="37vLTw" id="2V3ml1v18ak" role="2Oq$k0">
              <ref role="3cqZAo" node="2V3ml1v1889" resolve="visible" />
            </node>
            <node concept="liA8E" id="2V3ml1v18am" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="2V3ml1v1tW1" role="37wK5m">
                <ref role="3cqZAo" node="2V3ml1v1rQs" resolve="module" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2V3ml1v188n" role="3cqZAp">
          <node concept="3cpWsn" id="2V3ml1v188m" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="dependentModules" />
            <node concept="3uibUv" id="2V3ml1v188o" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
              <node concept="3uibUv" id="2V3ml1v188p" role="11_B2D">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
            <node concept="2OqwBi" id="2V3ml1v188q" role="33vP2m">
              <node concept="2ShNRf" id="2V3ml1v1zee" role="2Oq$k0">
                <node concept="1pGfFk" id="2V3ml1v1zeI" role="2ShVmc">
                  <ref role="37wK5l" to="gp7a:~GlobalModuleDependenciesManager.&lt;init&gt;(org.jetbrains.mps.openapi.module.SModule)" resolve="GlobalModuleDependenciesManager" />
                  <node concept="37vLTw" id="2V3ml1v1vps" role="37wK5m">
                    <ref role="3cqZAo" node="2V3ml1v1rQs" resolve="module" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2V3ml1v188u" role="2OqNvi">
                <ref role="37wK5l" to="gp7a:~GlobalModuleDependenciesManager.getModules(jetbrains.mps.project.dependency.GlobalModuleDependenciesManager$Deptype)" resolve="getModules" />
                <node concept="Rm8GO" id="2V3ml1v1ztz" role="37wK5m">
                  <ref role="1Px2BO" to="gp7a:~GlobalModuleDependenciesManager$Deptype" resolve="GlobalModuleDependenciesManager.Deptype" />
                  <ref role="Rm8GQ" to="gp7a:~GlobalModuleDependenciesManager$Deptype.VISIBLE" resolve="VISIBLE" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2V3ml1v188_" role="3cqZAp">
          <node concept="2OqwBi" id="2V3ml1v18bA" role="3clFbG">
            <node concept="37vLTw" id="2V3ml1v18b_" role="2Oq$k0">
              <ref role="3cqZAo" node="2V3ml1v1889" resolve="visible" />
            </node>
            <node concept="liA8E" id="2V3ml1v18bB" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.addAll(java.util.Collection)" resolve="addAll" />
              <node concept="37vLTw" id="2V3ml1v188B" role="37wK5m">
                <ref role="3cqZAo" node="2V3ml1v188m" resolve="dependentModules" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="2V3ml1v188C" role="3cqZAp">
          <node concept="37vLTw" id="2V3ml1v1895" role="1DdaDG">
            <ref role="3cqZAo" node="2V3ml1v1889" resolve="visible" />
          </node>
          <node concept="3cpWsn" id="2V3ml1v1892" role="1Duv9x">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="dep" />
            <node concept="3uibUv" id="2V3ml1v1894" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
          </node>
          <node concept="3clFbS" id="2V3ml1v188E" role="2LFqv$">
            <node concept="3clFbJ" id="2V3ml1v188F" role="3cqZAp">
              <node concept="2OqwBi" id="2V3ml1v18c2" role="3clFbw">
                <node concept="37vLTw" id="2V3ml1v18c1" role="2Oq$k0">
                  <ref role="3cqZAo" node="2V3ml1v4zl9" resolve="oldDepVersions" />
                </node>
                <node concept="liA8E" id="2V3ml1v18c3" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object)" resolve="containsKey" />
                  <node concept="2OqwBi" id="2V3ml1v18cu" role="37wK5m">
                    <node concept="37vLTw" id="2V3ml1v18ct" role="2Oq$k0">
                      <ref role="3cqZAo" node="2V3ml1v1892" resolve="dep" />
                    </node>
                    <node concept="liA8E" id="2V3ml1v18cv" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SModule.getModuleReference()" resolve="getModuleReference" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="2V3ml1v188P" role="9aQIa">
                <node concept="3clFbS" id="2V3ml1v188Q" role="9aQI4">
                  <node concept="3clFbJ" id="Er$e0jJbGJ" role="3cqZAp">
                    <node concept="3clFbS" id="Er$e0jJbGL" role="3clFbx">
                      <node concept="3clFbF" id="2V3ml1v188R" role="3cqZAp">
                        <node concept="2OqwBi" id="2V3ml1v18cU" role="3clFbG">
                          <node concept="37vLTw" id="2V3ml1v18cT" role="2Oq$k0">
                            <ref role="3cqZAo" node="2V3ml1v1881" resolve="newDepVersions" />
                          </node>
                          <node concept="liA8E" id="2V3ml1v18cV" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                            <node concept="2OqwBi" id="2V3ml1v18dm" role="37wK5m">
                              <node concept="37vLTw" id="2V3ml1v18dl" role="2Oq$k0">
                                <ref role="3cqZAo" node="2V3ml1v1892" resolve="dep" />
                              </node>
                              <node concept="liA8E" id="2V3ml1v18dn" role="2OqNvi">
                                <ref role="37wK5l" to="lui2:~SModule.getModuleReference()" resolve="getModuleReference" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="2V3ml1v188U" role="37wK5m">
                              <node concept="1eOMI4" id="2V3ml1v188Y" role="2Oq$k0">
                                <node concept="10QFUN" id="2V3ml1v188V" role="1eOMHV">
                                  <node concept="37vLTw" id="2V3ml1v188W" role="10QFUP">
                                    <ref role="3cqZAo" node="2V3ml1v1892" resolve="dep" />
                                  </node>
                                  <node concept="3uibUv" id="2V3ml1v188X" role="10QFUM">
                                    <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="2V3ml1v188Z" role="2OqNvi">
                                <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleVersion()" resolve="getModuleVersion" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2ZW3vV" id="Er$e0jJmv8" role="3clFbw">
                      <node concept="3uibUv" id="Er$e0jJsnr" role="2ZW6by">
                        <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                      </node>
                      <node concept="37vLTw" id="Er$e0jJg9Z" role="2ZW6bz">
                        <ref role="3cqZAo" node="2V3ml1v1892" resolve="dep" />
                      </node>
                    </node>
                    <node concept="9aQIb" id="Er$e0jJEXl" role="9aQIa">
                      <node concept="3clFbS" id="Er$e0jJEXm" role="9aQI4">
                        <node concept="RRSsy" id="Er$e0jJIYa" role="3cqZAp">
                          <property role="RRSoG" value="gZ5fksE/warn" />
                          <node concept="2YIFZM" id="Er$e0jJUfX" role="RRSoy">
                            <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                            <node concept="Xl_RD" id="Er$e0jJZhj" role="37wK5m">
                              <property role="Xl_RC" value="Module %s depends from a module w/o version information %s" />
                            </node>
                            <node concept="2OqwBi" id="Er$e0jKcTT" role="37wK5m">
                              <node concept="37vLTw" id="Er$e0jK6BF" role="2Oq$k0">
                                <ref role="3cqZAo" node="2V3ml1v1rQs" resolve="module" />
                              </node>
                              <node concept="liA8E" id="Er$e0jKh$f" role="2OqNvi">
                                <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="Er$e0jKuKN" role="37wK5m">
                              <node concept="37vLTw" id="Er$e0jKrG_" role="2Oq$k0">
                                <ref role="3cqZAo" node="2V3ml1v1892" resolve="dep" />
                              </node>
                              <node concept="liA8E" id="Er$e0jK_m5" role="2OqNvi">
                                <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2V3ml1v188J" role="3clFbx">
                <node concept="3clFbF" id="2V3ml1v188K" role="3cqZAp">
                  <node concept="2OqwBi" id="2V3ml1v18dM" role="3clFbG">
                    <node concept="37vLTw" id="2V3ml1v18dL" role="2Oq$k0">
                      <ref role="3cqZAo" node="2V3ml1v1881" resolve="newDepVersions" />
                    </node>
                    <node concept="liA8E" id="2V3ml1v18dN" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                      <node concept="2OqwBi" id="2V3ml1v18ee" role="37wK5m">
                        <node concept="37vLTw" id="2V3ml1v18ed" role="2Oq$k0">
                          <ref role="3cqZAo" node="2V3ml1v1892" resolve="dep" />
                        </node>
                        <node concept="liA8E" id="2V3ml1v18ef" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModule.getModuleReference()" resolve="getModuleReference" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="2V3ml1v18eE" role="37wK5m">
                        <node concept="37vLTw" id="2V3ml1v18eD" role="2Oq$k0">
                          <ref role="3cqZAo" node="2V3ml1v4zl9" resolve="oldDepVersions" />
                        </node>
                        <node concept="liA8E" id="2V3ml1v18eF" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                          <node concept="2OqwBi" id="2V3ml1v18f6" role="37wK5m">
                            <node concept="37vLTw" id="2V3ml1v18f5" role="2Oq$k0">
                              <ref role="3cqZAo" node="2V3ml1v1892" resolve="dep" />
                            </node>
                            <node concept="liA8E" id="2V3ml1v18f7" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~SModule.getModuleReference()" resolve="getModuleReference" />
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
        <node concept="3cpWs6" id="2V3ml1v26EA" role="3cqZAp">
          <node concept="37vLTw" id="2V3ml1v28zL" role="3cqZAk">
            <ref role="3cqZAo" node="2V3ml1v1881" resolve="newDepVersions" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4biA4YBAcBE" role="1B3o_S" />
      <node concept="37vLTG" id="2V3ml1v1rQs" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="2V3ml1v9cXO" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="37vLTG" id="2V3ml1v4zl9" role="3clF46">
        <property role="TrG5h" value="oldDepVersions" />
        <node concept="3uibUv" id="2V3ml1v4$Zl" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="3uibUv" id="2V3ml1v4$Zm" role="11_B2D">
            <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
          </node>
          <node concept="3uibUv" id="2V3ml1v4$Zn" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2V3ml1v2a7l" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="2V3ml1v2a7m" role="11_B2D">
          <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
        </node>
        <node concept="3uibUv" id="2V3ml1v2a7n" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5qGXSHduQ_y" role="jymVt" />
    <node concept="3clFb_" id="2V3ml1v6o13" role="jymVt">
      <property role="TrG5h" value="checkModelVersionsAreValid" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="2V3ml1v6wfA" role="3clF46">
        <property role="TrG5h" value="myModule" />
        <node concept="3uibUv" id="2V3ml1vanIU" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="37vLTG" id="2V3ml1v9vO8" role="3clF46">
        <property role="TrG5h" value="langVersions" />
        <node concept="3uibUv" id="2V3ml1v9vO9" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="3uibUv" id="2V3ml1v9vOa" role="11_B2D">
            <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
          </node>
          <node concept="3uibUv" id="2V3ml1v9vOb" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2V3ml1v6o16" role="3clF47">
        <node concept="3SKdUt" id="7_8SJV8I9t1" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXo7zH" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXo7zI" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo7zJ" role="1PaTwD">
              <property role="3oM_SC" value="[MM]" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo7zK" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo7zL" role="1PaTwD">
              <property role="3oM_SC" value="rid" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo7zM" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo7zN" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo7zO" role="1PaTwD">
              <property role="3oM_SC" value="method," />
            </node>
            <node concept="3oM_SD" id="ATZLwXo7zP" role="1PaTwD">
              <property role="3oM_SC" value="check" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo7zQ" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo7zR" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo7zS" role="1PaTwD">
              <property role="3oM_SC" value="load" />
            </node>
            <node concept="3oM_SD" id="ATZLwXo7zT" role="1PaTwD">
              <property role="3oM_SC" value="etc." />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="2V3ml1v6o1b" role="3cqZAp">
          <node concept="2OqwBi" id="2V3ml1v6Av3" role="1DdaDG">
            <node concept="37vLTw" id="2V3ml1v6_NP" role="2Oq$k0">
              <ref role="3cqZAo" node="2V3ml1v6wfA" resolve="myModule" />
            </node>
            <node concept="liA8E" id="2V3ml1v6Bhz" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~SModule.getModels()" resolve="getModels" />
            </node>
          </node>
          <node concept="3cpWsn" id="2V3ml1v6o1Y" role="1Duv9x">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="m" />
            <node concept="3uibUv" id="2V3ml1v6By7" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
          </node>
          <node concept="3clFbS" id="2V3ml1v6o1d" role="2LFqv$">
            <node concept="3clFbJ" id="5NawSsQ5giH" role="3cqZAp">
              <node concept="3clFbS" id="5NawSsQ5giJ" role="3clFbx">
                <node concept="3N13vt" id="5NawSsQ5gxS" role="3cqZAp" />
              </node>
              <node concept="2YIFZM" id="5NawSsQ5gwa" role="3clFbw">
                <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
                <ref role="37wK5l" to="w1kc:~SModelStereotype.isDescriptorModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isDescriptorModel" />
                <node concept="37vLTw" id="5NawSsQ5gwO" role="37wK5m">
                  <ref role="3cqZAo" node="2V3ml1v6o1Y" resolve="m" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2V3ml1v6o1f" role="3cqZAp">
              <node concept="3cpWsn" id="2V3ml1v6o1e" role="3cpWs9">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="modelInternal" />
                <node concept="3uibUv" id="2V3ml1v6o1g" role="1tU5fm">
                  <ref role="3uigEE" to="w1kc:~SModelInternal" resolve="SModelInternal" />
                </node>
                <node concept="10QFUN" id="2V3ml1v6o1h" role="33vP2m">
                  <node concept="37vLTw" id="2V3ml1v6o1i" role="10QFUP">
                    <ref role="3cqZAo" node="2V3ml1v6o1Y" resolve="m" />
                  </node>
                  <node concept="3uibUv" id="2V3ml1v6o1j" role="10QFUM">
                    <ref role="3uigEE" to="w1kc:~SModelInternal" resolve="SModelInternal" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="2V3ml1v9AmC" role="3cqZAp">
              <node concept="2GrKxI" id="2V3ml1v9AmE" role="2Gsz3X">
                <property role="TrG5h" value="lang" />
              </node>
              <node concept="3clFbS" id="2V3ml1v9AmI" role="2LFqv$">
                <node concept="3cpWs8" id="2V3ml1v9KQv" role="3cqZAp">
                  <node concept="3cpWsn" id="2V3ml1v9KQw" role="3cpWs9">
                    <property role="TrG5h" value="currentVersion" />
                    <node concept="3uibUv" id="3amAVYV68Tg" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                    </node>
                    <node concept="2OqwBi" id="2V3ml1v9TUD" role="33vP2m">
                      <node concept="37vLTw" id="2V3ml1v9Tan" role="2Oq$k0">
                        <ref role="3cqZAo" node="2V3ml1v9vO8" resolve="langVersions" />
                      </node>
                      <node concept="liA8E" id="2V3ml1v9Uyj" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                        <node concept="2GrUjf" id="2V3ml1v9V7I" role="37wK5m">
                          <ref role="2Gs0qQ" node="2V3ml1v9AmE" resolve="lang" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="3amAVYV69FS" role="3cqZAp">
                  <node concept="3clFbS" id="3amAVYV69FU" role="3clFbx">
                    <node concept="3N13vt" id="3amAVYV6b0W" role="3cqZAp" />
                  </node>
                  <node concept="3clFbC" id="3amAVYV6aZG" role="3clFbw">
                    <node concept="10Nm6u" id="3amAVYV6b01" role="3uHU7w" />
                    <node concept="37vLTw" id="3amAVYV69Ys" role="3uHU7B">
                      <ref role="3cqZAo" node="2V3ml1v9KQw" resolve="currentVersion" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="2V3ml1v6o1s" role="3cqZAp">
                  <node concept="3cpWsn" id="2V3ml1v6o1r" role="3cpWs9">
                    <property role="3TUv4t" value="false" />
                    <property role="TrG5h" value="modelVer" />
                    <node concept="10Oyi0" id="2V3ml1v6o1t" role="1tU5fm" />
                    <node concept="2OqwBi" id="2V3ml1v6o3m" role="33vP2m">
                      <node concept="37vLTw" id="2V3ml1v6o3l" role="2Oq$k0">
                        <ref role="3cqZAo" node="2V3ml1v6o1e" resolve="modelInternal" />
                      </node>
                      <node concept="liA8E" id="2V3ml1v6o3n" role="2OqNvi">
                        <ref role="37wK5l" to="w1kc:~SModelInternal.getLanguageImportVersion(org.jetbrains.mps.openapi.language.SLanguage)" resolve="getLanguageImportVersion" />
                        <node concept="2GrUjf" id="2V3ml1v9I4L" role="37wK5m">
                          <ref role="2Gs0qQ" node="2V3ml1v9AmE" resolve="lang" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="2V3ml1v6o1w" role="3cqZAp">
                  <node concept="1Wc70l" id="5yRJc8nRTBC" role="3clFbw">
                    <node concept="3y3z36" id="2V3ml1v6o1x" role="3uHU7B">
                      <node concept="37vLTw" id="2V3ml1v6o1y" role="3uHU7B">
                        <ref role="3cqZAo" node="2V3ml1v6o1r" resolve="modelVer" />
                      </node>
                      <node concept="1ZRNhn" id="2V3ml1v6o1z" role="3uHU7w">
                        <node concept="3cmrfG" id="2V3ml1v6o1$" role="2$L3a6">
                          <property role="3cmrfH" value="1" />
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="2V3ml1v6o1C" role="3uHU7w">
                      <node concept="37vLTw" id="2V3ml1v6o1D" role="3uHU7B">
                        <ref role="3cqZAo" node="2V3ml1v6o1r" resolve="modelVer" />
                      </node>
                      <node concept="37vLTw" id="2V3ml1v6o1E" role="3uHU7w">
                        <ref role="3cqZAo" node="2V3ml1v9KQw" resolve="currentVersion" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="2V3ml1v6o1A" role="3clFbx">
                    <node concept="RRSsy" id="3jYQuSB37dT" role="3cqZAp">
                      <property role="RRSoG" value="gZ5fh_4/error" />
                      <node concept="3cpWs3" id="2V3ml1v6o1J" role="RRSoy">
                        <node concept="3cpWs3" id="2V3ml1v6o1K" role="3uHU7B">
                          <node concept="3cpWs3" id="2V3ml1v6o1L" role="3uHU7B">
                            <node concept="3cpWs3" id="2V3ml1v6o1M" role="3uHU7B">
                              <node concept="3cpWs3" id="2V3ml1v6o1N" role="3uHU7B">
                                <node concept="3cpWs3" id="2V3ml1va2hH" role="3uHU7B">
                                  <node concept="Xl_RD" id="2V3ml1va1Xo" role="3uHU7w">
                                    <property role="Xl_RC" value=" with version " />
                                  </node>
                                  <node concept="3cpWs3" id="2V3ml1va1r1" role="3uHU7B">
                                    <node concept="3cpWs3" id="2V3ml1v6o1O" role="3uHU7B">
                                      <node concept="3cpWs3" id="2V3ml1v6o1P" role="3uHU7B">
                                        <node concept="Xl_RD" id="2V3ml1v6o1Q" role="3uHU7B">
                                          <property role="Xl_RC" value="Migration assistant detected inconsistency in language versions. Module " />
                                        </node>
                                        <node concept="37vLTw" id="2V3ml1v9Ywi" role="3uHU7w">
                                          <ref role="3cqZAo" node="2V3ml1v6wfA" resolve="myModule" />
                                        </node>
                                      </node>
                                      <node concept="Xl_RD" id="2V3ml1v6o1S" role="3uHU7w">
                                        <property role="Xl_RC" value=" uses language " />
                                      </node>
                                    </node>
                                    <node concept="2GrUjf" id="2V3ml1va3mS" role="3uHU7w">
                                      <ref role="2Gs0qQ" node="2V3ml1v9AmE" resolve="lang" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTw" id="2V3ml1v6o1T" role="3uHU7w">
                                  <ref role="3cqZAo" node="2V3ml1v9KQw" resolve="currentVersion" />
                                </node>
                              </node>
                              <node concept="Xl_RD" id="2V3ml1v6o1U" role="3uHU7w">
                                <property role="Xl_RC" value=" while its model " />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="2V3ml1v6o4b" role="3uHU7w">
                              <node concept="37vLTw" id="2V3ml1v6o4a" role="2Oq$k0">
                                <ref role="3cqZAo" node="2V3ml1v6o1Y" resolve="m" />
                              </node>
                              <node concept="liA8E" id="2V3ml1v6o4c" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                              </node>
                            </node>
                          </node>
                          <node concept="Xl_RD" id="2V3ml1v6o1W" role="3uHU7w">
                            <property role="Xl_RC" value=" uses this language with version " />
                          </node>
                        </node>
                        <node concept="37vLTw" id="2V3ml1v6o1X" role="3uHU7w">
                          <ref role="3cqZAo" node="2V3ml1v6o1r" resolve="modelVer" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2V3ml1v9AAf" role="2GsD0m">
                <node concept="37vLTw" id="2V3ml1v9AAg" role="2Oq$k0">
                  <ref role="3cqZAo" node="2V3ml1v6o1e" resolve="modelInternal" />
                </node>
                <node concept="liA8E" id="2V3ml1v9AAh" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~SModelInternal.importedLanguageIds()" resolve="importedLanguageIds" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7_8SJV8KyfA" role="1B3o_S" />
      <node concept="3cqZAl" id="2V3ml1v6o23" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="5qGXSHdtRTo" role="1B3o_S" />
    <node concept="3UR2Jj" id="5qGXSHdulxX" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHs$ws" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs$wt" role="1PaTwD">
          <property role="3oM_SC" value="Update" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wu" role="1PaTwD">
          <property role="3oM_SC" value="MPS" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wv" role="1PaTwD">
          <property role="3oM_SC" value="internal" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$ww" role="1PaTwD">
          <property role="3oM_SC" value="records" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wx" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wy" role="1PaTwD">
          <property role="3oM_SC" value="versions" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wz" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$w$" role="1PaTwD">
          <property role="3oM_SC" value="module" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$w_" role="1PaTwD">
          <property role="3oM_SC" value="dependencies." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs$wA" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs$wB" role="1PaTwD">
          <property role="3oM_SC" value="These" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wC" role="1PaTwD">
          <property role="3oM_SC" value="versions" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wD" role="1PaTwD">
          <property role="3oM_SC" value="are" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wE" role="1PaTwD">
          <property role="3oM_SC" value="persisted" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wF" role="1PaTwD">
          <property role="3oM_SC" value="as" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wG" role="1PaTwD">
          <property role="3oM_SC" value="part" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wH" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wI" role="1PaTwD">
          <property role="3oM_SC" value="module" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wJ" role="1PaTwD">
          <property role="3oM_SC" value="descriptor." />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5F0lsbynlOq">
    <property role="TrG5h" value="RepositoryFacade" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="5F0lsbynDfz" role="jymVt" />
    <node concept="3clFbW" id="5F0lsbynDyD" role="jymVt">
      <node concept="3cqZAl" id="5F0lsbynDyH" role="3clF45" />
      <node concept="3clFbS" id="5F0lsbynDyJ" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5F0lsbynmlA" role="jymVt" />
    <node concept="3clFb_" id="5F0lsbynmm$" role="jymVt">
      <property role="TrG5h" value="get" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="5F0lsbynmnp" role="3clF45">
        <ref role="3uigEE" to="31cb:~SRepositoryExt" resolve="SRepositoryExt" />
      </node>
      <node concept="3Tm1VV" id="5F0lsbynmmB" role="1B3o_S" />
      <node concept="3clFbS" id="5F0lsbynmmC" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5F0lsbyp8Au" role="jymVt" />
    <node concept="3clFb_" id="5F0lsbyp96t" role="jymVt">
      <property role="TrG5h" value="registerModule" />
      <property role="1EzhhJ" value="true" />
      <node concept="3clFbS" id="5F0lsbyp96w" role="3clF47" />
      <node concept="3Tm1VV" id="5F0lsbyp8Qq" role="1B3o_S" />
      <node concept="3cqZAl" id="5F0lsbyp942" role="3clF45" />
      <node concept="37vLTG" id="5F0lsbyp9hW" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="5F0lsbyp9hV" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
        <node concept="2AHcQZ" id="5F0lsbyp9wV" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5F0lsbynmjM" role="jymVt" />
    <node concept="3clFb_" id="5F0lsbynmkA" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3clFbS" id="5F0lsbynmkD" role="3clF47" />
      <node concept="3Tm1VV" id="5F0lsbynmkc" role="1B3o_S" />
      <node concept="3cqZAl" id="5F0lsbynmks" role="3clF45" />
      <node concept="P$JXv" id="1yt7HPh0Woq" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs$_H" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs$_I" role="1PaTwD">
            <property role="3oM_SC" value="unregisters" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$_J" role="1PaTwD">
            <property role="3oM_SC" value="modules" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$_K" role="1PaTwD">
            <property role="3oM_SC" value="earlier" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$_L" role="1PaTwD">
            <property role="3oM_SC" value="registered" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$_M" role="1PaTwD">
            <property role="3oM_SC" value="through" />
          </node>
          <node concept="1Vtdud" id="1E1X3WHs$_N" role="1PaTwD">
            <node concept="1VuXuv" id="1E1X3WHs$_O" role="1Vtduc">
              <node concept="VXe0Z" id="1yt7HPh0YsU" role="1VuXuu">
                <ref role="VXe0S" node="5F0lsbyp96t" resolve="registerModule" />
              </node>
              <node concept="1PaTwC" id="1E1X3WHs$_R" role="2JaDBN">
                <node concept="3oM_SD" id="1E1X3WHs$_S" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$_T" role="1PaTwD">
            <property role="3oM_SC" value="(any" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$_U" role="1PaTwD">
            <property role="3oM_SC" value="other" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$_V" role="1PaTwD">
            <property role="3oM_SC" value="module," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$_W" role="1PaTwD">
            <property role="3oM_SC" value="if" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$_X" role="1PaTwD">
            <property role="3oM_SC" value="any," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$_Y" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$_Z" role="1PaTwD">
            <property role="3oM_SC" value="left" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$A0" role="1PaTwD">
            <property role="3oM_SC" value="intact)" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5F0lsbynlPs" role="jymVt" />
    <node concept="2YIFZL" id="5F0lsbynlQK" role="jymVt">
      <property role="TrG5h" value="createPlainRegistrationRepo" />
      <node concept="3clFbS" id="5F0lsbynlQj" role="3clF47">
        <node concept="3cpWs8" id="5F0lsbynCql" role="3cqZAp">
          <node concept="3cpWsn" id="5F0lsbynCqm" role="3cpWs9">
            <property role="TrG5h" value="repo" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="5F0lsbyn_EJ" role="1tU5fm">
              <ref role="3uigEE" node="1Unlav_2McA" resolve="Repo" />
            </node>
            <node concept="2ShNRf" id="5F0lsbynCqn" role="33vP2m">
              <node concept="1pGfFk" id="5F0lsbynCqo" role="2ShVmc">
                <ref role="37wK5l" node="1Unlav_3gKN" resolve="Repo" />
                <node concept="2ShNRf" id="5F0lsbynCqp" role="37wK5m">
                  <node concept="HV5vD" id="5F0lsbynCqq" role="2ShVmc">
                    <ref role="HV5vE" node="1Unlav_55ET" resolve="ModelAccessNoLimit" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1QoFXNlUtdL" role="3cqZAp">
          <node concept="2OqwBi" id="1QoFXNlUtUi" role="3clFbG">
            <node concept="37vLTw" id="1QoFXNlUtdJ" role="2Oq$k0">
              <ref role="3cqZAo" node="5F0lsbynCqm" resolve="repo" />
            </node>
            <node concept="liA8E" id="1QoFXNlUuwG" role="2OqNvi">
              <ref role="37wK5l" to="31cb:~SRepositoryBase.init()" resolve="init" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5F0lsbynyVe" role="3cqZAp">
          <node concept="2ShNRf" id="5F0lsbynyX0" role="3cqZAk">
            <node concept="1pGfFk" id="5YLCPOnNZjV" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" node="5YLCPOnNLKJ" resolve="RepositoryFacade.Impl" />
              <node concept="37vLTw" id="5YLCPOnNZMc" role="37wK5m">
                <ref role="3cqZAo" node="5F0lsbynCqm" resolve="repo" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5F0lsbynlRm" role="3clF45">
        <ref role="3uigEE" node="5F0lsbynlOq" resolve="RepositoryFacade" />
      </node>
      <node concept="3Tm1VV" id="5F0lsbynlQi" role="1B3o_S" />
      <node concept="P$JXv" id="5F0lsbyr1mU" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs$A1" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs$A2" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
          <node concept="1Vtdud" id="1E1X3WHs$A3" role="1PaTwD">
            <node concept="1VuTSG" id="1E1X3WHs$A4" role="1Vtduc">
              <node concept="1PaTwC" id="1E1X3WHs$A7" role="2JaDBN">
                <node concept="3oM_SD" id="1E1X3WHs$A8" role="1PaTwD">
                  <property role="3oM_SC" value="SRepository" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$A9" role="1PaTwD">
            <property role="3oM_SC" value="instance" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$Aa" role="1PaTwD">
            <property role="3oM_SC" value="intended" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$Ab" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$Ac" role="1PaTwD">
            <property role="3oM_SC" value="local/scoped" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$Ad" role="1PaTwD">
            <property role="3oM_SC" value="use," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$Ae" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$Af" role="1PaTwD">
            <property role="3oM_SC" value="no" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$Ag" role="1PaTwD">
            <property role="3oM_SC" value="shared" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$Ah" role="1PaTwD">
            <property role="3oM_SC" value="access" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$Ai" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs$Aj" role="1PaTwD">
            <property role="3oM_SC" value="modules" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YLCPOnO1LU" role="jymVt" />
    <node concept="2YIFZL" id="5YLCPOnO0Hy" role="jymVt">
      <property role="TrG5h" value="createPlainRegistrationRepo" />
      <node concept="37vLTG" id="5YLCPOnO2Fr" role="3clF46">
        <property role="TrG5h" value="delegate" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="5YLCPOnO2VJ" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
        <node concept="2AHcQZ" id="5YLCPOnO35A" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="5YLCPOnO0Hz" role="3clF47">
        <node concept="3SKdUt" id="5YLCPOnOZjk" role="3cqZAp">
          <node concept="1PaTwC" id="5YLCPOnOZjl" role="1aUNEU">
            <node concept="3oM_SD" id="5YLCPOnOZIb" role="1PaTwD">
              <property role="3oM_SC" value="Reference" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnOZF6" role="1PaTwD">
              <property role="3oM_SC" value="target" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0aE" role="1PaTwD">
              <property role="3oM_SC" value="resolve" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0cT" role="1PaTwD">
              <property role="3oM_SC" value="logic" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0e9" role="1PaTwD">
              <property role="3oM_SC" value="first" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0fp" role="1PaTwD">
              <property role="3oM_SC" value="find" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0gD" role="1PaTwD">
              <property role="3oM_SC" value="model," />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0gE" role="1PaTwD">
              <property role="3oM_SC" value="then" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0hU" role="1PaTwD">
              <property role="3oM_SC" value="takes" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0hV" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0jb" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0jc" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0kc" role="1PaTwD">
              <property role="3oM_SC" value="model." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5YLCPOnOWe8" role="3cqZAp">
          <node concept="1PaTwC" id="5YLCPOnOWe9" role="1aUNEU">
            <node concept="3oM_SD" id="5YLCPOnOWea" role="1PaTwD">
              <property role="3oM_SC" value="Here" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnOWAu" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnOWAK" role="1PaTwD">
              <property role="3oM_SC" value="follow" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnOWC0" role="1PaTwD">
              <property role="3oM_SC" value="smodel.SModelReference.resolve()" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnOWHH" role="1PaTwD">
              <property role="3oM_SC" value="logic" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnOWOE" role="1PaTwD">
              <property role="3oM_SC" value="(find" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnOWPU" role="1PaTwD">
              <property role="3oM_SC" value="module," />
            </node>
            <node concept="3oM_SD" id="5YLCPOnOWRa" role="1PaTwD">
              <property role="3oM_SC" value="then" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnOWWb" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnOWWc" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnOWWt" role="1PaTwD">
              <property role="3oM_SC" value="non-unique" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnOX1q" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnOX2E" role="1PaTwD">
              <property role="3oM_SC" value="ref," />
            </node>
            <node concept="3oM_SD" id="5YLCPOnOX3U" role="1PaTwD">
              <property role="3oM_SC" value="or" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnOX4b" role="1PaTwD">
              <property role="3oM_SC" value="simply" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnOX5V" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnOX7b" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnOXgD" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnOXhT" role="1PaTwD">
              <property role="3oM_SC" value="unique" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnOYsx" role="1PaTwD">
              <property role="3oM_SC" value="one)." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5YLCPOnOXXU" role="3cqZAp">
          <node concept="1PaTwC" id="5YLCPOnOXXV" role="1aUNEU">
            <node concept="3oM_SD" id="5YLCPOnOXY1" role="1PaTwD">
              <property role="3oM_SC" value="perhaps," />
            </node>
            <node concept="3oM_SD" id="5YLCPOnOXZ1" role="1PaTwD">
              <property role="3oM_SC" value="worth" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0rn" role="1PaTwD">
              <property role="3oM_SC" value="adding" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0ro" role="1PaTwD">
              <property role="3oM_SC" value="resolve()" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0u7" role="1PaTwD">
              <property role="3oM_SC" value="method" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0v7" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0wn" role="1PaTwD">
              <property role="3oM_SC" value="SRepository" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0xB" role="1PaTwD">
              <property role="3oM_SC" value="or" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0z7" role="1PaTwD">
              <property role="3oM_SC" value="its" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0$n" role="1PaTwD">
              <property role="3oM_SC" value="extension" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0_R" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0AR" role="1PaTwD">
              <property role="3oM_SC" value="let" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0Bo" role="1PaTwD">
              <property role="3oM_SC" value="repo" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0DR" role="1PaTwD">
              <property role="3oM_SC" value="control" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0ER" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0FR" role="1PaTwD">
              <property role="3oM_SC" value="resolution" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0I6" role="1PaTwD">
              <property role="3oM_SC" value="process" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0K_" role="1PaTwD">
              <property role="3oM_SC" value="(after" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0MO" role="1PaTwD">
              <property role="3oM_SC" value="all," />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0O4" role="1PaTwD">
              <property role="3oM_SC" value="SModelReference.resolve" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0RM" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0T2" role="1PaTwD">
              <property role="3oM_SC" value="something" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0Uy" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0Vj" role="1PaTwD">
              <property role="3oM_SC" value="can't" />
            </node>
            <node concept="3oM_SD" id="5YLCPOnP0Wz" role="1PaTwD">
              <property role="3oM_SC" value="override)." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5YLCPOnO0H$" role="3cqZAp">
          <node concept="3cpWsn" id="5YLCPOnO0H_" role="3cpWs9">
            <property role="TrG5h" value="repo" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="5YLCPOnO0HA" role="1tU5fm">
              <ref role="3uigEE" node="1Unlav_2McA" resolve="Repo" />
            </node>
            <node concept="2ShNRf" id="5YLCPOnO0HB" role="33vP2m">
              <node concept="YeOm9" id="5YLCPOnO3yT" role="2ShVmc">
                <node concept="1Y3b0j" id="5YLCPOnO3yW" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" node="1Unlav_3gKN" resolve="Repo" />
                  <ref role="1Y3XeK" node="1Unlav_2McA" resolve="Repo" />
                  <node concept="15s5l7" id="5YLCPOnOGiq" role="lGtFl">
                    <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: The anonymous class must implement abstract method 'registerModule' in 'SRepositoryExt'&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/824450455578865184]&quot;;" />
                    <property role="huDt6" value="Error: The anonymous class must implement abstract method 'registerModule' in 'SRepositoryExt'" />
                  </node>
                  <node concept="3Tm1VV" id="5YLCPOnO3yX" role="1B3o_S" />
                  <node concept="2ShNRf" id="5YLCPOnO0HD" role="37wK5m">
                    <node concept="HV5vD" id="5YLCPOnO0HE" role="2ShVmc">
                      <ref role="HV5vE" node="1Unlav_55ET" resolve="ModelAccessNoLimit" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="5YLCPOnO3L0" role="jymVt">
                    <property role="TrG5h" value="getModule" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <node concept="3Tm1VV" id="5YLCPOnO3L1" role="1B3o_S" />
                    <node concept="2AHcQZ" id="5YLCPOnO3L2" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                    </node>
                    <node concept="3uibUv" id="5YLCPOnO3L3" role="3clF45">
                      <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                    </node>
                    <node concept="37vLTG" id="5YLCPOnO3L4" role="3clF46">
                      <property role="TrG5h" value="mid" />
                      <node concept="3uibUv" id="5YLCPOnO3L5" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SModuleId" resolve="SModuleId" />
                      </node>
                      <node concept="2AHcQZ" id="5YLCPOnO3L6" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="5YLCPOnO3Ls" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                    <node concept="3clFbS" id="5YLCPOnO3Lu" role="3clF47">
                      <node concept="3cpWs8" id="5YLCPOnO9zo" role="3cqZAp">
                        <node concept="3cpWsn" id="5YLCPOnO9zp" role="3cpWs9">
                          <property role="TrG5h" value="owned" />
                          <node concept="3uibUv" id="5YLCPOnO8XG" role="1tU5fm">
                            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                          </node>
                          <node concept="3nyPlj" id="5YLCPOnO9zq" role="33vP2m">
                            <ref role="37wK5l" node="1Unlav_1CpM" resolve="getModule" />
                            <node concept="37vLTw" id="5YLCPOnO9zr" role="37wK5m">
                              <ref role="3cqZAo" node="5YLCPOnO3L4" resolve="mid" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="5YLCPOnOch8" role="3cqZAp">
                        <node concept="3clFbS" id="5YLCPOnOcha" role="3clFbx">
                          <node concept="3cpWs6" id="5YLCPOnOfFc" role="3cqZAp">
                            <node concept="37vLTw" id="5YLCPOnOfFe" role="3cqZAk">
                              <ref role="3cqZAo" node="5YLCPOnO9zp" resolve="owned" />
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="5YLCPOnOe4Q" role="3clFbw">
                          <node concept="10Nm6u" id="5YLCPOnOeDm" role="3uHU7w" />
                          <node concept="37vLTw" id="5YLCPOnOdqm" role="3uHU7B">
                            <ref role="3cqZAo" node="5YLCPOnO9zp" resolve="owned" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="5YLCPOnOhs1" role="3cqZAp">
                        <node concept="2OqwBi" id="5YLCPOnOiZf" role="3cqZAk">
                          <node concept="37vLTw" id="5YLCPOnOiH1" role="2Oq$k0">
                            <ref role="3cqZAo" node="5YLCPOnO2Fr" resolve="delegate" />
                          </node>
                          <node concept="liA8E" id="5YLCPOnOjDB" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~SRepository.getModule(org.jetbrains.mps.openapi.module.SModuleId)" resolve="getModule" />
                            <node concept="37vLTw" id="5YLCPOnOkBw" role="37wK5m">
                              <ref role="3cqZAo" node="5YLCPOnO3L4" resolve="mid" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2tJIrI" id="5YLCPOnO5xh" role="jymVt" />
                  <node concept="3clFb_" id="5YLCPOnO8$X" role="jymVt">
                    <property role="TrG5h" value="getModel" />
                    <node concept="3Tm1VV" id="5YLCPOnO8$Y" role="1B3o_S" />
                    <node concept="2AHcQZ" id="5YLCPOnO8_0" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                    </node>
                    <node concept="3uibUv" id="5YLCPOnO8_1" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                    </node>
                    <node concept="37vLTG" id="5YLCPOnO8_2" role="3clF46">
                      <property role="TrG5h" value="modelId" />
                      <node concept="3uibUv" id="5YLCPOnO8_3" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SModelId" resolve="SModelId" />
                      </node>
                      <node concept="2AHcQZ" id="5YLCPOnO8_4" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="5YLCPOnO8_8" role="3clF47">
                      <node concept="3cpWs8" id="5YLCPOnOl_k" role="3cqZAp">
                        <node concept="3cpWsn" id="5YLCPOnOl_l" role="3cpWs9">
                          <property role="TrG5h" value="m" />
                          <node concept="3uibUv" id="5YLCPOnOleX" role="1tU5fm">
                            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                          </node>
                          <node concept="3nyPlj" id="5YLCPOnOl_m" role="33vP2m">
                            <ref role="37wK5l" to="31cb:~SRepositoryBase.getModel(org.jetbrains.mps.openapi.model.SModelId)" resolve="getModel" />
                            <node concept="37vLTw" id="5YLCPOnOl_n" role="37wK5m">
                              <ref role="3cqZAo" node="5YLCPOnO8_2" resolve="modelId" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="5YLCPOnOnaL" role="3cqZAp">
                        <node concept="3clFbS" id="5YLCPOnOnaN" role="3clFbx">
                          <node concept="3cpWs6" id="5YLCPOnOqhm" role="3cqZAp">
                            <node concept="37vLTw" id="5YLCPOnOqho" role="3cqZAk">
                              <ref role="3cqZAo" node="5YLCPOnOl_l" resolve="m" />
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="5YLCPOnOoj5" role="3clFbw">
                          <node concept="10Nm6u" id="5YLCPOnOpdy" role="3uHU7w" />
                          <node concept="37vLTw" id="5YLCPOnOnJc" role="3uHU7B">
                            <ref role="3cqZAo" node="5YLCPOnOl_l" resolve="m" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="5YLCPOnOrZl" role="3cqZAp">
                        <node concept="2OqwBi" id="5YLCPOnOu5Y" role="3cqZAk">
                          <node concept="37vLTw" id="5YLCPOnOt$0" role="2Oq$k0">
                            <ref role="3cqZAo" node="5YLCPOnO2Fr" resolve="delegate" />
                          </node>
                          <node concept="liA8E" id="5YLCPOnOu$6" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~SRepository.getModel(org.jetbrains.mps.openapi.model.SModelId)" resolve="getModel" />
                            <node concept="37vLTw" id="5YLCPOnOvyY" role="37wK5m">
                              <ref role="3cqZAo" node="5YLCPOnO8_2" resolve="modelId" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="5YLCPOnO8_9" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5YLCPOnO0HF" role="3cqZAp">
          <node concept="2OqwBi" id="5YLCPOnO0HG" role="3clFbG">
            <node concept="37vLTw" id="5YLCPOnO0HH" role="2Oq$k0">
              <ref role="3cqZAo" node="5YLCPOnO0H_" resolve="repo" />
            </node>
            <node concept="liA8E" id="5YLCPOnO0HI" role="2OqNvi">
              <ref role="37wK5l" to="31cb:~SRepositoryBase.init()" resolve="init" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5YLCPOnO0HJ" role="3cqZAp">
          <node concept="2ShNRf" id="5YLCPOnO0HK" role="3cqZAk">
            <node concept="1pGfFk" id="5YLCPOnO0HL" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" node="5YLCPOnNLKJ" resolve="RepositoryFacade.Impl" />
              <node concept="37vLTw" id="5YLCPOnO0HM" role="37wK5m">
                <ref role="3cqZAo" node="5YLCPOnO0H_" resolve="repo" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5YLCPOnO0HN" role="3clF45">
        <ref role="3uigEE" node="5F0lsbynlOq" resolve="RepositoryFacade" />
      </node>
      <node concept="3Tm1VV" id="5YLCPOnO0HO" role="1B3o_S" />
      <node concept="P$JXv" id="5YLCPOnO0HP" role="lGtFl">
        <node concept="1PaTwC" id="5YLCPOnO2ax" role="1Vez_I">
          <node concept="3oM_SD" id="5YLCPOnO2ay" role="1PaTwD">
            <property role="3oM_SC" value="same" />
          </node>
          <node concept="3oM_SD" id="5YLCPOnO2hv" role="1PaTwD">
            <property role="3oM_SC" value="as" />
          </node>
          <node concept="3oM_SD" id="5YLCPOnO2hx" role="1PaTwD">
            <property role="3oM_SC" value="createPlainRegistrationRepo" />
          </node>
          <node concept="3oM_SD" id="5YLCPOnO2oG" role="1PaTwD">
            <property role="3oM_SC" value="but" />
          </node>
          <node concept="3oM_SD" id="5YLCPOnO2pd" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="5YLCPOnO2qd" role="1PaTwD">
            <property role="3oM_SC" value="extra" />
          </node>
          <node concept="3oM_SD" id="5YLCPOnO2qu" role="1PaTwD">
            <property role="3oM_SC" value="SRepository" />
          </node>
          <node concept="3oM_SD" id="5YLCPOnO2sX" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="5YLCPOnO2sY" role="1PaTwD">
            <property role="3oM_SC" value="delegate" />
          </node>
          <node concept="3oM_SD" id="5YLCPOnO2tY" role="1PaTwD">
            <property role="3oM_SC" value="reference" />
          </node>
          <node concept="3oM_SD" id="5YLCPOnO2vu" role="1PaTwD">
            <property role="3oM_SC" value="resolution" />
          </node>
          <node concept="3oM_SD" id="5YLCPOnO2xH" role="1PaTwD">
            <property role="3oM_SC" value="(model/module" />
          </node>
          <node concept="3oM_SD" id="5YLCPOnO2CF" role="1PaTwD">
            <property role="3oM_SC" value="lookup)" />
          </node>
          <node concept="3oM_SD" id="5YLCPOnO2CW" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YLCPOo9Gkd" role="jymVt" />
    <node concept="2YIFZL" id="5YLCPOo9Iun" role="jymVt">
      <property role="TrG5h" value="wrap" />
      <node concept="3clFbS" id="5YLCPOo9Iuq" role="3clF47">
        <node concept="3cpWs6" id="5YLCPOo9Kn4" role="3cqZAp">
          <node concept="2ShNRf" id="5YLCPOo9KCf" role="3cqZAk">
            <node concept="1pGfFk" id="5YLCPOo9MJD" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" node="5YLCPOnNLKJ" resolve="RepositoryFacade.Impl" />
              <node concept="37vLTw" id="5YLCPOo9N2K" role="37wK5m">
                <ref role="3cqZAo" node="5YLCPOo9JtP" resolve="repository" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5YLCPOo9HkV" role="1B3o_S" />
      <node concept="3uibUv" id="5YLCPOo9Ilq" role="3clF45">
        <ref role="3uigEE" node="5F0lsbynlOq" resolve="RepositoryFacade" />
      </node>
      <node concept="37vLTG" id="5YLCPOo9JtP" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="5YLCPOo9JtO" role="1tU5fm">
          <ref role="3uigEE" to="31cb:~SRepositoryExt" resolve="SRepositoryExt" />
        </node>
        <node concept="2AHcQZ" id="5YLCPOo9JWq" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5YLCPOnNI6l" role="jymVt" />
    <node concept="312cEu" id="5YLCPOnNJLW" role="jymVt">
      <property role="TrG5h" value="Impl" />
      <node concept="312cEg" id="5YLCPOnNMhW" role="jymVt">
        <property role="TrG5h" value="myRepo" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="5YLCPOnNMhX" role="1B3o_S" />
        <node concept="3uibUv" id="5YLCPOnNMhZ" role="1tU5fm">
          <ref role="3uigEE" to="31cb:~SRepositoryExt" resolve="SRepositoryExt" />
        </node>
      </node>
      <node concept="312cEg" id="5YLCPOnNREk" role="jymVt">
        <property role="TrG5h" value="myOwner" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="5YLCPOnNREl" role="1B3o_S" />
        <node concept="3uibUv" id="2tbYNsGjWqJ" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~MPSModuleOwner" resolve="MPSModuleOwner" />
        </node>
      </node>
      <node concept="2tJIrI" id="5YLCPOnNMvo" role="jymVt" />
      <node concept="3clFbW" id="5YLCPOnNLKJ" role="jymVt">
        <node concept="3cqZAl" id="5YLCPOnNLKL" role="3clF45" />
        <node concept="3clFbS" id="5YLCPOnNLKN" role="3clF47">
          <node concept="XkiVB" id="5YLCPOnO8as" role="3cqZAp">
            <ref role="37wK5l" node="5F0lsbynDyD" resolve="RepositoryFacade" />
          </node>
          <node concept="3clFbF" id="5YLCPOnNMi0" role="3cqZAp">
            <node concept="37vLTI" id="5YLCPOnNMi2" role="3clFbG">
              <node concept="37vLTw" id="5YLCPOnNMi5" role="37vLTJ">
                <ref role="3cqZAo" node="5YLCPOnNMhW" resolve="myRepo" />
              </node>
              <node concept="37vLTw" id="5YLCPOnNMi6" role="37vLTx">
                <ref role="3cqZAo" node="5YLCPOnNM6I" resolve="repo" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="30bJSo_rNzd" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXo0BA" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXo0BB" role="1PaTwD">
                <property role="3oM_SC" value="We" />
              </node>
              <node concept="3oM_SD" id="ATZLwXo0BC" role="1PaTwD">
                <property role="3oM_SC" value="have" />
              </node>
              <node concept="3oM_SD" id="ATZLwXo0BD" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="ATZLwXo0BE" role="1PaTwD">
                <property role="3oM_SC" value="dispose" />
              </node>
              <node concept="3oM_SD" id="ATZLwXo0BF" role="1PaTwD">
                <property role="3oM_SC" value="modules" />
              </node>
              <node concept="3oM_SD" id="ATZLwXo0BG" role="1PaTwD">
                <property role="3oM_SC" value="as" />
              </node>
              <node concept="3oM_SD" id="ATZLwXo0BH" role="1PaTwD">
                <property role="3oM_SC" value="their" />
              </node>
              <node concept="3oM_SD" id="ATZLwXo0BI" role="1PaTwD">
                <property role="3oM_SC" value="models/datasources" />
              </node>
              <node concept="3oM_SD" id="ATZLwXo0BJ" role="1PaTwD">
                <property role="3oM_SC" value="attach" />
              </node>
              <node concept="3oM_SD" id="ATZLwXo0BK" role="1PaTwD">
                <property role="3oM_SC" value="e.g." />
              </node>
              <node concept="3oM_SD" id="ATZLwXo0BL" role="1PaTwD">
                <property role="3oM_SC" value="file" />
              </node>
              <node concept="3oM_SD" id="ATZLwXo0BM" role="1PaTwD">
                <property role="3oM_SC" value="listeners" />
              </node>
              <node concept="3oM_SD" id="ATZLwXo0BN" role="1PaTwD">
                <property role="3oM_SC" value="that" />
              </node>
              <node concept="3oM_SD" id="ATZLwXo0BO" role="1PaTwD">
                <property role="3oM_SC" value="get" />
              </node>
              <node concept="3oM_SD" id="ATZLwXo0BP" role="1PaTwD">
                <property role="3oM_SC" value="notified" />
              </node>
              <node concept="3oM_SD" id="ATZLwXo0BQ" role="1PaTwD">
                <property role="3oM_SC" value="long" />
              </node>
              <node concept="3oM_SD" id="ATZLwXo0BR" role="1PaTwD">
                <property role="3oM_SC" value="time" />
              </node>
              <node concept="3oM_SD" id="ATZLwXo0BS" role="1PaTwD">
                <property role="3oM_SC" value="after" />
              </node>
              <node concept="3oM_SD" id="ATZLwXo0BT" role="1PaTwD">
                <property role="3oM_SC" value="generation" />
              </node>
              <node concept="3oM_SD" id="ATZLwXo0BU" role="1PaTwD">
                <property role="3oM_SC" value="of" />
              </node>
              <node concept="3oM_SD" id="ATZLwXo0BV" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="ATZLwXo0BW" role="1PaTwD">
                <property role="3oM_SC" value="build" />
              </node>
              <node concept="3oM_SD" id="ATZLwXo0BX" role="1PaTwD">
                <property role="3oM_SC" value="project" />
              </node>
              <node concept="3oM_SD" id="ATZLwXo0BY" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="ATZLwXo0BZ" role="1PaTwD">
                <property role="3oM_SC" value="over." />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5YLCPOnNRlp" role="3cqZAp">
            <node concept="37vLTI" id="5YLCPOnNRlr" role="3clFbG">
              <node concept="2ShNRf" id="2tbYNsGjWqM" role="37vLTx">
                <node concept="YeOm9" id="2tbYNsGjWqN" role="2ShVmc">
                  <node concept="1Y3b0j" id="2tbYNsGjWqO" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <property role="373rjd" value="true" />
                    <ref role="1Y3XeK" to="w1kc:~MPSModuleOwner" resolve="MPSModuleOwner" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="2tbYNsGjWqP" role="1B3o_S" />
                    <node concept="3clFb_" id="2tbYNsGjWqQ" role="jymVt">
                      <property role="TrG5h" value="isHidden" />
                      <node concept="3Tm1VV" id="2tbYNsGjWqR" role="1B3o_S" />
                      <node concept="10P_77" id="2tbYNsGjWqS" role="3clF45" />
                      <node concept="3clFbS" id="2tbYNsGjWqT" role="3clF47">
                        <node concept="3clFbF" id="2tbYNsGjWqU" role="3cqZAp">
                          <node concept="3clFbT" id="2tbYNsGjWqV" role="3clFbG">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="2tbYNsGjWqW" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="5YLCPOnNRlv" role="37vLTJ">
                <ref role="3cqZAo" node="5YLCPOnNREk" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="5YLCPOnNM6I" role="3clF46">
          <property role="TrG5h" value="repo" />
          <node concept="3uibUv" id="5YLCPOnNM6H" role="1tU5fm">
            <ref role="3uigEE" to="31cb:~SRepositoryExt" resolve="SRepositoryExt" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="5YLCPOnNMJ4" role="jymVt" />
      <node concept="3clFb_" id="5F0lsbynCA5" role="jymVt">
        <property role="TrG5h" value="get" />
        <node concept="3uibUv" id="5F0lsbynCBp" role="3clF45">
          <ref role="3uigEE" to="31cb:~SRepositoryExt" resolve="SRepositoryExt" />
        </node>
        <node concept="3Tm1VV" id="5F0lsbynCA8" role="1B3o_S" />
        <node concept="3clFbS" id="5F0lsbynCA9" role="3clF47">
          <node concept="3clFbF" id="5F0lsbynCNl" role="3cqZAp">
            <node concept="37vLTw" id="5F0lsbynCNk" role="3clFbG">
              <ref role="3cqZAo" node="5YLCPOnNMhW" resolve="myRepo" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5F0lsbynCJC" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5F0lsbyp9Xo" role="jymVt" />
      <node concept="3clFb_" id="5F0lsbypa7V" role="jymVt">
        <property role="TrG5h" value="registerModule" />
        <node concept="3Tm1VV" id="5F0lsbypa7X" role="1B3o_S" />
        <node concept="3cqZAl" id="5F0lsbypa7Y" role="3clF45" />
        <node concept="37vLTG" id="5F0lsbypa7Z" role="3clF46">
          <property role="TrG5h" value="module" />
          <node concept="3uibUv" id="5F0lsbypa80" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
          <node concept="2AHcQZ" id="5F0lsbypa81" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="5F0lsbypa83" role="3clF47">
          <node concept="3clFbF" id="5F0lsbypbnd" role="3cqZAp">
            <node concept="2OqwBi" id="5F0lsbypbKH" role="3clFbG">
              <node concept="37vLTw" id="5F0lsbypbnc" role="2Oq$k0">
                <ref role="3cqZAo" node="5YLCPOnNMhW" resolve="myRepo" />
              </node>
              <node concept="liA8E" id="5F0lsbypc9D" role="2OqNvi">
                <ref role="37wK5l" to="31cb:~SRepositoryExt.registerModule(org.jetbrains.mps.openapi.module.SModule,jetbrains.mps.smodel.MPSModuleOwner)" resolve="registerModule" />
                <node concept="37vLTw" id="5F0lsbypcnp" role="37wK5m">
                  <ref role="3cqZAo" node="5F0lsbypa7Z" resolve="module" />
                </node>
                <node concept="37vLTw" id="5F0lsbypcUY" role="37wK5m">
                  <ref role="3cqZAo" node="5YLCPOnNREk" resolve="myOwner" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5F0lsbypa84" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5F0lsbyp9Kk" role="jymVt" />
      <node concept="3clFb_" id="5F0lsbynCVT" role="jymVt">
        <property role="TrG5h" value="dispose" />
        <node concept="3cqZAl" id="5F0lsbynCVV" role="3clF45" />
        <node concept="3Tm1VV" id="5F0lsbynCVW" role="1B3o_S" />
        <node concept="3clFbS" id="5F0lsbynCVX" role="3clF47">
          <node concept="2Gpval" id="30bJSo_qzcO" role="3cqZAp">
            <node concept="2GrKxI" id="30bJSo_qzcQ" role="2Gsz3X">
              <property role="TrG5h" value="m" />
            </node>
            <node concept="3clFbS" id="30bJSo_qzcU" role="2LFqv$">
              <node concept="3clFbF" id="2tbYNsGiqxF" role="3cqZAp">
                <node concept="2OqwBi" id="2tbYNsGityB" role="3clFbG">
                  <node concept="37vLTw" id="2tbYNsGiqxD" role="2Oq$k0">
                    <ref role="3cqZAo" node="5YLCPOnNMhW" resolve="myRepo" />
                  </node>
                  <node concept="liA8E" id="2tbYNsGizhp" role="2OqNvi">
                    <ref role="37wK5l" to="31cb:~SRepositoryExt.unregisterModule(org.jetbrains.mps.openapi.module.SModule,jetbrains.mps.smodel.MPSModuleOwner)" resolve="unregisterModule" />
                    <node concept="2GrUjf" id="2tbYNsGiBpK" role="37wK5m">
                      <ref role="2Gs0qQ" node="30bJSo_qzcQ" resolve="m" />
                    </node>
                    <node concept="37vLTw" id="2tbYNsGjWqX" role="37wK5m">
                      <ref role="3cqZAo" node="5YLCPOnNREk" resolve="myOwner" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1yt7HPh0Zch" role="2GsD0m">
              <node concept="37vLTw" id="1yt7HPh0YB5" role="2Oq$k0">
                <ref role="3cqZAo" node="5YLCPOnNMhW" resolve="myRepo" />
              </node>
              <node concept="liA8E" id="1yt7HPh0ZEp" role="2OqNvi">
                <ref role="37wK5l" to="31cb:~SRepositoryExt.getModules(jetbrains.mps.smodel.MPSModuleOwner)" resolve="getModules" />
                <node concept="37vLTw" id="1yt7HPh105v" role="37wK5m">
                  <ref role="3cqZAo" node="5YLCPOnNREk" resolve="myOwner" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5F0lsbynD2E" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5YLCPOnNMKj" role="jymVt" />
      <node concept="3Tm6S6" id="5YLCPOnNIWU" role="1B3o_S" />
      <node concept="3uibUv" id="5YLCPOnNLjo" role="1zkMxy">
        <ref role="3uigEE" node="5F0lsbynlOq" resolve="RepositoryFacade" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5F0lsbynlOr" role="1B3o_S" />
    <node concept="3UR2Jj" id="5F0lsbynlPM" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHs$wK" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs$wL" role="1PaTwD">
          <property role="3oM_SC" value="PROVISIONAL" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wM" role="1PaTwD">
          <property role="3oM_SC" value="CODE," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wN" role="1PaTwD">
          <property role="3oM_SC" value="FOR" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wO" role="1PaTwD">
          <property role="3oM_SC" value="MPS" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wP" role="1PaTwD">
          <property role="3oM_SC" value="INTERNAL" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wQ" role="1PaTwD">
          <property role="3oM_SC" value="USE" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs$wR" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs$wS" role="1PaTwD">
          <property role="3oM_SC" value="DO" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wT" role="1PaTwD">
          <property role="3oM_SC" value="NOT" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wU" role="1PaTwD">
          <property role="3oM_SC" value="USE" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wV" role="1PaTwD">
          <property role="3oM_SC" value="OUTSIDE" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wW" role="1PaTwD">
          <property role="3oM_SC" value="OF" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wX" role="1PaTwD">
          <property role="3oM_SC" value="MPS" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wY" role="1PaTwD">
          <property role="3oM_SC" value="CODE" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$wZ" role="1PaTwD">
          <property role="3oM_SC" value="UNLESS" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$x0" role="1PaTwD">
          <property role="3oM_SC" value="BECOMES" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$x1" role="1PaTwD">
          <property role="3oM_SC" value="API" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1Unlav_2McA">
    <property role="2bfB8j" value="false" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <property role="TrG5h" value="Repo" />
    <node concept="15s5l7" id="1yt7HPgVQ6G" role="lGtFl">
      <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: The classifier 'Repo' must be declared abstract or implement abstract method 'registerModule' in 'SRepositoryExt'&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/7861981782410371482]&quot;;" />
      <property role="huDt6" value="Error: The classifier 'Repo' must be declared abstract or implement abstract method 'registerModule' in 'SRepositoryExt'" />
    </node>
    <node concept="312cEg" id="1Unlav_3izt" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myModelAccess" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1Unlav_3hNG" role="1B3o_S" />
      <node concept="3uibUv" id="1Unlav_3i3s" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~ModelAccess" resolve="ModelAccess" />
      </node>
    </node>
    <node concept="312cEg" id="1Unlav_3uYM" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myModules" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1Unlav_3tAz" role="1B3o_S" />
      <node concept="3uibUv" id="1Unlav_3uek" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="1Unlav_3uuY" role="11_B2D">
          <ref role="3uigEE" to="lui2:~SModuleId" resolve="SModuleId" />
        </node>
        <node concept="3uibUv" id="1Unlav_3uIx" role="11_B2D">
          <ref role="3uigEE" node="1yt7HPgVVLF" resolve="Repo.ModuleRecord" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1Unlav_3h$7" role="jymVt" />
    <node concept="3clFbW" id="1Unlav_3gKN" role="jymVt">
      <node concept="3cqZAl" id="1Unlav_3gKO" role="3clF45" />
      <node concept="3clFbS" id="1Unlav_3gKQ" role="3clF47">
        <node concept="3clFbF" id="1Unlav_3jcg" role="3cqZAp">
          <node concept="37vLTI" id="1Unlav_3jxl" role="3clFbG">
            <node concept="37vLTw" id="1Unlav_3jLc" role="37vLTx">
              <ref role="3cqZAo" node="1Unlav_3h0$" resolve="ma" />
            </node>
            <node concept="37vLTw" id="1Unlav_3jcf" role="37vLTJ">
              <ref role="3cqZAo" node="1Unlav_3izt" resolve="myModelAccess" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Unlav_3Lcx" role="3cqZAp">
          <node concept="37vLTI" id="1Unlav_3MCu" role="3clFbG">
            <node concept="37vLTw" id="1Unlav_3Lcv" role="37vLTJ">
              <ref role="3cqZAo" node="1Unlav_3uYM" resolve="myModules" />
            </node>
            <node concept="2ShNRf" id="1yt7HPgXvy_" role="37vLTx">
              <node concept="1pGfFk" id="1yt7HPgXx2s" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1Unlav_3gxi" role="1B3o_S" />
      <node concept="37vLTG" id="1Unlav_3h0$" role="3clF46">
        <property role="TrG5h" value="ma" />
        <node concept="3uibUv" id="1Unlav_3h0z" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~ModelAccess" resolve="ModelAccess" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1Unlav_3kXs" role="jymVt" />
    <node concept="3clFb_" id="1Unlav_3lej" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="registerModule" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1Unlav_3lek" role="1B3o_S" />
      <node concept="16euLQ" id="1Unlav_3lem" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="o3tBiqi_Hq" role="3ztrMU">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="16syzq" id="1Unlav_3leo" role="3clF45">
        <ref role="16sUi3" node="1Unlav_3lem" resolve="T" />
      </node>
      <node concept="37vLTG" id="1Unlav_3lep" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="16syzq" id="1Unlav_3leq" role="1tU5fm">
          <ref role="16sUi3" node="1Unlav_3lem" resolve="T" />
        </node>
        <node concept="2AHcQZ" id="1Unlav_3ler" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1Unlav_3les" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="1Unlav_3let" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~MPSModuleOwner" resolve="MPSModuleOwner" />
        </node>
        <node concept="2AHcQZ" id="1Unlav_3leu" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="1Unlav_3lex" role="3clF47">
        <node concept="3clFbF" id="1yt7HPgXQMM" role="3cqZAp">
          <node concept="2OqwBi" id="1yt7HPgXSoT" role="3clFbG">
            <node concept="37vLTw" id="1yt7HPgXQMK" role="2Oq$k0">
              <ref role="3cqZAo" node="1Unlav_3izt" resolve="myModelAccess" />
            </node>
            <node concept="liA8E" id="1yt7HPgXUl0" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.checkWriteAccess()" resolve="checkWriteAccess" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1Unlav_3_3s" role="3cqZAp">
          <node concept="3cpWsn" id="1Unlav_3_3t" role="3cpWs9">
            <property role="TrG5h" value="existing" />
            <node concept="3uibUv" id="1Unlav_3_3d" role="1tU5fm">
              <ref role="3uigEE" node="1yt7HPgVVLF" resolve="Repo.ModuleRecord" />
            </node>
            <node concept="2OqwBi" id="1Unlav_3_3u" role="33vP2m">
              <node concept="37vLTw" id="1Unlav_3_3v" role="2Oq$k0">
                <ref role="3cqZAo" node="1Unlav_3uYM" resolve="myModules" />
              </node>
              <node concept="liA8E" id="1Unlav_3_3w" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.putIfAbsent(java.lang.Object,java.lang.Object)" resolve="putIfAbsent" />
                <node concept="2OqwBi" id="1Unlav_3_3x" role="37wK5m">
                  <node concept="37vLTw" id="1Unlav_3_3y" role="2Oq$k0">
                    <ref role="3cqZAo" node="1Unlav_3lep" resolve="module" />
                  </node>
                  <node concept="liA8E" id="1Unlav_3_3z" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SModule.getModuleId()" resolve="getModuleId" />
                  </node>
                </node>
                <node concept="2ShNRf" id="1yt7HPgWevt" role="37wK5m">
                  <node concept="1pGfFk" id="1yt7HPgWevf" role="2ShVmc">
                    <ref role="37wK5l" node="1yt7HPgW0bX" resolve="Repo.ModuleRecord" />
                    <node concept="37vLTw" id="1yt7HPgWgzh" role="37wK5m">
                      <ref role="3cqZAo" node="1Unlav_3lep" resolve="module" />
                    </node>
                    <node concept="37vLTw" id="1yt7HPgWjad" role="37wK5m">
                      <ref role="3cqZAo" node="1Unlav_3les" resolve="owner" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1Unlav_3_Je" role="3cqZAp">
          <node concept="3clFbS" id="1Unlav_3_Jg" role="3clFbx">
            <node concept="YS8fn" id="3RWh2jO860H" role="3cqZAp">
              <node concept="2ShNRf" id="3RWh2jO875z" role="YScLw">
                <node concept="1pGfFk" id="3RWh2jO87FU" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="3cpWs3" id="3RWh2jO8anM" role="37wK5m">
                    <node concept="Xl_RD" id="3RWh2jO8aou" role="3uHU7w">
                      <property role="Xl_RC" value="'" />
                    </node>
                    <node concept="3cpWs3" id="3RWh2jO88Es" role="3uHU7B">
                      <node concept="Xl_RD" id="3RWh2jO87JA" role="3uHU7B">
                        <property role="Xl_RC" value="Duplicate modules with id '" />
                      </node>
                      <node concept="2OqwBi" id="3RWh2jO89gp" role="3uHU7w">
                        <node concept="37vLTw" id="3RWh2jO88JJ" role="2Oq$k0">
                          <ref role="3cqZAo" node="1Unlav_3lep" resolve="module" />
                        </node>
                        <node concept="liA8E" id="3RWh2jO8a4o" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModule.getModuleId()" resolve="getModuleId" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1Unlav_3A2x" role="3clFbw">
            <node concept="10Nm6u" id="1Unlav_3A8S" role="3uHU7w" />
            <node concept="37vLTw" id="1Unlav_3_PH" role="3uHU7B">
              <ref role="3cqZAo" node="1Unlav_3_3t" resolve="existing" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="o3tBiqnRdM" role="3cqZAp">
          <node concept="3clFbS" id="o3tBiqnRdO" role="3clFbx">
            <node concept="3clFbF" id="o3tBiqnTj9" role="3cqZAp">
              <node concept="2OqwBi" id="o3tBiqnTVR" role="3clFbG">
                <node concept="1eOMI4" id="o3tBiqnTj6" role="2Oq$k0">
                  <node concept="10QFUN" id="o3tBiqnTj3" role="1eOMHV">
                    <node concept="3uibUv" id="o3tBiqnTj8" role="10QFUM">
                      <ref role="3uigEE" to="31cb:~SModuleBase" resolve="SModuleBase" />
                    </node>
                    <node concept="37vLTw" id="o3tBiqnTse" role="10QFUP">
                      <ref role="3cqZAo" node="1Unlav_3lep" resolve="module" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="o3tBiqnUeg" role="2OqNvi">
                  <ref role="37wK5l" to="31cb:~SModuleBase.attach(org.jetbrains.mps.openapi.module.SRepository)" resolve="attach" />
                  <node concept="Xjq3P" id="o3tBiqnUAG" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="o3tBiqnSOn" role="3clFbw">
            <node concept="3uibUv" id="o3tBiqnT94" role="2ZW6by">
              <ref role="3uigEE" to="31cb:~SModuleBase" resolve="SModuleBase" />
            </node>
            <node concept="37vLTw" id="o3tBiqnSdh" role="2ZW6bz">
              <ref role="3cqZAo" node="1Unlav_3lep" resolve="module" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1Unlav_3ARl" role="3cqZAp">
          <node concept="37vLTw" id="1Unlav_3B1x" role="3cqZAk">
            <ref role="3cqZAo" node="1Unlav_3lep" resolve="module" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="o3tBiqnXOx" role="jymVt" />
    <node concept="3clFb_" id="1Unlav_3lez" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="unregisterModule" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1Unlav_3le$" role="1B3o_S" />
      <node concept="3cqZAl" id="1Unlav_3leA" role="3clF45" />
      <node concept="37vLTG" id="1Unlav_3leB" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="1Unlav_3leC" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
        <node concept="2AHcQZ" id="1Unlav_3leD" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1Unlav_3leE" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="1Unlav_3leF" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~MPSModuleOwner" resolve="MPSModuleOwner" />
        </node>
        <node concept="2AHcQZ" id="1Unlav_3leG" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="1Unlav_3leJ" role="3clF47">
        <node concept="3clFbF" id="1yt7HPgXVKJ" role="3cqZAp">
          <node concept="2OqwBi" id="1yt7HPgXVKK" role="3clFbG">
            <node concept="37vLTw" id="1yt7HPgXVKL" role="2Oq$k0">
              <ref role="3cqZAo" node="1Unlav_3izt" resolve="myModelAccess" />
            </node>
            <node concept="liA8E" id="1yt7HPgXVKM" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.checkWriteAccess()" resolve="checkWriteAccess" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1Unlav_3DHi" role="3cqZAp">
          <node concept="3cpWsn" id="1Unlav_3DHj" role="3cpWs9">
            <property role="TrG5h" value="removed" />
            <node concept="3uibUv" id="1Unlav_3DHd" role="1tU5fm">
              <ref role="3uigEE" node="1yt7HPgVVLF" resolve="Repo.ModuleRecord" />
            </node>
            <node concept="2OqwBi" id="1Unlav_3DHk" role="33vP2m">
              <node concept="37vLTw" id="1Unlav_3DHl" role="2Oq$k0">
                <ref role="3cqZAo" node="1Unlav_3uYM" resolve="myModules" />
              </node>
              <node concept="liA8E" id="1Unlav_3DHm" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.remove(java.lang.Object)" resolve="remove" />
                <node concept="2OqwBi" id="1Unlav_3DHn" role="37wK5m">
                  <node concept="37vLTw" id="1Unlav_3DHo" role="2Oq$k0">
                    <ref role="3cqZAo" node="1Unlav_3leB" resolve="module" />
                  </node>
                  <node concept="liA8E" id="1Unlav_3DHp" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SModule.getModuleId()" resolve="getModuleId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1Unlav_3Eq8" role="3cqZAp">
          <node concept="3clFbS" id="1Unlav_3Eqa" role="3clFbx">
            <node concept="YS8fn" id="1Unlav_3Gik" role="3cqZAp">
              <node concept="2ShNRf" id="1Unlav_3Gls" role="YScLw">
                <node concept="1pGfFk" id="1Unlav_3GNg" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;()" resolve="IllegalStateException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="1yt7HPgWpuV" role="3clFbw">
            <node concept="3y3z36" id="1yt7HPgWuIA" role="3uHU7w">
              <node concept="37vLTw" id="1yt7HPgWw62" role="3uHU7w">
                <ref role="3cqZAo" node="1Unlav_3leE" resolve="owner" />
              </node>
              <node concept="2OqwBi" id="1yt7HPgWrTW" role="3uHU7B">
                <node concept="37vLTw" id="1yt7HPgWqQE" role="2Oq$k0">
                  <ref role="3cqZAo" node="1Unlav_3DHj" resolve="removed" />
                </node>
                <node concept="2OwXpG" id="1yt7HPgWtke" role="2OqNvi">
                  <ref role="2Oxat5" node="1yt7HPgVZgx" resolve="owner" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="1Unlav_3FQC" role="3uHU7B">
              <node concept="2OqwBi" id="1yt7HPgWlRp" role="3uHU7B">
                <node concept="37vLTw" id="1Unlav_3Ex9" role="2Oq$k0">
                  <ref role="3cqZAo" node="1Unlav_3DHj" resolve="removed" />
                </node>
                <node concept="2OwXpG" id="1yt7HPgWnnr" role="2OqNvi">
                  <ref role="2Oxat5" node="1yt7HPgVYRi" resolve="module" />
                </node>
              </node>
              <node concept="37vLTw" id="1Unlav_3FYZ" role="3uHU7w">
                <ref role="3cqZAo" node="1Unlav_3leB" resolve="module" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="o3tBiqnVjs" role="3cqZAp">
          <node concept="3clFbS" id="o3tBiqnVju" role="3clFbx">
            <node concept="3clFbF" id="o3tBiqnWuI" role="3cqZAp">
              <node concept="2OqwBi" id="o3tBiqnWMf" role="3clFbG">
                <node concept="1eOMI4" id="o3tBiqnWuF" role="2Oq$k0">
                  <node concept="10QFUN" id="o3tBiqnWuC" role="1eOMHV">
                    <node concept="3uibUv" id="o3tBiqnWuH" role="10QFUM">
                      <ref role="3uigEE" to="31cb:~SModuleBase" resolve="SModuleBase" />
                    </node>
                    <node concept="37vLTw" id="o3tBiqnX4R" role="10QFUP">
                      <ref role="3cqZAo" node="1Unlav_3leB" resolve="module" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="o3tBiqnXN7" role="2OqNvi">
                  <ref role="37wK5l" to="31cb:~SModuleBase.dispose()" resolve="dispose" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="o3tBiqnW3v" role="3clFbw">
            <node concept="3uibUv" id="o3tBiqnWoC" role="2ZW6by">
              <ref role="3uigEE" to="31cb:~SModuleBase" resolve="SModuleBase" />
            </node>
            <node concept="37vLTw" id="o3tBiqnVtr" role="2ZW6bz">
              <ref role="3cqZAo" node="1Unlav_3leB" resolve="module" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1Unlav_3leK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2Q$SXFRoRFI" role="jymVt" />
    <node concept="3clFb_" id="2Q$SXFRoVl6" role="jymVt">
      <property role="TrG5h" value="getOwners" />
      <node concept="3Tm1VV" id="2Q$SXFRoVl7" role="1B3o_S" />
      <node concept="3uibUv" id="2Q$SXFRoVl9" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="2Q$SXFRoVla" role="11_B2D">
          <ref role="3uigEE" to="w1kc:~MPSModuleOwner" resolve="MPSModuleOwner" />
        </node>
      </node>
      <node concept="37vLTG" id="2Q$SXFRoVlb" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="2Q$SXFRoVlc" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
        <node concept="2AHcQZ" id="2Q$SXFRoVld" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2Q$SXFRoVlg" role="3clF47">
        <node concept="3clFbF" id="1yt7HPgXYOl" role="3cqZAp">
          <node concept="2OqwBi" id="1yt7HPgXYOm" role="3clFbG">
            <node concept="37vLTw" id="1yt7HPgXYOn" role="2Oq$k0">
              <ref role="3cqZAo" node="1Unlav_3izt" resolve="myModelAccess" />
            </node>
            <node concept="liA8E" id="1yt7HPgXYOo" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.checkReadAccess()" resolve="checkReadAccess" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1yt7HPgWLCj" role="3cqZAp">
          <node concept="3cpWsn" id="1yt7HPgWLCk" role="3cpWs9">
            <property role="TrG5h" value="rec" />
            <node concept="3uibUv" id="1yt7HPgWKTm" role="1tU5fm">
              <ref role="3uigEE" node="1yt7HPgVVLF" resolve="Repo.ModuleRecord" />
            </node>
            <node concept="2OqwBi" id="1yt7HPgWLCl" role="33vP2m">
              <node concept="37vLTw" id="1yt7HPgWLCm" role="2Oq$k0">
                <ref role="3cqZAo" node="1Unlav_3uYM" resolve="myModules" />
              </node>
              <node concept="liA8E" id="1yt7HPgWLCn" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                <node concept="2OqwBi" id="1yt7HPgWLCo" role="37wK5m">
                  <node concept="37vLTw" id="1yt7HPgWLCp" role="2Oq$k0">
                    <ref role="3cqZAo" node="2Q$SXFRoVlb" resolve="module" />
                  </node>
                  <node concept="liA8E" id="1yt7HPgWLCq" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SModule.getModuleId()" resolve="getModuleId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1yt7HPgWTwK" role="3cqZAp">
          <node concept="3clFbS" id="1yt7HPgWTwM" role="3clFbx">
            <node concept="3cpWs6" id="2Q$SXFRoWYR" role="3cqZAp">
              <node concept="2YIFZM" id="2Q$SXFRoY9q" role="3cqZAk">
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                <ref role="37wK5l" to="33ny:~Collections.emptySet()" resolve="emptySet" />
                <node concept="3uibUv" id="6u_RdbybVuI" role="3PaCim">
                  <ref role="3uigEE" to="w1kc:~MPSModuleOwner" resolve="MPSModuleOwner" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1yt7HPgWUEA" role="3clFbw">
            <node concept="10Nm6u" id="1yt7HPgWWca" role="3uHU7w" />
            <node concept="37vLTw" id="1yt7HPgWTxs" role="3uHU7B">
              <ref role="3cqZAo" node="1yt7HPgWLCk" resolve="rec" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1yt7HPgX412" role="3cqZAp">
          <node concept="3clFbS" id="1yt7HPgX414" role="3clFbx">
            <node concept="YS8fn" id="1yt7HPgXcsQ" role="3cqZAp">
              <node concept="2ShNRf" id="1yt7HPgXcsR" role="YScLw">
                <node concept="1pGfFk" id="1yt7HPgXcsS" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;()" resolve="IllegalStateException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1yt7HPgX9DC" role="3clFbw">
            <node concept="37vLTw" id="1yt7HPgXb3Z" role="3uHU7w">
              <ref role="3cqZAo" node="2Q$SXFRoVlb" resolve="module" />
            </node>
            <node concept="2OqwBi" id="1yt7HPgX6zf" role="3uHU7B">
              <node concept="37vLTw" id="1yt7HPgX5uc" role="2Oq$k0">
                <ref role="3cqZAo" node="1yt7HPgWLCk" resolve="rec" />
              </node>
              <node concept="2OwXpG" id="1yt7HPgX8al" role="2OqNvi">
                <ref role="2Oxat5" node="1yt7HPgVYRi" resolve="module" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1yt7HPgWX$U" role="3cqZAp">
          <node concept="2YIFZM" id="1yt7HPgXiOx" role="3cqZAk">
            <ref role="37wK5l" to="33ny:~Collections.singleton(java.lang.Object)" resolve="singleton" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="2OqwBi" id="1yt7HPgXlk7" role="37wK5m">
              <node concept="37vLTw" id="1yt7HPgXkeO" role="2Oq$k0">
                <ref role="3cqZAo" node="1yt7HPgWLCk" resolve="rec" />
              </node>
              <node concept="2OwXpG" id="1yt7HPgXmW3" role="2OqNvi">
                <ref role="2Oxat5" node="1yt7HPgVZgx" resolve="owner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2Q$SXFRoVlh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5Noy1Gc8HV1" role="jymVt" />
    <node concept="3clFb_" id="5Noy1Gc8LbI" role="jymVt">
      <property role="TrG5h" value="getModules" />
      <node concept="3Tm1VV" id="5Noy1Gc8LbJ" role="1B3o_S" />
      <node concept="3uibUv" id="5Noy1Gc8LbL" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="5Noy1Gc8LbM" role="11_B2D">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="37vLTG" id="5Noy1Gc8LbN" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="5Noy1Gc8LbO" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~MPSModuleOwner" resolve="MPSModuleOwner" />
        </node>
      </node>
      <node concept="3clFbS" id="5Noy1Gc8LbR" role="3clF47">
        <node concept="3clFbF" id="1yt7HPgY3r7" role="3cqZAp">
          <node concept="2OqwBi" id="1yt7HPgY3r8" role="3clFbG">
            <node concept="37vLTw" id="1yt7HPgY3r9" role="2Oq$k0">
              <ref role="3cqZAo" node="1Unlav_3izt" resolve="myModelAccess" />
            </node>
            <node concept="liA8E" id="1yt7HPgY3ra" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.checkReadAccess()" resolve="checkReadAccess" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5Noy1Gc8Mp1" role="3cqZAp">
          <node concept="2OqwBi" id="1yt7HPh1jDS" role="3cqZAk">
            <node concept="2OqwBi" id="1yt7HPgYFtT" role="2Oq$k0">
              <node concept="2OqwBi" id="1yt7HPgYFtU" role="2Oq$k0">
                <node concept="2OqwBi" id="1yt7HPgYFtV" role="2Oq$k0">
                  <node concept="2OqwBi" id="1yt7HPgYFtW" role="2Oq$k0">
                    <node concept="37vLTw" id="1yt7HPgYFtX" role="2Oq$k0">
                      <ref role="3cqZAo" node="1Unlav_3uYM" resolve="myModules" />
                    </node>
                    <node concept="liA8E" id="1yt7HPgYFtY" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.values()" resolve="values" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1yt7HPgYFtZ" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                  </node>
                </node>
                <node concept="liA8E" id="1yt7HPgYFu0" role="2OqNvi">
                  <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                  <node concept="1bVj0M" id="1yt7HPgYFu1" role="37wK5m">
                    <node concept="gl6BB" id="1yt7HPgYFu2" role="1bW2Oz">
                      <property role="TrG5h" value="rec" />
                      <node concept="2jxLKc" id="1yt7HPgYFu3" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="1yt7HPgYFu4" role="1bW5cS">
                      <node concept="3clFbF" id="1yt7HPgYFu5" role="3cqZAp">
                        <node concept="3clFbC" id="1yt7HPgYFu6" role="3clFbG">
                          <node concept="37vLTw" id="1yt7HPgYFu7" role="3uHU7w">
                            <ref role="3cqZAo" node="5Noy1Gc8LbN" resolve="owner" />
                          </node>
                          <node concept="2OqwBi" id="1yt7HPgYFu8" role="3uHU7B">
                            <node concept="37vLTw" id="1yt7HPgYFu9" role="2Oq$k0">
                              <ref role="3cqZAo" node="1yt7HPgYFu2" resolve="rec" />
                            </node>
                            <node concept="2OwXpG" id="1yt7HPgYFua" role="2OqNvi">
                              <ref role="2Oxat5" node="1yt7HPgVZgx" resolve="owner" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1yt7HPgYFub" role="2OqNvi">
                <ref role="37wK5l" to="1ctc:~Stream.map(java.util.function.Function)" resolve="map" />
                <node concept="1bVj0M" id="1yt7HPh1g0v" role="37wK5m">
                  <node concept="gl6BB" id="1yt7HPh1g0w" role="1bW2Oz">
                    <property role="TrG5h" value="rec" />
                    <node concept="2jxLKc" id="1yt7HPh1g0x" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="1yt7HPh1g0y" role="1bW5cS">
                    <node concept="3clFbF" id="1yt7HPh1g0z" role="3cqZAp">
                      <node concept="2OqwBi" id="1yt7HPh1g0$" role="3clFbG">
                        <node concept="37vLTw" id="1yt7HPh1g0_" role="2Oq$k0">
                          <ref role="3cqZAo" node="1yt7HPh1g0w" resolve="rec" />
                        </node>
                        <node concept="2OwXpG" id="1yt7HPh1g0A" role="2OqNvi">
                          <ref role="2Oxat5" node="1yt7HPgVYRi" resolve="module" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1yt7HPh1oPm" role="2OqNvi">
              <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
              <node concept="2YIFZM" id="1yt7HPh1$1x" role="37wK5m">
                <ref role="37wK5l" to="1ctc:~Collectors.toSet()" resolve="toSet" />
                <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                <node concept="3uibUv" id="1yt7HPh1Jgf" role="3PaCim">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5Noy1Gc8LbS" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1Unlav_3nzM" role="jymVt" />
    <node concept="3clFb_" id="1Unlav_1CpM" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getModule" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1Unlav_1CpN" role="1B3o_S" />
      <node concept="2AHcQZ" id="1Unlav_1CpP" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="1Unlav_1CpQ" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
      </node>
      <node concept="37vLTG" id="1Unlav_1CpR" role="3clF46">
        <property role="TrG5h" value="mid" />
        <node concept="3uibUv" id="1Unlav_1CpS" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModuleId" resolve="SModuleId" />
        </node>
        <node concept="2AHcQZ" id="1Unlav_1CpT" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="1Unlav_1CpU" role="3clF47">
        <node concept="3clFbF" id="1yt7HPh0Jeq" role="3cqZAp">
          <node concept="2OqwBi" id="1yt7HPh0Jer" role="3clFbG">
            <node concept="37vLTw" id="1yt7HPh0Jes" role="2Oq$k0">
              <ref role="3cqZAo" node="1Unlav_3izt" resolve="myModelAccess" />
            </node>
            <node concept="liA8E" id="1yt7HPh0Jet" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.checkReadAccess()" resolve="checkReadAccess" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1yt7HPgXxNE" role="3cqZAp">
          <node concept="3cpWsn" id="1yt7HPgXxNF" role="3cpWs9">
            <property role="TrG5h" value="rec" />
            <node concept="3uibUv" id="1yt7HPgXqB3" role="1tU5fm">
              <ref role="3uigEE" node="1yt7HPgVVLF" resolve="Repo.ModuleRecord" />
            </node>
            <node concept="2OqwBi" id="1yt7HPgXxNG" role="33vP2m">
              <node concept="37vLTw" id="1yt7HPgXxNH" role="2Oq$k0">
                <ref role="3cqZAo" node="1Unlav_3uYM" resolve="myModules" />
              </node>
              <node concept="liA8E" id="1yt7HPgXxNI" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                <node concept="37vLTw" id="1yt7HPgXxNJ" role="37wK5m">
                  <ref role="3cqZAo" node="1Unlav_1CpR" resolve="mid" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1Unlav_3GT3" role="3cqZAp">
          <node concept="3K4zz7" id="1yt7HPgXDL6" role="3cqZAk">
            <node concept="10Nm6u" id="1yt7HPgXFCi" role="3K4E3e" />
            <node concept="2OqwBi" id="1yt7HPgXIst" role="3K4GZi">
              <node concept="37vLTw" id="1yt7HPgXHmP" role="2Oq$k0">
                <ref role="3cqZAo" node="1yt7HPgXxNF" resolve="rec" />
              </node>
              <node concept="2OwXpG" id="1yt7HPgXK8m" role="2OqNvi">
                <ref role="2Oxat5" node="1yt7HPgVYRi" resolve="module" />
              </node>
            </node>
            <node concept="3clFbC" id="1yt7HPgXB6v" role="3K4Cdx">
              <node concept="10Nm6u" id="1yt7HPgXCFH" role="3uHU7w" />
              <node concept="37vLTw" id="1yt7HPgXxNK" role="3uHU7B">
                <ref role="3cqZAo" node="1yt7HPgXxNF" resolve="rec" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6u_RdbybR7h" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4zG_B2zCkm" role="jymVt" />
    <node concept="3clFb_" id="1Unlav_1CpW" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="saveAll" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1Unlav_1CpX" role="1B3o_S" />
      <node concept="3cqZAl" id="1Unlav_1CpZ" role="3clF45" />
      <node concept="3clFbS" id="1Unlav_1Cq0" role="3clF47">
        <node concept="YS8fn" id="1Unlav_3KrG" role="3cqZAp">
          <node concept="2ShNRf" id="1Unlav_3KuA" role="YScLw">
            <node concept="1pGfFk" id="1Unlav_3KWx" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6u_RdbybR7i" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4zG_B2zCkn" role="jymVt" />
    <node concept="3clFb_" id="1Unlav_1Cq2" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getModules" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1Unlav_1Cq3" role="1B3o_S" />
      <node concept="2AHcQZ" id="1Unlav_1Cq5" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="1Unlav_1Cq6" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="1Unlav_1Cq7" role="11_B2D">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3clFbS" id="1Unlav_1Cq8" role="3clF47">
        <node concept="3clFbF" id="1yt7HPh0MMy" role="3cqZAp">
          <node concept="2OqwBi" id="1yt7HPh0MMz" role="3clFbG">
            <node concept="37vLTw" id="1yt7HPh0MM$" role="2Oq$k0">
              <ref role="3cqZAo" node="1Unlav_3izt" resolve="myModelAccess" />
            </node>
            <node concept="liA8E" id="1yt7HPh0MM_" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.checkReadAccess()" resolve="checkReadAccess" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1yt7HPh0os3" role="3cqZAp">
          <node concept="2OqwBi" id="1yt7HPh0g32" role="3cqZAk">
            <node concept="2OqwBi" id="1yt7HPgZTO7" role="2Oq$k0">
              <node concept="2OqwBi" id="1yt7HPgZt1y" role="2Oq$k0">
                <node concept="2OqwBi" id="1Unlav_3SSI" role="2Oq$k0">
                  <node concept="37vLTw" id="1Unlav_3S34" role="2Oq$k0">
                    <ref role="3cqZAo" node="1Unlav_3uYM" resolve="myModules" />
                  </node>
                  <node concept="liA8E" id="1Unlav_3U48" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.values()" resolve="values" />
                  </node>
                </node>
                <node concept="liA8E" id="1yt7HPgZwEF" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                </node>
              </node>
              <node concept="liA8E" id="1yt7HPgZY3w" role="2OqNvi">
                <ref role="37wK5l" to="1ctc:~Stream.map(java.util.function.Function)" resolve="map" />
                <node concept="1bVj0M" id="1yt7HPh008y" role="37wK5m">
                  <node concept="gl6BB" id="1yt7HPh008P" role="1bW2Oz">
                    <property role="TrG5h" value="rec" />
                    <node concept="2jxLKc" id="1yt7HPh008Q" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="1yt7HPh008U" role="1bW5cS">
                    <node concept="3clFbF" id="1yt7HPh08aZ" role="3cqZAp">
                      <node concept="2OqwBi" id="1yt7HPh0abN" role="3clFbG">
                        <node concept="37vLTw" id="1yt7HPh08aY" role="2Oq$k0">
                          <ref role="3cqZAo" node="1yt7HPh008P" resolve="rec" />
                        </node>
                        <node concept="2OwXpG" id="1yt7HPh0dDj" role="2OqNvi">
                          <ref role="2Oxat5" node="1yt7HPgVYRi" resolve="module" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1yt7HPh0krU" role="2OqNvi">
              <ref role="37wK5l" to="1ctc:~Stream.toList()" resolve="toList" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6u_RdbybR7j" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1Unlav_3ksx" role="jymVt" />
    <node concept="3clFb_" id="1Unlav_1Cqk" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getModelAccess" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1Unlav_1Cql" role="1B3o_S" />
      <node concept="2AHcQZ" id="1Unlav_1Cqn" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="1Unlav_1Cqo" role="3clF45">
        <ref role="3uigEE" to="lui2:~ModelAccess" resolve="ModelAccess" />
      </node>
      <node concept="3clFbS" id="1Unlav_1Cqp" role="3clF47">
        <node concept="3clFbF" id="1Unlav_3kfn" role="3cqZAp">
          <node concept="37vLTw" id="1Unlav_3kfk" role="3clFbG">
            <ref role="3cqZAo" node="1Unlav_3izt" resolve="myModelAccess" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6u_RdbybR7g" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1yt7HPgVSht" role="jymVt" />
    <node concept="312cEu" id="1yt7HPgVVLF" role="jymVt">
      <property role="TrG5h" value="ModuleRecord" />
      <node concept="312cEg" id="1yt7HPgVYRi" role="jymVt">
        <property role="TrG5h" value="module" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="1yt7HPgVYog" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="312cEg" id="1yt7HPgVZgx" role="jymVt">
        <property role="TrG5h" value="owner" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="1yt7HPgVZgy" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~MPSModuleOwner" resolve="MPSModuleOwner" />
        </node>
      </node>
      <node concept="3clFbW" id="1yt7HPgW0bX" role="jymVt">
        <node concept="3cqZAl" id="1yt7HPgW0bZ" role="3clF45" />
        <node concept="3clFbS" id="1yt7HPgW0c1" role="3clF47">
          <node concept="3clFbF" id="1yt7HPgW1mL" role="3cqZAp">
            <node concept="37vLTI" id="1yt7HPgW1uF" role="3clFbG">
              <node concept="37vLTw" id="1yt7HPgW1vY" role="37vLTx">
                <ref role="3cqZAo" node="1yt7HPgW0tM" resolve="m" />
              </node>
              <node concept="37vLTw" id="1yt7HPgW1mJ" role="37vLTJ">
                <ref role="3cqZAo" node="1yt7HPgVYRi" resolve="module" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1yt7HPgW1$N" role="3cqZAp">
            <node concept="37vLTI" id="1yt7HPgW1H2" role="3clFbG">
              <node concept="37vLTw" id="1yt7HPgW1$L" role="37vLTJ">
                <ref role="3cqZAo" node="1yt7HPgVZgx" resolve="owner" />
              </node>
              <node concept="37vLTw" id="1yt7HPgW211" role="37vLTx">
                <ref role="3cqZAo" node="1yt7HPgW0YA" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1yt7HPgW0tM" role="3clF46">
          <property role="TrG5h" value="m" />
          <node concept="3uibUv" id="1yt7HPgW0tL" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
        </node>
        <node concept="37vLTG" id="1yt7HPgW0YA" role="3clF46">
          <property role="TrG5h" value="o" />
          <node concept="3uibUv" id="1yt7HPgW10F" role="1tU5fm">
            <ref role="3uigEE" to="w1kc:~MPSModuleOwner" resolve="MPSModuleOwner" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1yt7HPgVUfl" role="1B3o_S" />
    </node>
    <node concept="3uibUv" id="1Unlav_3aOD" role="1zkMxy">
      <ref role="3uigEE" to="31cb:~SRepositoryBase" resolve="SRepositoryBase" />
    </node>
    <node concept="3uibUv" id="1Unlav_3eUN" role="EKbjA">
      <ref role="3uigEE" to="31cb:~SRepositoryExt" resolve="SRepositoryExt" />
    </node>
    <node concept="3UR2Jj" id="1yt7HPgXpUj" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHs$x2" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs$x3" role="1PaTwD">
          <property role="3oM_SC" value="Straightforward" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHs$x4" role="1PaTwD">
          <node concept="1VuXuv" id="1E1X3WHs$x5" role="1Vtduc">
            <node concept="VXe08" id="1yt7HPgXsvM" role="1VuXuu">
              <ref role="VXe09" to="31cb:~SRepositoryExt" resolve="SRepositoryExt" />
            </node>
            <node concept="1PaTwC" id="1E1X3WHs$x8" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHs$x9" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$xa" role="1PaTwD">
          <property role="3oM_SC" value="implementation," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$xb" role="1PaTwD">
          <property role="3oM_SC" value="with" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$xc" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$xd" role="1PaTwD">
          <property role="3oM_SC" value="limitation" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$xe" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$xf" role="1PaTwD">
          <property role="3oM_SC" value="single" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$xg" role="1PaTwD">
          <property role="3oM_SC" value="owner" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$xh" role="1PaTwD">
          <property role="3oM_SC" value="per" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$xi" role="1PaTwD">
          <property role="3oM_SC" value="module" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$xj" role="1PaTwD">
          <property role="3oM_SC" value="(unlike" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$xk" role="1PaTwD">
          <property role="3oM_SC" value="e.g." />
        </node>
        <node concept="1Vtdud" id="1E1X3WHs$xl" role="1PaTwD">
          <node concept="1VuTSG" id="1E1X3WHs$xm" role="1Vtduc">
            <node concept="1PaTwC" id="1E1X3WHs$xp" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHs$xq" role="1PaTwD">
                <property role="3oM_SC" value="MPSModuleRepository)" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHs$xr" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1Unlav_55ET">
    <property role="2bfB8j" value="false" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <property role="TrG5h" value="ModelAccessNoLimit" />
    <node concept="3clFb_" id="1Unlav_1Rab" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="canRead" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1Unlav_1Rac" role="1B3o_S" />
      <node concept="10P_77" id="1Unlav_1Rae" role="3clF45" />
      <node concept="3clFbS" id="1Unlav_1Raf" role="3clF47">
        <node concept="3clFbF" id="1Unlav_1S1Z" role="3cqZAp">
          <node concept="3clFbT" id="1Unlav_1S1Y" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4zG_B2zG1O" role="jymVt" />
    <node concept="3clFb_" id="1Unlav_1Ran" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="canWrite" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1Unlav_1Rao" role="1B3o_S" />
      <node concept="10P_77" id="1Unlav_1Raq" role="3clF45" />
      <node concept="3clFbS" id="1Unlav_1Rar" role="3clF47">
        <node concept="3clFbF" id="1Unlav_1S6d" role="3cqZAp">
          <node concept="3clFbT" id="1Unlav_1S6c" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4zG_B2zG1P" role="jymVt" />
    <node concept="3clFb_" id="1Unlav_1Raz" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="runReadAction" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1Unlav_1Ra$" role="1B3o_S" />
      <node concept="3cqZAl" id="1Unlav_1RaA" role="3clF45" />
      <node concept="37vLTG" id="1Unlav_1RaB" role="3clF46">
        <property role="TrG5h" value="r" />
        <node concept="3uibUv" id="1Unlav_1RaC" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="3clFbS" id="1Unlav_1RaD" role="3clF47">
        <node concept="3clFbF" id="7uoYXYsD7Pu" role="3cqZAp">
          <node concept="2OqwBi" id="7uoYXYsD7WF" role="3clFbG">
            <node concept="37vLTw" id="7uoYXYsD7Pt" role="2Oq$k0">
              <ref role="3cqZAo" node="1Unlav_1RaB" resolve="r" />
            </node>
            <node concept="liA8E" id="7uoYXYsD8yn" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Runnable.run()" resolve="run" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4zG_B2zG1Q" role="jymVt" />
    <node concept="3clFb_" id="1Unlav_1RaF" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="runReadInEDT" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1Unlav_1RaG" role="1B3o_S" />
      <node concept="3cqZAl" id="1Unlav_1RaI" role="3clF45" />
      <node concept="37vLTG" id="1Unlav_1RaJ" role="3clF46">
        <property role="TrG5h" value="r" />
        <node concept="3uibUv" id="1Unlav_1RaK" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="3clFbS" id="1Unlav_1RaL" role="3clF47">
        <node concept="3clFbJ" id="6nwmhcLKkBb" role="3cqZAp">
          <node concept="3clFbS" id="6nwmhcLKkBc" role="3clFbx">
            <node concept="3clFbF" id="6nwmhcLKkBd" role="3cqZAp">
              <node concept="2OqwBi" id="6nwmhcLKkBe" role="3clFbG">
                <node concept="37vLTw" id="6nwmhcLKkBf" role="2Oq$k0">
                  <ref role="3cqZAo" node="1Unlav_1RaJ" resolve="r" />
                </node>
                <node concept="liA8E" id="6nwmhcLKkBg" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Runnable.run()" resolve="run" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2YIFZM" id="6nwmhcLKkBh" role="3clFbw">
            <ref role="37wK5l" to="dxuu:~SwingUtilities.isEventDispatchThread()" resolve="isEventDispatchThread" />
            <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
          </node>
          <node concept="9aQIb" id="6nwmhcLKkBi" role="9aQIa">
            <node concept="3clFbS" id="6nwmhcLKkBj" role="9aQI4">
              <node concept="3clFbF" id="6nwmhcLKkBk" role="3cqZAp">
                <node concept="2YIFZM" id="6nwmhcLKkBl" role="3clFbG">
                  <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
                  <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                  <node concept="37vLTw" id="6nwmhcLKkBm" role="37wK5m">
                    <ref role="3cqZAo" node="1Unlav_1RaJ" resolve="r" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4zG_B2zG1R" role="jymVt" />
    <node concept="3clFb_" id="1Unlav_1RaN" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="runWriteAction" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1Unlav_1RaO" role="1B3o_S" />
      <node concept="3cqZAl" id="1Unlav_1RaQ" role="3clF45" />
      <node concept="37vLTG" id="1Unlav_1RaR" role="3clF46">
        <property role="TrG5h" value="r" />
        <node concept="3uibUv" id="1Unlav_1RaS" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="3clFbS" id="1Unlav_1RaT" role="3clF47">
        <node concept="3clFbF" id="7uoYXYsD4Tq" role="3cqZAp">
          <node concept="2OqwBi" id="7uoYXYsD50q" role="3clFbG">
            <node concept="37vLTw" id="7uoYXYsD4Tp" role="2Oq$k0">
              <ref role="3cqZAo" node="1Unlav_1RaR" resolve="r" />
            </node>
            <node concept="liA8E" id="7uoYXYsD5_R" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Runnable.run()" resolve="run" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4zG_B2zG1S" role="jymVt" />
    <node concept="3clFb_" id="1Unlav_1RaV" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="runWriteInEDT" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1Unlav_1RaW" role="1B3o_S" />
      <node concept="3cqZAl" id="1Unlav_1RaY" role="3clF45" />
      <node concept="37vLTG" id="1Unlav_1RaZ" role="3clF46">
        <property role="TrG5h" value="r" />
        <node concept="3uibUv" id="1Unlav_1Rb0" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="3clFbS" id="1Unlav_1Rb1" role="3clF47">
        <node concept="3clFbJ" id="6nwmhcLKgw5" role="3cqZAp">
          <node concept="3clFbS" id="6nwmhcLKgw7" role="3clFbx">
            <node concept="3clFbF" id="6nwmhcLKij8" role="3cqZAp">
              <node concept="2OqwBi" id="6nwmhcLKir3" role="3clFbG">
                <node concept="37vLTw" id="6nwmhcLKij6" role="2Oq$k0">
                  <ref role="3cqZAo" node="1Unlav_1RaZ" resolve="r" />
                </node>
                <node concept="liA8E" id="6nwmhcLKj1x" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Runnable.run()" resolve="run" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2YIFZM" id="6nwmhcLKhJv" role="3clFbw">
            <ref role="37wK5l" to="dxuu:~SwingUtilities.isEventDispatchThread()" resolve="isEventDispatchThread" />
            <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
          </node>
          <node concept="9aQIb" id="6nwmhcLKjyC" role="9aQIa">
            <node concept="3clFbS" id="6nwmhcLKjyD" role="9aQI4">
              <node concept="3clFbF" id="7uoYXYsDkjS" role="3cqZAp">
                <node concept="2YIFZM" id="7uoYXYsDkjT" role="3clFbG">
                  <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
                  <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
                  <node concept="37vLTw" id="7uoYXYsDkjU" role="37wK5m">
                    <ref role="3cqZAo" node="1Unlav_1RaZ" resolve="r" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4zG_B2zG1T" role="jymVt" />
    <node concept="3clFb_" id="1Unlav_1Rb3" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="executeCommand" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1Unlav_1Rb4" role="1B3o_S" />
      <node concept="3cqZAl" id="1Unlav_1Rb6" role="3clF45" />
      <node concept="37vLTG" id="1Unlav_1Rb7" role="3clF46">
        <property role="TrG5h" value="r" />
        <node concept="3uibUv" id="1Unlav_1Rb8" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="3clFbS" id="1Unlav_1Rb9" role="3clF47">
        <node concept="3clFbF" id="7uoYXYsD17Z" role="3cqZAp">
          <node concept="2OqwBi" id="7uoYXYsD1$L" role="3clFbG">
            <node concept="37vLTw" id="7uoYXYsD17V" role="2Oq$k0">
              <ref role="3cqZAo" node="1Unlav_1Rb7" resolve="r" />
            </node>
            <node concept="liA8E" id="7uoYXYsD23U" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Runnable.run()" resolve="run" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4zG_B2zG1U" role="jymVt" />
    <node concept="3clFb_" id="1Unlav_1Rbb" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="executeCommandInEDT" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1Unlav_1Rbc" role="1B3o_S" />
      <node concept="3cqZAl" id="1Unlav_1Rbe" role="3clF45" />
      <node concept="37vLTG" id="1Unlav_1Rbf" role="3clF46">
        <property role="TrG5h" value="r" />
        <node concept="3uibUv" id="1Unlav_1Rbg" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="3clFbS" id="1Unlav_1Rbh" role="3clF47">
        <node concept="3clFbF" id="7uoYXYsD32e" role="3cqZAp">
          <node concept="1rXfSq" id="7uoYXYsD32d" role="3clFbG">
            <ref role="37wK5l" node="1Unlav_1RaV" resolve="runWriteInEDT" />
            <node concept="37vLTw" id="7uoYXYsD3wj" role="37wK5m">
              <ref role="3cqZAo" node="1Unlav_1Rbf" resolve="r" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4zG_B2zG1V" role="jymVt" />
    <node concept="3clFb_" id="1Unlav_1Rbj" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="executeUndoTransparentCommand" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1Unlav_1Rbk" role="1B3o_S" />
      <node concept="3cqZAl" id="1Unlav_1Rbm" role="3clF45" />
      <node concept="37vLTG" id="1Unlav_1Rbn" role="3clF46">
        <property role="TrG5h" value="r" />
        <node concept="3uibUv" id="1Unlav_1Rbo" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="3clFbS" id="1Unlav_1Rbp" role="3clF47">
        <node concept="3clFbF" id="7uoYXYsCYH0" role="3cqZAp">
          <node concept="2OqwBi" id="7uoYXYsCYNp" role="3clFbG">
            <node concept="37vLTw" id="7uoYXYsCYGW" role="2Oq$k0">
              <ref role="3cqZAo" node="1Unlav_1Rbn" resolve="r" />
            </node>
            <node concept="liA8E" id="7uoYXYsCZmv" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Runnable.run()" resolve="run" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4zG_B2zG1W" role="jymVt" />
    <node concept="3clFb_" id="1Unlav_1Rbr" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isCommandAction" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1Unlav_1Rbs" role="1B3o_S" />
      <node concept="10P_77" id="1Unlav_1Rbu" role="3clF45" />
      <node concept="3clFbS" id="1Unlav_1Rbv" role="3clF47">
        <node concept="3clFbF" id="1Unlav_1Xxf" role="3cqZAp">
          <node concept="3clFbT" id="1Unlav_1Xxe" role="3clFbG">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="sTCZSyPaTa" role="1zkMxy">
      <ref role="3uigEE" to="w1kc:~AbstractModelAccess" resolve="AbstractModelAccess" />
    </node>
  </node>
</model>

