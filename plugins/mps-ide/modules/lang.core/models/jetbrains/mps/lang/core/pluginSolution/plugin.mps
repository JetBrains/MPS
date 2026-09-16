<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:58b9acd8-db32-428c-ac80-a2787e2bcd96(jetbrains.mps.lang.core.pluginSolution.plugin)">
  <persistence version="9" />
  <languages>
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="-1" />
    <use id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="c7d5b9dd-a05f-4be2-bc73-f2e16994cc67" name="jetbrains.mps.baseLanguage.lightweightdsl" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="1a8554c4-eb84-43ba-8c34-6f0d90c6e75a" name="jetbrains.mps.lang.smodel.query" version="-1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="4" />
  </languages>
  <imports>
    <import index="tpcq" ref="r:00000000-0000-4000-0000-011c89590286(jetbrains.mps.lang.core.plugin)" />
    <import index="o6ex" ref="86441d7a-e194-42da-81a5-2161ec62a379/java:jetbrains.mps.ide.generator(MPS.Workbench/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="4ugc" ref="r:bd779a69-a10b-4882-b646-c1303f2dd4f7(jetbrains.mps.refactoring.participant.plugin)" />
    <import index="90d" ref="r:421d64ed-8024-497f-aeab-8bddeb389dd2(jetbrains.mps.lang.extension.methods)" />
    <import index="5nvm" ref="r:27bc780b-59b2-4d26-9db5-a38b63c35884(jetbrains.mps.refactoring.participant)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="53vh" ref="r:53885008-7612-46ff-8b11-27f1d42c3adb(jetbrains.mps.lang.migration.structure)" />
    <import index="5jto" ref="r:5dd063a0-3217-40ce-84a4-0ef961abad0b(jetbrains.mps.lang.migration.util)" />
    <import index="buve" ref="r:306236c1-379e-4cee-b600-470a90233e2f(jetbrains.mps.lang.migration.behavior)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="yyf4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.util(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="g4jo" ref="r:d98d04fb-4a60-4106-81cf-6cb40b67de4d(jetbrains.mps.ide.findusages.model)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="gp7a" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.dependency(MPS.Core/)" />
    <import index="z2i8" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.icons(MPS.IDEA/)" />
    <import index="1m72" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.components(MPS.IDEA/)" implicit="true" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1239360506533" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleDeclaration" flags="ng" index="2fD8I5">
        <child id="1239529553065" name="component" index="2pHZQ9" />
      </concept>
      <concept id="1239462176079" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleComponentDeclaration" flags="ng" index="2lGYhJ">
        <property id="1240400839614" name="final" index="3dDGau" />
        <child id="1239462974287" name="type" index="2lK19J" />
      </concept>
      <concept id="1239559992092" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleLiteral" flags="nn" index="2ry78W">
        <reference id="1239560008022" name="tupleDeclaration" index="2ryb1Q" />
        <child id="1239560910577" name="componentRef" index="2r_Bvh" />
      </concept>
      <concept id="1239560581441" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleComponentReference" flags="ng" index="2r$n1x">
        <reference id="1239560595302" name="componentDeclaration" index="2r$qp6" />
        <child id="1239560837729" name="value" index="2r_lH1" />
      </concept>
      <concept id="1239576519914" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleComponentAccessOperation" flags="nn" index="2sxana">
        <reference id="1239576542472" name="component" index="2sxfKC" />
      </concept>
    </language>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="7927811850890310904" name="jetbrains.mps.lang.resources.structure.ConstantFieldIcon" flags="ng" index="1GtWCo">
        <child id="7927811850890311914" name="field" index="1GtWoa" />
      </concept>
    </language>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="5896642449625981893" name="jetbrains.mps.lang.plugin.structure.TabbedToolDeclaration" flags="ng" index="2wDNrl" />
      <concept id="6547237850567458268" name="jetbrains.mps.lang.plugin.structure.BaseToolDeclaration" flags="ng" index="2XNcJY">
        <property id="2498620720770664572" name="position" index="2bmUCM" />
        <property id="6547237850567462620" name="caption" index="2XNbzY" />
        <child id="6791676465872004185" name="toolIcon" index="1nVCmq" />
      </concept>
    </language>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
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
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P">
        <reference id="1182955020723" name="classConcept" index="1HBi2w" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
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
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
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
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
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
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension">
      <concept id="6626851894249711936" name="jetbrains.mps.lang.extension.structure.ExtensionPointExpression" flags="nn" index="2O5UvJ">
        <reference id="6626851894249712469" name="extensionPoint" index="2O5UnU" />
      </concept>
      <concept id="3175313036448560967" name="jetbrains.mps.lang.extension.structure.GetExtensionObjectsOperation" flags="nn" index="SfwO_" />
      <concept id="126958800891274162" name="jetbrains.mps.lang.extension.structure.Extension" flags="ig" index="1lYeZD">
        <reference id="126958800891274597" name="extensionPoint" index="1lYe$Y" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="c7d5b9dd-a05f-4be2-bc73-f2e16994cc67" name="jetbrains.mps.baseLanguage.lightweightdsl">
      <concept id="3751132065236767083" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.DependentTypeInstance" flags="ig" index="q3mfm">
        <reference id="3751132065236767084" name="decl" index="q3mfh" />
        <reference id="9097849371505568270" name="point" index="1QQUv3" />
      </concept>
      <concept id="3751132065236767060" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.MethodInstance" flags="ig" index="q3mfD">
        <reference id="19209059688387895" name="decl" index="2VtyIY" />
      </concept>
      <concept id="6478870542308703666" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.MemberPlaceholder" flags="ng" index="3tTeZs">
        <property id="6478870542308703667" name="caption" index="3tTeZt" />
        <reference id="6478870542308703669" name="decl" index="3tTeZr" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="5045161044515397667" name="jetbrains.mps.lang.smodel.structure.Node_PointerOperation" flags="ng" index="iZEcu" />
      <concept id="8758390115029295477" name="jetbrains.mps.lang.smodel.structure.SReferenceType" flags="in" index="2z4iKi" />
      <concept id="5708036808576088033" name="jetbrains.mps.lang.smodel.structure.Reference_GetResolveInfo" flags="nn" index="1FfNbt" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
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
    <language id="1a8554c4-eb84-43ba-8c34-6f0d90c6e75a" name="jetbrains.mps.lang.smodel.query">
      <concept id="8483375838963816171" name="jetbrains.mps.lang.smodel.query.structure.UsagesExpression" flags="ng" index="24aHub">
        <child id="8483375838963816172" name="node" index="24aHuc" />
      </concept>
      <concept id="6322385757202370749" name="jetbrains.mps.lang.smodel.query.structure.ReferencesExpression" flags="ng" index="gHf3$" />
      <concept id="4234138103881610891" name="jetbrains.mps.lang.smodel.query.structure.WithStatement" flags="ng" index="L3pyB">
        <child id="4234138103881610935" name="scope" index="L3pyr" />
        <child id="4234138103881610892" name="stmts" index="L3pyw" />
      </concept>
      <concept id="4307205004131544317" name="jetbrains.mps.lang.smodel.query.structure.QueryExpression" flags="ng" index="1dNuzs">
        <child id="4307205004132279624" name="parameter" index="1dOa5D" />
      </concept>
      <concept id="4307205004132277753" name="jetbrains.mps.lang.smodel.query.structure.QueryParameterList" flags="ng" index="1dO9Bo" />
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
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="4611582986551314327" name="jetbrains.mps.baseLanguage.collections.structure.OfTypeOperation" flags="nn" index="UnYns">
        <child id="4611582986551314344" name="requestedType" index="UnYnz" />
      </concept>
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
    </language>
  </registry>
  <node concept="2DaZZR" id="7kpmw9o30Sa" />
  <node concept="1lYeZD" id="5ZkGupNvQRQ">
    <property role="2bfB8j" value="true" />
    <property role="TrG5h" value="GeneratorCache_extension" />
    <ref role="1lYe$Y" to="tpcq:5ZkGupNvQ1d" resolve="GeneratorCache" />
    <node concept="3Tm1VV" id="3IvUXkeQPhu" role="1B3o_S" />
    <node concept="2tJIrI" id="3IvUXkeQPhv" role="jymVt" />
    <node concept="2tJIrI" id="3IvUXkeQPhw" role="jymVt" />
    <node concept="3tTeZs" id="3IvUXkeQOCI" role="jymVt">
      <property role="3tTeZt" value="activate" />
      <ref role="3tTeZr" to="90d:3zLwYDe0CPy" resolve="activate" />
    </node>
    <node concept="3tTeZs" id="3IvUXkeQOCJ" role="jymVt">
      <property role="3tTeZt" value="deactivate" />
      <ref role="3tTeZr" to="90d:3zLwYDe0BDO" resolve="deactivate" />
    </node>
    <node concept="2tJIrI" id="3IvUXkeQPhx" role="jymVt" />
    <node concept="q3mfD" id="3IvUXkeQPhy" role="jymVt">
      <property role="TrG5h" value="get" />
      <ref role="2VtyIY" to="90d:3zLwYDe0svr" resolve="get" />
      <node concept="3Tm1VV" id="3IvUXkeQPhz" role="1B3o_S" />
      <node concept="3clFbS" id="3IvUXkeQPh$" role="3clF47">
        <node concept="3clFbJ" id="10xl2gwRdn3" role="3cqZAp">
          <node concept="3clFbS" id="10xl2gwRdn4" role="3clFbx">
            <node concept="3cpWs6" id="10xl2gwRelD" role="3cqZAp">
              <node concept="10Nm6u" id="10xl2gwRelF" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="10xl2gwRel_" role="3clFbw">
            <node concept="10Nm6u" id="10xl2gwRelC" role="3uHU7w" />
            <node concept="2YIFZM" id="10xl2gwRely" role="3uHU7B">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="76aXy8jgU92" role="3cqZAp">
          <node concept="2OqwBi" id="76aXy8jgVex" role="3clFbw">
            <node concept="liA8E" id="76aXy8jgY55" role="2OqNvi">
              <ref role="37wK5l" to="1m72:~ComponentManager.isDisposed()" resolve="isDisposed" />
            </node>
            <node concept="2YIFZM" id="76aXy8jgV9R" role="2Oq$k0">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
          </node>
          <node concept="3clFbS" id="76aXy8jgU95" role="3clFbx">
            <node concept="3SKdUt" id="76aXy8jgYd7" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXotll" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXotlm" role="1PaTwD">
                  <property role="3oM_SC" value="todo:" />
                </node>
                <node concept="3oM_SD" id="ATZLwXotln" role="1PaTwD">
                  <property role="3oM_SC" value="hack" />
                </node>
                <node concept="3oM_SD" id="ATZLwXotlo" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="ATZLwXotlp" role="1PaTwD">
                  <property role="3oM_SC" value="next" />
                </node>
                <node concept="3oM_SD" id="ATZLwXotlq" role="1PaTwD">
                  <property role="3oM_SC" value="scenario:" />
                </node>
                <node concept="3oM_SD" id="ATZLwXotlr" role="1PaTwD">
                  <property role="3oM_SC" value="create" />
                </node>
                <node concept="3oM_SD" id="ATZLwXotls" role="1PaTwD">
                  <property role="3oM_SC" value="IdeaEnvironment," />
                </node>
                <node concept="3oM_SD" id="ATZLwXotlt" role="1PaTwD">
                  <property role="3oM_SC" value="dispose" />
                </node>
                <node concept="3oM_SD" id="ATZLwXotlu" role="1PaTwD">
                  <property role="3oM_SC" value="IdeaEnvironment," />
                </node>
                <node concept="3oM_SD" id="ATZLwXotlv" role="1PaTwD">
                  <property role="3oM_SC" value="create" />
                </node>
                <node concept="3oM_SD" id="ATZLwXotlw" role="1PaTwD">
                  <property role="3oM_SC" value="MpsEnvironment," />
                </node>
                <node concept="3oM_SD" id="ATZLwXotlx" role="1PaTwD">
                  <property role="3oM_SC" value="generate" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="76aXy8jgY91" role="3cqZAp">
              <node concept="10Nm6u" id="76aXy8jgY96" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5ZkGupNvQZD" role="3cqZAp">
          <node concept="2OqwBi" id="5ZkGupNvQRn" role="3clFbG">
            <node concept="2YIFZM" id="5ZkGupNvQRo" role="2Oq$k0">
              <ref role="1Pybhc" to="o6ex:~GeneratorCacheComponent" resolve="GeneratorCacheComponent" />
              <ref role="37wK5l" to="o6ex:~GeneratorCacheComponent.getInstance()" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="5ZkGupNvQRp" role="2OqNvi">
              <ref role="37wK5l" to="o6ex:~GeneratorCacheComponent.getCache()" resolve="getCache" />
            </node>
          </node>
        </node>
      </node>
      <node concept="q3mfm" id="3IvUXkeQPh_" role="3clF45">
        <ref role="q3mfh" to="90d:3zLwYDe0sv$" />
        <ref role="1QQUv3" node="3IvUXkeQPhy" resolve="get" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2SJclOrOQfV">
    <property role="TrG5h" value="UpdateReferencesParticipantBase" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="2SJclOrOQgI" role="jymVt" />
    <node concept="1lYeZD" id="zWFq_39Y3X" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="UpdateReferencesParticipant_extension" />
      <ref role="1lYe$Y" to="4ugc:3KqYwoBJieG" resolve="MoveNodeParticipantEP" />
      <node concept="3Tm1VV" id="zWFq_39Y3Y" role="1B3o_S" />
      <node concept="q3mfD" id="zWFq_39Y44" role="jymVt">
        <property role="TrG5h" value="get" />
        <ref role="2VtyIY" to="90d:3zLwYDe0svr" resolve="get" />
        <node concept="3Tm1VV" id="zWFq_39Y46" role="1B3o_S" />
        <node concept="3clFbS" id="zWFq_39Y48" role="3clF47">
          <node concept="3clFbF" id="zWFq_3a17s" role="3cqZAp">
            <node concept="2ShNRf" id="zWFq_3a17q" role="3clFbG">
              <node concept="HV5vD" id="zWFq_3a2ZF" role="2ShVmc">
                <ref role="HV5vE" node="7Sw_42Ud$Uz" resolve="UpdateReferencesParticipantBase.UpdateReferencesParticipant" />
              </node>
            </node>
          </node>
        </node>
        <node concept="q3mfm" id="zWFq_39Y49" role="3clF45">
          <ref role="q3mfh" to="90d:3zLwYDe0sv$" />
          <ref role="1QQUv3" node="zWFq_39Y44" resolve="get" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="zWFq_39X88" role="jymVt" />
    <node concept="312cEu" id="7Sw_42Ud$Uz" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="UpdateReferencesParticipant" />
      <node concept="3clFb_" id="2SJclOrOZM6" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getDataCollector" />
        <node concept="3uibUv" id="2SJclOrOZM7" role="3clF45">
          <ref role="3uigEE" to="5nvm:3KqYwoBIIOx" resolve="MoveNodeRefactoringParticipant.MoveNodeRefactoringDataCollector" />
          <node concept="3uibUv" id="7Sw_42Udm4R" role="11_B2D">
            <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
            <node concept="3uibUv" id="7Sw_42Udm4S" role="11_B2D">
              <ref role="3uigEE" to="wyt6:~Void" resolve="Void" />
            </node>
          </node>
          <node concept="3uibUv" id="7Sw_42Udkto" role="11_B2D">
            <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
            <node concept="3uibUv" id="7Sw_42Udktp" role="11_B2D">
              <ref role="3uigEE" to="wyt6:~Void" resolve="Void" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="2SJclOrOZMa" role="1B3o_S" />
        <node concept="3clFbS" id="2SJclOrOZMe" role="3clF47">
          <node concept="3cpWs8" id="7Sw_42Ue1Kn" role="3cqZAp">
            <node concept="3cpWsn" id="7Sw_42Ue1Ko" role="3cpWs9">
              <property role="TrG5h" value="dataCollector" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="7Sw_42Ue1Km" role="1tU5fm">
                <ref role="3uigEE" node="4qkYgnA0vjD" resolve="UpdateReferencesParticipantBase.MyMoveNodeRefactoringDataCollector" />
              </node>
              <node concept="2ShNRf" id="7Sw_42Ue1Kp" role="33vP2m">
                <node concept="HV5vD" id="7Sw_42Ue1Kq" role="2ShVmc">
                  <ref role="HV5vE" node="4qkYgnA0vjD" resolve="UpdateReferencesParticipantBase.MyMoveNodeRefactoringDataCollector" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="7Sw_42Ue4PZ" role="3cqZAp">
            <node concept="2ShNRf" id="7Sw_42Ue6Li" role="3cqZAk">
              <node concept="YeOm9" id="7Sw_42Ue8b1" role="2ShVmc">
                <node concept="1Y3b0j" id="7Sw_42Ue8b4" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="5nvm:3KqYwoBIIOx" resolve="MoveNodeRefactoringParticipant.MoveNodeRefactoringDataCollector" />
                  <node concept="3Tm1VV" id="7Sw_42Ue8b5" role="1B3o_S" />
                  <node concept="3uibUv" id="7Sw_42Ue8bb" role="2Ghqu4">
                    <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
                    <node concept="3uibUv" id="7Sw_42Ue8bc" role="11_B2D">
                      <ref role="3uigEE" to="wyt6:~Void" resolve="Void" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="7Sw_42Ue8bd" role="2Ghqu4">
                    <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
                    <node concept="3uibUv" id="7Sw_42Ue8be" role="11_B2D">
                      <ref role="3uigEE" to="wyt6:~Void" resolve="Void" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="7Sw_42Uebw$" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="beforeMove" />
                    <node concept="3uibUv" id="7Sw_42UebwV" role="3clF45">
                      <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
                      <node concept="3uibUv" id="7Sw_42UebwW" role="11_B2D">
                        <ref role="3uigEE" to="wyt6:~Void" resolve="Void" />
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="7Sw_42UebwC" role="1B3o_S" />
                    <node concept="37vLTG" id="7Sw_42UebwE" role="3clF46">
                      <property role="TrG5h" value="nodeToMove" />
                      <node concept="3Tqbb2" id="7Sw_42UebwX" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="7Sw_42UebwY" role="3clF47">
                      <node concept="3clFbF" id="7Sw_42Ueefb" role="3cqZAp">
                        <node concept="2ry78W" id="7Sw_42Ueefa" role="3clFbG">
                          <ref role="2ryb1Q" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
                          <node concept="2r$n1x" id="7Sw_42Ueef6" role="2r_Bvh">
                            <ref role="2r$qp6" node="7Sw_42UcHYz" resolve="baseData" />
                            <node concept="2OqwBi" id="7Sw_42UegJY" role="2r_lH1">
                              <node concept="37vLTw" id="7Sw_42Ueg6Q" role="2Oq$k0">
                                <ref role="3cqZAo" node="7Sw_42Ue1Ko" resolve="dataCollector" />
                              </node>
                              <node concept="liA8E" id="7Sw_42UehCD" role="2OqNvi">
                                <ref role="37wK5l" node="2SJclOrPgWa" resolve="beforeMove" />
                                <node concept="37vLTw" id="7Sw_42Uei8a" role="37wK5m">
                                  <ref role="3cqZAo" node="7Sw_42UebwE" resolve="nodeToMove" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2r$n1x" id="7Sw_42Ueef8" role="2r_Bvh">
                            <ref role="2r$qp6" node="7Sw_42UcHY_" resolve="other" />
                            <node concept="1eOMI4" id="7Sw_42Uex2b" role="2r_lH1">
                              <node concept="10QFUN" id="7Sw_42Uex28" role="1eOMHV">
                                <node concept="3uibUv" id="7Sw_42Uexa7" role="10QFUM">
                                  <ref role="3uigEE" to="wyt6:~Void" resolve="Void" />
                                </node>
                                <node concept="10Nm6u" id="7Sw_42UeygA" role="10QFUP" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFb_" id="7Sw_42UebwZ" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="afterMove" />
                    <node concept="3uibUv" id="7Sw_42Uebxm" role="3clF45">
                      <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
                      <node concept="3uibUv" id="7Sw_42Uebxn" role="11_B2D">
                        <ref role="3uigEE" to="wyt6:~Void" resolve="Void" />
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="7Sw_42Uebx3" role="1B3o_S" />
                    <node concept="37vLTG" id="7Sw_42Uebx5" role="3clF46">
                      <property role="TrG5h" value="movedNode" />
                      <node concept="3Tqbb2" id="7Sw_42Uebxo" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="7Sw_42Uebxp" role="3clF47">
                      <node concept="3clFbF" id="7Sw_42Ueyr1" role="3cqZAp">
                        <node concept="2ry78W" id="7Sw_42Ueyr2" role="3clFbG">
                          <ref role="2ryb1Q" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
                          <node concept="2r$n1x" id="7Sw_42Ueyr3" role="2r_Bvh">
                            <ref role="2r$qp6" node="7Sw_42UcHYz" resolve="baseData" />
                            <node concept="2OqwBi" id="7Sw_42Ueyr4" role="2r_lH1">
                              <node concept="37vLTw" id="7Sw_42Ueyr5" role="2Oq$k0">
                                <ref role="3cqZAo" node="7Sw_42Ue1Ko" resolve="dataCollector" />
                              </node>
                              <node concept="liA8E" id="7Sw_42Ueyr6" role="2OqNvi">
                                <ref role="37wK5l" node="2SJclOrPgWi" resolve="afterMove" />
                                <node concept="37vLTw" id="7Sw_42Ue_kp" role="37wK5m">
                                  <ref role="3cqZAo" node="7Sw_42Uebx5" resolve="movedNode" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2r$n1x" id="7Sw_42Ueyr8" role="2r_Bvh">
                            <ref role="2r$qp6" node="7Sw_42UcHY_" resolve="other" />
                            <node concept="1eOMI4" id="7Sw_42Ueyr9" role="2r_lH1">
                              <node concept="10QFUN" id="7Sw_42Ueyra" role="1eOMHV">
                                <node concept="3uibUv" id="7Sw_42Ueyrb" role="10QFUM">
                                  <ref role="3uigEE" to="wyt6:~Void" resolve="Void" />
                                </node>
                                <node concept="10Nm6u" id="7Sw_42Ueyrc" role="10QFUP" />
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
      <node concept="3clFb_" id="2SJclOrOZMx" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="serializeInitialState" />
        <node concept="3Tqbb2" id="2SJclOrOZMy" role="3clF45">
          <ref role="ehGHo" to="53vh:2uZcAeY8Z3v" resolve="ReflectionNodeReference" />
        </node>
        <node concept="3Tm1VV" id="2SJclOrOZMz" role="1B3o_S" />
        <node concept="37vLTG" id="2SJclOrOZM_" role="3clF46">
          <property role="TrG5h" value="initialState" />
          <node concept="3uibUv" id="7Sw_42Ufy8o" role="1tU5fm">
            <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
            <node concept="3uibUv" id="7Sw_42UmwGa" role="11_B2D">
              <ref role="3uigEE" to="wyt6:~Void" resolve="Void" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="2SJclOrOZMH" role="3clF47">
          <node concept="3clFbF" id="2SJclOrQjIS" role="3cqZAp">
            <node concept="2YIFZM" id="2SJclOrQjJy" role="3clFbG">
              <ref role="37wK5l" to="5jto:2SJclOrQjKm" resolve="makeReflection" />
              <ref role="1Pybhc" to="5jto:2GZlO$G5IXQ" resolve="NodeReferenceUtil" />
              <node concept="2OqwBi" id="2SJclOrQrrg" role="37wK5m">
                <node concept="2OqwBi" id="7Sw_42Uiy_j" role="2Oq$k0">
                  <node concept="37vLTw" id="2SJclOrQrh2" role="2Oq$k0">
                    <ref role="3cqZAo" node="2SJclOrOZM_" resolve="initialState" />
                  </node>
                  <node concept="2sxana" id="7Sw_42UizQ4" role="2OqNvi">
                    <ref role="2sxfKC" node="7Sw_42UcHYz" resolve="baseData" />
                  </node>
                </node>
                <node concept="2sxana" id="2SJclOrQrFS" role="2OqNvi">
                  <ref role="2sxfKC" node="2SJclOrOXQ7" resolve="reference" />
                </node>
              </node>
              <node concept="2OqwBi" id="2SJclOrQs6K" role="37wK5m">
                <node concept="2OqwBi" id="7Sw_42Ui$sB" role="2Oq$k0">
                  <node concept="37vLTw" id="2SJclOrQrWi" role="2Oq$k0">
                    <ref role="3cqZAo" node="2SJclOrOZM_" resolve="initialState" />
                  </node>
                  <node concept="2sxana" id="7Sw_42Ui_G3" role="2OqNvi">
                    <ref role="2sxfKC" node="7Sw_42UcHYz" resolve="baseData" />
                  </node>
                </node>
                <node concept="2sxana" id="2SJclOrQsnO" role="2OqNvi">
                  <ref role="2sxfKC" node="2SJclOrOYrd" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2SJclOrOZMV" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="serializeFinalState" />
        <node concept="3Tm1VV" id="2SJclOrOZMX" role="1B3o_S" />
        <node concept="37vLTG" id="2SJclOrOZMZ" role="3clF46">
          <property role="TrG5h" value="finalState" />
          <node concept="3uibUv" id="7Sw_42UmyL5" role="1tU5fm">
            <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
            <node concept="3uibUv" id="7Sw_42UmyL6" role="11_B2D">
              <ref role="3uigEE" to="wyt6:~Void" resolve="Void" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="2SJclOrOZN7" role="3clF47">
          <node concept="3clFbF" id="2SJclOrQv8a" role="3cqZAp">
            <node concept="2YIFZM" id="2SJclOrQv8b" role="3clFbG">
              <ref role="1Pybhc" to="5jto:2GZlO$G5IXQ" resolve="NodeReferenceUtil" />
              <ref role="37wK5l" to="5jto:2SJclOrQjKm" resolve="makeReflection" />
              <node concept="2OqwBi" id="2SJclOrQv8c" role="37wK5m">
                <node concept="2OqwBi" id="7Sw_42UiAkI" role="2Oq$k0">
                  <node concept="37vLTw" id="2SJclOrQvNq" role="2Oq$k0">
                    <ref role="3cqZAo" node="2SJclOrOZMZ" resolve="finalState" />
                  </node>
                  <node concept="2sxana" id="7Sw_42UiBvK" role="2OqNvi">
                    <ref role="2sxfKC" node="7Sw_42UcHYz" resolve="baseData" />
                  </node>
                </node>
                <node concept="2sxana" id="2SJclOrQv8e" role="2OqNvi">
                  <ref role="2sxfKC" node="2SJclOrOXQ7" resolve="reference" />
                </node>
              </node>
              <node concept="2OqwBi" id="2SJclOrQv8f" role="37wK5m">
                <node concept="2OqwBi" id="7Sw_42UiCac" role="2Oq$k0">
                  <node concept="37vLTw" id="2SJclOrQwdt" role="2Oq$k0">
                    <ref role="3cqZAo" node="2SJclOrOZMZ" resolve="finalState" />
                  </node>
                  <node concept="2sxana" id="7Sw_42UiDpC" role="2OqNvi">
                    <ref role="2sxfKC" node="7Sw_42UcHYz" resolve="baseData" />
                  </node>
                </node>
                <node concept="2sxana" id="2SJclOrQv8h" role="2OqNvi">
                  <ref role="2sxfKC" node="2SJclOrOYrd" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tqbb2" id="2SJclOrQiwz" role="3clF45">
          <ref role="ehGHo" to="53vh:2uZcAeY8Z3v" resolve="ReflectionNodeReference" />
        </node>
      </node>
      <node concept="3clFb_" id="2SJclOrOZN8" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="deserializeFinalState" />
        <node concept="3Tm1VV" id="2SJclOrOZNa" role="1B3o_S" />
        <node concept="37vLTG" id="2SJclOrOZNc" role="3clF46">
          <property role="TrG5h" value="serialized" />
          <node concept="3Tqbb2" id="2SJclOrQiZS" role="1tU5fm">
            <ref role="ehGHo" to="53vh:2uZcAeY8Z3v" resolve="ReflectionNodeReference" />
          </node>
        </node>
        <node concept="3clFbS" id="2SJclOrOZNk" role="3clF47">
          <node concept="3clFbF" id="2SJclOrQvkw" role="3cqZAp">
            <node concept="2ry78W" id="7Sw_42UiFe3" role="3clFbG">
              <ref role="2ryb1Q" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
              <node concept="2r$n1x" id="7Sw_42UiFdZ" role="2r_Bvh">
                <ref role="2r$qp6" node="7Sw_42UcHYz" resolve="baseData" />
                <node concept="2ry78W" id="2SJclOrQvkx" role="2r_lH1">
                  <ref role="2ryb1Q" node="2SJclOrOWU_" resolve="UpdateReferencesParticipantBase.NamedNodeReference" />
                  <node concept="2r$n1x" id="2SJclOrQvky" role="2r_Bvh">
                    <ref role="2r$qp6" node="2SJclOrOXQ7" resolve="reference" />
                    <node concept="2OqwBi" id="2SJclOrQvkz" role="2r_lH1">
                      <node concept="37vLTw" id="2SJclOrQvk$" role="2Oq$k0">
                        <ref role="3cqZAo" node="2SJclOrOZNc" resolve="serialized" />
                      </node>
                      <node concept="3zqWPK" id="70OdufORgzD" role="2OqNvi">
                        <ref role="37wK5l" to="buve:4uVwhQyQbdz" resolve="getNodeReference" />
                      </node>
                    </node>
                  </node>
                  <node concept="2r$n1x" id="2SJclOrQvkA" role="2r_Bvh">
                    <ref role="2r$qp6" node="2SJclOrOYrd" resolve="name" />
                    <node concept="2OqwBi" id="2SJclOrQvkB" role="2r_lH1">
                      <node concept="37vLTw" id="2SJclOrQvkC" role="2Oq$k0">
                        <ref role="3cqZAo" node="2SJclOrOZNc" resolve="serialized" />
                      </node>
                      <node concept="3TrcHB" id="2SJclOrQvkD" role="2OqNvi">
                        <ref role="3TsBF5" to="53vh:2uZcAeY8Zap" resolve="nodeName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2r$n1x" id="7Sw_42UiFe1" role="2r_Bvh">
                <ref role="2r$qp6" node="7Sw_42UcHY_" resolve="other" />
                <node concept="1eOMI4" id="7Sw_42UiNI9" role="2r_lH1">
                  <node concept="10QFUN" id="7Sw_42UiNIa" role="1eOMHV">
                    <node concept="10Nm6u" id="7Sw_42UiNI8" role="10QFUP" />
                    <node concept="3uibUv" id="7Sw_42UiNZl" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Void" resolve="Void" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="7Sw_42UfDOL" role="3clF45">
          <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
          <node concept="3uibUv" id="7Sw_42UiXeO" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Void" resolve="Void" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2SJclOrOZMI" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="deserializeInitialState" />
        <node concept="3Tm1VV" id="2SJclOrOZMK" role="1B3o_S" />
        <node concept="37vLTG" id="2SJclOrOZMM" role="3clF46">
          <property role="TrG5h" value="serialized" />
          <node concept="3Tqbb2" id="2SJclOrQiNc" role="1tU5fm">
            <ref role="ehGHo" to="53vh:2uZcAeY8Z3v" resolve="ReflectionNodeReference" />
          </node>
        </node>
        <node concept="3clFbS" id="2SJclOrOZMU" role="3clF47">
          <node concept="3clFbF" id="2SJclOrQtsI" role="3cqZAp">
            <node concept="2ry78W" id="7Sw_42Uj7eD" role="3clFbG">
              <ref role="2ryb1Q" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
              <node concept="2r$n1x" id="7Sw_42Uj7e_" role="2r_Bvh">
                <ref role="2r$qp6" node="7Sw_42UcHYz" resolve="baseData" />
                <node concept="2ry78W" id="2SJclOrQtsJ" role="2r_lH1">
                  <ref role="2ryb1Q" node="2SJclOrOWU_" resolve="UpdateReferencesParticipantBase.NamedNodeReference" />
                  <node concept="2r$n1x" id="2SJclOrQtsK" role="2r_Bvh">
                    <ref role="2r$qp6" node="2SJclOrOXQ7" resolve="reference" />
                    <node concept="2OqwBi" id="2SJclOrQu73" role="2r_lH1">
                      <node concept="37vLTw" id="2SJclOrQtXJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="2SJclOrOZMM" resolve="serialized" />
                      </node>
                      <node concept="3zqWPK" id="70OdufORgzF" role="2OqNvi">
                        <ref role="37wK5l" to="buve:4uVwhQyQbdz" resolve="getNodeReference" />
                      </node>
                    </node>
                  </node>
                  <node concept="2r$n1x" id="2SJclOrQtsP" role="2r_Bvh">
                    <ref role="2r$qp6" node="2SJclOrOYrd" resolve="name" />
                    <node concept="2OqwBi" id="2SJclOrQuO4" role="2r_lH1">
                      <node concept="37vLTw" id="2SJclOrQuEK" role="2Oq$k0">
                        <ref role="3cqZAo" node="2SJclOrOZMM" resolve="serialized" />
                      </node>
                      <node concept="3TrcHB" id="2SJclOrQv5q" role="2OqNvi">
                        <ref role="3TsBF5" to="53vh:2uZcAeY8Zap" resolve="nodeName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2r$n1x" id="7Sw_42Uj7eB" role="2r_Bvh">
                <ref role="2r$qp6" node="7Sw_42UcHY_" resolve="other" />
                <node concept="1eOMI4" id="7Sw_42Ujb59" role="2r_lH1">
                  <node concept="10QFUN" id="7Sw_42Ujb5a" role="1eOMHV">
                    <node concept="10Nm6u" id="7Sw_42Ujb58" role="10QFUP" />
                    <node concept="3uibUv" id="7Sw_42UjbyT" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Void" resolve="Void" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="7Sw_42Uf$00" role="3clF45">
          <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
          <node concept="3uibUv" id="7Sw_42Uj3HJ" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Void" resolve="Void" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="29V4NRgtzwE" role="jymVt">
        <property role="TrG5h" value="isOverridingParticipant" />
        <node concept="3Tm6S6" id="29V4NRgtzwF" role="1B3o_S" />
        <node concept="10P_77" id="29V4NRgtzwG" role="3clF45" />
        <node concept="37vLTG" id="29V4NRgtzw$" role="3clF46">
          <property role="TrG5h" value="it" />
          <node concept="3uibUv" id="29V4NRgtzw_" role="1tU5fm">
            <ref role="3uigEE" node="7Sw_42Ud$Uz" resolve="UpdateReferencesParticipantBase.UpdateReferencesParticipant" />
          </node>
        </node>
        <node concept="3clFbS" id="29V4NRgtzwi" role="3clF47">
          <node concept="3clFbF" id="29V4NRgtzwj" role="3cqZAp">
            <node concept="1Wc70l" id="29V4NRgtzwk" role="3clFbG">
              <node concept="17QLQc" id="29V4NRgtzwl" role="3uHU7w">
                <node concept="2OqwBi" id="29V4NRgtzwm" role="3uHU7B">
                  <node concept="Xjq3P" id="29V4NRgtzwn" role="2Oq$k0" />
                  <node concept="liA8E" id="29V4NRgtzwo" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                  </node>
                </node>
                <node concept="2OqwBi" id="29V4NRgtzwp" role="3uHU7w">
                  <node concept="37vLTw" id="29V4NRgtzwB" role="2Oq$k0">
                    <ref role="3cqZAo" node="29V4NRgtzw$" resolve="it" />
                  </node>
                  <node concept="liA8E" id="29V4NRgtzwr" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="29V4NRgtzws" role="3uHU7B">
                <node concept="2OqwBi" id="29V4NRgtzwt" role="2Oq$k0">
                  <node concept="Xjq3P" id="29V4NRgtzwu" role="2Oq$k0" />
                  <node concept="liA8E" id="29V4NRgtzwv" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                  </node>
                </node>
                <node concept="liA8E" id="29V4NRgtzww" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Class.isAssignableFrom(java.lang.Class)" resolve="isAssignableFrom" />
                  <node concept="2OqwBi" id="29V4NRgtzwx" role="37wK5m">
                    <node concept="37vLTw" id="29V4NRgtzwA" role="2Oq$k0">
                      <ref role="3cqZAo" node="29V4NRgtzw$" resolve="it" />
                    </node>
                    <node concept="liA8E" id="29V4NRgtzwz" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="29V4NRgiMXz" role="jymVt">
        <property role="TrG5h" value="shouldUpdateReference" />
        <property role="1EzhhJ" value="false" />
        <node concept="3Tmbuc" id="29V4NRgiMX$" role="1B3o_S" />
        <node concept="10P_77" id="29V4NRgiMX_" role="3clF45" />
        <node concept="37vLTG" id="29V4NRgiMXA" role="3clF46">
          <property role="TrG5h" value="selectedOptions" />
          <property role="3TUv4t" value="true" />
          <node concept="_YKpA" id="29V4NRgiMXB" role="1tU5fm">
            <node concept="3uibUv" id="29V4NRgiMXC" role="_ZDj9">
              <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="29V4NRgiMXD" role="3clF46">
          <property role="TrG5h" value="repository" />
          <node concept="3uibUv" id="29V4NRgiMXE" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
        </node>
        <node concept="37vLTG" id="29V4NRgiMXF" role="3clF46">
          <property role="TrG5h" value="containingNode" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="29V4NRgiMXG" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="37vLTG" id="29V4NRgiMXH" role="3clF46">
          <property role="TrG5h" value="role" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="29V4NRgiMXI" role="1tU5fm">
            <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
          </node>
        </node>
        <node concept="37vLTG" id="29V4NRgiMXJ" role="3clF46">
          <property role="TrG5h" value="movingNode" />
          <node concept="3uibUv" id="29V4NRgiMXK" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="37vLTG" id="29V4NRgiMXL" role="3clF46">
          <property role="TrG5h" value="refactoringSession" />
          <node concept="3uibUv" id="29V4NRgiMXM" role="1tU5fm">
            <ref role="3uigEE" to="5nvm:3KqYwoBJ0xf" resolve="RefactoringSession" />
          </node>
        </node>
        <node concept="3clFbS" id="29V4NRgiMYo" role="3clF47">
          <node concept="3SKdUt" id="7WC60ZcjdoR" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXotly" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXotlz" role="1PaTwD">
                <property role="3oM_SC" value="check" />
              </node>
              <node concept="3oM_SD" id="ATZLwXotl$" role="1PaTwD">
                <property role="3oM_SC" value="other" />
              </node>
              <node concept="3oM_SD" id="ATZLwXotl_" role="1PaTwD">
                <property role="3oM_SC" value="references" />
              </node>
              <node concept="3oM_SD" id="ATZLwXotlA" role="1PaTwD">
                <property role="3oM_SC" value="participants" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="29V4NRgktI2" role="3cqZAp">
            <node concept="3clFbS" id="29V4NRgktI4" role="3clFbx">
              <node concept="3cpWs6" id="29V4NRgkyDo" role="3cqZAp">
                <node concept="3clFbT" id="29V4NRgk_h5" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7WC60ZcjW1c" role="3clFbw">
              <node concept="2OqwBi" id="2cOYJmSHYR" role="2Oq$k0">
                <node concept="2OqwBi" id="7WC60ZcjW1d" role="2Oq$k0">
                  <node concept="2OqwBi" id="7WC60ZcjW1e" role="2Oq$k0">
                    <node concept="2O5UvJ" id="7WC60ZcjW1f" role="2Oq$k0">
                      <ref role="2O5UnU" to="4ugc:3KqYwoBJieG" resolve="MoveNodeParticipantEP" />
                    </node>
                    <node concept="SfwO_" id="7WC60ZcjW1g" role="2OqNvi" />
                  </node>
                  <node concept="UnYns" id="7WC60ZcjW1h" role="2OqNvi">
                    <node concept="3uibUv" id="29V4NRgkSGg" role="UnYnz">
                      <ref role="3uigEE" node="7Sw_42Ud$Uz" resolve="UpdateReferencesParticipantBase.UpdateReferencesParticipant" />
                    </node>
                  </node>
                </node>
                <node concept="3zZkjj" id="29V4NRgkOxe" role="2OqNvi">
                  <node concept="1bVj0M" id="29V4NRgkOxg" role="23t8la">
                    <node concept="3clFbS" id="29V4NRgkOxh" role="1bW5cS">
                      <node concept="3clFbF" id="29V4NRgtNKe" role="3cqZAp">
                        <node concept="1rXfSq" id="29V4NRgtzwI" role="3clFbG">
                          <ref role="37wK5l" node="29V4NRgtzwE" resolve="isOverridingParticipant" />
                          <node concept="37vLTw" id="29V4NRgtzwH" role="37wK5m">
                            <ref role="3cqZAo" node="5W7E4fV0Xq6" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0Xq6" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0Xq7" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2HwmR7" id="7WC60ZcjW1j" role="2OqNvi">
                <node concept="1bVj0M" id="7WC60ZcjW1k" role="23t8la">
                  <node concept="3clFbS" id="7WC60ZcjW1l" role="1bW5cS">
                    <node concept="3clFbF" id="7WC60ZcjW1m" role="3cqZAp">
                      <node concept="2OqwBi" id="7WC60ZcjW1n" role="3clFbG">
                        <node concept="37vLTw" id="7WC60ZcjW1o" role="2Oq$k0">
                          <ref role="3cqZAo" node="5W7E4fV0Xq8" resolve="it" />
                        </node>
                        <node concept="liA8E" id="7WC60ZcjW1p" role="2OqNvi">
                          <ref role="37wK5l" node="29V4NRgiMXz" resolve="shouldUpdateReference" />
                          <node concept="37vLTw" id="7WC60ZcjW1q" role="37wK5m">
                            <ref role="3cqZAo" node="29V4NRgiMXA" resolve="selectedOptions" />
                          </node>
                          <node concept="37vLTw" id="7WC60ZcjW1r" role="37wK5m">
                            <ref role="3cqZAo" node="29V4NRgiMXD" resolve="repository" />
                          </node>
                          <node concept="37vLTw" id="7WC60ZcjW1s" role="37wK5m">
                            <ref role="3cqZAo" node="29V4NRgiMXF" resolve="containingNode" />
                          </node>
                          <node concept="37vLTw" id="7WC60ZcjW1t" role="37wK5m">
                            <ref role="3cqZAo" node="29V4NRgiMXH" resolve="role" />
                          </node>
                          <node concept="37vLTw" id="7WC60ZcjW1u" role="37wK5m">
                            <ref role="3cqZAo" node="29V4NRgiMXJ" resolve="movingNode" />
                          </node>
                          <node concept="37vLTw" id="7WC60ZcjW1v" role="37wK5m">
                            <ref role="3cqZAo" node="29V4NRgiMXL" resolve="refactoringSession" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0Xq8" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0Xq9" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="4qkYgnA2WwN" role="3cqZAp">
            <node concept="3nyPlj" id="29V4NRgiMYw" role="3cqZAk">
              <ref role="37wK5l" node="4qkYgnA2Vij" resolve="shouldUpdateReference" />
              <node concept="37vLTw" id="29V4NRgiMYq" role="37wK5m">
                <ref role="3cqZAo" node="29V4NRgiMXA" resolve="selectedOptions" />
              </node>
              <node concept="37vLTw" id="29V4NRgiMYr" role="37wK5m">
                <ref role="3cqZAo" node="29V4NRgiMXD" resolve="repository" />
              </node>
              <node concept="37vLTw" id="29V4NRgiMYs" role="37wK5m">
                <ref role="3cqZAo" node="29V4NRgiMXF" resolve="containingNode" />
              </node>
              <node concept="37vLTw" id="29V4NRgiMYt" role="37wK5m">
                <ref role="3cqZAo" node="29V4NRgiMXH" resolve="role" />
              </node>
              <node concept="37vLTw" id="29V4NRgiMYu" role="37wK5m">
                <ref role="3cqZAo" node="29V4NRgiMXJ" resolve="movingNode" />
              </node>
              <node concept="37vLTw" id="29V4NRgiMYv" role="37wK5m">
                <ref role="3cqZAo" node="29V4NRgiMXL" resolve="refactoringSession" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="29V4NRgiMYp" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7Sw_42Ud$U$" role="1B3o_S" />
      <node concept="3uibUv" id="7Sw_42UdU9l" role="1zkMxy">
        <ref role="3uigEE" node="2SJclOrOQfV" resolve="UpdateReferencesParticipantBase" />
        <node concept="3uibUv" id="7Sw_42UdVOn" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Void" resolve="Void" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Sw_42Udy6E" role="jymVt" />
    <node concept="2fD8I5" id="2SJclOrOWU_" role="jymVt">
      <property role="TrG5h" value="NamedNodeReference" />
      <node concept="2lGYhJ" id="2SJclOrOXQ7" role="2pHZQ9">
        <property role="3dDGau" value="false" />
        <property role="TrG5h" value="reference" />
        <node concept="3uibUv" id="2SJclOrOYfY" role="2lK19J">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="2lGYhJ" id="2SJclOrOYrd" role="2pHZQ9">
        <property role="3dDGau" value="false" />
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="2SJclOrOYP6" role="2lK19J" />
      </node>
      <node concept="3Tm1VV" id="2SJclOrOWUA" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2SJclOrOWxU" role="jymVt" />
    <node concept="2fD8I5" id="7Sw_42UcHYy" role="jymVt">
      <property role="TrG5h" value="NodeData" />
      <node concept="2lGYhJ" id="7Sw_42UcHYz" role="2pHZQ9">
        <property role="3dDGau" value="false" />
        <property role="TrG5h" value="baseData" />
        <node concept="3uibUv" id="7Sw_42UcOXE" role="2lK19J">
          <ref role="3uigEE" node="2SJclOrOWU_" resolve="UpdateReferencesParticipantBase.NamedNodeReference" />
        </node>
      </node>
      <node concept="2lGYhJ" id="7Sw_42UcHY_" role="2pHZQ9">
        <property role="3dDGau" value="false" />
        <property role="TrG5h" value="other" />
        <node concept="16syzq" id="7Sw_42UcTPS" role="2lK19J">
          <ref role="16sUi3" node="7Sw_42UcHYC" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7Sw_42UcHYB" role="1B3o_S" />
      <node concept="16euLQ" id="7Sw_42UcHYC" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Sw_42UcF3S" role="jymVt" />
    <node concept="2tJIrI" id="7Sw_42UcFdM" role="jymVt" />
    <node concept="3clFb_" id="2SJclOrOQSM" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getId" />
      <node concept="3Tm1VV" id="2SJclOrOQSO" role="1B3o_S" />
      <node concept="17QB3L" id="2SJclOrOQSP" role="3clF45" />
      <node concept="3clFbS" id="2SJclOrOQSV" role="3clF47">
        <node concept="3clFbF" id="2SJclOrORqf" role="3cqZAp">
          <node concept="Xl_RD" id="2SJclOrORqe" role="3clFbG">
            <property role="Xl_RC" value="moveNode.updateReferences" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="5z_gLGeoHk5" role="jymVt">
      <property role="TrG5h" value="OPTION" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="37Il31hXdQf" role="1tU5fm">
        <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
      </node>
      <node concept="3Tm1VV" id="5z_gLGeoIdD" role="1B3o_S" />
      <node concept="2ShNRf" id="37Il31hXepe" role="33vP2m">
        <node concept="1pGfFk" id="37Il31hXed8" role="2ShVmc">
          <ref role="37wK5l" to="5nvm:37Il31hWKPu" resolve="RefactoringParticipant.Option" />
          <node concept="Xl_RD" id="37Il31hXfsA" role="37wK5m">
            <property role="Xl_RC" value="moveNode.options.updateReferencesParticipant" />
          </node>
          <node concept="Xl_RD" id="4SG2RcUG_LS" role="37wK5m">
            <property role="Xl_RC" value="Update references" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4qkYgnA0_pZ" role="jymVt" />
    <node concept="312cEu" id="4qkYgnA0vjD" role="jymVt">
      <property role="TrG5h" value="MyMoveNodeRefactoringDataCollector" />
      <property role="2bfB8j" value="false" />
      <node concept="3Tm1VV" id="7Sw_42Uwd14" role="1B3o_S" />
      <node concept="3clFb_" id="2SJclOrPgWa" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="beforeMove" />
        <node concept="3Tm1VV" id="2SJclOrPgWc" role="1B3o_S" />
        <node concept="37vLTG" id="2SJclOrPgWe" role="3clF46">
          <property role="TrG5h" value="nodeToMove" />
          <node concept="3Tqbb2" id="2SJclOrPgWf" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="2SJclOrPgWg" role="3clF47">
          <node concept="3clFbF" id="2SJclOrPjz5" role="3cqZAp">
            <node concept="2ry78W" id="2SJclOrPjz4" role="3clFbG">
              <ref role="2ryb1Q" node="2SJclOrOWU_" resolve="UpdateReferencesParticipantBase.NamedNodeReference" />
              <node concept="2r$n1x" id="2SJclOrPjz0" role="2r_Bvh">
                <ref role="2r$qp6" node="2SJclOrOXQ7" resolve="reference" />
                <node concept="2OqwBi" id="5iUdt5cRzRM" role="2r_lH1">
                  <node concept="37vLTw" id="5iUdt5cRzRL" role="2Oq$k0">
                    <ref role="3cqZAo" node="2SJclOrPgWe" resolve="nodeToMove" />
                  </node>
                  <node concept="iZEcu" id="5iUdt5cRzRN" role="2OqNvi" />
                </node>
              </node>
              <node concept="2r$n1x" id="2SJclOrPjz2" role="2r_Bvh">
                <ref role="2r$qp6" node="2SJclOrOYrd" resolve="name" />
                <node concept="2YIFZM" id="2SJclOrQqln" role="2r_lH1">
                  <ref role="1Pybhc" to="5jto:2GZlO$G5IXQ" resolve="NodeReferenceUtil" />
                  <ref role="37wK5l" to="5jto:2SJclOrQoBE" resolve="getNodePresentation" />
                  <node concept="37vLTw" id="2SJclOrQqF4" role="37wK5m">
                    <ref role="3cqZAo" node="2SJclOrPgWe" resolve="nodeToMove" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="7Sw_42UbF9K" role="3clF45">
          <ref role="3uigEE" node="2SJclOrOWU_" resolve="UpdateReferencesParticipantBase.NamedNodeReference" />
        </node>
      </node>
      <node concept="3clFb_" id="2SJclOrPgWi" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="afterMove" />
        <node concept="3Tm1VV" id="2SJclOrPgWk" role="1B3o_S" />
        <node concept="37vLTG" id="2SJclOrPgWm" role="3clF46">
          <property role="TrG5h" value="movedNode" />
          <node concept="3Tqbb2" id="2SJclOrPgWn" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="2SJclOrPgWo" role="3clF47">
          <node concept="3clFbF" id="2SJclOrQdz6" role="3cqZAp">
            <node concept="2ry78W" id="2SJclOrQdz7" role="3clFbG">
              <ref role="2ryb1Q" node="2SJclOrOWU_" resolve="UpdateReferencesParticipantBase.NamedNodeReference" />
              <node concept="2r$n1x" id="2SJclOrQdz8" role="2r_Bvh">
                <ref role="2r$qp6" node="2SJclOrOXQ7" resolve="reference" />
                <node concept="2OqwBi" id="5iUdt5cR$m_" role="2r_lH1">
                  <node concept="37vLTw" id="5iUdt5cR$m$" role="2Oq$k0">
                    <ref role="3cqZAo" node="2SJclOrPgWm" resolve="movedNode" />
                  </node>
                  <node concept="iZEcu" id="5iUdt5cR$mA" role="2OqNvi" />
                </node>
              </node>
              <node concept="2r$n1x" id="2SJclOrQdzd" role="2r_Bvh">
                <ref role="2r$qp6" node="2SJclOrOYrd" resolve="name" />
                <node concept="2YIFZM" id="2SJclOrQqH_" role="2r_lH1">
                  <ref role="37wK5l" to="5jto:2SJclOrQoBE" resolve="getNodePresentation" />
                  <ref role="1Pybhc" to="5jto:2GZlO$G5IXQ" resolve="NodeReferenceUtil" />
                  <node concept="37vLTw" id="2SJclOrQr6g" role="37wK5m">
                    <ref role="3cqZAo" node="2SJclOrPgWm" resolve="movedNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="7Sw_42UbDou" role="3clF45">
          <ref role="3uigEE" node="2SJclOrOWU_" resolve="UpdateReferencesParticipantBase.NamedNodeReference" />
        </node>
      </node>
      <node concept="3uibUv" id="4qkYgnA0vjG" role="EKbjA">
        <ref role="3uigEE" to="5nvm:3KqYwoBIIOx" resolve="MoveNodeRefactoringParticipant.MoveNodeRefactoringDataCollector" />
        <node concept="3uibUv" id="7Sw_42UbIK5" role="11_B2D">
          <ref role="3uigEE" node="2SJclOrOWU_" resolve="UpdateReferencesParticipantBase.NamedNodeReference" />
        </node>
        <node concept="3uibUv" id="7Sw_42UbGYm" role="11_B2D">
          <ref role="3uigEE" node="2SJclOrOWU_" resolve="UpdateReferencesParticipantBase.NamedNodeReference" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Sw_42Udqhb" role="jymVt" />
    <node concept="2tJIrI" id="PXLOXm_9aS" role="jymVt" />
    <node concept="3clFb_" id="PXLOXm_ata" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getAvailableOptions" />
      <node concept="37vLTG" id="PXLOXm_atb" role="3clF46">
        <property role="TrG5h" value="initialState" />
        <node concept="3uibUv" id="7Sw_42Ue_Bz" role="1tU5fm">
          <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
          <node concept="16syzq" id="7Sw_42Ue_B$" role="11_B2D">
            <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="PXLOXm_atd" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="PXLOXm_ate" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3Tm1VV" id="PXLOXm_atf" role="1B3o_S" />
      <node concept="_YKpA" id="PXLOXm_atg" role="3clF45">
        <node concept="3uibUv" id="1$U7CScnJXn" role="_ZDj9">
          <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
        </node>
      </node>
      <node concept="3clFbS" id="PXLOXm_ati" role="3clF47">
        <node concept="3cpWs6" id="PXLOXm_atl" role="3cqZAp">
          <node concept="2ShNRf" id="PXLOXm_atm" role="3cqZAk">
            <node concept="Tc6Ow" id="PXLOXm_atn" role="2ShVmc">
              <node concept="3uibUv" id="1$U7CScnMAT" role="HW$YZ">
                <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
              </node>
              <node concept="37vLTw" id="5z_gLGeoIsT" role="HW$Y0">
                <ref role="3cqZAo" node="5z_gLGeoHk5" resolve="OPTION" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ram9htZWjg" role="jymVt" />
    <node concept="3clFb_" id="7ram9hu0Tza" role="jymVt">
      <property role="TrG5h" value="noChanges" />
      <node concept="3clFbS" id="7ram9hu0Tzg" role="3clF47">
        <node concept="3cpWs6" id="7ram9hu1yGD" role="3cqZAp">
          <node concept="2OqwBi" id="7ram9hu1yGE" role="3cqZAk">
            <node concept="2OqwBi" id="7ram9hu1yGF" role="2Oq$k0">
              <node concept="37vLTw" id="7ram9hu1yGG" role="2Oq$k0">
                <ref role="3cqZAo" node="7ram9hu0Tzc" resolve="initialStates" />
              </node>
              <node concept="3$u5V9" id="7ram9hu1yGH" role="2OqNvi">
                <node concept="1bVj0M" id="7ram9hu1yGI" role="23t8la">
                  <node concept="3clFbS" id="7ram9hu1yGJ" role="1bW5cS">
                    <node concept="3clFbF" id="7ram9hu1yGK" role="3cqZAp">
                      <node concept="1rXfSq" id="7ram9hu4oOz" role="3clFbG">
                        <ref role="37wK5l" node="7ram9hu3lhb" resolve="emptyList" />
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="7ram9hu1yGY" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="7ram9hu1yGZ" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="7ram9hu1yH0" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="7ram9hu0Tzi" role="3clF45">
        <node concept="_YKpA" id="7ram9hu0Tzj" role="_ZDj9">
          <node concept="3uibUv" id="7ram9hu0Tzk" role="_ZDj9">
            <ref role="3uigEE" to="5nvm:3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
            <node concept="3uibUv" id="7ram9hu0Tzl" role="11_B2D">
              <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
              <node concept="16syzq" id="7ram9hu0Tzm" role="11_B2D">
                <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
              </node>
            </node>
            <node concept="3uibUv" id="7ram9hu0Tzn" role="11_B2D">
              <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
              <node concept="16syzq" id="7ram9hu0Tzo" role="11_B2D">
                <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7ram9hu0Tzc" role="3clF46">
        <property role="TrG5h" value="initialStates" />
        <node concept="_YKpA" id="7ram9hu0Tzd" role="1tU5fm">
          <node concept="3uibUv" id="7ram9hu0Tze" role="_ZDj9">
            <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
            <node concept="16syzq" id="7ram9hu0Tzf" role="11_B2D">
              <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7ram9hu0Tzh" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7ram9hu2Z76" role="jymVt" />
    <node concept="3clFb_" id="7ram9hu3lhb" role="jymVt">
      <property role="TrG5h" value="emptyList" />
      <node concept="3clFbS" id="7ram9hu3lhe" role="3clF47">
        <node concept="3cpWs6" id="7ram9hu3V4o" role="3cqZAp">
          <node concept="2YIFZM" id="7ram9hu44zj" role="3cqZAk">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <node concept="3uibUv" id="7ram9hu44zk" role="3PaCim">
              <ref role="3uigEE" to="5nvm:3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
              <node concept="3uibUv" id="7ram9hu44zl" role="11_B2D">
                <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
                <node concept="16syzq" id="7ram9hu44zm" role="11_B2D">
                  <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
                </node>
              </node>
              <node concept="3uibUv" id="7ram9hu44zn" role="11_B2D">
                <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
                <node concept="16syzq" id="7ram9hu44zo" role="11_B2D">
                  <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7ram9hu3a74" role="1B3o_S" />
      <node concept="_YKpA" id="7ram9hu3whw" role="3clF45">
        <node concept="3uibUv" id="7ram9hu3whx" role="_ZDj9">
          <ref role="3uigEE" to="5nvm:3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
          <node concept="3uibUv" id="7ram9hu3why" role="11_B2D">
            <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
            <node concept="16syzq" id="7ram9hu3whz" role="11_B2D">
              <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
            </node>
          </node>
          <node concept="3uibUv" id="7ram9hu3wh$" role="11_B2D">
            <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
            <node concept="16syzq" id="7ram9hu3wh_" role="11_B2D">
              <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="34P8w750VvO" role="jymVt" />
    <node concept="2tJIrI" id="34P8w750VvP" role="jymVt" />
    <node concept="3clFb_" id="34P8w751fwe" role="jymVt">
      <property role="TrG5h" value="getChanges" />
      <node concept="37vLTG" id="34P8w751fwf" role="3clF46">
        <property role="TrG5h" value="initialStates" />
        <node concept="_YKpA" id="34P8w751fwg" role="1tU5fm">
          <node concept="3uibUv" id="34P8w751fxF" role="_ZDj9">
            <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
            <node concept="16syzq" id="34P8w751fxG" role="11_B2D">
              <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="34P8w751fwi" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="34P8w751fwj" role="1tU5fm">
          <ref role="3uigEE" to="5nvm:3KqYwoBJ0xf" resolve="RefactoringSession" />
        </node>
        <node concept="2AHcQZ" id="34P8w751fwk" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="34P8w751fwl" role="3clF46">
        <property role="TrG5h" value="selectedOptions" />
        <property role="3TUv4t" value="true" />
        <node concept="_YKpA" id="34P8w751fwm" role="1tU5fm">
          <node concept="3uibUv" id="34P8w751fwn" role="_ZDj9">
            <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="34P8w751fwo" role="3clF46">
        <property role="TrG5h" value="progressMonitor" />
        <node concept="3uibUv" id="34P8w751fwp" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="3Tm1VV" id="34P8w751fwq" role="1B3o_S" />
      <node concept="_YKpA" id="34P8w751fwB" role="3clF45">
        <node concept="_YKpA" id="34P8w751fwC" role="_ZDj9">
          <node concept="3uibUv" id="34P8w751fwD" role="_ZDj9">
            <ref role="3uigEE" to="5nvm:3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
            <node concept="3uibUv" id="34P8w751fxB" role="11_B2D">
              <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
              <node concept="16syzq" id="34P8w751fxC" role="11_B2D">
                <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
              </node>
            </node>
            <node concept="3uibUv" id="34P8w751fxD" role="11_B2D">
              <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
              <node concept="16syzq" id="34P8w751fxE" role="11_B2D">
                <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="34P8w751fxH" role="3clF47">
        <node concept="3clFbJ" id="PXLOXm_ejO" role="3cqZAp">
          <node concept="3clFbS" id="PXLOXm_ejQ" role="3clFbx">
            <node concept="3cpWs6" id="PXLOXm_g_$" role="3cqZAp">
              <node concept="1rXfSq" id="7ram9hu1QS6" role="3cqZAk">
                <ref role="37wK5l" node="7ram9hu0Tza" resolve="noChanges" />
                <node concept="37vLTw" id="7ram9hu22f3" role="37wK5m">
                  <ref role="3cqZAo" node="34P8w751fwf" resolve="initialStates" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="PXLOXm_fVl" role="3clFbw">
            <node concept="2OqwBi" id="1$U7CScnUZx" role="3fr31v">
              <node concept="37vLTw" id="PXLOXm_g0r" role="2Oq$k0">
                <ref role="3cqZAo" node="34P8w751fwl" resolve="selectedOptions" />
              </node>
              <node concept="3JPx81" id="1$U7CScnVY7" role="2OqNvi">
                <node concept="37vLTw" id="34P8w751WtE" role="25WWJ7">
                  <ref role="3cqZAo" node="5z_gLGeoHk5" resolve="OPTION" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2SJclOrQIuE" role="3cqZAp">
          <node concept="3cpWsn" id="2SJclOrQIuF" role="3cpWs9">
            <property role="TrG5h" value="usages" />
            <node concept="3vKaQO" id="2SJclOrQIux" role="1tU5fm">
              <node concept="2z4iKi" id="2SJclOrQIu$" role="3O5elw" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2SJclOrQBdd" role="3cqZAp">
          <node concept="3cpWsn" id="2SJclOrQBde" role="3cpWs9">
            <property role="TrG5h" value="movedNodes" />
            <node concept="_YKpA" id="1xRmxf62tPz" role="1tU5fm">
              <node concept="3uibUv" id="1xRmxf62vno" role="_ZDj9">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="1xRmxf62Lxb" role="33vP2m">
              <node concept="2OqwBi" id="1xRmxf62y3k" role="2Oq$k0">
                <node concept="37vLTw" id="2SJclOrQBdh" role="2Oq$k0">
                  <ref role="3cqZAo" node="34P8w751fwf" resolve="initialStates" />
                </node>
                <node concept="3$u5V9" id="1xRmxf62zKc" role="2OqNvi">
                  <node concept="1bVj0M" id="1xRmxf62zKe" role="23t8la">
                    <node concept="3clFbS" id="1xRmxf62zKf" role="1bW5cS">
                      <node concept="3clFbF" id="1xRmxf62_8j" role="3cqZAp">
                        <node concept="2OqwBi" id="1xRmxf62Dd9" role="3clFbG">
                          <node concept="2OqwBi" id="1xRmxf62Bft" role="2Oq$k0">
                            <node concept="2OqwBi" id="7Sw_42Uiw9a" role="2Oq$k0">
                              <node concept="37vLTw" id="1xRmxf62Au1" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0Xqc" resolve="it" />
                              </node>
                              <node concept="2sxana" id="7Sw_42UixmC" role="2OqNvi">
                                <ref role="2sxfKC" node="7Sw_42UcHYz" resolve="baseData" />
                              </node>
                            </node>
                            <node concept="2sxana" id="1xRmxf62BYr" role="2OqNvi">
                              <ref role="2sxfKC" node="2SJclOrOXQ7" resolve="reference" />
                            </node>
                          </node>
                          <node concept="liA8E" id="1xRmxf62EnJ" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                            <node concept="2OqwBi" id="34P8w752MqN" role="37wK5m">
                              <node concept="37vLTw" id="1xRmxf62FG4" role="2Oq$k0">
                                <ref role="3cqZAo" node="34P8w751fwi" resolve="session" />
                              </node>
                              <node concept="liA8E" id="34P8w752Yej" role="2OqNvi">
                                <ref role="37wK5l" to="5nvm:7VAzgTdnvUa" resolve="getRepository" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0Xqc" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0Xqd" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="1xRmxf62MJW" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="L3pyB" id="2SJclOrQDBl" role="3cqZAp">
          <node concept="3clFbS" id="2SJclOrQDBn" role="L3pyw">
            <node concept="3clFbJ" id="2SJclOrQEVJ" role="3cqZAp">
              <node concept="3fqX7Q" id="q_ruBBkrw5" role="3clFbw">
                <node concept="2OqwBi" id="q_ruBBkrw7" role="3fr31v">
                  <node concept="37vLTw" id="q_ruBBkrw8" role="2Oq$k0">
                    <ref role="3cqZAo" node="2SJclOrQBde" resolve="movedNodes" />
                  </node>
                  <node concept="3JPx81" id="q_ruBBkrw9" role="2OqNvi">
                    <node concept="10Nm6u" id="q_ruBBkrwa" role="25WWJ7" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2SJclOrQEVL" role="3clFbx">
                <node concept="3SKdUt" id="q_ruBBkxoB" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXotlB" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXotlC" role="1PaTwD">
                      <property role="3oM_SC" value="all" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXotlD" role="1PaTwD">
                      <property role="3oM_SC" value="source" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXotlE" role="1PaTwD">
                      <property role="3oM_SC" value="nodes" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXotlF" role="1PaTwD">
                      <property role="3oM_SC" value="are" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXotlG" role="1PaTwD">
                      <property role="3oM_SC" value="present," />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXotlH" role="1PaTwD">
                      <property role="3oM_SC" value="so" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXotlI" role="1PaTwD">
                      <property role="3oM_SC" value="we" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXotlJ" role="1PaTwD">
                      <property role="3oM_SC" value="can" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXotlK" role="1PaTwD">
                      <property role="3oM_SC" value="run" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXotlL" role="1PaTwD">
                      <property role="3oM_SC" value="find" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXotlM" role="1PaTwD">
                      <property role="3oM_SC" value="usages" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXotlN" role="1PaTwD">
                      <property role="3oM_SC" value="(we" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXotlO" role="1PaTwD">
                      <property role="3oM_SC" value="are" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXotlP" role="1PaTwD">
                      <property role="3oM_SC" value="probably" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXotlQ" role="1PaTwD">
                      <property role="3oM_SC" value="inside" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXotlR" role="1PaTwD">
                      <property role="3oM_SC" value="in-project" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXotlS" role="1PaTwD">
                      <property role="3oM_SC" value="refactoring)" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2DQHtcLAkV2" role="3cqZAp">
                  <node concept="2OqwBi" id="2DQHtcLAlgv" role="3clFbG">
                    <node concept="37vLTw" id="2vOGnLEqbEi" role="2Oq$k0">
                      <ref role="3cqZAo" node="34P8w751fwo" resolve="progressMonitor" />
                    </node>
                    <node concept="liA8E" id="2DQHtcLAlRt" role="2OqNvi">
                      <ref role="37wK5l" to="yyf4:~ProgressMonitor.start(java.lang.String,int)" resolve="start" />
                      <node concept="Xl_RD" id="2DQHtcLAmx4" role="37wK5m">
                        <property role="Xl_RC" value="References in current project" />
                      </node>
                      <node concept="3cmrfG" id="2DQHtcLAnaV" role="37wK5m">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2SJclOrQIZ2" role="3cqZAp">
                  <node concept="37vLTI" id="2SJclOrQIZ4" role="3clFbG">
                    <node concept="37vLTw" id="2SJclOrQIZ8" role="37vLTJ">
                      <ref role="3cqZAo" node="2SJclOrQIuF" resolve="usages" />
                    </node>
                    <node concept="10QFUN" id="1xRmxf633pR" role="37vLTx">
                      <node concept="2OqwBi" id="1xRmxf633pH" role="10QFUP">
                        <node concept="2YIFZM" id="1xRmxf633pI" role="2Oq$k0">
                          <ref role="37wK5l" to="lui2:~FindUsagesFacade.getInstance()" resolve="getInstance" />
                          <ref role="1Pybhc" to="lui2:~FindUsagesFacade" resolve="FindUsagesFacade" />
                        </node>
                        <node concept="liA8E" id="1xRmxf633pJ" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~FindUsagesFacade.findUsages(org.jetbrains.mps.openapi.module.SearchScope,java.util.Set,org.jetbrains.mps.openapi.util.ProgressMonitor)" resolve="findUsages" />
                          <node concept="2OqwBi" id="34P8w753zo7" role="37wK5m">
                            <node concept="37vLTw" id="1xRmxf633pK" role="2Oq$k0">
                              <ref role="3cqZAo" node="34P8w751fwi" resolve="session" />
                            </node>
                            <node concept="liA8E" id="34P8w753EUq" role="2OqNvi">
                              <ref role="37wK5l" to="5nvm:7VAzgTdnwdG" resolve="getSearchScope" />
                            </node>
                          </node>
                          <node concept="2ShNRf" id="1xRmxf633pL" role="37wK5m">
                            <node concept="2i4dXS" id="1xRmxf633pM" role="2ShVmc">
                              <node concept="3Tqbb2" id="1xRmxf633pN" role="HW$YZ" />
                              <node concept="37vLTw" id="1xRmxf633pO" role="I$8f6">
                                <ref role="3cqZAo" node="2SJclOrQBde" resolve="movedNodes" />
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="2DQHtcLAjjA" role="37wK5m">
                            <node concept="37vLTw" id="1xRmxf633pP" role="2Oq$k0">
                              <ref role="3cqZAo" node="34P8w751fwo" resolve="progressMonitor" />
                            </node>
                            <node concept="liA8E" id="2DQHtcLAk33" role="2OqNvi">
                              <ref role="37wK5l" to="yyf4:~ProgressMonitor.subTask(int)" resolve="subTask" />
                              <node concept="3cmrfG" id="2DQHtcLAkhc" role="37wK5m">
                                <property role="3cmrfH" value="1" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2hMVRd" id="1xRmxf634kN" role="10QFUM">
                        <node concept="2z4iKi" id="1xRmxf634kP" role="2hN53Y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="2SJclOrQJdh" role="9aQIa">
                <node concept="3clFbS" id="2SJclOrQJdi" role="9aQI4">
                  <node concept="3clFbF" id="2DQHtcLAnfW" role="3cqZAp">
                    <node concept="2OqwBi" id="2DQHtcLAnfX" role="3clFbG">
                      <node concept="37vLTw" id="2DQHtcLAnfY" role="2Oq$k0">
                        <ref role="3cqZAo" node="34P8w751fwo" resolve="progressMonitor" />
                      </node>
                      <node concept="liA8E" id="2DQHtcLAnfZ" role="2OqNvi">
                        <ref role="37wK5l" to="yyf4:~ProgressMonitor.start(java.lang.String,int)" resolve="start" />
                        <node concept="Xl_RD" id="2DQHtcLAng0" role="37wK5m">
                          <property role="Xl_RC" value="References in current project" />
                        </node>
                        <node concept="2OqwBi" id="2DQHtcLAouG" role="37wK5m">
                          <node concept="gHf3$" id="2DQHtcLAofU" role="2Oq$k0">
                            <node concept="1dO9Bo" id="2DQHtcLAofW" role="1dOa5D" />
                          </node>
                          <node concept="34oBXx" id="2DQHtcLAo_E" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2SJclOrQJuF" role="3cqZAp">
                    <node concept="37vLTI" id="2SJclOrQJJk" role="3clFbG">
                      <node concept="37vLTw" id="2SJclOrQJuE" role="37vLTJ">
                        <ref role="3cqZAo" node="2SJclOrQIuF" resolve="usages" />
                      </node>
                      <node concept="2ShNRf" id="2DQHtcLAxcH" role="37vLTx">
                        <node concept="Tc6Ow" id="2DQHtcLAxqj" role="2ShVmc">
                          <node concept="2z4iKi" id="2DQHtcLAxKN" role="HW$YZ" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2Gpval" id="2DQHtcLAz13" role="3cqZAp">
                    <node concept="2GrKxI" id="2DQHtcLAz15" role="2Gsz3X">
                      <property role="TrG5h" value="ref" />
                    </node>
                    <node concept="3clFbS" id="2DQHtcLAz17" role="2LFqv$">
                      <node concept="3clFbJ" id="2DQHtcLAzKQ" role="3cqZAp">
                        <node concept="3clFbS" id="2DQHtcLAzKR" role="3clFbx">
                          <node concept="3clFbF" id="2DQHtcLAAtx" role="3cqZAp">
                            <node concept="2OqwBi" id="2DQHtcLAAID" role="3clFbG">
                              <node concept="37vLTw" id="2DQHtcLAAtw" role="2Oq$k0">
                                <ref role="3cqZAo" node="2SJclOrQIuF" resolve="usages" />
                              </node>
                              <node concept="TSZUe" id="2DQHtcLAB1W" role="2OqNvi">
                                <node concept="2GrUjf" id="2DQHtcLABfb" role="25WWJ7">
                                  <ref role="2Gs0qQ" node="2DQHtcLAz15" resolve="ref" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="2DQHtcLA_ds" role="3clFbw">
                          <node concept="2OqwBi" id="2DQHtcLA_dt" role="2Oq$k0">
                            <node concept="37vLTw" id="2DQHtcLA_du" role="2Oq$k0">
                              <ref role="3cqZAo" node="34P8w751fwf" resolve="initialStates" />
                            </node>
                            <node concept="3$u5V9" id="2DQHtcLA_dv" role="2OqNvi">
                              <node concept="1bVj0M" id="2DQHtcLA_dw" role="23t8la">
                                <node concept="3clFbS" id="2DQHtcLA_dx" role="1bW5cS">
                                  <node concept="3clFbF" id="2DQHtcLA_dy" role="3cqZAp">
                                    <node concept="2OqwBi" id="2DQHtcLA_dz" role="3clFbG">
                                      <node concept="2OqwBi" id="7Sw_42UiuHP" role="2Oq$k0">
                                        <node concept="37vLTw" id="2DQHtcLA_d$" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5W7E4fV0Xqe" resolve="it" />
                                        </node>
                                        <node concept="2sxana" id="7Sw_42UivsN" role="2OqNvi">
                                          <ref role="2sxfKC" node="7Sw_42UcHYz" resolve="baseData" />
                                        </node>
                                      </node>
                                      <node concept="2sxana" id="2DQHtcLA_d_" role="2OqNvi">
                                        <ref role="2sxfKC" node="2SJclOrOXQ7" resolve="reference" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="5W7E4fV0Xqe" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="5W7E4fV0Xqf" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3JPx81" id="2DQHtcLA_dC" role="2OqNvi">
                            <node concept="2OqwBi" id="2DQHtcLA_dD" role="25WWJ7">
                              <node concept="2GrUjf" id="2DQHtcLAA9J" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="2DQHtcLAz15" resolve="ref" />
                              </node>
                              <node concept="liA8E" id="2DQHtcLA_dF" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SReference.getTargetNodeReference()" resolve="getTargetNodeReference" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="2DQHtcLACit" role="3cqZAp">
                        <node concept="2OqwBi" id="2DQHtcLACy_" role="3clFbG">
                          <node concept="37vLTw" id="2DQHtcLACir" role="2Oq$k0">
                            <ref role="3cqZAo" node="34P8w751fwo" resolve="progressMonitor" />
                          </node>
                          <node concept="liA8E" id="2DQHtcLAD6v" role="2OqNvi">
                            <ref role="37wK5l" to="yyf4:~ProgressMonitor.advance(int)" resolve="advance" />
                            <node concept="3cmrfG" id="2DQHtcLADj6" role="37wK5m">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="2DQHtcLAFF$" role="3cqZAp">
                        <node concept="3clFbS" id="2DQHtcLAFFA" role="3clFbx">
                          <node concept="3cpWs6" id="7ram9hu2vAG" role="3cqZAp">
                            <node concept="1rXfSq" id="7ram9hu2wA9" role="3cqZAk">
                              <ref role="37wK5l" node="7ram9hu0Tza" resolve="noChanges" />
                              <node concept="37vLTw" id="7ram9hu2EFX" role="37wK5m">
                                <ref role="3cqZAo" node="34P8w751fwf" resolve="initialStates" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="2DQHtcLAGOz" role="3clFbw">
                          <node concept="37vLTw" id="2DQHtcLAG6L" role="2Oq$k0">
                            <ref role="3cqZAo" node="34P8w751fwo" resolve="progressMonitor" />
                          </node>
                          <node concept="liA8E" id="2DQHtcLAOJS" role="2OqNvi">
                            <ref role="37wK5l" to="yyf4:~ProgressMonitor.isCanceled()" resolve="isCanceled" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gHf3$" id="2DQHtcLAzgH" role="2GsD0m">
                      <node concept="1dO9Bo" id="2DQHtcLAzgJ" role="1dOa5D" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="34P8w753d4e" role="L3pyr">
            <node concept="37vLTw" id="2SJclOrQDJF" role="2Oq$k0">
              <ref role="3cqZAo" node="34P8w751fwi" resolve="session" />
            </node>
            <node concept="liA8E" id="34P8w753nwn" role="2OqNvi">
              <ref role="37wK5l" to="5nvm:7VAzgTdnwdG" resolve="getSearchScope" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="34P8w75exSJ" role="3cqZAp">
          <node concept="2OqwBi" id="34P8w75e_nM" role="3clFbG">
            <node concept="37vLTw" id="34P8w75exSH" role="2Oq$k0">
              <ref role="3cqZAo" node="34P8w751fwo" resolve="progressMonitor" />
            </node>
            <node concept="liA8E" id="34P8w75eMII" role="2OqNvi">
              <ref role="37wK5l" to="yyf4:~ProgressMonitor.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2DQHtcLCqDG" role="3cqZAp">
          <node concept="3cpWsn" id="2DQHtcLCqDJ" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3rvAFt" id="2DQHtcLCqDA" role="1tU5fm">
              <node concept="3uibUv" id="2DQHtcLCsNW" role="3rvQeY">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="_YKpA" id="2DQHtcLCSOr" role="3rvSg0">
                <node concept="3uibUv" id="2DQHtcLCt21" role="_ZDj9">
                  <ref role="3uigEE" to="5nvm:3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
                  <node concept="3uibUv" id="7Sw_42Uf19_" role="11_B2D">
                    <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
                    <node concept="16syzq" id="7Sw_42Uf19A" role="11_B2D">
                      <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="7Sw_42Uf5c1" role="11_B2D">
                    <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
                    <node concept="16syzq" id="7Sw_42Uf5c2" role="11_B2D">
                      <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="2DQHtcLCYyT" role="33vP2m">
              <node concept="3rGOSV" id="2DQHtcLCXOQ" role="2ShVmc">
                <node concept="3uibUv" id="2DQHtcLCXOR" role="3rHrn6">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
                <node concept="_YKpA" id="2DQHtcLCXOS" role="3rHtpV">
                  <node concept="3uibUv" id="2DQHtcLCXOT" role="_ZDj9">
                    <ref role="3uigEE" to="5nvm:3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
                    <node concept="3uibUv" id="7Sw_42Uf9ar" role="11_B2D">
                      <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
                      <node concept="16syzq" id="7Sw_42Uf9as" role="11_B2D">
                        <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="7Sw_42Ufd9Y" role="11_B2D">
                      <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
                      <node concept="16syzq" id="7Sw_42Ufd9Z" role="11_B2D">
                        <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="2DQHtcLCxmC" role="3cqZAp">
          <node concept="2GrKxI" id="2DQHtcLCxmE" role="2Gsz3X">
            <property role="TrG5h" value="ref" />
          </node>
          <node concept="3clFbS" id="2DQHtcLCxmG" role="2LFqv$">
            <node concept="3cpWs8" id="1xRmxf63uEA" role="3cqZAp">
              <node concept="3cpWsn" id="1xRmxf63uEB" role="3cpWs9">
                <property role="TrG5h" value="containingNode" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="1xRmxf63uEC" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
                <node concept="2OqwBi" id="1xRmxf63uED" role="33vP2m">
                  <node concept="2OqwBi" id="1xRmxf63uEE" role="2Oq$k0">
                    <node concept="2GrUjf" id="2DQHtcLCFVn" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="2DQHtcLCxmE" resolve="ref" />
                    </node>
                    <node concept="liA8E" id="1xRmxf63uEG" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SReference.getSourceNode()" resolve="getSourceNode" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1xRmxf63uEH" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6UJmIgi57sZ" role="3cqZAp">
              <node concept="3cpWsn" id="6UJmIgi57sX" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="containingModel" />
                <node concept="3uibUv" id="6UJmIgi59sJ" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
                <node concept="2OqwBi" id="6UJmIgi5fTq" role="33vP2m">
                  <node concept="2OqwBi" id="6UJmIgi5cQw" role="2Oq$k0">
                    <node concept="2GrUjf" id="6UJmIgi5cyv" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="2DQHtcLCxmE" resolve="ref" />
                    </node>
                    <node concept="liA8E" id="6UJmIgi5ffY" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SReference.getSourceNode()" resolve="getSourceNode" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6UJmIgi5icz" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5dWUYKKEmUS" role="3cqZAp">
              <node concept="3cpWsn" id="5dWUYKKEmUT" role="3cpWs9">
                <property role="TrG5h" value="movingNode" />
                <node concept="2AHcQZ" id="7kWilDBR1Hc" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                </node>
                <node concept="3uibUv" id="5dWUYKKEu7v" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="2OqwBi" id="5dWUYKKEo7y" role="33vP2m">
                  <node concept="2GrUjf" id="5dWUYKKEnU9" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="2DQHtcLCxmE" resolve="ref" />
                  </node>
                  <node concept="liA8E" id="5dWUYKKEoF2" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SReference.getTargetNode()" resolve="getTargetNode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1xRmxf63uEI" role="3cqZAp">
              <node concept="3cpWsn" id="1xRmxf63uEJ" role="3cpWs9">
                <property role="TrG5h" value="role" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="1xRmxf63uEK" role="1tU5fm">
                  <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
                </node>
                <node concept="2OqwBi" id="1xRmxf63uEL" role="33vP2m">
                  <node concept="2GrUjf" id="2DQHtcLCG9Q" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="2DQHtcLCxmE" resolve="ref" />
                  </node>
                  <node concept="liA8E" id="1xRmxf63uEN" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SReference.getLink()" resolve="getLink" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1xRmxf63uEO" role="3cqZAp">
              <node concept="3cpWsn" id="1xRmxf63uEP" role="3cpWs9">
                <property role="TrG5h" value="resolveInfo" />
                <property role="3TUv4t" value="true" />
                <node concept="17QB3L" id="1xRmxf63uEQ" role="1tU5fm" />
                <node concept="2OqwBi" id="1xRmxf63uER" role="33vP2m">
                  <node concept="2GrUjf" id="2DQHtcLCGol" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="2DQHtcLCxmE" resolve="ref" />
                  </node>
                  <node concept="1FfNbt" id="1xRmxf63uET" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1xRmxf63uEU" role="3cqZAp">
              <node concept="3cpWsn" id="1xRmxf63uEV" role="3cpWs9">
                <property role="TrG5h" value="searchResults" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="1xRmxf63uEW" role="1tU5fm">
                  <ref role="3uigEE" to="g4jo:J2bOg02HbG" resolve="SearchResults" />
                </node>
                <node concept="2ShNRf" id="1xRmxf63uEX" role="33vP2m">
                  <node concept="1pGfFk" id="1xRmxf63uEY" role="2ShVmc">
                    <ref role="37wK5l" to="g4jo:6hZLf2Yo3pm" resolve="SearchResults" />
                    <node concept="2ShNRf" id="1xRmxf63uEZ" role="37wK5m">
                      <node concept="2i4dXS" id="1xRmxf63uF0" role="2ShVmc">
                        <node concept="3Tqbb2" id="1xRmxf63uF1" role="HW$YZ" />
                        <node concept="2OqwBi" id="2DQHtcLBC57" role="HW$Y0">
                          <node concept="2GrUjf" id="2DQHtcLCGAO" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="2DQHtcLCxmE" resolve="ref" />
                          </node>
                          <node concept="liA8E" id="2DQHtcLBE04" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SReference.getTargetNode()" resolve="getTargetNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2ShNRf" id="1xRmxf63uF3" role="37wK5m">
                      <node concept="Tc6Ow" id="1xRmxf63uF4" role="2ShVmc">
                        <node concept="3uibUv" id="1xRmxf63uF5" role="HW$YZ">
                          <ref role="3uigEE" to="g4jo:J2bOg02GHT" resolve="SearchResult" />
                          <node concept="3Tqbb2" id="1xRmxf63uF6" role="11_B2D" />
                        </node>
                        <node concept="2ShNRf" id="1xRmxf63uF7" role="HW$Y0">
                          <node concept="1pGfFk" id="1xRmxf63uF8" role="2ShVmc">
                            <ref role="37wK5l" to="g4jo:J2bOg02GIy" resolve="SearchResult" />
                            <node concept="2OqwBi" id="1xRmxf63uF9" role="37wK5m">
                              <node concept="2GrUjf" id="2DQHtcLCGPj" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="2DQHtcLCxmE" resolve="ref" />
                              </node>
                              <node concept="liA8E" id="1xRmxf63uFb" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SReference.getSourceNode()" resolve="getSourceNode" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="1xRmxf63uFc" role="37wK5m">
                              <property role="Xl_RC" value="reference" />
                            </node>
                            <node concept="3uibUv" id="1xRmxf63uFd" role="1pMfVU">
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
            <node concept="3cpWs8" id="1xRmxf63uFe" role="3cqZAp">
              <node concept="3cpWsn" id="1xRmxf63uFf" role="3cpWs9">
                <property role="TrG5h" value="change" />
                <node concept="3uibUv" id="1xRmxf63uFg" role="1tU5fm">
                  <ref role="3uigEE" to="5nvm:3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
                  <node concept="3uibUv" id="7Sw_42Ufh4Y" role="11_B2D">
                    <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
                    <node concept="16syzq" id="7Sw_42Ufh4Z" role="11_B2D">
                      <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="7Sw_42Ufj1c" role="11_B2D">
                    <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
                    <node concept="16syzq" id="7Sw_42Ufj1d" role="11_B2D">
                      <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="1xRmxf63uFj" role="33vP2m">
                  <node concept="YeOm9" id="1xRmxf63uFk" role="2ShVmc">
                    <node concept="1Y3b0j" id="1xRmxf63uFl" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <ref role="1Y3XeK" to="5nvm:7tV5ZLw1f3b" resolve="MoveNodeRefactoringParticipant.ChangeBase" />
                      <node concept="3clFb_" id="1xRmxf63uFm" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="getParticipant" />
                        <node concept="3uibUv" id="1xRmxf63uFn" role="3clF45">
                          <ref role="3uigEE" to="5nvm:3KqYwoBJhhy" resolve="MoveNodeRefactoringParticipant" />
                          <node concept="3uibUv" id="7Sw_42UfmS$" role="11_B2D">
                            <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
                            <node concept="16syzq" id="7Sw_42UfmS_" role="11_B2D">
                              <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
                            </node>
                          </node>
                          <node concept="3uibUv" id="7Sw_42UfoD3" role="11_B2D">
                            <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
                            <node concept="16syzq" id="7Sw_42UfoD4" role="11_B2D">
                              <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
                            </node>
                          </node>
                        </node>
                        <node concept="3Tm1VV" id="1xRmxf63uFq" role="1B3o_S" />
                        <node concept="3clFbS" id="1xRmxf63uFr" role="3clF47">
                          <node concept="3clFbF" id="1xRmxf63uFs" role="3cqZAp">
                            <node concept="Xjq3P" id="1xRmxf63uFt" role="3clFbG">
                              <ref role="1HBi2w" node="2SJclOrOQfV" resolve="UpdateReferencesParticipantBase" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="1xRmxf63uFu" role="1B3o_S" />
                      <node concept="3clFb_" id="1xRmxf63uFv" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="getSearchResults" />
                        <node concept="3uibUv" id="1xRmxf63uFw" role="3clF45">
                          <ref role="3uigEE" to="g4jo:J2bOg02HbG" resolve="SearchResults" />
                        </node>
                        <node concept="3Tm1VV" id="1xRmxf63uFx" role="1B3o_S" />
                        <node concept="3clFbS" id="1xRmxf63uFy" role="3clF47">
                          <node concept="3clFbF" id="1xRmxf63uFz" role="3cqZAp">
                            <node concept="37vLTw" id="1xRmxf63uF$" role="3clFbG">
                              <ref role="3cqZAo" node="1xRmxf63uEV" resolve="searchResults" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFb_" id="1xRmxf63uFF" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="confirm" />
                        <node concept="3cqZAl" id="1xRmxf63uFG" role="3clF45" />
                        <node concept="3Tm1VV" id="1xRmxf63uFH" role="1B3o_S" />
                        <node concept="37vLTG" id="1xRmxf63uFI" role="3clF46">
                          <property role="TrG5h" value="finalState" />
                          <node concept="3uibUv" id="7Sw_42Ufsr_" role="1tU5fm">
                            <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
                            <node concept="16syzq" id="7Sw_42UfsrA" role="11_B2D">
                              <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTG" id="1xRmxf63uFK" role="3clF46">
                          <property role="TrG5h" value="repository" />
                          <node concept="3uibUv" id="1xRmxf63uFL" role="1tU5fm">
                            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="1xRmxf63uFM" role="3clF46">
                          <property role="TrG5h" value="refactoringSession" />
                          <node concept="3uibUv" id="1xRmxf63uFN" role="1tU5fm">
                            <ref role="3uigEE" to="5nvm:3KqYwoBJ0xf" resolve="RefactoringSession" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="1xRmxf63uFO" role="3clF47">
                          <node concept="3clFbF" id="1xRmxf63uFP" role="3cqZAp">
                            <node concept="2OqwBi" id="1xRmxf63uFQ" role="3clFbG">
                              <node concept="37vLTw" id="1xRmxf63uFR" role="2Oq$k0">
                                <ref role="3cqZAo" node="1xRmxf63uFM" resolve="refactoringSession" />
                              </node>
                              <node concept="liA8E" id="1xRmxf63uFS" role="2OqNvi">
                                <ref role="37wK5l" to="5nvm:3KqYwoBJ0Rs" resolve="registerChange" />
                                <node concept="1bVj0M" id="1xRmxf63uFT" role="37wK5m">
                                  <node concept="3clFbS" id="1xRmxf63uFU" role="1bW5cS">
                                    <node concept="3clFbJ" id="4qkYgnA3gT_" role="3cqZAp">
                                      <node concept="3clFbS" id="4qkYgnA3gTB" role="3clFbx">
                                        <node concept="3clFbF" id="4qkYgnA2BUQ" role="3cqZAp">
                                          <node concept="1rXfSq" id="4qkYgnA2BUO" role="3clFbG">
                                            <ref role="37wK5l" node="4qkYgnA2ppj" resolve="doUpdateReference" />
                                            <node concept="37vLTw" id="7kWilDBTyjG" role="37wK5m">
                                              <ref role="3cqZAo" node="34P8w751fwl" resolve="selectedOptions" />
                                            </node>
                                            <node concept="37vLTw" id="4qkYgnA2CVw" role="37wK5m">
                                              <ref role="3cqZAo" node="1xRmxf63uFK" resolve="repository" />
                                            </node>
                                            <node concept="2OqwBi" id="1xRmxf63uFY" role="37wK5m">
                                              <node concept="37vLTw" id="1xRmxf63uFZ" role="2Oq$k0">
                                                <ref role="3cqZAo" node="1xRmxf63uEB" resolve="containingNode" />
                                              </node>
                                              <node concept="liA8E" id="1xRmxf63uG0" role="2OqNvi">
                                                <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                                <node concept="37vLTw" id="1xRmxf63uG1" role="37wK5m">
                                                  <ref role="3cqZAo" node="1xRmxf63uFK" resolve="repository" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="37vLTw" id="4qkYgnA2GkD" role="37wK5m">
                                              <ref role="3cqZAo" node="1xRmxf63uEJ" resolve="role" />
                                            </node>
                                            <node concept="37vLTw" id="4qkYgnA2DQM" role="37wK5m">
                                              <ref role="3cqZAo" node="1xRmxf63uFI" resolve="finalState" />
                                            </node>
                                            <node concept="37vLTw" id="4qkYgnA2FQA" role="37wK5m">
                                              <ref role="3cqZAo" node="1xRmxf63uEP" resolve="resolveInfo" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3SKdUt" id="6UJmIgi5zM5" role="3cqZAp">
                                          <node concept="1PaTwC" id="6UJmIgi5zM6" role="1aUNEU">
                                            <node concept="3oM_SD" id="6UJmIgi5_qD" role="1PaTwD">
                                              <property role="3oM_SC" value="here," />
                                            </node>
                                            <node concept="3oM_SD" id="6UJmIgi5$mp" role="1PaTwD">
                                              <property role="3oM_SC" value="containingNode" />
                                            </node>
                                            <node concept="3oM_SD" id="6UJmIgi5ARU" role="1PaTwD">
                                              <property role="3oM_SC" value="might" />
                                            </node>
                                            <node concept="3oM_SD" id="6UJmIgi5B9s" role="1PaTwD">
                                              <property role="3oM_SC" value="not" />
                                            </node>
                                            <node concept="3oM_SD" id="6UJmIgi5BqZ" role="1PaTwD">
                                              <property role="3oM_SC" value="get" />
                                            </node>
                                            <node concept="3oM_SD" id="6UJmIgi5BG8" role="1PaTwD">
                                              <property role="3oM_SC" value="resolved" />
                                            </node>
                                            <node concept="3oM_SD" id="6UJmIgi5BYz" role="1PaTwD">
                                              <property role="3oM_SC" value="(e.g." />
                                            </node>
                                            <node concept="3oM_SD" id="6UJmIgi5ChH" role="1PaTwD">
                                              <property role="3oM_SC" value="if" />
                                            </node>
                                            <node concept="3oM_SD" id="6UJmIgi5CyT" role="1PaTwD">
                                              <property role="3oM_SC" value="it's" />
                                            </node>
                                            <node concept="3oM_SD" id="6UJmIgi5DUK" role="1PaTwD">
                                              <property role="3oM_SC" value="pointer" />
                                            </node>
                                            <node concept="3oM_SD" id="6UJmIgi5GCz" role="1PaTwD">
                                              <property role="3oM_SC" value="to" />
                                            </node>
                                            <node concept="3oM_SD" id="6UJmIgi5GV7" role="1PaTwD">
                                              <property role="3oM_SC" value="StaticMethodCall" />
                                            </node>
                                            <node concept="3oM_SD" id="6UJmIgi5FWm" role="1PaTwD">
                                              <property role="3oM_SC" value="node" />
                                            </node>
                                            <node concept="3oM_SD" id="6UJmIgi5Hcr" role="1PaTwD">
                                              <property role="3oM_SC" value="that" />
                                            </node>
                                            <node concept="3oM_SD" id="6UJmIgi5FWX" role="1PaTwD">
                                              <property role="3oM_SC" value="has" />
                                            </node>
                                            <node concept="3oM_SD" id="6UJmIgi5GeC" role="1PaTwD">
                                              <property role="3oM_SC" value="been" />
                                            </node>
                                            <node concept="3oM_SD" id="6UJmIgi5GkJ" role="1PaTwD">
                                              <property role="3oM_SC" value="replaced" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbJ" id="4qkYgnA3ZML" role="3cqZAp">
                                          <node concept="3clFbS" id="4qkYgnA3ZMM" role="3clFbx">
                                            <node concept="3clFbF" id="4qkYgnA3v7V" role="3cqZAp">
                                              <node concept="1rXfSq" id="4qkYgnA3v7T" role="3clFbG">
                                                <ref role="37wK5l" node="6UJmIgi2WdY" resolve="doUpdateModelImport" />
                                                <node concept="37vLTw" id="7WC60Zcj9dV" role="37wK5m">
                                                  <ref role="3cqZAo" node="34P8w751fwl" resolve="selectedOptions" />
                                                </node>
                                                <node concept="37vLTw" id="4qkYgnA3yH8" role="37wK5m">
                                                  <ref role="3cqZAo" node="1xRmxf63uFK" resolve="repository" />
                                                </node>
                                                <node concept="37vLTw" id="6UJmIgi5uWX" role="37wK5m">
                                                  <ref role="3cqZAo" node="6UJmIgi57sX" resolve="containingModel" />
                                                </node>
                                                <node concept="37vLTw" id="4qkYgnA3yHd" role="37wK5m">
                                                  <ref role="3cqZAo" node="1xRmxf63uFI" resolve="finalState" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="2OqwBi" id="4qkYgnA3ZN0" role="3clFbw">
                                            <node concept="37vLTw" id="4qkYgnA3ZN1" role="2Oq$k0">
                                              <ref role="3cqZAo" node="34P8w751fwl" resolve="selectedOptions" />
                                            </node>
                                            <node concept="3JPx81" id="4qkYgnA3ZN2" role="2OqNvi">
                                              <node concept="10M0yZ" id="4qkYgnA3ZN3" role="25WWJ7">
                                                <ref role="1PxDUh" node="2aY$7DLGcwD" resolve="UpdateModelImports" />
                                                <ref role="3cqZAo" node="5z_gLGen9si" resolve="OPTION" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="1rXfSq" id="4qkYgnA3h26" role="3clFbw">
                                        <ref role="37wK5l" node="4qkYgnA2Vij" resolve="shouldUpdateReference" />
                                        <node concept="37vLTw" id="7kWilDBUtJt" role="37wK5m">
                                          <ref role="3cqZAo" node="34P8w751fwl" resolve="selectedOptions" />
                                        </node>
                                        <node concept="37vLTw" id="4qkYgnA3NUt" role="37wK5m">
                                          <ref role="3cqZAo" node="1xRmxf63uFK" resolve="repository" />
                                        </node>
                                        <node concept="2OqwBi" id="4qkYgnA3kuS" role="37wK5m">
                                          <node concept="37vLTw" id="4qkYgnA3kuT" role="2Oq$k0">
                                            <ref role="3cqZAo" node="1xRmxf63uEB" resolve="containingNode" />
                                          </node>
                                          <node concept="liA8E" id="4qkYgnA3kuU" role="2OqNvi">
                                            <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                            <node concept="37vLTw" id="4qkYgnA3kuV" role="37wK5m">
                                              <ref role="3cqZAo" node="1xRmxf63uFK" resolve="repository" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="37vLTw" id="4qkYgnA4g5k" role="37wK5m">
                                          <ref role="3cqZAo" node="1xRmxf63uEJ" resolve="role" />
                                        </node>
                                        <node concept="37vLTw" id="4qkYgnA3h28" role="37wK5m">
                                          <ref role="3cqZAo" node="5dWUYKKEmUT" resolve="movingNode" />
                                        </node>
                                        <node concept="37vLTw" id="4qkYgnA3h29" role="37wK5m">
                                          <ref role="3cqZAo" node="1xRmxf63uFM" resolve="refactoringSession" />
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
                      <node concept="3uibUv" id="7Sw_42UfkX3" role="2Ghqu4">
                        <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
                        <node concept="16syzq" id="7Sw_42UfkX4" role="11_B2D">
                          <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="7Sw_42UfqpE" role="2Ghqu4">
                        <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
                        <node concept="16syzq" id="7Sw_42UfqpF" role="11_B2D">
                          <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2DQHtcLD2KH" role="3cqZAp">
              <node concept="3clFbS" id="2DQHtcLD2KJ" role="3clFbx">
                <node concept="3clFbF" id="2DQHtcLD9iK" role="3cqZAp">
                  <node concept="37vLTI" id="2DQHtcLDadf" role="3clFbG">
                    <node concept="2ShNRf" id="2DQHtcLDcpG" role="37vLTx">
                      <node concept="Tc6Ow" id="2DQHtcLDbGa" role="2ShVmc">
                        <node concept="3uibUv" id="2DQHtcLDbGb" role="HW$YZ">
                          <ref role="3uigEE" to="5nvm:3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
                          <node concept="3uibUv" id="7Sw_42UfumF" role="11_B2D">
                            <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
                            <node concept="16syzq" id="7Sw_42UfumG" role="11_B2D">
                              <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
                            </node>
                          </node>
                          <node concept="3uibUv" id="7Sw_42Ufwj0" role="11_B2D">
                            <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
                            <node concept="16syzq" id="7Sw_42Ufwj1" role="11_B2D">
                              <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3EllGN" id="2DQHtcLD9iM" role="37vLTJ">
                      <node concept="2OqwBi" id="2DQHtcLD9iN" role="3ElVtu">
                        <node concept="2GrUjf" id="2DQHtcLD9iO" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="2DQHtcLCxmE" resolve="ref" />
                        </node>
                        <node concept="liA8E" id="2DQHtcLD9iP" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SReference.getTargetNodeReference()" resolve="getTargetNodeReference" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2DQHtcLD9iQ" role="3ElQJh">
                        <ref role="3cqZAo" node="2DQHtcLCqDJ" resolve="result" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="2DQHtcLD7kz" role="3clFbw">
                <node concept="10Nm6u" id="2DQHtcLD7vE" role="3uHU7w" />
                <node concept="3EllGN" id="2DQHtcLCKnu" role="3uHU7B">
                  <node concept="2OqwBi" id="2DQHtcLCNQE" role="3ElVtu">
                    <node concept="2GrUjf" id="2DQHtcLCLti" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="2DQHtcLCxmE" resolve="ref" />
                    </node>
                    <node concept="liA8E" id="2DQHtcLCP_c" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SReference.getTargetNodeReference()" resolve="getTargetNodeReference" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2DQHtcLCJ7h" role="3ElQJh">
                    <ref role="3cqZAo" node="2DQHtcLCqDJ" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2DQHtcLCJ7m" role="3cqZAp">
              <node concept="2OqwBi" id="2DQHtcLDfK_" role="3clFbG">
                <node concept="3EllGN" id="2DQHtcLDdIt" role="2Oq$k0">
                  <node concept="2OqwBi" id="2DQHtcLDdIu" role="3ElVtu">
                    <node concept="2GrUjf" id="2DQHtcLDdIv" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="2DQHtcLCxmE" resolve="ref" />
                    </node>
                    <node concept="liA8E" id="2DQHtcLDdIw" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SReference.getTargetNodeReference()" resolve="getTargetNodeReference" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2DQHtcLDdIx" role="3ElQJh">
                    <ref role="3cqZAo" node="2DQHtcLCqDJ" resolve="result" />
                  </node>
                </node>
                <node concept="TSZUe" id="2DQHtcLDi7_" role="2OqNvi">
                  <node concept="37vLTw" id="2DQHtcLDiAI" role="25WWJ7">
                    <ref role="3cqZAo" node="1xRmxf63uFf" resolve="change" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="2DQHtcLCzvF" role="2GsD0m">
            <ref role="3cqZAo" node="2SJclOrQIuF" resolve="usages" />
          </node>
        </node>
        <node concept="3cpWs6" id="2vOGnLEhTPM" role="3cqZAp">
          <node concept="2OqwBi" id="1xRmxf64lBC" role="3cqZAk">
            <node concept="2OqwBi" id="1xRmxf63$Gj" role="2Oq$k0">
              <node concept="37vLTw" id="1xRmxf63zHZ" role="2Oq$k0">
                <ref role="3cqZAo" node="34P8w751fwf" resolve="initialStates" />
              </node>
              <node concept="3$u5V9" id="1xRmxf63At5" role="2OqNvi">
                <node concept="1bVj0M" id="1xRmxf63At7" role="23t8la">
                  <node concept="3clFbS" id="1xRmxf63At8" role="1bW5cS">
                    <node concept="3cpWs8" id="7ram9htWxvF" role="3cqZAp">
                      <node concept="3cpWsn" id="7ram9htWxvG" role="3cpWs9">
                        <property role="TrG5h" value="list" />
                        <node concept="_YKpA" id="7ram9htWnEp" role="1tU5fm">
                          <node concept="3uibUv" id="7ram9htWnEK" role="_ZDj9">
                            <ref role="3uigEE" to="5nvm:3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
                            <node concept="3uibUv" id="7ram9htWnEL" role="11_B2D">
                              <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
                              <node concept="16syzq" id="7ram9htWnEM" role="11_B2D">
                                <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
                              </node>
                            </node>
                            <node concept="3uibUv" id="7ram9htWnEN" role="11_B2D">
                              <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
                              <node concept="16syzq" id="7ram9htWnEO" role="11_B2D">
                                <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3EllGN" id="7ram9htWxvH" role="33vP2m">
                          <node concept="2OqwBi" id="7ram9htWxvI" role="3ElVtu">
                            <node concept="2OqwBi" id="7ram9htWxvJ" role="2Oq$k0">
                              <node concept="37vLTw" id="7ram9htWxvK" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0Xqg" resolve="initialState" />
                              </node>
                              <node concept="2sxana" id="7ram9htWxvL" role="2OqNvi">
                                <ref role="2sxfKC" node="7Sw_42UcHYz" resolve="baseData" />
                              </node>
                            </node>
                            <node concept="2sxana" id="7ram9htWxvM" role="2OqNvi">
                              <ref role="2sxfKC" node="2SJclOrOXQ7" resolve="reference" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="7ram9htWxvN" role="3ElQJh">
                            <ref role="3cqZAo" node="2DQHtcLCqDJ" resolve="result" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2DQHtcLDmri" role="3cqZAp">
                      <node concept="3K4zz7" id="7ram9htX11C" role="3clFbG">
                        <node concept="1rXfSq" id="7ram9hu4ByB" role="3K4E3e">
                          <ref role="37wK5l" node="7ram9hu3lhb" resolve="emptyList" />
                        </node>
                        <node concept="37vLTw" id="7ram9htXwfv" role="3K4GZi">
                          <ref role="3cqZAo" node="7ram9htWxvG" resolve="list" />
                        </node>
                        <node concept="3clFbC" id="7ram9htWHNT" role="3K4Cdx">
                          <node concept="10Nm6u" id="7ram9htWSet" role="3uHU7w" />
                          <node concept="37vLTw" id="7ram9htWxvO" role="3uHU7B">
                            <ref role="3cqZAo" node="7ram9htWxvG" resolve="list" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0Xqg" role="1bW2Oz">
                    <property role="TrG5h" value="initialState" />
                    <node concept="2jxLKc" id="5W7E4fV0Xqh" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="1xRmxf64nxP" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="34P8w751fxI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="PXLOXm_a16" role="jymVt" />
    <node concept="3clFb_" id="4qkYgnA2Vij" role="jymVt">
      <property role="TrG5h" value="shouldUpdateReference" />
      <node concept="37vLTG" id="7kWilDBTQSE" role="3clF46">
        <property role="TrG5h" value="selectedOptions" />
        <property role="3TUv4t" value="true" />
        <node concept="_YKpA" id="7kWilDBTQSF" role="1tU5fm">
          <node concept="3uibUv" id="7kWilDBTQSG" role="_ZDj9">
            <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="4qkYgnA3tcr" role="1B3o_S" />
      <node concept="10P_77" id="4qkYgnA2WWm" role="3clF45" />
      <node concept="37vLTG" id="4qkYgnA3J41" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="4qkYgnA3J42" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="4qkYgnA2Vir" role="3clF46">
        <property role="TrG5h" value="containingNode" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4qkYgnA2Vis" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="4qkYgnA4afF" role="3clF46">
        <property role="TrG5h" value="role" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4qkYgnA4afG" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
      </node>
      <node concept="37vLTG" id="4qkYgnA2Viv" role="3clF46">
        <property role="TrG5h" value="movingNode" />
        <node concept="3uibUv" id="4qkYgnA2Viw" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="4qkYgnA2Vi_" role="3clF46">
        <property role="TrG5h" value="refactoringSession" />
        <node concept="3uibUv" id="4qkYgnA2ViA" role="1tU5fm">
          <ref role="3uigEE" to="5nvm:3KqYwoBJ0xf" resolve="RefactoringSession" />
        </node>
      </node>
      <node concept="3clFbS" id="4qkYgnA2ViB" role="3clF47">
        <node concept="3cpWs8" id="4qkYgnA2ViC" role="3cqZAp">
          <node concept="3cpWsn" id="4qkYgnA2ViD" role="3cpWs9">
            <property role="TrG5h" value="copyMap" />
            <node concept="3uibUv" id="4qkYgnA2ViE" role="1tU5fm">
              <ref role="3uigEE" to="5nvm:5Y9QCNBZLBG" resolve="NodeCopyTracker" />
            </node>
            <node concept="2YIFZM" id="5z6kDU70d5P" role="33vP2m">
              <ref role="37wK5l" to="5nvm:5Y9QCNBZQm$" resolve="get" />
              <ref role="1Pybhc" to="5nvm:5Y9QCNBZLBG" resolve="NodeCopyTracker" />
              <node concept="37vLTw" id="4qkYgnA2ViG" role="37wK5m">
                <ref role="3cqZAo" node="4qkYgnA2Vi_" resolve="refactoringSession" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4qkYgnA2ViH" role="3cqZAp">
          <node concept="3clFbS" id="4qkYgnA2ViI" role="3clFbx">
            <node concept="3cpWs6" id="4qkYgnA2ViJ" role="3cqZAp">
              <node concept="3clFbT" id="4qkYgnA2Wgd" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4qkYgnA2ViL" role="3clFbw">
            <node concept="37vLTw" id="4qkYgnA2ViM" role="3uHU7B">
              <ref role="3cqZAo" node="4qkYgnA2Vir" resolve="containingNode" />
            </node>
            <node concept="10Nm6u" id="4qkYgnA2ViN" role="3uHU7w" />
          </node>
        </node>
        <node concept="3SKdUt" id="4qkYgnA3tbH" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXotlT" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXotlU" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="ATZLwXotlV" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="ATZLwXotlW" role="1PaTwD">
              <property role="3oM_SC" value="update" />
            </node>
            <node concept="3oM_SD" id="ATZLwXotlX" role="1PaTwD">
              <property role="3oM_SC" value="reference" />
            </node>
            <node concept="3oM_SD" id="ATZLwXotlY" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="ATZLwXotlZ" role="1PaTwD">
              <property role="3oM_SC" value="old" />
            </node>
            <node concept="3oM_SD" id="ATZLwXotm0" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
            <node concept="3oM_SD" id="ATZLwXotm1" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXotm2" role="1PaTwD">
              <property role="3oM_SC" value="other" />
            </node>
            <node concept="3oM_SD" id="ATZLwXotm3" role="1PaTwD">
              <property role="3oM_SC" value="old" />
            </node>
            <node concept="3oM_SD" id="ATZLwXotm4" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4qkYgnA3fiD" role="3cqZAp">
          <node concept="3clFbS" id="4qkYgnA3fiF" role="3clFbx">
            <node concept="3cpWs6" id="4qkYgnA3fW1" role="3cqZAp">
              <node concept="3clFbT" id="4qkYgnA3g6X" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="4qkYgnA2ViP" role="3clFbw">
            <node concept="1Wc70l" id="4qkYgnA2ViQ" role="3uHU7B">
              <node concept="2OqwBi" id="4qkYgnA2ViR" role="3uHU7B">
                <node concept="2OqwBi" id="4qkYgnA2ViS" role="2Oq$k0">
                  <node concept="37vLTw" id="4qkYgnA2ViT" role="2Oq$k0">
                    <ref role="3cqZAo" node="4qkYgnA2ViD" resolve="copyMap" />
                  </node>
                  <node concept="liA8E" id="4qkYgnA2ViU" role="2OqNvi">
                    <ref role="37wK5l" to="5nvm:44mXFSxhV$4" resolve="getCopyMap" />
                  </node>
                </node>
                <node concept="2Nt0df" id="4qkYgnA2ViV" role="2OqNvi">
                  <node concept="37vLTw" id="4qkYgnA2ViW" role="38cxEo">
                    <ref role="3cqZAo" node="4qkYgnA2Vir" resolve="containingNode" />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="4qkYgnA2ViX" role="3uHU7w">
                <node concept="10Nm6u" id="4qkYgnA2ViY" role="3uHU7w" />
                <node concept="37vLTw" id="4qkYgnA2ViZ" role="3uHU7B">
                  <ref role="3cqZAo" node="4qkYgnA2Viv" resolve="movingNode" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="4qkYgnA2Vj0" role="3uHU7w">
              <node concept="10Nm6u" id="4qkYgnA2Vj1" role="3uHU7w" />
              <node concept="2OqwBi" id="4qkYgnA2Vj2" role="3uHU7B">
                <node concept="37vLTw" id="4qkYgnA2Vj3" role="2Oq$k0">
                  <ref role="3cqZAo" node="4qkYgnA2Viv" resolve="movingNode" />
                </node>
                <node concept="liA8E" id="4qkYgnA2Vj4" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="29V4NRgiDuz" role="3cqZAp">
          <node concept="3clFbT" id="29V4NRgiI7H" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4qkYgnA2ppj" role="jymVt">
      <property role="TrG5h" value="doUpdateReference" />
      <node concept="37vLTG" id="7kWilDBTCa8" role="3clF46">
        <property role="TrG5h" value="selectedOptions" />
        <property role="3TUv4t" value="true" />
        <node concept="_YKpA" id="7kWilDBTCa9" role="1tU5fm">
          <node concept="3uibUv" id="7kWilDBTCaa" role="_ZDj9">
            <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="4qkYgnA3tge" role="1B3o_S" />
      <node concept="3cqZAl" id="4qkYgnA2NoV" role="3clF45" />
      <node concept="37vLTG" id="4qkYgnA2poQ" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="4qkYgnA2poR" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="4qkYgnA2poS" role="3clF46">
        <property role="TrG5h" value="containingNode" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4qkYgnA2pUg" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="4qkYgnA2pp0" role="3clF46">
        <property role="TrG5h" value="role" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4qkYgnA2pp1" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
      </node>
      <node concept="37vLTG" id="4qkYgnA2poU" role="3clF46">
        <property role="TrG5h" value="newTarget" />
        <node concept="3uibUv" id="7Sw_42UnQal" role="1tU5fm">
          <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
          <node concept="16syzq" id="7Sw_42UnSZC" role="11_B2D">
            <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4qkYgnA2poY" role="3clF46">
        <property role="TrG5h" value="resolveInfo" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="4qkYgnA2poZ" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4qkYgnA2pnv" role="3clF47">
        <node concept="3clFbF" id="4qkYgnA2pob" role="3cqZAp">
          <node concept="2OqwBi" id="4qkYgnA2poc" role="3clFbG">
            <node concept="37vLTw" id="4qkYgnA2qE$" role="2Oq$k0">
              <ref role="3cqZAo" node="4qkYgnA2poS" resolve="containingNode" />
            </node>
            <node concept="liA8E" id="4qkYgnA2poe" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.setReference(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.ResolveInfo)" resolve="setReference" />
              <node concept="37vLTw" id="4qkYgnA2ppe" role="37wK5m">
                <ref role="3cqZAo" node="4qkYgnA2pp0" resolve="role" />
              </node>
              <node concept="2YIFZM" id="3I9YdaTskzC" role="37wK5m">
                <ref role="37wK5l" to="mhbf:~ResolveInfo.of(org.jetbrains.mps.openapi.model.SNodeReference,java.lang.String)" resolve="of" />
                <ref role="1Pybhc" to="mhbf:~ResolveInfo" resolve="ResolveInfo" />
                <node concept="2OqwBi" id="3I9YdaTskzF" role="37wK5m">
                  <node concept="2OqwBi" id="3I9YdaTskzG" role="2Oq$k0">
                    <node concept="37vLTw" id="3I9YdaTskzH" role="2Oq$k0">
                      <ref role="3cqZAo" node="4qkYgnA2poU" resolve="newTarget" />
                    </node>
                    <node concept="2sxana" id="3I9YdaTskzI" role="2OqNvi">
                      <ref role="2sxfKC" node="7Sw_42UcHYz" resolve="baseData" />
                    </node>
                  </node>
                  <node concept="2sxana" id="3I9YdaTskzJ" role="2OqNvi">
                    <ref role="2sxfKC" node="2SJclOrOXQ7" resolve="reference" />
                  </node>
                </node>
                <node concept="37vLTw" id="3I9YdaTskzK" role="37wK5m">
                  <ref role="3cqZAo" node="4qkYgnA2poY" resolve="resolveInfo" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6UJmIgi2WdY" role="jymVt">
      <property role="TrG5h" value="doUpdateModelImport" />
      <node concept="37vLTG" id="6UJmIgi2WdZ" role="3clF46">
        <property role="TrG5h" value="selectedOptions" />
        <property role="3TUv4t" value="false" />
        <node concept="_YKpA" id="6UJmIgi2We0" role="1tU5fm">
          <node concept="3uibUv" id="6UJmIgi2We1" role="_ZDj9">
            <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="6UJmIgi2We2" role="1B3o_S" />
      <node concept="3cqZAl" id="6UJmIgi2We3" role="3clF45" />
      <node concept="37vLTG" id="6UJmIgi2We4" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="6UJmIgi2We5" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="6UJmIgi2We6" role="3clF46">
        <property role="TrG5h" value="model2update" />
        <node concept="3uibUv" id="6UJmIgi3eoJ" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="6UJmIgi2Wea" role="3clF46">
        <property role="TrG5h" value="newTarget" />
        <node concept="3uibUv" id="6UJmIgi2Web" role="1tU5fm">
          <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
          <node concept="16syzq" id="6UJmIgi2Wec" role="11_B2D">
            <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6UJmIgi2Wed" role="3clF47">
        <node concept="3clFbF" id="6UJmIgi2Wee" role="3cqZAp">
          <node concept="2YIFZM" id="6UJmIgi2Wef" role="3clFbG">
            <ref role="1Pybhc" node="2aY$7DLGcwD" resolve="UpdateModelImports" />
            <ref role="37wK5l" node="5z_gLGemzFB" resolve="addModelImport" />
            <node concept="37vLTw" id="6UJmIgi2Weh" role="37wK5m">
              <ref role="3cqZAo" node="6UJmIgi2We6" resolve="model2update" />
            </node>
            <node concept="2OqwBi" id="6UJmIgi2Wej" role="37wK5m">
              <node concept="2OqwBi" id="6UJmIgi2Wek" role="2Oq$k0">
                <node concept="2OqwBi" id="6UJmIgi2Wel" role="2Oq$k0">
                  <node concept="2OqwBi" id="6UJmIgi2Wem" role="2Oq$k0">
                    <node concept="37vLTw" id="6UJmIgi2Wen" role="2Oq$k0">
                      <ref role="3cqZAo" node="6UJmIgi2Wea" resolve="newTarget" />
                    </node>
                    <node concept="2sxana" id="6UJmIgi2Weo" role="2OqNvi">
                      <ref role="2sxfKC" node="7Sw_42UcHYz" resolve="baseData" />
                    </node>
                  </node>
                  <node concept="2sxana" id="6UJmIgi2Wep" role="2OqNvi">
                    <ref role="2sxfKC" node="2SJclOrOXQ7" resolve="reference" />
                  </node>
                </node>
                <node concept="liA8E" id="6UJmIgi2Weq" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNodeReference.getModelReference()" resolve="getModelReference" />
                </node>
              </node>
              <node concept="liA8E" id="6UJmIgi2Wer" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModelReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                <node concept="37vLTw" id="6UJmIgi2Wes" role="37wK5m">
                  <ref role="3cqZAo" node="6UJmIgi2We4" resolve="repository" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="2SJclOrOQfW" role="1B3o_S" />
    <node concept="3uibUv" id="2SJclOrOQgA" role="EKbjA">
      <ref role="3uigEE" to="5nvm:3KqYwoBJhhy" resolve="MoveNodeRefactoringParticipant" />
      <node concept="3uibUv" id="7Sw_42UcY9c" role="11_B2D">
        <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
        <node concept="16syzq" id="7Sw_42UcY9d" role="11_B2D">
          <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
        </node>
      </node>
      <node concept="3uibUv" id="7Sw_42Ud0rR" role="11_B2D">
        <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
        <node concept="16syzq" id="7Sw_42Ud0rS" role="11_B2D">
          <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="5DMHUkptoJS" role="EKbjA">
      <ref role="3uigEE" to="5nvm:5DMHUkptmAc" resolve="RefactoringParticipant.PersistentRefactoringParticipant" />
      <node concept="3uibUv" id="7Sw_42Ud2Eu" role="11_B2D">
        <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
        <node concept="16syzq" id="7Sw_42Ud2Ev" role="11_B2D">
          <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
        </node>
      </node>
      <node concept="3uibUv" id="7Sw_42Ud4Qj" role="11_B2D">
        <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
        <node concept="16syzq" id="7Sw_42Ud4Qk" role="11_B2D">
          <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
        </node>
      </node>
      <node concept="3Tqbb2" id="5z_gLGew_rc" role="11_B2D" />
      <node concept="3Tqbb2" id="5z_gLGewAuT" role="11_B2D" />
    </node>
    <node concept="3uibUv" id="4GNx7T6ZVa6" role="1zkMxy">
      <ref role="3uigEE" to="5nvm:4GNx7T6VEiw" resolve="RefactoringParticipantBase" />
      <node concept="3uibUv" id="7Sw_42UbfUp" role="11_B2D">
        <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
        <node concept="16syzq" id="7Sw_42UbmAs" role="11_B2D">
          <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
        </node>
      </node>
      <node concept="3uibUv" id="7Sw_42UcVU0" role="11_B2D">
        <ref role="3uigEE" node="7Sw_42UcHYy" resolve="UpdateReferencesParticipantBase.NodeData" />
        <node concept="16syzq" id="7Sw_42UcVU1" role="11_B2D">
          <ref role="16sUi3" node="7Sw_42Ubjzc" resolve="T" />
        </node>
      </node>
      <node concept="3Tqbb2" id="4GNx7T6ZX4z" role="11_B2D" />
      <node concept="3Tqbb2" id="4GNx7T6ZX4$" role="11_B2D" />
    </node>
    <node concept="16euLQ" id="7Sw_42Ubjzc" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
  </node>
  <node concept="312cEu" id="2aY$7DLGcwD">
    <property role="TrG5h" value="UpdateModelImports" />
    <property role="1sVAO0" value="false" />
    <node concept="2tJIrI" id="2aY$7DLNCc8" role="jymVt" />
    <node concept="1lYeZD" id="2aY$7DLNCXg" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="UpdateModelImports_extension" />
      <ref role="1lYe$Y" to="4ugc:3KqYwoBJieG" resolve="MoveNodeParticipantEP" />
      <node concept="3Tm1VV" id="2aY$7DLNCXh" role="1B3o_S" />
      <node concept="q3mfD" id="2aY$7DLNCXi" role="jymVt">
        <property role="TrG5h" value="get" />
        <ref role="2VtyIY" to="90d:3zLwYDe0svr" resolve="get" />
        <node concept="3Tm1VV" id="2aY$7DLNCXj" role="1B3o_S" />
        <node concept="3clFbS" id="2aY$7DLNCXk" role="3clF47">
          <node concept="3clFbF" id="2aY$7DLNCXl" role="3cqZAp">
            <node concept="2ShNRf" id="2aY$7DLNCXm" role="3clFbG">
              <node concept="HV5vD" id="2aY$7DLNEsc" role="2ShVmc">
                <ref role="HV5vE" node="2aY$7DLGcwD" resolve="UpdateModelImports" />
              </node>
            </node>
          </node>
        </node>
        <node concept="q3mfm" id="2aY$7DLNCXn" role="3clF45">
          <ref role="q3mfh" to="90d:3zLwYDe0sv$" />
          <ref role="1QQUv3" node="2aY$7DLNCXi" resolve="get" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2aY$7DLNC$B" role="jymVt" />
    <node concept="Wx3nA" id="5z_gLGen9si" role="jymVt">
      <property role="TrG5h" value="OPTION" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2aY$7DLLX9b" role="1tU5fm">
        <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
      </node>
      <node concept="3Tm1VV" id="5z_gLGen8qW" role="1B3o_S" />
      <node concept="2ShNRf" id="2aY$7DLLX9c" role="33vP2m">
        <node concept="1pGfFk" id="2aY$7DLLX9d" role="2ShVmc">
          <ref role="37wK5l" to="5nvm:37Il31hWKPu" resolve="RefactoringParticipant.Option" />
          <node concept="Xl_RD" id="2aY$7DLLX9e" role="37wK5m">
            <property role="Xl_RC" value="moveNode.options.updateModelImports" />
          </node>
          <node concept="Xl_RD" id="2aY$7DLLX9f" role="37wK5m">
            <property role="Xl_RC" value="Update model imports" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2aY$7DLLQYh" role="jymVt">
      <property role="TrG5h" value="myDataCollector" />
      <node concept="3Tm6S6" id="2aY$7DLLQYi" role="1B3o_S" />
      <node concept="3uibUv" id="2aY$7DLLQYj" role="1tU5fm">
        <ref role="3uigEE" to="5nvm:3KqYwoBIIOx" resolve="MoveNodeRefactoringParticipant.MoveNodeRefactoringDataCollector" />
        <node concept="3uibUv" id="2aY$7DLLRfu" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
        <node concept="3uibUv" id="2aY$7DLLRfv" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="2ShNRf" id="2aY$7DLLQYk" role="33vP2m">
        <node concept="YeOm9" id="2aY$7DLLQYl" role="2ShVmc">
          <node concept="1Y3b0j" id="2aY$7DLLQYm" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" to="5nvm:3KqYwoBIIOx" resolve="MoveNodeRefactoringParticipant.MoveNodeRefactoringDataCollector" />
            <node concept="3Tm1VV" id="2aY$7DLLQYn" role="1B3o_S" />
            <node concept="3clFb_" id="2aY$7DLLQYo" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="beforeMove" />
              <node concept="3uibUv" id="2aY$7DLLSjn" role="3clF45">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="3Tm1VV" id="2aY$7DLLQYp" role="1B3o_S" />
              <node concept="37vLTG" id="2aY$7DLLQYq" role="3clF46">
                <property role="TrG5h" value="nodeToMove" />
                <node concept="3Tqbb2" id="2aY$7DLLQYr" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="2aY$7DLLQYs" role="3clF47">
                <node concept="3clFbF" id="2aY$7DLS__E" role="3cqZAp">
                  <node concept="2OqwBi" id="3XR0QgXNyLn" role="3clFbG">
                    <node concept="37vLTw" id="3XR0QgXNyLm" role="2Oq$k0">
                      <ref role="3cqZAo" node="2aY$7DLLQYq" resolve="nodeToMove" />
                    </node>
                    <node concept="iZEcu" id="3XR0QgXNyLo" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFb_" id="2aY$7DLLQYt" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="afterMove" />
              <node concept="3uibUv" id="2aY$7DLLU3b" role="3clF45">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="3Tm1VV" id="2aY$7DLLQYu" role="1B3o_S" />
              <node concept="37vLTG" id="2aY$7DLLQYv" role="3clF46">
                <property role="TrG5h" value="movedNode" />
                <node concept="3Tqbb2" id="2aY$7DLLQYw" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="2aY$7DLLQYx" role="3clF47">
                <node concept="3clFbF" id="2aY$7DLS__J" role="3cqZAp">
                  <node concept="2OqwBi" id="3XR0QgXNyLu" role="3clFbG">
                    <node concept="37vLTw" id="3XR0QgXNyLt" role="2Oq$k0">
                      <ref role="3cqZAo" node="2aY$7DLLQYv" resolve="movedNode" />
                    </node>
                    <node concept="iZEcu" id="3XR0QgXNyLv" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="2aY$7DLLR$3" role="2Ghqu4">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
            <node concept="3uibUv" id="2aY$7DLLR$4" role="2Ghqu4">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2aY$7DLLQEz" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDataCollector" />
      <node concept="3uibUv" id="2aY$7DLLQE$" role="3clF45">
        <ref role="3uigEE" to="5nvm:3KqYwoBIIOx" resolve="MoveNodeRefactoringParticipant.MoveNodeRefactoringDataCollector" />
        <node concept="3uibUv" id="2aY$7DLLQED" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
        <node concept="3uibUv" id="2aY$7DLLQEE" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2aY$7DLLQEB" role="1B3o_S" />
      <node concept="3clFbS" id="2aY$7DLLQEF" role="3clF47">
        <node concept="3clFbF" id="2aY$7DLLWFD" role="3cqZAp">
          <node concept="37vLTw" id="2aY$7DLLWFC" role="3clFbG">
            <ref role="3cqZAo" node="2aY$7DLLQYh" resolve="myDataCollector" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2aY$7DLLQEI" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getAvailableOptions" />
      <node concept="37vLTG" id="2aY$7DLLQEJ" role="3clF46">
        <property role="TrG5h" value="initialState" />
        <node concept="3uibUv" id="2aY$7DLLQEW" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="37vLTG" id="2aY$7DLLQEL" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="2aY$7DLLQEM" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2aY$7DLLQEO" role="1B3o_S" />
      <node concept="_YKpA" id="2aY$7DLLQEP" role="3clF45">
        <node concept="3uibUv" id="2aY$7DLLQEQ" role="_ZDj9">
          <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
        </node>
      </node>
      <node concept="3clFbS" id="2aY$7DLLQEX" role="3clF47">
        <node concept="3cpWs6" id="2aY$7DLS__K" role="3cqZAp">
          <node concept="2ShNRf" id="2aY$7DLS__L" role="3cqZAk">
            <node concept="Tc6Ow" id="2aY$7DLS__M" role="2ShVmc">
              <node concept="3uibUv" id="2aY$7DLS__N" role="HW$YZ">
                <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
              </node>
              <node concept="37vLTw" id="5z_gLGendye" role="HW$Y0">
                <ref role="3cqZAo" node="5z_gLGen9si" resolve="OPTION" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2aY$7DLLQEY" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getChanges" />
      <node concept="37vLTG" id="2aY$7DLLQEZ" role="3clF46">
        <property role="TrG5h" value="initialState" />
        <node concept="3uibUv" id="2aY$7DLLQFj" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="37vLTG" id="2aY$7DLLQF1" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="2aY$7DLLQF2" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="2aY$7DLLQF3" role="3clF46">
        <property role="TrG5h" value="selectedOptions" />
        <node concept="_YKpA" id="2aY$7DLLQF4" role="1tU5fm">
          <node concept="3uibUv" id="2aY$7DLLQF5" role="_ZDj9">
            <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2aY$7DLLQF6" role="3clF46">
        <property role="TrG5h" value="searchScope" />
        <node concept="3uibUv" id="2aY$7DLLQF7" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SearchScope" resolve="SearchScope" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2aY$7DLLQF8" role="1B3o_S" />
      <node concept="_YKpA" id="2aY$7DLLQFa" role="3clF45">
        <node concept="3uibUv" id="2aY$7DLLQFb" role="_ZDj9">
          <ref role="3uigEE" to="5nvm:3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
          <node concept="3uibUv" id="2aY$7DLLQFk" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
          <node concept="3uibUv" id="2aY$7DLLQFl" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2aY$7DLLQFm" role="3clF47">
        <node concept="3clFbJ" id="2aY$7DLS__P" role="3cqZAp">
          <node concept="3clFbS" id="2aY$7DLS__Q" role="3clFbx">
            <node concept="3cpWs6" id="2aY$7DLS__R" role="3cqZAp">
              <node concept="2ShNRf" id="2aY$7DLS__S" role="3cqZAk">
                <node concept="Tc6Ow" id="2aY$7DLS__T" role="2ShVmc">
                  <node concept="3uibUv" id="2aY$7DLS__U" role="HW$YZ">
                    <ref role="3uigEE" to="5nvm:3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
                    <node concept="3uibUv" id="2aY$7DLMSkV" role="11_B2D">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                    </node>
                    <node concept="3uibUv" id="2aY$7DLMT6o" role="11_B2D">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="2aY$7DLS__V" role="3clFbw">
            <node concept="2OqwBi" id="2aY$7DLS__W" role="3fr31v">
              <node concept="37vLTw" id="2aY$7DLS__X" role="2Oq$k0">
                <ref role="3cqZAo" node="2aY$7DLLQF3" resolve="selectedOptions" />
              </node>
              <node concept="3JPx81" id="2aY$7DLS__Y" role="2OqNvi">
                <node concept="37vLTw" id="5z_gLGendS0" role="25WWJ7">
                  <ref role="3cqZAo" node="5z_gLGen9si" resolve="OPTION" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2aY$7DLMpbQ" role="3cqZAp">
          <node concept="2ShNRf" id="2aY$7DLMpbO" role="3clFbG">
            <node concept="Tc6Ow" id="2aY$7DLMqu6" role="2ShVmc">
              <node concept="3uibUv" id="2aY$7DLMrqH" role="HW$YZ">
                <ref role="3uigEE" to="5nvm:3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
                <node concept="3uibUv" id="2aY$7DLMswJ" role="11_B2D">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
                <node concept="3uibUv" id="2aY$7DLMt8p" role="11_B2D">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
              </node>
              <node concept="2ShNRf" id="2aY$7DLMcYr" role="HW$Y0">
                <node concept="YeOm9" id="2aY$7DLS_A0" role="2ShVmc">
                  <node concept="1Y3b0j" id="2aY$7DLS_A1" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <ref role="1Y3XeK" to="5nvm:7tV5ZLw1f3b" resolve="MoveNodeRefactoringParticipant.ChangeBase" />
                    <node concept="3clFb_" id="2aY$7DLS_A2" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="getParticipant" />
                      <node concept="3uibUv" id="2aY$7DLS_A3" role="3clF45">
                        <ref role="3uigEE" to="5nvm:3KqYwoBJhhy" resolve="MoveNodeRefactoringParticipant" />
                        <node concept="3uibUv" id="2aY$7DLMgq4" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                        </node>
                        <node concept="3uibUv" id="2aY$7DLMh8I" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="2aY$7DLS_A4" role="1B3o_S" />
                      <node concept="3clFbS" id="2aY$7DLS_A5" role="3clF47">
                        <node concept="3clFbF" id="2aY$7DLS_A6" role="3cqZAp">
                          <node concept="Xjq3P" id="2aY$7DLS_A7" role="3clFbG">
                            <ref role="1HBi2w" node="2aY$7DLGcwD" resolve="UpdateModelImports" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="2aY$7DLS_A8" role="1B3o_S" />
                    <node concept="3clFb_" id="2aY$7DLS_A9" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="getSearchResults" />
                      <node concept="3uibUv" id="2aY$7DLS_Aa" role="3clF45">
                        <ref role="3uigEE" to="g4jo:J2bOg02HbG" resolve="SearchResults" />
                      </node>
                      <node concept="3Tm1VV" id="2aY$7DLS_Ab" role="1B3o_S" />
                      <node concept="3clFbS" id="2aY$7DLS_Ac" role="3clF47">
                        <node concept="3clFbF" id="2aY$7DLMl2_" role="3cqZAp">
                          <node concept="2ShNRf" id="2aY$7DLMl2z" role="3clFbG">
                            <node concept="1pGfFk" id="2aY$7DLMonr" role="2ShVmc">
                              <ref role="37wK5l" to="g4jo:J2bOg02HbW" resolve="SearchResults" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFb_" id="2aY$7DLS_Aj" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="confirm" />
                      <node concept="3cqZAl" id="2aY$7DLS_Ak" role="3clF45" />
                      <node concept="3Tm1VV" id="2aY$7DLS_Al" role="1B3o_S" />
                      <node concept="37vLTG" id="2aY$7DLS_Am" role="3clF46">
                        <property role="TrG5h" value="finalState" />
                        <node concept="3uibUv" id="2aY$7DLMi2w" role="1tU5fm">
                          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2aY$7DLS_An" role="3clF46">
                        <property role="TrG5h" value="repository" />
                        <node concept="3uibUv" id="2aY$7DLS_Ao" role="1tU5fm">
                          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2aY$7DLS_Ap" role="3clF46">
                        <property role="TrG5h" value="refactoringSession" />
                        <node concept="3uibUv" id="2aY$7DLS_Aq" role="1tU5fm">
                          <ref role="3uigEE" to="5nvm:3KqYwoBJ0xf" resolve="RefactoringSession" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="2aY$7DLS_Ar" role="3clF47">
                        <node concept="3clFbF" id="2aY$7DLS_As" role="3cqZAp">
                          <node concept="2OqwBi" id="2aY$7DLS_At" role="3clFbG">
                            <node concept="37vLTw" id="2aY$7DLS_Au" role="2Oq$k0">
                              <ref role="3cqZAo" node="2aY$7DLS_Ap" resolve="refactoringSession" />
                            </node>
                            <node concept="liA8E" id="2aY$7DLS_Av" role="2OqNvi">
                              <ref role="37wK5l" to="5nvm:3KqYwoBJ0Rs" resolve="registerChange" />
                              <node concept="1bVj0M" id="2aY$7DLS_Aw" role="37wK5m">
                                <node concept="3clFbS" id="2aY$7DLS_Ax" role="1bW5cS">
                                  <node concept="3cpWs8" id="2aY$7DLMwfx" role="3cqZAp">
                                    <node concept="3cpWsn" id="2aY$7DLMwfy" role="3cpWs9">
                                      <property role="TrG5h" value="node" />
                                      <node concept="3uibUv" id="2aY$7DLMwft" role="1tU5fm">
                                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                      </node>
                                      <node concept="2OqwBi" id="2aY$7DLMwfz" role="33vP2m">
                                        <node concept="37vLTw" id="2aY$7DLMwf$" role="2Oq$k0">
                                          <ref role="3cqZAo" node="2aY$7DLS_Am" resolve="finalState" />
                                        </node>
                                        <node concept="liA8E" id="2aY$7DLMwf_" role="2OqNvi">
                                          <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                          <node concept="37vLTw" id="2aY$7DLMwfA" role="37wK5m">
                                            <ref role="3cqZAo" node="2aY$7DLS_An" resolve="repository" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs8" id="2aY$7DLOwO6" role="3cqZAp">
                                    <node concept="3cpWsn" id="2aY$7DLOwO7" role="3cpWs9">
                                      <property role="TrG5h" value="model" />
                                      <node concept="3uibUv" id="2aY$7DLOwO3" role="1tU5fm">
                                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                      </node>
                                      <node concept="2OqwBi" id="2aY$7DLOwO8" role="33vP2m">
                                        <node concept="37vLTw" id="2aY$7DLOwO9" role="2Oq$k0">
                                          <ref role="3cqZAo" node="2aY$7DLMwfy" resolve="node" />
                                        </node>
                                        <node concept="liA8E" id="2aY$7DLOwOa" role="2OqNvi">
                                          <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="5z_gLGemqBA" role="3cqZAp">
                                    <node concept="1rXfSq" id="5z_gLGemqB$" role="3clFbG">
                                      <ref role="37wK5l" node="5z_gLGemoW2" resolve="addLanguageImport" />
                                      <node concept="37vLTw" id="5z_gLGen5iv" role="37wK5m">
                                        <ref role="3cqZAo" node="2aY$7DLOwO7" resolve="model" />
                                      </node>
                                      <node concept="2OqwBi" id="2aY$7DLMCxz" role="37wK5m">
                                        <node concept="2OqwBi" id="2aY$7DLMCx$" role="2Oq$k0">
                                          <node concept="37vLTw" id="2aY$7DLMCx_" role="2Oq$k0">
                                            <ref role="3cqZAo" node="2aY$7DLMwfy" resolve="node" />
                                          </node>
                                          <node concept="liA8E" id="2aY$7DLMCxA" role="2OqNvi">
                                            <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="2aY$7DLMCxB" role="2OqNvi">
                                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2Gpval" id="2aY$7DLMJrM" role="3cqZAp">
                                    <node concept="2GrKxI" id="2aY$7DLMJrO" role="2Gsz3X">
                                      <property role="TrG5h" value="ref" />
                                    </node>
                                    <node concept="3clFbS" id="2aY$7DLMJrQ" role="2LFqv$">
                                      <node concept="3clFbF" id="5z_gLGen1SQ" role="3cqZAp">
                                        <node concept="1rXfSq" id="5z_gLGen1SO" role="3clFbG">
                                          <ref role="37wK5l" node="5z_gLGemzFB" resolve="addModelImport" />
                                          <node concept="37vLTw" id="5z_gLGen2fV" role="37wK5m">
                                            <ref role="3cqZAo" node="2aY$7DLOwO7" resolve="model" />
                                          </node>
                                          <node concept="2OqwBi" id="5z_gLGen3MA" role="37wK5m">
                                            <node concept="liA8E" id="5z_gLGen40K" role="2OqNvi">
                                              <ref role="37wK5l" to="mhbf:~SModelReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                              <node concept="37vLTw" id="5z_gLGen4fp" role="37wK5m">
                                                <ref role="3cqZAo" node="2aY$7DLS_An" resolve="repository" />
                                              </node>
                                            </node>
                                            <node concept="2OqwBi" id="2aY$7DLO_ua" role="2Oq$k0">
                                              <node concept="2GrUjf" id="2aY$7DLO_ub" role="2Oq$k0">
                                                <ref role="2Gs0qQ" node="2aY$7DLMJrO" resolve="ref" />
                                              </node>
                                              <node concept="liA8E" id="2aY$7DLO_uc" role="2OqNvi">
                                                <ref role="37wK5l" to="mhbf:~SReference.getTargetSModelReference()" resolve="getTargetSModelReference" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="2aY$7DLMKt2" role="2GsD0m">
                                      <node concept="37vLTw" id="2aY$7DLMJZa" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2aY$7DLMwfy" resolve="node" />
                                      </node>
                                      <node concept="liA8E" id="2aY$7DLMKzX" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getReferences()" resolve="getReferences" />
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
                    <node concept="3uibUv" id="2aY$7DLMeCa" role="2Ghqu4">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                    </node>
                    <node concept="3uibUv" id="2aY$7DLMfsG" role="2Ghqu4">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="5z_gLGemoW2" role="jymVt">
      <property role="TrG5h" value="addLanguageImport" />
      <node concept="3cqZAl" id="5z_gLGemoW4" role="3clF45" />
      <node concept="3Tm1VV" id="5z_gLGemoW5" role="1B3o_S" />
      <node concept="3clFbS" id="5z_gLGemoW6" role="3clF47">
        <node concept="3clFbJ" id="5z_gLGenipr" role="3cqZAp">
          <node concept="3clFbS" id="5z_gLGenips" role="3clFbx">
            <node concept="3cpWs6" id="5z_gLGenipt" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="5z_gLGenipu" role="3clFbw">
            <node concept="2ZW3vV" id="5z_gLGenipv" role="3fr31v">
              <node concept="3uibUv" id="5z_gLGenipw" role="2ZW6by">
                <ref role="3uigEE" to="w1kc:~SModelInternal" resolve="SModelInternal" />
              </node>
              <node concept="37vLTw" id="5z_gLGeniB4" role="2ZW6bz">
                <ref role="3cqZAo" node="5z_gLGemr7P" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2aY$7DLMx_j" role="3cqZAp">
          <node concept="3cpWsn" id="2aY$7DLMx_k" role="3cpWs9">
            <property role="TrG5h" value="modelInternal" />
            <node concept="3uibUv" id="2aY$7DLMy2m" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~SModelInternal" resolve="SModelInternal" />
            </node>
            <node concept="10QFUN" id="2aY$7DLMy5N" role="33vP2m">
              <node concept="37vLTw" id="5z_gLGen5YR" role="10QFUP">
                <ref role="3cqZAo" node="5z_gLGemr7P" resolve="model" />
              </node>
              <node concept="3uibUv" id="2aY$7DLMy5I" role="10QFUM">
                <ref role="3uigEE" to="w1kc:~SModelInternal" resolve="SModelInternal" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2aY$7DLM_AO" role="3cqZAp">
          <node concept="3clFbS" id="2aY$7DLM_AQ" role="3clFbx">
            <node concept="3clFbF" id="2aY$7DLMECg" role="3cqZAp">
              <node concept="2OqwBi" id="2aY$7DLMF5h" role="3clFbG">
                <node concept="37vLTw" id="5z_gLGen67F" role="2Oq$k0">
                  <ref role="3cqZAo" node="2aY$7DLMx_k" resolve="modelInternal" />
                </node>
                <node concept="liA8E" id="2aY$7DLMFdc" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~SModelInternal.addLanguage(org.jetbrains.mps.openapi.language.SLanguage)" resolve="addLanguage" />
                  <node concept="37vLTw" id="5z_gLGemukF" role="37wK5m">
                    <ref role="3cqZAo" node="5z_gLGemsPg" resolve="language" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="2aY$7DLMD4p" role="3clFbw">
            <node concept="2OqwBi" id="2aY$7DLMD4r" role="3fr31v">
              <node concept="2OqwBi" id="2aY$7DLMD4s" role="2Oq$k0">
                <node concept="37vLTw" id="5z_gLGen62K" role="2Oq$k0">
                  <ref role="3cqZAo" node="2aY$7DLMx_k" resolve="modelInternal" />
                </node>
                <node concept="liA8E" id="2aY$7DLMD4u" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~SModelInternal.importedLanguageIds()" resolve="importedLanguageIds" />
                </node>
              </node>
              <node concept="liA8E" id="2aY$7DLMD4v" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Collection.contains(java.lang.Object)" resolve="contains" />
                <node concept="37vLTw" id="5z_gLGemtRW" role="37wK5m">
                  <ref role="3cqZAo" node="5z_gLGemsPg" resolve="language" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5z_gLGemr7P" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="5z_gLGen5Eh" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="5z_gLGemsPg" role="3clF46">
        <property role="TrG5h" value="language" />
        <node concept="3uibUv" id="5z_gLGemtdM" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="5z_gLGemzFB" role="jymVt">
      <property role="TrG5h" value="addModelImport" />
      <node concept="3cqZAl" id="5z_gLGemzFC" role="3clF45" />
      <node concept="3Tm1VV" id="5z_gLGemzFD" role="1B3o_S" />
      <node concept="3clFbS" id="5z_gLGemzFE" role="3clF47">
        <node concept="3clFbJ" id="5z_gLGenfo0" role="3cqZAp">
          <node concept="3clFbS" id="5z_gLGenfo2" role="3clFbx">
            <node concept="3cpWs6" id="5z_gLGengta" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="5z_gLGengbH" role="3clFbw">
            <node concept="2ZW3vV" id="5z_gLGengbJ" role="3fr31v">
              <node concept="3uibUv" id="5z_gLGengbK" role="2ZW6by">
                <ref role="3uigEE" to="w1kc:~SModelInternal" resolve="SModelInternal" />
              </node>
              <node concept="37vLTw" id="5z_gLGenixu" role="2ZW6bz">
                <ref role="3cqZAo" node="5z_gLGemPzl" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5z_gLGengEF" role="3cqZAp">
          <node concept="3clFbS" id="5z_gLGengEG" role="3clFbx">
            <node concept="3cpWs6" id="5z_gLGengEH" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="5z_gLGengEI" role="3clFbw">
            <node concept="2ZW3vV" id="5z_gLGengEJ" role="3fr31v">
              <node concept="3uibUv" id="5iafRE1LGYI" role="2ZW6by">
                <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
              </node>
              <node concept="2OqwBi" id="5z_gLGenhd1" role="2ZW6bz">
                <node concept="37vLTw" id="5z_gLGenhaD" role="2Oq$k0">
                  <ref role="3cqZAo" node="5z_gLGemPzl" resolve="model" />
                </node>
                <node concept="liA8E" id="5z_gLGenhfp" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5z_gLGeniPQ" role="3cqZAp">
          <node concept="3clFbS" id="5z_gLGeniPR" role="3clFbx">
            <node concept="3cpWs6" id="5z_gLGeniPS" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="5z_gLGenjtQ" role="3clFbw">
            <node concept="10Nm6u" id="5z_gLGenjEU" role="3uHU7w" />
            <node concept="37vLTw" id="5z_gLGenjoo" role="3uHU7B">
              <ref role="3cqZAo" node="5z_gLGemzFV" resolve="targetModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5z_gLGenkjT" role="3cqZAp">
          <node concept="3clFbS" id="5z_gLGenkjU" role="3clFbx">
            <node concept="3cpWs6" id="5z_gLGenkjV" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="5z_gLGenleP" role="3clFbw">
            <node concept="10Nm6u" id="5z_gLGenlgy" role="3uHU7w" />
            <node concept="2OqwBi" id="5z_gLGenl0v" role="3uHU7B">
              <node concept="37vLTw" id="5z_gLGenkjY" role="2Oq$k0">
                <ref role="3cqZAo" node="5z_gLGemzFV" resolve="targetModel" />
              </node>
              <node concept="liA8E" id="5z_gLGenle3" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5z_gLGemXD1" role="3cqZAp">
          <node concept="3cpWsn" id="5z_gLGemXD2" role="3cpWs9">
            <property role="TrG5h" value="modelInternal" />
            <node concept="3uibUv" id="5z_gLGemXD3" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~SModelInternal" resolve="SModelInternal" />
            </node>
            <node concept="10QFUN" id="5z_gLGemXD4" role="33vP2m">
              <node concept="37vLTw" id="5z_gLGemXD5" role="10QFUP">
                <ref role="3cqZAo" node="5z_gLGemPzl" resolve="model" />
              </node>
              <node concept="3uibUv" id="5z_gLGemXD6" role="10QFUM">
                <ref role="3uigEE" to="w1kc:~SModelInternal" resolve="SModelInternal" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5z_gLGemZsy" role="3cqZAp">
          <node concept="3cpWsn" id="5z_gLGemZsz" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="5z_gLGemZs$" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
            </node>
            <node concept="10QFUN" id="5z_gLGemZs_" role="33vP2m">
              <node concept="3uibUv" id="5iafRE1LLTD" role="10QFUM">
                <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
              </node>
              <node concept="2OqwBi" id="5z_gLGemZsB" role="10QFUP">
                <node concept="37vLTw" id="5z_gLGemZsC" role="2Oq$k0">
                  <ref role="3cqZAo" node="5z_gLGemPzl" resolve="model" />
                </node>
                <node concept="liA8E" id="5z_gLGemZsD" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5z_gLGem_My" role="3cqZAp">
          <node concept="3cpWsn" id="5z_gLGem_Mz" role="3cpWs9">
            <property role="TrG5h" value="targetModule" />
            <node concept="3uibUv" id="5z_gLGem_M$" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="2OqwBi" id="5z_gLGemBju" role="33vP2m">
              <node concept="37vLTw" id="5z_gLGemAhb" role="2Oq$k0">
                <ref role="3cqZAo" node="5z_gLGemzFV" resolve="targetModel" />
              </node>
              <node concept="liA8E" id="5z_gLGemB_c" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5z_gLGem_MP" role="3cqZAp">
          <node concept="3clFbS" id="5z_gLGem_MQ" role="3clFbx">
            <node concept="3clFbJ" id="5z_gLGem_MR" role="3cqZAp">
              <node concept="3fqX7Q" id="5z_gLGem_MS" role="3clFbw">
                <node concept="2OqwBi" id="5z_gLGem_MT" role="3fr31v">
                  <node concept="2YIFZM" id="4H92mBGZsX$" role="2Oq$k0">
                    <ref role="37wK5l" to="w1kc:~SModelOperations.getImportedModelUIDs(org.jetbrains.mps.openapi.model.SModel)" resolve="getImportedModelUIDs" />
                    <ref role="1Pybhc" to="w1kc:~SModelOperations" resolve="SModelOperations" />
                    <node concept="37vLTw" id="4H92mBGZtg9" role="37wK5m">
                      <ref role="3cqZAo" node="5z_gLGemPzl" resolve="model" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5z_gLGem_MX" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object)" resolve="contains" />
                    <node concept="2OqwBi" id="5z_gLGemRJt" role="37wK5m">
                      <node concept="37vLTw" id="5z_gLGemRnl" role="2Oq$k0">
                        <ref role="3cqZAo" node="5z_gLGemzFV" resolve="targetModel" />
                      </node>
                      <node concept="liA8E" id="5z_gLGemS7X" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5z_gLGem_MZ" role="3clFbx">
                <node concept="3clFbF" id="5z_gLGem_N0" role="3cqZAp">
                  <node concept="2OqwBi" id="5z_gLGem_N1" role="3clFbG">
                    <node concept="37vLTw" id="5z_gLGem_N2" role="2Oq$k0">
                      <ref role="3cqZAo" node="5z_gLGemXD2" resolve="modelInternal" />
                    </node>
                    <node concept="liA8E" id="5z_gLGem_N3" role="2OqNvi">
                      <ref role="37wK5l" to="w1kc:~SModelInternal.addModelImport(org.jetbrains.mps.openapi.model.SModelReference)" resolve="addModelImport" />
                      <node concept="2OqwBi" id="5z_gLGemSD2" role="37wK5m">
                        <node concept="37vLTw" id="5z_gLGemSjD" role="2Oq$k0">
                          <ref role="3cqZAo" node="5z_gLGemzFV" resolve="targetModel" />
                        </node>
                        <node concept="liA8E" id="5z_gLGemSYW" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="5z_gLGemK7T" role="3clFbw">
            <node concept="37vLTw" id="5z_gLGemHqZ" role="3uHU7B">
              <ref role="3cqZAo" node="5z_gLGemzFV" resolve="targetModel" />
            </node>
            <node concept="37vLTw" id="5z_gLGemQXi" role="3uHU7w">
              <ref role="3cqZAo" node="5z_gLGemPzl" resolve="model" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5z_gLGem_Nb" role="3cqZAp">
          <node concept="3clFbS" id="5z_gLGem_Nc" role="3clFbx">
            <node concept="3clFbF" id="5z_gLGem_Nd" role="3cqZAp">
              <node concept="2OqwBi" id="5z_gLGem_Ne" role="3clFbG">
                <node concept="37vLTw" id="5z_gLGen0hK" role="2Oq$k0">
                  <ref role="3cqZAo" node="5z_gLGemZsz" resolve="module" />
                </node>
                <node concept="liA8E" id="5z_gLGem_Ng" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~AbstractModule.addDependency(org.jetbrains.mps.openapi.module.SModuleReference,boolean)" resolve="addDependency" />
                  <node concept="2OqwBi" id="5z_gLGem_Nh" role="37wK5m">
                    <node concept="37vLTw" id="5z_gLGem_Ni" role="2Oq$k0">
                      <ref role="3cqZAo" node="5z_gLGem_Mz" resolve="targetModule" />
                    </node>
                    <node concept="liA8E" id="5z_gLGem_Nj" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SModule.getModuleReference()" resolve="getModuleReference" />
                    </node>
                  </node>
                  <node concept="3clFbT" id="5z_gLGem_Nk" role="37wK5m">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="5z_gLGem_Nl" role="3clFbw">
            <node concept="2OqwBi" id="5z_gLGem_Nm" role="3fr31v">
              <node concept="2OqwBi" id="5z_gLGem_Nn" role="2Oq$k0">
                <node concept="2ShNRf" id="5z_gLGem_No" role="2Oq$k0">
                  <node concept="1pGfFk" id="5z_gLGem_Np" role="2ShVmc">
                    <ref role="37wK5l" to="gp7a:~GlobalModuleDependenciesManager.&lt;init&gt;(org.jetbrains.mps.openapi.module.SModule)" resolve="GlobalModuleDependenciesManager" />
                    <node concept="37vLTw" id="5z_gLGen01F" role="37wK5m">
                      <ref role="3cqZAo" node="5z_gLGemZsz" resolve="module" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5z_gLGem_Nr" role="2OqNvi">
                  <ref role="37wK5l" to="gp7a:~GlobalModuleDependenciesManager.getModules(jetbrains.mps.project.dependency.GlobalModuleDependenciesManager$Deptype)" resolve="getModules" />
                  <node concept="Rm8GO" id="5z_gLGem_Ns" role="37wK5m">
                    <ref role="1Px2BO" to="gp7a:~GlobalModuleDependenciesManager$Deptype" resolve="GlobalModuleDependenciesManager.Deptype" />
                    <ref role="Rm8GQ" to="gp7a:~GlobalModuleDependenciesManager$Deptype.VISIBLE" resolve="VISIBLE" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5z_gLGem_Nt" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Collection.contains(java.lang.Object)" resolve="contains" />
                <node concept="37vLTw" id="5z_gLGem_Nu" role="37wK5m">
                  <ref role="3cqZAo" node="5z_gLGem_Mz" resolve="targetModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5z_gLGemPzl" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="5z_gLGemU63" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="5z_gLGemzFV" role="3clF46">
        <property role="TrG5h" value="targetModel" />
        <node concept="3uibUv" id="5z_gLGem_Hi" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="2aY$7DLGc_E" role="1B3o_S" />
    <node concept="3uibUv" id="2aY$7DLS_Ay" role="EKbjA">
      <ref role="3uigEE" to="5nvm:3KqYwoBJhhy" resolve="MoveNodeRefactoringParticipant" />
      <node concept="3uibUv" id="2aY$7DLLQr4" role="11_B2D">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="3uibUv" id="2aY$7DLLQDX" role="11_B2D">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
    </node>
    <node concept="3uibUv" id="4GNx7T6ZLIE" role="1zkMxy">
      <ref role="3uigEE" to="5nvm:4GNx7T6VEiw" resolve="RefactoringParticipantBase" />
      <node concept="3uibUv" id="4GNx7T6ZNMv" role="11_B2D">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="3uibUv" id="4GNx7T6ZOB1" role="11_B2D">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="3Tqbb2" id="4GNx7T6ZPqo" role="11_B2D" />
      <node concept="3Tqbb2" id="4GNx7T6ZQB4" role="11_B2D" />
    </node>
  </node>
  <node concept="312cEu" id="4B0FDdRJCrR">
    <property role="TrG5h" value="RenameReferencesParticipant" />
    <node concept="2tJIrI" id="4B0FDdRJCrS" role="jymVt" />
    <node concept="1lYeZD" id="4B0FDdRJCrT" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="RenameReferencesParticipant_extension" />
      <ref role="1lYe$Y" to="4ugc:76O06llMw9R" resolve="RenameNodeParticipantEP" />
      <node concept="3Tm1VV" id="4B0FDdRJCrU" role="1B3o_S" />
      <node concept="q3mfD" id="4B0FDdRJCrV" role="jymVt">
        <property role="TrG5h" value="get" />
        <ref role="2VtyIY" to="90d:3zLwYDe0svr" resolve="get" />
        <node concept="3Tm1VV" id="4B0FDdRJCrW" role="1B3o_S" />
        <node concept="3clFbS" id="4B0FDdRJCrX" role="3clF47">
          <node concept="3clFbF" id="4B0FDdRJCrY" role="3cqZAp">
            <node concept="2ShNRf" id="4B0FDdRJCrZ" role="3clFbG">
              <node concept="HV5vD" id="4B0FDdRJCs0" role="2ShVmc">
                <ref role="HV5vE" node="4B0FDdRJCrR" resolve="RenameReferencesParticipant" />
              </node>
            </node>
          </node>
        </node>
        <node concept="q3mfm" id="4B0FDdRJCs1" role="3clF45">
          <ref role="q3mfh" to="90d:3zLwYDe0sv$" />
          <ref role="1QQUv3" node="4B0FDdRJCrV" resolve="get" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4B0FDdRJCs2" role="jymVt" />
    <node concept="Wx3nA" id="4B0FDdRJCsg" role="jymVt">
      <property role="TrG5h" value="OPTION" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4B0FDdRJCsh" role="1tU5fm">
        <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
      </node>
      <node concept="3Tm1VV" id="4B0FDdRJCsi" role="1B3o_S" />
      <node concept="2ShNRf" id="4B0FDdRJCsj" role="33vP2m">
        <node concept="1pGfFk" id="4B0FDdRJCsk" role="2ShVmc">
          <ref role="37wK5l" to="5nvm:37Il31hWKPu" resolve="RefactoringParticipant.Option" />
          <node concept="Xl_RD" id="4B0FDdRJCsl" role="37wK5m">
            <property role="Xl_RC" value="renameNode.options.renameReferences" />
          </node>
          <node concept="Xl_RD" id="4B0FDdRJCsm" role="37wK5m">
            <property role="Xl_RC" value="Update resolveInfo" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4B0FDdRJCsn" role="jymVt">
      <property role="TrG5h" value="myDataCollector" />
      <node concept="3Tm6S6" id="4B0FDdRJCso" role="1B3o_S" />
      <node concept="3uibUv" id="4B0FDdRK68p" role="1tU5fm">
        <ref role="3uigEE" to="5nvm:5z_gLGeqYi9" resolve="RefactoringParticipant.RefactoringDataCollector" />
        <node concept="3uibUv" id="4B0FDdRK68q" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
        <node concept="17QB3L" id="4B0FDdRK68r" role="11_B2D" />
        <node concept="3Tqbb2" id="4B0FDdRK68s" role="11_B2D" />
        <node concept="17QB3L" id="4B0FDdRK68t" role="11_B2D" />
      </node>
      <node concept="2ShNRf" id="4B0FDdRK6J6" role="33vP2m">
        <node concept="YeOm9" id="4B0FDdRKj6Q" role="2ShVmc">
          <node concept="1Y3b0j" id="4B0FDdRKj6T" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" to="5nvm:5z_gLGeqYi9" resolve="RefactoringParticipant.RefactoringDataCollector" />
            <node concept="3Tm1VV" id="4B0FDdRKj6U" role="1B3o_S" />
            <node concept="3clFb_" id="4B0FDdRKj6V" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="beforeMove" />
              <node concept="3uibUv" id="4B0FDdRKj7h" role="3clF45">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="3Tm1VV" id="4B0FDdRKj6X" role="1B3o_S" />
              <node concept="37vLTG" id="4B0FDdRKj6Z" role="3clF46">
                <property role="TrG5h" value="nodeToMove" />
                <node concept="3Tqbb2" id="4B0FDdRKj7l" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="4B0FDdRKj71" role="3clF47">
                <node concept="3clFbF" id="4B0FDdRKjBU" role="3cqZAp">
                  <node concept="2OqwBi" id="3XR0QgVCnIJ" role="3clFbG">
                    <node concept="37vLTw" id="3XR0QgVCnII" role="2Oq$k0">
                      <ref role="3cqZAo" node="4B0FDdRKj6Z" resolve="nodeToMove" />
                    </node>
                    <node concept="iZEcu" id="3XR0QgVCnIK" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFb_" id="4B0FDdRKj73" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="afterMove" />
              <node concept="17QB3L" id="4B0FDdRKj7j" role="3clF45" />
              <node concept="3Tm1VV" id="4B0FDdRKj75" role="1B3o_S" />
              <node concept="37vLTG" id="4B0FDdRKj77" role="3clF46">
                <property role="TrG5h" value="name" />
                <node concept="17QB3L" id="4B0FDdRKj7n" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="4B0FDdRKj79" role="3clF47">
                <node concept="3clFbF" id="4B0FDdRKkb6" role="3cqZAp">
                  <node concept="37vLTw" id="4B0FDdRKkb5" role="3clFbG">
                    <ref role="3cqZAo" node="4B0FDdRKj77" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="4B0FDdRKj7g" role="2Ghqu4">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
            <node concept="17QB3L" id="4B0FDdRKj7i" role="2Ghqu4" />
            <node concept="3Tqbb2" id="4B0FDdRKj7k" role="2Ghqu4" />
            <node concept="17QB3L" id="4B0FDdRKj7m" role="2Ghqu4" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4B0FDdRK4Mg" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDataCollector" />
      <node concept="3uibUv" id="4B0FDdRK4Mh" role="3clF45">
        <ref role="3uigEE" to="5nvm:5z_gLGeqYi9" resolve="RefactoringParticipant.RefactoringDataCollector" />
        <node concept="3uibUv" id="4B0FDdRK4Mv" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
        <node concept="17QB3L" id="4B0FDdRK4Mw" role="11_B2D" />
        <node concept="3Tqbb2" id="4B0FDdRK4Mx" role="11_B2D" />
        <node concept="17QB3L" id="4B0FDdRK4My" role="11_B2D" />
      </node>
      <node concept="3Tm1VV" id="4B0FDdRK4Mm" role="1B3o_S" />
      <node concept="3clFbS" id="4B0FDdRK4Mz" role="3clF47">
        <node concept="3clFbF" id="4B0FDdRKkso" role="3cqZAp">
          <node concept="37vLTw" id="4B0FDdRKksn" role="3clFbG">
            <ref role="3cqZAo" node="4B0FDdRJCsn" resolve="myDataCollector" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4B0FDdRKlin" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getAvailableOptions" />
      <node concept="37vLTG" id="4B0FDdRKlio" role="3clF46">
        <property role="TrG5h" value="initialState" />
        <node concept="3uibUv" id="4B0FDdRKliB" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="37vLTG" id="4B0FDdRKliq" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="4B0FDdRKlir" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4B0FDdRKlit" role="1B3o_S" />
      <node concept="_YKpA" id="4B0FDdRKliu" role="3clF45">
        <node concept="3uibUv" id="4B0FDdRKliv" role="_ZDj9">
          <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
        </node>
      </node>
      <node concept="3clFbS" id="4B0FDdRKliC" role="3clF47">
        <node concept="3cpWs6" id="4B0FDdRJCtk" role="3cqZAp">
          <node concept="2ShNRf" id="4B0FDdRJCtl" role="3cqZAk">
            <node concept="Tc6Ow" id="4B0FDdRJCtm" role="2ShVmc">
              <node concept="3uibUv" id="4B0FDdRJCtn" role="HW$YZ">
                <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
              </node>
              <node concept="37vLTw" id="4B0FDdRKnn2" role="HW$Y0">
                <ref role="3cqZAo" node="4B0FDdRJCsg" resolve="OPTION" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4B0FDdRJCto" role="jymVt" />
    <node concept="3clFb_" id="4B0FDdRJCtp" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getChanges" />
      <node concept="37vLTG" id="4B0FDdRKoW1" role="3clF46">
        <property role="TrG5h" value="initialState" />
        <node concept="3uibUv" id="4B0FDdRKoWn" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="37vLTG" id="4B0FDdRKoW3" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="4B0FDdRKoW4" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="4B0FDdRKoW5" role="3clF46">
        <property role="TrG5h" value="selectedOptions" />
        <node concept="_YKpA" id="4B0FDdRKoW6" role="1tU5fm">
          <node concept="3uibUv" id="4B0FDdRKoW7" role="_ZDj9">
            <ref role="3uigEE" to="5nvm:37Il31hWJ4Z" resolve="RefactoringParticipant.Option" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4B0FDdRKoW8" role="3clF46">
        <property role="TrG5h" value="searchScope" />
        <node concept="3uibUv" id="4B0FDdRKoW9" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SearchScope" resolve="SearchScope" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4B0FDdRJCtB" role="1B3o_S" />
      <node concept="3clFbS" id="4B0FDdRJCtC" role="3clF47">
        <node concept="3clFbJ" id="4B0FDdRJCtD" role="3cqZAp">
          <node concept="3clFbS" id="4B0FDdRJCtE" role="3clFbx">
            <node concept="3cpWs6" id="4B0FDdRJCtF" role="3cqZAp">
              <node concept="2ShNRf" id="4B0FDdRKvDn" role="3cqZAk">
                <node concept="Tc6Ow" id="4B0FDdRKvqx" role="2ShVmc">
                  <node concept="3uibUv" id="4B0FDdRKvqy" role="HW$YZ">
                    <ref role="3uigEE" to="5nvm:3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
                    <node concept="3uibUv" id="4B0FDdRKvqz" role="11_B2D">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                    </node>
                    <node concept="17QB3L" id="4B0FDdRKvq$" role="11_B2D" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="4B0FDdRJCtL" role="3clFbw">
            <node concept="2OqwBi" id="4B0FDdRJCtM" role="3fr31v">
              <node concept="37vLTw" id="4B0FDdRKtyF" role="2Oq$k0">
                <ref role="3cqZAo" node="4B0FDdRKoW5" resolve="selectedOptions" />
              </node>
              <node concept="3JPx81" id="4B0FDdRJCtO" role="2OqNvi">
                <node concept="10M0yZ" id="4B0FDdRJCrQ" role="25WWJ7">
                  <ref role="3cqZAo" node="4B0FDdRJCsg" resolve="OPTION" />
                  <ref role="1PxDUh" node="4B0FDdRJCrR" resolve="RenameReferencesParticipant" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="L3pyB" id="4B0FDdRJCtP" role="3cqZAp">
          <node concept="3clFbS" id="4B0FDdRJCtQ" role="L3pyw">
            <node concept="3cpWs8" id="4B0FDdRJCtR" role="3cqZAp">
              <node concept="3cpWsn" id="4B0FDdRJCtS" role="3cpWs9">
                <property role="TrG5h" value="movingNode" />
                <property role="3TUv4t" value="false" />
                <node concept="3uibUv" id="4B0FDdRJCtT" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="2OqwBi" id="4B0FDdRJCtU" role="33vP2m">
                  <node concept="37vLTw" id="4B0FDdRKx2S" role="2Oq$k0">
                    <ref role="3cqZAo" node="4B0FDdRKoW1" resolve="initialState" />
                  </node>
                  <node concept="liA8E" id="4B0FDdRJCtY" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                    <node concept="37vLTw" id="4B0FDdRKyN7" role="37wK5m">
                      <ref role="3cqZAo" node="4B0FDdRKoW3" resolve="repository" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4B0FDdRJCu0" role="3cqZAp">
              <node concept="3cpWsn" id="4B0FDdRJCu1" role="3cpWs9">
                <property role="TrG5h" value="usages" />
                <node concept="3vKaQO" id="4B0FDdRJCu2" role="1tU5fm">
                  <node concept="2z4iKi" id="4B0FDdRJCu3" role="3O5elw" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4B0FDdRJCu4" role="3cqZAp">
              <node concept="3clFbS" id="4B0FDdRJCu5" role="3clFbx">
                <node concept="3clFbF" id="4B0FDdRJCu6" role="3cqZAp">
                  <node concept="37vLTI" id="4B0FDdRJCu7" role="3clFbG">
                    <node concept="24aHub" id="4B0FDdRJCu8" role="37vLTx">
                      <node concept="37vLTw" id="4B0FDdRJCu9" role="24aHuc">
                        <ref role="3cqZAo" node="4B0FDdRJCtS" resolve="movingNode" />
                      </node>
                      <node concept="1dO9Bo" id="4B0FDdRJCua" role="1dOa5D" />
                    </node>
                    <node concept="37vLTw" id="4B0FDdRJCub" role="37vLTJ">
                      <ref role="3cqZAo" node="4B0FDdRJCu1" resolve="usages" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="4B0FDdRJCuc" role="3clFbw">
                <node concept="10Nm6u" id="4B0FDdRJCud" role="3uHU7w" />
                <node concept="37vLTw" id="4B0FDdRJCue" role="3uHU7B">
                  <ref role="3cqZAo" node="4B0FDdRJCtS" resolve="movingNode" />
                </node>
              </node>
              <node concept="9aQIb" id="4B0FDdRJCuf" role="9aQIa">
                <node concept="3clFbS" id="4B0FDdRJCug" role="9aQI4">
                  <node concept="3clFbF" id="4B0FDdRJCuh" role="3cqZAp">
                    <node concept="37vLTI" id="4B0FDdRJCui" role="3clFbG">
                      <node concept="2OqwBi" id="4B0FDdRJCuj" role="37vLTx">
                        <node concept="2OqwBi" id="4B0FDdRJCuk" role="2Oq$k0">
                          <node concept="gHf3$" id="4B0FDdRJCul" role="2Oq$k0">
                            <node concept="1dO9Bo" id="4B0FDdRJCum" role="1dOa5D" />
                          </node>
                          <node concept="3zZkjj" id="4B0FDdRJCun" role="2OqNvi">
                            <node concept="1bVj0M" id="4B0FDdRJCuo" role="23t8la">
                              <node concept="3clFbS" id="4B0FDdRJCup" role="1bW5cS">
                                <node concept="3clFbF" id="4B0FDdRJCuq" role="3cqZAp">
                                  <node concept="17R0WA" id="4B0FDdRJCur" role="3clFbG">
                                    <node concept="37vLTw" id="4B0FDdRKzwv" role="3uHU7w">
                                      <ref role="3cqZAo" node="4B0FDdRKoW1" resolve="initialState" />
                                    </node>
                                    <node concept="2OqwBi" id="4B0FDdRJCuv" role="3uHU7B">
                                      <node concept="37vLTw" id="4B0FDdRJCuw" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5W7E4fV0Xqi" resolve="it" />
                                      </node>
                                      <node concept="liA8E" id="4B0FDdRJCux" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SReference.getTargetNodeReference()" resolve="getTargetNodeReference" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="5W7E4fV0Xqi" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="5W7E4fV0Xqj" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="ANE8D" id="4B0FDdRJCu$" role="2OqNvi" />
                      </node>
                      <node concept="37vLTw" id="4B0FDdRJCu_" role="37vLTJ">
                        <ref role="3cqZAo" node="4B0FDdRJCu1" resolve="usages" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4B0FDdRJCuA" role="3cqZAp">
              <node concept="2OqwBi" id="4B0FDdRJCuB" role="3cqZAk">
                <node concept="2OqwBi" id="4B0FDdRJCuC" role="2Oq$k0">
                  <node concept="37vLTw" id="4B0FDdRJCuD" role="2Oq$k0">
                    <ref role="3cqZAo" node="4B0FDdRJCu1" resolve="usages" />
                  </node>
                  <node concept="3$u5V9" id="4B0FDdRJCuE" role="2OqNvi">
                    <node concept="1bVj0M" id="4B0FDdRJCuF" role="23t8la">
                      <node concept="3clFbS" id="4B0FDdRJCuG" role="1bW5cS">
                        <node concept="3cpWs8" id="4B0FDdRJCuH" role="3cqZAp">
                          <node concept="3cpWsn" id="4B0FDdRJCuI" role="3cpWs9">
                            <property role="TrG5h" value="containingNode" />
                            <property role="3TUv4t" value="true" />
                            <node concept="3uibUv" id="4B0FDdRJCuJ" role="1tU5fm">
                              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                            </node>
                            <node concept="2OqwBi" id="4B0FDdRJCuK" role="33vP2m">
                              <node concept="2OqwBi" id="4B0FDdRJCuL" role="2Oq$k0">
                                <node concept="37vLTw" id="4B0FDdRJCuM" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5W7E4fV0Xqk" resolve="ref" />
                                </node>
                                <node concept="liA8E" id="4B0FDdRJCuN" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SReference.getSourceNode()" resolve="getSourceNode" />
                                </node>
                              </node>
                              <node concept="liA8E" id="4B0FDdRJCuO" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="4B0FDdRJCuP" role="3cqZAp">
                          <node concept="3cpWsn" id="4B0FDdRJCuQ" role="3cpWs9">
                            <property role="TrG5h" value="role" />
                            <property role="3TUv4t" value="true" />
                            <node concept="3uibUv" id="4B0FDdRJCuR" role="1tU5fm">
                              <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
                            </node>
                            <node concept="2OqwBi" id="4B0FDdRJCuS" role="33vP2m">
                              <node concept="37vLTw" id="4B0FDdRJCuT" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0Xqk" resolve="ref" />
                              </node>
                              <node concept="liA8E" id="4B0FDdRJCuU" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SReference.getLink()" resolve="getLink" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="4B0FDdRJCv1" role="3cqZAp">
                          <node concept="3cpWsn" id="4B0FDdRJCv2" role="3cpWs9">
                            <property role="TrG5h" value="searchResults" />
                            <property role="3TUv4t" value="true" />
                            <node concept="3uibUv" id="4B0FDdRJCv3" role="1tU5fm">
                              <ref role="3uigEE" to="g4jo:J2bOg02HbG" resolve="SearchResults" />
                            </node>
                            <node concept="2ShNRf" id="4B0FDdRJCv4" role="33vP2m">
                              <node concept="1pGfFk" id="4B0FDdRJCv5" role="2ShVmc">
                                <ref role="37wK5l" to="g4jo:6hZLf2Yo3pm" resolve="SearchResults" />
                                <node concept="2ShNRf" id="4B0FDdRJCv6" role="37wK5m">
                                  <node concept="2i4dXS" id="4B0FDdRJCv7" role="2ShVmc">
                                    <node concept="3Tqbb2" id="4B0FDdRJCv8" role="HW$YZ" />
                                    <node concept="37vLTw" id="4B0FDdRJCv9" role="HW$Y0">
                                      <ref role="3cqZAo" node="4B0FDdRJCtS" resolve="movingNode" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2ShNRf" id="4B0FDdRJCva" role="37wK5m">
                                  <node concept="Tc6Ow" id="4B0FDdRJCvb" role="2ShVmc">
                                    <node concept="3uibUv" id="4B0FDdRJCvc" role="HW$YZ">
                                      <ref role="3uigEE" to="g4jo:J2bOg02GHT" resolve="SearchResult" />
                                      <node concept="3Tqbb2" id="4B0FDdRJCvd" role="11_B2D" />
                                    </node>
                                    <node concept="2ShNRf" id="4B0FDdRJCve" role="HW$Y0">
                                      <node concept="1pGfFk" id="4B0FDdRJCvf" role="2ShVmc">
                                        <ref role="37wK5l" to="g4jo:J2bOg02GIy" resolve="SearchResult" />
                                        <node concept="2OqwBi" id="4B0FDdRJCvg" role="37wK5m">
                                          <node concept="37vLTw" id="4B0FDdRJCvh" role="2Oq$k0">
                                            <ref role="3cqZAo" node="5W7E4fV0Xqk" resolve="ref" />
                                          </node>
                                          <node concept="liA8E" id="4B0FDdRJCvi" role="2OqNvi">
                                            <ref role="37wK5l" to="mhbf:~SReference.getSourceNode()" resolve="getSourceNode" />
                                          </node>
                                        </node>
                                        <node concept="Xl_RD" id="4B0FDdRJCvj" role="37wK5m">
                                          <property role="Xl_RC" value="reference" />
                                        </node>
                                        <node concept="3uibUv" id="4B0FDdRJCvk" role="1pMfVU">
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
                        <node concept="3cpWs8" id="4B0FDdRJCvl" role="3cqZAp">
                          <node concept="3cpWsn" id="4B0FDdRJCvm" role="3cpWs9">
                            <property role="TrG5h" value="change" />
                            <node concept="3uibUv" id="4B0FDdRJCvn" role="1tU5fm">
                              <ref role="3uigEE" to="5nvm:3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
                              <node concept="3uibUv" id="4B0FDdRK$R6" role="11_B2D">
                                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                              </node>
                              <node concept="17QB3L" id="4B0FDdRKAbS" role="11_B2D" />
                            </node>
                            <node concept="2ShNRf" id="4B0FDdRJCvq" role="33vP2m">
                              <node concept="YeOm9" id="4B0FDdRJCvr" role="2ShVmc">
                                <node concept="1Y3b0j" id="4B0FDdRJCvs" role="YeSDq">
                                  <property role="2bfB8j" value="true" />
                                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                                  <ref role="1Y3XeK" to="5nvm:7tV5ZLw1f3b" resolve="MoveNodeRefactoringParticipant.ChangeBase" />
                                  <node concept="3Tm1VV" id="4B0FDdRJCv_" role="1B3o_S" />
                                  <node concept="3clFb_" id="4B0FDdRJCvA" role="jymVt">
                                    <property role="1EzhhJ" value="false" />
                                    <property role="TrG5h" value="getSearchResults" />
                                    <node concept="3uibUv" id="4B0FDdRJCvB" role="3clF45">
                                      <ref role="3uigEE" to="g4jo:J2bOg02HbG" resolve="SearchResults" />
                                    </node>
                                    <node concept="3Tm1VV" id="4B0FDdRJCvC" role="1B3o_S" />
                                    <node concept="3clFbS" id="4B0FDdRJCvD" role="3clF47">
                                      <node concept="3clFbF" id="4B0FDdRJCvE" role="3cqZAp">
                                        <node concept="37vLTw" id="4B0FDdRJCvF" role="3clFbG">
                                          <ref role="3cqZAo" node="4B0FDdRJCv2" resolve="searchResults" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFb_" id="4B0FDdRJCvM" role="jymVt">
                                    <property role="1EzhhJ" value="false" />
                                    <property role="TrG5h" value="confirm" />
                                    <node concept="3cqZAl" id="4B0FDdRJCvN" role="3clF45" />
                                    <node concept="3Tm1VV" id="4B0FDdRJCvO" role="1B3o_S" />
                                    <node concept="37vLTG" id="4B0FDdRJCvP" role="3clF46">
                                      <property role="TrG5h" value="finalState" />
                                      <node concept="17QB3L" id="4B0FDdRKFo1" role="1tU5fm" />
                                    </node>
                                    <node concept="37vLTG" id="4B0FDdRJCvR" role="3clF46">
                                      <property role="TrG5h" value="repository" />
                                      <node concept="3uibUv" id="4B0FDdRJCvS" role="1tU5fm">
                                        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                                      </node>
                                    </node>
                                    <node concept="37vLTG" id="4B0FDdRJCvT" role="3clF46">
                                      <property role="TrG5h" value="refactoringSession" />
                                      <node concept="3uibUv" id="4B0FDdRJCvU" role="1tU5fm">
                                        <ref role="3uigEE" to="5nvm:3KqYwoBJ0xf" resolve="RefactoringSession" />
                                      </node>
                                    </node>
                                    <node concept="3clFbS" id="4B0FDdRJCvV" role="3clF47">
                                      <node concept="3clFbF" id="4B0FDdRJCvW" role="3cqZAp">
                                        <node concept="2OqwBi" id="4B0FDdRJCvX" role="3clFbG">
                                          <node concept="37vLTw" id="4B0FDdRJCvY" role="2Oq$k0">
                                            <ref role="3cqZAo" node="4B0FDdRJCvT" resolve="refactoringSession" />
                                          </node>
                                          <node concept="liA8E" id="4B0FDdRJCvZ" role="2OqNvi">
                                            <ref role="37wK5l" to="5nvm:3KqYwoBJ0Rs" resolve="registerChange" />
                                            <node concept="1bVj0M" id="4B0FDdRJCw0" role="37wK5m">
                                              <node concept="3clFbS" id="4B0FDdRJCw1" role="1bW5cS">
                                                <node concept="3cpWs8" id="4B0FDdRJCw2" role="3cqZAp">
                                                  <node concept="3cpWsn" id="4B0FDdRJCw3" role="3cpWs9">
                                                    <property role="TrG5h" value="node" />
                                                    <node concept="3uibUv" id="4B0FDdRJCw4" role="1tU5fm">
                                                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                                    </node>
                                                    <node concept="2OqwBi" id="4B0FDdRJCw5" role="33vP2m">
                                                      <node concept="37vLTw" id="4B0FDdRJCw6" role="2Oq$k0">
                                                        <ref role="3cqZAo" node="4B0FDdRJCuI" resolve="containingNode" />
                                                      </node>
                                                      <node concept="liA8E" id="4B0FDdRJCw7" role="2OqNvi">
                                                        <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                                        <node concept="37vLTw" id="4B0FDdRJCw8" role="37wK5m">
                                                          <ref role="3cqZAo" node="4B0FDdRJCvR" resolve="repository" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3clFbJ" id="4B0FDdRJCw9" role="3cqZAp">
                                                  <node concept="3clFbS" id="4B0FDdRJCwa" role="3clFbx">
                                                    <node concept="3cpWs6" id="4B0FDdRJCwb" role="3cqZAp" />
                                                  </node>
                                                  <node concept="3clFbC" id="4B0FDdRJCwn" role="3clFbw">
                                                    <node concept="37vLTw" id="4B0FDdRJCwo" role="3uHU7B">
                                                      <ref role="3cqZAo" node="4B0FDdRJCw3" resolve="node" />
                                                    </node>
                                                    <node concept="10Nm6u" id="4B0FDdRJCwp" role="3uHU7w" />
                                                  </node>
                                                </node>
                                                <node concept="3clFbJ" id="4B0FDdRMFaA" role="3cqZAp">
                                                  <node concept="3clFbS" id="4B0FDdRMFaC" role="3clFbx">
                                                    <node concept="3clFbF" id="4B0FDdRKJio" role="3cqZAp">
                                                      <node concept="2OqwBi" id="4B0FDdRKI_8" role="3clFbG">
                                                        <node concept="1eOMI4" id="4B0FDdRKIlH" role="2Oq$k0">
                                                          <node concept="10QFUN" id="4B0FDdRKIlI" role="1eOMHV">
                                                            <node concept="2OqwBi" id="4B0FDdRKIlJ" role="10QFUP">
                                                              <node concept="37vLTw" id="4B0FDdRKIlK" role="2Oq$k0">
                                                                <ref role="3cqZAo" node="4B0FDdRJCw3" resolve="node" />
                                                              </node>
                                                              <node concept="liA8E" id="4B0FDdRKIlL" role="2OqNvi">
                                                                <ref role="37wK5l" to="mhbf:~SNode.getReference(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReference" />
                                                                <node concept="37vLTw" id="4B0FDdRKIlM" role="37wK5m">
                                                                  <ref role="3cqZAo" node="4B0FDdRJCuQ" resolve="role" />
                                                                </node>
                                                              </node>
                                                            </node>
                                                            <node concept="3uibUv" id="4B0FDdRKIlN" role="10QFUM">
                                                              <ref role="3uigEE" to="w1kc:~SReference" resolve="SReference" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                        <node concept="liA8E" id="4B0FDdRKIJi" role="2OqNvi">
                                                          <ref role="37wK5l" to="w1kc:~SReference.setResolveInfo(java.lang.String)" resolve="setResolveInfo" />
                                                          <node concept="37vLTw" id="4B0FDdRKISX" role="37wK5m">
                                                            <ref role="3cqZAo" node="4B0FDdRJCvP" resolve="finalState" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="3clFbF" id="4B0FDdRMDwU" role="3cqZAp">
                                                      <node concept="2OqwBi" id="4B0FDdRMEB_" role="3clFbG">
                                                        <node concept="0kSF2" id="4B0FDdRMDQe" role="2Oq$k0">
                                                          <node concept="3uibUv" id="4B0FDdRMEzv" role="0kSFW">
                                                            <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
                                                          </node>
                                                          <node concept="2OqwBi" id="4B0FDdRMDA6" role="0kSFX">
                                                            <node concept="37vLTw" id="4B0FDdRMDwS" role="2Oq$k0">
                                                              <ref role="3cqZAo" node="4B0FDdRJCw3" resolve="node" />
                                                            </node>
                                                            <node concept="liA8E" id="4B0FDdRMDFf" role="2OqNvi">
                                                              <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                        <node concept="liA8E" id="4B0FDdRMEHa" role="2OqNvi">
                                                          <ref role="37wK5l" to="mhbf:~EditableSModel.setChanged(boolean)" resolve="setChanged" />
                                                          <node concept="3clFbT" id="4B0FDdRMEQg" role="37wK5m">
                                                            <property role="3clFbU" value="true" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="1Wc70l" id="4B0FDdRMFVG" role="3clFbw">
                                                    <node concept="2ZW3vV" id="4B0FDdRMGwJ" role="3uHU7w">
                                                      <node concept="3uibUv" id="4B0FDdRMGDN" role="2ZW6by">
                                                        <ref role="3uigEE" to="w1kc:~SReference" resolve="SReference" />
                                                      </node>
                                                      <node concept="2OqwBi" id="4B0FDdRMG7n" role="2ZW6bz">
                                                        <node concept="37vLTw" id="4B0FDdRMG1_" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="4B0FDdRJCw3" resolve="node" />
                                                        </node>
                                                        <node concept="liA8E" id="4B0FDdRMGdu" role="2OqNvi">
                                                          <ref role="37wK5l" to="mhbf:~SNode.getReference(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReference" />
                                                          <node concept="37vLTw" id="4B0FDdRMGmD" role="37wK5m">
                                                            <ref role="3cqZAo" node="4B0FDdRJCuQ" resolve="role" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="2ZW3vV" id="4B0FDdRMFGW" role="3uHU7B">
                                                      <node concept="3uibUv" id="4B0FDdRMFOW" role="2ZW6by">
                                                        <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
                                                      </node>
                                                      <node concept="2OqwBi" id="4B0FDdRMFyt" role="2ZW6bz">
                                                        <node concept="37vLTw" id="4B0FDdRMFgx" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="4B0FDdRJCw3" resolve="node" />
                                                        </node>
                                                        <node concept="liA8E" id="4B0FDdRMFC8" role="2OqNvi">
                                                          <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
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
                                  <node concept="3uibUv" id="4B0FDdRKAOd" role="2Ghqu4">
                                    <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                  </node>
                                  <node concept="17QB3L" id="4B0FDdRKAOe" role="2Ghqu4" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="4B0FDdRJCx2" role="3cqZAp">
                          <node concept="37vLTw" id="4B0FDdRJCx3" role="3cqZAk">
                            <ref role="3cqZAo" node="4B0FDdRJCvm" resolve="change" />
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0Xqk" role="1bW2Oz">
                        <property role="TrG5h" value="ref" />
                        <node concept="2jxLKc" id="5W7E4fV0Xql" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="ANE8D" id="4B0FDdRJCx6" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="4B0FDdRKwlk" role="L3pyr">
            <ref role="3cqZAo" node="4B0FDdRKoW8" resolve="searchScope" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="4B0FDdRKpLX" role="3clF45">
        <node concept="3uibUv" id="4B0FDdRKpLY" role="_ZDj9">
          <ref role="3uigEE" to="5nvm:3KqYwoBIKuf" resolve="RefactoringParticipant.Change" />
          <node concept="3uibUv" id="4B0FDdRKpLZ" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
          <node concept="17QB3L" id="4B0FDdRKpM0" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4B0FDdRJCy4" role="1B3o_S" />
    <node concept="3uibUv" id="4B0FDdRJCy5" role="EKbjA">
      <ref role="3uigEE" to="5nvm:76O06llMwcZ" resolve="RenameNodeRefactoringParticipant" />
      <node concept="3uibUv" id="4B0FDdRJI41" role="11_B2D">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="17QB3L" id="4B0FDdRJJHW" role="11_B2D" />
    </node>
    <node concept="3uibUv" id="1OUHNoK4zcy" role="1zkMxy">
      <ref role="3uigEE" to="5nvm:4GNx7T6VEiw" resolve="RefactoringParticipantBase" />
      <node concept="3uibUv" id="1OUHNoK4$IA" role="11_B2D">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="17QB3L" id="1OUHNoK4$IB" role="11_B2D" />
      <node concept="3Tqbb2" id="1OUHNoK4AfM" role="11_B2D" />
      <node concept="17QB3L" id="1OUHNoK4Bn_" role="11_B2D" />
    </node>
  </node>
  <node concept="2wDNrl" id="j$8LF20P4T">
    <property role="TrG5h" value="DocumentationTool" />
    <property role="2XNbzY" value="Documentation" />
    <property role="2bmUCM" value="2aGS$UDXOxV/RIGHT" />
    <node concept="1GtWCo" id="j$8LF20PsC" role="1nVCmq">
      <node concept="10M0yZ" id="j$8LF20QLr" role="1GtWoa">
        <ref role="3cqZAo" to="z2i8:~AllIcons$Toolwindows.Documentation" resolve="Documentation" />
        <ref role="1PxDUh" to="z2i8:~AllIcons$Toolwindows" resolve="AllIcons.Toolwindows" />
      </node>
    </node>
  </node>
</model>

