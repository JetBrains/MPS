<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:115773d0-1d8a-4cef-9476-a19eb511afc3(jetbrains.mps.closures.test.model@tests)">
  <persistence version="9" />
  <languages>
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="2" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="5" />
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="515552c7-fcc0-4ab4-9789-2f3c49344e85" name="jetbrains.mps.baseLanguage.varVariable" version="0" />
  </languages>
  <imports>
    <import index="tp2d" ref="r:00000000-0000-4000-0000-011c89590339(jetbrains.mps.baseLanguage.closures.helper)" />
    <import index="tp2c" ref="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tp2n" ref="r:00000000-0000-4000-0000-011c89590333(jetbrains.mps.baseLanguage.closures.behavior)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="qbve" ref="r:35e808a0-0758-4b03-9053-4675a7ced44c(jetbrains.mps.baseLanguage.closures.runtime)" />
    <import index="q1l7" ref="215c4c45-ba99-49f5-9ab7-4b6901a63cfd/java:jetbrains.mps.generator.template(MPS.Generator/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="1215507671101" name="jetbrains.mps.lang.test.structure.NodeErrorCheckOperation" flags="ng" index="1TM$A" />
      <concept id="1215603922101" name="jetbrains.mps.lang.test.structure.NodeOperationsContainer" flags="ng" index="7CXmI">
        <child id="1215604436604" name="nodeOperations" index="7EUXB" />
      </concept>
      <concept id="1215607067978" name="jetbrains.mps.lang.test.structure.CheckNodeForErrorMessagesOperation" flags="ng" index="7OXhh">
        <property id="3743352646565420194" name="includeSelf" index="GvXf4" />
      </concept>
      <concept id="1211979288880" name="jetbrains.mps.lang.test.structure.AssertMatch" flags="nn" index="JA50E">
        <child id="1211979305365" name="before" index="JA92f" />
        <child id="1211979322383" name="after" index="JAdkl" />
      </concept>
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
        <property id="2616911529524314943" name="accessMode" index="3DII0k" />
        <child id="1216993439383" name="methods" index="1qtyYc" />
        <child id="1217501822150" name="nodesToCheck" index="1SKRRt" />
        <child id="1217501895093" name="testMethods" index="1SL9yI" />
      </concept>
      <concept id="1216989428737" name="jetbrains.mps.lang.test.structure.TestNode" flags="ng" index="1qefOq">
        <child id="1216989461394" name="nodeToCheck" index="1qenE9" />
      </concept>
      <concept id="1210673684636" name="jetbrains.mps.lang.test.structure.TestNodeAnnotation" flags="ng" index="3xLA65" />
      <concept id="1210674524691" name="jetbrains.mps.lang.test.structure.TestNodeReference" flags="nn" index="3xONca">
        <reference id="1210674534086" name="declaration" index="3xOPvv" />
      </concept>
      <concept id="1225978065297" name="jetbrains.mps.lang.test.structure.SimpleNodeTest" flags="ng" index="1LZb2c" />
    </language>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
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
        <child id="2820489544402271667" name="typeParameter" index="HU9BZ" />
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
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
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
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903862077" name="jetbrains.mps.baseLanguage.structure.LowerBoundType" flags="in" index="3qUtgH">
        <child id="1171903869531" name="bound" index="3qUvdb" />
      </concept>
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1046929382682558545" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteralType" flags="ig" index="9cv3F" />
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1235746970280" name="jetbrains.mps.baseLanguage.closures.structure.CompactInvokeFunctionExpression" flags="nn" index="2Sg_IR">
        <child id="1235746996653" name="function" index="2SgG2M" />
      </concept>
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
        <child id="1199542501692" name="parameterType" index="1ajw0F" />
        <child id="1214831762486" name="throwsType" index="3pBpOG" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="4816492477345855364" name="jetbrains.mps.baseLanguage.closures.structure.FunctionMethodDeclaration" flags="ig" index="3_nuBB" />
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e" />
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1216860049633" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextType" flags="in" index="1iwH7U" />
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ngI" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL">
        <child id="1205770614681" name="actualArgument" index="2XxRq1" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="1171981022339" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" flags="nn" index="3vwNmj">
        <child id="1171981057159" name="condition" index="3vwVQn" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1176544042499" name="jetbrains.mps.lang.typesystem.structure.Node_TypeOperation" flags="nn" index="3JvlWi" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1227264722563" name="jetbrains.mps.lang.smodel.structure.EqualsStructurallyExpression" flags="nn" index="2YFouu" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
    <language id="515552c7-fcc0-4ab4-9789-2f3c49344e85" name="jetbrains.mps.baseLanguage.varVariable">
      <concept id="1177714083117" name="jetbrains.mps.baseLanguage.varVariable.structure.VarType" flags="in" index="PeGgZ" />
      <concept id="1236693300889" name="jetbrains.mps.baseLanguage.varVariable.structure.VarVariableDeclaration" flags="ng" index="3KEzu6" />
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="6eup$H2YsqW">
    <property role="TrG5h" value="MockTemplateQueryContext" />
    <node concept="3Tm1VV" id="6eup$H2YsqX" role="1B3o_S" />
    <node concept="3uibUv" id="6eup$H2Ysr2" role="1zkMxy">
      <ref role="3uigEE" to="q1l7:~TemplateQueryContext" resolve="TemplateQueryContext" />
    </node>
    <node concept="312cEg" id="6eup$H2Z1sy" role="jymVt">
      <property role="TrG5h" value="sessionObjects" />
      <node concept="3Tm1VV" id="6eup$H2Z2Io" role="1B3o_S" />
      <node concept="3uibUv" id="6eup$H2Z1sB" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
      </node>
      <node concept="2ShNRf" id="6eup$H2Z1sD" role="33vP2m">
        <node concept="1pGfFk" id="6eup$H2Z2B8" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="6eup$H2YsqY" role="jymVt">
      <node concept="3cqZAl" id="6eup$H2YsqZ" role="3clF45" />
      <node concept="3Tm1VV" id="6eup$H2Ysr0" role="1B3o_S" />
      <node concept="3clFbS" id="6eup$H2Ysr1" role="3clF47">
        <node concept="XkiVB" id="6sZ8RJMNq9D" role="3cqZAp">
          <ref role="37wK5l" to="q1l7:~TemplateQueryContext.&lt;init&gt;()" resolve="TemplateQueryContext" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6eup$H2Ysr3" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="showWarningMessage" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6eup$H2Ysr4" role="1B3o_S" />
      <node concept="3cqZAl" id="6eup$H2Ysr5" role="3clF45" />
      <node concept="37vLTG" id="6eup$H2Ysr6" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="6eup$H2YsBO" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6eup$H2Ysr8" role="3clF46">
        <property role="TrG5h" value="string" />
        <node concept="3uibUv" id="6eup$H2Ysr9" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="6eup$H2Ysra" role="3clF47" />
      <node concept="2AHcQZ" id="6eup$H2Ysrb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6eup$H2Ysrg" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="showErrorMessage" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6eup$H2Ysrh" role="1B3o_S" />
      <node concept="3cqZAl" id="6eup$H2Ysri" role="3clF45" />
      <node concept="37vLTG" id="6eup$H2Ysrj" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="6eup$H2YsBP" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6eup$H2Ysrl" role="3clF46">
        <property role="TrG5h" value="string" />
        <node concept="3uibUv" id="6eup$H2Ysrm" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="6eup$H2Ysrn" role="3clF47" />
      <node concept="2AHcQZ" id="6eup$H2Ysro" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6eup$H2YtCw" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="putSessionObject" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6eup$H2YtCx" role="1B3o_S" />
      <node concept="3uibUv" id="6eup$H2YtCy" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="37vLTG" id="6eup$H2YtCz" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="6eup$H2YtC$" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="6eup$H2YtC_" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="6eup$H2YtCA" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="6eup$H2YtCB" role="3clF47">
        <node concept="3clFbF" id="6eup$H2Z2Ba" role="3cqZAp">
          <node concept="2OqwBi" id="6eup$H2Z2Bo" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuq4A" role="2Oq$k0">
              <ref role="3cqZAo" node="6eup$H2Z1sy" resolve="sessionObjects" />
            </node>
            <node concept="liA8E" id="6eup$H2Z2Bu" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="37vLTw" id="2BHiRxglBz_" role="37wK5m">
                <ref role="3cqZAo" node="6eup$H2YtCz" resolve="key" />
              </node>
              <node concept="37vLTw" id="2BHiRxghelY" role="37wK5m">
                <ref role="3cqZAo" node="6eup$H2YtC_" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6eup$H2Z2Bz" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxghhLm" role="3clFbG">
            <ref role="3cqZAo" node="6eup$H2YtC_" resolve="value" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6eup$H2YtCC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6eup$H2YtCJ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getSessionObject" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6eup$H2YtCK" role="1B3o_S" />
      <node concept="3uibUv" id="6eup$H2YtCL" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="37vLTG" id="6eup$H2YtCM" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="6eup$H2YtCN" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="6eup$H2YtCO" role="3clF47">
        <node concept="3clFbF" id="6eup$H2Z2B_" role="3cqZAp">
          <node concept="2OqwBi" id="6eup$H2Z2BN" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuNWF" role="2Oq$k0">
              <ref role="3cqZAo" node="6eup$H2Z1sy" resolve="sessionObjects" />
            </node>
            <node concept="liA8E" id="6eup$H2Z2BS" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
              <node concept="37vLTw" id="2BHiRxglyI4" role="37wK5m">
                <ref role="3cqZAo" node="6eup$H2YtCM" resolve="key" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6eup$H2YtCP" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6eup$H2Z1gM">
    <property role="TrG5h" value="ClosureLiteraltargetIface" />
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <node concept="2XrIbr" id="6eup$H2Z7lN" role="1qtyYc">
      <property role="TrG5h" value="getContext" />
      <node concept="1iwH7U" id="6eup$H2Z7lR" role="3clF45" />
      <node concept="3clFbS" id="6eup$H2Z7lP" role="3clF47">
        <node concept="3clFbF" id="6eup$H2Z7lW" role="3cqZAp">
          <node concept="10QFUN" id="6eup$H2Z7m0" role="3clFbG">
            <node concept="1eOMI4" id="3t0KN6KgFF1" role="10QFUP">
              <node concept="10QFUN" id="3t0KN6KgFEY" role="1eOMHV">
                <node concept="3uibUv" id="3t0KN6KgFFL" role="10QFUM">
                  <ref role="3uigEE" to="q1l7:~TemplateQueryContext" resolve="TemplateQueryContext" />
                </node>
                <node concept="2ShNRf" id="3t0KN6KgFF3" role="10QFUP">
                  <node concept="1pGfFk" id="3t0KN6KgFF4" role="2ShVmc">
                    <ref role="37wK5l" node="6eup$H2YsqY" resolve="MockTemplateQueryContext" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1iwH7U" id="6eup$H2Z7m3" role="10QFUM" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6eup$H2Z7lQ" role="1B3o_S" />
      <node concept="2AHcQZ" id="6eup$H2Z7lS" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~SuppressWarnings" resolve="SuppressWarnings" />
        <node concept="2B6LJw" id="6eup$H2Z7lT" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~SuppressWarnings.value()" resolve="value" />
          <node concept="Xl_RD" id="6eup$H2Z7lV" role="2B70Vg">
            <property role="Xl_RC" value="unchecked" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="6eup$H2Z9mx" role="1qtyYc">
      <property role="TrG5h" value="assertLiteralTarget" />
      <node concept="37vLTG" id="6eup$H2Z9mB" role="3clF46">
        <property role="TrG5h" value="gencontext" />
        <node concept="1iwH7U" id="6eup$H2Z9mL" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6eup$H2Z9mF" role="3clF46">
        <property role="TrG5h" value="literal" />
        <node concept="3Tqbb2" id="6eup$H2Z9mH" role="1tU5fm">
          <ref role="ehGHo" to="tp2c:htbVj4_" resolve="ClosureLiteral" />
        </node>
      </node>
      <node concept="37vLTG" id="6eup$H2Z9mI" role="3clF46">
        <property role="TrG5h" value="expected" />
        <node concept="3Tqbb2" id="6eup$H2Z9mK" role="1tU5fm">
          <ref role="ehGHo" to="tpee:g7uibYu" resolve="ClassifierType" />
        </node>
      </node>
      <node concept="3cqZAl" id="6eup$H2Z9mA" role="3clF45" />
      <node concept="3clFbS" id="6eup$H2Z9mz" role="3clF47">
        <node concept="3cpWs8" id="6eup$H2Z9mM" role="3cqZAp">
          <node concept="3cpWsn" id="6eup$H2Z9mN" role="3cpWs9">
            <property role="TrG5h" value="target" />
            <node concept="10QFUN" id="6eup$H2Z9mO" role="33vP2m">
              <node concept="3Tqbb2" id="6eup$H2Z9mP" role="10QFUM">
                <ref role="ehGHo" to="tpee:g7uibYu" resolve="ClassifierType" />
              </node>
              <node concept="2OqwBi" id="6eup$H2Z9mQ" role="10QFUP">
                <node concept="Rm8GO" id="6eup$H2Z9mR" role="2Oq$k0">
                  <ref role="1Px2BO" to="tp2d:i3GyzEG" resolve="Values" />
                  <ref role="Rm8GQ" to="tp2d:i3GPEpV" resolve="LITERAL_TARGET" />
                </node>
                <node concept="liA8E" id="6eup$H2Z9mS" role="2OqNvi">
                  <ref role="37wK5l" to="tp2d:i3GyLSt" resolve="get" />
                  <node concept="37vLTw" id="2BHiRxghf7Z" role="37wK5m">
                    <ref role="3cqZAo" node="6eup$H2Z9mB" resolve="gencontext" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxgheDQ" role="37wK5m">
                    <ref role="3cqZAo" node="6eup$H2Z9mF" resolve="literal" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Tqbb2" id="6eup$H2Z9mV" role="1tU5fm">
              <ref role="ehGHo" to="tpee:g7uibYu" resolve="ClassifierType" />
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="6eup$H2Z9Ct" role="3cqZAp">
          <node concept="2YFouu" id="49Ui5iH1RUW" role="3vwVQn">
            <node concept="37vLTw" id="49Ui5iH1RV3" role="3uHU7w">
              <ref role="3cqZAo" node="6eup$H2Z9mN" resolve="target" />
            </node>
            <node concept="37vLTw" id="49Ui5iH1RAd" role="3uHU7B">
              <ref role="3cqZAo" node="6eup$H2Z9mI" resolve="expected" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6eup$H2Z9m_" role="1B3o_S" />
    </node>
    <node concept="1LZb2c" id="6eup$H2Z1hr" role="1SL9yI">
      <property role="TrG5h" value="baz" />
      <node concept="3cqZAl" id="6eup$H2Z1hs" role="3clF45" />
      <node concept="3clFbS" id="6eup$H2Z1ht" role="3clF47">
        <node concept="3cpWs8" id="6eup$H2Z1hy" role="3cqZAp">
          <node concept="3cpWsn" id="6eup$H2Z1hz" role="3cpWs9">
            <property role="TrG5h" value="genContext" />
            <node concept="1iwH7U" id="6eup$H2Z7lG" role="1tU5fm" />
            <node concept="2OqwBi" id="6eup$H2Z9fU" role="33vP2m">
              <node concept="2WthIp" id="6eup$H2Z9fV" role="2Oq$k0" />
              <node concept="2XshWL" id="6eup$H2Z9fW" role="2OqNvi">
                <ref role="2WH_rO" node="6eup$H2Z7lN" resolve="getContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6eup$H2Z2FA" role="3cqZAp">
          <node concept="3cpWsn" id="6eup$H2Z2FB" role="3cpWs9">
            <property role="TrG5h" value="literal" />
            <node concept="3Tqbb2" id="6eup$H2Z2FC" role="1tU5fm">
              <ref role="ehGHo" to="tp2c:htbVj4_" resolve="ClosureLiteral" />
            </node>
            <node concept="3xONca" id="6eup$H2Z2FD" role="33vP2m">
              <ref role="3xOPvv" node="6eup$H2Z9gl" resolve="literal" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6eup$H2Z1hG" role="3cqZAp">
          <node concept="2OqwBi" id="6eup$H2Z1i4" role="3clFbG">
            <node concept="liA8E" id="6eup$H2Z1ia" role="2OqNvi">
              <ref role="37wK5l" to="tp2d:sCteV9zKIz" resolve="setTarget" />
              <node concept="37vLTw" id="3GM_nagT$ue" role="37wK5m">
                <ref role="3cqZAo" node="6eup$H2Z2FB" resolve="literal" />
              </node>
              <node concept="2c44tf" id="6eup$H2Z9gr" role="37wK5m">
                <node concept="3uibUv" id="6eup$H2Z9gw" role="2c44tc">
                  <ref role="3uigEE" node="6eup$H2Z1gV" resolve="FunIface" />
                  <node concept="3qUE_q" id="6eup$H2Z9Hp" role="11_B2D">
                    <node concept="3qUE_q" id="6eup$H2Z9Hw" role="3qUE_r">
                      <node concept="3uibUv" id="6eup$H2Z9Hy" role="3qUE_r">
                        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                      </node>
                    </node>
                  </node>
                  <node concept="3qUtgH" id="6eup$H2Z9NV" role="11_B2D">
                    <node concept="3qUtgH" id="6eup$H2Z9NZ" role="3qUvdb">
                      <node concept="3uibUv" id="5xREo5PJmMa" role="3qUvdb">
                        <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2c44tf" id="4nX4l22wVWU" role="37wK5m">
                <node concept="1ajhzC" id="4nX4l22wW2F" role="2c44tc">
                  <node concept="3uibUv" id="4nX4l22wWfi" role="1ajw0F">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                  <node concept="3uibUv" id="4nX4l22wWhI" role="1ajl9A">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="6eup$H2Z9ph" role="2Oq$k0">
              <node concept="1pGfFk" id="6eup$H2Z9pi" role="2ShVmc">
                <ref role="37wK5l" to="tp2d:sCteV9zKIj" resolve="ClosureLiteralTarget" />
                <node concept="37vLTw" id="3GM_nagTyS2" role="37wK5m">
                  <ref role="3cqZAo" node="6eup$H2Z1hz" resolve="genContext" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6eup$H2Z9pk" role="3cqZAp">
          <node concept="2OqwBi" id="6eup$H2Z9pl" role="3clFbG">
            <node concept="2WthIp" id="6eup$H2Z9pm" role="2Oq$k0" />
            <node concept="2XshWL" id="6eup$H2Z9pn" role="2OqNvi">
              <ref role="2WH_rO" node="6eup$H2Z9mx" resolve="assertLiteralTarget" />
              <node concept="37vLTw" id="3GM_nagTygn" role="2XxRq1">
                <ref role="3cqZAo" node="6eup$H2Z1hz" resolve="genContext" />
              </node>
              <node concept="37vLTw" id="3GM_nagT$Oy" role="2XxRq1">
                <ref role="3cqZAo" node="6eup$H2Z2FB" resolve="literal" />
              </node>
              <node concept="2c44tf" id="6eup$H2Z9pt" role="2XxRq1">
                <node concept="3uibUv" id="6eup$H2Z9pu" role="2c44tc">
                  <ref role="3uigEE" node="6eup$H2Z1gV" resolve="FunIface" />
                  <node concept="3qUE_q" id="x7FLwcb_o7" role="11_B2D">
                    <node concept="3qUE_q" id="x7FLwcb_o8" role="3qUE_r">
                      <node concept="3uibUv" id="x7FLwcb_o9" role="3qUE_r">
                        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                      </node>
                    </node>
                  </node>
                  <node concept="3qUtgH" id="x7FLwcb_oa" role="11_B2D">
                    <node concept="3qUtgH" id="x7FLwcb_ob" role="3qUvdb">
                      <node concept="3uibUv" id="x7FLwcb_oc" role="3qUvdb">
                        <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
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
    <node concept="1LZb2c" id="6eup$H2Z9Nd" role="1SL9yI">
      <property role="TrG5h" value="baz2" />
      <node concept="3cqZAl" id="6eup$H2Z9Ne" role="3clF45" />
      <node concept="3clFbS" id="6eup$H2Z9Nf" role="3clF47">
        <node concept="3cpWs8" id="6eup$H2Z9Ng" role="3cqZAp">
          <node concept="3cpWsn" id="6eup$H2Z9Nh" role="3cpWs9">
            <property role="TrG5h" value="genContext" />
            <node concept="1iwH7U" id="6eup$H2Z9Ni" role="1tU5fm" />
            <node concept="2OqwBi" id="6eup$H2Z9Nj" role="33vP2m">
              <node concept="2WthIp" id="6eup$H2Z9Nk" role="2Oq$k0" />
              <node concept="2XshWL" id="6eup$H2Z9Nl" role="2OqNvi">
                <ref role="2WH_rO" node="6eup$H2Z7lN" resolve="getContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6eup$H2Z9Nm" role="3cqZAp">
          <node concept="3cpWsn" id="6eup$H2Z9Nn" role="3cpWs9">
            <property role="TrG5h" value="literal" />
            <node concept="3Tqbb2" id="6eup$H2Z9No" role="1tU5fm">
              <ref role="ehGHo" to="tp2c:htbVj4_" resolve="ClosureLiteral" />
            </node>
            <node concept="3xONca" id="6eup$H2Z9Np" role="33vP2m">
              <ref role="3xOPvv" node="6eup$H2Z9gl" resolve="literal" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6eup$H2Z9Nq" role="3cqZAp">
          <node concept="2OqwBi" id="6eup$H2Z9Nr" role="3clFbG">
            <node concept="liA8E" id="6eup$H2Z9Ns" role="2OqNvi">
              <ref role="37wK5l" to="tp2d:sCteV9zKIz" resolve="setTarget" />
              <node concept="37vLTw" id="3GM_nagTwg8" role="37wK5m">
                <ref role="3cqZAo" node="6eup$H2Z9Nn" resolve="literal" />
              </node>
              <node concept="2c44tf" id="6eup$H2Z9Nu" role="37wK5m">
                <node concept="3uibUv" id="6eup$H2Z9Nv" role="2c44tc">
                  <ref role="3uigEE" node="6eup$H2Z1gV" resolve="FunIface" />
                  <node concept="3qUE_q" id="6eup$H2Z9Nw" role="11_B2D">
                    <node concept="3uibUv" id="6eup$H2Z9NN" role="3qUE_r">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="5xREo5PJmMc" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                </node>
              </node>
              <node concept="2c44tf" id="4nX4l22wWjT" role="37wK5m">
                <node concept="1ajhzC" id="4nX4l22wWjU" role="2c44tc">
                  <node concept="3uibUv" id="4nX4l22wWjV" role="1ajw0F">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                  <node concept="3uibUv" id="4nX4l22wWjW" role="1ajl9A">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="6eup$H2Z9Nz" role="2Oq$k0">
              <node concept="1pGfFk" id="6eup$H2Z9N$" role="2ShVmc">
                <ref role="37wK5l" to="tp2d:sCteV9zKIj" resolve="ClosureLiteralTarget" />
                <node concept="37vLTw" id="3GM_nagTv2x" role="37wK5m">
                  <ref role="3cqZAo" node="6eup$H2Z9Nh" resolve="genContext" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6eup$H2Z9NA" role="3cqZAp">
          <node concept="2OqwBi" id="6eup$H2Z9NB" role="3clFbG">
            <node concept="2WthIp" id="6eup$H2Z9NC" role="2Oq$k0" />
            <node concept="2XshWL" id="6eup$H2Z9ND" role="2OqNvi">
              <ref role="2WH_rO" node="6eup$H2Z9mx" resolve="assertLiteralTarget" />
              <node concept="37vLTw" id="3GM_nagTsyz" role="2XxRq1">
                <ref role="3cqZAo" node="6eup$H2Z9Nh" resolve="genContext" />
              </node>
              <node concept="37vLTw" id="3GM_nagTyhc" role="2XxRq1">
                <ref role="3cqZAo" node="6eup$H2Z9Nn" resolve="literal" />
              </node>
              <node concept="2c44tf" id="6eup$H2Z9NG" role="2XxRq1">
                <node concept="3uibUv" id="6eup$H2Z9NH" role="2c44tc">
                  <ref role="3uigEE" node="6eup$H2Z1gV" resolve="FunIface" />
                  <node concept="3qUE_q" id="U7sbC7SGxy" role="11_B2D">
                    <node concept="3uibUv" id="U7sbC7SGxz" role="3qUE_r">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="5xREo5PJmMe" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="6eup$H2Z9fY" role="1SKRRt">
      <node concept="312cEu" id="6eup$H2Z9fZ" role="1qenE9">
        <property role="TrG5h" value="Foo" />
        <property role="2bfB8j" value="true" />
        <node concept="3Tm1VV" id="6eup$H2Z9g0" role="1B3o_S" />
        <node concept="3clFbW" id="6eup$H2Z9g1" role="jymVt">
          <node concept="3cqZAl" id="6eup$H2Z9g2" role="3clF45" />
          <node concept="3Tm1VV" id="6eup$H2Z9g3" role="1B3o_S" />
          <node concept="3clFbS" id="6eup$H2Z9g4" role="3clF47" />
        </node>
        <node concept="3clFb_" id="6eup$H2Z9g5" role="jymVt">
          <property role="TrG5h" value="method" />
          <node concept="3Tm1VV" id="6eup$H2Z9g7" role="1B3o_S" />
          <node concept="3clFbS" id="6eup$H2Z9g8" role="3clF47">
            <node concept="3clFbF" id="6eup$H2Z9gg" role="3cqZAp">
              <node concept="1bVj0M" id="6eup$H2Z9gh" role="3clFbG">
                <node concept="37vLTG" id="6eup$H2Z9zh" role="1bW2Oz">
                  <property role="TrG5h" value="f" />
                  <node concept="3uibUv" id="5xREo5PJmM9" role="1tU5fm">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                </node>
                <node concept="3clFbS" id="6eup$H2Z9gi" role="1bW5cS">
                  <node concept="3clFbF" id="6eup$H2Z9gj" role="3cqZAp">
                    <node concept="Xl_RD" id="6eup$H2Z9gk" role="3clFbG">
                      <property role="Xl_RC" value="baz" />
                    </node>
                  </node>
                </node>
                <node concept="3xLA65" id="6eup$H2Z9gl" role="lGtFl">
                  <property role="TrG5h" value="literal" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uibUv" id="6eup$H2Z9g9" role="3clF45">
            <ref role="3uigEE" node="6eup$H2Z1gV" resolve="FunIface" />
            <node concept="3uibUv" id="6eup$H2Z9z$" role="11_B2D">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="3uibUv" id="5xREo5PJmM8" role="11_B2D">
              <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5xREo5PH8yl">
    <property role="TrG5h" value="ClosureLiteraltargetFunType" />
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <node concept="2XrIbr" id="5xREo5PH8ym" role="1qtyYc">
      <property role="TrG5h" value="getContext" />
      <node concept="1iwH7U" id="5xREo5PH8yn" role="3clF45" />
      <node concept="3clFbS" id="5xREo5PH8yo" role="3clF47">
        <node concept="3clFbF" id="5xREo5PH8yp" role="3cqZAp">
          <node concept="10QFUN" id="5xREo5PH8yq" role="3clFbG">
            <node concept="1eOMI4" id="3t0KN6KgFcC" role="10QFUP">
              <node concept="10QFUN" id="3t0KN6KgFc_" role="1eOMHV">
                <node concept="3uibUv" id="3t0KN6KgFdo" role="10QFUM">
                  <ref role="3uigEE" to="q1l7:~TemplateQueryContext" resolve="TemplateQueryContext" />
                </node>
                <node concept="2ShNRf" id="3t0KN6KgFcE" role="10QFUP">
                  <node concept="1pGfFk" id="3t0KN6KgFcF" role="2ShVmc">
                    <ref role="37wK5l" node="6eup$H2YsqY" resolve="MockTemplateQueryContext" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1iwH7U" id="5xREo5PH8yt" role="10QFUM" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5xREo5PH8yu" role="1B3o_S" />
      <node concept="2AHcQZ" id="5xREo5PH8yv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~SuppressWarnings" resolve="SuppressWarnings" />
        <node concept="2B6LJw" id="5xREo5PH8yw" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~SuppressWarnings.value()" resolve="value" />
          <node concept="Xl_RD" id="5xREo5PH8yx" role="2B70Vg">
            <property role="Xl_RC" value="unchecked" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="5xREo5PH8yy" role="1qtyYc">
      <property role="TrG5h" value="assertLiteralTarget" />
      <node concept="37vLTG" id="5xREo5PH8yz" role="3clF46">
        <property role="TrG5h" value="gencontext" />
        <node concept="1iwH7U" id="5xREo5PH8y$" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5xREo5PH8y_" role="3clF46">
        <property role="TrG5h" value="literal" />
        <node concept="3Tqbb2" id="5xREo5PH8yA" role="1tU5fm">
          <ref role="ehGHo" to="tp2c:htbVj4_" resolve="ClosureLiteral" />
        </node>
      </node>
      <node concept="37vLTG" id="5xREo5PH8yB" role="3clF46">
        <property role="TrG5h" value="expected" />
        <node concept="3Tqbb2" id="5xREo5PH8yC" role="1tU5fm">
          <ref role="ehGHo" to="tpee:g7uibYu" resolve="ClassifierType" />
        </node>
      </node>
      <node concept="3cqZAl" id="5xREo5PH8yD" role="3clF45" />
      <node concept="3clFbS" id="5xREo5PH8yE" role="3clF47">
        <node concept="3cpWs8" id="5xREo5PH8yF" role="3cqZAp">
          <node concept="3cpWsn" id="5xREo5PH8yG" role="3cpWs9">
            <property role="TrG5h" value="target" />
            <node concept="10QFUN" id="5xREo5PH8yH" role="33vP2m">
              <node concept="3Tqbb2" id="5xREo5PH8yI" role="10QFUM">
                <ref role="ehGHo" to="tpee:g7uibYu" resolve="ClassifierType" />
              </node>
              <node concept="2OqwBi" id="5xREo5PH8yJ" role="10QFUP">
                <node concept="Rm8GO" id="5xREo5PH8yK" role="2Oq$k0">
                  <ref role="1Px2BO" to="tp2d:i3GyzEG" resolve="Values" />
                  <ref role="Rm8GQ" to="tp2d:i3GPEpV" resolve="LITERAL_TARGET" />
                </node>
                <node concept="liA8E" id="5xREo5PH8yL" role="2OqNvi">
                  <ref role="37wK5l" to="tp2d:i3GyLSt" resolve="get" />
                  <node concept="37vLTw" id="2BHiRxgmkmP" role="37wK5m">
                    <ref role="3cqZAo" node="5xREo5PH8yz" resolve="gencontext" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxgm9xL" role="37wK5m">
                    <ref role="3cqZAo" node="5xREo5PH8y_" resolve="literal" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Tqbb2" id="5xREo5PH8yO" role="1tU5fm">
              <ref role="ehGHo" to="tpee:g7uibYu" resolve="ClassifierType" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="U7sbC7SZ$U" role="3cqZAp" />
        <node concept="3vwNmj" id="5xREo5PH8yW" role="3cqZAp">
          <node concept="2YFouu" id="49Ui5iH1R2a" role="3vwVQn">
            <node concept="37vLTw" id="49Ui5iH1R5B" role="3uHU7w">
              <ref role="3cqZAo" node="5xREo5PH8yG" resolve="target" />
            </node>
            <node concept="37vLTw" id="49Ui5iH1QJ4" role="3uHU7B">
              <ref role="3cqZAo" node="5xREo5PH8yB" resolve="expected" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5xREo5PH8z0" role="1B3o_S" />
    </node>
    <node concept="1LZb2c" id="5xREo5PH8z1" role="1SL9yI">
      <property role="TrG5h" value="throwsOrder" />
      <node concept="3cqZAl" id="5xREo5PH8z2" role="3clF45" />
      <node concept="3clFbS" id="5xREo5PH8z3" role="3clF47">
        <node concept="3cpWs8" id="5xREo5PH8z4" role="3cqZAp">
          <node concept="3cpWsn" id="5xREo5PH8z5" role="3cpWs9">
            <property role="TrG5h" value="genContext" />
            <node concept="1iwH7U" id="5xREo5PH8z6" role="1tU5fm" />
            <node concept="2OqwBi" id="5xREo5PH8z7" role="33vP2m">
              <node concept="2WthIp" id="5xREo5PH8z8" role="2Oq$k0" />
              <node concept="2XshWL" id="5xREo5PH8z9" role="2OqNvi">
                <ref role="2WH_rO" node="5xREo5PH8ym" resolve="getContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5xREo5PH8za" role="3cqZAp">
          <node concept="3cpWsn" id="5xREo5PH8zb" role="3cpWs9">
            <property role="TrG5h" value="literal" />
            <node concept="3Tqbb2" id="5xREo5PH8zc" role="1tU5fm">
              <ref role="ehGHo" to="tp2c:htbVj4_" resolve="ClosureLiteral" />
            </node>
            <node concept="3xONca" id="5xREo5PH8AG" role="33vP2m">
              <ref role="3xOPvv" node="5xREo5PH8$y" resolve="literal" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5xREo5PH8AK" role="3cqZAp">
          <node concept="3cpWsn" id="5xREo5PH8AL" role="3cpWs9">
            <property role="TrG5h" value="funtype" />
            <node concept="3Tqbb2" id="5xREo5PH8AM" role="1tU5fm">
              <ref role="ehGHo" to="tp2c:htajhBZ" resolve="FunctionType" />
            </node>
            <node concept="3xONca" id="5xREo5PH8AN" role="33vP2m">
              <ref role="3xOPvv" node="5xREo5PH8$Y" resolve="funtype" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5xREo5PH8ze" role="3cqZAp">
          <node concept="2OqwBi" id="5xREo5PH8zf" role="3clFbG">
            <node concept="liA8E" id="5xREo5PH8zg" role="2OqNvi">
              <ref role="37wK5l" to="tp2d:sCteV9zKIz" resolve="setTarget" />
              <node concept="37vLTw" id="3GM_nagT$Q2" role="37wK5m">
                <ref role="3cqZAo" node="5xREo5PH8zb" resolve="literal" />
              </node>
              <node concept="2OqwBi" id="5xREo5PH8Bk" role="37wK5m">
                <node concept="37vLTw" id="3GM_nagTzhr" role="2Oq$k0">
                  <ref role="3cqZAo" node="5xREo5PH8AL" resolve="funtype" />
                </node>
                <node concept="3zqWPK" id="70OdufORceD" role="2OqNvi">
                  <ref role="37wK5l" to="tp2n:hTOKQzf" resolve="getDeclarationRuntimeType" />
                </node>
              </node>
              <node concept="2c44tf" id="4nX4l22x0TB" role="37wK5m">
                <node concept="1ajhzC" id="4nX4l22x0Zr" role="2c44tc">
                  <node concept="3cqZAl" id="4nX4l22x11O" role="1ajl9A" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="5xREo5PH8zq" role="2Oq$k0">
              <node concept="1pGfFk" id="5xREo5PH8zr" role="2ShVmc">
                <ref role="37wK5l" to="tp2d:sCteV9zKIj" resolve="ClosureLiteralTarget" />
                <node concept="37vLTw" id="3GM_nagTxM2" role="37wK5m">
                  <ref role="3cqZAo" node="5xREo5PH8z5" resolve="genContext" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5xREo5PH8zt" role="3cqZAp">
          <node concept="2OqwBi" id="5xREo5PH8zu" role="3clFbG">
            <node concept="2WthIp" id="5xREo5PH8zv" role="2Oq$k0" />
            <node concept="2XshWL" id="5xREo5PH8zw" role="2OqNvi">
              <ref role="2WH_rO" node="5xREo5PH8yy" resolve="assertLiteralTarget" />
              <node concept="37vLTw" id="3GM_nagTzTp" role="2XxRq1">
                <ref role="3cqZAo" node="5xREo5PH8z5" resolve="genContext" />
              </node>
              <node concept="37vLTw" id="3GM_nagTBN9" role="2XxRq1">
                <ref role="3cqZAo" node="5xREo5PH8zb" resolve="literal" />
              </node>
              <node concept="2c44tf" id="5xREo5PHgrz" role="2XxRq1">
                <node concept="3uibUv" id="5xREo5PHgrH" role="2c44tc">
                  <ref role="3uigEE" to="qbve:4PjiKAen0bm" resolve="_FunctionTypes._void_P0_E2" />
                  <node concept="3qUE_q" id="U7sbC7T0F7" role="11_B2D">
                    <node concept="3uibUv" id="U7sbC7T0FU" role="3qUE_r">
                      <ref role="3uigEE" to="wyt6:~IllegalAccessException" resolve="IllegalAccessException" />
                    </node>
                  </node>
                  <node concept="3qUE_q" id="U7sbC7T0I6" role="11_B2D">
                    <node concept="3uibUv" id="U7sbC7T0IX" role="3qUE_r">
                      <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="5xREo5PH8$a" role="1SKRRt">
      <node concept="312cEu" id="5xREo5PH8$H" role="1qenE9">
        <property role="TrG5h" value="Bar" />
        <property role="2bfB8j" value="true" />
        <node concept="3Tm1VV" id="5xREo5PH8$I" role="1B3o_S" />
        <node concept="3clFbW" id="5xREo5PH8$J" role="jymVt">
          <node concept="3cqZAl" id="5xREo5PH8$K" role="3clF45" />
          <node concept="3Tm1VV" id="5xREo5PH8$L" role="1B3o_S" />
          <node concept="3clFbS" id="5xREo5PH8$M" role="3clF47">
            <node concept="3cpWs8" id="5xREo5PH8$P" role="3cqZAp">
              <node concept="3cpWsn" id="5xREo5PH8$Q" role="3cpWs9">
                <property role="TrG5h" value="fun" />
                <node concept="1ajhzC" id="5xREo5PH8$R" role="1tU5fm">
                  <node concept="3cqZAl" id="5xREo5PH8$T" role="1ajl9A" />
                  <node concept="3uibUv" id="5xREo5PH8$V" role="3pBpOG">
                    <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
                  </node>
                  <node concept="3uibUv" id="5xREo5PJmf6" role="3pBpOG">
                    <ref role="3uigEE" to="wyt6:~IllegalAccessException" resolve="IllegalAccessException" />
                  </node>
                  <node concept="3xLA65" id="5xREo5PH8$Y" role="lGtFl">
                    <property role="TrG5h" value="funtype" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="5xREo5PH8$m" role="1SKRRt">
      <node concept="312cEu" id="5xREo5PH8$n" role="1qenE9">
        <property role="TrG5h" value="Baz" />
        <property role="2bfB8j" value="true" />
        <node concept="3Tm1VV" id="5xREo5PH8$A" role="1B3o_S" />
        <node concept="3clFbW" id="5xREo5PH8$B" role="jymVt">
          <node concept="3cqZAl" id="5xREo5PH8$C" role="3clF45" />
          <node concept="3Tm1VV" id="5xREo5PH8$D" role="1B3o_S" />
          <node concept="3clFbS" id="5xREo5PH8$E" role="3clF47" />
        </node>
        <node concept="3clFb_" id="5xREo5PH8$o" role="jymVt">
          <property role="TrG5h" value="method" />
          <node concept="3Tm1VV" id="5xREo5PH8$p" role="1B3o_S" />
          <node concept="3clFbS" id="5xREo5PH8$q" role="3clF47">
            <node concept="3clFbF" id="5xREo5PH8$r" role="3cqZAp">
              <node concept="2OqwBi" id="5xREo5PH8AA" role="3clFbG">
                <node concept="1bVj0M" id="5xREo5PH8$s" role="2Oq$k0">
                  <node concept="3clFbS" id="5xREo5PH8$v" role="1bW5cS">
                    <node concept="3clFbJ" id="hFv3WNK" role="3cqZAp">
                      <node concept="3clFbC" id="1FVb89NuKk2" role="3clFbw">
                        <node concept="3cmrfG" id="1FVb89NuKk5" role="3uHU7w">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="3cmrfG" id="1FVb89NuKk1" role="3uHU7B">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="hFv3WNM" role="3clFbx">
                        <node concept="YS8fn" id="hFv3XM0" role="3cqZAp">
                          <node concept="2ShNRf" id="hFv3XYz" role="YScLw">
                            <node concept="1pGfFk" id="3ZoGc$9_BSh" role="2ShVmc">
                              <ref role="37wK5l" to="wyt6:~InterruptedException.&lt;init&gt;()" resolve="InterruptedException" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="9aQIb" id="hFv3Z2b" role="9aQIa">
                        <node concept="3clFbS" id="hFv3Z2c" role="9aQI4">
                          <node concept="YS8fn" id="hFv3Zwm" role="3cqZAp">
                            <node concept="2ShNRf" id="hFv3ZEU" role="YScLw">
                              <node concept="1pGfFk" id="3ZoGc$9_BSi" role="2ShVmc">
                                <ref role="37wK5l" to="wyt6:~IllegalAccessException.&lt;init&gt;()" resolve="IllegalAccessException" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3xLA65" id="5xREo5PH8$y" role="lGtFl">
                    <property role="TrG5h" value="literal" />
                  </node>
                </node>
                <node concept="1Bd96e" id="5xREo5PH8AF" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3cqZAl" id="5xREo5PH8_4" role="3clF45" />
          <node concept="3uibUv" id="U7sbC7SU9T" role="Sfmx6">
            <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
          </node>
          <node concept="3uibUv" id="U7sbC7SUF3" role="Sfmx6">
            <ref role="3uigEE" to="wyt6:~IllegalAccessException" resolve="IllegalAccessException" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6kENuFGSCUR">
    <property role="TrG5h" value="Generics" />
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <node concept="1qefOq" id="6kENuFGSDne" role="1SKRRt">
      <node concept="312cEu" id="6kENuFGSDng" role="1qenE9">
        <property role="2bfB8j" value="true" />
        <property role="TrG5h" value="ClosureLiteralAdaptation" />
        <node concept="312cEu" id="6kENuFGSK1z" role="jymVt">
          <property role="2bfB8j" value="false" />
          <property role="TrG5h" value="Foo" />
          <node concept="3Tm1VV" id="6kENuFGSK1$" role="1B3o_S" />
          <node concept="16euLQ" id="6kENuFGSKBh" role="16eVyc">
            <property role="TrG5h" value="A" />
          </node>
          <node concept="16euLQ" id="6kENuFGSKBs" role="16eVyc">
            <property role="TrG5h" value="B" />
          </node>
        </node>
        <node concept="2tJIrI" id="6kENuFGT2pM" role="jymVt" />
        <node concept="2tJIrI" id="6kENuFGSLse" role="jymVt" />
        <node concept="312cEu" id="6kENuFGT2sS" role="jymVt">
          <property role="2bfB8j" value="false" />
          <property role="TrG5h" value="Bar" />
          <node concept="3Tm1VV" id="6kENuFGT2sT" role="1B3o_S" />
          <node concept="16euLQ" id="6kENuFGT2vt" role="16eVyc">
            <property role="TrG5h" value="X" />
          </node>
          <node concept="16euLQ" id="6kENuFGT2vC" role="16eVyc">
            <property role="TrG5h" value="Y" />
          </node>
        </node>
        <node concept="2tJIrI" id="6kENuFGT3OF" role="jymVt" />
        <node concept="312cEu" id="6kENuFGT3QU" role="jymVt">
          <property role="2bfB8j" value="false" />
          <property role="TrG5h" value="Baz" />
          <node concept="3Tm1VV" id="6kENuFGT3QV" role="1B3o_S" />
          <node concept="16euLQ" id="6kENuFGT3TV" role="16eVyc">
            <property role="TrG5h" value="Z" />
          </node>
        </node>
        <node concept="2tJIrI" id="6kENuFGT2qE" role="jymVt" />
        <node concept="3HP615" id="6kENuFGSKBP" role="jymVt">
          <property role="2bfB8j" value="false" />
          <property role="TrG5h" value="Qux" />
          <node concept="3clFb_" id="6kENuFGSLjs" role="jymVt">
            <property role="TrG5h" value="apply" />
            <node concept="37vLTG" id="6kENuFGSLnS" role="3clF46">
              <property role="TrG5h" value="p" />
              <node concept="16syzq" id="4Je5yFFiYwS" role="1tU5fm">
                <ref role="16sUi3" node="6kENuFGSKDM" resolve="S" />
              </node>
            </node>
            <node concept="3uibUv" id="6kENuFGSLke" role="3clF45">
              <ref role="3uigEE" node="6kENuFGSK1z" resolve="ClosureLiteralAdaptation.Foo" />
              <node concept="3qUE_q" id="6kENuFGSLkW" role="11_B2D">
                <node concept="16syzq" id="4Je5yFFiYrr" role="3qUE_r">
                  <ref role="16sUi3" node="6kENuFGSKDM" resolve="S" />
                </node>
              </node>
              <node concept="3qUE_q" id="6kENuFGSLlX" role="11_B2D">
                <node concept="16syzq" id="4Je5yFFiYrx" role="3qUE_r">
                  <ref role="16sUi3" node="6kENuFGSKG0" resolve="T" />
                </node>
              </node>
            </node>
            <node concept="3Tm1VV" id="6kENuFGSLjv" role="1B3o_S" />
            <node concept="3clFbS" id="6kENuFGSLjw" role="3clF47" />
          </node>
          <node concept="3Tm1VV" id="6kENuFGSKBQ" role="1B3o_S" />
          <node concept="16euLQ" id="6kENuFGSKDM" role="16eVyc">
            <property role="TrG5h" value="S" />
          </node>
          <node concept="16euLQ" id="6kENuFGSKG0" role="16eVyc">
            <property role="TrG5h" value="T" />
          </node>
        </node>
        <node concept="2tJIrI" id="6kENuFGT47Q" role="jymVt" />
        <node concept="2YIFZL" id="6kENuFGT2_7" role="jymVt">
          <property role="DiZV1" value="false" />
          <property role="od$2w" value="false" />
          <property role="TrG5h" value="calc" />
          <node concept="3clFbS" id="6kENuFGT2zx" role="3clF47">
            <node concept="3clFbF" id="6kENuFGT3vA" role="3cqZAp">
              <node concept="10Nm6u" id="6kENuFGT3v_" role="3clFbG" />
            </node>
          </node>
          <node concept="37vLTG" id="6kENuFGT2$e" role="3clF46">
            <property role="TrG5h" value="a" />
            <node concept="16syzq" id="4Je5yFFiWO9" role="1tU5fm">
              <ref role="16sUi3" node="6kENuFGT2Bk" resolve="U" />
            </node>
          </node>
          <node concept="37vLTG" id="6kENuFGT3Gb" role="3clF46">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="6kENuFGT3U9" role="1tU5fm">
              <ref role="3uigEE" node="6kENuFGT3QU" resolve="ClosureLiteralAdaptation.Baz" />
              <node concept="16syzq" id="4Je5yFFiWOU" role="11_B2D">
                <ref role="16sUi3" node="6kENuFGT3lo" resolve="V" />
              </node>
            </node>
          </node>
          <node concept="37vLTG" id="6kENuFGT3Vg" role="3clF46">
            <property role="TrG5h" value="c" />
            <node concept="3uibUv" id="6kENuFGT3Wb" role="1tU5fm">
              <ref role="3uigEE" node="6kENuFGSKBP" resolve="ClosureLiteralAdaptation.Qux" />
              <node concept="16syzq" id="4Je5yFFiWP0" role="11_B2D">
                <ref role="16sUi3" node="6kENuFGT2Bk" resolve="U" />
              </node>
              <node concept="16syzq" id="4Je5yFFiWP7" role="11_B2D">
                <ref role="16sUi3" node="6kENuFGT3lv" resolve="W" />
              </node>
            </node>
          </node>
          <node concept="3uibUv" id="6kENuFGT3w6" role="3clF45">
            <ref role="3uigEE" node="6kENuFGT2sS" resolve="ClosureLiteralAdaptation.Bar" />
            <node concept="16syzq" id="4Je5yFFiWOh" role="11_B2D">
              <ref role="16sUi3" node="6kENuFGT2Bk" resolve="U" />
            </node>
            <node concept="16syzq" id="4Je5yFFiWOz" role="11_B2D">
              <ref role="16sUi3" node="6kENuFGT3lv" resolve="W" />
            </node>
          </node>
          <node concept="3Tm1VV" id="6kENuFGT2zw" role="1B3o_S" />
          <node concept="16euLQ" id="6kENuFGT2Bk" role="16eVyc">
            <property role="TrG5h" value="U" />
          </node>
          <node concept="16euLQ" id="6kENuFGT3lo" role="16eVyc">
            <property role="TrG5h" value="V" />
          </node>
          <node concept="16euLQ" id="6kENuFGT3lv" role="16eVyc">
            <property role="TrG5h" value="W" />
          </node>
        </node>
        <node concept="2tJIrI" id="6kENuFGT2yL" role="jymVt" />
        <node concept="2YIFZL" id="6kENuFGTg5o" role="jymVt">
          <property role="TrG5h" value="test" />
          <property role="DiZV1" value="false" />
          <property role="od$2w" value="false" />
          <node concept="37vLTG" id="6kENuFGTggw" role="3clF46">
            <property role="TrG5h" value="x" />
            <node concept="3uibUv" id="6kENuFGTgiK" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
          <node concept="37vLTG" id="6kENuFGTgj8" role="3clF46">
            <property role="TrG5h" value="y" />
            <node concept="3uibUv" id="6kENuFGTgmK" role="1tU5fm">
              <ref role="3uigEE" node="6kENuFGT3QU" resolve="ClosureLiteralAdaptation.Baz" />
              <node concept="3uibUv" id="6kENuFGTgnx" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6kENuFGT4mh" role="3clF47">
            <node concept="3cpWs8" id="6kENuFGTmpu" role="3cqZAp">
              <node concept="3cpWsn" id="6kENuFGTmpv" role="3cpWs9">
                <property role="TrG5h" value="function" />
                <node concept="1ajhzC" id="6kENuFGTmp8" role="1tU5fm">
                  <node concept="3uibUv" id="6kENuFGTmpj" role="1ajw0F">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                  <node concept="3uibUv" id="6kENuFGTmpk" role="1ajl9A">
                    <ref role="3uigEE" node="6kENuFGSK1z" resolve="ClosureLiteralAdaptation.Foo" />
                    <node concept="3uibUv" id="6kENuFGTmpl" role="11_B2D">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="3uibUv" id="6kENuFGTmpm" role="11_B2D">
                      <ref role="3uigEE" to="wyt6:~Double" resolve="Double" />
                    </node>
                  </node>
                </node>
                <node concept="1bVj0M" id="6kENuFGTmpw" role="33vP2m">
                  <node concept="3clFbS" id="6kENuFGTmpx" role="1bW5cS">
                    <node concept="3clFbF" id="6kENuFGTmpy" role="3cqZAp">
                      <node concept="2ShNRf" id="6kENuFGTmpz" role="3clFbG">
                        <node concept="HV5vD" id="6kENuFGTmp$" role="2ShVmc">
                          <ref role="HV5vE" node="6kENuFGSK1z" resolve="ClosureLiteralAdaptation.Foo" />
                          <node concept="3uibUv" id="6kENuFGTmp_" role="HU9BZ">
                            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                          </node>
                          <node concept="3uibUv" id="6kENuFGTmpA" role="HU9BZ">
                            <ref role="3uigEE" to="wyt6:~Double" resolve="Double" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTG" id="6kENuFGTmpB" role="1bW2Oz">
                    <property role="TrG5h" value="s" />
                    <node concept="3uibUv" id="6kENuFGTmpC" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="U7sbC7T7IE" role="3cqZAp" />
            <node concept="3SKdUt" id="U7sbC7T8cR" role="3cqZAp">
              <node concept="1PaTwC" id="RbAU21nF3X" role="1aUNEU">
                <node concept="3oM_SD" id="RbAU21nF3Z" role="1PaTwD">
                  <property role="3oM_SC" value="an" />
                </node>
                <node concept="3oM_SD" id="RbAU21nF40" role="1PaTwD">
                  <property role="3oM_SC" value="instance" />
                </node>
                <node concept="3oM_SD" id="RbAU21nF41" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="RbAU21nF42" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="RbAU21nF43" role="1PaTwD">
                  <property role="3oM_SC" value="function" />
                </node>
                <node concept="3oM_SD" id="RbAU21nF44" role="1PaTwD">
                  <property role="3oM_SC" value="type" />
                </node>
                <node concept="3oM_SD" id="RbAU21nF45" role="1PaTwD">
                  <property role="3oM_SC" value="can't" />
                </node>
                <node concept="3oM_SD" id="RbAU21nF46" role="1PaTwD">
                  <property role="3oM_SC" value="be" />
                </node>
                <node concept="3oM_SD" id="RbAU21nF47" role="1PaTwD">
                  <property role="3oM_SC" value="adapted" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6kENuFGT4oZ" role="3cqZAp">
              <node concept="2YIFZM" id="4Je5yFFiYKp" role="3clFbG">
                <ref role="37wK5l" node="6kENuFGT2_7" resolve="calc" />
                <ref role="1Pybhc" node="6kENuFGSDng" resolve="ClosureLiteralAdaptation" />
                <node concept="37vLTw" id="4Je5yFFiYKq" role="37wK5m">
                  <ref role="3cqZAo" node="6kENuFGTggw" resolve="x" />
                </node>
                <node concept="37vLTw" id="4Je5yFFiYKr" role="37wK5m">
                  <ref role="3cqZAo" node="6kENuFGTgj8" resolve="y" />
                </node>
                <node concept="37vLTw" id="4Je5yFFiYKs" role="37wK5m">
                  <ref role="3cqZAo" node="6kENuFGTmpv" resolve="function" />
                </node>
                <node concept="7CXmI" id="4Je5yFFiYKt" role="lGtFl">
                  <node concept="1TM$A" id="4Je5yFFiYKu" role="7EUXB" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="U7sbC7T4$Z" role="3cqZAp" />
            <node concept="3clFbF" id="U7sbC7T6im" role="3cqZAp">
              <node concept="1rXfSq" id="U7sbC7T6ik" role="3clFbG">
                <ref role="37wK5l" node="6kENuFGT2_7" resolve="calc" />
                <node concept="37vLTw" id="4Je5yFFiXUw" role="37wK5m">
                  <ref role="3cqZAo" node="6kENuFGTggw" resolve="x" />
                </node>
                <node concept="37vLTw" id="4Je5yFFiXUW" role="37wK5m">
                  <ref role="3cqZAo" node="6kENuFGTgj8" resolve="y" />
                </node>
                <node concept="1bVj0M" id="U7sbC7T6YH" role="37wK5m">
                  <node concept="3clFbS" id="U7sbC7T6YI" role="1bW5cS">
                    <node concept="3clFbF" id="U7sbC7T6YJ" role="3cqZAp">
                      <node concept="2ShNRf" id="U7sbC7T6YK" role="3clFbG">
                        <node concept="HV5vD" id="U7sbC7T6YL" role="2ShVmc">
                          <ref role="HV5vE" node="6kENuFGSK1z" resolve="ClosureLiteralAdaptation.Foo" />
                          <node concept="3uibUv" id="U7sbC7T6YM" role="HU9BZ">
                            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                          </node>
                          <node concept="3uibUv" id="U7sbC7T6YN" role="HU9BZ">
                            <ref role="3uigEE" to="wyt6:~Double" resolve="Double" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTG" id="U7sbC7T6YO" role="1bW2Oz">
                    <property role="TrG5h" value="s" />
                    <node concept="3uibUv" id="U7sbC7T6YP" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6kENuFGTnbx" role="3cqZAp" />
            <node concept="3cpWs8" id="6kENuFGTAnY" role="3cqZAp">
              <node concept="3cpWsn" id="6kENuFGTAnZ" role="3cpWs9">
                <property role="TrG5h" value="qux" />
                <node concept="3uibUv" id="6kENuFGTAnX" role="1tU5fm">
                  <ref role="3uigEE" node="6kENuFGSKBP" resolve="ClosureLiteralAdaptation.Qux" />
                  <node concept="3uibUv" id="6kENuFGTAnV" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                  <node concept="3uibUv" id="6kENuFGTAnW" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Double" resolve="Double" />
                  </node>
                </node>
                <node concept="2ShNRf" id="6kENuFGTAo0" role="33vP2m">
                  <node concept="YeOm9" id="6kENuFGTAo1" role="2ShVmc">
                    <node concept="1Y3b0j" id="6kENuFGTAo2" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <ref role="1Y3XeK" node="6kENuFGSKBP" resolve="ClosureLiteralAdaptation.Qux" />
                      <node concept="3Tm1VV" id="6kENuFGTAo3" role="1B3o_S" />
                      <node concept="3uibUv" id="6kENuFGTAo4" role="2Ghqu4">
                        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                      </node>
                      <node concept="3uibUv" id="6kENuFGTAo5" role="2Ghqu4">
                        <ref role="3uigEE" to="wyt6:~Double" resolve="Double" />
                      </node>
                      <node concept="3clFb_" id="6kENuFGTAo6" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="apply" />
                        <node concept="37vLTG" id="6kENuFGTAo7" role="3clF46">
                          <property role="TrG5h" value="p" />
                          <node concept="3uibUv" id="6kENuFGTAo8" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                          </node>
                        </node>
                        <node concept="3uibUv" id="6kENuFGTAo9" role="3clF45">
                          <ref role="3uigEE" node="6kENuFGSK1z" resolve="ClosureLiteralAdaptation.Foo" />
                          <node concept="3qUE_q" id="6kENuFGTAoa" role="11_B2D">
                            <node concept="3uibUv" id="6kENuFGTAob" role="3qUE_r">
                              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                            </node>
                          </node>
                          <node concept="3qUE_q" id="6kENuFGTAoc" role="11_B2D">
                            <node concept="3uibUv" id="6kENuFGTAod" role="3qUE_r">
                              <ref role="3uigEE" to="wyt6:~Double" resolve="Double" />
                            </node>
                          </node>
                        </node>
                        <node concept="3Tm1VV" id="6kENuFGTAoe" role="1B3o_S" />
                        <node concept="3clFbS" id="6kENuFGTAof" role="3clF47">
                          <node concept="3clFbF" id="6kENuFGTAog" role="3cqZAp">
                            <node concept="10Nm6u" id="6kENuFGTAoh" role="3clFbG" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6kENuFGTzHt" role="3cqZAp">
              <node concept="2YIFZM" id="4Je5yFFiZ2C" role="3clFbG">
                <ref role="37wK5l" node="6kENuFGT2_7" resolve="calc" />
                <ref role="1Pybhc" node="6kENuFGSDng" resolve="ClosureLiteralAdaptation" />
                <node concept="37vLTw" id="4Je5yFFiZ2D" role="37wK5m">
                  <ref role="3cqZAo" node="6kENuFGTggw" resolve="x" />
                </node>
                <node concept="37vLTw" id="4Je5yFFiZ2E" role="37wK5m">
                  <ref role="3cqZAo" node="6kENuFGTgj8" resolve="y" />
                </node>
                <node concept="37vLTw" id="4Je5yFFiZ2F" role="37wK5m">
                  <ref role="3cqZAo" node="6kENuFGTAnZ" resolve="qux" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cqZAl" id="6kENuFGT4mf" role="3clF45" />
          <node concept="3Tm1VV" id="6kENuFGT4mg" role="1B3o_S" />
        </node>
        <node concept="3Tm1VV" id="6kENuFGSDnh" role="1B3o_S" />
        <node concept="7CXmI" id="4GOuLJsis65" role="lGtFl">
          <node concept="7OXhh" id="4GOuLJsiufp" role="7EUXB" />
        </node>
        <node concept="3UR2Jj" id="17vi3ZqS5ux" role="lGtFl">
          <node concept="1PaTwC" id="17vi3ZqS5uy" role="1Vez_I">
            <node concept="3oM_SD" id="17vi3ZqS5uz" role="1PaTwD">
              <property role="3oM_SC" value="See" />
            </node>
            <node concept="3oM_SD" id="17vi3ZqS6b8" role="1PaTwD">
              <property role="3oM_SC" value="MPS-19062" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="1sViVae8NrR" role="1SKRRt">
      <node concept="312cEu" id="1sViVae8NGc" role="1qenE9">
        <property role="2bfB8j" value="true" />
        <property role="TrG5h" value="FunctionTypeNotAdapted" />
        <node concept="2tJIrI" id="1sViVae8NL7" role="jymVt" />
        <node concept="3clFb_" id="1sViVae8NLJ" role="jymVt">
          <property role="TrG5h" value="method1" />
          <node concept="37vLTG" id="1sViVae8NOi" role="3clF46">
            <property role="TrG5h" value="fun" />
            <node concept="1ajhzC" id="1sViVae8NPi" role="1tU5fm">
              <node concept="3cqZAl" id="1sViVae8NQ0" role="1ajl9A" />
            </node>
          </node>
          <node concept="3cqZAl" id="1sViVae8NLL" role="3clF45" />
          <node concept="3Tm1VV" id="1sViVae8NLM" role="1B3o_S" />
          <node concept="3clFbS" id="1sViVae8NLN" role="3clF47">
            <node concept="3clFbF" id="1sViVae8NXS" role="3cqZAp">
              <node concept="1rXfSq" id="1sViVae8NXR" role="3clFbG">
                <ref role="37wK5l" node="1sViVae8NRP" resolve="acceptRunnable" />
                <node concept="37vLTw" id="1sViVae8NZZ" role="37wK5m">
                  <ref role="3cqZAo" node="1sViVae8NOi" resolve="fun" />
                  <node concept="7CXmI" id="1sViVae8OmD" role="lGtFl">
                    <node concept="1TM$A" id="1sViVae8OmE" role="7EUXB" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2tJIrI" id="1sViVae8NLc" role="jymVt" />
        <node concept="3clFb_" id="1sViVae8Oqo" role="jymVt">
          <property role="TrG5h" value="method2" />
          <node concept="3cqZAl" id="1sViVae8Oqq" role="3clF45" />
          <node concept="3Tm1VV" id="1sViVae8Oqr" role="1B3o_S" />
          <node concept="3clFbS" id="1sViVae8Oqs" role="3clF47">
            <node concept="3clFbF" id="1sViVae8OtX" role="3cqZAp">
              <node concept="1rXfSq" id="1sViVae8OtW" role="3clFbG">
                <ref role="37wK5l" node="1sViVae8NRP" resolve="acceptRunnable" />
                <node concept="1bVj0M" id="1sViVae8OuF" role="37wK5m">
                  <node concept="3clFbS" id="1sViVae8OuG" role="1bW5cS" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2tJIrI" id="1sViVae8Oo0" role="jymVt" />
        <node concept="3clFb_" id="1sViVae8NRP" role="jymVt">
          <property role="TrG5h" value="acceptRunnable" />
          <node concept="3cqZAl" id="1sViVae8NRR" role="3clF45" />
          <node concept="3Tm1VV" id="1sViVae8NRS" role="1B3o_S" />
          <node concept="3clFbS" id="1sViVae8NRT" role="3clF47" />
          <node concept="37vLTG" id="1sViVae8NWn" role="3clF46">
            <property role="TrG5h" value="run" />
            <node concept="3uibUv" id="1sViVae8NWm" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="1sViVae8NGd" role="1B3o_S" />
        <node concept="3UR2Jj" id="17vi3ZqS7NG" role="lGtFl">
          <node concept="1PaTwC" id="17vi3ZqS7NH" role="1Vez_I">
            <node concept="3oM_SD" id="17vi3ZqS7NI" role="1PaTwD">
              <property role="3oM_SC" value="See" />
            </node>
            <node concept="3oM_SD" id="17vi3ZqS8iH" role="1PaTwD">
              <property role="3oM_SC" value="MPS-21750" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6KEnv7l_cAn">
    <property role="TrG5h" value="NestedClosures" />
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <node concept="1LZb2c" id="6KEnv7l_h6Z" role="1SL9yI">
      <property role="TrG5h" value="nestedClosuresWithNullInvoke" />
      <node concept="3cqZAl" id="6KEnv7l_h70" role="3clF45" />
      <node concept="3clFbS" id="6KEnv7l_h74" role="3clF47">
        <node concept="JA50E" id="6KEnv7l_p0Z" role="3cqZAp">
          <node concept="2OqwBi" id="6KEnv7l_p7o" role="JA92f">
            <node concept="3xONca" id="6KEnv7l_p7p" role="2Oq$k0">
              <ref role="3xOPvv" node="6KEnv7l_gd5" resolve="invoke1" />
            </node>
            <node concept="3JvlWi" id="6KEnv7l_p7q" role="2OqNvi" />
          </node>
          <node concept="2c44tf" id="6KEnv7l_pdD" role="JAdkl">
            <node concept="17QB3L" id="6KEnv7l_pkR" role="2c44tc" />
          </node>
        </node>
        <node concept="JA50E" id="6KEnv7l_ppU" role="3cqZAp">
          <node concept="2OqwBi" id="6KEnv7l_ppV" role="JA92f">
            <node concept="3xONca" id="6KEnv7l_ppW" role="2Oq$k0">
              <ref role="3xOPvv" node="6KEnv7l_gE9" resolve="invoke2" />
            </node>
            <node concept="3JvlWi" id="6KEnv7l_ppX" role="2OqNvi" />
          </node>
          <node concept="2c44tf" id="6KEnv7l_ppY" role="JAdkl">
            <node concept="17QB3L" id="6KEnv7l_ppZ" role="2c44tc" />
          </node>
        </node>
        <node concept="JA50E" id="2VL317Pl7Fk" role="3cqZAp">
          <node concept="2OqwBi" id="2VL317Pl7Fl" role="JA92f">
            <node concept="3xONca" id="2VL317Pl7Fm" role="2Oq$k0">
              <ref role="3xOPvv" node="2VL317PkZLM" resolve="closure1" />
            </node>
            <node concept="3JvlWi" id="2VL317Pl7Fn" role="2OqNvi" />
          </node>
          <node concept="2c44tf" id="2VL317Pl7Fo" role="JAdkl">
            <node concept="9cv3F" id="2VL317Pl7Fp" role="2c44tc">
              <node concept="17QB3L" id="2VL317Pl7Fq" role="1ajl9A" />
            </node>
          </node>
        </node>
        <node concept="JA50E" id="2VL317Pl7Fd" role="3cqZAp">
          <node concept="2OqwBi" id="2VL317Pl7Fe" role="JA92f">
            <node concept="3xONca" id="2VL317Pl7Ff" role="2Oq$k0">
              <ref role="3xOPvv" node="2VL317Pl0au" resolve="closure2" />
            </node>
            <node concept="3JvlWi" id="2VL317Pl7Fg" role="2OqNvi" />
          </node>
          <node concept="2c44tf" id="2VL317Pl7Fh" role="JAdkl">
            <node concept="9cv3F" id="2VL317Pl7Fi" role="2c44tc">
              <node concept="17QB3L" id="2VL317Pl7Fj" role="1ajl9A" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="6KEnv7l_Cec" role="1SL9yI">
      <property role="TrG5h" value="nestedClosuresWithNullCompactInvoke" />
      <node concept="3cqZAl" id="6KEnv7l_Ced" role="3clF45" />
      <node concept="3clFbS" id="6KEnv7l_Cee" role="3clF47">
        <node concept="JA50E" id="6KEnv7l_Cef" role="3cqZAp">
          <node concept="2OqwBi" id="6KEnv7l_Ceg" role="JA92f">
            <node concept="3xONca" id="6KEnv7l_Ceh" role="2Oq$k0">
              <ref role="3xOPvv" node="6KEnv7l_Bis" resolve="compactInvoke1" />
            </node>
            <node concept="3JvlWi" id="6KEnv7l_Cei" role="2OqNvi" />
          </node>
          <node concept="2c44tf" id="6KEnv7l_Cej" role="JAdkl">
            <node concept="17QB3L" id="6KEnv7l_Cek" role="2c44tc" />
          </node>
        </node>
        <node concept="JA50E" id="6KEnv7l_Cel" role="3cqZAp">
          <node concept="2OqwBi" id="6KEnv7l_Cem" role="JA92f">
            <node concept="3xONca" id="6KEnv7l_Cen" role="2Oq$k0">
              <ref role="3xOPvv" node="6KEnv7l_BJF" resolve="compactInvoke2" />
            </node>
            <node concept="3JvlWi" id="6KEnv7l_Ceo" role="2OqNvi" />
          </node>
          <node concept="2c44tf" id="6KEnv7l_Cep" role="JAdkl">
            <node concept="17QB3L" id="6KEnv7l_Ceq" role="2c44tc" />
          </node>
        </node>
        <node concept="JA50E" id="2VL317Pl0xL" role="3cqZAp">
          <node concept="2OqwBi" id="2VL317Pl0Ih" role="JA92f">
            <node concept="3xONca" id="2VL317Pl0zm" role="2Oq$k0">
              <ref role="3xOPvv" node="2VL317Pl6wd" resolve="closure3" />
            </node>
            <node concept="3JvlWi" id="2VL317Pl1t7" role="2OqNvi" />
          </node>
          <node concept="2c44tf" id="2VL317Pl1vG" role="JAdkl">
            <node concept="9cv3F" id="2VL317Pl1_Z" role="2c44tc">
              <node concept="17QB3L" id="2VL317Pl29D" role="1ajl9A" />
            </node>
          </node>
        </node>
        <node concept="JA50E" id="2VL317Pl2dh" role="3cqZAp">
          <node concept="2OqwBi" id="2VL317Pl2di" role="JA92f">
            <node concept="3xONca" id="2VL317Pl2dj" role="2Oq$k0">
              <ref role="3xOPvv" node="2VL317Pl7iz" resolve="closure4" />
            </node>
            <node concept="3JvlWi" id="2VL317Pl2dk" role="2OqNvi" />
          </node>
          <node concept="2c44tf" id="2VL317Pl2dl" role="JAdkl">
            <node concept="9cv3F" id="2VL317Pl2dm" role="2c44tc">
              <node concept="17QB3L" id="2VL317Pl2dn" role="1ajl9A" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="6KEnv7l_cNq" role="1SKRRt">
      <node concept="2YIFZL" id="6KEnv7l_elV" role="1qenE9">
        <property role="TrG5h" value="__" />
        <node concept="3cqZAl" id="6KEnv7l_elW" role="3clF45" />
        <node concept="3Tm1VV" id="6KEnv7l_elX" role="1B3o_S" />
        <node concept="3clFbS" id="6KEnv7l_elY" role="3clF47">
          <node concept="3clFbF" id="6KEnv7l_euu" role="3cqZAp">
            <node concept="2OqwBi" id="79gzsTC$1uL" role="3clFbG">
              <node concept="1bVj0M" id="79gzsTCzZsc" role="2Oq$k0">
                <node concept="3clFbS" id="79gzsTCzZsd" role="1bW5cS">
                  <node concept="3clFbJ" id="79gzsTCzZsf" role="3cqZAp">
                    <node concept="3clFbS" id="79gzsTCzZsg" role="3clFbx">
                      <node concept="3cpWs6" id="79gzsTC$55D" role="3cqZAp">
                        <node concept="2OqwBi" id="6ZFOLOmAVu2" role="3cqZAk">
                          <node concept="1bVj0M" id="6ZFOLOmAUAq" role="2Oq$k0">
                            <node concept="3clFbS" id="6ZFOLOmAUAr" role="1bW5cS">
                              <node concept="3clFbJ" id="6ZFOLOmAUAs" role="3cqZAp">
                                <node concept="3clFbS" id="6ZFOLOmAUAt" role="3clFbx">
                                  <node concept="3cpWs6" id="6ZFOLOmAUAu" role="3cqZAp">
                                    <node concept="Xl_RD" id="6ZFOLOmAUAv" role="3cqZAk">
                                      <property role="Xl_RC" value="a" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbC" id="6ZFOLOmAUAw" role="3clFbw">
                                  <node concept="3cmrfG" id="6ZFOLOmAUAx" role="3uHU7w">
                                    <property role="3cmrfH" value="0" />
                                  </node>
                                  <node concept="3cmrfG" id="6ZFOLOmAUAy" role="3uHU7B">
                                    <property role="3cmrfH" value="0" />
                                  </node>
                                </node>
                                <node concept="9aQIb" id="6ZFOLOmAUAz" role="9aQIa">
                                  <node concept="3clFbS" id="6ZFOLOmAUA$" role="9aQI4">
                                    <node concept="3cpWs6" id="6ZFOLOmAUA_" role="3cqZAp">
                                      <node concept="Xl_RD" id="6ZFOLOmAUAA" role="3cqZAk">
                                        <property role="Xl_RC" value="b" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3xLA65" id="2VL317Pl0au" role="lGtFl">
                              <property role="TrG5h" value="closure2" />
                            </node>
                          </node>
                          <node concept="1Bd96e" id="6ZFOLOmAWaa" role="2OqNvi">
                            <node concept="3xLA65" id="6KEnv7l_gd5" role="lGtFl">
                              <property role="TrG5h" value="invoke1" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbC" id="79gzsTCzZsy" role="3clFbw">
                      <node concept="3cmrfG" id="79gzsTCzZsz" role="3uHU7w">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="3cmrfG" id="79gzsTCzZs$" role="3uHU7B">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                    <node concept="9aQIb" id="79gzsTCzZs_" role="9aQIa">
                      <node concept="3clFbS" id="79gzsTCzZsA" role="9aQI4">
                        <node concept="3cpWs6" id="79gzsTCzZsB" role="3cqZAp">
                          <node concept="10Nm6u" id="79gzsTCzZsC" role="3cqZAk" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3xLA65" id="2VL317PkZLM" role="lGtFl">
                  <property role="TrG5h" value="closure1" />
                </node>
              </node>
              <node concept="1Bd96e" id="79gzsTC$2e_" role="2OqNvi">
                <node concept="3xLA65" id="6KEnv7l_gE9" role="lGtFl">
                  <property role="TrG5h" value="invoke2" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="6KEnv7l_IC0" role="1SKRRt">
      <node concept="2YIFZL" id="6KEnv7l_IG2" role="1qenE9">
        <property role="TrG5h" value="__" />
        <node concept="3cqZAl" id="6KEnv7l_IG3" role="3clF45" />
        <node concept="3Tm1VV" id="6KEnv7l_IG4" role="1B3o_S" />
        <node concept="3clFbS" id="6KEnv7l_IG5" role="3clF47">
          <node concept="3clFbF" id="6KEnv7l_zRn" role="3cqZAp">
            <node concept="2Sg_IR" id="6KEnv7l_A79" role="3clFbG">
              <node concept="1bVj0M" id="6KEnv7l_A7a" role="2SgG2M">
                <node concept="3clFbS" id="6KEnv7l_A7b" role="1bW5cS">
                  <node concept="3clFbJ" id="6KEnv7l_A7c" role="3cqZAp">
                    <node concept="3clFbS" id="6KEnv7l_A7d" role="3clFbx">
                      <node concept="3cpWs6" id="6KEnv7l_A7e" role="3cqZAp">
                        <node concept="2Sg_IR" id="6KEnv7l_A7f" role="3cqZAk">
                          <node concept="1bVj0M" id="6KEnv7l_A7g" role="2SgG2M">
                            <node concept="3clFbS" id="6KEnv7l_A7h" role="1bW5cS">
                              <node concept="3clFbJ" id="6KEnv7l_A7i" role="3cqZAp">
                                <node concept="3clFbS" id="6KEnv7l_A7j" role="3clFbx">
                                  <node concept="3cpWs6" id="6KEnv7l_A7k" role="3cqZAp">
                                    <node concept="Xl_RD" id="6KEnv7l_A7l" role="3cqZAk">
                                      <property role="Xl_RC" value="a" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbC" id="6KEnv7l_A7m" role="3clFbw">
                                  <node concept="3cmrfG" id="6KEnv7l_A7n" role="3uHU7w">
                                    <property role="3cmrfH" value="0" />
                                  </node>
                                  <node concept="3cmrfG" id="6KEnv7l_A7o" role="3uHU7B">
                                    <property role="3cmrfH" value="0" />
                                  </node>
                                </node>
                                <node concept="9aQIb" id="6KEnv7l_A7p" role="9aQIa">
                                  <node concept="3clFbS" id="6KEnv7l_A7q" role="9aQI4">
                                    <node concept="3cpWs6" id="6KEnv7l_A7r" role="3cqZAp">
                                      <node concept="Xl_RD" id="6KEnv7l_A7s" role="3cqZAk">
                                        <property role="Xl_RC" value="b" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3xLA65" id="2VL317Pl7iz" role="lGtFl">
                              <property role="TrG5h" value="closure4" />
                            </node>
                          </node>
                          <node concept="3xLA65" id="6KEnv7l_Bis" role="lGtFl">
                            <property role="TrG5h" value="compactInvoke1" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbC" id="6KEnv7l_A7t" role="3clFbw">
                      <node concept="3cmrfG" id="6KEnv7l_A7u" role="3uHU7w">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="3cmrfG" id="6KEnv7l_A7v" role="3uHU7B">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                    <node concept="9aQIb" id="6KEnv7l_A7w" role="9aQIa">
                      <node concept="3clFbS" id="6KEnv7l_A7x" role="9aQI4">
                        <node concept="3cpWs6" id="6KEnv7l_A7y" role="3cqZAp">
                          <node concept="10Nm6u" id="6KEnv7l_A7z" role="3cqZAk" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3xLA65" id="2VL317Pl6wd" role="lGtFl">
                  <property role="TrG5h" value="closure3" />
                </node>
              </node>
              <node concept="3xLA65" id="6KEnv7l_BJF" role="lGtFl">
                <property role="TrG5h" value="compactInvoke2" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="7Gunk0ZoCVH">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="AdvancedFunctionParameter" />
    <node concept="1qefOq" id="7Gunk0ZoCVK" role="1SKRRt">
      <node concept="312cEu" id="7Gunk0ZoCVI" role="1qenE9">
        <property role="TrG5h" value="ComplexFunctions" />
        <node concept="3clFb_" id="7Gunk0ZoCXM" role="jymVt">
          <property role="TrG5h" value="iterate" />
          <node concept="3clFbS" id="7Gunk0ZoCXP" role="3clF47">
            <node concept="3SKdUt" id="7Gunk0ZoDCJ" role="3cqZAp">
              <node concept="1PaTwC" id="7Gunk0ZoDCK" role="1aUNEU">
                <node concept="3oM_SD" id="7Gunk0ZoE5o" role="1PaTwD">
                  <property role="3oM_SC" value="Inference" />
                </node>
                <node concept="3oM_SD" id="7Gunk0ZoE5q" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="7Gunk0ZoE5t" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="7Gunk0ZoE5x" role="1PaTwD">
                  <property role="3oM_SC" value="type" />
                </node>
                <node concept="3oM_SD" id="7Gunk0ZoE5A" role="1PaTwD">
                  <property role="3oM_SC" value="parameter" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="_PB_1P9tYd" role="3cqZAp">
              <node concept="3cpWsn" id="_PB_1P9tYe" role="3cpWs9">
                <property role="TrG5h" value="intStream" />
                <node concept="3uibUv" id="_PB_1P9tyK" role="1tU5fm">
                  <ref role="3uigEE" to="1ctc:~Stream" resolve="Stream" />
                  <node concept="3uibUv" id="_PB_1P9uKM" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                </node>
                <node concept="2YIFZM" id="_PB_1P9tYf" role="33vP2m">
                  <ref role="37wK5l" to="1ctc:~Stream.iterate(java.lang.Object,java.util.function.UnaryOperator)" resolve="iterate" />
                  <ref role="1Pybhc" to="1ctc:~Stream" resolve="Stream" />
                  <node concept="3cmrfG" id="_PB_1P9tYg" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="1bVj0M" id="_PB_1P9tYh" role="37wK5m">
                    <node concept="gl6BB" id="_PB_1P9tYi" role="1bW2Oz">
                      <property role="TrG5h" value="p" />
                      <node concept="2jxLKc" id="_PB_1P9tYj" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="_PB_1P9tYk" role="1bW5cS">
                      <node concept="3clFbF" id="_PB_1P9tYl" role="3cqZAp">
                        <node concept="3cpWs3" id="_PB_1P9tYm" role="3clFbG">
                          <node concept="3cmrfG" id="_PB_1P9tYn" role="3uHU7w">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="37vLTw" id="_PB_1P9tYo" role="3uHU7B">
                            <ref role="3cqZAo" node="_PB_1P9tYi" resolve="p" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="_PB_1P9pzo" role="3cqZAp">
              <node concept="3cpWsn" id="_PB_1P9pzp" role="3cpWs9">
                <property role="TrG5h" value="stringStream" />
                <node concept="3uibUv" id="_PB_1P9pj_" role="1tU5fm">
                  <ref role="3uigEE" to="1ctc:~Stream" resolve="Stream" />
                  <node concept="17QB3L" id="_PB_1P9pjC" role="11_B2D" />
                </node>
                <node concept="2YIFZM" id="_PB_1P9pzq" role="33vP2m">
                  <ref role="37wK5l" to="1ctc:~Stream.iterate(java.lang.Object,java.util.function.UnaryOperator)" resolve="iterate" />
                  <ref role="1Pybhc" to="1ctc:~Stream" resolve="Stream" />
                  <node concept="Xl_RD" id="_PB_1P9pzr" role="37wK5m">
                    <property role="Xl_RC" value="a" />
                  </node>
                  <node concept="1bVj0M" id="_PB_1P9pzs" role="37wK5m">
                    <node concept="gl6BB" id="_PB_1P9pzt" role="1bW2Oz">
                      <property role="TrG5h" value="p" />
                      <node concept="2jxLKc" id="_PB_1P9pzu" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="_PB_1P9pzv" role="1bW5cS">
                      <node concept="3clFbF" id="_PB_1P9pzw" role="3cqZAp">
                        <node concept="3cpWs3" id="_PB_1P9pzx" role="3clFbG">
                          <node concept="37vLTw" id="_PB_1P9pzy" role="3uHU7B">
                            <ref role="3cqZAo" node="_PB_1P9pzt" resolve="p" />
                          </node>
                          <node concept="Xl_RD" id="_PB_1P9pzz" role="3uHU7w">
                            <property role="Xl_RC" value="_" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2H1iQD9ae9Q" role="3cqZAp">
              <node concept="2OqwBi" id="2H1iQD9af0h" role="3clFbG">
                <node concept="37vLTw" id="2H1iQD9ae9O" role="2Oq$k0">
                  <ref role="3cqZAo" node="_PB_1P9tYe" resolve="intStream" />
                </node>
                <node concept="liA8E" id="2H1iQD9afVD" role="2OqNvi">
                  <ref role="37wK5l" to="1ctc:~BaseStream.close()" resolve="close" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2H1iQD9agEw" role="3cqZAp">
              <node concept="2OqwBi" id="2H1iQD9ahng" role="3clFbG">
                <node concept="37vLTw" id="2H1iQD9agEu" role="2Oq$k0">
                  <ref role="3cqZAo" node="_PB_1P9pzp" resolve="stringStream" />
                </node>
                <node concept="liA8E" id="2H1iQD9aj0j" role="2OqNvi">
                  <ref role="37wK5l" to="1ctc:~BaseStream.close()" resolve="close" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cqZAl" id="7Gunk0ZoCXz" role="3clF45" />
          <node concept="3Tm1VV" id="7Gunk0ZoDva" role="1B3o_S" />
        </node>
        <node concept="3Tm1VV" id="7Gunk0ZoCVJ" role="1B3o_S" />
        <node concept="7CXmI" id="2H1iQD9ajnp" role="lGtFl">
          <node concept="7OXhh" id="2H1iQD9ajR0" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="4Nakfq3T6eQ">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="ComplexInference" />
    <node concept="1qefOq" id="4Nakfq3T6gr" role="1SKRRt">
      <node concept="312cEu" id="4Nakfq3Tguy" role="1qenE9">
        <property role="TrG5h" value="TestGenericsWithNodes" />
        <property role="2bfB8j" value="true" />
        <node concept="3Tm1VV" id="4Nakfq3Tguz" role="1B3o_S" />
        <node concept="2YIFZL" id="4Nakfq3Tgu$" role="jymVt">
          <property role="TrG5h" value="main" />
          <node concept="37vLTG" id="4Nakfq3Tgu_" role="3clF46">
            <property role="TrG5h" value="seq" />
            <node concept="A3Dl8" id="4Nakfq3TguA" role="1tU5fm">
              <node concept="3Tqbb2" id="4Nakfq3TguB" role="A3Ik2">
                <ref role="ehGHo" to="tpee:2FJPm3OfY71" resolve="AbstractCatchClause" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4Nakfq3TguC" role="3clF47">
            <node concept="3SKdUt" id="4Nakfq3TpeO" role="3cqZAp">
              <node concept="1PaTwC" id="4Nakfq3TpeP" role="1aUNEU">
                <node concept="3oM_SD" id="4Nakfq3Tptm" role="1PaTwD">
                  <property role="3oM_SC" value="This" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3Tpto" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3Tptr" role="1PaTwD">
                  <property role="3oM_SC" value="class" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TptS" role="1PaTwD">
                  <property role="3oM_SC" value="below" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3Tpum" role="1PaTwD">
                  <property role="3oM_SC" value="are" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3Tpus" role="1PaTwD">
                  <property role="3oM_SC" value="simplified" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3Tpvl" role="1PaTwD">
                  <property role="3oM_SC" value="invalid" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3Tpwf" role="1PaTwD">
                  <property role="3oM_SC" value="cases" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TpwL" role="1PaTwD">
                  <property role="3oM_SC" value="that" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TpwV" role="1PaTwD">
                  <property role="3oM_SC" value="happened" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TpxS" role="1PaTwD">
                  <property role="3oM_SC" value="after" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TpBt" role="1PaTwD">
                  <property role="3oM_SC" value="merging" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TpC3" role="1PaTwD">
                  <property role="3oM_SC" value="changes" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TpCh" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TpCT" role="1PaTwD">
                  <property role="3oM_SC" value="BL" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TpD9" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TpDq" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TpER" role="1PaTwD">
                  <property role="3oM_SC" value="typesystem" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TpFW" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TpGg" role="1PaTwD">
                  <property role="3oM_SC" value="2023.2" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4Nakfq3Tgv0" role="3cqZAp">
              <node concept="3KEzu6" id="4Nakfq3Tgv1" role="3cpWs9">
                <property role="TrG5h" value="builder" />
                <node concept="1rXfSq" id="4Nakfq3Tgv2" role="33vP2m">
                  <ref role="37wK5l" node="4Nakfq3Tgvv" resolve="create" />
                  <node concept="37vLTw" id="4Nakfq3Tgv3" role="37wK5m">
                    <ref role="3cqZAo" node="4Nakfq3Tgu_" resolve="seq" />
                  </node>
                  <node concept="3VsKOn" id="4Nakfq3Tgv4" role="37wK5m">
                    <ref role="3VsUkX" node="4Nakfq3Tgvd" resolve="TestGenericsWithNodes.Child" />
                  </node>
                </node>
                <node concept="PeGgZ" id="4Nakfq3Tgv5" role="1tU5fm" />
              </node>
            </node>
            <node concept="3SKdUt" id="4Nakfq3TguD" role="3cqZAp">
              <node concept="1PaTwC" id="4Nakfq3TguE" role="1aUNEU">
                <node concept="3oM_SD" id="4Nakfq3TguF" role="1PaTwD">
                  <property role="3oM_SC" value="Requires" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TguG" role="1PaTwD">
                  <property role="3oM_SC" value="function" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TguH" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TguI" role="1PaTwD">
                  <property role="3oM_SC" value="wait" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TguJ" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TguK" role="1PaTwD">
                  <property role="3oM_SC" value="builder" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TguL" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TguM" role="1PaTwD">
                  <property role="3oM_SC" value="fully" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TguN" role="1PaTwD">
                  <property role="3oM_SC" value="resolve," />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TguO" role="1PaTwD">
                  <property role="3oM_SC" value="or" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TguP" role="1PaTwD">
                  <property role="3oM_SC" value="inference" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TguQ" role="1PaTwD">
                  <property role="3oM_SC" value="may" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TguR" role="1PaTwD">
                  <property role="3oM_SC" value="get" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TguS" role="1PaTwD">
                  <property role="3oM_SC" value="wild" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TguT" role="1PaTwD">
                  <property role="3oM_SC" value="(infer" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TguU" role="1PaTwD">
                  <property role="3oM_SC" value="type" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TguV" role="1PaTwD">
                  <property role="3oM_SC" value="parameter" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TguW" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TguX" role="1PaTwD">
                  <property role="3oM_SC" value="use()" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TguY" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="4Nakfq3TguZ" role="1PaTwD">
                  <property role="3oM_SC" value="Base)" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4Nakfq3Tgv6" role="3cqZAp">
              <node concept="1rXfSq" id="4Nakfq3Tgv7" role="3clFbG">
                <ref role="37wK5l" node="4Nakfq3Tgvh" resolve="use" />
                <node concept="37vLTw" id="4Nakfq3Tgv8" role="37wK5m">
                  <ref role="3cqZAo" node="4Nakfq3Tgv1" resolve="builder" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3Tm1VV" id="4Nakfq3Tgv9" role="1B3o_S" />
          <node concept="3cqZAl" id="4Nakfq3Tgva" role="3clF45" />
        </node>
        <node concept="3HP615" id="4Nakfq3Tgvb" role="jymVt">
          <property role="TrG5h" value="Base" />
          <property role="2bfB8j" value="true" />
          <node concept="3Tm1VV" id="4Nakfq3Tgvc" role="1B3o_S" />
        </node>
        <node concept="312cEu" id="4Nakfq3Tgvd" role="jymVt">
          <property role="TrG5h" value="Child" />
          <property role="2bfB8j" value="true" />
          <node concept="3Tm1VV" id="4Nakfq3Tgve" role="1B3o_S" />
          <node concept="3uibUv" id="4Nakfq3Tgvf" role="EKbjA">
            <ref role="3uigEE" node="4Nakfq3Tgvb" resolve="TestGenericsWithNodes.Base" />
          </node>
        </node>
        <node concept="2tJIrI" id="4Nakfq3Tgvg" role="jymVt" />
        <node concept="2YIFZL" id="4Nakfq3Tgvh" role="jymVt">
          <property role="TrG5h" value="use" />
          <node concept="16euLQ" id="4Nakfq3Tgvi" role="16eVyc">
            <property role="TrG5h" value="T" />
            <node concept="3uibUv" id="4Nakfq3Tgvj" role="3ztrMU">
              <ref role="3uigEE" node="4Nakfq3Tgvb" resolve="TestGenericsWithNodes.Base" />
            </node>
          </node>
          <node concept="37vLTG" id="4Nakfq3Tgvk" role="3clF46">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="4Nakfq3Tgvl" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <node concept="16syzq" id="4Nakfq3Tgvm" role="11_B2D">
                <ref role="16sUi3" node="4Nakfq3Tgvi" resolve="T" />
              </node>
              <node concept="3qUE_q" id="4Nakfq3Tgvn" role="11_B2D">
                <node concept="3uibUv" id="4Nakfq3Tgvo" role="3qUE_r">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4Nakfq3Tgvp" role="3clF47">
            <node concept="3cpWs6" id="4Nakfq3Tgvq" role="3cqZAp">
              <node concept="10Nm6u" id="4Nakfq3Tgvr" role="3cqZAk" />
            </node>
          </node>
          <node concept="3Tm1VV" id="4Nakfq3Tgvs" role="1B3o_S" />
          <node concept="3uibUv" id="4Nakfq3Tgvt" role="3clF45">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="16syzq" id="4Nakfq3Tgvu" role="11_B2D">
              <ref role="16sUi3" node="4Nakfq3Tgvi" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="2YIFZL" id="4Nakfq3Tgvv" role="jymVt">
          <property role="TrG5h" value="create" />
          <node concept="16euLQ" id="4Nakfq3Tgvw" role="16eVyc">
            <property role="TrG5h" value="T" />
            <node concept="3uibUv" id="4Nakfq3Tgvx" role="3ztrMU">
              <ref role="3uigEE" node="4Nakfq3Tgvb" resolve="TestGenericsWithNodes.Base" />
            </node>
          </node>
          <node concept="16euLQ" id="4Nakfq3Tgvy" role="16eVyc">
            <property role="TrG5h" value="U" />
            <node concept="3Tqbb2" id="4Nakfq3Tgvz" role="3ztrMU" />
          </node>
          <node concept="37vLTG" id="4Nakfq3Tgv$" role="3clF46">
            <property role="TrG5h" value="seq" />
            <node concept="3uibUv" id="4Nakfq3Tgv_" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
              <node concept="16syzq" id="4Nakfq3TgvA" role="11_B2D">
                <ref role="16sUi3" node="4Nakfq3Tgvy" resolve="U" />
              </node>
            </node>
          </node>
          <node concept="37vLTG" id="4Nakfq3TgvB" role="3clF46">
            <property role="TrG5h" value="kind" />
            <node concept="3uibUv" id="4Nakfq3TgvC" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
              <node concept="16syzq" id="4Nakfq3TgvD" role="11_B2D">
                <ref role="16sUi3" node="4Nakfq3Tgvw" resolve="T" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4Nakfq3TgvE" role="3clF47">
            <node concept="3cpWs6" id="4Nakfq3TgvF" role="3cqZAp">
              <node concept="10Nm6u" id="4Nakfq3TgvG" role="3cqZAk" />
            </node>
          </node>
          <node concept="3Tm1VV" id="4Nakfq3TgvH" role="1B3o_S" />
          <node concept="3uibUv" id="4Nakfq3TgvI" role="3clF45">
            <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
            <node concept="16syzq" id="4Nakfq3TgvJ" role="11_B2D">
              <ref role="16sUi3" node="4Nakfq3Tgvw" resolve="T" />
            </node>
            <node concept="16syzq" id="4Nakfq3TgvK" role="11_B2D">
              <ref role="16sUi3" node="4Nakfq3Tgvy" resolve="U" />
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="4Nakfq3Tjyg" role="lGtFl">
          <node concept="7OXhh" id="4Nakfq3TjDa" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="4Nakfq3Tk36" role="1SKRRt">
      <node concept="312cEu" id="4Nakfq3gINE" role="1qenE9">
        <property role="TrG5h" value="FunctionCallMix" />
        <node concept="2YIFZL" id="4Nakfq3gIRq" role="jymVt">
          <property role="TrG5h" value="main" />
          <node concept="37vLTG" id="4Nakfq3gIRr" role="3clF46">
            <property role="TrG5h" value="data" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="4Nakfq3imt3" role="1tU5fm">
              <ref role="3uigEE" node="4X7P4q$3qKR" resolve="FunctionCallMix.Data" />
              <node concept="3uibUv" id="4Nakfq3imt4" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
          </node>
          <node concept="37vLTG" id="4Nakfq3TlRp" role="3clF46">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="condition" />
            <node concept="10P_77" id="4Nakfq3Tm1j" role="1tU5fm" />
          </node>
          <node concept="3Tm1VV" id="4Nakfq3gIRv" role="1B3o_S" />
          <node concept="3clFbS" id="4Nakfq3gIRw" role="3clF47">
            <node concept="3cpWs6" id="4Nakfq3TmpX" role="3cqZAp">
              <node concept="1bVj0M" id="4Nakfq3hOdQ" role="3cqZAk">
                <node concept="3clFbS" id="4Nakfq3hOdR" role="1bW5cS">
                  <node concept="3SKdUt" id="4Nakfq3Tm_Q" role="3cqZAp">
                    <node concept="1PaTwC" id="4Nakfq3Tm_R" role="1aUNEU">
                      <node concept="3oM_SD" id="4Nakfq3TmEi" role="1PaTwD">
                        <property role="3oM_SC" value="Here" />
                      </node>
                      <node concept="3oM_SD" id="4Nakfq3TmEH" role="1PaTwD">
                        <property role="3oM_SC" value="we" />
                      </node>
                      <node concept="3oM_SD" id="4Nakfq3TmIo" role="1PaTwD">
                        <property role="3oM_SC" value="have" />
                      </node>
                      <node concept="3oM_SD" id="4Nakfq3TmMt" role="1PaTwD">
                        <property role="3oM_SC" value="many" />
                      </node>
                      <node concept="3oM_SD" id="4Nakfq3TmMy" role="1PaTwD">
                        <property role="3oM_SC" value="things" />
                      </node>
                      <node concept="3oM_SD" id="4Nakfq3TmMC" role="1PaTwD">
                        <property role="3oM_SC" value="happening:" />
                      </node>
                      <node concept="3oM_SD" id="4Nakfq3TmV2" role="1PaTwD">
                        <property role="3oM_SC" value="diamond" />
                      </node>
                      <node concept="3oM_SD" id="4Nakfq3TmYQ" role="1PaTwD">
                        <property role="3oM_SC" value="operator," />
                      </node>
                      <node concept="3oM_SD" id="4Nakfq3TmYZ" role="1PaTwD">
                        <property role="3oM_SC" value="generic" />
                      </node>
                      <node concept="3oM_SD" id="4Nakfq3Tn57" role="1PaTwD">
                        <property role="3oM_SC" value="method" />
                      </node>
                      <node concept="3oM_SD" id="4Nakfq3Tn8U" role="1PaTwD">
                        <property role="3oM_SC" value="call," />
                      </node>
                      <node concept="3oM_SD" id="4Nakfq3Tnd7" role="1PaTwD">
                        <property role="3oM_SC" value="this" />
                      </node>
                      <node concept="3oM_SD" id="4Nakfq3TnhI" role="1PaTwD">
                        <property role="3oM_SC" value="makes" />
                      </node>
                      <node concept="3oM_SD" id="4Nakfq3TnhW" role="1PaTwD">
                        <property role="3oM_SC" value="sure" />
                      </node>
                      <node concept="3oM_SD" id="4Nakfq3Tni$" role="1PaTwD">
                        <property role="3oM_SC" value="inference" />
                      </node>
                      <node concept="3oM_SD" id="4Nakfq3Tnne" role="1PaTwD">
                        <property role="3oM_SC" value="happens" />
                      </node>
                      <node concept="3oM_SD" id="4Nakfq3Tnrw" role="1PaTwD">
                        <property role="3oM_SC" value="in" />
                      </node>
                      <node concept="3oM_SD" id="4Nakfq3TnrM" role="1PaTwD">
                        <property role="3oM_SC" value="right" />
                      </node>
                      <node concept="3oM_SD" id="4Nakfq3TnvH" role="1PaTwD">
                        <property role="3oM_SC" value="order" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="4Nakfq3hOdS" role="3cqZAp">
                    <node concept="3clFbS" id="4Nakfq3hOdT" role="3clFbx">
                      <node concept="3cpWs6" id="4Nakfq3hOdU" role="3cqZAp">
                        <node concept="2ShNRf" id="4Nakfq3hOdV" role="3cqZAk">
                          <node concept="1pGfFk" id="4Nakfq3hOdW" role="2ShVmc">
                            <property role="373rjd" value="true" />
                            <ref role="37wK5l" node="4X7P4q$56uJ" resolve="FunctionCallMix.Data" />
                            <node concept="3cmrfG" id="4Nakfq3hOdX" role="37wK5m">
                              <property role="3cmrfH" value="2" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="4Nakfq3Tm9M" role="3clFbw">
                      <ref role="3cqZAo" node="4Nakfq3TlRp" resolve="condition" />
                    </node>
                    <node concept="9aQIb" id="4Nakfq3hOe1" role="9aQIa">
                      <node concept="3clFbS" id="4Nakfq3hOe2" role="9aQI4">
                        <node concept="3cpWs6" id="4Nakfq3hOe3" role="3cqZAp">
                          <node concept="2OqwBi" id="4Nakfq3hOe4" role="3cqZAk">
                            <node concept="37vLTw" id="4Nakfq3hOe5" role="2Oq$k0">
                              <ref role="3cqZAo" node="4Nakfq3gIRr" resolve="data" />
                            </node>
                            <node concept="liA8E" id="4Nakfq3hOe6" role="2OqNvi">
                              <ref role="37wK5l" node="4X7P4q$3tb5" resolve="copy" />
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
          <node concept="1ajhzC" id="4Nakfq3hOdI" role="3clF45">
            <node concept="3uibUv" id="4Nakfq3hOdM" role="1ajl9A">
              <ref role="3uigEE" node="4X7P4q$3qKR" resolve="FunctionCallMix.Data" />
              <node concept="3uibUv" id="4Nakfq3hOdN" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="312cEu" id="4X7P4q$3qKR" role="jymVt">
          <property role="TrG5h" value="Data" />
          <node concept="3clFbW" id="4X7P4q$56uJ" role="jymVt">
            <node concept="37vLTG" id="4X7P4q$3wXm" role="3clF46">
              <property role="TrG5h" value="data" />
              <node concept="16syzq" id="4Nakfq3hKde" role="1tU5fm">
                <ref role="16sUi3" node="4X7P4q$3t17" resolve="T" />
              </node>
            </node>
            <node concept="3cqZAl" id="4X7P4q$56uL" role="3clF45" />
            <node concept="3Tm1VV" id="4X7P4q$56uM" role="1B3o_S" />
            <node concept="3clFbS" id="4X7P4q$56uN" role="3clF47" />
          </node>
          <node concept="3clFb_" id="4X7P4q$3tb5" role="jymVt">
            <property role="TrG5h" value="copy" />
            <node concept="3clFbS" id="4X7P4q$3tb8" role="3clF47">
              <node concept="3clFbF" id="4Nakfq3huwY" role="3cqZAp">
                <node concept="10Nm6u" id="4Nakfq3huwX" role="3clFbG" />
              </node>
            </node>
            <node concept="3uibUv" id="4X7P4q$8lZO" role="3clF45">
              <ref role="3uigEE" node="4X7P4q$3qKR" resolve="FunctionCallMix.Data" />
              <node concept="16syzq" id="4X7P4q$8pxE" role="11_B2D">
                <ref role="16sUi3" node="4X7P4q$3t17" resolve="T" />
              </node>
            </node>
            <node concept="3Tm1VV" id="4X7P4q$3tg3" role="1B3o_S" />
          </node>
          <node concept="3Tm6S6" id="5J4Txs1xHJf" role="1B3o_S" />
          <node concept="16euLQ" id="4X7P4q$3t17" role="16eVyc">
            <property role="TrG5h" value="T" />
          </node>
        </node>
        <node concept="3Tm1VV" id="4Nakfq3gINF" role="1B3o_S" />
        <node concept="7CXmI" id="4Nakfq3Toqw" role="lGtFl">
          <node concept="7OXhh" id="4Nakfq3Tow5" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="2YQyJG3fPIR">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="Subtyping" />
    <node concept="1qefOq" id="2YQyJG3fPLP" role="1SKRRt">
      <node concept="312cEu" id="2YQyJG3fPMk" role="1qenE9">
        <property role="TrG5h" value="TestClass" />
        <node concept="312cEu" id="2YQyJG3gq7Y" role="jymVt">
          <property role="2bfB8j" value="true" />
          <property role="TrG5h" value="MySequence" />
          <property role="1sVAO0" value="true" />
          <node concept="3clFb_" id="5Ffu4tBUx6Q" role="jymVt">
            <property role="TrG5h" value="select" />
            <property role="1EzhhJ" value="true" />
            <node concept="3Tm1VV" id="5Ffu4tBUx6R" role="1B3o_S" />
            <node concept="16euLQ" id="5Ffu4tBUx6S" role="16eVyc">
              <property role="TrG5h" value="U" />
            </node>
            <node concept="3uibUv" id="5Ffu4tBUx6T" role="3clF45">
              <ref role="3uigEE" node="2YQyJG3gq7Y" resolve="TestClass.MySequence" />
              <node concept="16syzq" id="5Ffu4tBUx6U" role="11_B2D">
                <ref role="16sUi3" node="5Ffu4tBUx6S" resolve="U" />
              </node>
            </node>
            <node concept="37vLTG" id="2YQyJG3gKZu" role="3clF46">
              <property role="TrG5h" value="selector" />
              <node concept="1ajhzC" id="6vGufITsqbx" role="1tU5fm">
                <node concept="3qUtgH" id="6vGufITsqby" role="1ajw0F">
                  <node concept="16syzq" id="6vGufITsqbz" role="3qUvdb">
                    <ref role="16sUi3" node="2YQyJG3gqqF" resolve="T" />
                  </node>
                </node>
                <node concept="16syzq" id="6vGufITsqb$" role="1ajl9A">
                  <ref role="16sUi3" node="5Ffu4tBUx6S" resolve="U" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5Ffu4tBUx6Z" role="3clF47" />
          </node>
          <node concept="3Tm1VV" id="2YQyJG3gq7Z" role="1B3o_S" />
          <node concept="16euLQ" id="2YQyJG3gqqF" role="16eVyc">
            <property role="TrG5h" value="T" />
          </node>
        </node>
        <node concept="312cEu" id="25RNw_Cdl$e" role="jymVt">
          <property role="TrG5h" value="MySelector" />
          <property role="1sVAO0" value="true" />
          <node concept="3clFb_" id="25RNw_Cdl$m" role="jymVt">
            <property role="1EzhhJ" value="true" />
            <property role="TrG5h" value="select" />
            <node concept="3Tm1VV" id="25RNw_Cdl$n" role="1B3o_S" />
            <node concept="16syzq" id="25RNw_Cdl$o" role="3clF45">
              <ref role="16sUi3" node="25RNw_Cdl$l" resolve="S" />
            </node>
            <node concept="37vLTG" id="25RNw_Cdl$p" role="3clF46">
              <property role="TrG5h" value="t" />
              <node concept="16syzq" id="25RNw_Cdl$q" role="1tU5fm">
                <ref role="16sUi3" node="25RNw_Cdl$k" resolve="T" />
              </node>
            </node>
            <node concept="3clFbS" id="25RNw_Cdl$r" role="3clF47" />
          </node>
          <node concept="3Tm1VV" id="25RNw_Cdl$f" role="1B3o_S" />
          <node concept="16euLQ" id="25RNw_Cdl$k" role="16eVyc">
            <property role="TrG5h" value="T" />
          </node>
          <node concept="16euLQ" id="25RNw_Cdl$l" role="16eVyc">
            <property role="TrG5h" value="S" />
          </node>
          <node concept="3_nuBB" id="25RNw_Cdl$w" role="jymVt">
            <node concept="37vLTG" id="25RNw_Cdl$$" role="3clF46">
              <property role="TrG5h" value="t" />
              <node concept="16syzq" id="25RNw_Cdl$A" role="1tU5fm">
                <ref role="16sUi3" node="25RNw_Cdl$k" resolve="T" />
              </node>
            </node>
            <node concept="16syzq" id="25RNw_Cdl$B" role="3clF45">
              <ref role="16sUi3" node="25RNw_Cdl$l" resolve="S" />
            </node>
            <node concept="3Tm1VV" id="25RNw_Cdl$y" role="1B3o_S" />
            <node concept="3clFbS" id="25RNw_Cdl$z" role="3clF47">
              <node concept="3clFbF" id="2YQyJG3hadz" role="3cqZAp">
                <node concept="10Nm6u" id="2YQyJG3hady" role="3clFbG" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2tJIrI" id="2YQyJG3h8OJ" role="jymVt" />
        <node concept="3clFb_" id="2YQyJG3fPQ7" role="jymVt">
          <property role="TrG5h" value="test" />
          <node concept="37vLTG" id="2YQyJG3gb7m" role="3clF46">
            <property role="TrG5h" value="seq" />
            <node concept="3uibUv" id="2YQyJG3gb7o" role="1tU5fm">
              <ref role="3uigEE" node="2YQyJG3gq7Y" resolve="TestClass.MySequence" />
              <node concept="3uibUv" id="2YQyJG3gb7p" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
          </node>
          <node concept="37vLTG" id="2YQyJG3gbGB" role="3clF46">
            <property role="TrG5h" value="selector" />
            <node concept="3uibUv" id="2YQyJG3haxo" role="1tU5fm">
              <ref role="3uigEE" node="25RNw_Cdl$e" resolve="TestClass.MySelector" />
              <node concept="3uibUv" id="2YQyJG3haVT" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
              <node concept="3uibUv" id="2YQyJG3hb7i" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2YQyJG3fPQa" role="3clF47">
            <node concept="3SKdUt" id="5Q4xWbZYVVE" role="3cqZAp">
              <node concept="1PaTwC" id="5Q4xWbZYVVF" role="1aUNEU">
                <node concept="3oM_SD" id="5Q4xWbZYW1f" role="1PaTwD">
                  <property role="3oM_SC" value="This" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZYW1G" role="1PaTwD">
                  <property role="3oM_SC" value="test" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZYW2b" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZYW2f" role="1PaTwD">
                  <property role="3oM_SC" value="case" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZYW2J" role="1PaTwD">
                  <property role="3oM_SC" value="that" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZYW3U" role="1PaTwD">
                  <property role="3oM_SC" value="yielded" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZYW4s" role="1PaTwD">
                  <property role="3oM_SC" value="strange" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZeZs" role="1PaTwD">
                  <property role="3oM_SC" value="results" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZf6c" role="1PaTwD">
                  <property role="3oM_SC" value="when" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZf7F" role="1PaTwD">
                  <property role="3oM_SC" value="reaching" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZYWhT" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZYWio" role="1PaTwD">
                  <property role="3oM_SC" value="inequation" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZYWj_" role="1PaTwD">
                  <property role="3oM_SC" value="MySelector&lt;Integer," />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZYWnV" role="1PaTwD">
                  <property role="3oM_SC" value="Integer&gt;" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZYWiT" role="1PaTwD">
                  <property role="3oM_SC" value=":&lt;=:" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZYWiU" role="1PaTwD">
                  <property role="3oM_SC" value="{?" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZYWiV" role="1PaTwD">
                  <property role="3oM_SC" value="super" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZYWiW" role="1PaTwD">
                  <property role="3oM_SC" value="Integer" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZYWiX" role="1PaTwD">
                  <property role="3oM_SC" value="=&gt;" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZYWiY" role="1PaTwD">
                  <property role="3oM_SC" value="m}" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="5Q4xWbZZfgX" role="3cqZAp">
              <node concept="1PaTwC" id="5Q4xWbZZfgY" role="1aUNEU">
                <node concept="3oM_SD" id="5Q4xWbZZfny" role="1PaTwD">
                  <property role="3oM_SC" value="Legacy" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZfo7" role="1PaTwD">
                  <property role="3oM_SC" value="implementation" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZfp0" role="1PaTwD">
                  <property role="3oM_SC" value="enumerated" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZfMA" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZfNs" role="1PaTwD">
                  <property role="3oM_SC" value="supertype" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZfpU" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZhV6" role="1PaTwD">
                  <property role="3oM_SC" value="MySelector:" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZhV_" role="1PaTwD">
                  <property role="3oM_SC" value="{Integer" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZfxd" role="1PaTwD">
                  <property role="3oM_SC" value="=&gt;" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZfzh" role="1PaTwD">
                  <property role="3oM_SC" value="Integer}," />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZfzQ" role="1PaTwD">
                  <property role="3oM_SC" value="which" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZfK7" role="1PaTwD">
                  <property role="3oM_SC" value="had" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZfP9" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZfPA" role="1PaTwD">
                  <property role="3oM_SC" value="supertype" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZf$s" role="1PaTwD">
                  <property role="3oM_SC" value="_FunctionTypes....&lt;?" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZfBa" role="1PaTwD">
                  <property role="3oM_SC" value="super" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZfBM" role="1PaTwD">
                  <property role="3oM_SC" value="Integer," />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZfCr" role="1PaTwD">
                  <property role="3oM_SC" value="?" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZfCE" role="1PaTwD">
                  <property role="3oM_SC" value="extends" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZfDl" role="1PaTwD">
                  <property role="3oM_SC" value="Integer&gt;," />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZfEs" role="1PaTwD">
                  <property role="3oM_SC" value="which" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZfLL" role="1PaTwD">
                  <property role="3oM_SC" value="had" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZfQU" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZfRO" role="1PaTwD">
                  <property role="3oM_SC" value="supertype" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZfF9" role="1PaTwD">
                  <property role="3oM_SC" value="{?" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZftn" role="1PaTwD">
                  <property role="3oM_SC" value="super" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZftS" role="1PaTwD">
                  <property role="3oM_SC" value="Integer" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZfv6" role="1PaTwD">
                  <property role="3oM_SC" value="=&gt;" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZfFs" role="1PaTwD">
                  <property role="3oM_SC" value="?" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZfGb" role="1PaTwD">
                  <property role="3oM_SC" value="extends" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZfU4" role="1PaTwD">
                  <property role="3oM_SC" value="Integer}" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="5Q4xWbZZfW0" role="3cqZAp">
              <node concept="1PaTwC" id="5Q4xWbZZfW1" role="1aUNEU">
                <node concept="3oM_SD" id="5Q4xWbZZg2V" role="1PaTwD">
                  <property role="3oM_SC" value="The" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZg2X" role="1PaTwD">
                  <property role="3oM_SC" value="engine," />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZg3s" role="1PaTwD">
                  <property role="3oM_SC" value="avoiding" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZg3V" role="1PaTwD">
                  <property role="3oM_SC" value="use" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZg4r" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZg4x" role="1PaTwD">
                  <property role="3oM_SC" value="replacement" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZg53" role="1PaTwD">
                  <property role="3oM_SC" value="rules" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZg5A" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZg5J" role="1PaTwD">
                  <property role="3oM_SC" value="finding" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZg6k" role="1PaTwD">
                  <property role="3oM_SC" value="{?" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZg7l" role="1PaTwD">
                  <property role="3oM_SC" value="super" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZg7W" role="1PaTwD">
                  <property role="3oM_SC" value="Integer" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZg9s" role="1PaTwD">
                  <property role="3oM_SC" value="=&gt;" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZg9E" role="1PaTwD">
                  <property role="3oM_SC" value="?" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgak" role="1PaTwD">
                  <property role="3oM_SC" value="extends" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgaZ" role="1PaTwD">
                  <property role="3oM_SC" value="Integer}" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgbF" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgbX" role="1PaTwD">
                  <property role="3oM_SC" value="be" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgcF" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgcZ" role="1PaTwD">
                  <property role="3oM_SC" value="valid" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgdJ" role="1PaTwD">
                  <property role="3oM_SC" value="pattern" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgew" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZghf" role="1PaTwD">
                  <property role="3oM_SC" value="{?" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZghB" role="1PaTwD">
                  <property role="3oM_SC" value="super" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgjg" role="1PaTwD">
                  <property role="3oM_SC" value="Integer" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgln" role="1PaTwD">
                  <property role="3oM_SC" value="=&gt;" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZglM" role="1PaTwD">
                  <property role="3oM_SC" value="m}," />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgn4" role="1PaTwD">
                  <property role="3oM_SC" value="assigned" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgnW" role="1PaTwD">
                  <property role="3oM_SC" value="m" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgoq" role="1PaTwD">
                  <property role="3oM_SC" value="=" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgsc" role="1PaTwD">
                  <property role="3oM_SC" value="?" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgsG" role="1PaTwD">
                  <property role="3oM_SC" value="extends" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgtC" role="1PaTwD">
                  <property role="3oM_SC" value="Integer" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="5Q4xWbZZgB2" role="3cqZAp">
              <node concept="1PaTwC" id="5Q4xWbZZgB3" role="1aUNEU">
                <node concept="3oM_SD" id="5Q4xWbZZgIq" role="1PaTwD">
                  <property role="3oM_SC" value="In" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgIs" role="1PaTwD">
                  <property role="3oM_SC" value="another" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgIV" role="1PaTwD">
                  <property role="3oM_SC" value="situation" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgJq" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgJU" role="1PaTwD">
                  <property role="3oM_SC" value="{Integer" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgKr" role="1PaTwD">
                  <property role="3oM_SC" value="=&gt;" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgKy" role="1PaTwD">
                  <property role="3oM_SC" value="m}" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgLw" role="1PaTwD">
                  <property role="3oM_SC" value="instead" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgLD" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgMe" role="1PaTwD">
                  <property role="3oM_SC" value="{?" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgMp" role="1PaTwD">
                  <property role="3oM_SC" value="super" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgN0" role="1PaTwD">
                  <property role="3oM_SC" value="Integer" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgNC" role="1PaTwD">
                  <property role="3oM_SC" value="=&gt;" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgOh" role="1PaTwD">
                  <property role="3oM_SC" value="m}," />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgPm" role="1PaTwD">
                  <property role="3oM_SC" value="m" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgPA" role="1PaTwD">
                  <property role="3oM_SC" value="would" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgPR" role="1PaTwD">
                  <property role="3oM_SC" value="be" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgQ$" role="1PaTwD">
                  <property role="3oM_SC" value="Integer," />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgRH" role="1PaTwD">
                  <property role="3oM_SC" value="which" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgS1" role="1PaTwD">
                  <property role="3oM_SC" value="does" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgSm" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgT7" role="1PaTwD">
                  <property role="3oM_SC" value="make" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgTu" role="1PaTwD">
                  <property role="3oM_SC" value="sense" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgUh" role="1PaTwD">
                  <property role="3oM_SC" value="(parameter" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgVw" role="1PaTwD">
                  <property role="3oM_SC" value="type" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgVU" role="1PaTwD">
                  <property role="3oM_SC" value="should" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgWl" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZhY6" role="1PaTwD">
                  <property role="3oM_SC" value="be" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgXc" role="1PaTwD">
                  <property role="3oM_SC" value="correlated" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgY4" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgYy" role="1PaTwD">
                  <property role="3oM_SC" value="return" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgZs" role="1PaTwD">
                  <property role="3oM_SC" value="type" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZgZW" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZh0t" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZh1q" role="1PaTwD">
                  <property role="3oM_SC" value="case)" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5Q4xWbZZhJ8" role="3cqZAp" />
            <node concept="3SKdUt" id="5Q4xWbZZhbp" role="3cqZAp">
              <node concept="1PaTwC" id="5Q4xWbZZhbq" role="1aUNEU">
                <node concept="3oM_SD" id="5Q4xWbZZhoU" role="1PaTwD">
                  <property role="3oM_SC" value="The" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZhlk" role="1PaTwD">
                  <property role="3oM_SC" value="following" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZhlN" role="1PaTwD">
                  <property role="3oM_SC" value="properly" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZhnY" role="1PaTwD">
                  <property role="3oM_SC" value="typechecks" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZhpq" role="1PaTwD">
                  <property role="3oM_SC" value="if" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZhpV" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZhq2" role="1PaTwD">
                  <property role="3oM_SC" value="correctly" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZhrj" role="1PaTwD">
                  <property role="3oM_SC" value="get" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZhH6" role="1PaTwD">
                  <property role="3oM_SC" value="Integer" />
                </node>
                <node concept="3oM_SD" id="5Q4xWbZZhHF" role="1PaTwD">
                  <property role="3oM_SC" value="matched" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="hxPJG_8" role="3cqZAp">
              <node concept="3cpWsn" id="hxPJG_9" role="3cpWs9">
                <property role="TrG5h" value="test" />
                <node concept="3uibUv" id="hxPJG_a" role="1tU5fm">
                  <ref role="3uigEE" node="2YQyJG3gq7Y" resolve="TestClass.MySequence" />
                  <node concept="3uibUv" id="hxPJG_c" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                </node>
                <node concept="2OqwBi" id="hI0lxiN" role="33vP2m">
                  <node concept="37vLTw" id="3GM_nagTxtq" role="2Oq$k0">
                    <ref role="3cqZAo" node="2YQyJG3gb7m" resolve="seq" />
                  </node>
                  <node concept="liA8E" id="hI0lxiO" role="2OqNvi">
                    <ref role="37wK5l" node="5Ffu4tBUx6Q" resolve="select" />
                    <node concept="37vLTw" id="3GM_nagTzKw" role="37wK5m">
                      <ref role="3cqZAo" node="2YQyJG3gbGB" resolve="selector" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5Q4xWbZZifW" role="3cqZAp">
              <node concept="37vLTw" id="5Q4xWbZZioU" role="3cqZAk">
                <ref role="3cqZAo" node="hxPJG_9" resolve="test" />
              </node>
            </node>
          </node>
          <node concept="3uibUv" id="5Q4xWbZZivs" role="3clF45">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="3Tm1VV" id="5Q4xWbZZi0A" role="1B3o_S" />
        </node>
        <node concept="3Tm1VV" id="2YQyJG3fPMl" role="1B3o_S" />
        <node concept="7CXmI" id="5Q4xWbZZiCR" role="lGtFl">
          <node concept="7OXhh" id="5Q4xWbZZiJ4" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="7yNlrCgbORk">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="ThrowTypes" />
    <node concept="1qefOq" id="7yNlrCgbOVn" role="1SKRRt">
      <node concept="312cEu" id="7yNlrCgbOVl" role="1qenE9">
        <property role="TrG5h" value="ThrowTypeTest" />
        <node concept="3HP615" id="7yNlrCgbQgI" role="jymVt">
          <property role="2bfB8j" value="true" />
          <property role="TrG5h" value="FunInterface" />
          <node concept="3clFb_" id="7yNlrCgbQyd" role="jymVt">
            <property role="TrG5h" value="produce" />
            <node concept="3clFbS" id="7yNlrCgbQyg" role="3clF47" />
            <node concept="3Tm1VV" id="7yNlrCgbQyh" role="1B3o_S" />
            <node concept="10Oyi0" id="7yNlrCgbQvL" role="3clF45" />
            <node concept="3uibUv" id="7yNlrCgciEZ" role="Sfmx6">
              <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
            </node>
          </node>
          <node concept="3Tm1VV" id="7yNlrCgbQgJ" role="1B3o_S" />
        </node>
        <node concept="2YIFZL" id="7yNlrCgbOZM" role="jymVt">
          <property role="TrG5h" value="main" />
          <node concept="37vLTG" id="7yNlrCgbOZN" role="3clF46">
            <property role="TrG5h" value="args" />
            <node concept="10Q1$e" id="7yNlrCgbOZO" role="1tU5fm">
              <node concept="17QB3L" id="7yNlrCgbOZP" role="10Q1$1" />
            </node>
          </node>
          <node concept="3uibUv" id="a5PP$GuFvu" role="3clF45">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="3Tm1VV" id="7yNlrCgbOZR" role="1B3o_S" />
          <node concept="3clFbS" id="7yNlrCgbOZS" role="3clF47">
            <node concept="3SKdUt" id="7yNlrCgcjDv" role="3cqZAp">
              <node concept="1PaTwC" id="7yNlrCgcjDw" role="1aUNEU">
                <node concept="3oM_SD" id="7yNlrCgcjFw" role="1PaTwD">
                  <property role="3oM_SC" value="Test" />
                </node>
                <node concept="3oM_SD" id="7yNlrCgcjGy" role="1PaTwD">
                  <property role="3oM_SC" value="MPS-11936," />
                </node>
                <node concept="3oM_SD" id="7yNlrCgcjOA" role="1PaTwD">
                  <property role="3oM_SC" value="used" />
                </node>
                <node concept="3oM_SD" id="7yNlrCgcjPE" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="7yNlrCgcjPJ" role="1PaTwD">
                  <property role="3oM_SC" value="be" />
                </node>
                <node concept="3oM_SD" id="7yNlrCgcjPP" role="1PaTwD">
                  <property role="3oM_SC" value="some" />
                </node>
                <node concept="3oM_SD" id="7yNlrCgcjTw" role="1PaTwD">
                  <property role="3oM_SC" value="code" />
                </node>
                <node concept="3oM_SD" id="7yNlrCgcjUC" role="1PaTwD">
                  <property role="3oM_SC" value="that" />
                </node>
                <node concept="3oM_SD" id="7yNlrCgcjVL" role="1PaTwD">
                  <property role="3oM_SC" value="didn't" />
                </node>
                <node concept="3oM_SD" id="7yNlrCgcjWV" role="1PaTwD">
                  <property role="3oM_SC" value="typecheck" />
                </node>
                <node concept="3oM_SD" id="7yNlrCgck0v" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="7yNlrCgck1F" role="1PaTwD">
                  <property role="3oM_SC" value="closures.test," />
                </node>
                <node concept="3oM_SD" id="7yNlrCgck3S" role="1PaTwD">
                  <property role="3oM_SC" value="but" />
                </node>
                <node concept="3oM_SD" id="7yNlrCgck6_" role="1PaTwD">
                  <property role="3oM_SC" value="I'd" />
                </node>
                <node concept="3oM_SD" id="7yNlrCgck6O" role="1PaTwD">
                  <property role="3oM_SC" value="rather" />
                </node>
                <node concept="3oM_SD" id="7yNlrCgck84" role="1PaTwD">
                  <property role="3oM_SC" value="have" />
                </node>
                <node concept="3oM_SD" id="7yNlrCgck9l" role="1PaTwD">
                  <property role="3oM_SC" value="it" />
                </node>
                <node concept="3oM_SD" id="7yNlrCgck9B" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                </node>
                <node concept="3oM_SD" id="7yNlrCgck9U" role="1PaTwD">
                  <property role="3oM_SC" value="an" />
                </node>
                <node concept="3oM_SD" id="7yNlrCgckbe" role="1PaTwD">
                  <property role="3oM_SC" value="explicitly" />
                </node>
                <node concept="3oM_SD" id="7yNlrCgckcz" role="1PaTwD">
                  <property role="3oM_SC" value="muted" />
                </node>
                <node concept="3oM_SD" id="7yNlrCgckcT" role="1PaTwD">
                  <property role="3oM_SC" value="test" />
                </node>
                <node concept="3oM_SD" id="7yNlrCgckeg" role="1PaTwD">
                  <property role="3oM_SC" value="than" />
                </node>
                <node concept="3oM_SD" id="7yNlrCgckeC" role="1PaTwD">
                  <property role="3oM_SC" value="muting" />
                </node>
                <node concept="3oM_SD" id="7yNlrCgckh1" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="7yNlrCgckhr" role="1PaTwD">
                  <property role="3oM_SC" value="typechecking" />
                </node>
                <node concept="3oM_SD" id="7yNlrCgckiQ" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="7yNlrCgckji" role="1PaTwD">
                  <property role="3oM_SC" value="closures.test" />
                </node>
                <node concept="3oM_SD" id="7yNlrCgckoJ" role="1PaTwD">
                  <property role="3oM_SC" value="(which" />
                </node>
                <node concept="3oM_SD" id="7yNlrCgckqd" role="1PaTwD">
                  <property role="3oM_SC" value="matters!)" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7yNlrCgbPc6" role="3cqZAp">
              <node concept="3cpWsn" id="7yNlrCgbPc9" role="3cpWs9">
                <property role="TrG5h" value="result" />
                <node concept="1bVj0M" id="7yNlrCgbPky" role="33vP2m">
                  <node concept="3clFbS" id="7yNlrCgbPk$" role="1bW5cS">
                    <node concept="YS8fn" id="7yNlrCgbPpV" role="3cqZAp">
                      <node concept="2ShNRf" id="7yNlrCgbPsp" role="YScLw">
                        <node concept="1pGfFk" id="7yNlrCgbPHP" role="2ShVmc">
                          <property role="373rjd" value="true" />
                          <ref role="37wK5l" to="wyt6:~Exception.&lt;init&gt;(java.lang.String)" resolve="Exception" />
                          <node concept="Xl_RD" id="7yNlrCgbPMx" role="37wK5m">
                            <property role="Xl_RC" value="this is an error" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="7yNlrCgbQG6" role="1tU5fm">
                  <ref role="3uigEE" node="7yNlrCgbQgI" resolve="ThrowTypeTest.FunInterface" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="a5PP$GuFrh" role="3cqZAp">
              <node concept="37vLTw" id="a5PP$GuFss" role="3cqZAk">
                <ref role="3cqZAo" node="7yNlrCgbPc9" resolve="result" />
              </node>
            </node>
          </node>
          <node concept="3uibUv" id="7yNlrCgciQk" role="Sfmx6">
            <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
          </node>
        </node>
        <node concept="3Tm1VV" id="7yNlrCgbOVm" role="1B3o_S" />
        <node concept="7CXmI" id="7yNlrCgciVy" role="lGtFl">
          <node concept="7OXhh" id="7yNlrCgciXA" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
      </node>
      <node concept="15s5l7" id="7yNlrCgfxYZ" role="lGtFl">
        <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: {=&gt;void} is not a subtype of FunInterface: no result type in function type&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c89590337(jetbrains.mps.baseLanguage.closures.typesystem)/1202742336483,r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/4371905702104109662]&quot;;" />
        <property role="huDt6" value="Error: {=&gt;void} is not a subtype of FunInterface: no result type in function type" />
      </node>
      <node concept="15s5l7" id="7yNlrCgfxQ$" role="lGtFl">
        <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: type void is not a subtype of int&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c89590337(jetbrains.mps.baseLanguage.closures.typesystem)/6738660214039477268,r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/4371905702104109662]&quot;;" />
        <property role="huDt6" value="Error: type void is not a subtype of int" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="6eup$H2Z1gV">
    <property role="TrG5h" value="FunIface" />
    <property role="2bfB8j" value="true" />
    <node concept="3Tm1VV" id="6eup$H2Z1gW" role="1B3o_S" />
    <node concept="16euLQ" id="6eup$H2Z7ig" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
    <node concept="16euLQ" id="6eup$H2Z9zc" role="16eVyc">
      <property role="TrG5h" value="S" />
    </node>
    <node concept="3clFb_" id="6eup$H2Z1gZ" role="jymVt">
      <property role="TrG5h" value="method" />
      <node concept="16syzq" id="6eup$H2Z7ii" role="3clF45">
        <ref role="16sUi3" node="6eup$H2Z7ig" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="6eup$H2Z1h1" role="1B3o_S" />
      <node concept="3clFbS" id="6eup$H2Z1h2" role="3clF47" />
      <node concept="37vLTG" id="6eup$H2Z9ze" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="16syzq" id="6eup$H2Z9zf" role="1tU5fm">
          <ref role="16sUi3" node="6eup$H2Z9zc" resolve="S" />
        </node>
      </node>
    </node>
  </node>
</model>

