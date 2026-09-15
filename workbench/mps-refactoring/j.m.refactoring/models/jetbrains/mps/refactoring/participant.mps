<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:27bc780b-59b2-4d26-9db5-a38b63c35884(jetbrains.mps.refactoring.participant)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="1" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
  </languages>
  <imports>
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="yyf4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.util(MPS.OpenAPI/)" />
    <import index="g4jo" ref="r:d98d04fb-4a60-4106-81cf-6cb40b67de4d(jetbrains.mps.ide.findusages.model)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1238852151516" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType" flags="in" index="1LlUBW">
        <child id="1238852204892" name="componentType" index="1Lm7xW" />
      </concept>
      <concept id="1238853782547" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleLiteral" flags="nn" index="1Ls8ON">
        <child id="1238853845806" name="component" index="1Lso8e" />
      </concept>
      <concept id="1238857743184" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression" flags="nn" index="1LFfDK">
        <child id="1238857764950" name="tuple" index="1LFl5Q" />
        <child id="1238857834412" name="index" index="1LF_Uc" />
      </concept>
    </language>
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
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="8010275703121539591" name="jetbrains.mps.baseLanguage.structure.InferredType" flags="ng" index="2yE$l8" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
        <child id="2820489544402271667" name="typeParameter" index="HU9BZ" />
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
      <concept id="1083245097125" name="jetbrains.mps.baseLanguage.structure.EnumClass" flags="ig" index="Qs71p">
        <child id="1083245396908" name="enumConstant" index="Qtgdg" />
      </concept>
      <concept id="1083245299891" name="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration" flags="ig" index="QsSxf" />
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
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ" />
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
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
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
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1830039279190439966" name="jetbrains.mps.baseLanguage.structure.AdditionalForLoopVariable" flags="ng" index="1gjucp" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
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
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
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
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1032195626824963089" name="additionalVar" index="_NwL_" />
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
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
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="1423104411234567454" name="repo" index="ukAjM" />
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348177" name="jetbrains.mps.lang.access.structure.ExecuteCommandStatement" flags="nn" index="1QHqEO" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1235746970280" name="jetbrains.mps.baseLanguage.closures.structure.CompactInvokeFunctionExpression" flags="nn" index="2Sg_IR">
        <child id="1235746996653" name="function" index="2SgG2M" />
        <child id="1235747002942" name="parameter" index="2SgHGx" />
      </concept>
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
        <child id="1199542501692" name="parameterType" index="1ajw0F" />
      </concept>
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
      <concept id="2217234381367190443" name="jetbrains.mps.baseLanguage.javadoc.structure.SeeBlockDocTag" flags="ng" index="VUp57">
        <property id="2217234381367190444" name="text" index="VUp50" />
        <child id="2217234381367190458" name="reference" index="VUp5m" />
      </concept>
      <concept id="2217234381367530212" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocReference" flags="ng" index="VXe08">
        <reference id="2217234381367530213" name="classifier" index="VXe09" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261755" name="throwable" index="RRSow" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
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
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="6126991172893676625" name="jetbrains.mps.baseLanguage.collections.structure.ContainsAllOperation" flags="nn" index="BjQpj" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1562299158920737514" name="initSize" index="3lWHg$" />
      </concept>
      <concept id="1205679737078" name="jetbrains.mps.baseLanguage.collections.structure.SortOperation" flags="nn" index="2S7cBI">
        <child id="1205679832066" name="ascending" index="2S7zOq" />
      </concept>
      <concept id="1237909114519" name="jetbrains.mps.baseLanguage.collections.structure.GetValuesOperation" flags="nn" index="T8wYR" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1178286324487" name="jetbrains.mps.baseLanguage.collections.structure.SortDirection" flags="nn" index="1nlBCl" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1240824834947" name="jetbrains.mps.baseLanguage.collections.structure.ValueAccessOperation" flags="nn" index="3AV6Ez" />
      <concept id="1240825616499" name="jetbrains.mps.baseLanguage.collections.structure.KeyAccessOperation" flags="nn" index="3AY5_j" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1240906768633" name="jetbrains.mps.baseLanguage.collections.structure.PutAllOperation" flags="nn" index="3FNE7p">
        <child id="1240906921264" name="map" index="3FOfgg" />
      </concept>
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="1522217801069421831" name="jetbrains.mps.baseLanguage.collections.structure.FoldRightOperation" flags="nn" index="1MDeg1">
        <child id="1522217801069421833" name="seed" index="1MDegf" />
      </concept>
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
      <concept id="1178894719932" name="jetbrains.mps.baseLanguage.collections.structure.DistinctOperation" flags="nn" index="1VAtEI" />
    </language>
  </registry>
  <node concept="3HP615" id="76O06llMwcZ">
    <property role="TrG5h" value="RenameNodeRefactoringParticipant" />
    <node concept="3Tm1VV" id="76O06llMwd9" role="1B3o_S" />
    <node concept="16euLQ" id="76O06llMwda" role="16eVyc">
      <property role="TrG5h" value="InitialDataObject" />
    </node>
    <node concept="16euLQ" id="76O06llMwdb" role="16eVyc">
      <property role="TrG5h" value="FinalDataObject" />
    </node>
    <node concept="3uibUv" id="76O06llMwdc" role="3HQHJm">
      <ref role="3uigEE" node="3KqYwoBIxpF" resolve="RefactoringParticipant" />
      <node concept="16syzq" id="76O06llMwdd" role="11_B2D">
        <ref role="16sUi3" node="76O06llMwda" resolve="InitialDataObject" />
      </node>
      <node concept="16syzq" id="76O06llMwde" role="11_B2D">
        <ref role="16sUi3" node="76O06llMwdb" resolve="FinalDataObject" />
      </node>
      <node concept="3Tqbb2" id="76O06llMwdf" role="11_B2D" />
      <node concept="17QB3L" id="76O06llMx4r" role="11_B2D" />
    </node>
  </node>
  <node concept="3HP615" id="3KqYwoBIxpF">
    <property role="TrG5h" value="RefactoringParticipant" />
    <node concept="2tJIrI" id="37Il31hWzra" role="jymVt" />
    <node concept="3HP615" id="5z_gLGeqYi9" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="RefactoringDataCollector" />
      <node concept="3clFb_" id="5z_gLGeqYia" role="jymVt">
        <property role="TrG5h" value="beforeMove" />
        <node concept="P$JXv" id="1FSMaHel$Dc" role="lGtFl">
          <node concept="x79VA" id="1FSMaHel_pj" role="3nqlJM">
            <property role="x79VB" value="" />
            <node concept="1PaTwC" id="1E1X3WHsEjX" role="1Vez_I">
              <node concept="3oM_SD" id="1E1X3WHsEjY" role="1PaTwD">
                <property role="3oM_SC" value="null" />
              </node>
              <node concept="3oM_SD" id="1E1X3WHsEjZ" role="1PaTwD">
                <property role="3oM_SC" value="=&gt;" />
              </node>
              <node concept="3oM_SD" id="1E1X3WHsEk0" role="1PaTwD">
                <property role="3oM_SC" value="participant" />
              </node>
              <node concept="3oM_SD" id="1E1X3WHsEk1" role="1PaTwD">
                <property role="3oM_SC" value="ignores" />
              </node>
              <node concept="3oM_SD" id="1E1X3WHsEk2" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="1E1X3WHsEk3" role="1PaTwD">
                <property role="3oM_SC" value="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="16syzq" id="5z_gLGeqYib" role="3clF45">
          <ref role="16sUi3" node="5z_gLGeqYin" resolve="InitialDataObject" />
        </node>
        <node concept="3Tm1VV" id="5z_gLGeqYic" role="1B3o_S" />
        <node concept="3clFbS" id="5z_gLGeqYid" role="3clF47" />
        <node concept="37vLTG" id="5z_gLGeqYie" role="3clF46">
          <property role="TrG5h" value="nodeToMove" />
          <node concept="16syzq" id="5z_gLGeqZ9W" role="1tU5fm">
            <ref role="16sUi3" node="5z_gLGeqYIo" resolve="InitialPoint" />
          </node>
        </node>
        <node concept="2AHcQZ" id="4qkYgnA1wxy" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3clFb_" id="5z_gLGeqYig" role="jymVt">
        <property role="TrG5h" value="afterMove" />
        <node concept="P$JXv" id="1FSMaHel_pl" role="lGtFl">
          <node concept="x79VA" id="1FSMaHel_pr" role="3nqlJM">
            <property role="x79VB" value="" />
            <node concept="1PaTwC" id="1E1X3WHsEk4" role="1Vez_I">
              <node concept="3oM_SD" id="1E1X3WHsEk5" role="1PaTwD">
                <property role="3oM_SC" value="null" />
              </node>
              <node concept="3oM_SD" id="1E1X3WHsEk6" role="1PaTwD">
                <property role="3oM_SC" value="if" />
              </node>
              <node concept="3oM_SD" id="1E1X3WHsEk7" role="1PaTwD">
                <property role="3oM_SC" value="there" />
              </node>
              <node concept="3oM_SD" id="1E1X3WHsEk8" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="1E1X3WHsEk9" role="1PaTwD">
                <property role="3oM_SC" value="no" />
              </node>
              <node concept="3oM_SD" id="1E1X3WHsEka" role="1PaTwD">
                <property role="3oM_SC" value="data" />
              </node>
              <node concept="3oM_SD" id="1E1X3WHsEkb" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="1E1X3WHsEkc" role="1PaTwD">
                <property role="3oM_SC" value="save" />
              </node>
            </node>
          </node>
        </node>
        <node concept="16syzq" id="5z_gLGeqYih" role="3clF45">
          <ref role="16sUi3" node="5z_gLGeqYio" resolve="FinalDataObject" />
        </node>
        <node concept="3Tm1VV" id="5z_gLGeqYii" role="1B3o_S" />
        <node concept="3clFbS" id="5z_gLGeqYij" role="3clF47" />
        <node concept="37vLTG" id="5z_gLGeqYik" role="3clF46">
          <property role="TrG5h" value="movedNode" />
          <node concept="16syzq" id="5z_gLGeqZL1" role="1tU5fm">
            <ref role="16sUi3" node="5z_gLGeqYIp" resolve="FinalPoint" />
          </node>
        </node>
        <node concept="2AHcQZ" id="4qkYgnA1x33" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5z_gLGeqYim" role="1B3o_S" />
      <node concept="16euLQ" id="5z_gLGeqYin" role="16eVyc">
        <property role="TrG5h" value="InitialDataObject" />
      </node>
      <node concept="16euLQ" id="5z_gLGeqYio" role="16eVyc">
        <property role="TrG5h" value="FinalDataObject" />
      </node>
      <node concept="16euLQ" id="5z_gLGeqYIo" role="16eVyc">
        <property role="TrG5h" value="InitialPoint" />
      </node>
      <node concept="16euLQ" id="5z_gLGeqYIp" role="16eVyc">
        <property role="TrG5h" value="FinalPoint" />
      </node>
    </node>
    <node concept="2tJIrI" id="5z_gLGeqYea" role="jymVt" />
    <node concept="3clFb_" id="3KqYwoBJi4D" role="jymVt">
      <property role="TrG5h" value="getDataCollector" />
      <node concept="3uibUv" id="3KqYwoBJidf" role="3clF45">
        <ref role="3uigEE" node="5z_gLGeqYi9" resolve="RefactoringParticipant.RefactoringDataCollector" />
        <node concept="16syzq" id="3KqYwoBJl08" role="11_B2D">
          <ref role="16sUi3" node="3KqYwoBIHZv" resolve="InitialDataObject" />
        </node>
        <node concept="16syzq" id="3KqYwoBJlbk" role="11_B2D">
          <ref role="16sUi3" node="3KqYwoBIHZz" resolve="FinalDataObject" />
        </node>
        <node concept="16syzq" id="5z_gLGerPzG" role="11_B2D">
          <ref role="16sUi3" node="5z_gLGeqMhg" resolve="InitialPoint" />
        </node>
        <node concept="16syzq" id="5z_gLGerQiX" role="11_B2D">
          <ref role="16sUi3" node="5z_gLGeqMJ5" resolve="FinalPoint" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3KqYwoBJi4G" role="1B3o_S" />
      <node concept="3clFbS" id="3KqYwoBJi4H" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5z_gLGerM7d" role="jymVt" />
    <node concept="312cEu" id="37Il31hWJ4Z" role="jymVt">
      <property role="TrG5h" value="Option" />
      <node concept="312cEg" id="37Il31hWQ3a" role="jymVt">
        <property role="TrG5h" value="myId" />
        <node concept="3Tm6S6" id="37Il31hWQ3b" role="1B3o_S" />
        <node concept="17QB3L" id="37Il31hWQ3c" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="37Il31hWPVr" role="jymVt">
        <property role="TrG5h" value="myDescription" />
        <node concept="3Tm6S6" id="37Il31hWPVs" role="1B3o_S" />
        <node concept="17QB3L" id="37Il31hWQ2Z" role="1tU5fm" />
      </node>
      <node concept="3clFbW" id="37Il31hWKPu" role="jymVt">
        <node concept="3cqZAl" id="37Il31hWKPw" role="3clF45" />
        <node concept="3Tm1VV" id="37Il31hWKPx" role="1B3o_S" />
        <node concept="3clFbS" id="37Il31hWKPy" role="3clF47">
          <node concept="3clFbF" id="37Il31hWQna" role="3cqZAp">
            <node concept="37vLTI" id="37Il31hWQyH" role="3clFbG">
              <node concept="37vLTw" id="37Il31hWQF7" role="37vLTx">
                <ref role="3cqZAo" node="37Il31hWKWV" resolve="id" />
              </node>
              <node concept="37vLTw" id="37Il31hWQn9" role="37vLTJ">
                <ref role="3cqZAo" node="37Il31hWQ3a" resolve="myId" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="37Il31hWReY" role="3cqZAp">
            <node concept="37vLTI" id="37Il31hWRrX" role="3clFbG">
              <node concept="37vLTw" id="37Il31hWR$n" role="37vLTx">
                <ref role="3cqZAo" node="37Il31hWL7O" resolve="description" />
              </node>
              <node concept="37vLTw" id="37Il31hWReW" role="37vLTJ">
                <ref role="3cqZAo" node="37Il31hWPVr" resolve="myDescription" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="37Il31hWKWV" role="3clF46">
          <property role="TrG5h" value="id" />
          <node concept="17QB3L" id="37Il31hWKWU" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="37Il31hWL7O" role="3clF46">
          <property role="TrG5h" value="description" />
          <node concept="17QB3L" id="37Il31hWLp7" role="1tU5fm" />
        </node>
      </node>
      <node concept="3clFb_" id="37Il31hWRNw" role="jymVt">
        <property role="TrG5h" value="getId" />
        <node concept="17QB3L" id="37Il31hWSEi" role="3clF45" />
        <node concept="3Tm1VV" id="37Il31hWRNz" role="1B3o_S" />
        <node concept="3clFbS" id="37Il31hWRN$" role="3clF47">
          <node concept="3clFbF" id="37Il31hWSX0" role="3cqZAp">
            <node concept="37vLTw" id="37Il31hWSWZ" role="3clFbG">
              <ref role="3cqZAo" node="37Il31hWQ3a" resolve="myId" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="37Il31hWTci" role="jymVt">
        <property role="TrG5h" value="getDescription" />
        <node concept="17QB3L" id="37Il31hWUTa" role="3clF45" />
        <node concept="3Tm1VV" id="37Il31hWTcl" role="1B3o_S" />
        <node concept="3clFbS" id="37Il31hWTcm" role="3clF47">
          <node concept="3clFbF" id="37Il31hWUKW" role="3cqZAp">
            <node concept="37vLTw" id="37Il31hWUKV" role="3clFbG">
              <ref role="3cqZAo" node="37Il31hWPVr" resolve="myDescription" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="37Il31hXHLx" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="hashCode" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="37Il31hXHLy" role="1B3o_S" />
        <node concept="10Oyi0" id="37Il31hXHL$" role="3clF45" />
        <node concept="3clFbS" id="37Il31hXHL_" role="3clF47">
          <node concept="3clFbF" id="37Il31hXItI" role="3cqZAp">
            <node concept="2OqwBi" id="37Il31hXIBT" role="3clFbG">
              <node concept="37vLTw" id="37Il31hXItH" role="2Oq$k0">
                <ref role="3cqZAo" node="37Il31hWQ3a" resolve="myId" />
              </node>
              <node concept="liA8E" id="37Il31hXIJA" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.hashCode()" resolve="hashCode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="37Il31hXHLD" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="equals" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="37Il31hXHLE" role="1B3o_S" />
        <node concept="10P_77" id="37Il31hXHLG" role="3clF45" />
        <node concept="37vLTG" id="37Il31hXHLH" role="3clF46">
          <property role="TrG5h" value="object" />
          <node concept="3uibUv" id="37Il31hXHLI" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3clFbS" id="37Il31hXHLJ" role="3clF47">
          <node concept="3clFbF" id="37Il31hXJXZ" role="3cqZAp">
            <node concept="1Wc70l" id="37Il31hXKpE" role="3clFbG">
              <node concept="17R0WA" id="37Il31hXKZb" role="3uHU7w">
                <node concept="2OqwBi" id="37Il31hXLjf" role="3uHU7w">
                  <node concept="Xjq3P" id="37Il31hXLa1" role="2Oq$k0" />
                  <node concept="liA8E" id="37Il31hXLlq" role="2OqNvi">
                    <ref role="37wK5l" node="37Il31hWRNw" resolve="getId" />
                  </node>
                </node>
                <node concept="2OqwBi" id="37Il31hXKRa" role="3uHU7B">
                  <node concept="1eOMI4" id="37Il31hXKGl" role="2Oq$k0">
                    <node concept="10QFUN" id="37Il31hXKGm" role="1eOMHV">
                      <node concept="37vLTw" id="37Il31hXKGk" role="10QFUP">
                        <ref role="3cqZAo" node="37Il31hXHLH" resolve="object" />
                      </node>
                      <node concept="3uibUv" id="37Il31hXKOr" role="10QFUM">
                        <ref role="3uigEE" node="37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="37Il31hXKVu" role="2OqNvi">
                    <ref role="37wK5l" node="37Il31hWRNw" resolve="getId" />
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="37Il31hXJZn" role="3uHU7B">
                <node concept="3uibUv" id="37Il31hXKdM" role="2ZW6by">
                  <ref role="3uigEE" node="37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
                </node>
                <node concept="37vLTw" id="37Il31hXJXY" role="2ZW6bz">
                  <ref role="3cqZAo" node="37Il31hXHLH" resolve="object" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="37Il31hWJ50" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3KqYwoBJ4yO" role="jymVt" />
    <node concept="3clFb_" id="6yOdP6c6GSo" role="jymVt">
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getAvailableOptions" />
      <node concept="37vLTG" id="6yOdP6c6KxN" role="3clF46">
        <property role="TrG5h" value="initialStates" />
        <node concept="_YKpA" id="5SvlHWogMbN" role="1tU5fm">
          <node concept="16syzq" id="5SvlHWogMYe" role="_ZDj9">
            <ref role="16sUi3" node="3KqYwoBIHZv" resolve="InitialDataObject" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6yOdP6c6KGy" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="6yOdP6c6KVV" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3clFbS" id="6yOdP6c6GSr" role="3clF47" />
      <node concept="3Tm1VV" id="6yOdP6c6GSs" role="1B3o_S" />
      <node concept="_YKpA" id="6yOdP6c6GE7" role="3clF45">
        <node concept="3uibUv" id="37Il31hX1Kj" role="_ZDj9">
          <ref role="3uigEE" node="37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3KqYwoBIKFf" role="jymVt" />
    <node concept="3clFb_" id="3KqYwoBIKej" role="jymVt">
      <property role="TrG5h" value="getChanges" />
      <node concept="37vLTG" id="3KqYwoBIK$S" role="3clF46">
        <property role="TrG5h" value="initialStates" />
        <node concept="_YKpA" id="5SvlHWogo5T" role="1tU5fm">
          <node concept="16syzq" id="5SvlHWogoHS" role="_ZDj9">
            <ref role="16sUi3" node="3KqYwoBIHZv" resolve="InitialDataObject" />
          </node>
        </node>
        <node concept="2AHcQZ" id="4qkYgnA1vZP" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
        </node>
      </node>
      <node concept="37vLTG" id="2SJclOrQA3Q" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="2SJclOrQAfO" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="6yOdP6c6M21" role="3clF46">
        <property role="TrG5h" value="selectedOptions" />
        <node concept="_YKpA" id="37Il31hXuN8" role="1tU5fm">
          <node concept="3uibUv" id="37Il31hXv4R" role="_ZDj9">
            <ref role="3uigEE" node="37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3KqYwoBIUlE" role="3clF46">
        <property role="TrG5h" value="searchScope" />
        <node concept="3uibUv" id="3KqYwoBIUvJ" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SearchScope" resolve="SearchScope" />
        </node>
      </node>
      <node concept="37vLTG" id="4GNx7T6WF1i" role="3clF46">
        <property role="TrG5h" value="progressMonitor" />
        <node concept="3uibUv" id="4GNx7T6WFBv" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3KqYwoBIKem" role="1B3o_S" />
      <node concept="3clFbS" id="3KqYwoBIKen" role="3clF47" />
      <node concept="_YKpA" id="5SvlHWognI9" role="3clF45">
        <node concept="_YKpA" id="361hHoA3yER" role="_ZDj9">
          <node concept="3uibUv" id="5D$LV0rjWPM" role="_ZDj9">
            <ref role="3uigEE" node="3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
            <node concept="16syzq" id="5D$LV0rjWPN" role="11_B2D">
              <ref role="16sUi3" node="3KqYwoBIHZv" resolve="InitialDataObject" />
            </node>
            <node concept="16syzq" id="5D$LV0rjWPO" role="11_B2D">
              <ref role="16sUi3" node="3KqYwoBIHZz" resolve="FinalDataObject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="5$HBxhcd_Si" role="lGtFl">
        <node concept="x79VA" id="5$HBxhcd_S$" role="3nqlJM">
          <property role="x79VB" value="" />
          <node concept="1PaTwC" id="1E1X3WHsEkd" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsEke" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEkf" role="1PaTwD">
              <property role="3oM_SC" value="list" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEkg" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEkh" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEki" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEkj" role="1PaTwD">
              <property role="3oM_SC" value="size" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEkk" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEkl" role="1PaTwD">
              <property role="3oM_SC" value="initialStates" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3KqYwoBIIP3" role="jymVt" />
    <node concept="Qs71p" id="7tV5ZLw0mML" role="jymVt">
      <property role="TrG5h" value="KeepOldNodes" />
      <node concept="3uibUv" id="7tV5ZLw2DNg" role="EKbjA">
        <ref role="3uigEE" to="wyt6:~Comparable" resolve="Comparable" />
        <node concept="3uibUv" id="7tV5ZLw2EYk" role="11_B2D">
          <ref role="3uigEE" node="7tV5ZLw0mML" resolve="RefactoringParticipant.KeepOldNodes" />
        </node>
      </node>
      <node concept="QsSxf" id="7tV5ZLw0pQW" role="Qtgdg">
        <property role="TrG5h" value="REMOVE" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="7tV5ZLw0qe3" role="Qtgdg">
        <property role="TrG5h" value="POSTPONE_REMOVE" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="7tV5ZLw0q2f" role="Qtgdg">
        <property role="TrG5h" value="KEEP" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="7tV5ZLw0mMM" role="1B3o_S" />
      <node concept="2YIFZL" id="7tV5ZLw4o3v" role="jymVt">
        <property role="TrG5h" value="max" />
        <node concept="37vLTG" id="7tV5ZLw4pyz" role="3clF46">
          <property role="TrG5h" value="values" />
          <node concept="A3Dl8" id="7tV5ZLw4quz" role="1tU5fm">
            <node concept="3uibUv" id="7tV5ZLw4rnA" role="A3Ik2">
              <ref role="3uigEE" node="7tV5ZLw0mML" resolve="RefactoringParticipant.KeepOldNodes" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="7tV5ZLw4oDc" role="3clF45">
          <ref role="3uigEE" node="7tV5ZLw0mML" resolve="RefactoringParticipant.KeepOldNodes" />
        </node>
        <node concept="3Tm1VV" id="7tV5ZLw4o3y" role="1B3o_S" />
        <node concept="3clFbS" id="7tV5ZLw4o3z" role="3clF47">
          <node concept="3clFbF" id="7tV5ZLw4u9G" role="3cqZAp">
            <node concept="2OqwBi" id="7tV5ZLw4uTp" role="3clFbG">
              <node concept="37vLTw" id="7tV5ZLw4u9F" role="2Oq$k0">
                <ref role="3cqZAo" node="7tV5ZLw4pyz" resolve="values" />
              </node>
              <node concept="1MDeg1" id="7tV5ZLw4vbZ" role="2OqNvi">
                <node concept="1bVj0M" id="7tV5ZLw4vc1" role="23t8la">
                  <node concept="3clFbS" id="7tV5ZLw4vc2" role="1bW5cS">
                    <node concept="3clFbF" id="7tV5ZLw4yHv" role="3cqZAp">
                      <node concept="3K4zz7" id="7tV5ZLw4EMj" role="3clFbG">
                        <node concept="37vLTw" id="7tV5ZLw4JMz" role="3K4E3e">
                          <ref role="3cqZAo" node="7tV5ZLw4vc5" resolve="s" />
                        </node>
                        <node concept="37vLTw" id="7tV5ZLw4KyL" role="3K4GZi">
                          <ref role="3cqZAo" node="5W7E4fV0Xa4" resolve="it" />
                        </node>
                        <node concept="3eOSWO" id="7tV5ZLw4C_q" role="3K4Cdx">
                          <node concept="3cmrfG" id="7tV5ZLw4D9t" role="3uHU7w">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2OqwBi" id="7tV5ZLw4_lC" role="3uHU7B">
                            <node concept="liA8E" id="7tV5ZLw4A_I" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Comparable.compareTo(java.lang.Object)" resolve="compareTo" />
                              <node concept="37vLTw" id="7tV5ZLw4J0S" role="37wK5m">
                                <ref role="3cqZAo" node="5W7E4fV0Xa4" resolve="it" />
                              </node>
                            </node>
                            <node concept="1eOMI4" id="41po97dRWkh" role="2Oq$k0">
                              <node concept="10QFUN" id="41po97dRWz$" role="1eOMHV">
                                <node concept="3uibUv" id="41po97dRWQ7" role="10QFUM">
                                  <ref role="3uigEE" to="wyt6:~Comparable" resolve="Comparable" />
                                  <node concept="3uibUv" id="41po97dRXh8" role="11_B2D">
                                    <ref role="3uigEE" node="7tV5ZLw0mML" resolve="RefactoringParticipant.KeepOldNodes" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="7tV5ZLw4Igt" role="10QFUP">
                                  <ref role="3cqZAo" node="7tV5ZLw4vc5" resolve="s" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0Xa4" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0Xa5" role="1tU5fm" />
                  </node>
                  <node concept="37vLTG" id="7tV5ZLw4vc5" role="1bW2Oz">
                    <property role="TrG5h" value="s" />
                    <node concept="3uibUv" id="7tV5ZLw4wL9" role="1tU5fm">
                      <ref role="3uigEE" node="7tV5ZLw0mML" resolve="RefactoringParticipant.KeepOldNodes" />
                    </node>
                  </node>
                </node>
                <node concept="Rm8GO" id="7tV5ZLw4w0p" role="1MDegf">
                  <ref role="Rm8GQ" node="7tV5ZLw0pQW" resolve="REMOVE" />
                  <ref role="1Px2BO" node="7tV5ZLw0mML" resolve="RefactoringParticipant.KeepOldNodes" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3UR2Jj" id="3D2IEK815Hy" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsEjk" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsEjl" role="1PaTwD">
            <property role="3oM_SC" value="POSTPONE_REMOVE" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEjm" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEjn" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEjo" role="1PaTwD">
            <property role="3oM_SC" value="hack" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEjp" role="1PaTwD">
            <property role="3oM_SC" value="used" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEjq" role="1PaTwD">
            <property role="3oM_SC" value="only" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEjr" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEjs" role="1PaTwD">
            <property role="3oM_SC" value="idea" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEjt" role="1PaTwD">
            <property role="3oM_SC" value="plugin" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7tV5ZLw0kPE" role="jymVt" />
    <node concept="3HP615" id="3KqYwoBIKuf" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Change" />
      <node concept="3clFb_" id="3KqYwoBIMaY" role="jymVt">
        <property role="TrG5h" value="getSearchResults" />
        <node concept="3uibUv" id="5c9yDr4Hk7_" role="3clF45">
          <ref role="3uigEE" to="g4jo:J2bOg02HbG" resolve="SearchResults" />
        </node>
        <node concept="3Tm1VV" id="3KqYwoBIMb1" role="1B3o_S" />
        <node concept="3clFbS" id="3KqYwoBIMb2" role="3clF47" />
      </node>
      <node concept="3clFb_" id="3KqYwoBILhQ" role="jymVt">
        <property role="TrG5h" value="confirm" />
        <node concept="3cqZAl" id="3KqYwoBILhS" role="3clF45" />
        <node concept="3Tm1VV" id="3KqYwoBILhT" role="1B3o_S" />
        <node concept="3clFbS" id="3KqYwoBILhU" role="3clF47" />
        <node concept="37vLTG" id="3KqYwoBILH5" role="3clF46">
          <property role="TrG5h" value="finalState" />
          <node concept="16syzq" id="FLkVtyM$an" role="1tU5fm">
            <ref role="16sUi3" node="FLkVtyKmRp" resolve="FinalDataObject" />
          </node>
        </node>
        <node concept="37vLTG" id="2SJclOrRrqW" role="3clF46">
          <property role="TrG5h" value="repository" />
          <node concept="3uibUv" id="2SJclOrRrDV" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
        </node>
        <node concept="37vLTG" id="3KqYwoBJ1wZ" role="3clF46">
          <property role="TrG5h" value="refactoringSession" />
          <node concept="3uibUv" id="3KqYwoBJ1BR" role="1tU5fm">
            <ref role="3uigEE" node="3KqYwoBJ0xf" resolve="RefactoringSession" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3KqYwoBIKug" role="1B3o_S" />
      <node concept="16euLQ" id="3KqYwoBILoW" role="16eVyc">
        <property role="TrG5h" value="InitialDataObject" />
      </node>
      <node concept="16euLQ" id="FLkVtyKmRp" role="16eVyc">
        <property role="TrG5h" value="FinalDataObject" />
      </node>
    </node>
    <node concept="2tJIrI" id="3KqYwoBIIPc" role="jymVt" />
    <node concept="3HP615" id="5DMHUkptmAc" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="PersistentRefactoringParticipant" />
      <node concept="3clFb_" id="3KqYwoBJ2GJ" role="jymVt">
        <property role="2aFKle" value="false" />
        <property role="TrG5h" value="getId" />
        <node concept="3clFbS" id="3KqYwoBJ2GM" role="3clF47" />
        <node concept="3Tm1VV" id="3KqYwoBJ2GN" role="1B3o_S" />
        <node concept="17QB3L" id="3KqYwoBJ2F9" role="3clF45" />
      </node>
      <node concept="3clFb_" id="3KqYwoBKtUs" role="jymVt">
        <property role="TrG5h" value="serializeInitialState" />
        <node concept="3Tqbb2" id="3KqYwoBKtUt" role="3clF45" />
        <node concept="3Tm1VV" id="3KqYwoBKtUu" role="1B3o_S" />
        <node concept="3clFbS" id="3KqYwoBKtUv" role="3clF47" />
        <node concept="37vLTG" id="3KqYwoBKv5H" role="3clF46">
          <property role="TrG5h" value="initialState" />
          <node concept="16syzq" id="3KqYwoBKv5G" role="1tU5fm">
            <ref role="16sUi3" node="5DMHUkptmRU" resolve="InitialDataObject" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="3KqYwoBKtUw" role="jymVt">
        <property role="TrG5h" value="deserializeInitialState" />
        <node concept="16syzq" id="3KqYwoBKuuu" role="3clF45">
          <ref role="16sUi3" node="5DMHUkptmRU" resolve="InitialDataObject" />
        </node>
        <node concept="3Tm1VV" id="3KqYwoBKtUy" role="1B3o_S" />
        <node concept="3clFbS" id="3KqYwoBKtUz" role="3clF47" />
        <node concept="37vLTG" id="3KqYwoBKu9h" role="3clF46">
          <property role="TrG5h" value="serialized" />
          <node concept="3Tqbb2" id="3KqYwoBKu9g" role="1tU5fm" />
        </node>
      </node>
      <node concept="3clFb_" id="3KqYwoBIZR6" role="jymVt">
        <property role="TrG5h" value="serializeFinalState" />
        <node concept="3Tqbb2" id="3KqYwoBIZR7" role="3clF45" />
        <node concept="3Tm1VV" id="3KqYwoBIZR8" role="1B3o_S" />
        <node concept="3clFbS" id="3KqYwoBIZR9" role="3clF47" />
        <node concept="37vLTG" id="3KqYwoBKuVf" role="3clF46">
          <property role="TrG5h" value="finalState" />
          <node concept="16syzq" id="3KqYwoBKuVe" role="1tU5fm">
            <ref role="16sUi3" node="5DMHUkptmRW" resolve="FinalDataObject" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="3KqYwoBIZMy" role="jymVt">
        <property role="TrG5h" value="deserializeFinalState" />
        <node concept="16syzq" id="3KqYwoBKuDp" role="3clF45">
          <ref role="16sUi3" node="5DMHUkptmRW" resolve="FinalDataObject" />
        </node>
        <node concept="3Tm1VV" id="3KqYwoBIZM$" role="1B3o_S" />
        <node concept="3clFbS" id="3KqYwoBIZM_" role="3clF47" />
        <node concept="37vLTG" id="3KqYwoBKuOI" role="3clF46">
          <property role="TrG5h" value="serialized" />
          <node concept="3Tqbb2" id="3KqYwoBKuOH" role="1tU5fm" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5DMHUkptmAd" role="1B3o_S" />
      <node concept="16euLQ" id="5DMHUkptmRU" role="16eVyc">
        <property role="TrG5h" value="InitialDataObject" />
      </node>
      <node concept="16euLQ" id="5DMHUkptmRW" role="16eVyc">
        <property role="TrG5h" value="FinalDataObject" />
      </node>
      <node concept="16euLQ" id="5z_gLGes0W5" role="16eVyc">
        <property role="TrG5h" value="InitialPoint" />
      </node>
      <node concept="16euLQ" id="5z_gLGes0Yy" role="16eVyc">
        <property role="TrG5h" value="FinalPoint" />
      </node>
      <node concept="3uibUv" id="5DMHUkptmYj" role="3HQHJm">
        <ref role="3uigEE" node="3KqYwoBIxpF" resolve="RefactoringParticipant" />
        <node concept="16syzq" id="361hHo_ZVk6" role="11_B2D">
          <ref role="16sUi3" node="5DMHUkptmRU" resolve="InitialDataObject" />
        </node>
        <node concept="16syzq" id="361hHo_ZVyj" role="11_B2D">
          <ref role="16sUi3" node="5DMHUkptmRW" resolve="FinalDataObject" />
        </node>
        <node concept="16syzq" id="5z_gLGes1f7" role="11_B2D">
          <ref role="16sUi3" node="5z_gLGes0W5" resolve="InitialPoint" />
        </node>
        <node concept="16syzq" id="5z_gLGes1mU" role="11_B2D">
          <ref role="16sUi3" node="5z_gLGes0Yy" resolve="FinalPoint" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5DMHUkptmuA" role="jymVt" />
    <node concept="312cEu" id="XAmMejZP77" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="1sVAO0" value="true" />
      <property role="1EXbeo" value="false" />
      <property role="TrG5h" value="ParticipantStateFactory" />
      <node concept="3clFb_" id="XAmMejONUP" role="jymVt">
        <property role="TrG5h" value="getInitial" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <property role="2aFKle" value="false" />
        <property role="1EzhhJ" value="true" />
        <node concept="3clFbS" id="XAmMejONUQ" role="3clF47" />
        <node concept="37vLTG" id="XAmMejONV8" role="3clF46">
          <property role="TrG5h" value="participant" />
          <node concept="3uibUv" id="XAmMejWDWj" role="1tU5fm">
            <ref role="3uigEE" node="3KqYwoBIxpF" resolve="RefactoringParticipant" />
            <node concept="16syzq" id="XAmMejWFrm" role="11_B2D">
              <ref role="16sUi3" node="XAmMek4yM5" resolve="I" />
            </node>
            <node concept="3qTvmN" id="1zEfp2qBxVk" role="11_B2D" />
            <node concept="3qTvmN" id="1zEfp2qO5E_" role="11_B2D" />
            <node concept="3qTvmN" id="1zEfp2qO7GS" role="11_B2D" />
          </node>
        </node>
        <node concept="37vLTG" id="XAmMejONVe" role="3clF46">
          <property role="TrG5h" value="oldNode" />
          <node concept="16syzq" id="XAmMejQC4u" role="1tU5fm">
            <ref role="16sUi3" node="XAmMejETY6" resolve="IS" />
          </node>
        </node>
        <node concept="3Tm1VV" id="XAmMejONVh" role="1B3o_S" />
        <node concept="16syzq" id="XAmMejQAQR" role="3clF45">
          <ref role="16sUi3" node="XAmMek4yM5" resolve="I" />
        </node>
        <node concept="16euLQ" id="XAmMek4yM5" role="16eVyc">
          <property role="TrG5h" value="I" />
        </node>
      </node>
      <node concept="3clFb_" id="XAmMejQN8d" role="jymVt">
        <property role="TrG5h" value="getFinal" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <property role="2aFKle" value="false" />
        <property role="1EzhhJ" value="true" />
        <node concept="3clFbS" id="XAmMejQN8e" role="3clF47" />
        <node concept="37vLTG" id="XAmMejQN8f" role="3clF46">
          <property role="TrG5h" value="participant" />
          <node concept="3uibUv" id="XAmMek3Lcb" role="1tU5fm">
            <ref role="3uigEE" node="3KqYwoBIxpF" resolve="RefactoringParticipant" />
            <node concept="3qTvmN" id="1zEfp2qB_Um" role="11_B2D" />
            <node concept="16syzq" id="XAmMek3Lcd" role="11_B2D">
              <ref role="16sUi3" node="XAmMek4CvQ" resolve="F" />
            </node>
            <node concept="3qTvmN" id="1zEfp2qOcYO" role="11_B2D" />
            <node concept="3qTvmN" id="1zEfp2qOctd" role="11_B2D" />
          </node>
        </node>
        <node concept="37vLTG" id="XAmMejQN8l" role="3clF46">
          <property role="TrG5h" value="newNode" />
          <node concept="16syzq" id="XAmMejQTpu" role="1tU5fm">
            <ref role="16sUi3" node="XAmMejETY7" resolve="FS" />
          </node>
        </node>
        <node concept="3Tm1VV" id="XAmMejQN8n" role="1B3o_S" />
        <node concept="16syzq" id="XAmMejQP7q" role="3clF45">
          <ref role="16sUi3" node="XAmMek4CvQ" resolve="F" />
        </node>
        <node concept="16euLQ" id="XAmMek4CvQ" role="16eVyc">
          <property role="TrG5h" value="F" />
        </node>
      </node>
      <node concept="2tJIrI" id="7ram9hsTjKh" role="jymVt" />
      <node concept="3clFb_" id="7ram9hsTtf0" role="jymVt">
        <property role="TrG5h" value="apply" />
        <node concept="37vLTG" id="7ram9hsTQeb" role="3clF46">
          <property role="TrG5h" value="participant" />
          <node concept="3uibUv" id="7ram9hsTQec" role="1tU5fm">
            <ref role="3uigEE" node="3KqYwoBIxpF" resolve="RefactoringParticipant" />
            <node concept="16syzq" id="7ram9hsTQed" role="11_B2D">
              <ref role="16sUi3" node="7ram9hsU68L" resolve="I" />
            </node>
            <node concept="16syzq" id="7ram9hsTQee" role="11_B2D">
              <ref role="16sUi3" node="7ram9hsUath" resolve="F" />
            </node>
            <node concept="3qTvmN" id="1zEfp2qOgVp" role="11_B2D" />
            <node concept="3qTvmN" id="1zEfp2qOkPv" role="11_B2D" />
          </node>
        </node>
        <node concept="37vLTG" id="7ram9hsTVIW" role="3clF46">
          <property role="TrG5h" value="oldNodes" />
          <node concept="_YKpA" id="7ram9hsTVIX" role="1tU5fm">
            <node concept="16syzq" id="7ram9hsTVIY" role="_ZDj9">
              <ref role="16sUi3" node="XAmMejETY6" resolve="IS" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="7ram9hsTtf3" role="1B3o_S" />
        <node concept="3clFbS" id="7ram9hsTtf4" role="3clF47">
          <node concept="3cpWs6" id="7ram9hsVEKA" role="3cqZAp">
            <node concept="1rXfSq" id="7ram9ht80bg" role="3cqZAk">
              <ref role="37wK5l" node="7ram9ht4kVU" resolve="apply" />
              <node concept="37vLTw" id="7ram9ht89uh" role="37wK5m">
                <ref role="3cqZAo" node="7ram9hsTQeb" resolve="participant" />
              </node>
              <node concept="37vLTw" id="7ram9ht8idX" role="37wK5m">
                <ref role="3cqZAo" node="7ram9hsTVIW" resolve="oldNodes" />
              </node>
              <node concept="10Nm6u" id="7ram9ht8pxT" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="7ram9hsU68L" role="16eVyc">
          <property role="TrG5h" value="I" />
        </node>
        <node concept="16euLQ" id="7ram9hsUath" role="16eVyc">
          <property role="TrG5h" value="F" />
        </node>
        <node concept="3uibUv" id="7ram9hsUhzt" role="3clF45">
          <ref role="3uigEE" node="5z_gLGerhde" resolve="RefactoringParticipant.ParticipantApplied" />
          <node concept="16syzq" id="7ram9hsUhzu" role="11_B2D">
            <ref role="16sUi3" node="7ram9hsU68L" resolve="I" />
          </node>
          <node concept="16syzq" id="7ram9hsUhzv" role="11_B2D">
            <ref role="16sUi3" node="7ram9hsUath" resolve="F" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="7ram9ht4kVU" role="jymVt">
        <property role="TrG5h" value="apply" />
        <node concept="37vLTG" id="7ram9ht4kVV" role="3clF46">
          <property role="TrG5h" value="participant" />
          <node concept="3uibUv" id="7ram9ht4kVW" role="1tU5fm">
            <ref role="3uigEE" node="3KqYwoBIxpF" resolve="RefactoringParticipant" />
            <node concept="16syzq" id="7ram9ht4kVX" role="11_B2D">
              <ref role="16sUi3" node="7ram9ht4kWs" resolve="I" />
            </node>
            <node concept="16syzq" id="7ram9ht4kVY" role="11_B2D">
              <ref role="16sUi3" node="7ram9ht4kWt" resolve="F" />
            </node>
            <node concept="3qTvmN" id="1zEfp2qOsDq" role="11_B2D" />
            <node concept="3qTvmN" id="1zEfp2qOoJW" role="11_B2D" />
          </node>
        </node>
        <node concept="37vLTG" id="7ram9ht4kW1" role="3clF46">
          <property role="TrG5h" value="oldNodes" />
          <node concept="_YKpA" id="7ram9ht4kW2" role="1tU5fm">
            <node concept="16syzq" id="7ram9ht4kW3" role="_ZDj9">
              <ref role="16sUi3" node="XAmMejETY6" resolve="IS" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7ram9ht4qU$" role="3clF46">
          <property role="TrG5h" value="appliedParents" />
          <node concept="A3Dl8" id="112yVMIA$UV" role="1tU5fm">
            <node concept="3uibUv" id="5z_gLGetj3C" role="A3Ik2">
              <ref role="3uigEE" node="5z_gLGerhde" resolve="RefactoringParticipant.ParticipantApplied" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="7ram9ht4kW4" role="1B3o_S" />
        <node concept="3clFbS" id="7ram9ht4kW5" role="3clF47">
          <node concept="3cpWs8" id="7ram9ht4kW6" role="3cqZAp">
            <node concept="3cpWsn" id="7ram9ht4kW7" role="3cpWs9">
              <property role="TrG5h" value="initialState" />
              <node concept="_YKpA" id="7ram9ht4kW8" role="1tU5fm">
                <node concept="16syzq" id="7ram9ht4kW9" role="_ZDj9">
                  <ref role="16sUi3" node="7ram9ht4kWs" resolve="I" />
                </node>
              </node>
              <node concept="2OqwBi" id="7ram9ht4kWa" role="33vP2m">
                <node concept="2OqwBi" id="7ram9ht4kWb" role="2Oq$k0">
                  <node concept="37vLTw" id="7ram9ht4kWc" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ram9ht4kW1" resolve="oldNodes" />
                  </node>
                  <node concept="3$u5V9" id="7ram9ht4kWd" role="2OqNvi">
                    <node concept="1bVj0M" id="7ram9ht4kWe" role="23t8la">
                      <node concept="3clFbS" id="7ram9ht4kWf" role="1bW5cS">
                        <node concept="3clFbF" id="7ram9ht4kWg" role="3cqZAp">
                          <node concept="1rXfSq" id="7ram9ht4kWh" role="3clFbG">
                            <ref role="37wK5l" node="XAmMejONUP" resolve="getInitial" />
                            <node concept="37vLTw" id="7ram9ht4kWi" role="37wK5m">
                              <ref role="3cqZAo" node="7ram9ht4kVV" resolve="participant" />
                            </node>
                            <node concept="37vLTw" id="7ram9ht4kWj" role="37wK5m">
                              <ref role="3cqZAo" node="7ram9ht4kWk" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="7ram9ht4kWk" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="7ram9ht4kWl" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="ANE8D" id="7ram9ht4kWm" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="7ram9ht4kWn" role="3cqZAp">
            <node concept="2ShNRf" id="7ram9ht4kWo" role="3cqZAk">
              <node concept="1pGfFk" id="7ram9ht4kWp" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="7ram9hsWliB" resolve="RefactoringParticipant.ParticipantApplied" />
                <node concept="37vLTw" id="7ram9ht4kWq" role="37wK5m">
                  <ref role="3cqZAo" node="7ram9ht4kVV" resolve="participant" />
                </node>
                <node concept="37vLTw" id="7ram9ht4kWr" role="37wK5m">
                  <ref role="3cqZAo" node="7ram9ht4kW7" resolve="initialState" />
                </node>
                <node concept="37vLTw" id="7ram9ht6QmW" role="37wK5m">
                  <ref role="3cqZAo" node="7ram9ht4qU$" resolve="appliedParents" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="7ram9ht4kWs" role="16eVyc">
          <property role="TrG5h" value="I" />
        </node>
        <node concept="16euLQ" id="7ram9ht4kWt" role="16eVyc">
          <property role="TrG5h" value="F" />
        </node>
        <node concept="3uibUv" id="7ram9ht4kWu" role="3clF45">
          <ref role="3uigEE" node="5z_gLGerhde" resolve="RefactoringParticipant.ParticipantApplied" />
          <node concept="16syzq" id="7ram9ht4kWv" role="11_B2D">
            <ref role="16sUi3" node="7ram9ht4kWs" resolve="I" />
          </node>
          <node concept="16syzq" id="7ram9ht4kWw" role="11_B2D">
            <ref role="16sUi3" node="7ram9ht4kWt" resolve="F" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7ram9htuSdp" role="jymVt" />
      <node concept="3clFb_" id="7ram9htuYCc" role="jymVt">
        <property role="TrG5h" value="confirm" />
        <node concept="37vLTG" id="7ram9htvd_Q" role="3clF46">
          <property role="TrG5h" value="applied" />
          <node concept="3uibUv" id="7ram9htwG4V" role="1tU5fm">
            <ref role="3uigEE" node="5z_gLGerhde" resolve="RefactoringParticipant.ParticipantApplied" />
            <node concept="16syzq" id="7ram9htwG4W" role="11_B2D">
              <ref role="16sUi3" node="7ram9htvpVV" resolve="I" />
            </node>
            <node concept="16syzq" id="7ram9htwG4X" role="11_B2D">
              <ref role="16sUi3" node="7ram9htvwk1" resolve="F" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7ram9htvCX4" role="3clF46">
          <property role="TrG5h" value="newNodes" />
          <node concept="_YKpA" id="7ram9htvCX5" role="1tU5fm">
            <node concept="16syzq" id="7ram9htvCX6" role="_ZDj9">
              <ref role="16sUi3" node="XAmMejETY7" resolve="FS" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7ram9htvUm_" role="3clF46">
          <property role="TrG5h" value="repo" />
          <node concept="3uibUv" id="7ram9htw0Ws" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
        </node>
        <node concept="37vLTG" id="7ram9htvJfk" role="3clF46">
          <property role="TrG5h" value="session" />
          <node concept="3uibUv" id="7ram9htvJfl" role="1tU5fm">
            <ref role="3uigEE" node="3KqYwoBJ0xf" resolve="RefactoringSession" />
          </node>
        </node>
        <node concept="3cqZAl" id="7ram9htuYCe" role="3clF45" />
        <node concept="3Tm1VV" id="7ram9htuYCf" role="1B3o_S" />
        <node concept="3clFbS" id="7ram9htuYCg" role="3clF47">
          <node concept="3cpWs8" id="7ram9hty9kP" role="3cqZAp">
            <node concept="3cpWsn" id="7ram9hty9kQ" role="3cpWs9">
              <property role="TrG5h" value="changes" />
              <node concept="_YKpA" id="7ram9hty5ow" role="1tU5fm">
                <node concept="_YKpA" id="7ram9hty5oN" role="_ZDj9">
                  <node concept="3uibUv" id="7ram9hty5oO" role="_ZDj9">
                    <ref role="3uigEE" node="3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
                    <node concept="16syzq" id="7ram9hty5oP" role="11_B2D">
                      <ref role="16sUi3" node="7ram9htvpVV" resolve="I" />
                    </node>
                    <node concept="16syzq" id="7ram9hty5oQ" role="11_B2D">
                      <ref role="16sUi3" node="7ram9htvwk1" resolve="F" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7ram9hty9kR" role="33vP2m">
                <node concept="37vLTw" id="7ram9hty9kS" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ram9htvd_Q" resolve="applied" />
                </node>
                <node concept="liA8E" id="7ram9hty9kT" role="2OqNvi">
                  <ref role="37wK5l" node="5z_gLGerhdt" resolve="getChanges" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7ram9htyt16" role="3cqZAp">
            <node concept="3clFbS" id="7ram9htyt18" role="3clFbx">
              <node concept="YS8fn" id="7ram9htzYYv" role="3cqZAp">
                <node concept="2ShNRf" id="7ram9htzZjf" role="YScLw">
                  <node concept="1pGfFk" id="7ram9ht$3SB" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;()" resolve="IllegalStateException" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="22lmx$" id="7ram9htyTuo" role="3clFbw">
              <node concept="3y3z36" id="7ram9htzvuh" role="3uHU7w">
                <node concept="2OqwBi" id="7ram9htzIGh" role="3uHU7w">
                  <node concept="37vLTw" id="7ram9htzA$i" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ram9htvCX4" resolve="newNodes" />
                  </node>
                  <node concept="34oBXx" id="7ram9htzQuK" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="7ram9htz4DL" role="3uHU7B">
                  <node concept="37vLTw" id="7ram9htz0zG" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ram9hty9kQ" resolve="changes" />
                  </node>
                  <node concept="34oBXx" id="7ram9htzmM_" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbC" id="7ram9htyFQj" role="3uHU7B">
                <node concept="37vLTw" id="7ram9htyzIE" role="3uHU7B">
                  <ref role="3cqZAo" node="7ram9hty9kQ" resolve="changes" />
                </node>
                <node concept="10Nm6u" id="7ram9htyNlH" role="3uHU7w" />
              </node>
            </node>
          </node>
          <node concept="1Dw8fO" id="7ram9htGH9c" role="3cqZAp">
            <node concept="1gjucp" id="7ram9htHJn2" role="_NwL_">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="7ram9htHJn3" role="1tU5fm" />
              <node concept="3cmrfG" id="7ram9htHUIX" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3clFbS" id="7ram9htGH9e" role="2LFqv$">
              <node concept="3cpWs8" id="7ram9htTN1B" role="3cqZAp">
                <node concept="3cpWsn" id="7ram9htTN1C" role="3cpWs9">
                  <property role="TrG5h" value="nextChange" />
                  <node concept="_YKpA" id="7ram9htTJAL" role="1tU5fm">
                    <node concept="3uibUv" id="7ram9htTJAW" role="_ZDj9">
                      <ref role="3uigEE" node="3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
                      <node concept="16syzq" id="7ram9htTJAX" role="11_B2D">
                        <ref role="16sUi3" node="7ram9htvpVV" resolve="I" />
                      </node>
                      <node concept="16syzq" id="7ram9htTJAY" role="11_B2D">
                        <ref role="16sUi3" node="7ram9htvwk1" resolve="F" />
                      </node>
                    </node>
                  </node>
                  <node concept="1y4W85" id="7ram9htTN1D" role="33vP2m">
                    <node concept="37vLTw" id="7ram9htTN1E" role="1y58nS">
                      <ref role="3cqZAo" node="7ram9htHJn2" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="7ram9htTN1F" role="1y566C">
                      <ref role="3cqZAo" node="7ram9hty9kQ" resolve="changes" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="7ram9htTesw" role="3cqZAp">
                <node concept="3clFbS" id="7ram9htTesy" role="3clFbx">
                  <node concept="3SKdUt" id="7ram9htUdQ0" role="3cqZAp">
                    <node concept="1PaTwC" id="7ram9htUdQ1" role="1aUNEU">
                      <node concept="3oM_SD" id="7ram9htUdQ2" role="1PaTwD">
                        <property role="3oM_SC" value="completely" />
                      </node>
                      <node concept="3oM_SD" id="7ram9htUj8I" role="1PaTwD">
                        <property role="3oM_SC" value="legitimate," />
                      </node>
                      <node concept="3oM_SD" id="7ram9htUja2" role="1PaTwD">
                        <property role="3oM_SC" value="PA.mapNotNull" />
                      </node>
                      <node concept="3oM_SD" id="7ram9htUjd6" role="1PaTwD">
                        <property role="3oM_SC" value="records" />
                      </node>
                      <node concept="3oM_SD" id="7ram9htUjdK" role="1PaTwD">
                        <property role="3oM_SC" value="null" />
                      </node>
                      <node concept="3oM_SD" id="7ram9htUjdL" role="1PaTwD">
                        <property role="3oM_SC" value="for" />
                      </node>
                      <node concept="3oM_SD" id="7ram9htUjdM" role="1PaTwD">
                        <property role="3oM_SC" value="each" />
                      </node>
                      <node concept="3oM_SD" id="7ram9htUjeb" role="1PaTwD">
                        <property role="3oM_SC" value="input" />
                      </node>
                      <node concept="3oM_SD" id="7ram9htUjf_" role="1PaTwD">
                        <property role="3oM_SC" value="participant" />
                      </node>
                      <node concept="3oM_SD" id="7ram9htUjgf" role="1PaTwD">
                        <property role="3oM_SC" value="refused" />
                      </node>
                      <node concept="3oM_SD" id="7ram9htUji6" role="1PaTwD">
                        <property role="3oM_SC" value="to" />
                      </node>
                      <node concept="3oM_SD" id="7ram9htUuez" role="1PaTwD">
                        <property role="3oM_SC" value="handle." />
                      </node>
                      <node concept="3oM_SD" id="7ram9htUufd" role="1PaTwD">
                        <property role="3oM_SC" value="No" />
                      </node>
                      <node concept="3oM_SD" id="7ram9htUufv" role="1PaTwD">
                        <property role="3oM_SC" value="reason" />
                      </node>
                      <node concept="3oM_SD" id="7ram9htUufS" role="1PaTwD">
                        <property role="3oM_SC" value="to" />
                      </node>
                      <node concept="3oM_SD" id="7ram9htUufT" role="1PaTwD">
                        <property role="3oM_SC" value="ask" />
                      </node>
                      <node concept="3oM_SD" id="7ram9htUua7" role="1PaTwD">
                        <property role="3oM_SC" value="getFinal" />
                      </node>
                      <node concept="3oM_SD" id="7ram9htUubF" role="1PaTwD">
                        <property role="3oM_SC" value="for" />
                      </node>
                      <node concept="3oM_SD" id="7ram9htUucl" role="1PaTwD">
                        <property role="3oM_SC" value="such" />
                      </node>
                      <node concept="3oM_SD" id="7ram9htUuh$" role="1PaTwD">
                        <property role="3oM_SC" value="participant." />
                      </node>
                    </node>
                  </node>
                  <node concept="3N13vt" id="7ram9htUnKH" role="3cqZAp" />
                </node>
                <node concept="3clFbC" id="7ram9htTBAK" role="3clFbw">
                  <node concept="10Nm6u" id="7ram9htTHKI" role="3uHU7w" />
                  <node concept="37vLTw" id="7ram9htTN1G" role="3uHU7B">
                    <ref role="3cqZAo" node="7ram9htTN1C" resolve="nextChange" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7ram9ht$pXn" role="3cqZAp">
                <node concept="3cpWsn" id="7ram9ht$pXo" role="3cpWs9">
                  <property role="TrG5h" value="finalState" />
                  <node concept="16syzq" id="7ram9ht$pXp" role="1tU5fm">
                    <ref role="16sUi3" node="7ram9htvwk1" resolve="F" />
                  </node>
                  <node concept="1rXfSq" id="7ram9htwnq0" role="33vP2m">
                    <ref role="37wK5l" node="XAmMejQN8d" resolve="getFinal" />
                    <node concept="2OqwBi" id="7ram9htxa3Y" role="37wK5m">
                      <node concept="37vLTw" id="7ram9htwtqa" role="2Oq$k0">
                        <ref role="3cqZAo" node="7ram9htvd_Q" resolve="applied" />
                      </node>
                      <node concept="liA8E" id="7ram9htxhLp" role="2OqNvi">
                        <ref role="37wK5l" node="5z_gLGerhdA" resolve="getParticipant" />
                      </node>
                    </node>
                    <node concept="1y4W85" id="7ram9htIMcb" role="37wK5m">
                      <node concept="37vLTw" id="7ram9htIR7e" role="1y58nS">
                        <ref role="3cqZAo" node="7ram9htHJn2" resolve="i" />
                      </node>
                      <node concept="37vLTw" id="7ram9htIFph" role="1y566C">
                        <ref role="3cqZAo" node="7ram9htvCX4" resolve="newNodes" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7ram9ht$pXv" role="3cqZAp">
                <node concept="2OqwBi" id="7ram9ht$pXw" role="3clFbG">
                  <node concept="37vLTw" id="7ram9htTN1H" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ram9htTN1C" resolve="nextChange" />
                  </node>
                  <node concept="2es0OD" id="7ram9ht$pXy" role="2OqNvi">
                    <node concept="1bVj0M" id="7ram9ht$pXz" role="23t8la">
                      <node concept="3clFbS" id="7ram9ht$pX$" role="1bW5cS">
                        <node concept="3clFbF" id="7ram9ht$pX_" role="3cqZAp">
                          <node concept="2OqwBi" id="7ram9ht$pXA" role="3clFbG">
                            <node concept="37vLTw" id="7ram9ht$pXB" role="2Oq$k0">
                              <ref role="3cqZAo" node="7ram9ht$pXG" resolve="it" />
                            </node>
                            <node concept="liA8E" id="7ram9ht$pXC" role="2OqNvi">
                              <ref role="37wK5l" node="3KqYwoBILhQ" resolve="confirm" />
                              <node concept="37vLTw" id="7ram9ht$pXD" role="37wK5m">
                                <ref role="3cqZAo" node="7ram9ht$pXo" resolve="finalState" />
                              </node>
                              <node concept="37vLTw" id="7ram9ht$pXE" role="37wK5m">
                                <ref role="3cqZAo" node="7ram9htvUm_" resolve="repo" />
                              </node>
                              <node concept="37vLTw" id="7ram9ht$pXF" role="37wK5m">
                                <ref role="3cqZAo" node="7ram9htvJfk" resolve="session" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="7ram9ht$pXG" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="7ram9ht$pXH" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="7ram9htGH9f" role="1Duv9x">
              <property role="TrG5h" value="x" />
              <node concept="10Oyi0" id="7ram9htGN8Y" role="1tU5fm" />
              <node concept="2OqwBi" id="7ram9htH5v6" role="33vP2m">
                <node concept="37vLTw" id="7ram9htH1_g" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ram9htvCX4" resolve="newNodes" />
                </node>
                <node concept="34oBXx" id="7ram9htHdzA" role="2OqNvi" />
              </node>
            </node>
            <node concept="3eOVzh" id="7ram9htHqjp" role="1Dwp0S">
              <node concept="37vLTw" id="7ram9htIgC$" role="3uHU7w">
                <ref role="3cqZAo" node="7ram9htGH9f" resolve="x" />
              </node>
              <node concept="37vLTw" id="7ram9htIb0d" role="3uHU7B">
                <ref role="3cqZAo" node="7ram9htHJn2" resolve="i" />
              </node>
            </node>
            <node concept="3uNrnE" id="7ram9htIqjW" role="1Dwrff">
              <node concept="37vLTw" id="7ram9htIqjY" role="2$L3a6">
                <ref role="3cqZAo" node="7ram9htHJn2" resolve="i" />
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="7ram9htvpVV" role="16eVyc">
          <property role="TrG5h" value="I" />
        </node>
        <node concept="16euLQ" id="7ram9htvwk1" role="16eVyc">
          <property role="TrG5h" value="F" />
        </node>
      </node>
      <node concept="3Tm1VV" id="XAmMejZP79" role="1B3o_S" />
      <node concept="16euLQ" id="XAmMejETY6" role="16eVyc">
        <property role="TrG5h" value="IS" />
      </node>
      <node concept="16euLQ" id="XAmMejETY7" role="16eVyc">
        <property role="TrG5h" value="FS" />
      </node>
      <node concept="3UR2Jj" id="1zEfp2q$Puz" role="lGtFl">
        <node concept="1PaTwC" id="1zEfp2q$Pu$" role="1Vez_I">
          <node concept="3oM_SD" id="1zEfp2q$Pu_" role="1PaTwD">
            <property role="3oM_SC" value="StateFactory" />
          </node>
          <node concept="3oM_SD" id="1zEfp2q$XeY" role="1PaTwD">
            <property role="3oM_SC" value="deals" />
          </node>
          <node concept="3oM_SD" id="1zEfp2q$XfX" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="1zEfp2q$XgV" role="1PaTwD">
            <property role="3oM_SC" value="state" />
          </node>
          <node concept="3oM_SD" id="1zEfp2q$XhT" role="1PaTwD">
            <property role="3oM_SC" value="objects" />
          </node>
          <node concept="3oM_SD" id="1zEfp2q_dbQ" role="1PaTwD">
            <property role="3oM_SC" value="(typed" />
          </node>
          <node concept="3oM_SD" id="1zEfp2q_ddL" role="1PaTwD">
            <property role="3oM_SC" value="IS" />
          </node>
          <node concept="3oM_SD" id="1zEfp2q_deJ" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1zEfp2q_dfH" role="1PaTwD">
            <property role="3oM_SC" value="FS)" />
          </node>
          <node concept="3oM_SD" id="1zEfp2q_dgF" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1zEfp2q$XhU" role="1PaTwD">
            <property role="3oM_SC" value="get" />
          </node>
          <node concept="3oM_SD" id="1zEfp2q$XiS" role="1PaTwD">
            <property role="3oM_SC" value="initial" />
          </node>
          <node concept="3oM_SD" id="1zEfp2q$XjQ" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1zEfp2q$XjR" role="1PaTwD">
            <property role="3oM_SC" value="final" />
          </node>
          <node concept="3oM_SD" id="1zEfp2q$XkP" role="1PaTwD">
            <property role="3oM_SC" value="data" />
          </node>
          <node concept="3oM_SD" id="1zEfp2q_dkw" role="1PaTwD">
            <property role="3oM_SC" value="objects" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="XAmMejZeqM" role="jymVt" />
    <node concept="312cEu" id="XAmMejEI3D" role="jymVt">
      <property role="TrG5h" value="CollectingParticipantStateFactory" />
      <node concept="3clFb_" id="XAmMejNQyk" role="jymVt">
        <property role="TrG5h" value="getInitial" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3clFbS" id="XAmMejNQyl" role="3clF47">
          <node concept="3SKdUt" id="1zEfp2qPACG" role="3cqZAp">
            <node concept="1PaTwC" id="1zEfp2qPACH" role="1aUNEU">
              <node concept="3oM_SD" id="1zEfp2qPDig" role="1PaTwD">
                <property role="3oM_SC" value="XXX" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPDmB" role="1PaTwD">
                <property role="3oM_SC" value="casts" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPDje" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPDpj" role="1PaTwD">
                <property role="3oM_SC" value="RP" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPDqx" role="1PaTwD">
                <property role="3oM_SC" value="with" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPDsf" role="1PaTwD">
                <property role="3oM_SC" value="specific" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPDyj" role="1PaTwD">
                <property role="3oM_SC" value="InitialPoint" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPD$Y" role="1PaTwD">
                <property role="3oM_SC" value="and" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPD$Z" role="1PaTwD">
                <property role="3oM_SC" value="FinalPoint" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPDD$" role="1PaTwD">
                <property role="3oM_SC" value="isn't" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPDDP" role="1PaTwD">
                <property role="3oM_SC" value="nice," />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPDF3" role="1PaTwD">
                <property role="3oM_SC" value="yet" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPDHu" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPDHv" role="1PaTwD">
                <property role="3oM_SC" value="keep" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPDIt" role="1PaTwD">
                <property role="3oM_SC" value="these" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPDJr" role="1PaTwD">
                <property role="3oM_SC" value="two" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPDKT" role="1PaTwD">
                <property role="3oM_SC" value="extra" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPDKU" role="1PaTwD">
                <property role="3oM_SC" value="type" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPDN5" role="1PaTwD">
                <property role="3oM_SC" value="parameters" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPDOz" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPDPL" role="1PaTwD">
                <property role="3oM_SC" value="not" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPE6y" role="1PaTwD">
                <property role="3oM_SC" value="worth" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPE8H" role="1PaTwD">
                <property role="3oM_SC" value="it." />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="1zEfp2qPmc7" role="3cqZAp">
            <node concept="1PaTwC" id="1zEfp2qPmc8" role="1aUNEU">
              <node concept="3oM_SD" id="1zEfp2qPoQm" role="1PaTwD">
                <property role="3oM_SC" value="What" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQn" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQo" role="1PaTwD">
                <property role="3oM_SC" value="lost" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQp" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQq" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQr" role="1PaTwD">
                <property role="3oM_SC" value="compile-time" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQs" role="1PaTwD">
                <property role="3oM_SC" value="guarantee" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQt" role="1PaTwD">
                <property role="3oM_SC" value="that" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQu" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQv" role="1PaTwD">
                <property role="3oM_SC" value="driver's" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQw" role="1PaTwD">
                <property role="3oM_SC" value="node" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQx" role="1PaTwD">
                <property role="3oM_SC" value="type" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQy" role="1PaTwD">
                <property role="3oM_SC" value="matches" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQz" role="1PaTwD">
                <property role="3oM_SC" value="its" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQ$" role="1PaTwD">
                <property role="3oM_SC" value="participants'" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQ_" role="1PaTwD">
                <property role="3oM_SC" value="point" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQA" role="1PaTwD">
                <property role="3oM_SC" value="type;" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQB" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQC" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQD" role="1PaTwD">
                <property role="3oM_SC" value="mismatch" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQE" role="1PaTwD">
                <property role="3oM_SC" value="would" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQF" role="1PaTwD">
                <property role="3oM_SC" value="become" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQG" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQH" role="1PaTwD">
                <property role="3oM_SC" value="ClassCastException" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQI" role="1PaTwD">
                <property role="3oM_SC" value="inside" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQJ" role="1PaTwD">
                <property role="3oM_SC" value="beforeMove." />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQK" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="1zEfp2qPoW6" role="3cqZAp">
            <node concept="1PaTwC" id="1zEfp2qPoUL" role="1aUNEU">
              <node concept="3oM_SD" id="1zEfp2qPoUK" role="1PaTwD">
                <property role="3oM_SC" value="Of" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQL" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQM" role="1PaTwD">
                <property role="3oM_SC" value="five" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQN" role="1PaTwD">
                <property role="3oM_SC" value="drivers," />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQO" role="1PaTwD">
                <property role="3oM_SC" value="three" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQP" role="1PaTwD">
                <property role="3oM_SC" value="do" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQQ" role="1PaTwD">
                <property role="3oM_SC" value="not" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQR" role="1PaTwD">
                <property role="3oM_SC" value="have" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQS" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQT" role="1PaTwD">
                <property role="3oM_SC" value="that" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQU" role="1PaTwD">
                <property role="3oM_SC" value="guarantee" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQV" role="1PaTwD">
                <property role="3oM_SC" value="today" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQW" role="1PaTwD">
                <property role="3oM_SC" value="anyway" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQX" role="1PaTwD">
                <property role="3oM_SC" value="(MigrationExecutorImpl" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQY" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoQZ" role="1PaTwD">
                <property role="3oM_SC" value="raw;" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoR0" role="1PaTwD">
                <property role="3oM_SC" value="MoveNodesUtil," />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoR1" role="1PaTwD">
                <property role="3oM_SC" value="RenameRefactoringBody" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoR2" role="1PaTwD">
                <property role="3oM_SC" value="and" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPrCB" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="1zEfp2qPrFH" role="3cqZAp">
            <node concept="1PaTwC" id="1zEfp2qPrEN" role="1aUNEU">
              <node concept="3oM_SD" id="1zEfp2qPrEM" role="1PaTwD">
                <property role="3oM_SC" value="MoveModelActionExecutor" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoR5" role="1PaTwD">
                <property role="3oM_SC" value="go" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoR6" role="1PaTwD">
                <property role="3oM_SC" value="through" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoR7" role="1PaTwD">
                <property role="3oM_SC" value="RefactoringBody&lt;IP," />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoR8" role="1PaTwD">
                <property role="3oM_SC" value="FP&gt;," />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoR9" role="1PaTwD">
                <property role="3oM_SC" value="which" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoRa" role="1PaTwD">
                <property role="3oM_SC" value="keeps" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoRb" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoRc" role="1PaTwD">
                <property role="3oM_SC" value="link" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoRd" role="1PaTwD">
                <property role="3oM_SC" value="and" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoRe" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoRf" role="1PaTwD">
                <property role="3oM_SC" value="unaffected)." />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoRg" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoRh" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="1zEfp2qPuq7" role="3cqZAp">
            <node concept="1PaTwC" id="1zEfp2qPupw" role="1aUNEU">
              <node concept="3oM_SD" id="1zEfp2qPupv" role="1PaTwD">
                <property role="3oM_SC" value="Only" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoRi" role="1PaTwD">
                <property role="3oM_SC" value="RefactoringProcessor.performRefactoring's" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoRj" role="1PaTwD">
                <property role="3oM_SC" value="two" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoRk" role="1PaTwD">
                <property role="3oM_SC" value="direct" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoRl" role="1PaTwD">
                <property role="3oM_SC" value="callers" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoRm" role="1PaTwD">
                <property role="3oM_SC" value="lose" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoRn" role="1PaTwD">
                <property role="3oM_SC" value="it" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoRo" role="1PaTwD">
                <property role="3oM_SC" value="—" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoRp" role="1PaTwD">
                <property role="3oM_SC" value="and" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoRq" role="1PaTwD">
                <property role="3oM_SC" value="there" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoRr" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoRs" role="1PaTwD">
                <property role="3oM_SC" value="factory" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoRt" role="1PaTwD">
                <property role="3oM_SC" value="and" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPx5v" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPzKz" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="1zEfp2qPx69" role="3cqZAp">
            <node concept="1PaTwC" id="1zEfp2qPx5L" role="1aUNEU">
              <node concept="3oM_SD" id="1zEfp2qPx5K" role="1PaTwD">
                <property role="3oM_SC" value="extension" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoRx" role="1PaTwD">
                <property role="3oM_SC" value="point" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoRy" role="1PaTwD">
                <property role="3oM_SC" value="are" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoRz" role="1PaTwD">
                <property role="3oM_SC" value="chosen" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoR$" role="1PaTwD">
                <property role="3oM_SC" value="in" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoR_" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoRA" role="1PaTwD">
                <property role="3oM_SC" value="same" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoRB" role="1PaTwD">
                <property role="3oM_SC" value="expression" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qPoRC" role="1PaTwD">
                <property role="3oM_SC" value="(ImplicitNodeRenamer_extension)" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="1zEfp2qQWnJ" role="3cqZAp">
            <node concept="1PaTwC" id="1zEfp2qQWnK" role="1aUNEU">
              <node concept="3oM_SD" id="1zEfp2qQZ17" role="1PaTwD">
                <property role="3oM_SC" value="In" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qQZbP" role="1PaTwD">
                <property role="3oM_SC" value="other" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qQZ8q" role="1PaTwD">
                <property role="3oM_SC" value="words," />
              </node>
              <node concept="3oM_SD" id="1zEfp2qQZ8s" role="1PaTwD">
                <property role="3oM_SC" value="these" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qQZ9E" role="1PaTwD">
                <property role="3oM_SC" value="three" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qQZ18" role="1PaTwD">
                <property role="3oM_SC" value="keep" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qQZ19" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qQZ1a" role="1PaTwD">
                <property role="3oM_SC" value="link" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qQZ1b" role="1PaTwD">
                <property role="3oM_SC" value="via" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qQZ1c" role="1PaTwD">
                <property role="3oM_SC" value="RefactoringBody," />
              </node>
              <node concept="3oM_SD" id="1zEfp2qQZ1d" role="1PaTwD">
                <property role="3oM_SC" value="MigrationExecutorImpl" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qQZ1e" role="1PaTwD">
                <property role="3oM_SC" value="never" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qQZ1f" role="1PaTwD">
                <property role="3oM_SC" value="had" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qQZ1g" role="1PaTwD">
                <property role="3oM_SC" value="it" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qQZ1h" role="1PaTwD">
                <property role="3oM_SC" value="(raw" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qQZ1i" role="1PaTwD">
                <property role="3oM_SC" value="participant)," />
              </node>
              <node concept="3oM_SD" id="1zEfp2qQZ1j" role="1PaTwD">
                <property role="3oM_SC" value="so" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qQZ1k" role="1PaTwD">
                <property role="3oM_SC" value="exactly" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qQZ1l" role="1PaTwD">
                <property role="3oM_SC" value="one" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qQZ1m" role="1PaTwD">
                <property role="3oM_SC" value="—" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qQZ1n" role="1PaTwD">
                <property role="3oM_SC" value="ImplicitNodeRenamer_extension" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qQZ1o" role="1PaTwD">
                <property role="3oM_SC" value="—" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qQZ1p" role="1PaTwD">
                <property role="3oM_SC" value="loses" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qQZ1q" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qQZ1r" role="1PaTwD">
                <property role="3oM_SC" value="check" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qQZ1s" role="1PaTwD">
                <property role="3oM_SC" value="it" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qQZ1t" role="1PaTwD">
                <property role="3oM_SC" value="previously" />
              </node>
              <node concept="3oM_SD" id="1zEfp2qQZ1u" role="1PaTwD">
                <property role="3oM_SC" value="had." />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="XAmMejQ_p_" role="3cqZAp">
            <node concept="2OqwBi" id="XAmMejOkez" role="3clFbG">
              <node concept="2OqwBi" id="XAmMejOke$" role="2Oq$k0">
                <node concept="liA8E" id="XAmMejOke_" role="2OqNvi">
                  <ref role="37wK5l" node="3KqYwoBJi4D" resolve="getDataCollector" />
                </node>
                <node concept="1eOMI4" id="1zEfp2qOGGT" role="2Oq$k0">
                  <node concept="10QFUN" id="1zEfp2qOJod" role="1eOMHV">
                    <node concept="3uibUv" id="1zEfp2qOLZx" role="10QFUM">
                      <ref role="3uigEE" node="3KqYwoBIxpF" resolve="RefactoringParticipant" />
                      <node concept="16syzq" id="1zEfp2qOR_R" role="11_B2D">
                        <ref role="16sUi3" node="XAmMek4MCl" resolve="I" />
                      </node>
                      <node concept="3qTvmN" id="1zEfp2qOUdm" role="11_B2D" />
                      <node concept="16syzq" id="1zEfp2qOWMm" role="11_B2D">
                        <ref role="16sUi3" node="XAmMejEKUp" resolve="IS" />
                      </node>
                      <node concept="3qTvmN" id="1zEfp2qP1XE" role="11_B2D" />
                    </node>
                    <node concept="37vLTw" id="XAmMejOkeA" role="10QFUP">
                      <ref role="3cqZAo" node="XAmMejNQyR" resolve="participant" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="XAmMejOkeB" role="2OqNvi">
                <ref role="37wK5l" node="5z_gLGeqYia" resolve="beforeMove" />
                <node concept="37vLTw" id="XAmMejQ_QF" role="37wK5m">
                  <ref role="3cqZAo" node="XAmMejNQyX" resolve="oldNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="XAmMejNQyR" role="3clF46">
          <property role="TrG5h" value="participant" />
          <node concept="3uibUv" id="XAmMejNQyS" role="1tU5fm">
            <ref role="3uigEE" node="3KqYwoBIxpF" resolve="RefactoringParticipant" />
            <node concept="16syzq" id="XAmMejOioK" role="11_B2D">
              <ref role="16sUi3" node="XAmMek4MCl" resolve="I" />
            </node>
            <node concept="3qTvmN" id="1zEfp2qC5uT" role="11_B2D" />
            <node concept="3qTvmN" id="1zEfp2qOzUJ" role="11_B2D" />
            <node concept="3qTvmN" id="1zEfp2qMPmj" role="11_B2D" />
          </node>
        </node>
        <node concept="37vLTG" id="XAmMejNQyX" role="3clF46">
          <property role="TrG5h" value="oldNode" />
          <node concept="16syzq" id="XAmMejQ$6N" role="1tU5fm">
            <ref role="16sUi3" node="XAmMejEKUp" resolve="IS" />
          </node>
        </node>
        <node concept="3Tm1VV" id="XAmMejNQz0" role="1B3o_S" />
        <node concept="16syzq" id="XAmMejQAmC" role="3clF45">
          <ref role="16sUi3" node="XAmMek4MCl" resolve="I" />
        </node>
        <node concept="16euLQ" id="XAmMek4MCl" role="16eVyc">
          <property role="TrG5h" value="I" />
        </node>
      </node>
      <node concept="3clFb_" id="XAmMejQU8Y" role="jymVt">
        <property role="TrG5h" value="getFinal" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3clFbS" id="XAmMejQU8Z" role="3clF47">
          <node concept="3clFbF" id="XAmMejQU90" role="3cqZAp">
            <node concept="2OqwBi" id="XAmMejQU91" role="3clFbG">
              <node concept="2OqwBi" id="XAmMejQU92" role="2Oq$k0">
                <node concept="liA8E" id="XAmMejQU93" role="2OqNvi">
                  <ref role="37wK5l" node="3KqYwoBJi4D" resolve="getDataCollector" />
                </node>
                <node concept="1eOMI4" id="1zEfp2qP4_A" role="2Oq$k0">
                  <node concept="10QFUN" id="1zEfp2qP4_B" role="1eOMHV">
                    <node concept="3uibUv" id="1zEfp2qP4_C" role="10QFUM">
                      <ref role="3uigEE" node="3KqYwoBIxpF" resolve="RefactoringParticipant" />
                      <node concept="3qTvmN" id="1zEfp2qPg_f" role="11_B2D" />
                      <node concept="16syzq" id="1zEfp2qPdYs" role="11_B2D">
                        <ref role="16sUi3" node="XAmMek4NFe" resolve="F" />
                      </node>
                      <node concept="3qTvmN" id="1zEfp2qPbmG" role="11_B2D" />
                      <node concept="16syzq" id="1zEfp2qP8J1" role="11_B2D">
                        <ref role="16sUi3" node="XAmMejEKXq" resolve="FS" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="1zEfp2qP4_H" role="10QFUP">
                      <ref role="3cqZAo" node="XAmMejQU97" resolve="participant" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="XAmMejQU95" role="2OqNvi">
                <ref role="37wK5l" node="5z_gLGeqYig" resolve="afterMove" />
                <node concept="37vLTw" id="XAmMejQU96" role="37wK5m">
                  <ref role="3cqZAo" node="XAmMejQU9d" resolve="oldNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="XAmMejQU97" role="3clF46">
          <property role="TrG5h" value="participant" />
          <node concept="3uibUv" id="XAmMejQU98" role="1tU5fm">
            <ref role="3uigEE" node="3KqYwoBIxpF" resolve="RefactoringParticipant" />
            <node concept="3qTvmN" id="1zEfp2qC2cJ" role="11_B2D" />
            <node concept="16syzq" id="XAmMejQU9a" role="11_B2D">
              <ref role="16sUi3" node="XAmMek4NFe" resolve="F" />
            </node>
            <node concept="3qTvmN" id="1zEfp2qNa8i" role="11_B2D" />
            <node concept="3qTvmN" id="1zEfp2qO29s" role="11_B2D" />
          </node>
        </node>
        <node concept="37vLTG" id="XAmMejQU9d" role="3clF46">
          <property role="TrG5h" value="oldNode" />
          <node concept="16syzq" id="XAmMejR0YV" role="1tU5fm">
            <ref role="16sUi3" node="XAmMejEKXq" resolve="FS" />
          </node>
        </node>
        <node concept="3Tm1VV" id="XAmMejQU9f" role="1B3o_S" />
        <node concept="16syzq" id="XAmMejQZ38" role="3clF45">
          <ref role="16sUi3" node="XAmMek4NFe" resolve="F" />
        </node>
        <node concept="16euLQ" id="XAmMek4NFe" role="16eVyc">
          <property role="TrG5h" value="F" />
        </node>
      </node>
      <node concept="3Tm1VV" id="XAmMejEI3E" role="1B3o_S" />
      <node concept="16euLQ" id="XAmMejEKUp" role="16eVyc">
        <property role="TrG5h" value="IS" />
      </node>
      <node concept="16euLQ" id="XAmMejEKXq" role="16eVyc">
        <property role="TrG5h" value="FS" />
      </node>
      <node concept="3uibUv" id="XAmMek0afr" role="1zkMxy">
        <ref role="3uigEE" node="XAmMejZP77" resolve="RefactoringParticipant.ParticipantStateFactory" />
        <node concept="16syzq" id="XAmMejF3sj" role="11_B2D">
          <ref role="16sUi3" node="XAmMejEKUp" resolve="IS" />
        </node>
        <node concept="16syzq" id="XAmMejF3AR" role="11_B2D">
          <ref role="16sUi3" node="XAmMejEKXq" resolve="FS" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="XAmMejRQqX" role="jymVt" />
    <node concept="312cEu" id="XAmMejRZPu" role="jymVt">
      <property role="TrG5h" value="DeserializingParticipantStateFactory" />
      <node concept="3clFb_" id="XAmMejRZPv" role="jymVt">
        <property role="TrG5h" value="getInitial" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3clFbS" id="XAmMejRZPw" role="3clF47">
          <node concept="3clFbF" id="XAmMejRZPx" role="3cqZAp">
            <node concept="2OqwBi" id="XAmMejRZPz" role="3clFbG">
              <node concept="liA8E" id="XAmMejSgTU" role="2OqNvi">
                <ref role="37wK5l" node="3KqYwoBKtUw" resolve="deserializeInitialState" />
                <node concept="37vLTw" id="XAmMejSidz" role="37wK5m">
                  <ref role="3cqZAo" node="XAmMejRZPI" resolve="serializedInitial" />
                </node>
              </node>
              <node concept="1eOMI4" id="XAmMek4cy$" role="2Oq$k0">
                <node concept="10QFUN" id="XAmMek4cy_" role="1eOMHV">
                  <node concept="37vLTw" id="XAmMek4cyz" role="10QFUP">
                    <ref role="3cqZAo" node="XAmMejRZPC" resolve="participant" />
                  </node>
                  <node concept="3uibUv" id="XAmMek4cIy" role="10QFUM">
                    <ref role="3uigEE" node="5DMHUkptmAc" resolve="RefactoringParticipant.PersistentRefactoringParticipant" />
                    <node concept="16syzq" id="XAmMek4df4" role="11_B2D">
                      <ref role="16sUi3" node="XAmMek4WYh" resolve="I" />
                    </node>
                    <node concept="3qTvmN" id="1zEfp2qCmsQ" role="11_B2D" />
                    <node concept="3qTvmN" id="1zEfp2qMvdP" role="11_B2D" />
                    <node concept="3qTvmN" id="1zEfp2qMxKh" role="11_B2D" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="XAmMejRZPC" role="3clF46">
          <property role="TrG5h" value="participant" />
          <node concept="3uibUv" id="XAmMejRZPD" role="1tU5fm">
            <ref role="3uigEE" node="3KqYwoBIxpF" resolve="RefactoringParticipant" />
            <node concept="16syzq" id="XAmMejRZPE" role="11_B2D">
              <ref role="16sUi3" node="XAmMek4WYh" resolve="I" />
            </node>
            <node concept="3qTvmN" id="1zEfp2qCe5$" role="11_B2D" />
            <node concept="3qTvmN" id="1zEfp2qMoIz" role="11_B2D" />
            <node concept="3qTvmN" id="1zEfp2qMrYB" role="11_B2D" />
          </node>
        </node>
        <node concept="37vLTG" id="XAmMejRZPI" role="3clF46">
          <property role="TrG5h" value="serializedInitial" />
          <node concept="3Tqbb2" id="XAmMejSen1" role="1tU5fm" />
        </node>
        <node concept="3Tm1VV" id="XAmMejRZPK" role="1B3o_S" />
        <node concept="16syzq" id="XAmMejRZPL" role="3clF45">
          <ref role="16sUi3" node="XAmMek4WYh" resolve="I" />
        </node>
        <node concept="16euLQ" id="XAmMek4WYh" role="16eVyc">
          <property role="TrG5h" value="I" />
        </node>
      </node>
      <node concept="3clFb_" id="XAmMejRZPO" role="jymVt">
        <property role="TrG5h" value="getFinal" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3clFbS" id="XAmMejRZPP" role="3clF47">
          <node concept="3clFbF" id="XAmMejRZPQ" role="3cqZAp">
            <node concept="2OqwBi" id="XAmMejRZPS" role="3clFbG">
              <node concept="liA8E" id="XAmMejSlpZ" role="2OqNvi">
                <ref role="37wK5l" node="3KqYwoBIZMy" resolve="deserializeFinalState" />
                <node concept="37vLTw" id="XAmMejSm0m" role="37wK5m">
                  <ref role="3cqZAo" node="XAmMejRZQ3" resolve="serializedFinal" />
                </node>
              </node>
              <node concept="1eOMI4" id="XAmMek4hQT" role="2Oq$k0">
                <node concept="10QFUN" id="XAmMek4hQU" role="1eOMHV">
                  <node concept="37vLTw" id="XAmMek4hQV" role="10QFUP">
                    <ref role="3cqZAo" node="XAmMejRZPX" resolve="participant" />
                  </node>
                  <node concept="3uibUv" id="XAmMek4hQW" role="10QFUM">
                    <ref role="3uigEE" node="5DMHUkptmAc" resolve="RefactoringParticipant.PersistentRefactoringParticipant" />
                    <node concept="3qTvmN" id="1zEfp2qCxqw" role="11_B2D" />
                    <node concept="16syzq" id="XAmMek4hQY" role="11_B2D">
                      <ref role="16sUi3" node="XAmMek4Y0P" resolve="F" />
                    </node>
                    <node concept="3qTvmN" id="1zEfp2qMMM3" role="11_B2D" />
                    <node concept="3qTvmN" id="1zEfp2qMKfH" role="11_B2D" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="XAmMejRZPX" role="3clF46">
          <property role="TrG5h" value="participant" />
          <node concept="3uibUv" id="XAmMek4i5n" role="1tU5fm">
            <ref role="3uigEE" node="3KqYwoBIxpF" resolve="RefactoringParticipant" />
            <node concept="3qTvmN" id="1zEfp2qCua4" role="11_B2D" />
            <node concept="16syzq" id="XAmMek4i5p" role="11_B2D">
              <ref role="16sUi3" node="XAmMek4Y0P" resolve="F" />
            </node>
            <node concept="3qTvmN" id="1zEfp2qMDKZ" role="11_B2D" />
            <node concept="3qTvmN" id="1zEfp2qMH0_" role="11_B2D" />
          </node>
        </node>
        <node concept="37vLTG" id="XAmMejRZQ3" role="3clF46">
          <property role="TrG5h" value="serializedFinal" />
          <node concept="3Tqbb2" id="XAmMejSjvR" role="1tU5fm" />
        </node>
        <node concept="3Tm1VV" id="XAmMejRZQ5" role="1B3o_S" />
        <node concept="16syzq" id="XAmMejRZQ6" role="3clF45">
          <ref role="16sUi3" node="XAmMek4Y0P" resolve="F" />
        </node>
        <node concept="16euLQ" id="XAmMek4Y0P" role="16eVyc">
          <property role="TrG5h" value="F" />
        </node>
      </node>
      <node concept="3Tm1VV" id="XAmMejRZQ9" role="1B3o_S" />
      <node concept="16euLQ" id="XAmMejRZQa" role="16eVyc">
        <property role="TrG5h" value="IS" />
      </node>
      <node concept="16euLQ" id="XAmMejRZQb" role="16eVyc">
        <property role="TrG5h" value="FS" />
      </node>
      <node concept="3uibUv" id="XAmMek0cp4" role="1zkMxy">
        <ref role="3uigEE" node="XAmMejZP77" resolve="RefactoringParticipant.ParticipantStateFactory" />
        <node concept="3Tqbb2" id="XAmMejSas2" role="11_B2D" />
        <node concept="3Tqbb2" id="XAmMejSaMp" role="11_B2D" />
      </node>
    </node>
    <node concept="2tJIrI" id="XAmMejX9js" role="jymVt" />
    <node concept="312cEu" id="5z_gLGerhde" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="ParticipantApplied" />
      <node concept="312cEg" id="5z_gLGerhdf" role="jymVt">
        <property role="TrG5h" value="myParticipant" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="XAmMejVFLG" role="1tU5fm">
          <ref role="3uigEE" node="3KqYwoBIxpF" resolve="RefactoringParticipant" />
          <node concept="16syzq" id="XAmMejVFLH" role="11_B2D">
            <ref role="16sUi3" node="5z_gLGerhg3" resolve="I" />
          </node>
          <node concept="16syzq" id="XAmMejVFLI" role="11_B2D">
            <ref role="16sUi3" node="5z_gLGerhg4" resolve="F" />
          </node>
          <node concept="3qTvmN" id="1zEfp2qC$5R" role="11_B2D" />
          <node concept="3qTvmN" id="1zEfp2qCENj" role="11_B2D" />
        </node>
        <node concept="3Tm6S6" id="5z_gLGerhdg" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="5z_gLGerhdk" role="jymVt">
        <property role="TrG5h" value="myInitialStates" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="5z_gLGerhdl" role="1B3o_S" />
        <node concept="_YKpA" id="5SvlHWogCal" role="1tU5fm">
          <node concept="16syzq" id="5SvlHWogCJq" role="_ZDj9">
            <ref role="16sUi3" node="5z_gLGerhg3" resolve="I" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="7ram9ht5IhF" role="jymVt">
        <property role="TrG5h" value="myAppliedParents" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="7ram9ht5IhG" role="1B3o_S" />
        <node concept="_YKpA" id="7ram9htsxBQ" role="1tU5fm">
          <node concept="3uibUv" id="7ram9htsxBS" role="_ZDj9">
            <ref role="3uigEE" node="5z_gLGerhde" resolve="RefactoringParticipant.ParticipantApplied" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7ram9ht5CoA" role="jymVt" />
      <node concept="312cEg" id="5z_gLGerhdn" role="jymVt">
        <property role="TrG5h" value="changes" />
        <node concept="3Tm6S6" id="5z_gLGerhdo" role="1B3o_S" />
        <node concept="_YKpA" id="5SvlHWogRVm" role="1tU5fm">
          <node concept="_YKpA" id="5z_gLGerhdp" role="_ZDj9">
            <node concept="3uibUv" id="5z_gLGerhdq" role="_ZDj9">
              <ref role="3uigEE" node="3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
              <node concept="16syzq" id="5z_gLGerhdr" role="11_B2D">
                <ref role="16sUi3" node="5z_gLGerhg3" resolve="I" />
              </node>
              <node concept="16syzq" id="5z_gLGerhds" role="11_B2D">
                <ref role="16sUi3" node="5z_gLGerhg4" resolve="F" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7ram9hsXuvu" role="jymVt" />
      <node concept="3clFb_" id="5z_gLGerhdt" role="jymVt">
        <property role="TrG5h" value="getChanges" />
        <node concept="3Tm1VV" id="5z_gLGerhdy" role="1B3o_S" />
        <node concept="3clFbS" id="5z_gLGerhdz" role="3clF47">
          <node concept="3cpWs6" id="5z_gLGerhd$" role="3cqZAp">
            <node concept="37vLTw" id="5z_gLGerhd_" role="3cqZAk">
              <ref role="3cqZAo" node="5z_gLGerhdn" resolve="changes" />
            </node>
          </node>
        </node>
        <node concept="_YKpA" id="5SvlHWogUA9" role="3clF45">
          <node concept="_YKpA" id="5z_gLGerhdu" role="_ZDj9">
            <node concept="3uibUv" id="5z_gLGerhdv" role="_ZDj9">
              <ref role="3uigEE" node="3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
              <node concept="16syzq" id="5z_gLGerhdw" role="11_B2D">
                <ref role="16sUi3" node="5z_gLGerhg3" resolve="I" />
              </node>
              <node concept="16syzq" id="5z_gLGerhdx" role="11_B2D">
                <ref role="16sUi3" node="5z_gLGerhg4" resolve="F" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5z_gLGerhdA" role="jymVt">
        <property role="TrG5h" value="getParticipant" />
        <node concept="3Tm1VV" id="5z_gLGerhdB" role="1B3o_S" />
        <node concept="3clFbS" id="5z_gLGerhdC" role="3clF47">
          <node concept="3cpWs6" id="5z_gLGerhdD" role="3cqZAp">
            <node concept="37vLTw" id="5z_gLGerhdE" role="3cqZAk">
              <ref role="3cqZAo" node="5z_gLGerhdf" resolve="myParticipant" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="5z_gLGerhdF" role="3clF45">
          <ref role="3uigEE" node="3KqYwoBIxpF" resolve="RefactoringParticipant" />
          <node concept="16syzq" id="5z_gLGerhdG" role="11_B2D">
            <ref role="16sUi3" node="5z_gLGerhg3" resolve="I" />
          </node>
          <node concept="16syzq" id="5z_gLGerhdH" role="11_B2D">
            <ref role="16sUi3" node="5z_gLGerhg4" resolve="F" />
          </node>
          <node concept="3qTvmN" id="1zEfp2qCK0y" role="11_B2D" />
          <node concept="3qTvmN" id="1zEfp2qCQCD" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFb_" id="5z_gLGerhdI" role="jymVt">
        <property role="TrG5h" value="getInitialStates" />
        <node concept="_YKpA" id="5SvlHWogEl3" role="3clF45">
          <node concept="16syzq" id="5SvlHWogFiD" role="_ZDj9">
            <ref role="16sUi3" node="5z_gLGerhg3" resolve="I" />
          </node>
        </node>
        <node concept="3Tm1VV" id="5z_gLGerhdK" role="1B3o_S" />
        <node concept="3clFbS" id="5z_gLGerhdL" role="3clF47">
          <node concept="3clFbF" id="5z_gLGerhdM" role="3cqZAp">
            <node concept="37vLTw" id="5z_gLGerhdN" role="3clFbG">
              <ref role="3cqZAo" node="5z_gLGerhdk" resolve="myInitialStates" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7ram9hsY550" role="jymVt" />
      <node concept="3clFbW" id="7ram9hsWliB" role="jymVt">
        <node concept="37vLTG" id="7ram9hsWliI" role="3clF46">
          <property role="TrG5h" value="participant" />
          <node concept="3uibUv" id="7ram9hsWliJ" role="1tU5fm">
            <ref role="3uigEE" node="3KqYwoBIxpF" resolve="RefactoringParticipant" />
            <node concept="16syzq" id="7ram9hsWliK" role="11_B2D">
              <ref role="16sUi3" node="5z_gLGerhg3" resolve="I" />
            </node>
            <node concept="16syzq" id="7ram9hsWliL" role="11_B2D">
              <ref role="16sUi3" node="5z_gLGerhg4" resolve="F" />
            </node>
            <node concept="3qTvmN" id="1zEfp2qCYMr" role="11_B2D" />
            <node concept="3qTvmN" id="1zEfp2qD383" role="11_B2D" />
          </node>
        </node>
        <node concept="37vLTG" id="7ram9hsWliO" role="3clF46">
          <property role="TrG5h" value="initialState" />
          <node concept="_YKpA" id="7ram9hsWliP" role="1tU5fm">
            <node concept="16syzq" id="7ram9hsWliQ" role="_ZDj9">
              <ref role="16sUi3" node="5z_gLGerhg3" resolve="I" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7ram9ht5QrX" role="3clF46">
          <property role="TrG5h" value="appliedParents" />
          <node concept="A3Dl8" id="7ram9ht7vdN" role="1tU5fm">
            <node concept="3uibUv" id="7ram9ht7vdP" role="A3Ik2">
              <ref role="3uigEE" node="5z_gLGerhde" resolve="RefactoringParticipant.ParticipantApplied" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="7ram9hsWliR" role="3clF45" />
        <node concept="3Tm1VV" id="7ram9hsWliS" role="1B3o_S" />
        <node concept="3clFbS" id="7ram9hsWliT" role="3clF47">
          <node concept="3clFbF" id="7ram9hsWliU" role="3cqZAp">
            <node concept="37vLTI" id="7ram9hsWliV" role="3clFbG">
              <node concept="37vLTw" id="7ram9hsWliW" role="37vLTx">
                <ref role="3cqZAo" node="7ram9hsWliI" resolve="participant" />
              </node>
              <node concept="2OqwBi" id="7ram9hsWliX" role="37vLTJ">
                <node concept="Xjq3P" id="7ram9hsWliY" role="2Oq$k0" />
                <node concept="2OwXpG" id="7ram9hsWliZ" role="2OqNvi">
                  <ref role="2Oxat5" node="5z_gLGerhdf" resolve="myParticipant" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7ram9hsWlj0" role="3cqZAp">
            <node concept="37vLTI" id="7ram9hsWlj1" role="3clFbG">
              <node concept="37vLTw" id="7ram9hsWlj4" role="37vLTx">
                <ref role="3cqZAo" node="7ram9hsWliO" resolve="initialState" />
              </node>
              <node concept="2OqwBi" id="7ram9hsX9mt" role="37vLTJ">
                <node concept="Xjq3P" id="7ram9hsX6TX" role="2Oq$k0" />
                <node concept="2OwXpG" id="7ram9hsXfLI" role="2OqNvi">
                  <ref role="2Oxat5" node="5z_gLGerhdk" resolve="myInitialStates" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="7ram9htsEqA" role="3cqZAp">
            <node concept="1PaTwC" id="7ram9htsEqB" role="1aUNEU">
              <node concept="3oM_SD" id="7ram9htsEqC" role="1PaTwD">
                <property role="3oM_SC" value="FIXME" />
              </node>
              <node concept="3oM_SD" id="7ram9htsKk9" role="1PaTwD">
                <property role="3oM_SC" value="we" />
              </node>
              <node concept="3oM_SD" id="7ram9htsKkz" role="1PaTwD">
                <property role="3oM_SC" value="treat" />
              </node>
              <node concept="3oM_SD" id="7ram9htsKlc" role="1PaTwD">
                <property role="3oM_SC" value="null" />
              </node>
              <node concept="3oM_SD" id="7ram9htsKm5" role="1PaTwD">
                <property role="3oM_SC" value="and" />
              </node>
              <node concept="3oM_SD" id="7ram9htsKm6" role="1PaTwD">
                <property role="3oM_SC" value="empty" />
              </node>
              <node concept="3oM_SD" id="7ram9htsKmJ" role="1PaTwD">
                <property role="3oM_SC" value="myAppliedParents" />
              </node>
              <node concept="3oM_SD" id="7ram9htsKog" role="1PaTwD">
                <property role="3oM_SC" value="differently" />
              </node>
              <node concept="3oM_SD" id="7ram9htsKrx" role="1PaTwD">
                <property role="3oM_SC" value="(to" />
              </node>
              <node concept="3oM_SD" id="7ram9htsKsa" role="1PaTwD">
                <property role="3oM_SC" value="satisfy" />
              </node>
              <node concept="3oM_SD" id="7ram9htsKtr" role="1PaTwD">
                <property role="3oM_SC" value="legacy" />
              </node>
              <node concept="3oM_SD" id="7ram9htsKts" role="1PaTwD">
                <property role="3oM_SC" value="code" />
              </node>
              <node concept="3oM_SD" id="7ram9htsKtP" role="1PaTwD">
                <property role="3oM_SC" value="path" />
              </node>
              <node concept="3oM_SD" id="7ram9htsKtQ" role="1PaTwD">
                <property role="3oM_SC" value="in" />
              </node>
              <node concept="3oM_SD" id="7ram9htsKuv" role="1PaTwD">
                <property role="3oM_SC" value="MoveAspectsParticipant" />
              </node>
              <node concept="3oM_SD" id="7ram9htsKxg" role="1PaTwD">
                <property role="3oM_SC" value="along" />
              </node>
              <node concept="3oM_SD" id="7ram9htsKxh" role="1PaTwD">
                <property role="3oM_SC" value="base" />
              </node>
              <node concept="3oM_SD" id="7ram9htsK$a" role="1PaTwD">
                <property role="3oM_SC" value="getChanges()" />
              </node>
              <node concept="3oM_SD" id="7ram9htsK_3" role="1PaTwD">
                <property role="3oM_SC" value="impl" />
              </node>
              <node concept="3oM_SD" id="7ram9htsK_4" role="1PaTwD">
                <property role="3oM_SC" value="in" />
              </node>
              <node concept="3oM_SD" id="7ram9htsKBX" role="1PaTwD">
                <property role="3oM_SC" value="RefactoringParticipantBase)" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7ram9ht6pUP" role="3cqZAp">
            <node concept="37vLTI" id="7ram9ht6ADO" role="3clFbG">
              <node concept="3K4zz7" id="7ram9hts4g3" role="37vLTx">
                <node concept="10Nm6u" id="7ram9htsa6B" role="3K4E3e" />
                <node concept="2OqwBi" id="7ram9htsjJS" role="3K4GZi">
                  <node concept="37vLTw" id="7ram9htsghc" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ram9ht5QrX" resolve="appliedParents" />
                  </node>
                  <node concept="ANE8D" id="7ram9htsq1m" role="2OqNvi" />
                </node>
                <node concept="3clFbC" id="7ram9htrU83" role="3K4Cdx">
                  <node concept="10Nm6u" id="7ram9htrY$0" role="3uHU7w" />
                  <node concept="37vLTw" id="7ram9htrOtG" role="3uHU7B">
                    <ref role="3cqZAo" node="7ram9ht5QrX" resolve="appliedParents" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7ram9ht6s1x" role="37vLTJ">
                <node concept="Xjq3P" id="7ram9ht6pUN" role="2Oq$k0" />
                <node concept="2OwXpG" id="7ram9ht6xqF" role="2OqNvi">
                  <ref role="2Oxat5" node="7ram9ht5IhF" resolve="myAppliedParents" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7ram9hsWfJT" role="jymVt" />
      <node concept="3clFb_" id="5z_gLGerhe$" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getAvaliableOptions" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="37vLTG" id="5z_gLGerhe_" role="3clF46">
          <property role="TrG5h" value="repository" />
          <node concept="3uibUv" id="5z_gLGerheA" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
        </node>
        <node concept="3clFbS" id="5z_gLGerheB" role="3clF47">
          <node concept="3clFbF" id="5z_gLGerheC" role="3cqZAp">
            <node concept="2OqwBi" id="5z_gLGerheD" role="3clFbG">
              <node concept="37vLTw" id="5z_gLGerheE" role="2Oq$k0">
                <ref role="3cqZAo" node="5z_gLGerhdf" resolve="myParticipant" />
              </node>
              <node concept="liA8E" id="5z_gLGerheF" role="2OqNvi">
                <ref role="37wK5l" node="6yOdP6c6GSo" resolve="getAvailableOptions" />
                <node concept="2OqwBi" id="1FSMaHegcPL" role="37wK5m">
                  <node concept="2OqwBi" id="1FSMaHeg6OF" role="2Oq$k0">
                    <node concept="37vLTw" id="5z_gLGerheG" role="2Oq$k0">
                      <ref role="3cqZAo" node="5z_gLGerhdk" resolve="myInitialStates" />
                    </node>
                    <node concept="3zZkjj" id="1FSMaHeg80p" role="2OqNvi">
                      <node concept="1bVj0M" id="1FSMaHeg80r" role="23t8la">
                        <node concept="3clFbS" id="1FSMaHeg80s" role="1bW5cS">
                          <node concept="3clFbF" id="1FSMaHeg94S" role="3cqZAp">
                            <node concept="3y3z36" id="1FSMaHeg9B7" role="3clFbG">
                              <node concept="10Nm6u" id="1FSMaHeg9Qa" role="3uHU7w" />
                              <node concept="37vLTw" id="1FSMaHeg94R" role="3uHU7B">
                                <ref role="3cqZAo" node="5W7E4fV0Xa8" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0Xa8" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5W7E4fV0Xa9" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="ANE8D" id="1FSMaHegdAR" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="5z_gLGerheH" role="37wK5m">
                  <ref role="3cqZAo" node="5z_gLGerhe_" resolve="repository" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="5z_gLGerheI" role="1B3o_S" />
        <node concept="_YKpA" id="5z_gLGerheJ" role="3clF45">
          <node concept="3uibUv" id="5z_gLGerheK" role="_ZDj9">
            <ref role="3uigEE" node="37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5z_gLGerheL" role="jymVt">
        <property role="TrG5h" value="findChanges" />
        <node concept="37vLTG" id="5z_gLGerheM" role="3clF46">
          <property role="TrG5h" value="repository" />
          <node concept="3uibUv" id="5z_gLGerheN" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
        </node>
        <node concept="37vLTG" id="5z_gLGerheO" role="3clF46">
          <property role="TrG5h" value="selectedOptions" />
          <node concept="_YKpA" id="5z_gLGerheP" role="1tU5fm">
            <node concept="3uibUv" id="5z_gLGerheQ" role="_ZDj9">
              <ref role="3uigEE" node="37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="5z_gLGerheR" role="3clF46">
          <property role="TrG5h" value="searchScope" />
          <node concept="3uibUv" id="5z_gLGerheS" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SearchScope" resolve="SearchScope" />
          </node>
        </node>
        <node concept="37vLTG" id="4GNx7T6Vwh$" role="3clF46">
          <property role="TrG5h" value="progressMonitor" />
          <node concept="3uibUv" id="4GNx7T6Vxlt" role="1tU5fm">
            <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
          </node>
        </node>
        <node concept="3Tm1VV" id="5z_gLGerheT" role="1B3o_S" />
        <node concept="3clFbS" id="5z_gLGerheU" role="3clF47">
          <node concept="3clFbF" id="5z_gLGerheV" role="3cqZAp">
            <node concept="37vLTI" id="5z_gLGerheW" role="3clFbG">
              <node concept="1rXfSq" id="5z_gLGerheX" role="37vLTx">
                <ref role="37wK5l" node="5z_gLGerhf6" resolve="initChanges" />
                <node concept="37vLTw" id="5z_gLGerheY" role="37wK5m">
                  <ref role="3cqZAo" node="5z_gLGerheM" resolve="repository" />
                </node>
                <node concept="37vLTw" id="5z_gLGerheZ" role="37wK5m">
                  <ref role="3cqZAo" node="5z_gLGerheO" resolve="selectedOptions" />
                </node>
                <node concept="37vLTw" id="5z_gLGerhf0" role="37wK5m">
                  <ref role="3cqZAo" node="5z_gLGerheR" resolve="searchScope" />
                </node>
                <node concept="37vLTw" id="4GNx7T6VxZu" role="37wK5m">
                  <ref role="3cqZAo" node="4GNx7T6Vwh$" resolve="progressMonitor" />
                </node>
              </node>
              <node concept="37vLTw" id="5z_gLGerhf1" role="37vLTJ">
                <ref role="3cqZAo" node="5z_gLGerhdn" resolve="changes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="_YKpA" id="5SvlHWogXzu" role="3clF45">
          <node concept="_YKpA" id="5z_gLGerhf2" role="_ZDj9">
            <node concept="3uibUv" id="5z_gLGerhf3" role="_ZDj9">
              <ref role="3uigEE" node="3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
              <node concept="16syzq" id="5z_gLGerhf4" role="11_B2D">
                <ref role="16sUi3" node="5z_gLGerhg3" resolve="I" />
              </node>
              <node concept="16syzq" id="5z_gLGerhf5" role="11_B2D">
                <ref role="16sUi3" node="5z_gLGerhg4" resolve="F" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7ram9htaYCu" role="jymVt" />
      <node concept="3clFb_" id="1FSMaHeclvL" role="jymVt">
        <property role="TrG5h" value="mapNotNull" />
        <node concept="37vLTG" id="1FSMaHeclRm" role="3clF46">
          <property role="TrG5h" value="arguments" />
          <node concept="_YKpA" id="1FSMaHeclXS" role="1tU5fm">
            <node concept="16syzq" id="1FSMaHecmaU" role="_ZDj9">
              <ref role="16sUi3" node="1FSMaHeclKJ" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1FSMaHecmaX" role="3clF46">
          <property role="TrG5h" value="notNullMapFunc" />
          <node concept="1ajhzC" id="1FSMaHecmo0" role="1tU5fm">
            <node concept="_YKpA" id="1FSMaHecmM5" role="1ajl9A">
              <node concept="16syzq" id="1FSMaHecmSD" role="_ZDj9">
                <ref role="16sUi3" node="1FSMaHeclKM" resolve="S" />
              </node>
            </node>
            <node concept="_YKpA" id="1FSMaHecm_2" role="1ajw0F">
              <node concept="16syzq" id="1FSMaHecmF$" role="_ZDj9">
                <ref role="16sUi3" node="1FSMaHeclKJ" resolve="T" />
              </node>
            </node>
          </node>
        </node>
        <node concept="_YKpA" id="1FSMaHeclE6" role="3clF45">
          <node concept="16syzq" id="1FSMaHeclRj" role="_ZDj9">
            <ref role="16sUi3" node="1FSMaHeclKM" resolve="S" />
          </node>
        </node>
        <node concept="3Tm6S6" id="7ram9htaSUh" role="1B3o_S" />
        <node concept="3clFbS" id="1FSMaHeclvP" role="3clF47">
          <node concept="3cpWs8" id="1FSMaHecDbe" role="3cqZAp">
            <node concept="3cpWsn" id="1FSMaHecDbh" role="3cpWs9">
              <property role="TrG5h" value="filteredResult" />
              <node concept="_YKpA" id="1FSMaHecDba" role="1tU5fm">
                <node concept="16syzq" id="1FSMaHecDit" role="_ZDj9">
                  <ref role="16sUi3" node="1FSMaHeclKM" resolve="S" />
                </node>
              </node>
              <node concept="2Sg_IR" id="1FSMaHecIKw" role="33vP2m">
                <node concept="2OqwBi" id="1FSMaHed6dh" role="2SgHGx">
                  <node concept="2OqwBi" id="1FSMaHecEBk" role="2Oq$k0">
                    <node concept="37vLTw" id="1FSMaHecDKB" role="2Oq$k0">
                      <ref role="3cqZAo" node="1FSMaHeclRm" resolve="arguments" />
                    </node>
                    <node concept="3zZkjj" id="1FSMaHecGBC" role="2OqNvi">
                      <node concept="1bVj0M" id="1FSMaHecGBE" role="23t8la">
                        <node concept="3clFbS" id="1FSMaHecGBF" role="1bW5cS">
                          <node concept="3clFbF" id="1FSMaHecH0$" role="3cqZAp">
                            <node concept="3y3z36" id="1FSMaHecHbz" role="3clFbG">
                              <node concept="10Nm6u" id="1FSMaHecHzM" role="3uHU7w" />
                              <node concept="37vLTw" id="1FSMaHecH0z" role="3uHU7B">
                                <ref role="3cqZAo" node="5W7E4fV0Xaa" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0Xaa" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5W7E4fV0Xab" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="ANE8D" id="1FSMaHed6$E" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="1FSMaHecIKx" role="2SgG2M">
                  <ref role="3cqZAo" node="1FSMaHecmaX" resolve="notNullMapFunc" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1FSMaHecni6" role="3cqZAp">
            <node concept="3cpWsn" id="1FSMaHecni9" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="_YKpA" id="1FSMaHecni4" role="1tU5fm">
                <node concept="16syzq" id="1FSMaHecnvb" role="_ZDj9">
                  <ref role="16sUi3" node="1FSMaHeclKM" resolve="S" />
                </node>
              </node>
              <node concept="2ShNRf" id="1FSMaHecnIj" role="33vP2m">
                <node concept="Tc6Ow" id="1FSMaHecnET" role="2ShVmc">
                  <node concept="16syzq" id="1FSMaHecnEU" role="HW$YZ">
                    <ref role="16sUi3" node="1FSMaHeclKM" resolve="S" />
                  </node>
                  <node concept="2OqwBi" id="1FSMaHecqkT" role="3lWHg$">
                    <node concept="37vLTw" id="1FSMaHecorg" role="2Oq$k0">
                      <ref role="3cqZAo" node="1FSMaHeclRm" resolve="arguments" />
                    </node>
                    <node concept="34oBXx" id="1FSMaHecrla" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1FSMaHec_Hg" role="3cqZAp">
            <node concept="3cpWsn" id="1FSMaHec_Hj" role="3cpWs9">
              <property role="TrG5h" value="j" />
              <node concept="10Oyi0" id="1FSMaHec_He" role="1tU5fm" />
              <node concept="3cmrfG" id="1FSMaHec_WQ" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="1FSMaHeg0C5" role="3cqZAp">
            <node concept="3clFbS" id="1FSMaHeg0C7" role="2LFqv$">
              <node concept="3clFbF" id="1FSMaHefSUm" role="3cqZAp">
                <node concept="2OqwBi" id="1FSMaHefUnv" role="3clFbG">
                  <node concept="37vLTw" id="1FSMaHefSUk" role="2Oq$k0">
                    <ref role="3cqZAo" node="1FSMaHecni9" resolve="result" />
                  </node>
                  <node concept="TSZUe" id="1FSMaHefWmW" role="2OqNvi">
                    <node concept="3K4zz7" id="1FSMaHeg3K_" role="25WWJ7">
                      <node concept="3clFbC" id="1FSMaHeg4Qx" role="3K4Cdx">
                        <node concept="10Nm6u" id="1FSMaHeg55$" role="3uHU7w" />
                        <node concept="37vLTw" id="1FSMaHeg4G$" role="3uHU7B">
                          <ref role="3cqZAo" node="1FSMaHeg0C8" resolve="v" />
                        </node>
                      </node>
                      <node concept="10Nm6u" id="1FSMaHeg4t_" role="3K4E3e" />
                      <node concept="1y4W85" id="dzFXf_wrsW" role="3K4GZi">
                        <node concept="37vLTw" id="1FSMaHee1mP" role="1y566C">
                          <ref role="3cqZAo" node="1FSMaHecDbh" resolve="filteredResult" />
                        </node>
                        <node concept="3uNrnE" id="1FSMaHecNaU" role="1y58nS">
                          <node concept="37vLTw" id="1FSMaHecNaW" role="2$L3a6">
                            <ref role="3cqZAo" node="1FSMaHec_Hj" resolve="j" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="1FSMaHeg0C8" role="1Duv9x">
              <property role="TrG5h" value="v" />
              <node concept="16syzq" id="1FSMaHeg20X" role="1tU5fm">
                <ref role="16sUi3" node="1FSMaHeclKJ" resolve="T" />
              </node>
            </node>
            <node concept="37vLTw" id="1FSMaHeg0YJ" role="1DdaDG">
              <ref role="3cqZAo" node="1FSMaHeclRm" resolve="arguments" />
            </node>
          </node>
          <node concept="3cpWs6" id="1FSMaHecO8G" role="3cqZAp">
            <node concept="37vLTw" id="1FSMaHecOoI" role="3cqZAk">
              <ref role="3cqZAo" node="1FSMaHecni9" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="1FSMaHeclKJ" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
        <node concept="16euLQ" id="1FSMaHeclKM" role="16eVyc">
          <property role="TrG5h" value="S" />
        </node>
      </node>
      <node concept="3clFb_" id="5z_gLGerhf6" role="jymVt">
        <property role="TrG5h" value="initChanges" />
        <node concept="37vLTG" id="5z_gLGerhf7" role="3clF46">
          <property role="TrG5h" value="repository" />
          <node concept="3uibUv" id="5z_gLGerhf8" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
        </node>
        <node concept="37vLTG" id="5z_gLGerhf9" role="3clF46">
          <property role="TrG5h" value="selectedOptions" />
          <node concept="_YKpA" id="5z_gLGerhfa" role="1tU5fm">
            <node concept="3uibUv" id="5z_gLGerhfb" role="_ZDj9">
              <ref role="3uigEE" node="37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="5z_gLGerhfc" role="3clF46">
          <property role="TrG5h" value="searchScope" />
          <node concept="3uibUv" id="5z_gLGerhfd" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SearchScope" resolve="SearchScope" />
          </node>
        </node>
        <node concept="37vLTG" id="4GNx7T6Vy6X" role="3clF46">
          <property role="TrG5h" value="progressMonitor" />
          <node concept="3uibUv" id="4GNx7T6VzaH" role="1tU5fm">
            <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
          </node>
        </node>
        <node concept="3Tm6S6" id="7ram9htnYqr" role="1B3o_S" />
        <node concept="3clFbS" id="5z_gLGerhff" role="3clF47">
          <node concept="3clFbJ" id="7ram9htoFvZ" role="3cqZAp">
            <node concept="3clFbS" id="7ram9htoFw1" role="3clFbx">
              <node concept="3cpWs6" id="7ram9htp4dr" role="3cqZAp">
                <node concept="2YIFZM" id="7ram9htp9$x" role="3cqZAk">
                  <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <node concept="_YKpA" id="7ram9htp9$y" role="3PaCim">
                    <node concept="3uibUv" id="7ram9htp9$z" role="_ZDj9">
                      <ref role="3uigEE" node="3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
                      <node concept="16syzq" id="7ram9htp9$$" role="11_B2D">
                        <ref role="16sUi3" node="5z_gLGerhg3" resolve="I" />
                      </node>
                      <node concept="16syzq" id="7ram9htp9$_" role="11_B2D">
                        <ref role="16sUi3" node="5z_gLGerhg4" resolve="F" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7ram9htoPMI" role="3clFbw">
              <node concept="37vLTw" id="7ram9htoMvW" role="2Oq$k0">
                <ref role="3cqZAo" node="5z_gLGerhdk" resolve="myInitialStates" />
              </node>
              <node concept="1v1jN8" id="7ram9htoXL2" role="2OqNvi" />
            </node>
          </node>
          <node concept="3SKdUt" id="7ram9htqFPu" role="3cqZAp">
            <node concept="1PaTwC" id="7ram9htqFPv" role="1aUNEU">
              <node concept="3oM_SD" id="7ram9htqFPw" role="1PaTwD">
                <property role="3oM_SC" value="weird" />
              </node>
              <node concept="3oM_SD" id="7ram9httG8Q" role="1PaTwD">
                <property role="3oM_SC" value="!null" />
              </node>
              <node concept="3oM_SD" id="7ram9htqMX6" role="1PaTwD">
                <property role="3oM_SC" value="check" />
              </node>
              <node concept="3oM_SD" id="7ram9htqMXJ" role="1PaTwD">
                <property role="3oM_SC" value="for" />
              </node>
              <node concept="3oM_SD" id="7ram9htqMY0" role="1PaTwD">
                <property role="3oM_SC" value="applied" />
              </node>
              <node concept="3oM_SD" id="7ram9htqMYp" role="1PaTwD">
                <property role="3oM_SC" value="parents" />
              </node>
              <node concept="3oM_SD" id="7ram9htqMZ2" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="7ram9htqMZj" role="1PaTwD">
                <property role="3oM_SC" value="there" />
              </node>
              <node concept="3oM_SD" id="7ram9htqMZW" role="1PaTwD">
                <property role="3oM_SC" value="as" />
              </node>
              <node concept="3oM_SD" id="7ram9htqMZX" role="1PaTwD">
                <property role="3oM_SC" value="we" />
              </node>
              <node concept="3oM_SD" id="7ram9htqN0A" role="1PaTwD">
                <property role="3oM_SC" value="need" />
              </node>
              <node concept="3oM_SD" id="7ram9htqN0Z" role="1PaTwD">
                <property role="3oM_SC" value="top" />
              </node>
              <node concept="3oM_SD" id="7ram9htqN1S" role="1PaTwD">
                <property role="3oM_SC" value="RecursiveParticipant" />
              </node>
              <node concept="3oM_SD" id="7ram9htqN4L" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="7ram9htqN5G" role="1PaTwD">
                <property role="3oM_SC" value="go" />
              </node>
              <node concept="3oM_SD" id="7ram9htqN6l" role="1PaTwD">
                <property role="3oM_SC" value="through" />
              </node>
              <node concept="3oM_SD" id="7ram9htqNa6" role="1PaTwD">
                <property role="3oM_SC" value="5-arg" />
              </node>
              <node concept="3oM_SD" id="7ram9htqNaJ" role="1PaTwD">
                <property role="3oM_SC" value="getChanges" />
              </node>
              <node concept="3oM_SD" id="7ram9htqNd0" role="1PaTwD">
                <property role="3oM_SC" value="in" />
              </node>
              <node concept="3oM_SD" id="7ram9htqNd1" role="1PaTwD">
                <property role="3oM_SC" value="RefactoringParticipantBase," />
              </node>
              <node concept="3oM_SD" id="7ram9htqNhU" role="1PaTwD">
                <property role="3oM_SC" value="which" />
              </node>
              <node concept="3oM_SD" id="7ram9htqNij" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="7ram9htqV9I" role="3cqZAp">
            <node concept="1PaTwC" id="7ram9htqV9J" role="1aUNEU">
              <node concept="3oM_SD" id="7ram9htqV9K" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="7ram9htr2bo" role="1PaTwD">
                <property role="3oM_SC" value="busy" />
              </node>
              <node concept="3oM_SD" id="7ram9htr2dM" role="1PaTwD">
                <property role="3oM_SC" value="creating" />
              </node>
              <node concept="3oM_SD" id="7ram9htr2eb" role="1PaTwD">
                <property role="3oM_SC" value="necessary" />
              </node>
              <node concept="3oM_SD" id="7ram9htr2f4" role="1PaTwD">
                <property role="3oM_SC" value="sub-monitors," />
              </node>
              <node concept="3oM_SD" id="7ram9httGbf" role="1PaTwD">
                <property role="3oM_SC" value="and" />
              </node>
              <node concept="3oM_SD" id="7ram9httGbS" role="1PaTwD">
                <property role="3oM_SC" value="then" />
              </node>
              <node concept="3oM_SD" id="7ram9httGcx" role="1PaTwD">
                <property role="3oM_SC" value="hit" />
              </node>
              <node concept="3oM_SD" id="7ram9httGdy" role="1PaTwD">
                <property role="3oM_SC" value="MoveAspectsParticipant" />
              </node>
              <node concept="3oM_SD" id="7ram9httSPD" role="1PaTwD">
                <property role="3oM_SC" value="override" />
              </node>
              <node concept="3oM_SD" id="7ram9httSPE" role="1PaTwD">
                <property role="3oM_SC" value="with" />
              </node>
              <node concept="3oM_SD" id="7ram9httSQ3" role="1PaTwD">
                <property role="3oM_SC" value="empty" />
              </node>
              <node concept="3oM_SD" id="7ram9httSQs" role="1PaTwD">
                <property role="3oM_SC" value="list" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7ram9ht8Za2" role="3cqZAp">
            <node concept="3clFbS" id="7ram9ht8Za3" role="3clFbx">
              <node concept="3SKdUt" id="7ram9ht8Za4" role="3cqZAp">
                <node concept="1PaTwC" id="7ram9ht8Za5" role="1aUNEU">
                  <node concept="3oM_SD" id="7ram9ht8Za6" role="1PaTwD">
                    <property role="3oM_SC" value="Suppressed:" />
                  </node>
                  <node concept="3oM_SD" id="7ram9ht8Za7" role="1PaTwD">
                    <property role="3oM_SC" value="java" />
                  </node>
                  <node concept="3oM_SD" id="7ram9ht8Za8" role="1PaTwD">
                    <property role="3oM_SC" value="compiler" />
                  </node>
                  <node concept="3oM_SD" id="7ram9ht8Za9" role="1PaTwD">
                    <property role="3oM_SC" value="will" />
                  </node>
                  <node concept="3oM_SD" id="7ram9ht8Zaa" role="1PaTwD">
                    <property role="3oM_SC" value="ignore" />
                  </node>
                  <node concept="3oM_SD" id="7ram9ht8Zab" role="1PaTwD">
                    <property role="3oM_SC" value="generics" />
                  </node>
                  <node concept="3oM_SD" id="7ram9ht8Zac" role="1PaTwD">
                    <property role="3oM_SC" value="anyway," />
                  </node>
                  <node concept="3oM_SD" id="7ram9ht8Zad" role="1PaTwD">
                    <property role="3oM_SC" value="since" />
                  </node>
                  <node concept="3oM_SD" id="7ram9ht8Zae" role="1PaTwD">
                    <property role="3oM_SC" value="a" />
                  </node>
                  <node concept="3oM_SD" id="7ram9ht8Zaf" role="1PaTwD">
                    <property role="3oM_SC" value="raw" />
                  </node>
                  <node concept="3oM_SD" id="7ram9ht8Zag" role="1PaTwD">
                    <property role="3oM_SC" value="type" />
                  </node>
                  <node concept="3oM_SD" id="7ram9ht8Zah" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                  <node concept="3oM_SD" id="7ram9ht8Zai" role="1PaTwD">
                    <property role="3oM_SC" value="used" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="7ram9ht8Zaj" role="3cqZAp">
                <node concept="3clFbS" id="7ram9ht8Zak" role="3clFbx">
                  <node concept="3SKdUt" id="7ram9ht8Zal" role="3cqZAp">
                    <node concept="1PaTwC" id="7ram9ht8Zam" role="1aUNEU">
                      <node concept="3oM_SD" id="7ram9ht8Zan" role="1PaTwD">
                        <property role="3oM_SC" value="todo:" />
                      </node>
                      <node concept="3oM_SD" id="7ram9ht8Zao" role="1PaTwD">
                        <property role="3oM_SC" value="checked" />
                      </node>
                      <node concept="3oM_SD" id="7ram9ht8Zap" role="1PaTwD">
                        <property role="3oM_SC" value="exception" />
                      </node>
                    </node>
                  </node>
                  <node concept="YS8fn" id="7ram9ht8Zaq" role="3cqZAp">
                    <node concept="2ShNRf" id="7ram9ht8Zar" role="YScLw">
                      <node concept="1pGfFk" id="7ram9ht8Zas" role="2ShVmc">
                        <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                        <node concept="Xl_RD" id="7ram9ht8Zat" role="37wK5m">
                          <property role="Xl_RC" value="infinite recursion detected" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7ram9ht8Zau" role="3clFbw">
                  <node concept="37vLTw" id="7ram9ht8Zav" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ram9ht5IhF" resolve="myAppliedParents" />
                  </node>
                  <node concept="2HwmR7" id="7ram9ht8Zaw" role="2OqNvi">
                    <node concept="1bVj0M" id="7ram9ht8Zax" role="23t8la">
                      <node concept="3clFbS" id="7ram9ht8Zay" role="1bW5cS">
                        <node concept="3clFbF" id="7ram9ht8Zaz" role="3cqZAp">
                          <node concept="15s5l7" id="7ram9ht8Za$" role="lGtFl">
                            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: type java.lang.Object is not a subtype of @RecursiveParticipantApplied.I&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c8959032b(jetbrains.mps.baseLanguage.collections.typesystem)/7668447476859120518]&quot;;" />
                            <property role="huDt6" value="Error: type java.lang.Object is not a subtype of @RecursiveParticipantApplied.I" />
                          </node>
                          <node concept="1Wc70l" id="7ram9ht8Za_" role="3clFbG">
                            <node concept="1Wc70l" id="7ram9ht8ZaA" role="3uHU7B">
                              <node concept="17R0WA" id="7ram9ht8ZaB" role="3uHU7B">
                                <node concept="2OqwBi" id="7ram9ht8ZaC" role="3uHU7B">
                                  <node concept="37vLTw" id="7ram9ht8ZaD" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7ram9ht8ZaY" resolve="parent" />
                                  </node>
                                  <node concept="liA8E" id="7ram9ht8ZaE" role="2OqNvi">
                                    <ref role="37wK5l" node="5z_gLGerhdA" resolve="getParticipant" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="7ram9ht8ZaF" role="3uHU7w">
                                  <node concept="Xjq3P" id="7ram9ht8ZaG" role="2Oq$k0" />
                                  <node concept="liA8E" id="7ram9ht8ZaH" role="2OqNvi">
                                    <ref role="37wK5l" node="5z_gLGerhdA" resolve="getParticipant" />
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="7ram9ht8ZaI" role="3uHU7w">
                                <node concept="2OqwBi" id="7ram9ht8ZaJ" role="2Oq$k0">
                                  <node concept="37vLTw" id="7ram9ht8ZaK" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7ram9ht8ZaY" resolve="parent" />
                                  </node>
                                  <node concept="liA8E" id="7ram9ht8ZaL" role="2OqNvi">
                                    <ref role="37wK5l" node="5z_gLGerhdI" resolve="getInitialStates" />
                                  </node>
                                </node>
                                <node concept="BjQpj" id="7ram9ht8ZaM" role="2OqNvi">
                                  <node concept="2OqwBi" id="7ram9ht8ZaN" role="25WWJ7">
                                    <node concept="Xjq3P" id="7ram9ht8ZaO" role="2Oq$k0" />
                                    <node concept="liA8E" id="7ram9ht8ZaP" role="2OqNvi">
                                      <ref role="37wK5l" node="5z_gLGerhdI" resolve="getInitialStates" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="7ram9ht8ZaQ" role="3uHU7w">
                              <node concept="BjQpj" id="7ram9ht8ZaR" role="2OqNvi">
                                <node concept="2OqwBi" id="7ram9ht8ZaS" role="25WWJ7">
                                  <node concept="37vLTw" id="7ram9ht8ZaT" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7ram9ht8ZaY" resolve="parent" />
                                  </node>
                                  <node concept="liA8E" id="7ram9ht8ZaU" role="2OqNvi">
                                    <ref role="37wK5l" node="5z_gLGerhdI" resolve="getInitialStates" />
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="7ram9ht8ZaV" role="2Oq$k0">
                                <node concept="Xjq3P" id="7ram9ht8ZaW" role="2Oq$k0" />
                                <node concept="liA8E" id="7ram9ht8ZaX" role="2OqNvi">
                                  <ref role="37wK5l" node="5z_gLGerhdI" resolve="getInitialStates" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="7ram9ht8ZaY" role="1bW2Oz">
                        <property role="TrG5h" value="parent" />
                        <node concept="2jxLKc" id="7ram9ht8ZaZ" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="7ram9ht8Zb0" role="9aQIa">
                  <node concept="3clFbS" id="7ram9ht8Zb1" role="9aQI4">
                    <node concept="3cpWs6" id="7ram9ht8Zb2" role="3cqZAp">
                      <node concept="1rXfSq" id="7ram9ht8Zb3" role="3cqZAk">
                        <ref role="37wK5l" node="1FSMaHeclvL" resolve="mapNotNull" />
                        <node concept="37vLTw" id="7ram9htouUz" role="37wK5m">
                          <ref role="3cqZAo" node="5z_gLGerhdk" resolve="myInitialStates" />
                        </node>
                        <node concept="1bVj0M" id="7ram9ht8Zb5" role="37wK5m">
                          <node concept="37vLTG" id="7ram9ht8Zb6" role="1bW2Oz">
                            <property role="TrG5h" value="initialStates" />
                            <node concept="_YKpA" id="7ram9ht8Zb7" role="1tU5fm">
                              <node concept="16syzq" id="7ram9ht8Zb8" role="_ZDj9">
                                <ref role="16sUi3" node="5z_gLGerhg3" resolve="I" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="7ram9ht8Zba" role="1bW5cS">
                            <node concept="3clFbF" id="7ram9ht8Zbb" role="3cqZAp">
                              <node concept="2OqwBi" id="7ram9ht8Zbc" role="3clFbG">
                                <node concept="liA8E" id="7ram9ht8Zbd" role="2OqNvi">
                                  <ref role="37wK5l" node="112yVMIEMz4" resolve="getChanges" />
                                  <node concept="37vLTw" id="7ram9ht8Zbe" role="37wK5m">
                                    <ref role="3cqZAo" node="7ram9ht8Zb6" resolve="initialStates" />
                                  </node>
                                  <node concept="37vLTw" id="7ram9ht8Zbf" role="37wK5m">
                                    <ref role="3cqZAo" node="5z_gLGerhf7" resolve="repository" />
                                  </node>
                                  <node concept="37vLTw" id="7ram9ht8Zbg" role="37wK5m">
                                    <ref role="3cqZAo" node="5z_gLGerhf9" resolve="selectedOptions" />
                                  </node>
                                  <node concept="37vLTw" id="7ram9ht8Zbh" role="37wK5m">
                                    <ref role="3cqZAo" node="5z_gLGerhfc" resolve="searchScope" />
                                  </node>
                                  <node concept="37vLTw" id="7ram9ht8Zbi" role="37wK5m">
                                    <ref role="3cqZAo" node="4GNx7T6Vy6X" resolve="progressMonitor" />
                                  </node>
                                  <node concept="2OqwBi" id="7ram9ht8Zbj" role="37wK5m">
                                    <node concept="37vLTw" id="7ram9ht8Zbk" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7ram9ht5IhF" resolve="myAppliedParents" />
                                    </node>
                                    <node concept="3QWeyG" id="7ram9ht8Zbl" role="2OqNvi">
                                      <node concept="2ShNRf" id="7ram9ht8Zbm" role="576Qk">
                                        <node concept="2HTt$P" id="7ram9ht8Zbn" role="2ShVmc">
                                          <node concept="Xjq3P" id="7ram9ht8Zbo" role="2HTEbv" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="1eOMI4" id="7ram9ht8Zbq" role="2Oq$k0">
                                  <node concept="10QFUN" id="7ram9ht8Zbr" role="1eOMHV">
                                    <node concept="37vLTw" id="7ram9htollL" role="10QFUP">
                                      <ref role="3cqZAo" node="5z_gLGerhdf" resolve="myParticipant" />
                                    </node>
                                    <node concept="3uibUv" id="7ram9ht8Zbt" role="10QFUM">
                                      <ref role="3uigEE" node="112yVMI_Pcd" resolve="RecursiveParticipant" />
                                      <node concept="16syzq" id="7ram9ht8Zbu" role="11_B2D">
                                        <ref role="16sUi3" node="5z_gLGerhg3" resolve="I" />
                                      </node>
                                      <node concept="16syzq" id="7ram9ht8Zbv" role="11_B2D">
                                        <ref role="16sUi3" node="5z_gLGerhg4" resolve="F" />
                                      </node>
                                      <node concept="3qTvmN" id="1zEfp2qDATp" role="11_B2D" />
                                      <node concept="3qTvmN" id="1zEfp2qDFSz" role="11_B2D" />
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
            <node concept="1Wc70l" id="7ram9htqaSS" role="3clFbw">
              <node concept="2ZW3vV" id="7ram9ht8Zby" role="3uHU7w">
                <node concept="3uibUv" id="7ram9ht8Zbz" role="2ZW6by">
                  <ref role="3uigEE" node="112yVMI_Pcd" resolve="RecursiveParticipant" />
                </node>
                <node concept="37vLTw" id="7ram9htocnl" role="2ZW6bz">
                  <ref role="3cqZAo" node="5z_gLGerhdf" resolve="myParticipant" />
                </node>
              </node>
              <node concept="3y3z36" id="7ram9httv4A" role="3uHU7B">
                <node concept="37vLTw" id="7ram9htqjkz" role="3uHU7B">
                  <ref role="3cqZAo" node="7ram9ht5IhF" resolve="myAppliedParents" />
                </node>
                <node concept="10Nm6u" id="7ram9httotL" role="3uHU7w" />
              </node>
            </node>
            <node concept="9aQIb" id="7ram9ht8Zb_" role="9aQIa">
              <node concept="3clFbS" id="7ram9ht8ZbA" role="9aQI4">
                <node concept="3cpWs6" id="7ram9htbd3t" role="3cqZAp">
                  <node concept="1rXfSq" id="1FSMaHeeV8l" role="3cqZAk">
                    <ref role="37wK5l" node="1FSMaHeclvL" resolve="mapNotNull" />
                    <node concept="37vLTw" id="1FSMaHeeVTS" role="37wK5m">
                      <ref role="3cqZAo" node="5z_gLGerhdk" resolve="myInitialStates" />
                    </node>
                    <node concept="1bVj0M" id="1FSMaHeeWIz" role="37wK5m">
                      <node concept="37vLTG" id="1FSMaHeeX8$" role="1bW2Oz">
                        <property role="TrG5h" value="initialStates" />
                        <node concept="_YKpA" id="1FSMaHeeXgm" role="1tU5fm">
                          <node concept="16syzq" id="1FSMaHeeXAq" role="_ZDj9">
                            <ref role="16sUi3" node="5z_gLGerhg3" resolve="I" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="1FSMaHeeWI_" role="1bW5cS">
                        <node concept="3clFbF" id="1FSMaHeeYhP" role="3cqZAp">
                          <node concept="2OqwBi" id="5z_gLGerhfh" role="3clFbG">
                            <node concept="37vLTw" id="5z_gLGerhfi" role="2Oq$k0">
                              <ref role="3cqZAo" node="5z_gLGerhdf" resolve="myParticipant" />
                            </node>
                            <node concept="liA8E" id="5z_gLGerhfj" role="2OqNvi">
                              <ref role="37wK5l" node="3KqYwoBIKej" resolve="getChanges" />
                              <node concept="37vLTw" id="1FSMaHeg5zu" role="37wK5m">
                                <ref role="3cqZAo" node="1FSMaHeeX8$" resolve="initialStates" />
                              </node>
                              <node concept="37vLTw" id="5z_gLGerhfl" role="37wK5m">
                                <ref role="3cqZAo" node="5z_gLGerhf7" resolve="repository" />
                              </node>
                              <node concept="37vLTw" id="5z_gLGerhfm" role="37wK5m">
                                <ref role="3cqZAo" node="5z_gLGerhf9" resolve="selectedOptions" />
                              </node>
                              <node concept="37vLTw" id="5z_gLGerhfn" role="37wK5m">
                                <ref role="3cqZAo" node="5z_gLGerhfc" resolve="searchScope" />
                              </node>
                              <node concept="37vLTw" id="4GNx7T6VzZL" role="37wK5m">
                                <ref role="3cqZAo" node="4GNx7T6Vy6X" resolve="progressMonitor" />
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
        <node concept="_YKpA" id="5SvlHWogQ9A" role="3clF45">
          <node concept="_YKpA" id="5z_gLGerhfo" role="_ZDj9">
            <node concept="3uibUv" id="5z_gLGerhfp" role="_ZDj9">
              <ref role="3uigEE" node="3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
              <node concept="16syzq" id="5z_gLGerhfq" role="11_B2D">
                <ref role="16sUi3" node="5z_gLGerhg3" resolve="I" />
              </node>
              <node concept="16syzq" id="5z_gLGerhfr" role="11_B2D">
                <ref role="16sUi3" node="5z_gLGerhg4" resolve="F" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5z_gLGerhg2" role="1B3o_S" />
      <node concept="16euLQ" id="5z_gLGerhg3" role="16eVyc">
        <property role="TrG5h" value="I" />
      </node>
      <node concept="16euLQ" id="5z_gLGerhg4" role="16eVyc">
        <property role="TrG5h" value="F" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3KqYwoBIxpG" role="1B3o_S" />
    <node concept="16euLQ" id="3KqYwoBIHZv" role="16eVyc">
      <property role="TrG5h" value="InitialDataObject" />
    </node>
    <node concept="16euLQ" id="3KqYwoBIHZz" role="16eVyc">
      <property role="TrG5h" value="FinalDataObject" />
    </node>
    <node concept="16euLQ" id="5z_gLGeqMhg" role="16eVyc">
      <property role="TrG5h" value="InitialPoint" />
    </node>
    <node concept="16euLQ" id="5z_gLGeqMJ5" role="16eVyc">
      <property role="TrG5h" value="FinalPoint" />
    </node>
  </node>
  <node concept="312cEu" id="4GNx7T6VEiw">
    <property role="TrG5h" value="RefactoringParticipantBase" />
    <property role="1sVAO0" value="true" />
    <node concept="3clFb_" id="4GNx7T6VFNy" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getChanges" />
      <node concept="37vLTG" id="4GNx7T6VFNz" role="3clF46">
        <property role="TrG5h" value="initialStates" />
        <node concept="_YKpA" id="5SvlHWohf4U" role="1tU5fm">
          <node concept="16syzq" id="5SvlHWohfYS" role="_ZDj9">
            <ref role="16sUi3" node="4GNx7T6VFaU" resolve="InitialDataObject" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4GNx7T6VFN_" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="4GNx7T6VFNA" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="4GNx7T6VFNB" role="3clF46">
        <property role="TrG5h" value="selectedOptions" />
        <node concept="_YKpA" id="4GNx7T6VFNC" role="1tU5fm">
          <node concept="3uibUv" id="4GNx7T6VFND" role="_ZDj9">
            <ref role="3uigEE" node="37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4GNx7T6VFNE" role="3clF46">
        <property role="TrG5h" value="searchScope" />
        <node concept="3uibUv" id="4GNx7T6VFNF" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SearchScope" resolve="SearchScope" />
        </node>
      </node>
      <node concept="37vLTG" id="4GNx7T6VFNG" role="3clF46">
        <property role="TrG5h" value="progressMonitor" />
        <node concept="3uibUv" id="4GNx7T6VFNH" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4GNx7T6VFNI" role="1B3o_S" />
      <node concept="3clFbS" id="4GNx7T6VFNR" role="3clF47">
        <node concept="3cpWs8" id="5SvlHWoe1BY" role="3cqZAp">
          <node concept="3cpWsn" id="5SvlHWoe1BZ" role="3cpWs9">
            <property role="TrG5h" value="firstOption" />
            <node concept="3uibUv" id="5SvlHWoe1BW" role="1tU5fm">
              <ref role="3uigEE" node="37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
            </node>
            <node concept="2OqwBi" id="5SvlHWoe1C0" role="33vP2m">
              <node concept="1rXfSq" id="5SvlHWoe1C1" role="2Oq$k0">
                <ref role="37wK5l" node="5SvlHWohSEC" resolve="getAvailableOptions" />
                <node concept="37vLTw" id="5SvlHWoe1C2" role="37wK5m">
                  <ref role="3cqZAo" node="4GNx7T6VFNz" resolve="initialStates" />
                </node>
                <node concept="37vLTw" id="5SvlHWoe1C3" role="37wK5m">
                  <ref role="3cqZAo" node="4GNx7T6VFN_" resolve="repository" />
                </node>
              </node>
              <node concept="1uHKPH" id="5SvlHWoe1C4" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5SvlHWodTQj" role="3cqZAp">
          <node concept="2OqwBi" id="5SvlHWodU8H" role="3clFbG">
            <node concept="37vLTw" id="5SvlHWodTQh" role="2Oq$k0">
              <ref role="3cqZAo" node="4GNx7T6VFNG" resolve="progressMonitor" />
            </node>
            <node concept="liA8E" id="5SvlHWodUfi" role="2OqNvi">
              <ref role="37wK5l" to="yyf4:~ProgressMonitor.start(java.lang.String,int)" resolve="start" />
              <node concept="3K4zz7" id="5SvlHWoe2Id" role="37wK5m">
                <node concept="Xl_RD" id="5SvlHWoe366" role="3K4E3e">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="2OqwBi" id="5SvlHWoe3Ft" role="3K4GZi">
                  <node concept="37vLTw" id="5SvlHWoe3i4" role="2Oq$k0">
                    <ref role="3cqZAo" node="5SvlHWoe1BZ" resolve="firstOption" />
                  </node>
                  <node concept="liA8E" id="5SvlHWoe3IW" role="2OqNvi">
                    <ref role="37wK5l" node="37Il31hWTci" resolve="getDescription" />
                  </node>
                </node>
                <node concept="3clFbC" id="5SvlHWoe2kC" role="3K4Cdx">
                  <node concept="10Nm6u" id="5SvlHWoe2wX" role="3uHU7w" />
                  <node concept="37vLTw" id="5SvlHWoe1C5" role="3uHU7B">
                    <ref role="3cqZAo" node="5SvlHWoe1BZ" resolve="firstOption" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="29vfC50QnOw" role="37wK5m">
                <node concept="37vLTw" id="29vfC50Qnqu" role="2Oq$k0">
                  <ref role="3cqZAo" node="4GNx7T6VFNz" resolve="initialStates" />
                </node>
                <node concept="34oBXx" id="29vfC50QotZ" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4GNx7T6VV67" role="3cqZAp">
          <node concept="3cpWsn" id="4GNx7T6VV68" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="5SvlHWohs3z" role="1tU5fm">
              <node concept="_YKpA" id="4GNx7T6VV5Q" role="_ZDj9">
                <node concept="3uibUv" id="4GNx7T6VV61" role="_ZDj9">
                  <ref role="3uigEE" node="3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
                  <node concept="16syzq" id="4GNx7T6VV62" role="11_B2D">
                    <ref role="16sUi3" node="4GNx7T6VFaU" resolve="InitialDataObject" />
                  </node>
                  <node concept="16syzq" id="4GNx7T6VV63" role="11_B2D">
                    <ref role="16sUi3" node="4GNx7T6VFaV" resolve="FinalDataObject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="29vfC50QrUM" role="33vP2m">
              <node concept="Tc6Ow" id="29vfC50QrAV" role="2ShVmc">
                <node concept="2OqwBi" id="29vfC50QE1L" role="3lWHg$">
                  <node concept="37vLTw" id="29vfC50QDeA" role="2Oq$k0">
                    <ref role="3cqZAo" node="4GNx7T6VFNz" resolve="initialStates" />
                  </node>
                  <node concept="34oBXx" id="29vfC50QF71" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7ram9htVsVl" role="3cqZAp">
          <node concept="3cpWsn" id="7ram9htVsVm" role="3cpWs9">
            <property role="TrG5h" value="emptyList" />
            <property role="3TUv4t" value="true" />
            <node concept="_YKpA" id="7ram9htVrPS" role="1tU5fm">
              <node concept="3uibUv" id="7ram9htVrQ3" role="_ZDj9">
                <ref role="3uigEE" node="3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
                <node concept="16syzq" id="7ram9htVrQ4" role="11_B2D">
                  <ref role="16sUi3" node="4GNx7T6VFaU" resolve="InitialDataObject" />
                </node>
                <node concept="16syzq" id="7ram9htVrQ5" role="11_B2D">
                  <ref role="16sUi3" node="4GNx7T6VFaV" resolve="FinalDataObject" />
                </node>
              </node>
              <node concept="2yE$l8" id="7ram9htVrQ6" role="lGtFl" />
            </node>
            <node concept="2ShNRf" id="7ram9htVsVn" role="33vP2m">
              <node concept="Tc6Ow" id="7ram9htVsVo" role="2ShVmc" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="29vfC50QyrW" role="3cqZAp">
          <node concept="2GrKxI" id="29vfC50QyrY" role="2Gsz3X">
            <property role="TrG5h" value="initialState" />
          </node>
          <node concept="3clFbS" id="29vfC50Qys0" role="2LFqv$">
            <node concept="3clFbJ" id="29vfC50QJZF" role="3cqZAp">
              <node concept="3clFbS" id="29vfC50QJZG" role="3clFbx">
                <node concept="3clFbF" id="7ram9htUCnB" role="3cqZAp">
                  <node concept="2OqwBi" id="7ram9htUEXI" role="3clFbG">
                    <node concept="37vLTw" id="7ram9htUCn_" role="2Oq$k0">
                      <ref role="3cqZAo" node="4GNx7T6VV68" resolve="result" />
                    </node>
                    <node concept="TSZUe" id="7ram9htUJ9f" role="2OqNvi">
                      <node concept="37vLTw" id="7ram9htVsVp" role="25WWJ7">
                        <ref role="3cqZAo" node="7ram9htVsVm" resolve="emptyList" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="7ram9htV7bQ" role="3cqZAp">
                  <node concept="1PaTwC" id="7ram9htV7bR" role="1aUNEU">
                    <node concept="3oM_SD" id="7ram9htV7bS" role="1PaTwD">
                      <property role="3oM_SC" value="sic!" />
                    </node>
                    <node concept="3oM_SD" id="7ram9htVbNb" role="1PaTwD">
                      <property role="3oM_SC" value="Fulfil" />
                    </node>
                    <node concept="3oM_SD" id="7ram9htVbOt" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="7ram9htVbP6" role="1PaTwD">
                      <property role="3oM_SC" value="contract," />
                    </node>
                    <node concept="3oM_SD" id="7ram9htVGfS" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="7ram9htVGgx" role="1PaTwD">
                      <property role="3oM_SC" value="method" />
                    </node>
                    <node concept="3oM_SD" id="7ram9htVGgU" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="7ram9htVGhb" role="1PaTwD">
                      <property role="3oM_SC" value="expected" />
                    </node>
                    <node concept="3oM_SD" id="7ram9htVGiG" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="7ram9htVGiH" role="1PaTwD">
                      <property role="3oM_SC" value="return" />
                    </node>
                    <node concept="3oM_SD" id="7ram9htVGjm" role="1PaTwD">
                      <property role="3oM_SC" value="list" />
                    </node>
                    <node concept="3oM_SD" id="7ram9htVGjZ" role="1PaTwD">
                      <property role="3oM_SC" value="of" />
                    </node>
                    <node concept="3oM_SD" id="7ram9htVGk0" role="1PaTwD">
                      <property role="3oM_SC" value="size" />
                    </node>
                    <node concept="3oM_SD" id="7ram9htVGkD" role="1PaTwD">
                      <property role="3oM_SC" value="matching" />
                    </node>
                    <node concept="3oM_SD" id="7ram9htVGlU" role="1PaTwD">
                      <property role="3oM_SC" value="that" />
                    </node>
                    <node concept="3oM_SD" id="7ram9htVGmb" role="1PaTwD">
                      <property role="3oM_SC" value="of" />
                    </node>
                    <node concept="3oM_SD" id="7ram9htVGmc" role="1PaTwD">
                      <property role="3oM_SC" value="initialStates!" />
                    </node>
                  </node>
                </node>
                <node concept="3N13vt" id="7ram9htV3X9" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="29vfC50QJZM" role="3clFbw">
                <node concept="37vLTw" id="29vfC50QJZN" role="2Oq$k0">
                  <ref role="3cqZAo" node="4GNx7T6VFNG" resolve="progressMonitor" />
                </node>
                <node concept="liA8E" id="29vfC50QJZO" role="2OqNvi">
                  <ref role="37wK5l" to="yyf4:~ProgressMonitor.isCanceled()" resolve="isCanceled" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5SvlHWohJqz" role="3cqZAp">
              <node concept="2OqwBi" id="29vfC50QAZP" role="3clFbG">
                <node concept="37vLTw" id="29vfC50QAtP" role="2Oq$k0">
                  <ref role="3cqZAo" node="4GNx7T6VV68" resolve="result" />
                </node>
                <node concept="TSZUe" id="29vfC50QBEZ" role="2OqNvi">
                  <node concept="1rXfSq" id="4GNx7T6YY$n" role="25WWJ7">
                    <ref role="37wK5l" node="5SvlHWohwSM" resolve="getChanges" />
                    <node concept="2GrUjf" id="29vfC50Q$VR" role="37wK5m">
                      <ref role="2Gs0qQ" node="29vfC50QyrY" resolve="initialState" />
                    </node>
                    <node concept="37vLTw" id="4GNx7T6YY$p" role="37wK5m">
                      <ref role="3cqZAo" node="4GNx7T6VFN_" resolve="repository" />
                    </node>
                    <node concept="37vLTw" id="4GNx7T6YY$q" role="37wK5m">
                      <ref role="3cqZAo" node="4GNx7T6VFNB" resolve="selectedOptions" />
                    </node>
                    <node concept="37vLTw" id="4GNx7T6YY$r" role="37wK5m">
                      <ref role="3cqZAo" node="4GNx7T6VFNE" resolve="searchScope" />
                    </node>
                    <node concept="2OqwBi" id="7ZzFP$JCTRL" role="37wK5m">
                      <node concept="37vLTw" id="7ZzFP$JCQ4J" role="2Oq$k0">
                        <ref role="3cqZAo" node="4GNx7T6VFNG" resolve="progressMonitor" />
                      </node>
                      <node concept="liA8E" id="7ZzFP$JCUMM" role="2OqNvi">
                        <ref role="37wK5l" to="yyf4:~ProgressMonitor.subTask(int)" resolve="subTask" />
                        <node concept="3cmrfG" id="7ZzFP$JCVKU" role="37wK5m">
                          <property role="3cmrfH" value="1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="29vfC50QzsB" role="2GsD0m">
            <ref role="3cqZAo" node="4GNx7T6VFNz" resolve="initialStates" />
          </node>
        </node>
        <node concept="3clFbF" id="4GNx7T6VUAm" role="3cqZAp">
          <node concept="2OqwBi" id="4GNx7T6VUP1" role="3clFbG">
            <node concept="37vLTw" id="4GNx7T6VUAk" role="2Oq$k0">
              <ref role="3cqZAo" node="4GNx7T6VFNG" resolve="progressMonitor" />
            </node>
            <node concept="liA8E" id="4GNx7T6VUWJ" role="2OqNvi">
              <ref role="37wK5l" to="yyf4:~ProgressMonitor.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4GNx7T6VXlu" role="3cqZAp">
          <node concept="37vLTw" id="4GNx7T6VXNt" role="3cqZAk">
            <ref role="3cqZAo" node="4GNx7T6VV68" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="5SvlHWohhhy" role="3clF45">
        <node concept="_YKpA" id="4GNx7T6VFNK" role="_ZDj9">
          <node concept="3uibUv" id="4GNx7T6VFNL" role="_ZDj9">
            <ref role="3uigEE" node="3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
            <node concept="16syzq" id="4GNx7T6VFNO" role="11_B2D">
              <ref role="16sUi3" node="4GNx7T6VFaU" resolve="InitialDataObject" />
            </node>
            <node concept="16syzq" id="4GNx7T6VFNP" role="11_B2D">
              <ref role="16sUi3" node="4GNx7T6VFaV" resolve="FinalDataObject" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5SvlHWohwSM" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getChanges" />
      <node concept="37vLTG" id="5SvlHWohwSN" role="3clF46">
        <property role="TrG5h" value="initialState" />
        <node concept="16syzq" id="5SvlHWohwSP" role="1tU5fm">
          <ref role="16sUi3" node="4GNx7T6VFaU" resolve="InitialDataObject" />
        </node>
      </node>
      <node concept="37vLTG" id="5SvlHWohwSQ" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="5SvlHWohwSR" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="5SvlHWohwSS" role="3clF46">
        <property role="TrG5h" value="selectedOptions" />
        <node concept="_YKpA" id="5SvlHWohwST" role="1tU5fm">
          <node concept="3uibUv" id="5SvlHWohwSU" role="_ZDj9">
            <ref role="3uigEE" node="37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5SvlHWohwSV" role="3clF46">
        <property role="TrG5h" value="searchScope" />
        <node concept="3uibUv" id="5SvlHWohwSW" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SearchScope" resolve="SearchScope" />
        </node>
      </node>
      <node concept="37vLTG" id="5SvlHWokBPy" role="3clF46">
        <property role="TrG5h" value="progressMonitor" />
        <node concept="3uibUv" id="5SvlHWokBPz" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5SvlHWohwSX" role="1B3o_S" />
      <node concept="3clFbS" id="5SvlHWohwSY" role="3clF47">
        <node concept="3clFbF" id="5SvlHWokFuz" role="3cqZAp">
          <node concept="1rXfSq" id="5SvlHWokFux" role="3clFbG">
            <ref role="37wK5l" node="5SvlHWokwKF" resolve="getChanges" />
            <node concept="37vLTw" id="5SvlHWokGhA" role="37wK5m">
              <ref role="3cqZAo" node="5SvlHWohwSN" resolve="initialState" />
            </node>
            <node concept="37vLTw" id="5SvlHWokGWq" role="37wK5m">
              <ref role="3cqZAo" node="5SvlHWohwSQ" resolve="repository" />
            </node>
            <node concept="37vLTw" id="5SvlHWokIzA" role="37wK5m">
              <ref role="3cqZAo" node="5SvlHWohwSS" resolve="selectedOptions" />
            </node>
            <node concept="37vLTw" id="5SvlHWokJDE" role="37wK5m">
              <ref role="3cqZAo" node="5SvlHWohwSV" resolve="searchScope" />
            </node>
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="5SvlHWohwT8" role="3clF45">
        <node concept="3uibUv" id="5SvlHWohwT9" role="_ZDj9">
          <ref role="3uigEE" node="3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
          <node concept="16syzq" id="5SvlHWohwTa" role="11_B2D">
            <ref role="16sUi3" node="4GNx7T6VFaU" resolve="InitialDataObject" />
          </node>
          <node concept="16syzq" id="5SvlHWohwTb" role="11_B2D">
            <ref role="16sUi3" node="4GNx7T6VFaV" resolve="FinalDataObject" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5SvlHWokwKF" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getChanges" />
      <node concept="37vLTG" id="5SvlHWokwKG" role="3clF46">
        <property role="TrG5h" value="initialState" />
        <node concept="16syzq" id="5SvlHWokwKH" role="1tU5fm">
          <ref role="16sUi3" node="4GNx7T6VFaU" resolve="InitialDataObject" />
        </node>
      </node>
      <node concept="37vLTG" id="5SvlHWokwKI" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="5SvlHWokwKJ" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="5SvlHWokwKK" role="3clF46">
        <property role="TrG5h" value="selectedOptions" />
        <node concept="_YKpA" id="5SvlHWokwKL" role="1tU5fm">
          <node concept="3uibUv" id="5SvlHWokwKM" role="_ZDj9">
            <ref role="3uigEE" node="37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5SvlHWokwKN" role="3clF46">
        <property role="TrG5h" value="searchScope" />
        <node concept="3uibUv" id="5SvlHWokwKO" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SearchScope" resolve="SearchScope" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5SvlHWokwKP" role="1B3o_S" />
      <node concept="3clFbS" id="5SvlHWokwKQ" role="3clF47">
        <node concept="YS8fn" id="37kAYV6bmBN" role="3cqZAp">
          <node concept="2ShNRf" id="37kAYV6bmRx" role="YScLw">
            <node concept="1pGfFk" id="37kAYV6bwek" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="5SvlHWokwL4" role="3clF45">
        <node concept="3uibUv" id="5SvlHWokwL5" role="_ZDj9">
          <ref role="3uigEE" node="3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
          <node concept="16syzq" id="5SvlHWokwL6" role="11_B2D">
            <ref role="16sUi3" node="4GNx7T6VFaU" resolve="InitialDataObject" />
          </node>
          <node concept="16syzq" id="5SvlHWokwL7" role="11_B2D">
            <ref role="16sUi3" node="4GNx7T6VFaV" resolve="FinalDataObject" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5SvlHWoktCg" role="jymVt" />
    <node concept="2tJIrI" id="5SvlHWoku9w" role="jymVt" />
    <node concept="2tJIrI" id="5SvlHWokuId" role="jymVt" />
    <node concept="3clFb_" id="5SvlHWohSEC" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getAvailableOptions" />
      <node concept="37vLTG" id="5SvlHWohSED" role="3clF46">
        <property role="TrG5h" value="initialStates" />
        <node concept="_YKpA" id="5SvlHWohSEE" role="1tU5fm">
          <node concept="16syzq" id="5SvlHWohSEM" role="_ZDj9">
            <ref role="16sUi3" node="4GNx7T6VFaU" resolve="InitialDataObject" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5SvlHWohSEG" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="5SvlHWohSEH" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5SvlHWohSEJ" role="1B3o_S" />
      <node concept="_YKpA" id="5SvlHWohSEK" role="3clF45">
        <node concept="3uibUv" id="5SvlHWohSEL" role="_ZDj9">
          <ref role="3uigEE" node="37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
        </node>
      </node>
      <node concept="3clFbS" id="5SvlHWohSEN" role="3clF47">
        <node concept="3clFbF" id="5SvlHWohXkG" role="3cqZAp">
          <node concept="2OqwBi" id="5SvlHWoi7T9" role="3clFbG">
            <node concept="2OqwBi" id="5SvlHWoi7hf" role="2Oq$k0">
              <node concept="2OqwBi" id="5SvlHWoi0AL" role="2Oq$k0">
                <node concept="37vLTw" id="5SvlHWoi0gC" role="2Oq$k0">
                  <ref role="3cqZAo" node="5SvlHWohSED" resolve="initialStates" />
                </node>
                <node concept="3goQfb" id="5SvlHWoi6X4" role="2OqNvi">
                  <node concept="1bVj0M" id="5SvlHWoi6X6" role="23t8la">
                    <node concept="3clFbS" id="5SvlHWoi6X7" role="1bW5cS">
                      <node concept="3clFbF" id="5SvlHWoi6X8" role="3cqZAp">
                        <node concept="1rXfSq" id="5SvlHWoi6X9" role="3clFbG">
                          <ref role="37wK5l" node="5SvlHWohUGh" resolve="getAvailableOptions" />
                          <node concept="37vLTw" id="5SvlHWoi6Xa" role="37wK5m">
                            <ref role="3cqZAo" node="5W7E4fV0Xae" resolve="initialState" />
                          </node>
                          <node concept="37vLTw" id="5SvlHWoi6Xb" role="37wK5m">
                            <ref role="3cqZAo" node="5SvlHWohSEG" resolve="repository" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0Xae" role="1bW2Oz">
                      <property role="TrG5h" value="initialState" />
                      <node concept="2jxLKc" id="5W7E4fV0Xaf" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1VAtEI" id="5SvlHWoi7Fy" role="2OqNvi" />
            </node>
            <node concept="ANE8D" id="5SvlHWoi8i4" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5SvlHWohUGh" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getAvailableOptions" />
      <node concept="37vLTG" id="5SvlHWohUGi" role="3clF46">
        <property role="TrG5h" value="initialState" />
        <node concept="16syzq" id="5SvlHWohUGk" role="1tU5fm">
          <ref role="16sUi3" node="4GNx7T6VFaU" resolve="InitialDataObject" />
        </node>
      </node>
      <node concept="37vLTG" id="5SvlHWohUGl" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="5SvlHWohUGm" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5SvlHWohUGn" role="1B3o_S" />
      <node concept="_YKpA" id="5SvlHWohUGo" role="3clF45">
        <node concept="3uibUv" id="5SvlHWohUGp" role="_ZDj9">
          <ref role="3uigEE" node="37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
        </node>
      </node>
      <node concept="3clFbS" id="5SvlHWohUGq" role="3clF47">
        <node concept="YS8fn" id="6gU0oA5S28q" role="3cqZAp">
          <node concept="2ShNRf" id="6gU0oA5S28r" role="YScLw">
            <node concept="1pGfFk" id="6gU0oA5S28s" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4GNx7T6VEix" role="1B3o_S" />
    <node concept="3uibUv" id="4GNx7T6VEiZ" role="EKbjA">
      <ref role="3uigEE" node="3KqYwoBIxpF" resolve="RefactoringParticipant" />
      <node concept="16syzq" id="4GNx7T6VFj3" role="11_B2D">
        <ref role="16sUi3" node="4GNx7T6VFaU" resolve="InitialDataObject" />
      </node>
      <node concept="16syzq" id="4GNx7T6VFqk" role="11_B2D">
        <ref role="16sUi3" node="4GNx7T6VFaV" resolve="FinalDataObject" />
      </node>
      <node concept="16syzq" id="4GNx7T6VFCC" role="11_B2D">
        <ref role="16sUi3" node="4GNx7T6VFaW" resolve="InitialPoint" />
      </node>
      <node concept="16syzq" id="4GNx7T6VFK3" role="11_B2D">
        <ref role="16sUi3" node="4GNx7T6VFaX" resolve="FinalPoint" />
      </node>
    </node>
    <node concept="16euLQ" id="4GNx7T6VFaU" role="16eVyc">
      <property role="TrG5h" value="InitialDataObject" />
    </node>
    <node concept="16euLQ" id="4GNx7T6VFaV" role="16eVyc">
      <property role="TrG5h" value="FinalDataObject" />
    </node>
    <node concept="16euLQ" id="4GNx7T6VFaW" role="16eVyc">
      <property role="TrG5h" value="InitialPoint" />
    </node>
    <node concept="16euLQ" id="4GNx7T6VFaX" role="16eVyc">
      <property role="TrG5h" value="FinalPoint" />
    </node>
  </node>
  <node concept="3HP615" id="112yVMI_Pcd">
    <property role="2bfB8j" value="true" />
    <property role="TrG5h" value="RecursiveParticipant" />
    <node concept="2tJIrI" id="112yVMIEJHG" role="jymVt" />
    <node concept="3clFb_" id="112yVMIEMz4" role="jymVt">
      <property role="TrG5h" value="getChanges" />
      <node concept="37vLTG" id="112yVMIEMz5" role="3clF46">
        <property role="TrG5h" value="initialStates" />
        <node concept="_YKpA" id="5SvlHWohaNn" role="1tU5fm">
          <node concept="16syzq" id="5SvlHWohbKp" role="_ZDj9">
            <ref role="16sUi3" node="112yVMI_R_m" resolve="InitialDataObject" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="112yVMIEMz7" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="112yVMIEMz8" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="6yOdP6c7icO" role="3clF46">
        <property role="TrG5h" value="selectedOptions" />
        <node concept="_YKpA" id="37Il31i0H_F" role="1tU5fm">
          <node concept="3uibUv" id="37Il31i0IpD" role="_ZDj9">
            <ref role="3uigEE" node="37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="112yVMIEMz9" role="3clF46">
        <property role="TrG5h" value="searchScope" />
        <node concept="3uibUv" id="112yVMIEMza" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SearchScope" resolve="SearchScope" />
        </node>
      </node>
      <node concept="37vLTG" id="4GNx7T6Yrcx" role="3clF46">
        <property role="TrG5h" value="progressMonitor" />
        <node concept="3uibUv" id="4GNx7T6Yt3K" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="37vLTG" id="112yVMIAWDM" role="3clF46">
        <property role="TrG5h" value="parents" />
        <node concept="A3Dl8" id="112yVMIBwci" role="1tU5fm">
          <node concept="3uibUv" id="5z_gLGetcGh" role="A3Ik2">
            <ref role="3uigEE" node="5z_gLGerhde" resolve="RefactoringParticipant.ParticipantApplied" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="112yVMIEMzb" role="1B3o_S" />
      <node concept="3clFbS" id="112yVMIEMzc" role="3clF47" />
      <node concept="_YKpA" id="5SvlHWoh9hf" role="3clF45">
        <node concept="_YKpA" id="112yVMIEMzd" role="_ZDj9">
          <node concept="3uibUv" id="112yVMIEMze" role="_ZDj9">
            <ref role="3uigEE" node="3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
            <node concept="16syzq" id="112yVMIEMzf" role="11_B2D">
              <ref role="16sUi3" node="112yVMI_R_m" resolve="InitialDataObject" />
            </node>
            <node concept="16syzq" id="112yVMIEMzg" role="11_B2D">
              <ref role="16sUi3" node="112yVMI_REJ" resolve="FinalDataObject" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="112yVMI_Pce" role="1B3o_S" />
    <node concept="16euLQ" id="112yVMI_R_m" role="16eVyc">
      <property role="TrG5h" value="InitialDataObject" />
    </node>
    <node concept="16euLQ" id="112yVMI_REJ" role="16eVyc">
      <property role="TrG5h" value="FinalDataObject" />
    </node>
    <node concept="16euLQ" id="5z_gLGesDnH" role="16eVyc">
      <property role="TrG5h" value="InitialPoint" />
    </node>
    <node concept="16euLQ" id="5z_gLGesGdq" role="16eVyc">
      <property role="TrG5h" value="FinalPoint" />
    </node>
    <node concept="3uibUv" id="112yVMI_RS2" role="3HQHJm">
      <ref role="3uigEE" node="3KqYwoBIxpF" resolve="RefactoringParticipant" />
      <node concept="16syzq" id="112yVMI_Sif" role="11_B2D">
        <ref role="16sUi3" node="112yVMI_R_m" resolve="InitialDataObject" />
      </node>
      <node concept="16syzq" id="112yVMI_SzT" role="11_B2D">
        <ref role="16sUi3" node="112yVMI_REJ" resolve="FinalDataObject" />
      </node>
      <node concept="16syzq" id="5z_gLGesISP" role="11_B2D">
        <ref role="16sUi3" node="5z_gLGesDnH" resolve="InitialPoint" />
      </node>
      <node concept="16syzq" id="5z_gLGesJYr" role="11_B2D">
        <ref role="16sUi3" node="5z_gLGesGdq" resolve="FinalPoint" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="3KqYwoBJhhy">
    <property role="TrG5h" value="MoveNodeRefactoringParticipant" />
    <node concept="3HP615" id="3KqYwoBIIOx" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MoveNodeRefactoringDataCollector" />
      <node concept="3Tm1VV" id="3KqYwoBIIOy" role="1B3o_S" />
      <node concept="16euLQ" id="3KqYwoBIJxV" role="16eVyc">
        <property role="TrG5h" value="InitialDataObject" />
      </node>
      <node concept="16euLQ" id="3KqYwoBIJya" role="16eVyc">
        <property role="TrG5h" value="FinalDataObject" />
      </node>
      <node concept="3uibUv" id="5z_gLGer0Ym" role="3HQHJm">
        <ref role="3uigEE" node="5z_gLGeqYi9" resolve="RefactoringParticipant.RefactoringDataCollector" />
        <node concept="16syzq" id="5z_gLGer2qW" role="11_B2D">
          <ref role="16sUi3" node="3KqYwoBIJxV" resolve="InitialDataObject" />
        </node>
        <node concept="16syzq" id="5z_gLGer33E" role="11_B2D">
          <ref role="16sUi3" node="3KqYwoBIJya" resolve="FinalDataObject" />
        </node>
        <node concept="3Tqbb2" id="5z_gLGer3N7" role="11_B2D" />
        <node concept="3Tqbb2" id="5z_gLGer4yU" role="11_B2D" />
      </node>
    </node>
    <node concept="3HP615" id="19AH0QQjWvT" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MoveNodeChange" />
      <node concept="3clFb_" id="19AH0QQjWvY" role="jymVt">
        <property role="TrG5h" value="needsToPreserveOldNode" />
        <node concept="3uibUv" id="19AH0QQjWvZ" role="3clF45">
          <ref role="3uigEE" node="7tV5ZLw0mML" resolve="RefactoringParticipant.KeepOldNodes" />
        </node>
        <node concept="3Tm1VV" id="19AH0QQjWw0" role="1B3o_S" />
        <node concept="3clFbS" id="19AH0QQjWw1" role="3clF47" />
      </node>
      <node concept="3Tm1VV" id="19AH0QQjWwc" role="1B3o_S" />
      <node concept="16euLQ" id="19AH0QQjWwd" role="16eVyc">
        <property role="TrG5h" value="InitialDataObject" />
      </node>
      <node concept="16euLQ" id="19AH0QQjWwe" role="16eVyc">
        <property role="TrG5h" value="FinalDataObject" />
      </node>
      <node concept="3uibUv" id="19AH0QQk6Lh" role="3HQHJm">
        <ref role="3uigEE" node="3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
        <node concept="16syzq" id="19AH0QQkrEo" role="11_B2D">
          <ref role="16sUi3" node="19AH0QQjWwd" resolve="InitialDataObject" />
        </node>
        <node concept="16syzq" id="19AH0QQkrSP" role="11_B2D">
          <ref role="16sUi3" node="19AH0QQjWwe" resolve="FinalDataObject" />
        </node>
      </node>
    </node>
    <node concept="312cEu" id="7tV5ZLw1f3b" role="jymVt">
      <property role="TrG5h" value="ChangeBase" />
      <property role="1sVAO0" value="true" />
      <node concept="3clFb_" id="7tV5ZLw1i1P" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="getSearchResults" />
        <node concept="3uibUv" id="7tV5ZLw1i1Q" role="3clF45">
          <ref role="3uigEE" to="g4jo:J2bOg02HbG" resolve="SearchResults" />
        </node>
        <node concept="3Tm1VV" id="7tV5ZLw1i1R" role="1B3o_S" />
        <node concept="3clFbS" id="7tV5ZLw1i1S" role="3clF47" />
      </node>
      <node concept="3clFb_" id="7tV5ZLw1i1T" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="needsToPreserveOldNode" />
        <node concept="3uibUv" id="7tV5ZLw1i1U" role="3clF45">
          <ref role="3uigEE" node="7tV5ZLw0mML" resolve="RefactoringParticipant.KeepOldNodes" />
        </node>
        <node concept="3Tm1VV" id="7tV5ZLw1i1V" role="1B3o_S" />
        <node concept="3clFbS" id="7tV5ZLw1i1W" role="3clF47">
          <node concept="3clFbF" id="7tV5ZLw1lh5" role="3cqZAp">
            <node concept="Rm8GO" id="7tV5ZLw1lB3" role="3clFbG">
              <ref role="1Px2BO" node="7tV5ZLw0mML" resolve="RefactoringParticipant.KeepOldNodes" />
              <ref role="Rm8GQ" node="7tV5ZLw0pQW" resolve="REMOVE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="7tV5ZLw1i1X" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="confirm" />
        <node concept="3cqZAl" id="7tV5ZLw1i1Y" role="3clF45" />
        <node concept="3Tm1VV" id="7tV5ZLw1i1Z" role="1B3o_S" />
        <node concept="3clFbS" id="7tV5ZLw1i20" role="3clF47" />
        <node concept="37vLTG" id="7tV5ZLw1i21" role="3clF46">
          <property role="TrG5h" value="finalState" />
          <node concept="16syzq" id="7tV5ZLw1i22" role="1tU5fm">
            <ref role="16sUi3" node="7tV5ZLw1hRQ" resolve="FinalDataObject" />
          </node>
        </node>
        <node concept="37vLTG" id="7tV5ZLw1i23" role="3clF46">
          <property role="TrG5h" value="repository" />
          <node concept="3uibUv" id="7tV5ZLw1i24" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
        </node>
        <node concept="37vLTG" id="7tV5ZLw1i25" role="3clF46">
          <property role="TrG5h" value="refactoringSession" />
          <node concept="3uibUv" id="7tV5ZLw1i26" role="1tU5fm">
            <ref role="3uigEE" node="3KqYwoBJ0xf" resolve="RefactoringSession" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7tV5ZLw1f3c" role="1B3o_S" />
      <node concept="16euLQ" id="7tV5ZLw1hRP" role="16eVyc">
        <property role="TrG5h" value="InitialDataObject" />
      </node>
      <node concept="16euLQ" id="7tV5ZLw1hRQ" role="16eVyc">
        <property role="TrG5h" value="FinalDataObject" />
      </node>
      <node concept="3uibUv" id="7tV5ZLw1sch" role="EKbjA">
        <ref role="3uigEE" node="19AH0QQjWvT" resolve="MoveNodeRefactoringParticipant.MoveNodeChange" />
        <node concept="16syzq" id="7tV5ZLw1A15" role="11_B2D">
          <ref role="16sUi3" node="7tV5ZLw1hRP" resolve="InitialDataObject" />
        </node>
        <node concept="16syzq" id="7tV5ZLw1Ast" role="11_B2D">
          <ref role="16sUi3" node="7tV5ZLw1hRQ" resolve="FinalDataObject" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="3KqYwoBJhhz" role="1B3o_S" />
    <node concept="16euLQ" id="3KqYwoBJhhH" role="16eVyc">
      <property role="TrG5h" value="InitialDataObject" />
    </node>
    <node concept="16euLQ" id="3KqYwoBJhhL" role="16eVyc">
      <property role="TrG5h" value="FinalDataObject" />
    </node>
    <node concept="3uibUv" id="3KqYwoBJhhZ" role="3HQHJm">
      <ref role="3uigEE" node="3KqYwoBIxpF" resolve="RefactoringParticipant" />
      <node concept="16syzq" id="3KqYwoBJhrK" role="11_B2D">
        <ref role="16sUi3" node="3KqYwoBJhhH" resolve="InitialDataObject" />
      </node>
      <node concept="16syzq" id="3KqYwoBJhwR" role="11_B2D">
        <ref role="16sUi3" node="3KqYwoBJhhL" resolve="FinalDataObject" />
      </node>
      <node concept="3Tqbb2" id="5z_gLGeqRAg" role="11_B2D" />
      <node concept="3Tqbb2" id="5z_gLGeqSU3" role="11_B2D" />
    </node>
  </node>
  <node concept="3HP615" id="2ziiPwwD3nW">
    <property role="TrG5h" value="MoveModelRefactoringParticipant" />
    <node concept="3Tm1VV" id="2ziiPwwD3nX" role="1B3o_S" />
    <node concept="16euLQ" id="2ziiPwwD3nY" role="16eVyc">
      <property role="TrG5h" value="InitialDataObject" />
    </node>
    <node concept="16euLQ" id="2ziiPwwD3nZ" role="16eVyc">
      <property role="TrG5h" value="FinalDataObject" />
    </node>
    <node concept="3uibUv" id="2ziiPwwD3o0" role="3HQHJm">
      <ref role="3uigEE" node="3KqYwoBIxpF" resolve="RefactoringParticipant" />
      <node concept="16syzq" id="2ziiPwwD3o1" role="11_B2D">
        <ref role="16sUi3" node="2ziiPwwD3nY" resolve="InitialDataObject" />
      </node>
      <node concept="16syzq" id="2ziiPwwD3o2" role="11_B2D">
        <ref role="16sUi3" node="2ziiPwwD3nZ" resolve="FinalDataObject" />
      </node>
      <node concept="H_c77" id="2ziiPwwD3Kt" role="11_B2D" />
      <node concept="H_c77" id="2ziiPwwD3PK" role="11_B2D" />
    </node>
  </node>
  <node concept="3HP615" id="3KqYwoBJ0xf">
    <property role="2bfB8j" value="true" />
    <property role="TrG5h" value="RefactoringSession" />
    <node concept="3clFb_" id="3KqYwoBJgIa" role="jymVt">
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="putObject" />
      <node concept="3clFbS" id="3KqYwoBJgIb" role="3clF47" />
      <node concept="3Tm1VV" id="3KqYwoBJgIc" role="1B3o_S" />
      <node concept="3cqZAl" id="3KqYwoBJgRT" role="3clF45" />
      <node concept="37vLTG" id="3KqYwoBJgIe" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="3KqYwoBJgIf" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3KqYwoBJgSz" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3uibUv" id="3KqYwoBJh2N" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3KqYwoBJg7u" role="jymVt">
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getObject" />
      <node concept="3clFbS" id="3KqYwoBJg7x" role="3clF47" />
      <node concept="3Tm1VV" id="3KqYwoBJg7y" role="1B3o_S" />
      <node concept="3uibUv" id="3KqYwoBJg6f" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="37vLTG" id="3KqYwoBJglp" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="3KqYwoBJglo" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="7PqTV1oWyly" role="jymVt">
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getRefactoringName" />
      <node concept="3clFbS" id="7PqTV1oWyl_" role="3clF47" />
      <node concept="3Tm1VV" id="7PqTV1oWylA" role="1B3o_S" />
      <node concept="17QB3L" id="7PqTV1oWyn6" role="3clF45" />
      <node concept="2AHcQZ" id="1j$ykQp3Zth" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="3KqYwoBJfVx" role="jymVt" />
    <node concept="3clFb_" id="3KqYwoBJ0Rs" role="jymVt">
      <property role="TrG5h" value="registerChange" />
      <node concept="3cqZAl" id="3KqYwoBJ0Ru" role="3clF45" />
      <node concept="3Tm1VV" id="3KqYwoBJ0Rv" role="1B3o_S" />
      <node concept="3clFbS" id="3KqYwoBJ0Rw" role="3clF47" />
      <node concept="37vLTG" id="3KqYwoBJ1Ti" role="3clF46">
        <property role="TrG5h" value="change" />
        <node concept="3uibUv" id="3KqYwoBJ1Th" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="3KqYwoBJ0xg" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="FLkVtyCNd2">
    <property role="TrG5h" value="RefactoringSessionImpl" />
    <node concept="312cEg" id="FLkVtyCQ9l" role="jymVt">
      <property role="TrG5h" value="myChanges" />
      <node concept="2ShNRf" id="FLkVtyCQ9p" role="33vP2m">
        <node concept="Tc6Ow" id="FLkVtyCQ9q" role="2ShVmc">
          <node concept="3uibUv" id="FLkVtyCWS9" role="HW$YZ">
            <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="FLkVtyCQ9m" role="1B3o_S" />
      <node concept="_YKpA" id="FLkVtyCQ9n" role="1tU5fm">
        <node concept="3uibUv" id="FLkVtyCWEk" role="_ZDj9">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="FLkVtyCREI" role="jymVt">
      <property role="TrG5h" value="myObjects" />
      <node concept="3Tm6S6" id="FLkVtyCREJ" role="1B3o_S" />
      <node concept="3rvAFt" id="FLkVtyCSau" role="1tU5fm">
        <node concept="3uibUv" id="FLkVtyCSA7" role="3rvSg0">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="17QB3L" id="FLkVtyCSl8" role="3rvQeY" />
      </node>
      <node concept="2ShNRf" id="FLkVtyCTj0" role="33vP2m">
        <node concept="3rGOSV" id="FLkVtyCTiR" role="2ShVmc">
          <node concept="17QB3L" id="FLkVtyCTiS" role="3rHrn6" />
          <node concept="3uibUv" id="FLkVtyCTiT" role="3rHtpV">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7PqTV1oWFvR" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myName" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="7PqTV1oWFeL" role="1tU5fm" />
      <node concept="3Tm6S6" id="7PqTV1oWFLN" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="7PqTV1oWHU5" role="jymVt">
      <node concept="3cqZAl" id="7PqTV1oWHU6" role="3clF45" />
      <node concept="3Tm1VV" id="7PqTV1oWHU7" role="1B3o_S" />
      <node concept="3clFbS" id="7PqTV1oWHU8" role="3clF47">
        <node concept="3clFbF" id="7PqTV1oWHU9" role="3cqZAp">
          <node concept="37vLTI" id="7PqTV1oWHUa" role="3clFbG">
            <node concept="37vLTw" id="7PqTV1oWIFN" role="37vLTx">
              <ref role="3cqZAo" node="7PqTV1oWIx1" resolve="name" />
            </node>
            <node concept="37vLTw" id="7PqTV1oWHUc" role="37vLTJ">
              <ref role="3cqZAo" node="7PqTV1oWFvR" resolve="myName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7PqTV1oWIx1" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="7PqTV1oWIx0" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="FLkVtyCRAI" role="jymVt" />
    <node concept="3clFb_" id="FLkVtyCNgT" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="putObject" />
      <node concept="3Tm1VV" id="FLkVtyCNgV" role="1B3o_S" />
      <node concept="3cqZAl" id="FLkVtyCNgW" role="3clF45" />
      <node concept="37vLTG" id="FLkVtyCNgX" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="FLkVtyCNgY" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="FLkVtyCNgZ" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3uibUv" id="FLkVtyCNh0" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="FLkVtyCNh1" role="3clF47">
        <node concept="3clFbF" id="FLkVtyCTBa" role="3cqZAp">
          <node concept="37vLTI" id="FLkVtyCUrn" role="3clFbG">
            <node concept="37vLTw" id="FLkVtyCUFj" role="37vLTx">
              <ref role="3cqZAo" node="FLkVtyCNgZ" resolve="object" />
            </node>
            <node concept="3EllGN" id="FLkVtyCUd5" role="37vLTJ">
              <node concept="37vLTw" id="FLkVtyCUnu" role="3ElVtu">
                <ref role="3cqZAo" node="FLkVtyCNgX" resolve="id" />
              </node>
              <node concept="37vLTw" id="FLkVtyCTB9" role="3ElQJh">
                <ref role="3cqZAo" node="FLkVtyCREI" resolve="myObjects" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="FLkVtyCNh2" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getObject" />
      <node concept="3Tm1VV" id="FLkVtyCNh4" role="1B3o_S" />
      <node concept="3uibUv" id="FLkVtyCNh5" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="37vLTG" id="FLkVtyCNh6" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="FLkVtyCNh7" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="FLkVtyCNh8" role="3clF47">
        <node concept="3clFbF" id="FLkVtyCVkd" role="3cqZAp">
          <node concept="3EllGN" id="FLkVtyCVy0" role="3clFbG">
            <node concept="37vLTw" id="FLkVtyCVEE" role="3ElVtu">
              <ref role="3cqZAo" node="FLkVtyCNh6" resolve="id" />
            </node>
            <node concept="37vLTw" id="FLkVtyCVkc" role="3ElQJh">
              <ref role="3cqZAo" node="FLkVtyCREI" resolve="myObjects" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7PqTV1oWyU0" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getRefactoringName" />
      <node concept="3Tm1VV" id="7PqTV1oWyU2" role="1B3o_S" />
      <node concept="17QB3L" id="7PqTV1oWyU3" role="3clF45" />
      <node concept="3clFbS" id="7PqTV1oWyU4" role="3clF47">
        <node concept="3cpWs6" id="7PqTV1oWH3U" role="3cqZAp">
          <node concept="37vLTw" id="7PqTV1oWHmv" role="3cqZAk">
            <ref role="3cqZAo" node="7PqTV1oWFvR" resolve="myName" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="FLkVtyCNhb" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="registerChange" />
      <node concept="3cqZAl" id="FLkVtyCNhc" role="3clF45" />
      <node concept="3Tm1VV" id="FLkVtyCNhd" role="1B3o_S" />
      <node concept="37vLTG" id="FLkVtyCNhf" role="3clF46">
        <property role="TrG5h" value="change" />
        <node concept="3uibUv" id="FLkVtyCNhg" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="3clFbS" id="FLkVtyCNhh" role="3clF47">
        <node concept="3clFbF" id="FLkVtyCXvu" role="3cqZAp">
          <node concept="2OqwBi" id="FLkVtyCXMh" role="3clFbG">
            <node concept="37vLTw" id="FLkVtyCXvt" role="2Oq$k0">
              <ref role="3cqZAo" node="FLkVtyCQ9l" resolve="myChanges" />
            </node>
            <node concept="TSZUe" id="3q3k9aXsrhl" role="2OqNvi">
              <node concept="37vLTw" id="3q3k9aXsrhn" role="25WWJ7">
                <ref role="3cqZAo" node="FLkVtyCNhf" resolve="change" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="FLkVtyCNg$" role="jymVt" />
    <node concept="3clFb_" id="3KqYwoBJ10q" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="performAllRegistered" />
      <node concept="3clFbS" id="3KqYwoBJ10t" role="3clF47">
        <node concept="2Gpval" id="5z_gLGejaoZ" role="3cqZAp">
          <node concept="2GrKxI" id="5z_gLGejap1" role="2Gsz3X">
            <property role="TrG5h" value="change" />
          </node>
          <node concept="3clFbS" id="5z_gLGejap3" role="2LFqv$">
            <node concept="3J1_TO" id="2aY$7DLQODJ" role="3cqZAp">
              <node concept="3clFbS" id="2aY$7DLQODL" role="1zxBo7">
                <node concept="3clFbF" id="FLkVtyD3OI" role="3cqZAp">
                  <node concept="2OqwBi" id="FLkVtyD3Wm" role="3clFbG">
                    <node concept="liA8E" id="FLkVtyD411" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Runnable.run()" resolve="run" />
                    </node>
                    <node concept="2GrUjf" id="5z_gLGejb72" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="5z_gLGejap1" resolve="change" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uVAMA" id="2aY$7DLQODM" role="1zxBo5">
                <node concept="XOnhg" id="2aY$7DLQODO" role="1zc67B">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="e" />
                  <node concept="nSUau" id="xvs04dGs27" role="1tU5fm">
                    <node concept="3uibUv" id="2aY$7DLQP1j" role="nSUat">
                      <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="2aY$7DLQODS" role="1zc67A">
                  <node concept="RRSsy" id="3jYQuSB37uF" role="3cqZAp">
                    <property role="RRSoG" value="gZ5fh_4/error" />
                    <node concept="Xl_RD" id="2aY$7DLQPTy" role="RRSoy">
                      <property role="Xl_RC" value="Error executing change" />
                    </node>
                    <node concept="37vLTw" id="2aY$7DLQPT$" role="RRSow">
                      <ref role="3cqZAo" node="2aY$7DLQODO" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="5z_gLGejaEX" role="2GsD0m">
            <ref role="3cqZAo" node="FLkVtyCQ9l" resolve="myChanges" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3KqYwoBJ10u" role="1B3o_S" />
      <node concept="3cqZAl" id="3KqYwoBJ0ZO" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="FLkVtyCNd3" role="1B3o_S" />
    <node concept="3uibUv" id="1ajtCshJ5$a" role="EKbjA">
      <ref role="3uigEE" node="3KqYwoBJ0xf" resolve="RefactoringSession" />
    </node>
  </node>
  <node concept="312cEu" id="5Y9QCNBZLBG">
    <property role="2bfB8j" value="false" />
    <property role="TrG5h" value="NodeCopyTracker" />
    <node concept="Wx3nA" id="5Y9QCNBZTKk" role="jymVt">
      <property role="TrG5h" value="id" />
      <property role="2dlcS1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="2dld4O" value="false" />
      <node concept="17QB3L" id="5Y9QCNBZTKn" role="1tU5fm" />
      <node concept="Xl_RD" id="5Y9QCNBZTKo" role="33vP2m">
        <property role="Xl_RC" value="refactoringSession.nodeCopyTracker" />
      </node>
      <node concept="3Tm6S6" id="5Y9QCNBZTKm" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="44mXFSxhkEF" role="jymVt">
      <property role="TrG5h" value="copyMap" />
      <node concept="3Tm6S6" id="44mXFSxhkEG" role="1B3o_S" />
      <node concept="3rvAFt" id="44mXFSxhkTo" role="1tU5fm">
        <node concept="3Tqbb2" id="44mXFSxhkTp" role="3rvSg0" />
        <node concept="3Tqbb2" id="44mXFSxhkTq" role="3rvQeY" />
      </node>
      <node concept="2ShNRf" id="44mXFSxhl8h" role="33vP2m">
        <node concept="3rGOSV" id="44mXFSxhl86" role="2ShVmc">
          <node concept="3Tqbb2" id="44mXFSxhl87" role="3rHrn6" />
          <node concept="3Tqbb2" id="44mXFSxhl88" role="3rHtpV" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="5Y9QCNBZQm$" role="jymVt">
      <property role="TrG5h" value="get" />
      <node concept="3Tm1VV" id="6hSzYdRsDBa" role="1B3o_S" />
      <node concept="3clFbS" id="5Y9QCNBZQmC" role="3clF47">
        <node concept="3cpWs8" id="5Y9QCNBZUcV" role="3cqZAp">
          <node concept="3cpWsn" id="5Y9QCNBZUcW" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10QFUN" id="5Y9QCNBZU$E" role="33vP2m">
              <node concept="2OqwBi" id="5Y9QCNBZUcX" role="10QFUP">
                <node concept="37vLTw" id="5Y9QCNBZUcY" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Y9QCNBZR7r" resolve="session" />
                </node>
                <node concept="liA8E" id="5Y9QCNBZUcZ" role="2OqNvi">
                  <ref role="37wK5l" node="3KqYwoBJg7u" resolve="getObject" />
                  <node concept="37vLTw" id="42LwYUtsnG6" role="37wK5m">
                    <ref role="3cqZAo" node="5Y9QCNBZTKk" resolve="id" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="44mXFSxhoqX" role="10QFUM">
                <ref role="3uigEE" node="5Y9QCNBZLBG" resolve="NodeCopyTracker" />
              </node>
            </node>
            <node concept="3uibUv" id="44mXFSxhnNj" role="1tU5fm">
              <ref role="3uigEE" node="5Y9QCNBZLBG" resolve="NodeCopyTracker" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5Y9QCNBZVuL" role="3cqZAp">
          <node concept="3clFbS" id="5Y9QCNBZVuN" role="3clFbx">
            <node concept="3clFbF" id="5Y9QCNBZWRj" role="3cqZAp">
              <node concept="37vLTI" id="5Y9QCNBZXbk" role="3clFbG">
                <node concept="2ShNRf" id="44mXFSxhn69" role="37vLTx">
                  <node concept="HV5vD" id="44mXFSxhUGv" role="2ShVmc">
                    <ref role="HV5vE" node="5Y9QCNBZLBG" resolve="NodeCopyTracker" />
                  </node>
                </node>
                <node concept="37vLTw" id="5Y9QCNBZWRh" role="37vLTJ">
                  <ref role="3cqZAo" node="5Y9QCNBZUcW" resolve="result" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5Y9QCNBZYI5" role="3cqZAp">
              <node concept="2OqwBi" id="5Y9QCNBZYUQ" role="3clFbG">
                <node concept="37vLTw" id="5Y9QCNBZYI3" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Y9QCNBZR7r" resolve="session" />
                </node>
                <node concept="liA8E" id="5Y9QCNBZYXJ" role="2OqNvi">
                  <ref role="37wK5l" node="3KqYwoBJgIa" resolve="putObject" />
                  <node concept="37vLTw" id="42LwYUtsnG5" role="37wK5m">
                    <ref role="3cqZAo" node="5Y9QCNBZTKk" resolve="id" />
                  </node>
                  <node concept="37vLTw" id="5Y9QCNBZZub" role="37wK5m">
                    <ref role="3cqZAo" node="5Y9QCNBZUcW" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5Y9QCNBZWeW" role="3clFbw">
            <node concept="10Nm6u" id="5Y9QCNBZWtM" role="3uHU7w" />
            <node concept="37vLTw" id="5Y9QCNBZVHN" role="3uHU7B">
              <ref role="3cqZAo" node="5Y9QCNBZUcW" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5Y9QCNBZY3r" role="3cqZAp">
          <node concept="37vLTw" id="5Y9QCNBZYg4" role="3cqZAk">
            <ref role="3cqZAo" node="5Y9QCNBZUcW" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5Y9QCNBZR7r" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="5Y9QCNBZR7q" role="1tU5fm">
          <ref role="3uigEE" node="3KqYwoBJ0xf" resolve="RefactoringSession" />
        </node>
      </node>
      <node concept="3uibUv" id="44mXFSxhlZu" role="3clF45">
        <ref role="3uigEE" node="5Y9QCNBZLBG" resolve="NodeCopyTracker" />
      </node>
    </node>
    <node concept="3clFb_" id="44mXFSxhV$4" role="jymVt">
      <property role="TrG5h" value="getCopyMap" />
      <node concept="3rvAFt" id="44mXFSxhX2c" role="3clF45">
        <node concept="3Tqbb2" id="44mXFSxhX2d" role="3rvSg0" />
        <node concept="3Tqbb2" id="44mXFSxhX2e" role="3rvQeY" />
      </node>
      <node concept="3Tm1VV" id="44mXFSxhV$7" role="1B3o_S" />
      <node concept="3clFbS" id="44mXFSxhV$8" role="3clF47">
        <node concept="3clFbF" id="42LwYUtdmCd" role="3cqZAp">
          <node concept="2YIFZM" id="42LwYUtdmGi" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableMap(java.util.Map)" resolve="unmodifiableMap" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="37vLTw" id="42LwYUtdnnv" role="37wK5m">
              <ref role="3cqZAo" node="44mXFSxhkEF" resolve="copyMap" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7m$hACyZuPg" role="jymVt">
      <property role="TrG5h" value="putInCopyMap" />
      <node concept="37vLTG" id="7m$hACyZvWp" role="3clF46">
        <property role="TrG5h" value="addition" />
        <node concept="3rvAFt" id="7m$hACyZuPh" role="1tU5fm">
          <node concept="3Tqbb2" id="7m$hACyZuPi" role="3rvSg0" />
          <node concept="3Tqbb2" id="7m$hACyZuPj" role="3rvQeY" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7m$hACyZuPk" role="1B3o_S" />
      <node concept="3clFbS" id="7m$hACyZuPl" role="3clF47">
        <node concept="3clFbF" id="7m$hACyZzuw" role="3cqZAp">
          <node concept="2OqwBi" id="7m$hACyZzJB" role="3clFbG">
            <node concept="37vLTw" id="7m$hACyZzuv" role="2Oq$k0">
              <ref role="3cqZAo" node="44mXFSxhkEF" resolve="copyMap" />
            </node>
            <node concept="3FNE7p" id="7m$hACyZ$5V" role="2OqNvi">
              <node concept="37vLTw" id="7m$hACyZ$cF" role="3FOfgg">
                <ref role="3cqZAo" node="7m$hACyZvWp" resolve="addition" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7m$hACyZwj4" role="3clF45" />
    </node>
    <node concept="3clFb_" id="5sZ4VOA2LeY" role="jymVt">
      <property role="TrG5h" value="copyAndTrack" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5sZ4VOA2LeZ" role="3clF47">
        <node concept="3cpWs8" id="5sZ4VOA2Lfc" role="3cqZAp">
          <node concept="3cpWsn" id="5sZ4VOA2Lfd" role="3cpWs9">
            <property role="TrG5h" value="localCopyMap" />
            <node concept="3rvAFt" id="5sZ4VOA2Lfe" role="1tU5fm">
              <node concept="3Tqbb2" id="5sZ4VOA2Lff" role="3rvQeY" />
              <node concept="3Tqbb2" id="5sZ4VOA2Lfg" role="3rvSg0" />
            </node>
            <node concept="2ShNRf" id="5sZ4VOA2Lfh" role="33vP2m">
              <node concept="3rGOSV" id="5sZ4VOA2Lfi" role="2ShVmc">
                <node concept="3Tqbb2" id="5sZ4VOA2Lfj" role="3rHrn6" />
                <node concept="3Tqbb2" id="5sZ4VOA2Lfk" role="3rHtpV" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5sZ4VOA2Lfl" role="3cqZAp">
          <node concept="3cpWsn" id="5sZ4VOA2Lfm" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="5sZ4VOA2Lfn" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="5sZ4VOA2Lfo" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="2YIFZM" id="5sZ4VOA2Lfp" role="33vP2m">
              <ref role="37wK5l" to="w1kc:~CopyUtil.copyAndPreserveId(java.util.List,java.util.Map)" resolve="copyAndPreserveId" />
              <ref role="1Pybhc" to="w1kc:~CopyUtil" resolve="CopyUtil" />
              <node concept="37vLTw" id="5sZ4VOA2Lfq" role="37wK5m">
                <ref role="3cqZAo" node="5sZ4VOA2Lg0" resolve="oldNodes" />
              </node>
              <node concept="37vLTw" id="5sZ4VOA2Lfr" role="37wK5m">
                <ref role="3cqZAo" node="5sZ4VOA2Lfd" resolve="localCopyMap" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7m$hACyZ$FC" role="3cqZAp">
          <node concept="1rXfSq" id="7m$hACyZ$FA" role="3clFbG">
            <ref role="37wK5l" node="7m$hACyZuPg" resolve="putInCopyMap" />
            <node concept="37vLTw" id="7m$hACyZ_7E" role="37wK5m">
              <ref role="3cqZAo" node="5sZ4VOA2Lfd" resolve="localCopyMap" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="5sZ4VOA2Lfx" role="3cqZAp">
          <node concept="2GrKxI" id="5sZ4VOA2Lfy" role="2Gsz3X">
            <property role="TrG5h" value="mapping" />
          </node>
          <node concept="3clFbS" id="5sZ4VOA2Lfz" role="2LFqv$">
            <node concept="3clFbF" id="5sZ4VOA2Lf$" role="3cqZAp">
              <node concept="2YIFZM" id="5sZ4VOA2Lf_" role="3clFbG">
                <ref role="37wK5l" to="w1kc:~CopyUtil.addReferences(org.jetbrains.mps.openapi.model.SNode,java.util.Map,boolean)" resolve="addReferences" />
                <ref role="1Pybhc" to="w1kc:~CopyUtil" resolve="CopyUtil" />
                <node concept="2OqwBi" id="5sZ4VOA2LfA" role="37wK5m">
                  <node concept="2GrUjf" id="5sZ4VOA2LfB" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="5sZ4VOA2Lfy" resolve="mapping" />
                  </node>
                  <node concept="3AY5_j" id="5sZ4VOA2LfC" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="5sZ4VOA2LfD" role="37wK5m">
                  <ref role="3cqZAo" node="44mXFSxhkEF" resolve="copyMap" />
                </node>
                <node concept="3clFbT" id="5sZ4VOA2LfE" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="5sZ4VOA2LfF" role="2GsD0m">
            <ref role="3cqZAo" node="44mXFSxhkEF" resolve="copyMap" />
          </node>
        </node>
        <node concept="3cpWs6" id="5sZ4VOA2LfW" role="3cqZAp">
          <node concept="37vLTw" id="5sZ4VOA2LfX" role="3cqZAk">
            <ref role="3cqZAo" node="5sZ4VOA2Lfm" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="5sZ4VOA2LfY" role="3clF45">
        <node concept="3Tqbb2" id="5sZ4VOA2LfZ" role="_ZDj9" />
      </node>
      <node concept="37vLTG" id="5sZ4VOA2Lg0" role="3clF46">
        <property role="TrG5h" value="oldNodes" />
        <node concept="_YKpA" id="5sZ4VOA2Lg1" role="1tU5fm">
          <node concept="3Tqbb2" id="5sZ4VOA2Lg2" role="_ZDj9" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5sZ4VOA2Lg6" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="5Y9QCNBZLBH" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="4N6D1IPLesH">
    <property role="2bfB8j" value="false" />
    <property role="TrG5h" value="RefactoringUI" />
    <node concept="3clFb_" id="7DGCeT2Pzqe" role="jymVt">
      <property role="TrG5h" value="prepare" />
      <node concept="3cqZAl" id="7DGCeT2Pzqf" role="3clF45" />
      <node concept="3Tm1VV" id="7DGCeT2Pzqg" role="1B3o_S" />
      <node concept="3clFbS" id="7DGCeT2Pzqh" role="3clF47" />
      <node concept="37vLTG" id="7DGCeT2Pzqi" role="3clF46">
        <property role="TrG5h" value="task" />
        <node concept="3uibUv" id="7DGCeT2Pzqj" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7DGCeT2Pzqs" role="jymVt">
      <property role="TrG5h" value="selectParticipants" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="_YKpA" id="7DGCeT2Pzqt" role="3clF45">
        <node concept="3uibUv" id="7DGCeT2Pzqu" role="_ZDj9">
          <ref role="3uigEE" node="37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
        </node>
      </node>
      <node concept="37vLTG" id="7DGCeT2Pzqv" role="3clF46">
        <property role="TrG5h" value="options" />
        <node concept="_YKpA" id="7DGCeT2Pzqw" role="1tU5fm">
          <node concept="3uibUv" id="7DGCeT2Pzqx" role="_ZDj9">
            <ref role="3uigEE" node="37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7DGCeT2Pzqy" role="1B3o_S" />
      <node concept="3clFbS" id="7DGCeT2Pzqz" role="3clF47" />
    </node>
    <node concept="3clFb_" id="7DGCeT2Pzqk" role="jymVt">
      <property role="TrG5h" value="runSearch" />
      <node concept="3cqZAl" id="7DGCeT2Pzql" role="3clF45" />
      <node concept="3Tm1VV" id="7DGCeT2Pzqm" role="1B3o_S" />
      <node concept="3clFbS" id="7DGCeT2Pzqn" role="3clF47" />
      <node concept="37vLTG" id="7DGCeT2Pzqo" role="3clF46">
        <property role="TrG5h" value="task" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="7DGCeT2Pzqp" role="1tU5fm">
          <node concept="3cqZAl" id="7DGCeT2Pzqq" role="1ajl9A" />
          <node concept="3uibUv" id="7DGCeT2Pzqr" role="1ajw0F">
            <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7i7ttYT2jvc" role="jymVt">
      <property role="TrG5h" value="showRefactoringView" />
      <node concept="3cqZAl" id="7i7ttYT2jvd" role="3clF45" />
      <node concept="3Tm1VV" id="7i7ttYT2jve" role="1B3o_S" />
      <node concept="3clFbS" id="7i7ttYT2jvf" role="3clF47" />
      <node concept="37vLTG" id="7i7ttYT2jvg" role="3clF46">
        <property role="TrG5h" value="task" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7i7ttYT2jvh" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="37vLTG" id="7i7ttYT2jvk" role="3clF46">
        <property role="TrG5h" value="searchResults" />
        <node concept="3uibUv" id="7i7ttYT2jvl" role="1tU5fm">
          <ref role="3uigEE" to="g4jo:J2bOg02HbG" resolve="SearchResults" />
        </node>
      </node>
      <node concept="37vLTG" id="7i7ttYT2jvm" role="3clF46">
        <property role="TrG5h" value="searchTask" />
        <node concept="3uibUv" id="7i7ttYT2jvn" role="1tU5fm">
          <ref role="3uigEE" to="g4jo:7DGCeT2Ukgb" resolve="SearchTask" />
        </node>
      </node>
      <node concept="37vLTG" id="7i7ttYT2jvo" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="7i7ttYT2jvp" role="1tU5fm">
          <ref role="3uigEE" node="3KqYwoBJ0xf" resolve="RefactoringSession" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4N6D1IPLd8s" role="1B3o_S" />
    <node concept="3UR2Jj" id="47EQkcJdXDu" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsEju" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsEjv" role="1PaTwD">
          <property role="3oM_SC" value="FIXME" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEjw" role="1PaTwD">
          <property role="3oM_SC" value="Quite" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEjx" role="1PaTwD">
          <property role="3oM_SC" value="suspicious" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEjy" role="1PaTwD">
          <property role="3oM_SC" value="API" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEjz" role="1PaTwD">
          <property role="3oM_SC" value="-" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEj$" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEj_" role="1PaTwD">
          <property role="3oM_SC" value="only" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEjA" role="1PaTwD">
          <property role="3oM_SC" value="client" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEjB" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEjC" role="1PaTwD">
          <property role="3oM_SC" value="RefactoringProcessor," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEjD" role="1PaTwD">
          <property role="3oM_SC" value="although" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEjE" role="1PaTwD">
          <property role="3oM_SC" value="we" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEjF" role="1PaTwD">
          <property role="3oM_SC" value="pass" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEjG" role="1PaTwD">
          <property role="3oM_SC" value="this" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEjH" role="1PaTwD">
          <property role="3oM_SC" value="class" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsEjI" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsEjJ" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEjK" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEjL" role="1PaTwD">
          <property role="3oM_SC" value="lot" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEjM" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEjN" role="1PaTwD">
          <property role="3oM_SC" value="different" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEjO" role="1PaTwD">
          <property role="3oM_SC" value="locations" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEjP" role="1PaTwD">
          <property role="3oM_SC" value="(where" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEjQ" role="1PaTwD">
          <property role="3oM_SC" value="it" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEjR" role="1PaTwD">
          <property role="3oM_SC" value="seems" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEjS" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEjT" role="1PaTwD">
          <property role="3oM_SC" value="be" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEjU" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEjV" role="1PaTwD">
          <property role="3oM_SC" value="no" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsEjW" role="1PaTwD">
          <property role="3oM_SC" value="use)" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5dWUYKKJ14W">
    <property role="TrG5h" value="RefactoringProcessor" />
    <node concept="2tJIrI" id="4N6D1IPL7ot" role="jymVt" />
    <node concept="2YIFZL" id="76O06llNsjN" role="jymVt">
      <property role="TrG5h" value="askParticipantChanges" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="XAmMejI4hJ" role="3clF46">
        <property role="TrG5h" value="factory" />
        <node concept="3uibUv" id="XAmMejI6da" role="1tU5fm">
          <ref role="3uigEE" node="XAmMejZP77" resolve="RefactoringParticipant.ParticipantStateFactory" />
          <node concept="16syzq" id="XAmMejIimn" role="11_B2D">
            <ref role="16sUi3" node="XAmMejHTLl" resolve="IS" />
          </node>
          <node concept="16syzq" id="XAmMejIkxc" role="11_B2D">
            <ref role="16sUi3" node="XAmMejI1OM" resolve="FS" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4N6D1IQ1ylu" role="3clF46">
        <property role="TrG5h" value="refactoringUI" />
        <node concept="3uibUv" id="3D2IEK85gWt" role="1tU5fm">
          <ref role="3uigEE" node="4N6D1IPLesH" resolve="RefactoringUI" />
        </node>
      </node>
      <node concept="37vLTG" id="4N6D1IQ1FaJ" role="3clF46">
        <property role="TrG5h" value="repository" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4N6D1IQ1GWs" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="4N6D1IQ1JRb" role="3clF46">
        <property role="TrG5h" value="searchScope" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4N6D1IQ1LCE" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SearchScope" resolve="SearchScope" />
        </node>
      </node>
      <node concept="3clFbS" id="76O06llMRzJ" role="3clF47">
        <node concept="3clFbH" id="4N6D1IPMtrm" role="3cqZAp" />
        <node concept="3cpWs8" id="2vOGnLEi6yW" role="3cqZAp">
          <node concept="3cpWsn" id="2vOGnLEi6yX" role="3cpWs9">
            <property role="TrG5h" value="participantStates" />
            <property role="3TUv4t" value="true" />
            <node concept="_YKpA" id="5$FcEFMUvzu" role="1tU5fm">
              <node concept="3uibUv" id="5$FcEFMUvzw" role="_ZDj9">
                <ref role="3uigEE" node="5z_gLGerhde" resolve="RefactoringParticipant.ParticipantApplied" />
                <node concept="3qTvmN" id="5$FcEFMUvzx" role="11_B2D" />
                <node concept="3qTvmN" id="5$FcEFMUvzy" role="11_B2D" />
              </node>
            </node>
            <node concept="2ShNRf" id="5$FcEFMUxpj" role="33vP2m">
              <node concept="Tc6Ow" id="5$FcEFMUxno" role="2ShVmc">
                <node concept="3uibUv" id="5$FcEFMUxnp" role="HW$YZ">
                  <ref role="3uigEE" node="5z_gLGerhde" resolve="RefactoringParticipant.ParticipantApplied" />
                  <node concept="3qTvmN" id="5$FcEFMUxnq" role="11_B2D" />
                  <node concept="3qTvmN" id="5$FcEFMUxnr" role="11_B2D" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1OUHNoJUmS7" role="3cqZAp">
          <node concept="3cpWsn" id="1OUHNoJUmS8" role="3cpWs9">
            <property role="TrG5h" value="options" />
            <node concept="_YKpA" id="1OUHNoJUmS9" role="1tU5fm">
              <node concept="3uibUv" id="1OUHNoJUmSa" role="_ZDj9">
                <ref role="3uigEE" node="37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4N6D1IPZhDK" role="3cqZAp">
          <node concept="2OqwBi" id="4N6D1IPZjlA" role="3clFbG">
            <node concept="37vLTw" id="4N6D1IPZhDI" role="2Oq$k0">
              <ref role="3cqZAo" node="4N6D1IQ1ylu" resolve="refactoringUI" />
            </node>
            <node concept="liA8E" id="4N6D1IPZjOW" role="2OqNvi">
              <ref role="37wK5l" node="7DGCeT2Pzqe" resolve="prepare" />
              <node concept="1bVj0M" id="4N6D1IPZk9W" role="37wK5m">
                <node concept="3clFbS" id="4N6D1IPZk9X" role="1bW5cS">
                  <node concept="2Gpval" id="1OUHNoJUmSe" role="3cqZAp">
                    <node concept="2GrKxI" id="1OUHNoJUmSf" role="2Gsz3X">
                      <property role="TrG5h" value="participant" />
                    </node>
                    <node concept="3clFbS" id="1OUHNoJUmSg" role="2LFqv$">
                      <node concept="3clFbF" id="5$FcEFMUzSF" role="3cqZAp">
                        <node concept="2OqwBi" id="5$FcEFMU_hH" role="3clFbG">
                          <node concept="37vLTw" id="5$FcEFMUzSD" role="2Oq$k0">
                            <ref role="3cqZAo" node="2vOGnLEi6yX" resolve="participantStates" />
                          </node>
                          <node concept="TSZUe" id="5$FcEFMUBdW" role="2OqNvi">
                            <node concept="2OqwBi" id="7ram9hsYssP" role="25WWJ7">
                              <node concept="37vLTw" id="7ram9hsYnC9" role="2Oq$k0">
                                <ref role="3cqZAo" node="XAmMejI4hJ" resolve="factory" />
                              </node>
                              <node concept="liA8E" id="7ram9hsYyTz" role="2OqNvi">
                                <ref role="37wK5l" node="7ram9hsTtf0" resolve="apply" />
                                <node concept="2GrUjf" id="7ram9hsYHTv" role="37wK5m">
                                  <ref role="2Gs0qQ" node="1OUHNoJUmSf" resolve="participant" />
                                </node>
                                <node concept="37vLTw" id="7ram9hsYXQO" role="37wK5m">
                                  <ref role="3cqZAo" node="76O06llNnSJ" resolve="nodes" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="76O06llPLuO" role="2GsD0m">
                      <ref role="3cqZAo" node="76O06llPCM5" resolve="participants" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="1OUHNoJUmSG" role="3cqZAp">
                    <node concept="37vLTI" id="1OUHNoJUmSH" role="3clFbG">
                      <node concept="37vLTw" id="2vOGnLEnmCa" role="37vLTJ">
                        <ref role="3cqZAo" node="1OUHNoJUmS8" resolve="options" />
                      </node>
                      <node concept="2OqwBi" id="1OUHNoJUmSI" role="37vLTx">
                        <node concept="2OqwBi" id="1OUHNoJUmSJ" role="2Oq$k0">
                          <node concept="2OqwBi" id="1OUHNoJUmSK" role="2Oq$k0">
                            <node concept="2OqwBi" id="1OUHNoJUmSL" role="2Oq$k0">
                              <node concept="37vLTw" id="2vOGnLEisaQ" role="2Oq$k0">
                                <ref role="3cqZAo" node="2vOGnLEi6yX" resolve="participantStates" />
                              </node>
                              <node concept="3goQfb" id="1OUHNoJUmSN" role="2OqNvi">
                                <node concept="1bVj0M" id="1OUHNoJUmSO" role="23t8la">
                                  <node concept="3clFbS" id="1OUHNoJUmSP" role="1bW5cS">
                                    <node concept="3clFbF" id="1OUHNoJUmSQ" role="3cqZAp">
                                      <node concept="2OqwBi" id="1OUHNoJUmSR" role="3clFbG">
                                        <node concept="liA8E" id="1OUHNoJUmT3" role="2OqNvi">
                                          <ref role="37wK5l" node="5z_gLGerhe$" resolve="getAvaliableOptions" />
                                          <node concept="37vLTw" id="4N6D1IQ1IPb" role="37wK5m">
                                            <ref role="3cqZAo" node="4N6D1IQ1FaJ" resolve="repository" />
                                          </node>
                                        </node>
                                        <node concept="37vLTw" id="2vOGnLEit8E" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5W7E4fV0Xai" resolve="it" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="gl6BB" id="5W7E4fV0Xai" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="5W7E4fV0Xaj" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1VAtEI" id="1OUHNoJUmTa" role="2OqNvi" />
                          </node>
                          <node concept="2S7cBI" id="1OUHNoJUmTb" role="2OqNvi">
                            <node concept="1bVj0M" id="1OUHNoJUmTc" role="23t8la">
                              <node concept="3clFbS" id="1OUHNoJUmTd" role="1bW5cS">
                                <node concept="3clFbF" id="1OUHNoJUmTe" role="3cqZAp">
                                  <node concept="2OqwBi" id="1OUHNoJUmTf" role="3clFbG">
                                    <node concept="37vLTw" id="2vOGnLEnApa" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5W7E4fV0Xak" resolve="it" />
                                    </node>
                                    <node concept="liA8E" id="1OUHNoJUmTh" role="2OqNvi">
                                      <ref role="37wK5l" node="37Il31hWTci" resolve="getDescription" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="5W7E4fV0Xak" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="5W7E4fV0Xal" role="1tU5fm" />
                              </node>
                            </node>
                            <node concept="1nlBCl" id="1OUHNoJUmTk" role="2S7zOq">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                        <node concept="ANE8D" id="1OUHNoJUmTl" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="FLkVtyvSYG" role="3cqZAp" />
        <node concept="3cpWs8" id="FLkVtyz1ED" role="3cqZAp">
          <node concept="3cpWsn" id="FLkVtyz1EE" role="3cpWs9">
            <property role="TrG5h" value="selectedOptions" />
            <property role="3TUv4t" value="true" />
            <node concept="2OqwBi" id="4N6D1IQ099J" role="33vP2m">
              <node concept="37vLTw" id="4N6D1IQ08$X" role="2Oq$k0">
                <ref role="3cqZAo" node="4N6D1IQ1ylu" resolve="refactoringUI" />
              </node>
              <node concept="liA8E" id="4N6D1IQ09$N" role="2OqNvi">
                <ref role="37wK5l" node="7DGCeT2Pzqs" resolve="selectParticipants" />
                <node concept="37vLTw" id="4N6D1IQ0a4s" role="37wK5m">
                  <ref role="3cqZAo" node="1OUHNoJUmS8" resolve="options" />
                </node>
              </node>
            </node>
            <node concept="_YKpA" id="1$U7CScjMMH" role="1tU5fm">
              <node concept="3uibUv" id="1$U7CScjNb$" role="_ZDj9">
                <ref role="3uigEE" node="37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5vafHa2ffKB" role="3cqZAp">
          <node concept="3clFbS" id="5vafHa2ffKD" role="3clFbx">
            <node concept="3cpWs6" id="5vafHa2fkFs" role="3cqZAp">
              <node concept="10Nm6u" id="5vafHa2fMS1" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="5vafHa2fkku" role="3clFbw">
            <node concept="10Nm6u" id="5vafHa2fksK" role="3uHU7w" />
            <node concept="37vLTw" id="5vafHa2fg3X" role="3uHU7B">
              <ref role="3cqZAo" node="FLkVtyz1EE" resolve="selectedOptions" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2FW2ExVj8yX" role="3cqZAp" />
        <node concept="3cpWs8" id="2FW2ExVji$I" role="3cqZAp">
          <node concept="3cpWsn" id="2FW2ExVji$J" role="3cpWs9">
            <property role="TrG5h" value="searchTask" />
            <node concept="3uibUv" id="2FW2ExVji$K" role="1tU5fm">
              <ref role="3uigEE" to="g4jo:7DGCeT2Ukgb" resolve="SearchTask" />
            </node>
            <node concept="2ShNRf" id="2FW2ExVjl7U" role="33vP2m">
              <node concept="YeOm9" id="2FW2ExVjoNZ" role="2ShVmc">
                <node concept="1Y3b0j" id="2FW2ExVjoO2" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="g4jo:7DGCeT2Ukgb" resolve="SearchTask" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="2FW2ExVjoO3" role="1B3o_S" />
                  <node concept="3clFb_" id="2FW2ExVjoO4" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="canExecute" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <node concept="3Tm1VV" id="2FW2ExVjoO5" role="1B3o_S" />
                    <node concept="10P_77" id="2FW2ExVjoO7" role="3clF45" />
                    <node concept="3clFbS" id="2FW2ExVjoO8" role="3clF47">
                      <node concept="3clFbF" id="2FW2ExVjTtE" role="3cqZAp">
                        <node concept="3clFbT" id="2FW2ExVjTtD" role="3clFbG">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFb_" id="2FW2ExVjoOa" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="execute" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <node concept="3Tm1VV" id="2FW2ExVjoOb" role="1B3o_S" />
                    <node concept="37vLTG" id="2FW2ExVjoOe" role="3clF46">
                      <property role="TrG5h" value="progressMonitor" />
                      <property role="3TUv4t" value="false" />
                      <node concept="3uibUv" id="2FW2ExVjoOf" role="1tU5fm">
                        <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="2FW2ExVjoOh" role="3clF45">
                      <ref role="3uigEE" to="g4jo:J2bOg02HbG" resolve="SearchResults" />
                    </node>
                    <node concept="3clFbS" id="2FW2ExVjoOi" role="3clF47">
                      <node concept="3cpWs8" id="1OUHNoJWXMA" role="3cqZAp">
                        <node concept="3cpWsn" id="1OUHNoJWXMB" role="3cpWs9">
                          <property role="TrG5h" value="cancelled" />
                          <node concept="10P_77" id="1OUHNoJWXMC" role="1tU5fm" />
                          <node concept="3clFbT" id="1OUHNoJWXMD" role="33vP2m">
                            <property role="3clFbU" value="false" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="2FW2ExVjZf_" role="3cqZAp">
                        <node concept="2OqwBi" id="2FW2ExVk0eK" role="3clFbG">
                          <node concept="2OqwBi" id="6MDTP4X2bSw" role="2Oq$k0">
                            <node concept="37vLTw" id="6MDTP4X2blr" role="2Oq$k0">
                              <ref role="3cqZAo" node="4N6D1IQ1FaJ" resolve="repository" />
                            </node>
                            <node concept="liA8E" id="6MDTP4X2che" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                            </node>
                          </node>
                          <node concept="liA8E" id="2FW2ExVk0Ml" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                            <node concept="1bVj0M" id="2FW2ExVk1nk" role="37wK5m">
                              <node concept="3clFbS" id="2FW2ExVk1nl" role="1bW5cS">
                                <node concept="3cpWs8" id="1OUHNoJWXN2" role="3cqZAp">
                                  <node concept="3cpWsn" id="1OUHNoJWXN3" role="3cpWs9">
                                    <property role="TrG5h" value="steps" />
                                    <node concept="2OqwBi" id="1OUHNoJWXN6" role="33vP2m">
                                      <node concept="37vLTw" id="2vOGnLEnCnc" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2vOGnLEi6yX" resolve="participantStates" />
                                      </node>
                                      <node concept="34oBXx" id="2vOGnLEnTK9" role="2OqNvi" />
                                    </node>
                                    <node concept="10Oyi0" id="1OUHNoJWXN4" role="1tU5fm" />
                                  </node>
                                </node>
                                <node concept="3clFbF" id="1OUHNoJWXNv" role="3cqZAp">
                                  <node concept="2OqwBi" id="1OUHNoJWXNw" role="3clFbG">
                                    <node concept="37vLTw" id="2vOGnLEns91" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2FW2ExVjoOe" resolve="progressMonitor" />
                                    </node>
                                    <node concept="liA8E" id="1OUHNoJWXNy" role="2OqNvi">
                                      <ref role="37wK5l" to="yyf4:~ProgressMonitor.start(java.lang.String,int)" resolve="start" />
                                      <node concept="Xl_RD" id="1OUHNoJWXNz" role="37wK5m">
                                        <property role="Xl_RC" value="Searching for usages" />
                                      </node>
                                      <node concept="37vLTw" id="1OUHNoJWXN$" role="37wK5m">
                                        <ref role="3cqZAo" node="1OUHNoJWXN3" resolve="steps" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2Gpval" id="1OUHNoJWXN_" role="3cqZAp">
                                  <node concept="2GrKxI" id="1OUHNoJWXNA" role="2Gsz3X">
                                    <property role="TrG5h" value="participantState" />
                                  </node>
                                  <node concept="3clFbS" id="1OUHNoJWXNB" role="2LFqv$">
                                    <node concept="3clFbF" id="1OUHNoJWXNQ" role="3cqZAp">
                                      <node concept="2OqwBi" id="1OUHNoJWXNR" role="3clFbG">
                                        <node concept="2GrUjf" id="2vOGnLEonj0" role="2Oq$k0">
                                          <ref role="2Gs0qQ" node="1OUHNoJWXNA" resolve="participantState" />
                                        </node>
                                        <node concept="liA8E" id="1OUHNoJWXNV" role="2OqNvi">
                                          <ref role="37wK5l" node="5z_gLGerheL" resolve="findChanges" />
                                          <node concept="37vLTw" id="4N6D1IQ1Jy0" role="37wK5m">
                                            <ref role="3cqZAo" node="4N6D1IQ1FaJ" resolve="repository" />
                                          </node>
                                          <node concept="37vLTw" id="2vOGnLEqwKQ" role="37wK5m">
                                            <ref role="3cqZAo" node="FLkVtyz1EE" resolve="selectedOptions" />
                                          </node>
                                          <node concept="37vLTw" id="4N6D1IQ1Nxp" role="37wK5m">
                                            <ref role="3cqZAo" node="4N6D1IQ1JRb" resolve="searchScope" />
                                          </node>
                                          <node concept="2OqwBi" id="1OUHNoJWXO3" role="37wK5m">
                                            <node concept="37vLTw" id="2vOGnLEnugR" role="2Oq$k0">
                                              <ref role="3cqZAo" node="2FW2ExVjoOe" resolve="progressMonitor" />
                                            </node>
                                            <node concept="liA8E" id="1OUHNoJWXO5" role="2OqNvi">
                                              <ref role="37wK5l" to="yyf4:~ProgressMonitor.subTask(int,org.jetbrains.mps.openapi.util.SubProgressKind)" resolve="subTask" />
                                              <node concept="3cmrfG" id="1OUHNoJWXO6" role="37wK5m">
                                                <property role="3cmrfH" value="1" />
                                              </node>
                                              <node concept="Rm8GO" id="1OUHNoJWXO7" role="37wK5m">
                                                <ref role="Rm8GQ" to="yyf4:~SubProgressKind.AS_COMMENT" resolve="AS_COMMENT" />
                                                <ref role="1Px2BO" to="yyf4:~SubProgressKind" resolve="SubProgressKind" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbJ" id="1OUHNoJWXNF" role="3cqZAp">
                                      <node concept="3clFbS" id="1OUHNoJWXNG" role="3clFbx">
                                        <node concept="3clFbF" id="1OUHNoJWXNH" role="3cqZAp">
                                          <node concept="37vLTI" id="1OUHNoJWXNI" role="3clFbG">
                                            <node concept="3clFbT" id="1OUHNoJWXNJ" role="37vLTx">
                                              <property role="3clFbU" value="true" />
                                            </node>
                                            <node concept="37vLTw" id="2vOGnLEnsBe" role="37vLTJ">
                                              <ref role="3cqZAo" node="1OUHNoJWXMB" resolve="cancelled" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3zACq4" id="1OUHNoJWXNL" role="3cqZAp" />
                                      </node>
                                      <node concept="2OqwBi" id="1OUHNoJWXNN" role="3clFbw">
                                        <node concept="37vLTw" id="1OUHNoJWXNO" role="2Oq$k0">
                                          <ref role="3cqZAo" node="2FW2ExVjoOe" resolve="progressMonitor" />
                                        </node>
                                        <node concept="liA8E" id="1OUHNoJWXNP" role="2OqNvi">
                                          <ref role="37wK5l" to="yyf4:~ProgressMonitor.isCanceled()" resolve="isCanceled" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="1OUHNoJWXOb" role="2GsD0m">
                                    <ref role="3cqZAo" node="2vOGnLEi6yX" resolve="participantStates" />
                                  </node>
                                </node>
                                <node concept="3clFbF" id="1OUHNoJWXOd" role="3cqZAp">
                                  <node concept="2OqwBi" id="1OUHNoJWXOe" role="3clFbG">
                                    <node concept="37vLTw" id="2vOGnLEnv3H" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2FW2ExVjoOe" resolve="progressMonitor" />
                                    </node>
                                    <node concept="liA8E" id="1OUHNoJWXOg" role="2OqNvi">
                                      <ref role="37wK5l" to="yyf4:~ProgressMonitor.done()" resolve="done" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="1OUHNoJWXOq" role="3cqZAp">
                        <node concept="3clFbS" id="1OUHNoJWXOr" role="3clFbx">
                          <node concept="3cpWs6" id="1OUHNoJWXOs" role="3cqZAp">
                            <node concept="10Nm6u" id="1OUHNoJXiG3" role="3cqZAk" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="1OUHNoJWXOt" role="3clFbw">
                          <ref role="3cqZAo" node="1OUHNoJWXMB" resolve="cancelled" />
                        </node>
                      </node>
                      <node concept="3cpWs8" id="7DGCeT2O1$r" role="3cqZAp">
                        <node concept="3cpWsn" id="7DGCeT2O1$s" role="3cpWs9">
                          <property role="TrG5h" value="searchResults" />
                          <node concept="3uibUv" id="7DGCeT2O1$t" role="1tU5fm">
                            <ref role="3uigEE" to="g4jo:J2bOg02HbG" resolve="SearchResults" />
                          </node>
                          <node concept="2ShNRf" id="7DGCeT2O1$u" role="33vP2m">
                            <node concept="1pGfFk" id="7DGCeT2O1$v" role="2ShVmc">
                              <ref role="37wK5l" to="g4jo:J2bOg02HbW" resolve="SearchResults" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2Gpval" id="7DGCeT2O1$w" role="3cqZAp">
                        <node concept="2GrKxI" id="7DGCeT2O1$x" role="2Gsz3X">
                          <property role="TrG5h" value="participantState" />
                        </node>
                        <node concept="3clFbS" id="7DGCeT2O1$y" role="2LFqv$">
                          <node concept="3cpWs8" id="7DGCeT2O1$z" role="3cqZAp">
                            <node concept="3cpWsn" id="7DGCeT2O1$$" role="3cpWs9">
                              <property role="TrG5h" value="participantChanges" />
                              <node concept="_YKpA" id="7DGCeT2O1$_" role="1tU5fm">
                                <node concept="3qUE_q" id="7DGCeT2O1$A" role="_ZDj9">
                                  <node concept="_YKpA" id="7DGCeT2O1$B" role="3qUE_r">
                                    <node concept="3qUE_q" id="7DGCeT2O1$C" role="_ZDj9">
                                      <node concept="3uibUv" id="7DGCeT2O1$D" role="3qUE_r">
                                        <ref role="3uigEE" node="3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
                                        <node concept="3qTvmN" id="7DGCeT2O1$E" role="11_B2D" />
                                        <node concept="3qTvmN" id="7DGCeT2O1$F" role="11_B2D" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="7DGCeT2O1$G" role="33vP2m">
                                <node concept="2GrUjf" id="7DGCeT2O1$H" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="7DGCeT2O1$x" resolve="participantState" />
                                </node>
                                <node concept="liA8E" id="7DGCeT2O1$I" role="2OqNvi">
                                  <ref role="37wK5l" node="5z_gLGerhdt" resolve="getChanges" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2Gpval" id="7DGCeT2O1$J" role="3cqZAp">
                            <node concept="37vLTw" id="7DGCeT2O1$K" role="2GsD0m">
                              <ref role="3cqZAo" node="7DGCeT2O1$$" resolve="participantChanges" />
                            </node>
                            <node concept="2GrKxI" id="7DGCeT2O1$L" role="2Gsz3X">
                              <property role="TrG5h" value="nodeChanges" />
                            </node>
                            <node concept="3clFbS" id="7DGCeT2O1$M" role="2LFqv$">
                              <node concept="2Gpval" id="7DGCeT2O1$N" role="3cqZAp">
                                <node concept="2GrUjf" id="7DGCeT2O1$O" role="2GsD0m">
                                  <ref role="2Gs0qQ" node="7DGCeT2O1$L" resolve="nodeChanges" />
                                </node>
                                <node concept="2GrKxI" id="7DGCeT2O1$P" role="2Gsz3X">
                                  <property role="TrG5h" value="change" />
                                </node>
                                <node concept="3clFbS" id="7DGCeT2O1$Q" role="2LFqv$">
                                  <node concept="3clFbF" id="6Z2$cIIts5q" role="3cqZAp">
                                    <node concept="37vLTI" id="6Z2$cIItsvd" role="3clFbG">
                                      <node concept="37vLTw" id="6Z2$cIIts5o" role="37vLTJ">
                                        <ref role="3cqZAo" node="7DGCeT2O1$s" resolve="searchResults" />
                                      </node>
                                      <node concept="2OqwBi" id="7DGCeT2O1$S" role="37vLTx">
                                        <node concept="37vLTw" id="7DGCeT2O1$T" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7DGCeT2O1$s" resolve="searchResults" />
                                        </node>
                                        <node concept="liA8E" id="7DGCeT2O1$U" role="2OqNvi">
                                          <ref role="37wK5l" to="g4jo:4mN_90IM3Om" resolve="addSearchResults" />
                                          <node concept="2OqwBi" id="7DGCeT2O1$V" role="37wK5m">
                                            <node concept="2GrUjf" id="7DGCeT2O1$W" role="2Oq$k0">
                                              <ref role="2Gs0qQ" node="7DGCeT2O1$P" resolve="change" />
                                            </node>
                                            <node concept="liA8E" id="7DGCeT2O1$X" role="2OqNvi">
                                              <ref role="37wK5l" node="3KqYwoBIMaY" resolve="getSearchResults" />
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
                        <node concept="37vLTw" id="2FW2ExVgRcG" role="2GsD0m">
                          <ref role="3cqZAo" node="2vOGnLEi6yX" resolve="participantStates" />
                        </node>
                      </node>
                      <node concept="3cpWs6" id="2FW2ExVjQRW" role="3cqZAp">
                        <node concept="37vLTw" id="2FW2ExVjSt8" role="3cqZAk">
                          <ref role="3cqZAo" node="7DGCeT2O1$s" resolve="searchResults" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1OUHNoJWXOp" role="3cqZAp" />
        <node concept="3cpWs6" id="7DGCeT2O1$Z" role="3cqZAp">
          <node concept="1Ls8ON" id="7DGCeT2O$kI" role="3cqZAk">
            <node concept="37vLTw" id="7DGCeT2OBfC" role="1Lso8e">
              <ref role="3cqZAo" node="2vOGnLEi6yX" resolve="participantStates" />
            </node>
            <node concept="37vLTw" id="2FW2ExVl5Ow" role="1Lso8e">
              <ref role="3cqZAo" node="2FW2ExVji$J" resolve="searchTask" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="76O06llPCM5" role="3clF46">
        <property role="TrG5h" value="participants" />
        <node concept="A3Dl8" id="76O06llRkFR" role="1tU5fm">
          <node concept="3qUE_q" id="76O06llRkFT" role="A3Ik2">
            <node concept="3uibUv" id="76O06llRkFU" role="3qUE_r">
              <ref role="3uigEE" node="3KqYwoBIxpF" resolve="RefactoringParticipant" />
              <node concept="3qTvmN" id="76O06llRkFV" role="11_B2D" />
              <node concept="3qTvmN" id="76O06llRkFW" role="11_B2D" />
              <node concept="16syzq" id="76O06llRkFX" role="11_B2D">
                <ref role="16sUi3" node="76O06llOwZz" resolve="IP" />
              </node>
              <node concept="16syzq" id="76O06llRkFY" role="11_B2D">
                <ref role="16sUi3" node="76O06llR4kC" resolve="FP" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="76O06llNnSJ" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="_YKpA" id="2vOGnLEioWO" role="1tU5fm">
          <node concept="16syzq" id="XAmMejIwWy" role="_ZDj9">
            <ref role="16sUi3" node="XAmMejHTLl" resolve="IS" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="76O06llMRzI" role="1B3o_S" />
      <node concept="16euLQ" id="76O06llOwZz" role="16eVyc">
        <property role="TrG5h" value="IP" />
      </node>
      <node concept="16euLQ" id="76O06llR4kC" role="16eVyc">
        <property role="TrG5h" value="FP" />
      </node>
      <node concept="16euLQ" id="XAmMejHTLl" role="16eVyc">
        <property role="TrG5h" value="IS" />
      </node>
      <node concept="16euLQ" id="XAmMejI1OM" role="16eVyc">
        <property role="TrG5h" value="FS" />
      </node>
      <node concept="1LlUBW" id="7DGCeT2SJFf" role="3clF45">
        <node concept="_YKpA" id="7DGCeT2Vx1z" role="1Lm7xW">
          <node concept="3uibUv" id="7DGCeT2Vx1_" role="_ZDj9">
            <ref role="3uigEE" node="5z_gLGerhde" resolve="RefactoringParticipant.ParticipantApplied" />
            <node concept="3qTvmN" id="7DGCeT2Vx1A" role="11_B2D" />
            <node concept="3qTvmN" id="7DGCeT2Vx1B" role="11_B2D" />
          </node>
        </node>
        <node concept="3uibUv" id="2FW2ExVl8LW" role="1Lm7xW">
          <ref role="3uigEE" to="g4jo:7DGCeT2Ukgb" resolve="SearchTask" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4N6D1IQ3DEb" role="jymVt" />
    <node concept="2YIFZL" id="4fSm5R8N4ge" role="jymVt">
      <property role="TrG5h" value="performRefactoringInProject" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="4fSm5R8N4gf" role="3clF47">
        <node concept="3cpWs8" id="4fSm5R8N4gg" role="3cqZAp">
          <node concept="3cpWsn" id="4fSm5R8N4gh" role="3cpWs9">
            <property role="TrG5h" value="refactoringSession" />
            <node concept="3uibUv" id="4fSm5R8N4gi" role="1tU5fm">
              <ref role="3uigEE" node="FLkVtyCNd2" resolve="RefactoringSessionImpl" />
            </node>
            <node concept="2ShNRf" id="4fSm5R8N4gj" role="33vP2m">
              <node concept="1pGfFk" id="7PqTV1oX1by" role="2ShVmc">
                <ref role="37wK5l" node="7PqTV1oWHU5" resolve="RefactoringSessionImpl" />
                <node concept="2OqwBi" id="7PqTV1oX2Gu" role="37wK5m">
                  <node concept="37vLTw" id="7PqTV1oX1R$" role="2Oq$k0">
                    <ref role="3cqZAo" node="3ly2gVliqCP" resolve="refactoringBody" />
                  </node>
                  <node concept="liA8E" id="7PqTV1oX3tT" role="2OqNvi">
                    <ref role="37wK5l" node="2EZTs$ts_ce" resolve="getRefactoringName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3ly2gVltDxV" role="3cqZAp">
          <node concept="3cpWsn" id="3ly2gVltDxW" role="3cpWs9">
            <property role="TrG5h" value="initialStates" />
            <node concept="_YKpA" id="3ly2gVltDxR" role="1tU5fm">
              <node concept="16syzq" id="3ly2gVltDxU" role="_ZDj9">
                <ref role="16sUi3" node="4fSm5R8N4hG" resolve="IP" />
              </node>
            </node>
            <node concept="2OqwBi" id="3ly2gVltDxX" role="33vP2m">
              <node concept="37vLTw" id="3ly2gVltDxY" role="2Oq$k0">
                <ref role="3cqZAo" node="3ly2gVliqCP" resolve="refactoringBody" />
              </node>
              <node concept="liA8E" id="3ly2gVltDxZ" role="2OqNvi">
                <ref role="37wK5l" node="2EZTs$tsEDp" resolve="findInitialStates" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4fSm5R8N4gl" role="3cqZAp">
          <node concept="1rXfSq" id="4fSm5R8N4gm" role="3clFbG">
            <ref role="37wK5l" node="76O06llVMad" resolve="performRefactoring" />
            <node concept="2ShNRf" id="4fSm5R8N4gn" role="37wK5m">
              <node concept="HV5vD" id="4fSm5R8N4go" role="2ShVmc">
                <ref role="HV5vE" node="XAmMejEI3D" resolve="RefactoringParticipant.CollectingParticipantStateFactory" />
                <node concept="16syzq" id="4fSm5R8N4gp" role="HU9BZ">
                  <ref role="16sUi3" node="4fSm5R8N4hG" resolve="IP" />
                </node>
                <node concept="16syzq" id="4fSm5R8N4gq" role="HU9BZ">
                  <ref role="16sUi3" node="4fSm5R8N4hH" resolve="FP" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2q4uhJjUxWV" role="37wK5m">
              <ref role="3cqZAo" node="2q4uhJjUwS6" resolve="refactoringUI" />
            </node>
            <node concept="37vLTw" id="4fSm5R8N4gu" role="37wK5m">
              <ref role="3cqZAo" node="4fSm5R8N4gh" resolve="refactoringSession" />
            </node>
            <node concept="2OqwBi" id="4fSm5R8N4gv" role="37wK5m">
              <node concept="37vLTw" id="4fSm5R8N4gw" role="2Oq$k0">
                <ref role="3cqZAo" node="4fSm5R8N4h9" resolve="project" />
              </node>
              <node concept="liA8E" id="4fSm5R8N4gx" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
              </node>
            </node>
            <node concept="2OqwBi" id="4fSm5R8N4gy" role="37wK5m">
              <node concept="37vLTw" id="4fSm5R8N4gz" role="2Oq$k0">
                <ref role="3cqZAo" node="4fSm5R8N4h9" resolve="project" />
              </node>
              <node concept="liA8E" id="4fSm5R8N4g$" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getScope()" resolve="getScope" />
              </node>
            </node>
            <node concept="2OqwBi" id="3ly2gVliyeP" role="37wK5m">
              <node concept="37vLTw" id="3ly2gVlixJE" role="2Oq$k0">
                <ref role="3cqZAo" node="3ly2gVliqCP" resolve="refactoringBody" />
              </node>
              <node concept="liA8E" id="3ly2gVliyCp" role="2OqNvi">
                <ref role="37wK5l" node="2EZTs$ts_Dv" resolve="getAllAvailableParticipants" />
              </node>
            </node>
            <node concept="37vLTw" id="3ly2gVltDy0" role="37wK5m">
              <ref role="3cqZAo" node="3ly2gVltDxW" resolve="initialStates" />
            </node>
            <node concept="1bVj0M" id="23EHyRfrbUU" role="37wK5m">
              <node concept="3clFbS" id="23EHyRfrbUW" role="1bW5cS">
                <node concept="3clFbF" id="23EHyRfrcHN" role="3cqZAp">
                  <node concept="2OqwBi" id="23EHyRfrdJV" role="3clFbG">
                    <node concept="37vLTw" id="23EHyRfrcHM" role="2Oq$k0">
                      <ref role="3cqZAo" node="3ly2gVliqCP" resolve="refactoringBody" />
                    </node>
                    <node concept="liA8E" id="23EHyRfreGP" role="2OqNvi">
                      <ref role="37wK5l" node="23EHyRfr80i" resolve="prepareRefactoring" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1bVj0M" id="4fSm5R8N4gC" role="37wK5m">
              <node concept="37vLTG" id="4fSm5R8N4gD" role="1bW2Oz">
                <property role="TrG5h" value="participantStates" />
                <node concept="A3Dl8" id="4fSm5R8N4gE" role="1tU5fm">
                  <node concept="3uibUv" id="4fSm5R8N4gF" role="A3Ik2">
                    <ref role="3uigEE" node="5z_gLGerhde" resolve="RefactoringParticipant.ParticipantApplied" />
                    <node concept="3qTvmN" id="4fSm5R8N4gG" role="11_B2D" />
                    <node concept="3qTvmN" id="4fSm5R8N4gH" role="11_B2D" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="4fSm5R8N4gM" role="1bW5cS">
                <node concept="3clFbF" id="4fSm5R8N4gN" role="3cqZAp">
                  <node concept="2OqwBi" id="3ly2gVli_Fa" role="3clFbG">
                    <node concept="37vLTw" id="3ly2gVli_2c" role="2Oq$k0">
                      <ref role="3cqZAo" node="3ly2gVliqCP" resolve="refactoringBody" />
                    </node>
                    <node concept="liA8E" id="3ly2gVliAez" role="2OqNvi">
                      <ref role="37wK5l" node="2EZTs$tsFaN" resolve="doRefactor" />
                      <node concept="37vLTw" id="3ly2gVliB4L" role="37wK5m">
                        <ref role="3cqZAo" node="4fSm5R8N4gD" resolve="participantStates" />
                      </node>
                      <node concept="37vLTw" id="3ly2gVliCHy" role="37wK5m">
                        <ref role="3cqZAo" node="4fSm5R8N4gh" resolve="refactoringSession" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3ly2gVltu$j" role="3cqZAp">
                  <node concept="3cpWsn" id="3ly2gVltu$m" role="3cpWs9">
                    <property role="TrG5h" value="finalStateMap" />
                    <node concept="3rvAFt" id="3ly2gVltu$d" role="1tU5fm">
                      <node concept="16syzq" id="3ly2gVltvl2" role="3rvQeY">
                        <ref role="16sUi3" node="4fSm5R8N4hG" resolve="IP" />
                      </node>
                      <node concept="16syzq" id="3ly2gVltw0r" role="3rvSg0">
                        <ref role="16sUi3" node="4fSm5R8N4hH" resolve="FP" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="3ly2gVlt$mg" role="33vP2m">
                      <node concept="3rGOSV" id="3ly2gVlt$bA" role="2ShVmc">
                        <node concept="16syzq" id="3ly2gVlt$bB" role="3rHrn6">
                          <ref role="16sUi3" node="4fSm5R8N4hG" resolve="IP" />
                        </node>
                        <node concept="16syzq" id="3ly2gVlt$bC" role="3rHtpV">
                          <ref role="16sUi3" node="4fSm5R8N4hH" resolve="FP" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2Gpval" id="3ly2gVlt_LE" role="3cqZAp">
                  <node concept="2GrKxI" id="3ly2gVlt_LG" role="2Gsz3X">
                    <property role="TrG5h" value="is" />
                  </node>
                  <node concept="37vLTw" id="3ly2gVltDy1" role="2GsD0m">
                    <ref role="3cqZAo" node="3ly2gVltDxW" resolve="initialStates" />
                  </node>
                  <node concept="3clFbS" id="3ly2gVlt_LK" role="2LFqv$">
                    <node concept="3clFbF" id="3ly2gVltIbs" role="3cqZAp">
                      <node concept="37vLTI" id="3ly2gVltKGw" role="3clFbG">
                        <node concept="2OqwBi" id="3ly2gVltMwy" role="37vLTx">
                          <node concept="37vLTw" id="3ly2gVltL_P" role="2Oq$k0">
                            <ref role="3cqZAo" node="3ly2gVliqCP" resolve="refactoringBody" />
                          </node>
                          <node concept="liA8E" id="3ly2gVltNm_" role="2OqNvi">
                            <ref role="37wK5l" node="3ly2gVln_Kj" resolve="getFinalStateFor" />
                            <node concept="2GrUjf" id="3ly2gVltOb5" role="37wK5m">
                              <ref role="2Gs0qQ" node="3ly2gVlt_LG" resolve="is" />
                            </node>
                          </node>
                        </node>
                        <node concept="3EllGN" id="3ly2gVltJef" role="37vLTJ">
                          <node concept="2GrUjf" id="3ly2gVltJYu" role="3ElVtu">
                            <ref role="2Gs0qQ" node="3ly2gVlt_LG" resolve="is" />
                          </node>
                          <node concept="37vLTw" id="3ly2gVltIbr" role="3ElQJh">
                            <ref role="3cqZAo" node="3ly2gVltu$m" resolve="finalStateMap" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="3ly2gVltU$l" role="3cqZAp">
                  <node concept="3clFbS" id="3ly2gVltU$n" role="3clFbx">
                    <node concept="RRSsy" id="2q4uhJjUUA_" role="3cqZAp">
                      <property role="RRSoG" value="gZ5fh_4/error" />
                      <node concept="3cpWs3" id="2q4uhJjV8ex" role="RRSoy">
                        <node concept="2OqwBi" id="2q4uhJjVfUm" role="3uHU7w">
                          <node concept="2OqwBi" id="2q4uhJjVa9V" role="2Oq$k0">
                            <node concept="37vLTw" id="2q4uhJjV93L" role="2Oq$k0">
                              <ref role="3cqZAo" node="3ly2gVltu$m" resolve="finalStateMap" />
                            </node>
                            <node concept="1z4cxt" id="2q4uhJjVhAe" role="2OqNvi">
                              <node concept="1bVj0M" id="2q4uhJjVhAg" role="23t8la">
                                <node concept="3clFbS" id="2q4uhJjVhAh" role="1bW5cS">
                                  <node concept="3clFbF" id="2q4uhJjVhAi" role="3cqZAp">
                                    <node concept="3clFbC" id="2q4uhJjVhAj" role="3clFbG">
                                      <node concept="10Nm6u" id="2q4uhJjVhAk" role="3uHU7w" />
                                      <node concept="2OqwBi" id="2q4uhJjVhAl" role="3uHU7B">
                                        <node concept="37vLTw" id="2q4uhJjVhAm" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5W7E4fV0Xam" resolve="it" />
                                        </node>
                                        <node concept="3AV6Ez" id="2q4uhJjVhAn" role="2OqNvi" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="5W7E4fV0Xam" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="5W7E4fV0Xan" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3AY5_j" id="2q4uhJjViEE" role="2OqNvi" />
                        </node>
                        <node concept="Xl_RD" id="2q4uhJjUWmj" role="3uHU7B">
                          <property role="Xl_RC" value="Refactoring was interrupted. Final state is null for initial state '" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="3ly2gVluOdk" role="3cqZAp">
                      <node concept="10Nm6u" id="3ly2gVluPhd" role="3cqZAk" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3ly2gVltYGz" role="3clFbw">
                    <node concept="2OqwBi" id="3ly2gVltWuf" role="2Oq$k0">
                      <node concept="37vLTw" id="3ly2gVltVrh" role="2Oq$k0">
                        <ref role="3cqZAo" node="3ly2gVltu$m" resolve="finalStateMap" />
                      </node>
                      <node concept="T8wYR" id="3ly2gVltXww" role="2OqNvi" />
                    </node>
                    <node concept="3JPx81" id="3ly2gVltZyC" role="2OqNvi">
                      <node concept="10Nm6u" id="3ly2gVlu0gy" role="25WWJ7" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="3ly2gVltRLO" role="3cqZAp">
                  <node concept="37vLTw" id="3ly2gVltSYO" role="3cqZAk">
                    <ref role="3cqZAo" node="3ly2gVltu$m" resolve="finalStateMap" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1bVj0M" id="4fSm5R8N4gT" role="37wK5m">
              <node concept="3clFbS" id="4fSm5R8N4gU" role="1bW5cS">
                <node concept="3clFbF" id="4fSm5R8N4gV" role="3cqZAp">
                  <node concept="2OqwBi" id="4fSm5R8N4gW" role="3clFbG">
                    <node concept="37vLTw" id="4fSm5R8N4gX" role="2Oq$k0">
                      <ref role="3cqZAo" node="4fSm5R8N4gh" resolve="refactoringSession" />
                    </node>
                    <node concept="liA8E" id="4fSm5R8N4gY" role="2OqNvi">
                      <ref role="37wK5l" node="3KqYwoBJ10q" resolve="performAllRegistered" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3ly2gVliMNO" role="3cqZAp">
                  <node concept="2OqwBi" id="3ly2gVliNF1" role="3clFbG">
                    <node concept="37vLTw" id="3ly2gVliMNM" role="2Oq$k0">
                      <ref role="3cqZAo" node="3ly2gVliqCP" resolve="refactoringBody" />
                    </node>
                    <node concept="liA8E" id="3ly2gVliOsJ" role="2OqNvi">
                      <ref role="37wK5l" node="2EZTs$tsFHd" resolve="doCleanup" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4fSm5R8N4h9" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="2q4uhJjUqp4" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="2q4uhJjUwS6" role="3clF46">
        <property role="TrG5h" value="refactoringUI" />
        <node concept="3uibUv" id="2q4uhJjUxFy" role="1tU5fm">
          <ref role="3uigEE" node="4N6D1IPLesH" resolve="RefactoringUI" />
        </node>
      </node>
      <node concept="37vLTG" id="3ly2gVliqCP" role="3clF46">
        <property role="TrG5h" value="refactoringBody" />
        <node concept="3uibUv" id="3ly2gVlirPF" role="1tU5fm">
          <ref role="3uigEE" node="2EZTs$tsIo8" resolve="RefactoringProcessor.RefactoringBody" />
          <node concept="16syzq" id="3ly2gVliFJQ" role="11_B2D">
            <ref role="16sUi3" node="4fSm5R8N4hG" resolve="IP" />
          </node>
          <node concept="16syzq" id="3ly2gVliHAK" role="11_B2D">
            <ref role="16sUi3" node="4fSm5R8N4hH" resolve="FP" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4fSm5R8N4hE" role="1B3o_S" />
      <node concept="3cqZAl" id="4fSm5R8N4hF" role="3clF45" />
      <node concept="16euLQ" id="4fSm5R8N4hG" role="16eVyc">
        <property role="TrG5h" value="IP" />
      </node>
      <node concept="16euLQ" id="4fSm5R8N4hH" role="16eVyc">
        <property role="TrG5h" value="FP" />
      </node>
      <node concept="P$JXv" id="4fSm5R8Nr7Y" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsEkm" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsEkn" role="1PaTwD">
            <property role="3oM_SC" value="Update" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEko" role="1PaTwD">
            <property role="3oM_SC" value="usages" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEkp" role="1PaTwD">
            <property role="3oM_SC" value="during" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEkq" role="1PaTwD">
            <property role="3oM_SC" value="refactoring." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsEkr" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsEks" role="1PaTwD">
            <property role="3oM_SC" value="For" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEkt" role="1PaTwD">
            <property role="3oM_SC" value="calling" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEku" role="1PaTwD">
            <property role="3oM_SC" value="not" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEkv" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEkw" role="1PaTwD">
            <property role="3oM_SC" value="migration" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEkx" role="1PaTwD">
            <property role="3oM_SC" value="assistant" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEky" role="1PaTwD">
            <property role="3oM_SC" value="but" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEkz" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEk$" role="1PaTwD">
            <property role="3oM_SC" value="interactive" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEk_" role="1PaTwD">
            <property role="3oM_SC" value="environment," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEkA" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEkB" role="1PaTwD">
            <property role="3oM_SC" value="performs" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEkC" role="1PaTwD">
            <property role="3oM_SC" value="all" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEkD" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEkE" role="1PaTwD">
            <property role="3oM_SC" value="single" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEkF" role="1PaTwD">
            <property role="3oM_SC" value="refactoring" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEkG" role="1PaTwD">
            <property role="3oM_SC" value="session" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEkH" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEkI" role="1PaTwD">
            <property role="3oM_SC" value="project" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEkJ" role="1PaTwD">
            <property role="3oM_SC" value="scope." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2EZTs$tuO94" role="jymVt" />
    <node concept="3HP615" id="2EZTs$tsIo8" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="RefactoringBody" />
      <node concept="3clFb_" id="2EZTs$ts_ce" role="jymVt">
        <property role="TrG5h" value="getRefactoringName" />
        <node concept="3Tm1VV" id="2EZTs$ts_cf" role="1B3o_S" />
        <node concept="3clFbS" id="2EZTs$ts_cg" role="3clF47" />
        <node concept="17QB3L" id="2EZTs$ts_mJ" role="3clF45" />
      </node>
      <node concept="3clFb_" id="2EZTs$ts_Dv" role="jymVt">
        <property role="TrG5h" value="getAllAvailableParticipants" />
        <node concept="3Tm1VV" id="2EZTs$ts_Dw" role="1B3o_S" />
        <node concept="3clFbS" id="2EZTs$ts_Dx" role="3clF47" />
        <node concept="3uibUv" id="3ly2gVlnhAA" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3qUE_q" id="2EZTs$tsEux" role="11_B2D">
            <node concept="3uibUv" id="2EZTs$tsEuy" role="3qUE_r">
              <ref role="3uigEE" node="3KqYwoBIxpF" resolve="RefactoringParticipant" />
              <node concept="3qTvmN" id="2EZTs$tsEuz" role="11_B2D" />
              <node concept="3qTvmN" id="2EZTs$tsEu$" role="11_B2D" />
              <node concept="16syzq" id="2EZTs$tsEu_" role="11_B2D">
                <ref role="16sUi3" node="2EZTs$tswfe" resolve="IP" />
              </node>
              <node concept="16syzq" id="2EZTs$tsEuA" role="11_B2D">
                <ref role="16sUi3" node="2EZTs$tswhg" resolve="FP" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2EZTs$tsEDp" role="jymVt">
        <property role="TrG5h" value="findInitialStates" />
        <node concept="3Tm1VV" id="2EZTs$tsEDq" role="1B3o_S" />
        <node concept="3clFbS" id="2EZTs$tsEDr" role="3clF47" />
        <node concept="_YKpA" id="2EZTs$tsEKn" role="3clF45">
          <node concept="16syzq" id="3ly2gVlmE7k" role="_ZDj9">
            <ref role="16sUi3" node="2EZTs$tswfe" resolve="IP" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="23EHyRfr5eB" role="jymVt" />
      <node concept="3clFb_" id="23EHyRfr80i" role="jymVt">
        <property role="TrG5h" value="prepareRefactoring" />
        <node concept="3clFbS" id="23EHyRfr80l" role="3clF47" />
        <node concept="3Tm1VV" id="23EHyRfr80m" role="1B3o_S" />
        <node concept="3cqZAl" id="23EHyRfr76l" role="3clF45" />
        <node concept="P$JXv" id="23EHyRfr9dW" role="lGtFl">
          <node concept="1PaTwC" id="1E1X3WHsEkK" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsEkL" role="1PaTwD">
              <property role="3oM_SC" value="Called" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEkM" role="1PaTwD">
              <property role="3oM_SC" value="right" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEkN" role="1PaTwD">
              <property role="3oM_SC" value="before" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEkO" role="1PaTwD">
              <property role="3oM_SC" value="doRefactor()," />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEkP" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEkQ" role="1PaTwD">
              <property role="3oM_SC" value="outside" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEkR" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEkS" role="1PaTwD">
              <property role="3oM_SC" value="command," />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEkT" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEkU" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEkV" role="1PaTwD">
              <property role="3oM_SC" value="dialogs" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEkW" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEkX" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEkY" role="1PaTwD">
              <property role="3oM_SC" value="shown." />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2EZTs$tsFaN" role="jymVt">
        <property role="TrG5h" value="doRefactor" />
        <node concept="37vLTG" id="2EZTs$tte4J" role="3clF46">
          <property role="TrG5h" value="participantStates" />
          <node concept="A3Dl8" id="2EZTs$tsFdH" role="1tU5fm">
            <node concept="3uibUv" id="2EZTs$tsFdI" role="A3Ik2">
              <ref role="3uigEE" node="5z_gLGerhde" resolve="RefactoringParticipant.ParticipantApplied" />
              <node concept="3qTvmN" id="2EZTs$tsFdJ" role="11_B2D" />
              <node concept="3qTvmN" id="2EZTs$tsFdK" role="11_B2D" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2EZTs$tuKqe" role="3clF46">
          <property role="TrG5h" value="refactoringSession" />
          <node concept="3uibUv" id="2EZTs$tuLeb" role="1tU5fm">
            <ref role="3uigEE" node="3KqYwoBJ0xf" resolve="RefactoringSession" />
          </node>
        </node>
        <node concept="3Tm1VV" id="2EZTs$tsFaQ" role="1B3o_S" />
        <node concept="3clFbS" id="2EZTs$tsFaR" role="3clF47" />
        <node concept="3cqZAl" id="3ly2gVln$kU" role="3clF45" />
        <node concept="P$JXv" id="3ly2gVljunX" role="lGtFl">
          <node concept="1PaTwC" id="1E1X3WHsEkZ" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsEl0" role="1PaTwD">
              <property role="3oM_SC" value="Perform" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEl1" role="1PaTwD">
              <property role="3oM_SC" value="refactoring" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEl2" role="1PaTwD">
              <property role="3oM_SC" value="itself" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEl3" role="1PaTwD">
              <property role="3oM_SC" value="(e.g." />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEl4" role="1PaTwD">
              <property role="3oM_SC" value="move" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEl5" role="1PaTwD">
              <property role="3oM_SC" value="or" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEl6" role="1PaTwD">
              <property role="3oM_SC" value="rename" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEl7" role="1PaTwD">
              <property role="3oM_SC" value="smth)." />
            </node>
          </node>
          <node concept="1PaTwC" id="1E1X3WHsEl8" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsEl9" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
          <node concept="1PaTwC" id="1E1X3WHsEla" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsElb" role="1PaTwD">
              <property role="3oM_SC" value="Executed" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElc" role="1PaTwD">
              <property role="3oM_SC" value="inside" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEld" role="1PaTwD">
              <property role="3oM_SC" value="command." />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="3ly2gVln_Kj" role="jymVt">
        <property role="TrG5h" value="getFinalStateFor" />
        <node concept="37vLTG" id="3ly2gVlnBxl" role="3clF46">
          <property role="TrG5h" value="initialState" />
          <node concept="16syzq" id="3ly2gVlnBHS" role="1tU5fm">
            <ref role="16sUi3" node="2EZTs$tswfe" resolve="IP" />
          </node>
        </node>
        <node concept="16syzq" id="3ly2gVlnASq" role="3clF45">
          <ref role="16sUi3" node="2EZTs$tswhg" resolve="FP" />
        </node>
        <node concept="3Tm1VV" id="3ly2gVln_Km" role="1B3o_S" />
        <node concept="3clFbS" id="3ly2gVln_Kn" role="3clF47" />
        <node concept="P$JXv" id="3ly2gVlnBPE" role="lGtFl">
          <node concept="1PaTwC" id="1E1X3WHsEle" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsElf" role="1PaTwD">
              <property role="3oM_SC" value="Pure" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElg" role="1PaTwD">
              <property role="3oM_SC" value="method" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElh" role="1PaTwD">
              <property role="3oM_SC" value="doing" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEli" role="1PaTwD">
              <property role="3oM_SC" value="nothing" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElj" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElk" role="1PaTwD">
              <property role="3oM_SC" value="looking" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEll" role="1PaTwD">
              <property role="3oM_SC" value="into" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElm" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEln" role="1PaTwD">
              <property role="3oM_SC" value="map" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElo" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElp" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElq" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElr" role="1PaTwD">
              <property role="3oM_SC" value="prepared" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEls" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElt" role="1PaTwD">
              <property role="3oM_SC" value="doRefactor()," />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElu" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElv" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElw" role="1PaTwD">
              <property role="3oM_SC" value="method" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElx" role="1PaTwD">
              <property role="3oM_SC" value="should" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEly" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElz" role="1PaTwD">
              <property role="3oM_SC" value="require" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEl$" role="1PaTwD">
              <property role="3oM_SC" value="command.." />
            </node>
          </node>
          <node concept="1PaTwC" id="1E1X3WHsEl_" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsElA" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElB" role="1PaTwD">
              <property role="3oM_SC" value="map" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElC" role="1PaTwD">
              <property role="3oM_SC" value="should" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElD" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElE" role="1PaTwD">
              <property role="3oM_SC" value="already" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElF" role="1PaTwD">
              <property role="3oM_SC" value="initialized" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElG" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElH" role="1PaTwD">
              <property role="3oM_SC" value="method" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElI" role="1PaTwD">
              <property role="3oM_SC" value="doRefactor()." />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2EZTs$tsFHd" role="jymVt">
        <property role="TrG5h" value="doCleanup" />
        <node concept="3cqZAl" id="2EZTs$tsFHf" role="3clF45" />
        <node concept="3Tm1VV" id="2EZTs$tsFHg" role="1B3o_S" />
        <node concept="3clFbS" id="2EZTs$tsFHh" role="3clF47" />
        <node concept="P$JXv" id="3ly2gVlj$VW" role="lGtFl">
          <node concept="VUp57" id="3D2IEK81fky" role="3nqlJM">
            <property role="VUp50" value="" />
            <node concept="VXe08" id="3D2IEK81vbW" role="VUp5m">
              <ref role="VXe09" node="7tV5ZLw0mML" resolve="RefactoringParticipant.KeepOldNodes" />
            </node>
            <node concept="1PaTwC" id="1E1X3WHsEmf" role="1Vez_I">
              <node concept="3oM_SD" id="1E1X3WHsEmg" role="1PaTwD" />
            </node>
          </node>
          <node concept="1PaTwC" id="1E1X3WHsElJ" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsElK" role="1PaTwD">
              <property role="3oM_SC" value="Cleanup" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElL" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElM" role="1PaTwD">
              <property role="3oM_SC" value="should" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElN" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElO" role="1PaTwD">
              <property role="3oM_SC" value="performed" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElP" role="1PaTwD">
              <property role="3oM_SC" value="after" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElQ" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElR" role="1PaTwD">
              <property role="3oM_SC" value="usages" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElS" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElT" role="1PaTwD">
              <property role="3oM_SC" value="updated" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElU" role="1PaTwD">
              <property role="3oM_SC" value="(e.g." />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElV" role="1PaTwD">
              <property role="3oM_SC" value="deletion" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElW" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElX" role="1PaTwD">
              <property role="3oM_SC" value="old" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElY" role="1PaTwD">
              <property role="3oM_SC" value="code" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsElZ" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEm0" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEm1" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEm2" role="1PaTwD">
              <property role="3oM_SC" value="used" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEm3" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEm4" role="1PaTwD">
              <property role="3oM_SC" value="participants)," />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEm5" role="1PaTwD">
              <property role="3oM_SC" value="used" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEm6" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEm7" role="1PaTwD">
              <property role="3oM_SC" value="because" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEm8" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEm9" role="1PaTwD">
              <property role="3oM_SC" value="POSTPONE_REMOVE" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEma" role="1PaTwD">
              <property role="3oM_SC" value="option." />
            </node>
          </node>
          <node concept="1PaTwC" id="1E1X3WHsEmb" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsEmc" role="1PaTwD">
              <property role="3oM_SC" value="Executed" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEmd" role="1PaTwD">
              <property role="3oM_SC" value="inside" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsEme" role="1PaTwD">
              <property role="3oM_SC" value="command." />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2EZTs$tsIo9" role="1B3o_S" />
      <node concept="16euLQ" id="2EZTs$tswfe" role="16eVyc">
        <property role="TrG5h" value="IP" />
      </node>
      <node concept="16euLQ" id="2EZTs$tswhg" role="16eVyc">
        <property role="TrG5h" value="FP" />
      </node>
    </node>
    <node concept="2tJIrI" id="76O06llMQ0q" role="jymVt" />
    <node concept="2YIFZL" id="76O06llVMad" role="jymVt">
      <property role="TrG5h" value="performRefactoring" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="XAmMejJEYg" role="3clF46">
        <property role="TrG5h" value="factory" />
        <node concept="3uibUv" id="XAmMejJJ$r" role="1tU5fm">
          <ref role="3uigEE" node="XAmMejZP77" resolve="RefactoringParticipant.ParticipantStateFactory" />
          <node concept="16syzq" id="XAmMejK76i" role="11_B2D">
            <ref role="16sUi3" node="XAmMejJmEo" resolve="IS" />
          </node>
          <node concept="16syzq" id="XAmMejKa7U" role="11_B2D">
            <ref role="16sUi3" node="XAmMejJnVp" resolve="FS" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="76O06llVMae" role="3clF47">
        <node concept="3clFbH" id="7DGCeT2NTIp" role="3cqZAp" />
        <node concept="3clFbH" id="7DGCeT2NUvH" role="3cqZAp" />
        <node concept="3cpWs8" id="7DGCeT2OFyC" role="3cqZAp">
          <node concept="3cpWsn" id="7DGCeT2OFyF" role="3cpWs9">
            <property role="TrG5h" value="participantChanges" />
            <property role="3TUv4t" value="true" />
            <node concept="1LlUBW" id="7DGCeT2OFBW" role="1tU5fm">
              <node concept="_YKpA" id="7DGCeT2VBD4" role="1Lm7xW">
                <node concept="3uibUv" id="7DGCeT2VBD6" role="_ZDj9">
                  <ref role="3uigEE" node="5z_gLGerhde" resolve="RefactoringParticipant.ParticipantApplied" />
                  <node concept="3qTvmN" id="7DGCeT2VBD7" role="11_B2D" />
                  <node concept="3qTvmN" id="7DGCeT2VBD8" role="11_B2D" />
                </node>
              </node>
              <node concept="3uibUv" id="2FW2ExVlDqH" role="1Lm7xW">
                <ref role="3uigEE" to="g4jo:7DGCeT2Ukgb" resolve="SearchTask" />
              </node>
            </node>
            <node concept="1rXfSq" id="7DGCeT2O1$d" role="33vP2m">
              <ref role="37wK5l" node="76O06llNsjN" resolve="askParticipantChanges" />
              <node concept="37vLTw" id="7DGCeT2O1$e" role="37wK5m">
                <ref role="3cqZAo" node="XAmMejJEYg" resolve="factory" />
              </node>
              <node concept="37vLTw" id="2FW2ExVlIpe" role="37wK5m">
                <ref role="3cqZAo" node="76O06llVMdf" resolve="refactoringUI" />
              </node>
              <node concept="37vLTw" id="7DGCeT2O1$g" role="37wK5m">
                <ref role="3cqZAo" node="4N6D1IQ3sbK" resolve="repository" />
              </node>
              <node concept="37vLTw" id="7DGCeT2O1$h" role="37wK5m">
                <ref role="3cqZAo" node="4N6D1IQ3t7C" resolve="scope" />
              </node>
              <node concept="37vLTw" id="7DGCeT2O1$i" role="37wK5m">
                <ref role="3cqZAo" node="76O06llVMdh" resolve="participants" />
              </node>
              <node concept="37vLTw" id="7DGCeT2O1$j" role="37wK5m">
                <ref role="3cqZAo" node="76O06llVMdp" resolve="initialStates" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6gU0oA5JGgV" role="3cqZAp">
          <node concept="3clFbS" id="6gU0oA5JGgX" role="3clFbx">
            <node concept="3cpWs6" id="6gU0oA5JJcR" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="6gU0oA5JIfV" role="3clFbw">
            <node concept="10Nm6u" id="6gU0oA5JIoX" role="3uHU7w" />
            <node concept="37vLTw" id="6gU0oA5JGZ_" role="3uHU7B">
              <ref role="3cqZAo" node="7DGCeT2OFyF" resolve="participantChanges" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2FW2ExVltbD" role="3cqZAp" />
        <node concept="3cpWs8" id="2FW2ExVkOd5" role="3cqZAp">
          <node concept="3cpWsn" id="2FW2ExVkOd6" role="3cpWs9">
            <property role="TrG5h" value="searchResults" />
            <node concept="3uibUv" id="2FW2ExVkO5U" role="1tU5fm">
              <ref role="3uigEE" to="g4jo:J2bOg02HbG" resolve="SearchResults" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4N6D1IPLDda" role="3cqZAp">
          <node concept="2OqwBi" id="4N6D1IPLF3Z" role="3clFbG">
            <node concept="37vLTw" id="4N6D1IPLDd8" role="2Oq$k0">
              <ref role="3cqZAo" node="76O06llVMdf" resolve="refactoringUI" />
            </node>
            <node concept="liA8E" id="4N6D1IPLFnZ" role="2OqNvi">
              <ref role="37wK5l" node="7DGCeT2Pzqk" resolve="runSearch" />
              <node concept="1bVj0M" id="4N6D1IPLFFK" role="37wK5m">
                <node concept="37vLTG" id="4N6D1IPLFIT" role="1bW2Oz">
                  <property role="TrG5h" value="progressMonitor" />
                  <node concept="3uibUv" id="4N6D1IPLFU5" role="1tU5fm">
                    <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
                  </node>
                </node>
                <node concept="3clFbS" id="4N6D1IPLFFL" role="1bW5cS">
                  <node concept="3clFbF" id="2FW2ExVkP5G" role="3cqZAp">
                    <node concept="37vLTI" id="2FW2ExVkP5I" role="3clFbG">
                      <node concept="2OqwBi" id="2FW2ExVkOd7" role="37vLTx">
                        <node concept="1LFfDK" id="2FW2ExVlTmP" role="2Oq$k0">
                          <node concept="3cmrfG" id="2FW2ExVlUp9" role="1LF_Uc">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="37vLTw" id="2FW2ExVlRRZ" role="1LFl5Q">
                            <ref role="3cqZAo" node="7DGCeT2OFyF" resolve="participantChanges" />
                          </node>
                        </node>
                        <node concept="liA8E" id="2FW2ExVkOd9" role="2OqNvi">
                          <ref role="37wK5l" to="g4jo:7DGCeT2Ukpg" resolve="execute" />
                          <node concept="37vLTw" id="2FW2ExVkOdd" role="37wK5m">
                            <ref role="3cqZAo" node="4N6D1IPLFIT" resolve="progressMonitor" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="2FW2ExVkP5M" role="37vLTJ">
                        <ref role="3cqZAo" node="2FW2ExVkOd6" resolve="searchResults" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="FLkVty_Efv" role="3cqZAp" />
        <node concept="3clFbJ" id="2xiZ7_1J1cl" role="3cqZAp">
          <node concept="3clFbS" id="2xiZ7_1J1cn" role="3clFbx">
            <node concept="3cpWs6" id="2xiZ7_1J3V_" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="2xiZ7_1J2Vp" role="3clFbw">
            <node concept="10Nm6u" id="2xiZ7_1J3o8" role="3uHU7w" />
            <node concept="37vLTw" id="2xiZ7_1J2mH" role="3uHU7B">
              <ref role="3cqZAo" node="2FW2ExVkOd6" resolve="searchResults" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4N6D1IQ2Rus" role="3cqZAp">
          <node concept="2OqwBi" id="4N6D1IQ2Sz9" role="3clFbG">
            <node concept="37vLTw" id="4N6D1IQ2Ruq" role="2Oq$k0">
              <ref role="3cqZAo" node="76O06llVMdf" resolve="refactoringUI" />
            </node>
            <node concept="liA8E" id="4N6D1IQ2T_R" role="2OqNvi">
              <ref role="37wK5l" node="7i7ttYT2jvc" resolve="showRefactoringView" />
              <node concept="1bVj0M" id="4N6D1IQ2TU0" role="37wK5m">
                <node concept="3clFbS" id="4N6D1IQ2TU1" role="1bW5cS">
                  <node concept="3clFbJ" id="23EHyRfrsRD" role="3cqZAp">
                    <node concept="3clFbS" id="23EHyRfrsRF" role="3clFbx">
                      <node concept="3clFbF" id="23EHyRfrqrY" role="3cqZAp">
                        <node concept="2Sg_IR" id="23EHyRfrrwA" role="3clFbG">
                          <node concept="37vLTw" id="23EHyRfrrwB" role="2SgG2M">
                            <ref role="3cqZAo" node="23EHyRfrflS" resolve="prepareRefactoring" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="23EHyRfrugs" role="3clFbw">
                      <node concept="10Nm6u" id="23EHyRfruK2" role="3uHU7w" />
                      <node concept="37vLTw" id="23EHyRfrtKO" role="3uHU7B">
                        <ref role="3cqZAo" node="23EHyRfrflS" resolve="prepareRefactoring" />
                      </node>
                    </node>
                  </node>
                  <node concept="1QHqEO" id="3ly2gVlpUVL" role="3cqZAp">
                    <node concept="1QHqEC" id="3ly2gVlpUVN" role="1QHqEI">
                      <node concept="3clFbS" id="3ly2gVlpUVP" role="1bW5cS">
                        <node concept="3cpWs8" id="76O06llY7Gr" role="3cqZAp">
                          <node concept="3cpWsn" id="76O06llY7Gs" role="3cpWs9">
                            <property role="TrG5h" value="getFinalObject" />
                            <node concept="2Sg_IR" id="76O06llY7Gt" role="33vP2m">
                              <node concept="37vLTw" id="76O06llY7Gu" role="2SgG2M">
                                <ref role="3cqZAo" node="76O06llWxP_" resolve="doRefactor" />
                              </node>
                              <node concept="1LFfDK" id="7DGCeT2Tu06" role="2SgHGx">
                                <node concept="3cmrfG" id="7DGCeT2TuSg" role="1LF_Uc">
                                  <property role="3cmrfH" value="0" />
                                </node>
                                <node concept="37vLTw" id="2FW2ExVilLK" role="1LFl5Q">
                                  <ref role="3cqZAo" node="7DGCeT2OFyF" resolve="participantChanges" />
                                </node>
                              </node>
                            </node>
                            <node concept="3rvAFt" id="42LwYUtk3Dh" role="1tU5fm">
                              <node concept="16syzq" id="3ly2gVltpZ8" role="3rvQeY">
                                <ref role="16sUi3" node="XAmMejJmEo" resolve="IS" />
                              </node>
                              <node concept="16syzq" id="3ly2gVltq_S" role="3rvSg0">
                                <ref role="16sUi3" node="XAmMejJnVp" resolve="FS" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="43e76yOEr_Q" role="3cqZAp">
                          <node concept="3y3z36" id="23EHyRfrvKC" role="3clFbw">
                            <node concept="37vLTw" id="43e76yOEs2r" role="3uHU7B">
                              <ref role="3cqZAo" node="76O06llY7Gs" resolve="getFinalObject" />
                            </node>
                            <node concept="10Nm6u" id="43e76yOEsQU" role="3uHU7w" />
                          </node>
                          <node concept="3clFbS" id="23EHyRfrvKH" role="3clFbx">
                            <node concept="2Gpval" id="2vOGnLEnvMv" role="3cqZAp">
                              <node concept="2GrKxI" id="2vOGnLEnvMw" role="2Gsz3X">
                                <property role="TrG5h" value="participantState" />
                              </node>
                              <node concept="3clFbS" id="2vOGnLEnvMx" role="2LFqv$">
                                <node concept="3clFbF" id="7ram9ht_kRG" role="3cqZAp">
                                  <node concept="2OqwBi" id="7ram9ht_paL" role="3clFbG">
                                    <node concept="37vLTw" id="7ram9ht_kRE" role="2Oq$k0">
                                      <ref role="3cqZAo" node="XAmMejJEYg" resolve="factory" />
                                    </node>
                                    <node concept="liA8E" id="7ram9ht_tJ0" role="2OqNvi">
                                      <ref role="37wK5l" node="7ram9htuYCc" resolve="confirm" />
                                      <node concept="2GrUjf" id="7ram9ht_CP3" role="37wK5m">
                                        <ref role="2Gs0qQ" node="2vOGnLEnvMw" resolve="participantState" />
                                      </node>
                                      <node concept="2OqwBi" id="2vOGnLEoYEu" role="37wK5m">
                                        <node concept="2OqwBi" id="2vOGnLEoK$B" role="2Oq$k0">
                                          <node concept="37vLTw" id="2vOGnLEoItD" role="2Oq$k0">
                                            <ref role="3cqZAo" node="76O06llVMdp" resolve="initialStates" />
                                          </node>
                                          <node concept="3$u5V9" id="2vOGnLEoM$G" role="2OqNvi">
                                            <node concept="1bVj0M" id="2vOGnLEoM$I" role="23t8la">
                                              <node concept="3clFbS" id="2vOGnLEoM$J" role="1bW5cS">
                                                <node concept="3clFbF" id="2vOGnLEoOP1" role="3cqZAp">
                                                  <node concept="3EllGN" id="3ly2gVltsAr" role="3clFbG">
                                                    <node concept="37vLTw" id="3ly2gVltt_d" role="3ElVtu">
                                                      <ref role="3cqZAo" node="5W7E4fV0Xao" resolve="it" />
                                                    </node>
                                                    <node concept="37vLTw" id="3ly2gVltrOt" role="3ElQJh">
                                                      <ref role="3cqZAo" node="76O06llY7Gs" resolve="getFinalObject" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="gl6BB" id="5W7E4fV0Xao" role="1bW2Oz">
                                                <property role="TrG5h" value="it" />
                                                <node concept="2jxLKc" id="5W7E4fV0Xap" role="1tU5fm" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="ANE8D" id="2vOGnLEp2em" role="2OqNvi" />
                                      </node>
                                      <node concept="37vLTw" id="7ram9htA26b" role="37wK5m">
                                        <ref role="3cqZAo" node="4N6D1IQ3sbK" resolve="repository" />
                                      </node>
                                      <node concept="37vLTw" id="7ram9htA9Yb" role="37wK5m">
                                        <ref role="3cqZAo" node="4N6D1IQc_Q$" resolve="refactoringSession" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="1LFfDK" id="2FW2ExVipXw" role="2GsD0m">
                                <node concept="3cmrfG" id="2FW2ExVipXx" role="1LF_Uc">
                                  <property role="3cmrfH" value="0" />
                                </node>
                                <node concept="37vLTw" id="2FW2ExVipXy" role="1LFl5Q">
                                  <ref role="3cqZAo" node="7DGCeT2OFyF" resolve="participantChanges" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="7KClyOiOR_K" role="3cqZAp">
                              <node concept="3clFbS" id="7KClyOiOR_M" role="3clFbx">
                                <node concept="3clFbF" id="42LwYUtg_m4" role="3cqZAp">
                                  <node concept="2Sg_IR" id="42LwYUtg_FF" role="3clFbG">
                                    <node concept="37vLTw" id="42LwYUtg_FG" role="2SgG2M">
                                      <ref role="3cqZAo" node="42LwYUtgwkv" resolve="doCleanup" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3y3z36" id="7KClyOiOTOl" role="3clFbw">
                                <node concept="10Nm6u" id="7KClyOiOUaq" role="3uHU7w" />
                                <node concept="37vLTw" id="7KClyOiOS6Q" role="3uHU7B">
                                  <ref role="3cqZAo" node="42LwYUtgwkv" resolve="doCleanup" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="3ly2gVlpViE" role="ukAjM">
                      <ref role="3cqZAo" node="4N6D1IQ3sbK" resolve="repository" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="2FW2ExVm0hs" role="37wK5m">
                <ref role="3cqZAo" node="2FW2ExVkOd6" resolve="searchResults" />
              </node>
              <node concept="1LFfDK" id="2FW2ExVlZt9" role="37wK5m">
                <node concept="3cmrfG" id="2FW2ExVlZOp" role="1LF_Uc">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="2FW2ExVlYqV" role="1LFl5Q">
                  <ref role="3cqZAo" node="7DGCeT2OFyF" resolve="participantChanges" />
                </node>
              </node>
              <node concept="37vLTw" id="2Ut0s9XG3Hz" role="37wK5m">
                <ref role="3cqZAo" node="4N6D1IQc_Q$" resolve="refactoringSession" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="76O06llVMdf" role="3clF46">
        <property role="TrG5h" value="refactoringUI" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="4N6D1IQ3wXg" role="1tU5fm">
          <ref role="3uigEE" node="4N6D1IPLesH" resolve="RefactoringUI" />
        </node>
      </node>
      <node concept="37vLTG" id="4N6D1IQc_Q$" role="3clF46">
        <property role="TrG5h" value="refactoringSession" />
        <node concept="3uibUv" id="XAmMekrCuF" role="1tU5fm">
          <ref role="3uigEE" node="3KqYwoBJ0xf" resolve="RefactoringSession" />
        </node>
      </node>
      <node concept="37vLTG" id="4N6D1IQ3sbK" role="3clF46">
        <property role="TrG5h" value="repository" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4N6D1IQ3t3g" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="4N6D1IQ3t7C" role="3clF46">
        <property role="TrG5h" value="scope" />
        <node concept="3uibUv" id="4N6D1IQ3tZa" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SearchScope" resolve="SearchScope" />
        </node>
      </node>
      <node concept="37vLTG" id="76O06llVMdh" role="3clF46">
        <property role="TrG5h" value="participants" />
        <node concept="A3Dl8" id="76O06llVMdi" role="1tU5fm">
          <node concept="3qUE_q" id="76O06llVMdj" role="A3Ik2">
            <node concept="3uibUv" id="76O06llVMdk" role="3qUE_r">
              <ref role="3uigEE" node="3KqYwoBIxpF" resolve="RefactoringParticipant" />
              <node concept="3qTvmN" id="76O06llVMdl" role="11_B2D" />
              <node concept="3qTvmN" id="76O06llVMdm" role="11_B2D" />
              <node concept="16syzq" id="76O06llVMdn" role="11_B2D">
                <ref role="16sUi3" node="76O06llVMdA" resolve="IP" />
              </node>
              <node concept="16syzq" id="76O06llVMdo" role="11_B2D">
                <ref role="16sUi3" node="76O06llVMdB" resolve="FP" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="76O06llVMdp" role="3clF46">
        <property role="TrG5h" value="initialStates" />
        <property role="3TUv4t" value="true" />
        <node concept="_YKpA" id="2vOGnLEldK0" role="1tU5fm">
          <node concept="16syzq" id="XAmMejKwqr" role="_ZDj9">
            <ref role="16sUi3" node="XAmMejJmEo" resolve="IS" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="23EHyRfrflS" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="prepareRefactoring" />
        <node concept="1ajhzC" id="23EHyRfrhZz" role="1tU5fm">
          <node concept="3cqZAl" id="23EHyRfriZa" role="1ajl9A" />
        </node>
      </node>
      <node concept="37vLTG" id="76O06llWxP_" role="3clF46">
        <property role="TrG5h" value="doRefactor" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="76O06llW$zI" role="1tU5fm">
          <node concept="A3Dl8" id="5$FcEFMU8FK" role="1ajw0F">
            <node concept="3uibUv" id="76O06llXKGe" role="A3Ik2">
              <ref role="3uigEE" node="5z_gLGerhde" resolve="RefactoringParticipant.ParticipantApplied" />
              <node concept="3qTvmN" id="76O06llXKGf" role="11_B2D" />
              <node concept="3qTvmN" id="76O06llXKGg" role="11_B2D" />
            </node>
          </node>
          <node concept="3rvAFt" id="42LwYUtjWG0" role="1ajl9A">
            <node concept="16syzq" id="42LwYUtjXDG" role="3rvQeY">
              <ref role="16sUi3" node="XAmMejJmEo" resolve="IS" />
            </node>
            <node concept="16syzq" id="42LwYUtjYGe" role="3rvSg0">
              <ref role="16sUi3" node="XAmMejJnVp" resolve="FS" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="42LwYUtgwkv" role="3clF46">
        <property role="TrG5h" value="doCleanup" />
        <node concept="1ajhzC" id="42LwYUtgxDD" role="1tU5fm">
          <node concept="3cqZAl" id="42LwYUtgybZ" role="1ajl9A" />
        </node>
        <node concept="2AHcQZ" id="7KClyOiOSi3" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3Tm1VV" id="76O06llVMds" role="1B3o_S" />
      <node concept="3cqZAl" id="76O06llWlhv" role="3clF45" />
      <node concept="16euLQ" id="76O06llVMdA" role="16eVyc">
        <property role="TrG5h" value="IP" />
      </node>
      <node concept="16euLQ" id="76O06llVMdB" role="16eVyc">
        <property role="TrG5h" value="FP" />
      </node>
      <node concept="16euLQ" id="XAmMejJmEo" role="16eVyc">
        <property role="TrG5h" value="IS" />
      </node>
      <node concept="16euLQ" id="XAmMejJnVp" role="16eVyc">
        <property role="TrG5h" value="FS" />
      </node>
      <node concept="P$JXv" id="3D2IEK80pfL" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsEmh" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsEmi" role="1PaTwD">
            <property role="3oM_SC" value="Update" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEmj" role="1PaTwD">
            <property role="3oM_SC" value="usages" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEmk" role="1PaTwD">
            <property role="3oM_SC" value="during" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEml" role="1PaTwD">
            <property role="3oM_SC" value="refactoring." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsEmm" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsEmn" role="1PaTwD">
            <property role="3oM_SC" value="For" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEmo" role="1PaTwD">
            <property role="3oM_SC" value="calling" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEmp" role="1PaTwD">
            <property role="3oM_SC" value="from" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEmq" role="1PaTwD">
            <property role="3oM_SC" value="both" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEmr" role="1PaTwD">
            <property role="3oM_SC" value="'during" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEms" role="1PaTwD">
            <property role="3oM_SC" value="refactoring'" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEmt" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEmu" role="1PaTwD">
            <property role="3oM_SC" value="migration" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsEmv" role="1PaTwD">
            <property role="3oM_SC" value="context." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5dWUYKKJ3EE" role="jymVt" />
    <node concept="3Tm1VV" id="5dWUYKKJ14X" role="1B3o_S" />
  </node>
</model>

