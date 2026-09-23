<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:fc11204(checkpoints/jetbrains.mps.lang.structure.typesystem@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="tpcj" ref="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" />
    <import index="mg3u" ref="r:0799ed23-f21a-4dba-ac61-5b80d66bec13(jetbrains.mps.lang.behavior.plugin)" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors(MPS.Core/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="zavc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors.messageTargets(MPS.Core/)" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="tpcc" ref="r:00000000-0000-4000-0000-011c89590290(jetbrains.mps.lang.structure.plugin)" />
    <import index="qurh" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.typesystem.runtime(MPS.Core/)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="yg2w" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util.containers(MPS.Core/)" />
    <import index="tpc2" ref="r:00000000-0000-4000-0000-011c8959029e(jetbrains.mps.lang.editor.structure)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="1i04" ref="r:3270011d-8b2d-4938-8dff-d256a759e017(jetbrains.mps.lang.behavior.structure)" />
    <import index="twe9" ref="r:28e6d713-c3c3-493e-8d97-e9a2c49f28ce(jetbrains.mps.lang.structure.util)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="9anm" ref="r:6f374023-1b4e-4a80-8bf6-2cc3148faa52(jetbrains.mps.lang.editor.plugin)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="u78q" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.typesystem.inference(MPS.Core/)" />
    <import index="iwwu" ref="r:2c4d9270-b6d6-44af-aecd-e01a223680db(jetbrains.mps.kernel.model)" />
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
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P">
        <reference id="1182955020723" name="classConcept" index="1HBi2w" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
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
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
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
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="5808518347809715508" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_InputNode" flags="nn" index="385nmt">
        <property id="5808518347809748738" name="presentation" index="385vuF" />
        <child id="5808518347809747118" name="node" index="385v07" />
      </concept>
      <concept id="3864140621129707969" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_Mappings" flags="nn" index="39dXUE">
        <child id="3864140621129713349" name="labels" index="39e2AI" />
      </concept>
      <concept id="3864140621129713351" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_NodeMapEntry" flags="nn" index="39e2AG">
        <property id="5843998055530255671" name="isNewRoot" index="2mV_xN" />
        <reference id="3864140621129713371" name="inputOrigin" index="39e2AK" />
        <child id="5808518347809748862" name="inputNode" index="385vvn" />
        <child id="3864140621129713365" name="outputNode" index="39e2AY" />
      </concept>
      <concept id="3864140621129713348" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_LabelEntry" flags="nn" index="39e2AJ">
        <property id="3864140621129715945" name="label" index="39e3Y2" />
        <child id="3864140621129715947" name="entries" index="39e3Y0" />
      </concept>
      <concept id="3864140621129713362" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_NodeRef" flags="nn" index="39e2AT">
        <reference id="3864140621129713363" name="node" index="39e2AS" />
      </concept>
      <concept id="3637169702552512264" name="jetbrains.mps.lang.generator.structure.ElementaryNodeId" flags="ng" index="3u3nmq">
        <property id="3637169702552512269" name="nodeId" index="3u3nmv" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
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
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
      </concept>
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="4733039728785194814" name="jetbrains.mps.lang.modelapi.structure.NamedNodeReference" flags="ng" index="ZC_QK">
        <reference id="7256306938026143658" name="target" index="2aWVGs" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="2990591960991114251" name="jetbrains.mps.lang.typesystem.structure.OriginalNodeId" flags="ng" index="6wLe0">
        <property id="2990591960991114264" name="nodeId" index="6wLej" />
        <property id="2990591960991114295" name="modelId" index="6wLeW" />
      </concept>
      <concept id="1216383337216" name="jetbrains.mps.lang.typesystem.structure.ConceptFunctionParameter_node" flags="nn" index="Q6c8r" />
    </language>
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="1174294166120" name="jetbrains.mps.baseLanguageInternal.structure.InternalPartialInstanceMethodCall" flags="nn" index="1DoJHT">
        <property id="1174294288199" name="methodName" index="1Dpdpm" />
        <child id="1174313653259" name="returnType" index="1Ez5kq" />
        <child id="1174317636233" name="instance" index="1EMhIo" />
        <child id="1174318197094" name="actualArgument" index="1EOqxR" />
      </concept>
      <concept id="1176743162354" name="jetbrains.mps.baseLanguageInternal.structure.InternalVariableReference" flags="nn" index="3VmV3z">
        <property id="1176743296073" name="name" index="3VnrPo" />
        <child id="1176743202636" name="type" index="3Vn4Tt" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4705942098322609812" name="jetbrains.mps.lang.smodel.structure.EnumMember_IsOperation" flags="ng" index="21noJN">
        <child id="4705942098322609813" name="member" index="21noJM" />
      </concept>
      <concept id="4705942098322467729" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="ng" index="21nZrQ">
        <reference id="4705942098322467736" name="decl" index="21nZrZ" />
      </concept>
      <concept id="1966870290083281362" name="jetbrains.mps.lang.smodel.structure.EnumMember_NameOperation" flags="ng" index="24Tkf9" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="1166648550386" name="jetbrains.mps.lang.smodel.structure.Model_CreateNewRootNodeOperation" flags="nn" index="2xF2bX" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1143235216708" name="jetbrains.mps.lang.smodel.structure.Model_CreateNewNodeOperation" flags="nn" index="I8ghe">
        <reference id="1143235391024" name="concept" index="I8UWU" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG">
        <child id="6750920497477046361" name="conceptArgument" index="3MHsoP" />
      </concept>
      <concept id="1171323947159" name="jetbrains.mps.lang.smodel.structure.Model_NodesOperation" flags="nn" index="2SmgA7">
        <child id="1758937410080001570" name="conceptArgument" index="1dBWTz" />
      </concept>
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
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
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="942336824646299470" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetPointerOperation" flags="ng" index="1AR3kn">
        <child id="942336824646299471" name="linkTarget" index="1AR3km" />
      </concept>
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="3661776679762942774" name="jetbrains.mps.lang.smodel.structure.Node_IsOperation" flags="ng" index="1QLmlb">
        <child id="3661776679762942860" name="ref" index="1QLmnL" />
      </concept>
      <concept id="3320646261221695165" name="jetbrains.mps.lang.smodel.structure.NodePointerArg_Identity" flags="ng" index="1QN52j">
        <child id="3320646261221695238" name="ref" index="1QN54C" />
      </concept>
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
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
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
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1227022179634" name="jetbrains.mps.baseLanguage.collections.structure.AddLastElementOperation" flags="nn" index="2Ke9KJ" />
      <concept id="1227026082377" name="jetbrains.mps.baseLanguage.collections.structure.RemoveFirstElementOperation" flags="nn" index="2Kt2Hk" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
      <concept id="5686963296372475025" name="jetbrains.mps.baseLanguage.collections.structure.QueueType" flags="in" index="3O6Q9H" />
    </language>
  </registry>
  <node concept="312cEu" id="0">
    <property role="TrG5h" value="AddExtendedLanguage_QuickFix" />
    <uo k="s:originTrace" v="n:3013258720419439302" />
    <node concept="3clFbW" id="1" role="jymVt">
      <uo k="s:originTrace" v="n:3013258720419439302" />
      <node concept="3clFbS" id="7" role="3clF47">
        <uo k="s:originTrace" v="n:3013258720419439302" />
        <node concept="XkiVB" id="a" role="3cqZAp">
          <ref role="37wK5l" to="2gg1:~QuickFix_Runtime.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="QuickFix_Runtime" />
          <uo k="s:originTrace" v="n:3013258720419439302" />
          <node concept="2ShNRf" id="b" role="37wK5m">
            <uo k="s:originTrace" v="n:3013258720419439302" />
            <node concept="1pGfFk" id="c" role="2ShVmc">
              <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
              <uo k="s:originTrace" v="n:3013258720419439302" />
              <node concept="Xl_RD" id="d" role="37wK5m">
                <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                <uo k="s:originTrace" v="n:3013258720419439302" />
              </node>
              <node concept="Xl_RD" id="e" role="37wK5m">
                <property role="Xl_RC" value="3013258720419439302" />
                <uo k="s:originTrace" v="n:3013258720419439302" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="8" role="3clF45">
        <uo k="s:originTrace" v="n:3013258720419439302" />
      </node>
      <node concept="3Tm1VV" id="9" role="1B3o_S">
        <uo k="s:originTrace" v="n:3013258720419439302" />
      </node>
    </node>
    <node concept="3clFb_" id="2" role="jymVt">
      <property role="TrG5h" value="getDescription" />
      <uo k="s:originTrace" v="n:3013258720419439302" />
      <node concept="3Tm1VV" id="f" role="1B3o_S">
        <uo k="s:originTrace" v="n:3013258720419439302" />
      </node>
      <node concept="3clFbS" id="g" role="3clF47">
        <uo k="s:originTrace" v="n:3013258720419439308" />
        <node concept="3clFbF" id="j" role="3cqZAp">
          <uo k="s:originTrace" v="n:3013258720419439309" />
          <node concept="3cpWs3" id="k" role="3clFbG">
            <uo k="s:originTrace" v="n:3013258720419439314" />
            <node concept="Xl_RD" id="l" role="3uHU7w">
              <property role="Xl_RC" value=" to extended languages" />
              <uo k="s:originTrace" v="n:3013258720419439318" />
            </node>
            <node concept="3cpWs3" id="m" role="3uHU7B">
              <uo k="s:originTrace" v="n:3013258720419439319" />
              <node concept="1eOMI4" id="n" role="3uHU7w">
                <uo k="s:originTrace" v="n:3013258720419439325" />
                <node concept="10QFUN" id="p" role="1eOMHV">
                  <node concept="3uibUv" id="q" role="10QFUM">
                    <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                    <uo k="s:originTrace" v="n:3013258720419439324" />
                  </node>
                  <node concept="AH0OO" id="r" role="10QFUP">
                    <node concept="3cmrfG" id="s" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="1DoJHT" id="t" role="AHHXb">
                      <property role="1Dpdpm" value="getField" />
                      <node concept="Xl_RD" id="u" role="1EOqxR">
                        <property role="Xl_RC" value="extLang" />
                      </node>
                      <node concept="10Q1$e" id="v" role="1Ez5kq">
                        <node concept="3uibUv" id="x" role="10Q1$1">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
                      <node concept="Xjq3P" id="w" role="1EMhIo">
                        <ref role="1HBi2w" node="0" resolve="AddExtendedLanguage_QuickFix" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="o" role="3uHU7B">
                <property role="Xl_RC" value="Add language " />
                <uo k="s:originTrace" v="n:3013258720419439310" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="h" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:3013258720419439302" />
        <node concept="3uibUv" id="y" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:3013258720419439302" />
        </node>
      </node>
      <node concept="17QB3L" id="i" role="3clF45">
        <uo k="s:originTrace" v="n:3013258720419439302" />
      </node>
    </node>
    <node concept="3clFb_" id="3" role="jymVt">
      <property role="TrG5h" value="execute" />
      <uo k="s:originTrace" v="n:3013258720419439302" />
      <node concept="3clFbS" id="z" role="3clF47">
        <uo k="s:originTrace" v="n:3013258720419439304" />
        <node concept="3clFbF" id="B" role="3cqZAp">
          <uo k="s:originTrace" v="n:3013258720419439332" />
          <node concept="2OqwBi" id="C" role="3clFbG">
            <uo k="s:originTrace" v="n:3013258720419439334" />
            <node concept="1eOMI4" id="D" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3013258720419439333" />
              <node concept="10QFUN" id="F" role="1eOMHV">
                <node concept="3uibUv" id="G" role="10QFUM">
                  <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                  <uo k="s:originTrace" v="n:3013258720419439331" />
                </node>
                <node concept="AH0OO" id="H" role="10QFUP">
                  <node concept="3cmrfG" id="I" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="1DoJHT" id="J" role="AHHXb">
                    <property role="1Dpdpm" value="getField" />
                    <node concept="Xl_RD" id="K" role="1EOqxR">
                      <property role="Xl_RC" value="lang" />
                    </node>
                    <node concept="10Q1$e" id="L" role="1Ez5kq">
                      <node concept="3uibUv" id="N" role="10Q1$1">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                    </node>
                    <node concept="Xjq3P" id="M" role="1EMhIo">
                      <ref role="1HBi2w" node="0" resolve="AddExtendedLanguage_QuickFix" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="E" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~Language.addExtendedLanguage(org.jetbrains.mps.openapi.module.SModuleReference)" resolve="addExtendedLanguage" />
              <uo k="s:originTrace" v="n:3013258720419440389" />
              <node concept="2OqwBi" id="O" role="37wK5m">
                <uo k="s:originTrace" v="n:4123611181261185895" />
                <node concept="1eOMI4" id="P" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:1826589312423601907" />
                  <node concept="10QFUN" id="R" role="1eOMHV">
                    <node concept="3uibUv" id="S" role="10QFUM">
                      <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                      <uo k="s:originTrace" v="n:3013258720419439324" />
                    </node>
                    <node concept="AH0OO" id="T" role="10QFUP">
                      <node concept="3cmrfG" id="U" role="AHEQo">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="1DoJHT" id="V" role="AHHXb">
                        <property role="1Dpdpm" value="getField" />
                        <node concept="Xl_RD" id="W" role="1EOqxR">
                          <property role="Xl_RC" value="extLang" />
                        </node>
                        <node concept="10Q1$e" id="X" role="1Ez5kq">
                          <node concept="3uibUv" id="Z" role="10Q1$1">
                            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                          </node>
                        </node>
                        <node concept="Xjq3P" id="Y" role="1EMhIo">
                          <ref role="1HBi2w" node="0" resolve="AddExtendedLanguage_QuickFix" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="Q" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleReference()" resolve="getModuleReference" />
                  <uo k="s:originTrace" v="n:4123611181261187058" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="$" role="3clF45">
        <uo k="s:originTrace" v="n:3013258720419439302" />
      </node>
      <node concept="3Tm1VV" id="_" role="1B3o_S">
        <uo k="s:originTrace" v="n:3013258720419439302" />
      </node>
      <node concept="37vLTG" id="A" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:3013258720419439302" />
        <node concept="3uibUv" id="10" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:3013258720419439302" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4" role="1B3o_S">
      <uo k="s:originTrace" v="n:3013258720419439302" />
    </node>
    <node concept="3uibUv" id="5" role="1zkMxy">
      <ref role="3uigEE" to="2gg1:~QuickFix_Runtime" resolve="QuickFix_Runtime" />
      <uo k="s:originTrace" v="n:3013258720419439302" />
    </node>
    <node concept="6wLe0" id="6" role="lGtFl">
      <property role="6wLej" value="3013258720419439302" />
      <property role="6wLeW" value="jetbrains.mps.lang.structure.typesystem" />
      <uo k="s:originTrace" v="n:3013258720419439302" />
    </node>
  </node>
  <node concept="312cEu" id="11">
    <property role="TrG5h" value="CorrectDuplicateId_QuickFix" />
    <uo k="s:originTrace" v="n:5424895381998281889" />
    <node concept="3clFbW" id="12" role="jymVt">
      <uo k="s:originTrace" v="n:5424895381998281889" />
      <node concept="3clFbS" id="18" role="3clF47">
        <uo k="s:originTrace" v="n:5424895381998281889" />
        <node concept="XkiVB" id="1b" role="3cqZAp">
          <ref role="37wK5l" to="2gg1:~QuickFix_Runtime.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="QuickFix_Runtime" />
          <uo k="s:originTrace" v="n:5424895381998281889" />
          <node concept="2ShNRf" id="1c" role="37wK5m">
            <uo k="s:originTrace" v="n:5424895381998281889" />
            <node concept="1pGfFk" id="1d" role="2ShVmc">
              <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
              <uo k="s:originTrace" v="n:5424895381998281889" />
              <node concept="Xl_RD" id="1e" role="37wK5m">
                <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                <uo k="s:originTrace" v="n:5424895381998281889" />
              </node>
              <node concept="Xl_RD" id="1f" role="37wK5m">
                <property role="Xl_RC" value="5424895381998281889" />
                <uo k="s:originTrace" v="n:5424895381998281889" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="19" role="3clF45">
        <uo k="s:originTrace" v="n:5424895381998281889" />
      </node>
      <node concept="3Tm1VV" id="1a" role="1B3o_S">
        <uo k="s:originTrace" v="n:5424895381998281889" />
      </node>
    </node>
    <node concept="3clFb_" id="13" role="jymVt">
      <property role="TrG5h" value="getDescription" />
      <uo k="s:originTrace" v="n:5424895381998281889" />
      <node concept="3Tm1VV" id="1g" role="1B3o_S">
        <uo k="s:originTrace" v="n:5424895381998281889" />
      </node>
      <node concept="3clFbS" id="1h" role="3clF47">
        <uo k="s:originTrace" v="n:5424895381998295459" />
        <node concept="3clFbF" id="1k" role="3cqZAp">
          <uo k="s:originTrace" v="n:5424895381998304624" />
          <node concept="Xl_RD" id="1l" role="3clFbG">
            <property role="Xl_RC" value="Correct ID" />
            <uo k="s:originTrace" v="n:5424895381998304623" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1i" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:5424895381998281889" />
        <node concept="3uibUv" id="1m" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:5424895381998281889" />
        </node>
      </node>
      <node concept="17QB3L" id="1j" role="3clF45">
        <uo k="s:originTrace" v="n:5424895381998281889" />
      </node>
    </node>
    <node concept="3clFb_" id="14" role="jymVt">
      <property role="TrG5h" value="execute" />
      <uo k="s:originTrace" v="n:5424895381998281889" />
      <node concept="3clFbS" id="1n" role="3clF47">
        <uo k="s:originTrace" v="n:5424895381998281891" />
        <node concept="3clFbJ" id="1r" role="3cqZAp">
          <uo k="s:originTrace" v="n:5424895381998282001" />
          <node concept="3y3z36" id="1x" role="3clFbw">
            <uo k="s:originTrace" v="n:5424895381998309625" />
            <node concept="10Nm6u" id="1z" role="3uHU7w">
              <uo k="s:originTrace" v="n:5424895381998309659" />
            </node>
            <node concept="1eOMI4" id="1$" role="3uHU7B">
              <uo k="s:originTrace" v="n:5424895381998308703" />
              <node concept="10QFUN" id="1_" role="1eOMHV">
                <node concept="3Tqbb2" id="1A" role="10QFUM">
                  <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                  <uo k="s:originTrace" v="n:5424895381998281958" />
                </node>
                <node concept="AH0OO" id="1B" role="10QFUP">
                  <node concept="3cmrfG" id="1C" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="1DoJHT" id="1D" role="AHHXb">
                    <property role="1Dpdpm" value="getField" />
                    <node concept="Xl_RD" id="1E" role="1EOqxR">
                      <property role="Xl_RC" value="c" />
                    </node>
                    <node concept="10Q1$e" id="1F" role="1Ez5kq">
                      <node concept="3uibUv" id="1H" role="10Q1$1">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                    </node>
                    <node concept="Xjq3P" id="1G" role="1EMhIo">
                      <ref role="1HBi2w" node="11" resolve="CorrectDuplicateId_QuickFix" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1y" role="3clFbx">
            <uo k="s:originTrace" v="n:5424895381998282003" />
            <node concept="3clFbF" id="1I" role="3cqZAp">
              <uo k="s:originTrace" v="n:5424895381998312033" />
              <node concept="37vLTI" id="1J" role="3clFbG">
                <uo k="s:originTrace" v="n:5424895381998315608" />
                <node concept="3cpWs3" id="1K" role="37vLTx">
                  <uo k="s:originTrace" v="n:5424895381998323915" />
                  <node concept="Xl_RD" id="1M" role="3uHU7w">
                    <property role="Xl_RC" value="" />
                    <uo k="s:originTrace" v="n:5424895381998323921" />
                  </node>
                  <node concept="2YIFZM" id="1N" role="3uHU7B">
                    <ref role="37wK5l" to="twe9:5OIo7_R8hLh" resolve="generateConceptId" />
                    <ref role="1Pybhc" to="twe9:5OIo7_R8hKr" resolve="ConceptIdHelper" />
                    <uo k="s:originTrace" v="n:5424895381998316420" />
                    <node concept="2OqwBi" id="1O" role="37wK5m">
                      <uo k="s:originTrace" v="n:5424895381998318402" />
                      <node concept="1eOMI4" id="1Q" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:5424895381998349702" />
                        <node concept="10QFUN" id="1S" role="1eOMHV">
                          <node concept="3Tqbb2" id="1T" role="10QFUM">
                            <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            <uo k="s:originTrace" v="n:5424895381998281958" />
                          </node>
                          <node concept="AH0OO" id="1U" role="10QFUP">
                            <node concept="3cmrfG" id="1V" role="AHEQo">
                              <property role="3cmrfH" value="0" />
                            </node>
                            <node concept="1DoJHT" id="1W" role="AHHXb">
                              <property role="1Dpdpm" value="getField" />
                              <node concept="Xl_RD" id="1X" role="1EOqxR">
                                <property role="Xl_RC" value="c" />
                              </node>
                              <node concept="10Q1$e" id="1Y" role="1Ez5kq">
                                <node concept="3uibUv" id="20" role="10Q1$1">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                              </node>
                              <node concept="Xjq3P" id="1Z" role="1EMhIo">
                                <ref role="1HBi2w" node="11" resolve="CorrectDuplicateId_QuickFix" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="I4A8Y" id="1R" role="2OqNvi">
                        <uo k="s:originTrace" v="n:5424895381998319545" />
                      </node>
                    </node>
                    <node concept="1eOMI4" id="1P" role="37wK5m">
                      <uo k="s:originTrace" v="n:5424895381998728487" />
                      <node concept="10QFUN" id="21" role="1eOMHV">
                        <node concept="3Tqbb2" id="22" role="10QFUM">
                          <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                          <uo k="s:originTrace" v="n:5424895381998281958" />
                        </node>
                        <node concept="AH0OO" id="23" role="10QFUP">
                          <node concept="3cmrfG" id="24" role="AHEQo">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="1DoJHT" id="25" role="AHHXb">
                            <property role="1Dpdpm" value="getField" />
                            <node concept="Xl_RD" id="26" role="1EOqxR">
                              <property role="Xl_RC" value="c" />
                            </node>
                            <node concept="10Q1$e" id="27" role="1Ez5kq">
                              <node concept="3uibUv" id="29" role="10Q1$1">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                            </node>
                            <node concept="Xjq3P" id="28" role="1EMhIo">
                              <ref role="1HBi2w" node="11" resolve="CorrectDuplicateId_QuickFix" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1L" role="37vLTJ">
                  <uo k="s:originTrace" v="n:5424895381998312527" />
                  <node concept="1eOMI4" id="2a" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:5424895381998312032" />
                    <node concept="10QFUN" id="2c" role="1eOMHV">
                      <node concept="3Tqbb2" id="2d" role="10QFUM">
                        <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                        <uo k="s:originTrace" v="n:5424895381998281958" />
                      </node>
                      <node concept="AH0OO" id="2e" role="10QFUP">
                        <node concept="3cmrfG" id="2f" role="AHEQo">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="1DoJHT" id="2g" role="AHHXb">
                          <property role="1Dpdpm" value="getField" />
                          <node concept="Xl_RD" id="2h" role="1EOqxR">
                            <property role="Xl_RC" value="c" />
                          </node>
                          <node concept="10Q1$e" id="2i" role="1Ez5kq">
                            <node concept="3uibUv" id="2k" role="10Q1$1">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                          </node>
                          <node concept="Xjq3P" id="2j" role="1EMhIo">
                            <ref role="1HBi2w" node="11" resolve="CorrectDuplicateId_QuickFix" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3TrcHB" id="2b" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:5OIo7_R7SN0" resolve="conceptId" />
                    <uo k="s:originTrace" v="n:5424895381998313978" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1s" role="3cqZAp">
          <uo k="s:originTrace" v="n:5424895381998325296" />
          <node concept="3y3z36" id="2l" role="3clFbw">
            <uo k="s:originTrace" v="n:5424895381998325297" />
            <node concept="10Nm6u" id="2n" role="3uHU7w">
              <uo k="s:originTrace" v="n:5424895381998325298" />
            </node>
            <node concept="1eOMI4" id="2o" role="3uHU7B">
              <uo k="s:originTrace" v="n:5424895381998341841" />
              <node concept="10QFUN" id="2p" role="1eOMHV">
                <node concept="3Tqbb2" id="2q" role="10QFUM">
                  <ref role="ehGHo" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
                  <uo k="s:originTrace" v="n:5424895381998281943" />
                </node>
                <node concept="AH0OO" id="2r" role="10QFUP">
                  <node concept="3cmrfG" id="2s" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="1DoJHT" id="2t" role="AHHXb">
                    <property role="1Dpdpm" value="getField" />
                    <node concept="Xl_RD" id="2u" role="1EOqxR">
                      <property role="Xl_RC" value="p" />
                    </node>
                    <node concept="10Q1$e" id="2v" role="1Ez5kq">
                      <node concept="3uibUv" id="2x" role="10Q1$1">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                    </node>
                    <node concept="Xjq3P" id="2w" role="1EMhIo">
                      <ref role="1HBi2w" node="11" resolve="CorrectDuplicateId_QuickFix" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2m" role="3clFbx">
            <uo k="s:originTrace" v="n:5424895381998325300" />
            <node concept="3clFbF" id="2y" role="3cqZAp">
              <uo k="s:originTrace" v="n:5424895381998325301" />
              <node concept="37vLTI" id="2z" role="3clFbG">
                <uo k="s:originTrace" v="n:5424895381998325302" />
                <node concept="3cpWs3" id="2$" role="37vLTx">
                  <uo k="s:originTrace" v="n:5424895381998325303" />
                  <node concept="Xl_RD" id="2A" role="3uHU7w">
                    <property role="Xl_RC" value="" />
                    <uo k="s:originTrace" v="n:5424895381998325304" />
                  </node>
                  <node concept="2YIFZM" id="2B" role="3uHU7B">
                    <ref role="37wK5l" to="twe9:5hUt6kO_oUV" resolve="generatePropertyId" />
                    <ref role="1Pybhc" to="twe9:5OIo7_R8hKr" resolve="ConceptIdHelper" />
                    <uo k="s:originTrace" v="n:5424895381998348183" />
                    <node concept="1eOMI4" id="2C" role="37wK5m">
                      <uo k="s:originTrace" v="n:5424895381998354389" />
                      <node concept="10QFUN" id="2E" role="1eOMHV">
                        <node concept="3Tqbb2" id="2F" role="10QFUM">
                          <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                          <uo k="s:originTrace" v="n:5424895381998281958" />
                        </node>
                        <node concept="AH0OO" id="2G" role="10QFUP">
                          <node concept="3cmrfG" id="2H" role="AHEQo">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="1DoJHT" id="2I" role="AHHXb">
                            <property role="1Dpdpm" value="getField" />
                            <node concept="Xl_RD" id="2J" role="1EOqxR">
                              <property role="Xl_RC" value="c" />
                            </node>
                            <node concept="10Q1$e" id="2K" role="1Ez5kq">
                              <node concept="3uibUv" id="2M" role="10Q1$1">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                            </node>
                            <node concept="Xjq3P" id="2L" role="1EMhIo">
                              <ref role="1HBi2w" node="11" resolve="CorrectDuplicateId_QuickFix" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1eOMI4" id="2D" role="37wK5m">
                      <uo k="s:originTrace" v="n:5424895381998732401" />
                      <node concept="10QFUN" id="2N" role="1eOMHV">
                        <node concept="3Tqbb2" id="2O" role="10QFUM">
                          <ref role="ehGHo" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
                          <uo k="s:originTrace" v="n:5424895381998281943" />
                        </node>
                        <node concept="AH0OO" id="2P" role="10QFUP">
                          <node concept="3cmrfG" id="2Q" role="AHEQo">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="1DoJHT" id="2R" role="AHHXb">
                            <property role="1Dpdpm" value="getField" />
                            <node concept="Xl_RD" id="2S" role="1EOqxR">
                              <property role="Xl_RC" value="p" />
                            </node>
                            <node concept="10Q1$e" id="2T" role="1Ez5kq">
                              <node concept="3uibUv" id="2V" role="10Q1$1">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                            </node>
                            <node concept="Xjq3P" id="2U" role="1EMhIo">
                              <ref role="1HBi2w" node="11" resolve="CorrectDuplicateId_QuickFix" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="2_" role="37vLTJ">
                  <uo k="s:originTrace" v="n:5424895381998325309" />
                  <node concept="1eOMI4" id="2W" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:5424895381998344471" />
                    <node concept="10QFUN" id="2Y" role="1eOMHV">
                      <node concept="3Tqbb2" id="2Z" role="10QFUM">
                        <ref role="ehGHo" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
                        <uo k="s:originTrace" v="n:5424895381998281943" />
                      </node>
                      <node concept="AH0OO" id="30" role="10QFUP">
                        <node concept="3cmrfG" id="31" role="AHEQo">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="1DoJHT" id="32" role="AHHXb">
                          <property role="1Dpdpm" value="getField" />
                          <node concept="Xl_RD" id="33" role="1EOqxR">
                            <property role="Xl_RC" value="p" />
                          </node>
                          <node concept="10Q1$e" id="34" role="1Ez5kq">
                            <node concept="3uibUv" id="36" role="10Q1$1">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                          </node>
                          <node concept="Xjq3P" id="35" role="1EMhIo">
                            <ref role="1HBi2w" node="11" resolve="CorrectDuplicateId_QuickFix" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3TrcHB" id="2X" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:dqwjwHwEjp" resolve="propertyId" />
                    <uo k="s:originTrace" v="n:5424895381998346734" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1t" role="3cqZAp">
          <uo k="s:originTrace" v="n:5424895381998355979" />
          <node concept="3y3z36" id="37" role="3clFbw">
            <uo k="s:originTrace" v="n:5424895381998355980" />
            <node concept="10Nm6u" id="39" role="3uHU7w">
              <uo k="s:originTrace" v="n:5424895381998355981" />
            </node>
            <node concept="1eOMI4" id="3a" role="3uHU7B">
              <uo k="s:originTrace" v="n:5424895381998359085" />
              <node concept="10QFUN" id="3b" role="1eOMHV">
                <node concept="3Tqbb2" id="3c" role="10QFUM">
                  <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                  <uo k="s:originTrace" v="n:5424895381998281980" />
                </node>
                <node concept="AH0OO" id="3d" role="10QFUP">
                  <node concept="3cmrfG" id="3e" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="1DoJHT" id="3f" role="AHHXb">
                    <property role="1Dpdpm" value="getField" />
                    <node concept="Xl_RD" id="3g" role="1EOqxR">
                      <property role="Xl_RC" value="l" />
                    </node>
                    <node concept="10Q1$e" id="3h" role="1Ez5kq">
                      <node concept="3uibUv" id="3j" role="10Q1$1">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                    </node>
                    <node concept="Xjq3P" id="3i" role="1EMhIo">
                      <ref role="1HBi2w" node="11" resolve="CorrectDuplicateId_QuickFix" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="38" role="3clFbx">
            <uo k="s:originTrace" v="n:5424895381998355983" />
            <node concept="3clFbF" id="3k" role="3cqZAp">
              <uo k="s:originTrace" v="n:5424895381998355984" />
              <node concept="37vLTI" id="3l" role="3clFbG">
                <uo k="s:originTrace" v="n:5424895381998355985" />
                <node concept="3cpWs3" id="3m" role="37vLTx">
                  <uo k="s:originTrace" v="n:5424895381998355986" />
                  <node concept="Xl_RD" id="3o" role="3uHU7w">
                    <property role="Xl_RC" value="" />
                    <uo k="s:originTrace" v="n:5424895381998355987" />
                  </node>
                  <node concept="2YIFZM" id="3p" role="3uHU7B">
                    <ref role="37wK5l" to="twe9:5hUt6kO_s$Q" resolve="generateLinkId" />
                    <ref role="1Pybhc" to="twe9:5OIo7_R8hKr" resolve="ConceptIdHelper" />
                    <uo k="s:originTrace" v="n:5424895381998366465" />
                    <node concept="1eOMI4" id="3q" role="37wK5m">
                      <uo k="s:originTrace" v="n:5424895381998366466" />
                      <node concept="10QFUN" id="3s" role="1eOMHV">
                        <node concept="3Tqbb2" id="3t" role="10QFUM">
                          <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                          <uo k="s:originTrace" v="n:5424895381998281958" />
                        </node>
                        <node concept="AH0OO" id="3u" role="10QFUP">
                          <node concept="3cmrfG" id="3v" role="AHEQo">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="1DoJHT" id="3w" role="AHHXb">
                            <property role="1Dpdpm" value="getField" />
                            <node concept="Xl_RD" id="3x" role="1EOqxR">
                              <property role="Xl_RC" value="c" />
                            </node>
                            <node concept="10Q1$e" id="3y" role="1Ez5kq">
                              <node concept="3uibUv" id="3$" role="10Q1$1">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                            </node>
                            <node concept="Xjq3P" id="3z" role="1EMhIo">
                              <ref role="1HBi2w" node="11" resolve="CorrectDuplicateId_QuickFix" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1eOMI4" id="3r" role="37wK5m">
                      <uo k="s:originTrace" v="n:5424895381998736317" />
                      <node concept="10QFUN" id="3_" role="1eOMHV">
                        <node concept="3Tqbb2" id="3A" role="10QFUM">
                          <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                          <uo k="s:originTrace" v="n:5424895381998281980" />
                        </node>
                        <node concept="AH0OO" id="3B" role="10QFUP">
                          <node concept="3cmrfG" id="3C" role="AHEQo">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="1DoJHT" id="3D" role="AHHXb">
                            <property role="1Dpdpm" value="getField" />
                            <node concept="Xl_RD" id="3E" role="1EOqxR">
                              <property role="Xl_RC" value="l" />
                            </node>
                            <node concept="10Q1$e" id="3F" role="1Ez5kq">
                              <node concept="3uibUv" id="3H" role="10Q1$1">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                            </node>
                            <node concept="Xjq3P" id="3G" role="1EMhIo">
                              <ref role="1HBi2w" node="11" resolve="CorrectDuplicateId_QuickFix" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3n" role="37vLTJ">
                  <uo k="s:originTrace" v="n:5424895381998355990" />
                  <node concept="3TrcHB" id="3I" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:dqwjwHwEj$" resolve="linkId" />
                    <uo k="s:originTrace" v="n:5424895381998364758" />
                  </node>
                  <node concept="1eOMI4" id="3J" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:5424895381998362387" />
                    <node concept="10QFUN" id="3K" role="1eOMHV">
                      <node concept="3Tqbb2" id="3L" role="10QFUM">
                        <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                        <uo k="s:originTrace" v="n:5424895381998281980" />
                      </node>
                      <node concept="AH0OO" id="3M" role="10QFUP">
                        <node concept="3cmrfG" id="3N" role="AHEQo">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="1DoJHT" id="3O" role="AHHXb">
                          <property role="1Dpdpm" value="getField" />
                          <node concept="Xl_RD" id="3P" role="1EOqxR">
                            <property role="Xl_RC" value="l" />
                          </node>
                          <node concept="10Q1$e" id="3Q" role="1Ez5kq">
                            <node concept="3uibUv" id="3S" role="10Q1$1">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                          </node>
                          <node concept="Xjq3P" id="3R" role="1EMhIo">
                            <ref role="1HBi2w" node="11" resolve="CorrectDuplicateId_QuickFix" />
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
        <node concept="3clFbJ" id="1u" role="3cqZAp">
          <uo k="s:originTrace" v="n:7791109065626988782" />
          <node concept="3y3z36" id="3T" role="3clFbw">
            <uo k="s:originTrace" v="n:7791109065626988783" />
            <node concept="10Nm6u" id="3V" role="3uHU7w">
              <uo k="s:originTrace" v="n:7791109065626988784" />
            </node>
            <node concept="1eOMI4" id="3W" role="3uHU7B">
              <uo k="s:originTrace" v="n:7791109065626994669" />
              <node concept="10QFUN" id="3X" role="1eOMHV">
                <node concept="3Tqbb2" id="3Y" role="10QFUM">
                  <ref role="ehGHo" to="tpce:fKAxPRU" resolve="DataTypeDeclaration" />
                  <uo k="s:originTrace" v="n:7791109065626988773" />
                </node>
                <node concept="AH0OO" id="3Z" role="10QFUP">
                  <node concept="3cmrfG" id="40" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="1DoJHT" id="41" role="AHHXb">
                    <property role="1Dpdpm" value="getField" />
                    <node concept="Xl_RD" id="42" role="1EOqxR">
                      <property role="Xl_RC" value="d" />
                    </node>
                    <node concept="10Q1$e" id="43" role="1Ez5kq">
                      <node concept="3uibUv" id="45" role="10Q1$1">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                    </node>
                    <node concept="Xjq3P" id="44" role="1EMhIo">
                      <ref role="1HBi2w" node="11" resolve="CorrectDuplicateId_QuickFix" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3U" role="3clFbx">
            <uo k="s:originTrace" v="n:7791109065626988786" />
            <node concept="3clFbF" id="46" role="3cqZAp">
              <uo k="s:originTrace" v="n:7791109065626988787" />
              <node concept="37vLTI" id="47" role="3clFbG">
                <uo k="s:originTrace" v="n:7791109065626988788" />
                <node concept="3cpWs3" id="48" role="37vLTx">
                  <uo k="s:originTrace" v="n:7791109065626988789" />
                  <node concept="Xl_RD" id="4a" role="3uHU7w">
                    <property role="Xl_RC" value="" />
                    <uo k="s:originTrace" v="n:7791109065626988790" />
                  </node>
                  <node concept="2YIFZM" id="4b" role="3uHU7B">
                    <ref role="37wK5l" to="twe9:6Kv_6E71hCq" resolve="generateDatatypeId" />
                    <ref role="1Pybhc" to="twe9:5OIo7_R8hKr" resolve="ConceptIdHelper" />
                    <uo k="s:originTrace" v="n:7791109065627002311" />
                    <node concept="2OqwBi" id="4c" role="37wK5m">
                      <uo k="s:originTrace" v="n:7791109065627012805" />
                      <node concept="1eOMI4" id="4e" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:7791109065627010201" />
                        <node concept="10QFUN" id="4g" role="1eOMHV">
                          <node concept="3Tqbb2" id="4h" role="10QFUM">
                            <ref role="ehGHo" to="tpce:fKAxPRU" resolve="DataTypeDeclaration" />
                            <uo k="s:originTrace" v="n:7791109065626988773" />
                          </node>
                          <node concept="AH0OO" id="4i" role="10QFUP">
                            <node concept="3cmrfG" id="4j" role="AHEQo">
                              <property role="3cmrfH" value="0" />
                            </node>
                            <node concept="1DoJHT" id="4k" role="AHHXb">
                              <property role="1Dpdpm" value="getField" />
                              <node concept="Xl_RD" id="4l" role="1EOqxR">
                                <property role="Xl_RC" value="d" />
                              </node>
                              <node concept="10Q1$e" id="4m" role="1Ez5kq">
                                <node concept="3uibUv" id="4o" role="10Q1$1">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                              </node>
                              <node concept="Xjq3P" id="4n" role="1EMhIo">
                                <ref role="1HBi2w" node="11" resolve="CorrectDuplicateId_QuickFix" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="I4A8Y" id="4f" role="2OqNvi">
                        <uo k="s:originTrace" v="n:7791109065627014370" />
                      </node>
                    </node>
                    <node concept="1eOMI4" id="4d" role="37wK5m">
                      <uo k="s:originTrace" v="n:7791109065627021088" />
                      <node concept="10QFUN" id="4p" role="1eOMHV">
                        <node concept="3Tqbb2" id="4q" role="10QFUM">
                          <ref role="ehGHo" to="tpce:fKAxPRU" resolve="DataTypeDeclaration" />
                          <uo k="s:originTrace" v="n:7791109065626988773" />
                        </node>
                        <node concept="AH0OO" id="4r" role="10QFUP">
                          <node concept="3cmrfG" id="4s" role="AHEQo">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="1DoJHT" id="4t" role="AHHXb">
                            <property role="1Dpdpm" value="getField" />
                            <node concept="Xl_RD" id="4u" role="1EOqxR">
                              <property role="Xl_RC" value="d" />
                            </node>
                            <node concept="10Q1$e" id="4v" role="1Ez5kq">
                              <node concept="3uibUv" id="4x" role="10Q1$1">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                            </node>
                            <node concept="Xjq3P" id="4w" role="1EMhIo">
                              <ref role="1HBi2w" node="11" resolve="CorrectDuplicateId_QuickFix" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="49" role="37vLTJ">
                  <uo k="s:originTrace" v="n:7791109065626988798" />
                  <node concept="3TrcHB" id="4y" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:6Kv_6E714g3" resolve="datatypeId" />
                    <uo k="s:originTrace" v="n:7791109065627000315" />
                  </node>
                  <node concept="1eOMI4" id="4z" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:7791109065626997678" />
                    <node concept="10QFUN" id="4$" role="1eOMHV">
                      <node concept="3Tqbb2" id="4_" role="10QFUM">
                        <ref role="ehGHo" to="tpce:fKAxPRU" resolve="DataTypeDeclaration" />
                        <uo k="s:originTrace" v="n:7791109065626988773" />
                      </node>
                      <node concept="AH0OO" id="4A" role="10QFUP">
                        <node concept="3cmrfG" id="4B" role="AHEQo">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="1DoJHT" id="4C" role="AHHXb">
                          <property role="1Dpdpm" value="getField" />
                          <node concept="Xl_RD" id="4D" role="1EOqxR">
                            <property role="Xl_RC" value="d" />
                          </node>
                          <node concept="10Q1$e" id="4E" role="1Ez5kq">
                            <node concept="3uibUv" id="4G" role="10Q1$1">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                          </node>
                          <node concept="Xjq3P" id="4F" role="1EMhIo">
                            <ref role="1HBi2w" node="11" resolve="CorrectDuplicateId_QuickFix" />
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
        <node concept="3clFbJ" id="1v" role="3cqZAp">
          <uo k="s:originTrace" v="n:1421157252384273613" />
          <node concept="3y3z36" id="4H" role="3clFbw">
            <uo k="s:originTrace" v="n:1421157252384273614" />
            <node concept="10Nm6u" id="4J" role="3uHU7w">
              <uo k="s:originTrace" v="n:1421157252384273615" />
            </node>
            <node concept="1eOMI4" id="4K" role="3uHU7B">
              <uo k="s:originTrace" v="n:1421157252384277337" />
              <node concept="10QFUN" id="4L" role="1eOMHV">
                <node concept="3Tqbb2" id="4M" role="10QFUM">
                  <ref role="ehGHo" to="tpce:2TR3acGo7Lw" resolve="EnumerationMemberDeclaration" />
                  <uo k="s:originTrace" v="n:1421157252384268224" />
                </node>
                <node concept="AH0OO" id="4N" role="10QFUP">
                  <node concept="3cmrfG" id="4O" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="1DoJHT" id="4P" role="AHHXb">
                    <property role="1Dpdpm" value="getField" />
                    <node concept="Xl_RD" id="4Q" role="1EOqxR">
                      <property role="Xl_RC" value="m" />
                    </node>
                    <node concept="10Q1$e" id="4R" role="1Ez5kq">
                      <node concept="3uibUv" id="4T" role="10Q1$1">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                    </node>
                    <node concept="Xjq3P" id="4S" role="1EMhIo">
                      <ref role="1HBi2w" node="11" resolve="CorrectDuplicateId_QuickFix" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4I" role="3clFbx">
            <uo k="s:originTrace" v="n:1421157252384273617" />
            <node concept="3clFbF" id="4U" role="3cqZAp">
              <uo k="s:originTrace" v="n:1421157252384273618" />
              <node concept="37vLTI" id="4V" role="3clFbG">
                <uo k="s:originTrace" v="n:1421157252384273619" />
                <node concept="3cpWs3" id="4W" role="37vLTx">
                  <uo k="s:originTrace" v="n:1421157252384273620" />
                  <node concept="Xl_RD" id="4Y" role="3uHU7w">
                    <property role="Xl_RC" value="" />
                    <uo k="s:originTrace" v="n:1421157252384273621" />
                  </node>
                  <node concept="2YIFZM" id="4Z" role="3uHU7B">
                    <ref role="37wK5l" to="twe9:1eSXJRelbs0" resolve="generateEnumMemberId" />
                    <ref role="1Pybhc" to="twe9:5OIo7_R8hKr" resolve="ConceptIdHelper" />
                    <uo k="s:originTrace" v="n:1421157252384294978" />
                    <node concept="1PxgMI" id="50" role="37wK5m">
                      <property role="1BlNFB" value="true" />
                      <uo k="s:originTrace" v="n:1421157252384309084" />
                      <node concept="chp4Y" id="52" role="3oSUPX">
                        <ref role="cht4Q" to="tpce:2TR3acGo7Lv" resolve="EnumerationDeclaration" />
                        <uo k="s:originTrace" v="n:1421157252384311164" />
                      </node>
                      <node concept="1eOMI4" id="53" role="1m5AlR">
                        <uo k="s:originTrace" v="n:7791109065627024384" />
                        <node concept="10QFUN" id="54" role="1eOMHV">
                          <node concept="3Tqbb2" id="55" role="10QFUM">
                            <ref role="ehGHo" to="tpce:fKAxPRU" resolve="DataTypeDeclaration" />
                            <uo k="s:originTrace" v="n:7791109065626988773" />
                          </node>
                          <node concept="AH0OO" id="56" role="10QFUP">
                            <node concept="3cmrfG" id="57" role="AHEQo">
                              <property role="3cmrfH" value="0" />
                            </node>
                            <node concept="1DoJHT" id="58" role="AHHXb">
                              <property role="1Dpdpm" value="getField" />
                              <node concept="Xl_RD" id="59" role="1EOqxR">
                                <property role="Xl_RC" value="d" />
                              </node>
                              <node concept="10Q1$e" id="5a" role="1Ez5kq">
                                <node concept="3uibUv" id="5c" role="10Q1$1">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                              </node>
                              <node concept="Xjq3P" id="5b" role="1EMhIo">
                                <ref role="1HBi2w" node="11" resolve="CorrectDuplicateId_QuickFix" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1eOMI4" id="51" role="37wK5m">
                      <uo k="s:originTrace" v="n:1421157252384294980" />
                      <node concept="10QFUN" id="5d" role="1eOMHV">
                        <node concept="3Tqbb2" id="5e" role="10QFUM">
                          <ref role="ehGHo" to="tpce:2TR3acGo7Lw" resolve="EnumerationMemberDeclaration" />
                          <uo k="s:originTrace" v="n:1421157252384268224" />
                        </node>
                        <node concept="AH0OO" id="5f" role="10QFUP">
                          <node concept="3cmrfG" id="5g" role="AHEQo">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="1DoJHT" id="5h" role="AHHXb">
                            <property role="1Dpdpm" value="getField" />
                            <node concept="Xl_RD" id="5i" role="1EOqxR">
                              <property role="Xl_RC" value="m" />
                            </node>
                            <node concept="10Q1$e" id="5j" role="1Ez5kq">
                              <node concept="3uibUv" id="5l" role="10Q1$1">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                            </node>
                            <node concept="Xjq3P" id="5k" role="1EMhIo">
                              <ref role="1HBi2w" node="11" resolve="CorrectDuplicateId_QuickFix" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="4X" role="37vLTJ">
                  <uo k="s:originTrace" v="n:1421157252384273625" />
                  <node concept="3TrcHB" id="5m" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:1eSXJRel0SS" resolve="memberId" />
                    <uo k="s:originTrace" v="n:1421157252384314985" />
                  </node>
                  <node concept="1eOMI4" id="5n" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:1421157252384281240" />
                    <node concept="10QFUN" id="5o" role="1eOMHV">
                      <node concept="3Tqbb2" id="5p" role="10QFUM">
                        <ref role="ehGHo" to="tpce:2TR3acGo7Lw" resolve="EnumerationMemberDeclaration" />
                        <uo k="s:originTrace" v="n:1421157252384268224" />
                      </node>
                      <node concept="AH0OO" id="5q" role="10QFUP">
                        <node concept="3cmrfG" id="5r" role="AHEQo">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="1DoJHT" id="5s" role="AHHXb">
                          <property role="1Dpdpm" value="getField" />
                          <node concept="Xl_RD" id="5t" role="1EOqxR">
                            <property role="Xl_RC" value="m" />
                          </node>
                          <node concept="10Q1$e" id="5u" role="1Ez5kq">
                            <node concept="3uibUv" id="5w" role="10Q1$1">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                          </node>
                          <node concept="Xjq3P" id="5v" role="1EMhIo">
                            <ref role="1HBi2w" node="11" resolve="CorrectDuplicateId_QuickFix" />
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
        <node concept="3clFbH" id="1w" role="3cqZAp">
          <uo k="s:originTrace" v="n:1421157252384271812" />
        </node>
      </node>
      <node concept="3cqZAl" id="1o" role="3clF45">
        <uo k="s:originTrace" v="n:5424895381998281889" />
      </node>
      <node concept="3Tm1VV" id="1p" role="1B3o_S">
        <uo k="s:originTrace" v="n:5424895381998281889" />
      </node>
      <node concept="37vLTG" id="1q" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:5424895381998281889" />
        <node concept="3uibUv" id="5x" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:5424895381998281889" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="15" role="1B3o_S">
      <uo k="s:originTrace" v="n:5424895381998281889" />
    </node>
    <node concept="3uibUv" id="16" role="1zkMxy">
      <ref role="3uigEE" to="2gg1:~QuickFix_Runtime" resolve="QuickFix_Runtime" />
      <uo k="s:originTrace" v="n:5424895381998281889" />
    </node>
    <node concept="6wLe0" id="17" role="lGtFl">
      <property role="6wLej" value="5424895381998281889" />
      <property role="6wLeW" value="jetbrains.mps.lang.structure.typesystem" />
      <uo k="s:originTrace" v="n:5424895381998281889" />
    </node>
  </node>
  <node concept="312cEu" id="5y">
    <property role="TrG5h" value="CreateMissingStub_QuickFix" />
    <uo k="s:originTrace" v="n:4082234026705847530" />
    <node concept="3clFbW" id="5z" role="jymVt">
      <uo k="s:originTrace" v="n:4082234026705847530" />
      <node concept="3clFbS" id="5D" role="3clF47">
        <uo k="s:originTrace" v="n:4082234026705847530" />
        <node concept="XkiVB" id="5G" role="3cqZAp">
          <ref role="37wK5l" to="2gg1:~QuickFix_Runtime.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="QuickFix_Runtime" />
          <uo k="s:originTrace" v="n:4082234026705847530" />
          <node concept="2ShNRf" id="5H" role="37wK5m">
            <uo k="s:originTrace" v="n:4082234026705847530" />
            <node concept="1pGfFk" id="5I" role="2ShVmc">
              <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
              <uo k="s:originTrace" v="n:4082234026705847530" />
              <node concept="Xl_RD" id="5J" role="37wK5m">
                <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                <uo k="s:originTrace" v="n:4082234026705847530" />
              </node>
              <node concept="Xl_RD" id="5K" role="37wK5m">
                <property role="Xl_RC" value="4082234026705847530" />
                <uo k="s:originTrace" v="n:4082234026705847530" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5E" role="3clF45">
        <uo k="s:originTrace" v="n:4082234026705847530" />
      </node>
      <node concept="3Tm1VV" id="5F" role="1B3o_S">
        <uo k="s:originTrace" v="n:4082234026705847530" />
      </node>
    </node>
    <node concept="3clFb_" id="5$" role="jymVt">
      <property role="TrG5h" value="getDescription" />
      <uo k="s:originTrace" v="n:4082234026705847530" />
      <node concept="3Tm1VV" id="5L" role="1B3o_S">
        <uo k="s:originTrace" v="n:4082234026705847530" />
      </node>
      <node concept="3clFbS" id="5M" role="3clF47">
        <uo k="s:originTrace" v="n:4082234026705848344" />
        <node concept="3clFbF" id="5P" role="3cqZAp">
          <uo k="s:originTrace" v="n:4082234026705850182" />
          <node concept="Xl_RD" id="5Q" role="3clFbG">
            <property role="Xl_RC" value="Create Missing Stub" />
            <uo k="s:originTrace" v="n:4082234026705850181" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5N" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:4082234026705847530" />
        <node concept="3uibUv" id="5R" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:4082234026705847530" />
        </node>
      </node>
      <node concept="17QB3L" id="5O" role="3clF45">
        <uo k="s:originTrace" v="n:4082234026705847530" />
      </node>
    </node>
    <node concept="3clFb_" id="5_" role="jymVt">
      <property role="TrG5h" value="execute" />
      <uo k="s:originTrace" v="n:4082234026705847530" />
      <node concept="3clFbS" id="5S" role="3clF47">
        <uo k="s:originTrace" v="n:4082234026705847532" />
        <node concept="3cpWs8" id="5W" role="3cqZAp">
          <uo k="s:originTrace" v="n:4082234026705861678" />
          <node concept="3cpWsn" id="6s" role="3cpWs9">
            <property role="TrG5h" value="declaration" />
            <uo k="s:originTrace" v="n:4082234026705861679" />
            <node concept="3Tqbb2" id="6t" role="1tU5fm">
              <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
              <uo k="s:originTrace" v="n:4082234026705861676" />
            </node>
            <node concept="1PxgMI" id="6u" role="33vP2m">
              <uo k="s:originTrace" v="n:4082234026705861680" />
              <node concept="Q6c8r" id="6v" role="1m5AlR">
                <uo k="s:originTrace" v="n:4082234026705861681" />
              </node>
              <node concept="chp4Y" id="6w" role="3oSUPX">
                <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                <uo k="s:originTrace" v="n:8089793891579205757" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5X" role="3cqZAp">
          <uo k="s:originTrace" v="n:4082234026705863287" />
          <node concept="3cpWsn" id="6x" role="3cpWs9">
            <property role="TrG5h" value="name" />
            <uo k="s:originTrace" v="n:4082234026705863288" />
            <node concept="17QB3L" id="6y" role="1tU5fm">
              <uo k="s:originTrace" v="n:4082234026705863281" />
            </node>
            <node concept="2OqwBi" id="6z" role="33vP2m">
              <uo k="s:originTrace" v="n:4082234026705863289" />
              <node concept="37vLTw" id="6$" role="2Oq$k0">
                <ref role="3cqZAo" node="6s" resolve="declaration" />
                <uo k="s:originTrace" v="n:4082234026705863290" />
              </node>
              <node concept="3TrcHB" id="6_" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                <uo k="s:originTrace" v="n:4082234026705863291" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5Y" role="3cqZAp">
          <uo k="s:originTrace" v="n:4082234026705865990" />
          <node concept="3cpWsn" id="6A" role="3cpWs9">
            <property role="TrG5h" value="virtualPackage" />
            <uo k="s:originTrace" v="n:4082234026705865991" />
            <node concept="17QB3L" id="6B" role="1tU5fm">
              <uo k="s:originTrace" v="n:4082234026705865988" />
            </node>
            <node concept="2OqwBi" id="6C" role="33vP2m">
              <uo k="s:originTrace" v="n:4082234026705865992" />
              <node concept="37vLTw" id="6D" role="2Oq$k0">
                <ref role="3cqZAo" node="6s" resolve="declaration" />
                <uo k="s:originTrace" v="n:4082234026705865993" />
              </node>
              <node concept="3TrcHB" id="6E" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                <uo k="s:originTrace" v="n:4082234026705865994" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5Z" role="3cqZAp">
          <uo k="s:originTrace" v="n:4082234026705871595" />
          <node concept="3cpWsn" id="6F" role="3cpWs9">
            <property role="TrG5h" value="stub" />
            <uo k="s:originTrace" v="n:4082234026705871596" />
            <node concept="3Tqbb2" id="6G" role="1tU5fm">
              <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
              <uo k="s:originTrace" v="n:4082234026705871591" />
            </node>
            <node concept="2OqwBi" id="6H" role="33vP2m">
              <uo k="s:originTrace" v="n:4082234026707210302" />
              <node concept="2OqwBi" id="6I" role="2Oq$k0">
                <uo k="s:originTrace" v="n:4082234026707208222" />
                <node concept="37vLTw" id="6K" role="2Oq$k0">
                  <ref role="3cqZAo" node="6s" resolve="declaration" />
                  <uo k="s:originTrace" v="n:4082234026707207741" />
                </node>
                <node concept="I4A8Y" id="6L" role="2OqNvi">
                  <uo k="s:originTrace" v="n:4082234026707209282" />
                </node>
              </node>
              <node concept="2xF2bX" id="6J" role="2OqNvi">
                <ref role="I8UWU" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                <uo k="s:originTrace" v="n:4082234026707210668" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="60" role="3cqZAp">
          <uo k="s:originTrace" v="n:4082234026705866196" />
          <node concept="37vLTI" id="6M" role="3clFbG">
            <uo k="s:originTrace" v="n:4082234026705875347" />
            <node concept="3cpWs3" id="6N" role="37vLTx">
              <uo k="s:originTrace" v="n:4082234026705876660" />
              <node concept="37vLTw" id="6P" role="3uHU7w">
                <ref role="3cqZAo" node="6x" resolve="name" />
                <uo k="s:originTrace" v="n:4082234026705876691" />
              </node>
              <node concept="Xl_RD" id="6Q" role="3uHU7B">
                <property role="Xl_RC" value="Stub" />
                <uo k="s:originTrace" v="n:4082234026705875364" />
              </node>
            </node>
            <node concept="2OqwBi" id="6O" role="37vLTJ">
              <uo k="s:originTrace" v="n:4082234026705871975" />
              <node concept="37vLTw" id="6R" role="2Oq$k0">
                <ref role="3cqZAo" node="6F" resolve="stub" />
                <uo k="s:originTrace" v="n:4082234026705871600" />
              </node>
              <node concept="3TrcHB" id="6S" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                <uo k="s:originTrace" v="n:4082234026705872981" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="61" role="3cqZAp">
          <uo k="s:originTrace" v="n:4082234026705877677" />
          <node concept="37vLTI" id="6T" role="3clFbG">
            <uo k="s:originTrace" v="n:4082234026705882336" />
            <node concept="37vLTw" id="6U" role="37vLTx">
              <ref role="3cqZAo" node="6A" resolve="virtualPackage" />
              <uo k="s:originTrace" v="n:4082234026705882406" />
            </node>
            <node concept="2OqwBi" id="6V" role="37vLTJ">
              <uo k="s:originTrace" v="n:4082234026705877972" />
              <node concept="37vLTw" id="6W" role="2Oq$k0">
                <ref role="3cqZAo" node="6F" resolve="stub" />
                <uo k="s:originTrace" v="n:4082234026705877675" />
              </node>
              <node concept="3TrcHB" id="6X" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                <uo k="s:originTrace" v="n:4082234026705879970" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="62" role="3cqZAp">
          <uo k="s:originTrace" v="n:4082234026705882900" />
          <node concept="2OqwBi" id="6Y" role="3clFbG">
            <uo k="s:originTrace" v="n:4082234026705885454" />
            <node concept="2OqwBi" id="6Z" role="2Oq$k0">
              <uo k="s:originTrace" v="n:4082234026705883137" />
              <node concept="37vLTw" id="71" role="2Oq$k0">
                <ref role="3cqZAo" node="6F" resolve="stub" />
                <uo k="s:originTrace" v="n:4082234026705882898" />
              </node>
              <node concept="3TrEf2" id="72" role="2OqNvi">
                <ref role="3Tt5mk" to="tpce:f_TJDff" resolve="extends" />
                <uo k="s:originTrace" v="n:4082234026705884156" />
              </node>
            </node>
            <node concept="2oxUTD" id="70" role="2OqNvi">
              <uo k="s:originTrace" v="n:4082234026705886552" />
              <node concept="37vLTw" id="73" role="2oxUTC">
                <ref role="3cqZAo" node="6s" resolve="declaration" />
                <uo k="s:originTrace" v="n:4082234026705886761" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="63" role="3cqZAp">
          <uo k="s:originTrace" v="n:4082234026705967639" />
          <node concept="3cpWsn" id="74" role="3cpWs9">
            <property role="TrG5h" value="ref1" />
            <uo k="s:originTrace" v="n:4082234026705967640" />
            <node concept="3Tqbb2" id="75" role="1tU5fm">
              <ref role="ehGHo" to="tpce:h0PrWoo" resolve="InterfaceConceptReference" />
              <uo k="s:originTrace" v="n:4082234026705967637" />
            </node>
            <node concept="2ShNRf" id="76" role="33vP2m">
              <uo k="s:originTrace" v="n:4082234026705967641" />
              <node concept="3zrR0B" id="77" role="2ShVmc">
                <uo k="s:originTrace" v="n:4082234026705967642" />
                <node concept="3Tqbb2" id="78" role="3zrR0E">
                  <ref role="ehGHo" to="tpce:h0PrWoo" resolve="InterfaceConceptReference" />
                  <uo k="s:originTrace" v="n:4082234026705967643" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="64" role="3cqZAp">
          <uo k="s:originTrace" v="n:4082234026705886928" />
          <node concept="2OqwBi" id="79" role="3clFbG">
            <uo k="s:originTrace" v="n:4082234026705900596" />
            <node concept="2OqwBi" id="7a" role="2Oq$k0">
              <uo k="s:originTrace" v="n:4082234026705887186" />
              <node concept="37vLTw" id="7c" role="2Oq$k0">
                <ref role="3cqZAo" node="6F" resolve="stub" />
                <uo k="s:originTrace" v="n:4082234026705886926" />
              </node>
              <node concept="3Tsc0h" id="7d" role="2OqNvi">
                <ref role="3TtcxE" to="tpce:h0Pzm$Y" resolve="implements" />
                <uo k="s:originTrace" v="n:4082234026705896118" />
              </node>
            </node>
            <node concept="TSZUe" id="7b" role="2OqNvi">
              <uo k="s:originTrace" v="n:4082234026705941502" />
              <node concept="37vLTw" id="7e" role="25WWJ7">
                <ref role="3cqZAo" node="74" resolve="ref1" />
                <uo k="s:originTrace" v="n:4082234026705967644" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="65" role="3cqZAp">
          <uo k="s:originTrace" v="n:4082234026705977729" />
          <node concept="3cpWsn" id="7f" role="3cpWs9">
            <property role="TrG5h" value="ref2" />
            <uo k="s:originTrace" v="n:4082234026705977730" />
            <node concept="3Tqbb2" id="7g" role="1tU5fm">
              <ref role="ehGHo" to="tpce:h0PrWoo" resolve="InterfaceConceptReference" />
              <uo k="s:originTrace" v="n:4082234026705977731" />
            </node>
            <node concept="2ShNRf" id="7h" role="33vP2m">
              <uo k="s:originTrace" v="n:4082234026705977732" />
              <node concept="3zrR0B" id="7i" role="2ShVmc">
                <uo k="s:originTrace" v="n:4082234026705977733" />
                <node concept="3Tqbb2" id="7j" role="3zrR0E">
                  <ref role="ehGHo" to="tpce:h0PrWoo" resolve="InterfaceConceptReference" />
                  <uo k="s:originTrace" v="n:4082234026705977734" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="66" role="3cqZAp">
          <uo k="s:originTrace" v="n:4082234026705977735" />
          <node concept="2OqwBi" id="7k" role="3clFbG">
            <uo k="s:originTrace" v="n:4082234026705977736" />
            <node concept="1AR3kn" id="7l" role="2OqNvi">
              <uo k="s:originTrace" v="n:4573127675650065705" />
              <node concept="1QN52j" id="7n" role="1AR3km">
                <uo k="s:originTrace" v="n:4573127675650065706" />
                <node concept="ZC_QK" id="7o" role="1QN54C">
                  <ref role="2aWVGs" to="tpck:8AYOKVCAP5" resolve="IStubForAnotherConcept" />
                  <uo k="s:originTrace" v="n:4573127675650065704" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7m" role="2Oq$k0">
              <uo k="s:originTrace" v="n:4082234026705977737" />
              <node concept="37vLTw" id="7p" role="2Oq$k0">
                <ref role="3cqZAo" node="7f" resolve="ref2" />
                <uo k="s:originTrace" v="n:4082234026705977738" />
              </node>
              <node concept="3TrEf2" id="7q" role="2OqNvi">
                <ref role="3Tt5mk" to="tpce:h0PrY0D" resolve="intfc" />
                <uo k="s:originTrace" v="n:4082234026705977739" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="67" role="3cqZAp">
          <uo k="s:originTrace" v="n:4082234026705977744" />
          <node concept="2OqwBi" id="7r" role="3clFbG">
            <uo k="s:originTrace" v="n:4082234026705977745" />
            <node concept="2OqwBi" id="7s" role="2Oq$k0">
              <uo k="s:originTrace" v="n:4082234026705977746" />
              <node concept="37vLTw" id="7u" role="2Oq$k0">
                <ref role="3cqZAo" node="6F" resolve="stub" />
                <uo k="s:originTrace" v="n:4082234026705977747" />
              </node>
              <node concept="3Tsc0h" id="7v" role="2OqNvi">
                <ref role="3TtcxE" to="tpce:h0Pzm$Y" resolve="implements" />
                <uo k="s:originTrace" v="n:4082234026705977748" />
              </node>
            </node>
            <node concept="TSZUe" id="7t" role="2OqNvi">
              <uo k="s:originTrace" v="n:4082234026705977749" />
              <node concept="37vLTw" id="7w" role="25WWJ7">
                <ref role="3cqZAo" node="7f" resolve="ref2" />
                <uo k="s:originTrace" v="n:4082234026705977750" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="68" role="3cqZAp">
          <uo k="s:originTrace" v="n:2737713837019572923" />
        </node>
        <node concept="3cpWs8" id="69" role="3cqZAp">
          <uo k="s:originTrace" v="n:6243792783972011440" />
          <node concept="3cpWsn" id="7x" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <uo k="s:originTrace" v="n:6243792783972011441" />
            <node concept="3uibUv" id="7y" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              <uo k="s:originTrace" v="n:2737713837019571021" />
            </node>
            <node concept="2OqwBi" id="7z" role="33vP2m">
              <uo k="s:originTrace" v="n:6243792783972011442" />
              <node concept="2JrnkZ" id="7$" role="2Oq$k0">
                <uo k="s:originTrace" v="n:6243792783972011443" />
                <node concept="37vLTw" id="7A" role="2JrQYb">
                  <ref role="3cqZAo" node="6s" resolve="declaration" />
                  <uo k="s:originTrace" v="n:6243792783972011444" />
                </node>
              </node>
              <node concept="liA8E" id="7_" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                <uo k="s:originTrace" v="n:6243792783972011445" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6a" role="3cqZAp">
          <uo k="s:originTrace" v="n:6243792783972012906" />
          <node concept="3clFbS" id="7B" role="3clFbx">
            <uo k="s:originTrace" v="n:6243792783972012909" />
            <node concept="3cpWs6" id="7D" role="3cqZAp">
              <uo k="s:originTrace" v="n:6243792783972014034" />
            </node>
          </node>
          <node concept="3clFbC" id="7C" role="3clFbw">
            <uo k="s:originTrace" v="n:6243792783972013842" />
            <node concept="10Nm6u" id="7E" role="3uHU7w">
              <uo k="s:originTrace" v="n:6243792783972013991" />
            </node>
            <node concept="37vLTw" id="7F" role="3uHU7B">
              <ref role="3cqZAo" node="7x" resolve="model" />
              <uo k="s:originTrace" v="n:6243792783972013641" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6b" role="3cqZAp">
          <uo k="s:originTrace" v="n:6243792783970043522" />
          <node concept="3cpWsn" id="7G" role="3cpWs9">
            <property role="TrG5h" value="language" />
            <uo k="s:originTrace" v="n:6243792783970043523" />
            <node concept="2OqwBi" id="7H" role="33vP2m">
              <uo k="s:originTrace" v="n:6243792783971782612" />
              <node concept="37vLTw" id="7J" role="2Oq$k0">
                <ref role="3cqZAo" node="7x" resolve="model" />
                <uo k="s:originTrace" v="n:6243792783972011446" />
              </node>
              <node concept="liA8E" id="7K" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                <uo k="s:originTrace" v="n:6243792783971789736" />
              </node>
            </node>
            <node concept="3uibUv" id="7I" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              <uo k="s:originTrace" v="n:6243792783971797725" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6c" role="3cqZAp">
          <uo k="s:originTrace" v="n:6243792783970131963" />
          <node concept="3cpWsn" id="7L" role="3cpWs9">
            <property role="TrG5h" value="editorModel" />
            <uo k="s:originTrace" v="n:6243792783970131964" />
            <node concept="1qvjxa" id="7M" role="33vP2m">
              <ref role="1quiSB" to="9anm:2LiUEk8oQ$g" resolve="editor" />
              <uo k="s:originTrace" v="n:474635177868122045" />
              <node concept="37vLTw" id="7O" role="1qvjxb">
                <ref role="3cqZAo" node="7G" resolve="language" />
                <uo k="s:originTrace" v="n:474635177868122357" />
              </node>
            </node>
            <node concept="3uibUv" id="7N" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              <uo k="s:originTrace" v="n:2737713837019577772" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6d" role="3cqZAp">
          <uo k="s:originTrace" v="n:6108181796397557889" />
          <node concept="3clFbS" id="7P" role="3clFbx">
            <uo k="s:originTrace" v="n:6108181796397557892" />
            <node concept="3cpWs6" id="7R" role="3cqZAp">
              <uo k="s:originTrace" v="n:6108181796397558529" />
            </node>
          </node>
          <node concept="3clFbC" id="7Q" role="3clFbw">
            <uo k="s:originTrace" v="n:6108181796397558453" />
            <node concept="10Nm6u" id="7S" role="3uHU7w">
              <uo k="s:originTrace" v="n:6108181796397558482" />
            </node>
            <node concept="37vLTw" id="7T" role="3uHU7B">
              <ref role="3cqZAo" node="7L" resolve="editorModel" />
              <uo k="s:originTrace" v="n:6243792783970143163" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6e" role="3cqZAp">
          <uo k="s:originTrace" v="n:6243792783970503763" />
        </node>
        <node concept="3cpWs8" id="6f" role="3cqZAp">
          <uo k="s:originTrace" v="n:6243792783970405020" />
          <node concept="3cpWsn" id="7U" role="3cpWs9">
            <property role="TrG5h" value="editor" />
            <uo k="s:originTrace" v="n:6243792783970405021" />
            <node concept="3Tqbb2" id="7V" role="1tU5fm">
              <ref role="ehGHo" to="tpc2:fA4kQeF" resolve="ConceptEditorDeclaration" />
              <uo k="s:originTrace" v="n:6243792783970405018" />
            </node>
            <node concept="2ShNRf" id="7W" role="33vP2m">
              <uo k="s:originTrace" v="n:6243792783970405022" />
              <node concept="3zrR0B" id="7X" role="2ShVmc">
                <uo k="s:originTrace" v="n:6243792783970405023" />
                <node concept="3Tqbb2" id="7Y" role="3zrR0E">
                  <ref role="ehGHo" to="tpc2:fA4kQeF" resolve="ConceptEditorDeclaration" />
                  <uo k="s:originTrace" v="n:6243792783970405024" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6g" role="3cqZAp">
          <uo k="s:originTrace" v="n:4082234026708424749" />
          <node concept="2OqwBi" id="7Z" role="3clFbG">
            <uo k="s:originTrace" v="n:6108181796397080968" />
            <node concept="2OqwBi" id="80" role="2Oq$k0">
              <uo k="s:originTrace" v="n:6108181796397077202" />
              <node concept="37vLTw" id="82" role="2Oq$k0">
                <ref role="3cqZAo" node="7U" resolve="editor" />
                <uo k="s:originTrace" v="n:6108181796397076171" />
              </node>
              <node concept="3TrEf2" id="83" role="2OqNvi">
                <ref role="3Tt5mk" to="tpc2:gXXX56I" resolve="conceptDeclaration" />
                <uo k="s:originTrace" v="n:6243792783970494985" />
              </node>
            </node>
            <node concept="2oxUTD" id="81" role="2OqNvi">
              <uo k="s:originTrace" v="n:6108181796397081947" />
              <node concept="37vLTw" id="84" role="2oxUTC">
                <ref role="3cqZAo" node="6F" resolve="stub" />
                <uo k="s:originTrace" v="n:6108181796397082222" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6h" role="3cqZAp">
          <uo k="s:originTrace" v="n:6108181796397082969" />
          <node concept="37vLTI" id="85" role="3clFbG">
            <uo k="s:originTrace" v="n:6108181796397090410" />
            <node concept="37vLTw" id="86" role="37vLTx">
              <ref role="3cqZAo" node="6A" resolve="virtualPackage" />
              <uo k="s:originTrace" v="n:6108181796397091449" />
            </node>
            <node concept="2OqwBi" id="87" role="37vLTJ">
              <uo k="s:originTrace" v="n:6108181796397083198" />
              <node concept="37vLTw" id="88" role="2Oq$k0">
                <ref role="3cqZAo" node="7U" resolve="editor" />
                <uo k="s:originTrace" v="n:6108181796397082967" />
              </node>
              <node concept="3TrcHB" id="89" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                <uo k="s:originTrace" v="n:6108181796397085705" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6i" role="3cqZAp">
          <uo k="s:originTrace" v="n:6108181796397255700" />
          <node concept="3cpWsn" id="8a" role="3cpWs9">
            <property role="TrG5h" value="component" />
            <uo k="s:originTrace" v="n:6108181796397255701" />
            <node concept="3Tqbb2" id="8b" role="1tU5fm">
              <ref role="ehGHo" to="tpc2:fGPMmym" resolve="CellModel_Component" />
              <uo k="s:originTrace" v="n:6108181796397255699" />
            </node>
            <node concept="2ShNRf" id="8c" role="33vP2m">
              <uo k="s:originTrace" v="n:6108181796397255702" />
              <node concept="3zrR0B" id="8d" role="2ShVmc">
                <uo k="s:originTrace" v="n:6108181796397255703" />
                <node concept="3Tqbb2" id="8e" role="3zrR0E">
                  <ref role="ehGHo" to="tpc2:fGPMmym" resolve="CellModel_Component" />
                  <uo k="s:originTrace" v="n:6108181796397255704" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6j" role="3cqZAp">
          <uo k="s:originTrace" v="n:6108181796397258188" />
          <node concept="2OqwBi" id="8f" role="3clFbG">
            <uo k="s:originTrace" v="n:6108181796397264128" />
            <node concept="1AR3kn" id="8g" role="2OqNvi">
              <uo k="s:originTrace" v="n:4573127675650065708" />
              <node concept="1QN52j" id="8i" role="1AR3km">
                <uo k="s:originTrace" v="n:4573127675650065709" />
                <node concept="ZC_QK" id="8j" role="1QN54C">
                  <ref role="2aWVGs" to="tpco:37EzmTDC95l" resolve="ImplementationRemovedInStubMessage" />
                  <uo k="s:originTrace" v="n:4573127675650065707" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="8h" role="2Oq$k0">
              <uo k="s:originTrace" v="n:6108181796397258991" />
              <node concept="37vLTw" id="8k" role="2Oq$k0">
                <ref role="3cqZAo" node="8a" resolve="component" />
                <uo k="s:originTrace" v="n:6108181796397258186" />
              </node>
              <node concept="3TrEf2" id="8l" role="2OqNvi">
                <ref role="3Tt5mk" to="tpc2:fGPMmyn" resolve="editorComponent" />
                <uo k="s:originTrace" v="n:6108181796397262630" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6k" role="3cqZAp">
          <uo k="s:originTrace" v="n:6108181796397168509" />
          <node concept="2OqwBi" id="8m" role="3clFbG">
            <uo k="s:originTrace" v="n:6108181796397172939" />
            <node concept="2OqwBi" id="8n" role="2Oq$k0">
              <uo k="s:originTrace" v="n:6108181796397168786" />
              <node concept="37vLTw" id="8p" role="2Oq$k0">
                <ref role="3cqZAo" node="7U" resolve="editor" />
                <uo k="s:originTrace" v="n:6108181796397168507" />
              </node>
              <node concept="3TrEf2" id="8q" role="2OqNvi">
                <ref role="3Tt5mk" to="tpc2:fIwV5gl" resolve="cellModel" />
                <uo k="s:originTrace" v="n:6243792783970498355" />
              </node>
            </node>
            <node concept="2oxUTD" id="8o" role="2OqNvi">
              <uo k="s:originTrace" v="n:6108181796397225717" />
              <node concept="37vLTw" id="8r" role="2oxUTC">
                <ref role="3cqZAo" node="8a" resolve="component" />
                <uo k="s:originTrace" v="n:6108181796397255705" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6l" role="3cqZAp">
          <uo k="s:originTrace" v="n:6243792783970194380" />
          <node concept="2OqwBi" id="8s" role="3clFbG">
            <uo k="s:originTrace" v="n:6243792783970223073" />
            <node concept="37vLTw" id="8t" role="2Oq$k0">
              <ref role="3cqZAo" node="7L" resolve="editorModel" />
              <uo k="s:originTrace" v="n:6243792783970194378" />
            </node>
            <node concept="liA8E" id="8u" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
              <uo k="s:originTrace" v="n:6243792783970261657" />
              <node concept="37vLTw" id="8v" role="37wK5m">
                <ref role="3cqZAo" node="7U" resolve="editor" />
                <uo k="s:originTrace" v="n:6243792783970500753" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6m" role="3cqZAp">
          <uo k="s:originTrace" v="n:642702404439051674" />
        </node>
        <node concept="3cpWs8" id="6n" role="3cqZAp">
          <uo k="s:originTrace" v="n:642702404439052125" />
          <node concept="3cpWsn" id="8w" role="3cpWs9">
            <property role="TrG5h" value="menu" />
            <uo k="s:originTrace" v="n:642702404439052128" />
            <node concept="3Tqbb2" id="8x" role="1tU5fm">
              <ref role="ehGHo" to="tpc2:1J2KHYpAw1S" resolve="SubstituteMenu" />
              <uo k="s:originTrace" v="n:642702404439052123" />
            </node>
            <node concept="2ShNRf" id="8y" role="33vP2m">
              <uo k="s:originTrace" v="n:642702404439052481" />
              <node concept="3zrR0B" id="8z" role="2ShVmc">
                <uo k="s:originTrace" v="n:642702404439076205" />
                <node concept="3Tqbb2" id="8$" role="3zrR0E">
                  <ref role="ehGHo" to="tpc2:1J2KHYpAw1S" resolve="SubstituteMenu" />
                  <uo k="s:originTrace" v="n:642702404439076207" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6o" role="3cqZAp">
          <uo k="s:originTrace" v="n:642702404439076552" />
          <node concept="2OqwBi" id="8_" role="3clFbG">
            <uo k="s:originTrace" v="n:642702404439086004" />
            <node concept="2OqwBi" id="8A" role="2Oq$k0">
              <uo k="s:originTrace" v="n:642702404439077505" />
              <node concept="37vLTw" id="8C" role="2Oq$k0">
                <ref role="3cqZAo" node="8w" resolve="menu" />
                <uo k="s:originTrace" v="n:642702404439076550" />
              </node>
              <node concept="3TrEf2" id="8D" role="2OqNvi">
                <ref role="3Tt5mk" to="tpc2:5HVj4Ph44AO" resolve="conceptDeclaration" />
                <uo k="s:originTrace" v="n:642702404439084243" />
              </node>
            </node>
            <node concept="2oxUTD" id="8B" role="2OqNvi">
              <uo k="s:originTrace" v="n:642702404439087682" />
              <node concept="37vLTw" id="8E" role="2oxUTC">
                <ref role="3cqZAo" node="6F" resolve="stub" />
                <uo k="s:originTrace" v="n:642702404439087873" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6p" role="3cqZAp">
          <uo k="s:originTrace" v="n:9136726241907746733" />
          <node concept="37vLTI" id="8F" role="3clFbG">
            <uo k="s:originTrace" v="n:9136726241907750177" />
            <node concept="2pJPEk" id="8G" role="37vLTx">
              <uo k="s:originTrace" v="n:6693953143195736446" />
              <node concept="2pJPED" id="8I" role="2pJPEn">
                <ref role="2pJxaS" to="tpc2:5cAVTFho729" resolve="MenuTypeDefault" />
                <uo k="s:originTrace" v="n:6693953143195736692" />
              </node>
            </node>
            <node concept="2OqwBi" id="8H" role="37vLTJ">
              <uo k="s:originTrace" v="n:9136726241907747825" />
              <node concept="37vLTw" id="8J" role="2Oq$k0">
                <ref role="3cqZAo" node="8w" resolve="menu" />
                <uo k="s:originTrace" v="n:9136726241907746731" />
              </node>
              <node concept="3TrEf2" id="8K" role="2OqNvi">
                <ref role="3Tt5mk" to="tpc2:5cAVTFho83z" resolve="type" />
                <uo k="s:originTrace" v="n:6693953143195735071" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6q" role="3cqZAp">
          <uo k="s:originTrace" v="n:642702404439088665" />
          <node concept="2OqwBi" id="8L" role="3clFbG">
            <uo k="s:originTrace" v="n:642702404439094197" />
            <node concept="2OqwBi" id="8M" role="2Oq$k0">
              <uo k="s:originTrace" v="n:642702404439089625" />
              <node concept="37vLTw" id="8O" role="2Oq$k0">
                <ref role="3cqZAo" node="8w" resolve="menu" />
                <uo k="s:originTrace" v="n:642702404439088663" />
              </node>
              <node concept="3TrcHB" id="8P" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                <uo k="s:originTrace" v="n:642702404439091846" />
              </node>
            </node>
            <node concept="tyxLq" id="8N" role="2OqNvi">
              <uo k="s:originTrace" v="n:642702404439095119" />
              <node concept="37vLTw" id="8Q" role="tz02z">
                <ref role="3cqZAo" node="6A" resolve="virtualPackage" />
                <uo k="s:originTrace" v="n:642702404439095421" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6r" role="3cqZAp">
          <uo k="s:originTrace" v="n:642702404439095845" />
          <node concept="2OqwBi" id="8R" role="3clFbG">
            <uo k="s:originTrace" v="n:642702404439096413" />
            <node concept="37vLTw" id="8S" role="2Oq$k0">
              <ref role="3cqZAo" node="7L" resolve="editorModel" />
              <uo k="s:originTrace" v="n:642702404439095843" />
            </node>
            <node concept="liA8E" id="8T" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
              <uo k="s:originTrace" v="n:642702404439096824" />
              <node concept="37vLTw" id="8U" role="37wK5m">
                <ref role="3cqZAo" node="8w" resolve="menu" />
                <uo k="s:originTrace" v="n:642702404439097032" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5T" role="3clF45">
        <uo k="s:originTrace" v="n:4082234026705847530" />
      </node>
      <node concept="3Tm1VV" id="5U" role="1B3o_S">
        <uo k="s:originTrace" v="n:4082234026705847530" />
      </node>
      <node concept="37vLTG" id="5V" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:4082234026705847530" />
        <node concept="3uibUv" id="8V" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:4082234026705847530" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="5A" role="1B3o_S">
      <uo k="s:originTrace" v="n:4082234026705847530" />
    </node>
    <node concept="3uibUv" id="5B" role="1zkMxy">
      <ref role="3uigEE" to="2gg1:~QuickFix_Runtime" resolve="QuickFix_Runtime" />
      <uo k="s:originTrace" v="n:4082234026705847530" />
    </node>
    <node concept="6wLe0" id="5C" role="lGtFl">
      <property role="6wLej" value="4082234026705847530" />
      <property role="6wLeW" value="jetbrains.mps.lang.structure.typesystem" />
      <uo k="s:originTrace" v="n:4082234026705847530" />
    </node>
  </node>
  <node concept="312cEu" id="8W">
    <property role="TrG5h" value="FixAttributeInfo_QuickFix" />
    <uo k="s:originTrace" v="n:7588428831943086210" />
    <node concept="3clFbW" id="8X" role="jymVt">
      <uo k="s:originTrace" v="n:7588428831943086210" />
      <node concept="3clFbS" id="93" role="3clF47">
        <uo k="s:originTrace" v="n:7588428831943086210" />
        <node concept="XkiVB" id="96" role="3cqZAp">
          <ref role="37wK5l" to="2gg1:~QuickFix_Runtime.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="QuickFix_Runtime" />
          <uo k="s:originTrace" v="n:7588428831943086210" />
          <node concept="2ShNRf" id="97" role="37wK5m">
            <uo k="s:originTrace" v="n:7588428831943086210" />
            <node concept="1pGfFk" id="98" role="2ShVmc">
              <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
              <uo k="s:originTrace" v="n:7588428831943086210" />
              <node concept="Xl_RD" id="99" role="37wK5m">
                <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                <uo k="s:originTrace" v="n:7588428831943086210" />
              </node>
              <node concept="Xl_RD" id="9a" role="37wK5m">
                <property role="Xl_RC" value="7588428831943086210" />
                <uo k="s:originTrace" v="n:7588428831943086210" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="94" role="3clF45">
        <uo k="s:originTrace" v="n:7588428831943086210" />
      </node>
      <node concept="3Tm1VV" id="95" role="1B3o_S">
        <uo k="s:originTrace" v="n:7588428831943086210" />
      </node>
    </node>
    <node concept="3clFb_" id="8Y" role="jymVt">
      <property role="TrG5h" value="getDescription" />
      <uo k="s:originTrace" v="n:7588428831943086210" />
      <node concept="3Tm1VV" id="9b" role="1B3o_S">
        <uo k="s:originTrace" v="n:7588428831943086210" />
      </node>
      <node concept="3clFbS" id="9c" role="3clF47">
        <uo k="s:originTrace" v="n:7588428831943086825" />
        <node concept="3clFbF" id="9f" role="3cqZAp">
          <uo k="s:originTrace" v="n:7588428831943087664" />
          <node concept="3cpWs3" id="9g" role="3clFbG">
            <uo k="s:originTrace" v="n:7588428831943559069" />
            <node concept="1eOMI4" id="9h" role="3uHU7B">
              <uo k="s:originTrace" v="n:7588428831943579130" />
              <node concept="3K4zz7" id="9j" role="1eOMHV">
                <uo k="s:originTrace" v="n:7588428831943580985" />
                <node concept="Xl_RD" id="9k" role="3K4E3e">
                  <property role="Xl_RC" value="Add" />
                  <uo k="s:originTrace" v="n:7588428831943598069" />
                </node>
                <node concept="Xl_RD" id="9l" role="3K4GZi">
                  <property role="Xl_RC" value="Remove" />
                  <uo k="s:originTrace" v="n:7588428831943607905" />
                </node>
                <node concept="1eOMI4" id="9m" role="3K4Cdx">
                  <uo k="s:originTrace" v="n:7588428831943579131" />
                  <node concept="2OqwBi" id="9n" role="1eOMHV">
                    <uo k="s:originTrace" v="n:7588428831943582724" />
                    <node concept="2OqwBi" id="9o" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:7588428831943579132" />
                      <node concept="1PxgMI" id="9q" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:7588428831943579133" />
                        <node concept="Q6c8r" id="9s" role="1m5AlR">
                          <uo k="s:originTrace" v="n:7588428831943579134" />
                        </node>
                        <node concept="chp4Y" id="9t" role="3oSUPX">
                          <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                          <uo k="s:originTrace" v="n:8089793891579205779" />
                        </node>
                      </node>
                      <node concept="3CFZ6_" id="9r" role="2OqNvi">
                        <uo k="s:originTrace" v="n:7588428831943579135" />
                        <node concept="3CFYIy" id="9u" role="3CFYIz">
                          <ref role="3CFYIx" to="tpce:2A8AB0r$C6l" resolve="AttributeInfo" />
                          <uo k="s:originTrace" v="n:7588428831943579136" />
                        </node>
                      </node>
                    </node>
                    <node concept="3w_OXm" id="9p" role="2OqNvi">
                      <uo k="s:originTrace" v="n:7588428831943596998" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="9i" role="3uHU7w">
              <property role="Xl_RC" value=" Attribute Info" />
              <uo k="s:originTrace" v="n:7588428831943087663" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="9d" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:7588428831943086210" />
        <node concept="3uibUv" id="9v" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:7588428831943086210" />
        </node>
      </node>
      <node concept="17QB3L" id="9e" role="3clF45">
        <uo k="s:originTrace" v="n:7588428831943086210" />
      </node>
    </node>
    <node concept="3clFb_" id="8Z" role="jymVt">
      <property role="TrG5h" value="execute" />
      <uo k="s:originTrace" v="n:7588428831943086210" />
      <node concept="3clFbS" id="9w" role="3clF47">
        <uo k="s:originTrace" v="n:7588428831943086212" />
        <node concept="3cpWs8" id="9$" role="3cqZAp">
          <uo k="s:originTrace" v="n:7588428831943505763" />
          <node concept="3cpWsn" id="9B" role="3cpWs9">
            <property role="TrG5h" value="conceptDeclaration" />
            <uo k="s:originTrace" v="n:7588428831943505766" />
            <node concept="3Tqbb2" id="9C" role="1tU5fm">
              <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
              <uo k="s:originTrace" v="n:7588428831943505761" />
            </node>
            <node concept="1PxgMI" id="9D" role="33vP2m">
              <uo k="s:originTrace" v="n:7588428831943506460" />
              <node concept="Q6c8r" id="9E" role="1m5AlR">
                <uo k="s:originTrace" v="n:7588428831943506151" />
              </node>
              <node concept="chp4Y" id="9F" role="3oSUPX">
                <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                <uo k="s:originTrace" v="n:8089793891579205765" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="9_" role="3cqZAp">
          <uo k="s:originTrace" v="n:7588428831943501957" />
          <node concept="3clFbS" id="9G" role="3clFbx">
            <uo k="s:originTrace" v="n:7588428831943501958" />
            <node concept="3clFbF" id="9I" role="3cqZAp">
              <uo k="s:originTrace" v="n:7588428831943130012" />
              <node concept="37vLTI" id="9J" role="3clFbG">
                <uo k="s:originTrace" v="n:7588428831943152377" />
                <node concept="2ShNRf" id="9K" role="37vLTx">
                  <uo k="s:originTrace" v="n:7588428831943152438" />
                  <node concept="3zrR0B" id="9M" role="2ShVmc">
                    <uo k="s:originTrace" v="n:7588428831943191812" />
                    <node concept="3Tqbb2" id="9N" role="3zrR0E">
                      <ref role="ehGHo" to="tpce:2A8AB0r$C6l" resolve="AttributeInfo" />
                      <uo k="s:originTrace" v="n:7588428831943191814" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="9L" role="37vLTJ">
                  <uo k="s:originTrace" v="n:7588428831943137971" />
                  <node concept="1PxgMI" id="9O" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:7588428831943137154" />
                    <node concept="Q6c8r" id="9Q" role="1m5AlR">
                      <uo k="s:originTrace" v="n:7588428831943130011" />
                    </node>
                    <node concept="chp4Y" id="9R" role="3oSUPX">
                      <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                      <uo k="s:originTrace" v="n:8089793891579205781" />
                    </node>
                  </node>
                  <node concept="3CFZ6_" id="9P" role="2OqNvi">
                    <uo k="s:originTrace" v="n:7588428831943151069" />
                    <node concept="3CFYIy" id="9S" role="3CFYIz">
                      <ref role="3CFYIx" to="tpce:2A8AB0r$C6l" resolve="AttributeInfo" />
                      <uo k="s:originTrace" v="n:7588428831943151301" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="9H" role="3clFbw">
            <uo k="s:originTrace" v="n:7588428831943501963" />
            <node concept="2OqwBi" id="9T" role="3uHU7w">
              <uo k="s:originTrace" v="n:7588428831943501964" />
              <node concept="2OqwBi" id="9V" role="2Oq$k0">
                <uo k="s:originTrace" v="n:7588428831943501965" />
                <node concept="37vLTw" id="9X" role="2Oq$k0">
                  <ref role="3cqZAo" node="9B" resolve="conceptDeclaration" />
                  <uo k="s:originTrace" v="n:7588428831943507111" />
                </node>
                <node concept="3CFZ6_" id="9Y" role="2OqNvi">
                  <uo k="s:originTrace" v="n:7588428831943501967" />
                  <node concept="3CFYIy" id="9Z" role="3CFYIz">
                    <ref role="3CFYIx" to="tpce:2A8AB0r$C6l" resolve="AttributeInfo" />
                    <uo k="s:originTrace" v="n:7588428831943501968" />
                  </node>
                </node>
              </node>
              <node concept="3w_OXm" id="9W" role="2OqNvi">
                <uo k="s:originTrace" v="n:7588428831943501969" />
              </node>
            </node>
            <node concept="2YIFZM" id="9U" role="3uHU7B">
              <ref role="1Pybhc" to="tpcn:6_gUeuqI_Vn" resolve="AttributeDesignTimeOperations" />
              <ref role="37wK5l" to="tpcn:6_fwX53kswR" resolve="isAttributeDeclaration" />
              <uo k="s:originTrace" v="n:7588428831943501970" />
              <node concept="37vLTw" id="a0" role="37wK5m">
                <ref role="3cqZAo" node="9B" resolve="conceptDeclaration" />
                <uo k="s:originTrace" v="n:7588428831943506858" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="9A" role="3cqZAp">
          <uo k="s:originTrace" v="n:7588428831943614969" />
          <node concept="3clFbS" id="a1" role="3clFbx">
            <uo k="s:originTrace" v="n:7588428831943614970" />
            <node concept="3clFbF" id="a3" role="3cqZAp">
              <uo k="s:originTrace" v="n:7588428831943614971" />
              <node concept="2OqwBi" id="a4" role="3clFbG">
                <uo k="s:originTrace" v="n:7588428831943625510" />
                <node concept="2OqwBi" id="a5" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:7588428831943614976" />
                  <node concept="1PxgMI" id="a7" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:7588428831943614977" />
                    <node concept="Q6c8r" id="a9" role="1m5AlR">
                      <uo k="s:originTrace" v="n:7588428831943614978" />
                    </node>
                    <node concept="chp4Y" id="aa" role="3oSUPX">
                      <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                      <uo k="s:originTrace" v="n:8089793891579205788" />
                    </node>
                  </node>
                  <node concept="3CFZ6_" id="a8" role="2OqNvi">
                    <uo k="s:originTrace" v="n:7588428831943614979" />
                    <node concept="3CFYIy" id="ab" role="3CFYIz">
                      <ref role="3CFYIx" to="tpce:2A8AB0r$C6l" resolve="AttributeInfo" />
                      <uo k="s:originTrace" v="n:7588428831943614980" />
                    </node>
                  </node>
                </node>
                <node concept="3YRAZt" id="a6" role="2OqNvi">
                  <uo k="s:originTrace" v="n:7588428831943634016" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="a2" role="3clFbw">
            <uo k="s:originTrace" v="n:7588428831943614981" />
            <node concept="2OqwBi" id="ac" role="3uHU7w">
              <uo k="s:originTrace" v="n:7588428831943614982" />
              <node concept="2OqwBi" id="ae" role="2Oq$k0">
                <uo k="s:originTrace" v="n:7588428831943614983" />
                <node concept="37vLTw" id="ag" role="2Oq$k0">
                  <ref role="3cqZAo" node="9B" resolve="conceptDeclaration" />
                  <uo k="s:originTrace" v="n:7588428831943614984" />
                </node>
                <node concept="3CFZ6_" id="ah" role="2OqNvi">
                  <uo k="s:originTrace" v="n:7588428831943614985" />
                  <node concept="3CFYIy" id="ai" role="3CFYIz">
                    <ref role="3CFYIx" to="tpce:2A8AB0r$C6l" resolve="AttributeInfo" />
                    <uo k="s:originTrace" v="n:7588428831943614986" />
                  </node>
                </node>
              </node>
              <node concept="3x8VRR" id="af" role="2OqNvi">
                <uo k="s:originTrace" v="n:7588428831943622986" />
              </node>
            </node>
            <node concept="3fqX7Q" id="ad" role="3uHU7B">
              <uo k="s:originTrace" v="n:7588428831943618124" />
              <node concept="2YIFZM" id="aj" role="3fr31v">
                <ref role="1Pybhc" to="tpcn:6_gUeuqI_Vn" resolve="AttributeDesignTimeOperations" />
                <ref role="37wK5l" to="tpcn:6_fwX53kswR" resolve="isAttributeDeclaration" />
                <uo k="s:originTrace" v="n:7588428831943618126" />
                <node concept="37vLTw" id="ak" role="37wK5m">
                  <ref role="3cqZAo" node="9B" resolve="conceptDeclaration" />
                  <uo k="s:originTrace" v="n:7588428831943618127" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="9x" role="3clF45">
        <uo k="s:originTrace" v="n:7588428831943086210" />
      </node>
      <node concept="3Tm1VV" id="9y" role="1B3o_S">
        <uo k="s:originTrace" v="n:7588428831943086210" />
      </node>
      <node concept="37vLTG" id="9z" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:7588428831943086210" />
        <node concept="3uibUv" id="al" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:7588428831943086210" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="90" role="1B3o_S">
      <uo k="s:originTrace" v="n:7588428831943086210" />
    </node>
    <node concept="3uibUv" id="91" role="1zkMxy">
      <ref role="3uigEE" to="2gg1:~QuickFix_Runtime" resolve="QuickFix_Runtime" />
      <uo k="s:originTrace" v="n:7588428831943086210" />
    </node>
    <node concept="6wLe0" id="92" role="lGtFl">
      <property role="6wLej" value="7588428831943086210" />
      <property role="6wLeW" value="jetbrains.mps.lang.structure.typesystem" />
      <uo k="s:originTrace" v="n:7588428831943086210" />
    </node>
  </node>
  <node concept="312cEu" id="am">
    <property role="TrG5h" value="GenerateConceptIds_QuickFix" />
    <uo k="s:originTrace" v="n:1587916991969835891" />
    <node concept="3clFbW" id="an" role="jymVt">
      <uo k="s:originTrace" v="n:1587916991969835891" />
      <node concept="3clFbS" id="at" role="3clF47">
        <uo k="s:originTrace" v="n:1587916991969835891" />
        <node concept="XkiVB" id="aw" role="3cqZAp">
          <ref role="37wK5l" to="2gg1:~QuickFix_Runtime.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="QuickFix_Runtime" />
          <uo k="s:originTrace" v="n:1587916991969835891" />
          <node concept="2ShNRf" id="ax" role="37wK5m">
            <uo k="s:originTrace" v="n:1587916991969835891" />
            <node concept="1pGfFk" id="ay" role="2ShVmc">
              <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
              <uo k="s:originTrace" v="n:1587916991969835891" />
              <node concept="Xl_RD" id="az" role="37wK5m">
                <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                <uo k="s:originTrace" v="n:1587916991969835891" />
              </node>
              <node concept="Xl_RD" id="a$" role="37wK5m">
                <property role="Xl_RC" value="1587916991969835891" />
                <uo k="s:originTrace" v="n:1587916991969835891" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="au" role="3clF45">
        <uo k="s:originTrace" v="n:1587916991969835891" />
      </node>
      <node concept="3Tm1VV" id="av" role="1B3o_S">
        <uo k="s:originTrace" v="n:1587916991969835891" />
      </node>
    </node>
    <node concept="3clFb_" id="ao" role="jymVt">
      <property role="TrG5h" value="getDescription" />
      <uo k="s:originTrace" v="n:1587916991969835891" />
      <node concept="3Tm1VV" id="a_" role="1B3o_S">
        <uo k="s:originTrace" v="n:1587916991969835891" />
      </node>
      <node concept="3clFbS" id="aA" role="3clF47">
        <uo k="s:originTrace" v="n:1587916991969835923" />
        <node concept="3clFbF" id="aD" role="3cqZAp">
          <uo k="s:originTrace" v="n:1587916991969836249" />
          <node concept="Xl_RD" id="aE" role="3clFbG">
            <property role="Xl_RC" value="Generate IDs" />
            <uo k="s:originTrace" v="n:1587916991969836248" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="aB" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:1587916991969835891" />
        <node concept="3uibUv" id="aF" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:1587916991969835891" />
        </node>
      </node>
      <node concept="17QB3L" id="aC" role="3clF45">
        <uo k="s:originTrace" v="n:1587916991969835891" />
      </node>
    </node>
    <node concept="3clFb_" id="ap" role="jymVt">
      <property role="TrG5h" value="execute" />
      <uo k="s:originTrace" v="n:1587916991969835891" />
      <node concept="3clFbS" id="aG" role="3clF47">
        <uo k="s:originTrace" v="n:1587916991969835893" />
        <node concept="3clFbF" id="aK" role="3cqZAp">
          <uo k="s:originTrace" v="n:1135871461211204022" />
          <node concept="2YIFZM" id="aL" role="3clFbG">
            <ref role="37wK5l" to="twe9:Z3rhdFZzmy" resolve="processConcept" />
            <ref role="1Pybhc" to="twe9:Z3rhdFZzlq" resolve="ConceptIdSetter" />
            <uo k="s:originTrace" v="n:1135871461211204095" />
            <node concept="1eOMI4" id="aM" role="37wK5m">
              <uo k="s:originTrace" v="n:1135871461211207468" />
              <node concept="10QFUN" id="aP" role="1eOMHV">
                <node concept="3Tqbb2" id="aQ" role="10QFUM">
                  <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                  <uo k="s:originTrace" v="n:1587916991969835913" />
                </node>
                <node concept="AH0OO" id="aR" role="10QFUP">
                  <node concept="3cmrfG" id="aS" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="1DoJHT" id="aT" role="AHHXb">
                    <property role="1Dpdpm" value="getField" />
                    <node concept="Xl_RD" id="aU" role="1EOqxR">
                      <property role="Xl_RC" value="c" />
                    </node>
                    <node concept="10Q1$e" id="aV" role="1Ez5kq">
                      <node concept="3uibUv" id="aX" role="10Q1$1">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                    </node>
                    <node concept="Xjq3P" id="aW" role="1EMhIo">
                      <ref role="1HBi2w" node="am" resolve="GenerateConceptIds_QuickFix" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="aN" role="37wK5m">
              <uo k="s:originTrace" v="n:1135871461211208380" />
              <node concept="1eOMI4" id="aY" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1135871461211207866" />
                <node concept="10QFUN" id="b0" role="1eOMHV">
                  <node concept="3Tqbb2" id="b1" role="10QFUM">
                    <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                    <uo k="s:originTrace" v="n:1587916991969835913" />
                  </node>
                  <node concept="AH0OO" id="b2" role="10QFUP">
                    <node concept="3cmrfG" id="b3" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="1DoJHT" id="b4" role="AHHXb">
                      <property role="1Dpdpm" value="getField" />
                      <node concept="Xl_RD" id="b5" role="1EOqxR">
                        <property role="Xl_RC" value="c" />
                      </node>
                      <node concept="10Q1$e" id="b6" role="1Ez5kq">
                        <node concept="3uibUv" id="b8" role="10Q1$1">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
                      <node concept="Xjq3P" id="b7" role="1EMhIo">
                        <ref role="1HBi2w" node="am" resolve="GenerateConceptIds_QuickFix" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="I4A8Y" id="aZ" role="2OqNvi">
                <uo k="s:originTrace" v="n:1135871461211209111" />
              </node>
            </node>
            <node concept="3clFbT" id="aO" role="37wK5m">
              <property role="3clFbU" value="false" />
              <uo k="s:originTrace" v="n:1135871461211207034" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="aH" role="3clF45">
        <uo k="s:originTrace" v="n:1587916991969835891" />
      </node>
      <node concept="3Tm1VV" id="aI" role="1B3o_S">
        <uo k="s:originTrace" v="n:1587916991969835891" />
      </node>
      <node concept="37vLTG" id="aJ" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:1587916991969835891" />
        <node concept="3uibUv" id="b9" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:1587916991969835891" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="aq" role="1B3o_S">
      <uo k="s:originTrace" v="n:1587916991969835891" />
    </node>
    <node concept="3uibUv" id="ar" role="1zkMxy">
      <ref role="3uigEE" to="2gg1:~QuickFix_Runtime" resolve="QuickFix_Runtime" />
      <uo k="s:originTrace" v="n:1587916991969835891" />
    </node>
    <node concept="6wLe0" id="as" role="lGtFl">
      <property role="6wLej" value="1587916991969835891" />
      <property role="6wLeW" value="jetbrains.mps.lang.structure.typesystem" />
      <uo k="s:originTrace" v="n:1587916991969835891" />
    </node>
  </node>
  <node concept="39dXUE" id="ba">
    <node concept="39e2AJ" id="bb" role="39e2AI">
      <property role="39e3Y2" value="classForRule" />
      <node concept="39e2AG" id="bg" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:1o9qxtfa_BN" resolve="check_AbstractConceptDeclaration_Ids" />
        <node concept="385nmt" id="by" role="385vvn">
          <property role="385vuF" value="check_AbstractConceptDeclaration_Ids" />
          <node concept="3u3nmq" id="b$" role="385v07">
            <property role="3u3nmv" value="1587916991969778163" />
          </node>
        </node>
        <node concept="39e2AT" id="bz" role="39e2AY">
          <ref role="39e2AS" node="j5" resolve="check_AbstractConceptDeclaration_Ids_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="bh" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:6_fwX53iYzI" resolve="check_AttributeInfo" />
        <node concept="385nmt" id="b_" role="385vvn">
          <property role="385vuF" value="check_AttributeInfo" />
          <node concept="3u3nmq" id="bB" role="385v07">
            <property role="3u3nmv" value="7588428831943026926" />
          </node>
        </node>
        <node concept="39e2AT" id="bA" role="39e2AY">
          <ref role="39e2AS" node="pZ" resolve="check_AttributeInfo_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="bi" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:5HgiwiAJCYI" resolve="check_ConceptDeclaration" />
        <node concept="385nmt" id="bC" role="385vvn">
          <property role="385vuF" value="check_ConceptDeclaration" />
          <node concept="3u3nmq" id="bE" role="385v07">
            <property role="3u3nmv" value="6579840439426125742" />
          </node>
        </node>
        <node concept="39e2AT" id="bD" role="39e2AY">
          <ref role="39e2AS" node="sf" resolve="check_ConceptDeclaration_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="bj" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:3MXdqyhoYOB" resolve="check_ConceptDeclaration_iconPath" />
        <node concept="385nmt" id="bF" role="385vvn">
          <property role="385vuF" value="check_ConceptDeclaration_iconPath" />
          <node concept="3u3nmq" id="bH" role="385v07">
            <property role="3u3nmv" value="4376713410984013095" />
          </node>
        </node>
        <node concept="39e2AT" id="bG" role="39e2AY">
          <ref role="39e2AS" node="w2" resolve="check_ConceptDeclaration_iconPath_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="bk" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:hrWhlMD" resolve="check_ConceptForNotImplementedMethods" />
        <node concept="385nmt" id="bI" role="385vvn">
          <property role="385vuF" value="check_ConceptForNotImplementedMethods" />
          <node concept="3u3nmq" id="bK" role="385v07">
            <property role="3u3nmv" value="1198233312425" />
          </node>
        </node>
        <node concept="39e2AT" id="bJ" role="39e2AY">
          <ref role="39e2AS" node="xw" resolve="check_ConceptForNotImplementedMethods_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="bl" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:6Kv_6E71$Wq" resolve="check_DataTypeDeclaration_Ids" />
        <node concept="385nmt" id="bL" role="385vvn">
          <property role="385vuF" value="check_DataTypeDeclaration_Ids" />
          <node concept="3u3nmq" id="bN" role="385v07">
            <property role="3u3nmv" value="7791109065627029274" />
          </node>
        </node>
        <node concept="39e2AT" id="bM" role="39e2AY">
          <ref role="39e2AS" node="zQ" resolve="check_DataTypeDeclaration_Ids_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="bm" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:ROe8A_3ASm" resolve="check_DuplicateDataTypeDeclaration" />
        <node concept="385nmt" id="bO" role="385vvn">
          <property role="385vuF" value="check_DuplicateDataTypeDeclaration" />
          <node concept="3u3nmq" id="bQ" role="385v07">
            <property role="3u3nmv" value="1005490780641324566" />
          </node>
        </node>
        <node concept="39e2AT" id="bP" role="39e2AY">
          <ref role="39e2AS" node="AO" resolve="check_DuplicateDataTypeDeclaration_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="bn" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:6uCSBqVTxCq" resolve="check_DuplicatedConceptName" />
        <node concept="385nmt" id="bR" role="385vvn">
          <property role="385vuF" value="check_DuplicatedConceptName" />
          <node concept="3u3nmq" id="bT" role="385v07">
            <property role="3u3nmv" value="7469468981580405274" />
          </node>
        </node>
        <node concept="39e2AT" id="bS" role="39e2AY">
          <ref role="39e2AS" node="CG" resolve="check_DuplicatedConceptName_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="bo" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:5DVpet2KwDa" resolve="check_EditorForNonAbstractConcept" />
        <node concept="385nmt" id="bU" role="385vvn">
          <property role="385vuF" value="check_EditorForNonAbstractConcept" />
          <node concept="3u3nmq" id="bW" role="385v07">
            <property role="3u3nmv" value="6519915829969160778" />
          </node>
        </node>
        <node concept="39e2AT" id="bV" role="39e2AY">
          <ref role="39e2AS" node="Es" resolve="check_EditorForNonAbstractConcept_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="bp" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:VFd4X$twIN" resolve="check_EnumerationDeclaration" />
        <node concept="385nmt" id="bX" role="385vvn">
          <property role="385vuF" value="check_EnumerationDeclaration" />
          <node concept="3u3nmq" id="bZ" role="385v07">
            <property role="3u3nmv" value="1075010451650513843" />
          </node>
        </node>
        <node concept="39e2AT" id="bY" role="39e2AY">
          <ref role="39e2AS" node="GV" resolve="check_EnumerationDeclaration_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="bq" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:1eSXJRelAno" resolve="check_EnumerationMemberDeclaration_Ids" />
        <node concept="385nmt" id="c0" role="385vvn">
          <property role="385vuF" value="check_EnumerationMemberDeclaration_Ids" />
          <node concept="3u3nmq" id="c2" role="385v07">
            <property role="3u3nmv" value="1421157252384318936" />
          </node>
        </node>
        <node concept="39e2AT" id="c1" role="39e2AY">
          <ref role="39e2AS" node="Kr" resolve="check_EnumerationMemberDeclaration_Ids_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="br" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:hYjEYMI" resolve="check_ExtendedConceptsAreInExtendedLanguages" />
        <node concept="385nmt" id="c3" role="385vvn">
          <property role="385vuF" value="check_ExtendedConceptsAreInExtendedLanguages" />
          <node concept="3u3nmq" id="c5" role="385v07">
            <property role="3u3nmv" value="1235133131950" />
          </node>
        </node>
        <node concept="39e2AT" id="c4" role="39e2AY">
          <ref role="39e2AS" node="Nx" resolve="check_ExtendedConceptsAreInExtendedLanguages_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="bs" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:WyclBLqIoK" resolve="check_Finals" />
        <node concept="385nmt" id="c6" role="385vvn">
          <property role="385vuF" value="check_Finals" />
          <node concept="3u3nmq" id="c8" role="385v07">
            <property role="3u3nmv" value="1090488322149246512" />
          </node>
        </node>
        <node concept="39e2AT" id="c7" role="39e2AY">
          <ref role="39e2AS" node="ST" resolve="check_Finals_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="bt" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:hCVEpk3" resolve="check_LinkDeclaration" />
        <node concept="385nmt" id="c9" role="385vvn">
          <property role="385vuF" value="check_LinkDeclaration" />
          <node concept="3u3nmq" id="cb" role="385v07">
            <property role="3u3nmv" value="1212181746947" />
          </node>
        </node>
        <node concept="39e2AT" id="ca" role="39e2AY">
          <ref role="39e2AS" node="Uf" resolve="check_LinkDeclaration_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="bu" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:2urHzIcHTdO" resolve="check_LinkDeclaration_Specialized" />
        <node concept="385nmt" id="cc" role="385vvn">
          <property role="385vuF" value="check_LinkDeclaration_Specialized" />
          <node concept="3u3nmq" id="ce" role="385v07">
            <property role="3u3nmv" value="2854075155749507956" />
          </node>
        </node>
        <node concept="39e2AT" id="cd" role="39e2AY">
          <ref role="39e2AS" node="XZ" resolve="check_LinkDeclaration_Specialized_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="bv" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:2BJSfVLNFwS" resolve="check_LinkToAbstractConcept" />
        <node concept="385nmt" id="cf" role="385vvn">
          <property role="385vuF" value="check_LinkToAbstractConcept" />
          <node concept="3u3nmq" id="ch" role="385v07">
            <property role="3u3nmv" value="3021881260572063800" />
          </node>
        </node>
        <node concept="39e2AT" id="cg" role="39e2AY">
          <ref role="39e2AS" node="11B" resolve="check_LinkToAbstractConcept_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="bw" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:hCVF0P3" resolve="check_PropertyDeclaration" />
        <node concept="385nmt" id="ci" role="385vvn">
          <property role="385vuF" value="check_PropertyDeclaration" />
          <node concept="3u3nmq" id="ck" role="385v07">
            <property role="3u3nmv" value="1212181908803" />
          </node>
        </node>
        <node concept="39e2AT" id="cj" role="39e2AY">
          <ref role="39e2AS" node="13x" resolve="check_PropertyDeclaration_NonTypesystemRule" />
        </node>
      </node>
      <node concept="39e2AG" id="bx" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:2ZPUO8Yg1DV" resolve="check_RedundantSmartReferenceAttribute" />
        <node concept="385nmt" id="cl" role="385vvn">
          <property role="385vuF" value="check_RedundantSmartReferenceAttribute" />
          <node concept="3u3nmq" id="cn" role="385v07">
            <property role="3u3nmv" value="3455926958821481083" />
          </node>
        </node>
        <node concept="39e2AT" id="cm" role="39e2AY">
          <ref role="39e2AS" node="18a" resolve="check_RedundantSmartReferenceAttribute_NonTypesystemRule" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="bc" role="39e2AI">
      <property role="39e3Y2" value="isApplicableMethod" />
      <node concept="39e2AG" id="co" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:1o9qxtfa_BN" resolve="check_AbstractConceptDeclaration_Ids" />
        <node concept="385nmt" id="cE" role="385vvn">
          <property role="385vuF" value="check_AbstractConceptDeclaration_Ids" />
          <node concept="3u3nmq" id="cG" role="385v07">
            <property role="3u3nmv" value="1587916991969778163" />
          </node>
        </node>
        <node concept="39e2AT" id="cF" role="39e2AY">
          <ref role="39e2AS" node="j9" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="cp" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:6_fwX53iYzI" resolve="check_AttributeInfo" />
        <node concept="385nmt" id="cH" role="385vvn">
          <property role="385vuF" value="check_AttributeInfo" />
          <node concept="3u3nmq" id="cJ" role="385v07">
            <property role="3u3nmv" value="7588428831943026926" />
          </node>
        </node>
        <node concept="39e2AT" id="cI" role="39e2AY">
          <ref role="39e2AS" node="q3" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="cq" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:5HgiwiAJCYI" resolve="check_ConceptDeclaration" />
        <node concept="385nmt" id="cK" role="385vvn">
          <property role="385vuF" value="check_ConceptDeclaration" />
          <node concept="3u3nmq" id="cM" role="385v07">
            <property role="3u3nmv" value="6579840439426125742" />
          </node>
        </node>
        <node concept="39e2AT" id="cL" role="39e2AY">
          <ref role="39e2AS" node="sj" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="cr" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:3MXdqyhoYOB" resolve="check_ConceptDeclaration_iconPath" />
        <node concept="385nmt" id="cN" role="385vvn">
          <property role="385vuF" value="check_ConceptDeclaration_iconPath" />
          <node concept="3u3nmq" id="cP" role="385v07">
            <property role="3u3nmv" value="4376713410984013095" />
          </node>
        </node>
        <node concept="39e2AT" id="cO" role="39e2AY">
          <ref role="39e2AS" node="w6" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="cs" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:hrWhlMD" resolve="check_ConceptForNotImplementedMethods" />
        <node concept="385nmt" id="cQ" role="385vvn">
          <property role="385vuF" value="check_ConceptForNotImplementedMethods" />
          <node concept="3u3nmq" id="cS" role="385v07">
            <property role="3u3nmv" value="1198233312425" />
          </node>
        </node>
        <node concept="39e2AT" id="cR" role="39e2AY">
          <ref role="39e2AS" node="x$" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="ct" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:6Kv_6E71$Wq" resolve="check_DataTypeDeclaration_Ids" />
        <node concept="385nmt" id="cT" role="385vvn">
          <property role="385vuF" value="check_DataTypeDeclaration_Ids" />
          <node concept="3u3nmq" id="cV" role="385v07">
            <property role="3u3nmv" value="7791109065627029274" />
          </node>
        </node>
        <node concept="39e2AT" id="cU" role="39e2AY">
          <ref role="39e2AS" node="zU" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="cu" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:ROe8A_3ASm" resolve="check_DuplicateDataTypeDeclaration" />
        <node concept="385nmt" id="cW" role="385vvn">
          <property role="385vuF" value="check_DuplicateDataTypeDeclaration" />
          <node concept="3u3nmq" id="cY" role="385v07">
            <property role="3u3nmv" value="1005490780641324566" />
          </node>
        </node>
        <node concept="39e2AT" id="cX" role="39e2AY">
          <ref role="39e2AS" node="AS" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="cv" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:6uCSBqVTxCq" resolve="check_DuplicatedConceptName" />
        <node concept="385nmt" id="cZ" role="385vvn">
          <property role="385vuF" value="check_DuplicatedConceptName" />
          <node concept="3u3nmq" id="d1" role="385v07">
            <property role="3u3nmv" value="7469468981580405274" />
          </node>
        </node>
        <node concept="39e2AT" id="d0" role="39e2AY">
          <ref role="39e2AS" node="CK" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="cw" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:5DVpet2KwDa" resolve="check_EditorForNonAbstractConcept" />
        <node concept="385nmt" id="d2" role="385vvn">
          <property role="385vuF" value="check_EditorForNonAbstractConcept" />
          <node concept="3u3nmq" id="d4" role="385v07">
            <property role="3u3nmv" value="6519915829969160778" />
          </node>
        </node>
        <node concept="39e2AT" id="d3" role="39e2AY">
          <ref role="39e2AS" node="Ew" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="cx" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:VFd4X$twIN" resolve="check_EnumerationDeclaration" />
        <node concept="385nmt" id="d5" role="385vvn">
          <property role="385vuF" value="check_EnumerationDeclaration" />
          <node concept="3u3nmq" id="d7" role="385v07">
            <property role="3u3nmv" value="1075010451650513843" />
          </node>
        </node>
        <node concept="39e2AT" id="d6" role="39e2AY">
          <ref role="39e2AS" node="GZ" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="cy" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:1eSXJRelAno" resolve="check_EnumerationMemberDeclaration_Ids" />
        <node concept="385nmt" id="d8" role="385vvn">
          <property role="385vuF" value="check_EnumerationMemberDeclaration_Ids" />
          <node concept="3u3nmq" id="da" role="385v07">
            <property role="3u3nmv" value="1421157252384318936" />
          </node>
        </node>
        <node concept="39e2AT" id="d9" role="39e2AY">
          <ref role="39e2AS" node="Kv" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="cz" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:hYjEYMI" resolve="check_ExtendedConceptsAreInExtendedLanguages" />
        <node concept="385nmt" id="db" role="385vvn">
          <property role="385vuF" value="check_ExtendedConceptsAreInExtendedLanguages" />
          <node concept="3u3nmq" id="dd" role="385v07">
            <property role="3u3nmv" value="1235133131950" />
          </node>
        </node>
        <node concept="39e2AT" id="dc" role="39e2AY">
          <ref role="39e2AS" node="N_" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="c$" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:WyclBLqIoK" resolve="check_Finals" />
        <node concept="385nmt" id="de" role="385vvn">
          <property role="385vuF" value="check_Finals" />
          <node concept="3u3nmq" id="dg" role="385v07">
            <property role="3u3nmv" value="1090488322149246512" />
          </node>
        </node>
        <node concept="39e2AT" id="df" role="39e2AY">
          <ref role="39e2AS" node="SX" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="c_" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:hCVEpk3" resolve="check_LinkDeclaration" />
        <node concept="385nmt" id="dh" role="385vvn">
          <property role="385vuF" value="check_LinkDeclaration" />
          <node concept="3u3nmq" id="dj" role="385v07">
            <property role="3u3nmv" value="1212181746947" />
          </node>
        </node>
        <node concept="39e2AT" id="di" role="39e2AY">
          <ref role="39e2AS" node="Uj" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="cA" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:2urHzIcHTdO" resolve="check_LinkDeclaration_Specialized" />
        <node concept="385nmt" id="dk" role="385vvn">
          <property role="385vuF" value="check_LinkDeclaration_Specialized" />
          <node concept="3u3nmq" id="dm" role="385v07">
            <property role="3u3nmv" value="2854075155749507956" />
          </node>
        </node>
        <node concept="39e2AT" id="dl" role="39e2AY">
          <ref role="39e2AS" node="Y3" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="cB" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:2BJSfVLNFwS" resolve="check_LinkToAbstractConcept" />
        <node concept="385nmt" id="dn" role="385vvn">
          <property role="385vuF" value="check_LinkToAbstractConcept" />
          <node concept="3u3nmq" id="dp" role="385v07">
            <property role="3u3nmv" value="3021881260572063800" />
          </node>
        </node>
        <node concept="39e2AT" id="do" role="39e2AY">
          <ref role="39e2AS" node="11F" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="cC" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:hCVF0P3" resolve="check_PropertyDeclaration" />
        <node concept="385nmt" id="dq" role="385vvn">
          <property role="385vuF" value="check_PropertyDeclaration" />
          <node concept="3u3nmq" id="ds" role="385v07">
            <property role="3u3nmv" value="1212181908803" />
          </node>
        </node>
        <node concept="39e2AT" id="dr" role="39e2AY">
          <ref role="39e2AS" node="13_" resolve="isApplicableAndPattern" />
        </node>
      </node>
      <node concept="39e2AG" id="cD" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:2ZPUO8Yg1DV" resolve="check_RedundantSmartReferenceAttribute" />
        <node concept="385nmt" id="dt" role="385vvn">
          <property role="385vuF" value="check_RedundantSmartReferenceAttribute" />
          <node concept="3u3nmq" id="dv" role="385v07">
            <property role="3u3nmv" value="3455926958821481083" />
          </node>
        </node>
        <node concept="39e2AT" id="du" role="39e2AY">
          <ref role="39e2AS" node="18e" resolve="isApplicableAndPattern" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="bd" role="39e2AI">
      <property role="39e3Y2" value="mainMethodForRule" />
      <node concept="39e2AG" id="dw" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:1o9qxtfa_BN" resolve="check_AbstractConceptDeclaration_Ids" />
        <node concept="385nmt" id="dM" role="385vvn">
          <property role="385vuF" value="check_AbstractConceptDeclaration_Ids" />
          <node concept="3u3nmq" id="dO" role="385v07">
            <property role="3u3nmv" value="1587916991969778163" />
          </node>
        </node>
        <node concept="39e2AT" id="dN" role="39e2AY">
          <ref role="39e2AS" node="j7" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="dx" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:6_fwX53iYzI" resolve="check_AttributeInfo" />
        <node concept="385nmt" id="dP" role="385vvn">
          <property role="385vuF" value="check_AttributeInfo" />
          <node concept="3u3nmq" id="dR" role="385v07">
            <property role="3u3nmv" value="7588428831943026926" />
          </node>
        </node>
        <node concept="39e2AT" id="dQ" role="39e2AY">
          <ref role="39e2AS" node="q1" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="dy" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:5HgiwiAJCYI" resolve="check_ConceptDeclaration" />
        <node concept="385nmt" id="dS" role="385vvn">
          <property role="385vuF" value="check_ConceptDeclaration" />
          <node concept="3u3nmq" id="dU" role="385v07">
            <property role="3u3nmv" value="6579840439426125742" />
          </node>
        </node>
        <node concept="39e2AT" id="dT" role="39e2AY">
          <ref role="39e2AS" node="sh" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="dz" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:3MXdqyhoYOB" resolve="check_ConceptDeclaration_iconPath" />
        <node concept="385nmt" id="dV" role="385vvn">
          <property role="385vuF" value="check_ConceptDeclaration_iconPath" />
          <node concept="3u3nmq" id="dX" role="385v07">
            <property role="3u3nmv" value="4376713410984013095" />
          </node>
        </node>
        <node concept="39e2AT" id="dW" role="39e2AY">
          <ref role="39e2AS" node="w4" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="d$" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:hrWhlMD" resolve="check_ConceptForNotImplementedMethods" />
        <node concept="385nmt" id="dY" role="385vvn">
          <property role="385vuF" value="check_ConceptForNotImplementedMethods" />
          <node concept="3u3nmq" id="e0" role="385v07">
            <property role="3u3nmv" value="1198233312425" />
          </node>
        </node>
        <node concept="39e2AT" id="dZ" role="39e2AY">
          <ref role="39e2AS" node="xy" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="d_" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:6Kv_6E71$Wq" resolve="check_DataTypeDeclaration_Ids" />
        <node concept="385nmt" id="e1" role="385vvn">
          <property role="385vuF" value="check_DataTypeDeclaration_Ids" />
          <node concept="3u3nmq" id="e3" role="385v07">
            <property role="3u3nmv" value="7791109065627029274" />
          </node>
        </node>
        <node concept="39e2AT" id="e2" role="39e2AY">
          <ref role="39e2AS" node="zS" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="dA" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:ROe8A_3ASm" resolve="check_DuplicateDataTypeDeclaration" />
        <node concept="385nmt" id="e4" role="385vvn">
          <property role="385vuF" value="check_DuplicateDataTypeDeclaration" />
          <node concept="3u3nmq" id="e6" role="385v07">
            <property role="3u3nmv" value="1005490780641324566" />
          </node>
        </node>
        <node concept="39e2AT" id="e5" role="39e2AY">
          <ref role="39e2AS" node="AQ" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="dB" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:6uCSBqVTxCq" resolve="check_DuplicatedConceptName" />
        <node concept="385nmt" id="e7" role="385vvn">
          <property role="385vuF" value="check_DuplicatedConceptName" />
          <node concept="3u3nmq" id="e9" role="385v07">
            <property role="3u3nmv" value="7469468981580405274" />
          </node>
        </node>
        <node concept="39e2AT" id="e8" role="39e2AY">
          <ref role="39e2AS" node="CI" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="dC" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:5DVpet2KwDa" resolve="check_EditorForNonAbstractConcept" />
        <node concept="385nmt" id="ea" role="385vvn">
          <property role="385vuF" value="check_EditorForNonAbstractConcept" />
          <node concept="3u3nmq" id="ec" role="385v07">
            <property role="3u3nmv" value="6519915829969160778" />
          </node>
        </node>
        <node concept="39e2AT" id="eb" role="39e2AY">
          <ref role="39e2AS" node="Eu" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="dD" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:VFd4X$twIN" resolve="check_EnumerationDeclaration" />
        <node concept="385nmt" id="ed" role="385vvn">
          <property role="385vuF" value="check_EnumerationDeclaration" />
          <node concept="3u3nmq" id="ef" role="385v07">
            <property role="3u3nmv" value="1075010451650513843" />
          </node>
        </node>
        <node concept="39e2AT" id="ee" role="39e2AY">
          <ref role="39e2AS" node="GX" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="dE" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:1eSXJRelAno" resolve="check_EnumerationMemberDeclaration_Ids" />
        <node concept="385nmt" id="eg" role="385vvn">
          <property role="385vuF" value="check_EnumerationMemberDeclaration_Ids" />
          <node concept="3u3nmq" id="ei" role="385v07">
            <property role="3u3nmv" value="1421157252384318936" />
          </node>
        </node>
        <node concept="39e2AT" id="eh" role="39e2AY">
          <ref role="39e2AS" node="Kt" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="dF" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:hYjEYMI" resolve="check_ExtendedConceptsAreInExtendedLanguages" />
        <node concept="385nmt" id="ej" role="385vvn">
          <property role="385vuF" value="check_ExtendedConceptsAreInExtendedLanguages" />
          <node concept="3u3nmq" id="el" role="385v07">
            <property role="3u3nmv" value="1235133131950" />
          </node>
        </node>
        <node concept="39e2AT" id="ek" role="39e2AY">
          <ref role="39e2AS" node="Nz" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="dG" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:WyclBLqIoK" resolve="check_Finals" />
        <node concept="385nmt" id="em" role="385vvn">
          <property role="385vuF" value="check_Finals" />
          <node concept="3u3nmq" id="eo" role="385v07">
            <property role="3u3nmv" value="1090488322149246512" />
          </node>
        </node>
        <node concept="39e2AT" id="en" role="39e2AY">
          <ref role="39e2AS" node="SV" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="dH" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:hCVEpk3" resolve="check_LinkDeclaration" />
        <node concept="385nmt" id="ep" role="385vvn">
          <property role="385vuF" value="check_LinkDeclaration" />
          <node concept="3u3nmq" id="er" role="385v07">
            <property role="3u3nmv" value="1212181746947" />
          </node>
        </node>
        <node concept="39e2AT" id="eq" role="39e2AY">
          <ref role="39e2AS" node="Uh" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="dI" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:2urHzIcHTdO" resolve="check_LinkDeclaration_Specialized" />
        <node concept="385nmt" id="es" role="385vvn">
          <property role="385vuF" value="check_LinkDeclaration_Specialized" />
          <node concept="3u3nmq" id="eu" role="385v07">
            <property role="3u3nmv" value="2854075155749507956" />
          </node>
        </node>
        <node concept="39e2AT" id="et" role="39e2AY">
          <ref role="39e2AS" node="Y1" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="dJ" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:2BJSfVLNFwS" resolve="check_LinkToAbstractConcept" />
        <node concept="385nmt" id="ev" role="385vvn">
          <property role="385vuF" value="check_LinkToAbstractConcept" />
          <node concept="3u3nmq" id="ex" role="385v07">
            <property role="3u3nmv" value="3021881260572063800" />
          </node>
        </node>
        <node concept="39e2AT" id="ew" role="39e2AY">
          <ref role="39e2AS" node="11D" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="dK" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:hCVF0P3" resolve="check_PropertyDeclaration" />
        <node concept="385nmt" id="ey" role="385vvn">
          <property role="385vuF" value="check_PropertyDeclaration" />
          <node concept="3u3nmq" id="e$" role="385v07">
            <property role="3u3nmv" value="1212181908803" />
          </node>
        </node>
        <node concept="39e2AT" id="ez" role="39e2AY">
          <ref role="39e2AS" node="13z" resolve="applyRule" />
        </node>
      </node>
      <node concept="39e2AG" id="dL" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:2ZPUO8Yg1DV" resolve="check_RedundantSmartReferenceAttribute" />
        <node concept="385nmt" id="e_" role="385vvn">
          <property role="385vuF" value="check_RedundantSmartReferenceAttribute" />
          <node concept="3u3nmq" id="eB" role="385v07">
            <property role="3u3nmv" value="3455926958821481083" />
          </node>
        </node>
        <node concept="39e2AT" id="eA" role="39e2AY">
          <ref role="39e2AS" node="18c" resolve="applyRule" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="be" role="39e2AI">
      <property role="39e3Y2" value="quickFix" />
      <node concept="39e2AG" id="eC" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:2BhfHtuWIb6" resolve="AddExtendedLanguage" />
        <node concept="385nmt" id="eI" role="385vvn">
          <property role="385vuF" value="AddExtendedLanguage" />
          <node concept="3u3nmq" id="eK" role="385v07">
            <property role="3u3nmv" value="3013258720419439302" />
          </node>
        </node>
        <node concept="39e2AT" id="eJ" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="AddExtendedLanguage_QuickFix" />
        </node>
      </node>
      <node concept="39e2AG" id="eD" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:4H96pIbEyix" resolve="CorrectDuplicateId" />
        <node concept="385nmt" id="eL" role="385vvn">
          <property role="385vuF" value="CorrectDuplicateId" />
          <node concept="3u3nmq" id="eN" role="385v07">
            <property role="3u3nmv" value="5424895381998281889" />
          </node>
        </node>
        <node concept="39e2AT" id="eM" role="39e2AY">
          <ref role="39e2AS" node="11" resolve="CorrectDuplicateId_QuickFix" />
        </node>
      </node>
      <node concept="39e2AG" id="eE" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:3yB0zvVO8jE" resolve="CreateMissingStub" />
        <node concept="385nmt" id="eO" role="385vvn">
          <property role="385vuF" value="CreateMissingStub" />
          <node concept="3u3nmq" id="eQ" role="385v07">
            <property role="3u3nmv" value="4082234026705847530" />
          </node>
        </node>
        <node concept="39e2AT" id="eP" role="39e2AY">
          <ref role="39e2AS" node="5y" resolve="CreateMissingStub_QuickFix" />
        </node>
      </node>
      <node concept="39e2AG" id="eF" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:6_fwX53jd22" resolve="FixAttributeInfo" />
        <node concept="385nmt" id="eR" role="385vvn">
          <property role="385vuF" value="FixAttributeInfo" />
          <node concept="3u3nmq" id="eT" role="385v07">
            <property role="3u3nmv" value="7588428831943086210" />
          </node>
        </node>
        <node concept="39e2AT" id="eS" role="39e2AY">
          <ref role="39e2AS" node="8W" resolve="FixAttributeInfo_QuickFix" />
        </node>
      </node>
      <node concept="39e2AG" id="eG" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:1o9qxtfaNHN" resolve="GenerateConceptIds" />
        <node concept="385nmt" id="eU" role="385vvn">
          <property role="385vuF" value="GenerateConceptIds" />
          <node concept="3u3nmq" id="eW" role="385v07">
            <property role="3u3nmv" value="1587916991969835891" />
          </node>
        </node>
        <node concept="39e2AT" id="eV" role="39e2AY">
          <ref role="39e2AS" node="am" resolve="GenerateConceptIds_QuickFix" />
        </node>
      </node>
      <node concept="39e2AG" id="eH" role="39e3Y0">
        <ref role="39e2AK" to="tpcj:2ZPUO8Yh88Y" resolve="fix_RedundantSmartReferenceAttribute" />
        <node concept="385nmt" id="eX" role="385vvn">
          <property role="385vuF" value="fix_RedundantSmartReferenceAttribute" />
          <node concept="3u3nmq" id="eZ" role="385v07">
            <property role="3u3nmv" value="3455926958821769790" />
          </node>
        </node>
        <node concept="39e2AT" id="eY" role="39e2AY">
          <ref role="39e2AS" node="1a_" resolve="fix_RedundantSmartReferenceAttribute_QuickFix" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="bf" role="39e2AI">
      <property role="39e3Y2" value="descriptorClass" />
      <node concept="39e2AG" id="f0" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="f1" role="39e2AY">
          <ref role="39e2AS" node="f2" resolve="TypesystemDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="f2">
    <property role="TrG5h" value="TypesystemDescriptor" />
    <node concept="3clFbW" id="f3" role="jymVt">
      <node concept="3clFbS" id="f6" role="3clF47">
        <node concept="9aQIb" id="f9" role="3cqZAp">
          <node concept="3clFbS" id="fr" role="9aQI4">
            <node concept="3cpWs8" id="fs" role="3cqZAp">
              <node concept="3cpWsn" id="fu" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="fv" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="fw" role="33vP2m">
                  <node concept="1pGfFk" id="fx" role="2ShVmc">
                    <ref role="37wK5l" node="j6" resolve="check_AbstractConceptDeclaration_Ids_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="ft" role="3cqZAp">
              <node concept="2OqwBi" id="fy" role="3clFbG">
                <node concept="2OqwBi" id="fz" role="2Oq$k0">
                  <node concept="Xjq3P" id="f_" role="2Oq$k0" />
                  <node concept="2OwXpG" id="fA" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="f$" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="fB" role="37wK5m">
                    <ref role="3cqZAo" node="fu" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="fa" role="3cqZAp">
          <node concept="3clFbS" id="fC" role="9aQI4">
            <node concept="3cpWs8" id="fD" role="3cqZAp">
              <node concept="3cpWsn" id="fF" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="fG" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="fH" role="33vP2m">
                  <node concept="1pGfFk" id="fI" role="2ShVmc">
                    <ref role="37wK5l" node="q0" resolve="check_AttributeInfo_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="fE" role="3cqZAp">
              <node concept="2OqwBi" id="fJ" role="3clFbG">
                <node concept="2OqwBi" id="fK" role="2Oq$k0">
                  <node concept="Xjq3P" id="fM" role="2Oq$k0" />
                  <node concept="2OwXpG" id="fN" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="fL" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="fO" role="37wK5m">
                    <ref role="3cqZAo" node="fF" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="fb" role="3cqZAp">
          <node concept="3clFbS" id="fP" role="9aQI4">
            <node concept="3cpWs8" id="fQ" role="3cqZAp">
              <node concept="3cpWsn" id="fS" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="fT" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="fU" role="33vP2m">
                  <node concept="1pGfFk" id="fV" role="2ShVmc">
                    <ref role="37wK5l" node="sg" resolve="check_ConceptDeclaration_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="fR" role="3cqZAp">
              <node concept="2OqwBi" id="fW" role="3clFbG">
                <node concept="2OqwBi" id="fX" role="2Oq$k0">
                  <node concept="Xjq3P" id="fZ" role="2Oq$k0" />
                  <node concept="2OwXpG" id="g0" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="fY" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="g1" role="37wK5m">
                    <ref role="3cqZAo" node="fS" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="fc" role="3cqZAp">
          <node concept="3clFbS" id="g2" role="9aQI4">
            <node concept="3cpWs8" id="g3" role="3cqZAp">
              <node concept="3cpWsn" id="g5" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="g6" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="g7" role="33vP2m">
                  <node concept="1pGfFk" id="g8" role="2ShVmc">
                    <ref role="37wK5l" node="w3" resolve="check_ConceptDeclaration_iconPath_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="g4" role="3cqZAp">
              <node concept="2OqwBi" id="g9" role="3clFbG">
                <node concept="2OqwBi" id="ga" role="2Oq$k0">
                  <node concept="Xjq3P" id="gc" role="2Oq$k0" />
                  <node concept="2OwXpG" id="gd" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="gb" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="ge" role="37wK5m">
                    <ref role="3cqZAo" node="g5" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="fd" role="3cqZAp">
          <node concept="3clFbS" id="gf" role="9aQI4">
            <node concept="3cpWs8" id="gg" role="3cqZAp">
              <node concept="3cpWsn" id="gi" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="gj" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="gk" role="33vP2m">
                  <node concept="1pGfFk" id="gl" role="2ShVmc">
                    <ref role="37wK5l" node="xx" resolve="check_ConceptForNotImplementedMethods_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="gh" role="3cqZAp">
              <node concept="2OqwBi" id="gm" role="3clFbG">
                <node concept="2OqwBi" id="gn" role="2Oq$k0">
                  <node concept="Xjq3P" id="gp" role="2Oq$k0" />
                  <node concept="2OwXpG" id="gq" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="go" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="gr" role="37wK5m">
                    <ref role="3cqZAo" node="gi" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="fe" role="3cqZAp">
          <node concept="3clFbS" id="gs" role="9aQI4">
            <node concept="3cpWs8" id="gt" role="3cqZAp">
              <node concept="3cpWsn" id="gv" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="gw" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="gx" role="33vP2m">
                  <node concept="1pGfFk" id="gy" role="2ShVmc">
                    <ref role="37wK5l" node="zR" resolve="check_DataTypeDeclaration_Ids_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="gu" role="3cqZAp">
              <node concept="2OqwBi" id="gz" role="3clFbG">
                <node concept="2OqwBi" id="g$" role="2Oq$k0">
                  <node concept="Xjq3P" id="gA" role="2Oq$k0" />
                  <node concept="2OwXpG" id="gB" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="g_" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="gC" role="37wK5m">
                    <ref role="3cqZAo" node="gv" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="ff" role="3cqZAp">
          <node concept="3clFbS" id="gD" role="9aQI4">
            <node concept="3cpWs8" id="gE" role="3cqZAp">
              <node concept="3cpWsn" id="gG" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="gH" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="gI" role="33vP2m">
                  <node concept="1pGfFk" id="gJ" role="2ShVmc">
                    <ref role="37wK5l" node="AP" resolve="check_DuplicateDataTypeDeclaration_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="gF" role="3cqZAp">
              <node concept="2OqwBi" id="gK" role="3clFbG">
                <node concept="2OqwBi" id="gL" role="2Oq$k0">
                  <node concept="Xjq3P" id="gN" role="2Oq$k0" />
                  <node concept="2OwXpG" id="gO" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="gM" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="gP" role="37wK5m">
                    <ref role="3cqZAo" node="gG" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="fg" role="3cqZAp">
          <node concept="3clFbS" id="gQ" role="9aQI4">
            <node concept="3cpWs8" id="gR" role="3cqZAp">
              <node concept="3cpWsn" id="gT" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="gU" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="gV" role="33vP2m">
                  <node concept="1pGfFk" id="gW" role="2ShVmc">
                    <ref role="37wK5l" node="CH" resolve="check_DuplicatedConceptName_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="gS" role="3cqZAp">
              <node concept="2OqwBi" id="gX" role="3clFbG">
                <node concept="2OqwBi" id="gY" role="2Oq$k0">
                  <node concept="Xjq3P" id="h0" role="2Oq$k0" />
                  <node concept="2OwXpG" id="h1" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="gZ" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="h2" role="37wK5m">
                    <ref role="3cqZAo" node="gT" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="fh" role="3cqZAp">
          <node concept="3clFbS" id="h3" role="9aQI4">
            <node concept="3cpWs8" id="h4" role="3cqZAp">
              <node concept="3cpWsn" id="h6" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="h7" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="h8" role="33vP2m">
                  <node concept="1pGfFk" id="h9" role="2ShVmc">
                    <ref role="37wK5l" node="Et" resolve="check_EditorForNonAbstractConcept_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="h5" role="3cqZAp">
              <node concept="2OqwBi" id="ha" role="3clFbG">
                <node concept="2OqwBi" id="hb" role="2Oq$k0">
                  <node concept="Xjq3P" id="hd" role="2Oq$k0" />
                  <node concept="2OwXpG" id="he" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="hc" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="hf" role="37wK5m">
                    <ref role="3cqZAo" node="h6" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="fi" role="3cqZAp">
          <node concept="3clFbS" id="hg" role="9aQI4">
            <node concept="3cpWs8" id="hh" role="3cqZAp">
              <node concept="3cpWsn" id="hj" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="hk" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="hl" role="33vP2m">
                  <node concept="1pGfFk" id="hm" role="2ShVmc">
                    <ref role="37wK5l" node="GW" resolve="check_EnumerationDeclaration_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="hi" role="3cqZAp">
              <node concept="2OqwBi" id="hn" role="3clFbG">
                <node concept="2OqwBi" id="ho" role="2Oq$k0">
                  <node concept="Xjq3P" id="hq" role="2Oq$k0" />
                  <node concept="2OwXpG" id="hr" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="hp" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="hs" role="37wK5m">
                    <ref role="3cqZAo" node="hj" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="fj" role="3cqZAp">
          <node concept="3clFbS" id="ht" role="9aQI4">
            <node concept="3cpWs8" id="hu" role="3cqZAp">
              <node concept="3cpWsn" id="hw" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="hx" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="hy" role="33vP2m">
                  <node concept="1pGfFk" id="hz" role="2ShVmc">
                    <ref role="37wK5l" node="Ks" resolve="check_EnumerationMemberDeclaration_Ids_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="hv" role="3cqZAp">
              <node concept="2OqwBi" id="h$" role="3clFbG">
                <node concept="2OqwBi" id="h_" role="2Oq$k0">
                  <node concept="Xjq3P" id="hB" role="2Oq$k0" />
                  <node concept="2OwXpG" id="hC" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="hA" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="hD" role="37wK5m">
                    <ref role="3cqZAo" node="hw" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="fk" role="3cqZAp">
          <node concept="3clFbS" id="hE" role="9aQI4">
            <node concept="3cpWs8" id="hF" role="3cqZAp">
              <node concept="3cpWsn" id="hH" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="hI" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="hJ" role="33vP2m">
                  <node concept="1pGfFk" id="hK" role="2ShVmc">
                    <ref role="37wK5l" node="Ny" resolve="check_ExtendedConceptsAreInExtendedLanguages_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="hG" role="3cqZAp">
              <node concept="2OqwBi" id="hL" role="3clFbG">
                <node concept="2OqwBi" id="hM" role="2Oq$k0">
                  <node concept="Xjq3P" id="hO" role="2Oq$k0" />
                  <node concept="2OwXpG" id="hP" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="hN" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="hQ" role="37wK5m">
                    <ref role="3cqZAo" node="hH" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="fl" role="3cqZAp">
          <node concept="3clFbS" id="hR" role="9aQI4">
            <node concept="3cpWs8" id="hS" role="3cqZAp">
              <node concept="3cpWsn" id="hU" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="hV" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="hW" role="33vP2m">
                  <node concept="1pGfFk" id="hX" role="2ShVmc">
                    <ref role="37wK5l" node="SU" resolve="check_Finals_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="hT" role="3cqZAp">
              <node concept="2OqwBi" id="hY" role="3clFbG">
                <node concept="2OqwBi" id="hZ" role="2Oq$k0">
                  <node concept="Xjq3P" id="i1" role="2Oq$k0" />
                  <node concept="2OwXpG" id="i2" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="i0" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="i3" role="37wK5m">
                    <ref role="3cqZAo" node="hU" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="fm" role="3cqZAp">
          <node concept="3clFbS" id="i4" role="9aQI4">
            <node concept="3cpWs8" id="i5" role="3cqZAp">
              <node concept="3cpWsn" id="i7" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="i8" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="i9" role="33vP2m">
                  <node concept="1pGfFk" id="ia" role="2ShVmc">
                    <ref role="37wK5l" node="Ug" resolve="check_LinkDeclaration_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="i6" role="3cqZAp">
              <node concept="2OqwBi" id="ib" role="3clFbG">
                <node concept="2OqwBi" id="ic" role="2Oq$k0">
                  <node concept="Xjq3P" id="ie" role="2Oq$k0" />
                  <node concept="2OwXpG" id="if" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="id" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="ig" role="37wK5m">
                    <ref role="3cqZAo" node="i7" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="fn" role="3cqZAp">
          <node concept="3clFbS" id="ih" role="9aQI4">
            <node concept="3cpWs8" id="ii" role="3cqZAp">
              <node concept="3cpWsn" id="ik" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="il" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="im" role="33vP2m">
                  <node concept="1pGfFk" id="in" role="2ShVmc">
                    <ref role="37wK5l" node="Y0" resolve="check_LinkDeclaration_Specialized_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="ij" role="3cqZAp">
              <node concept="2OqwBi" id="io" role="3clFbG">
                <node concept="2OqwBi" id="ip" role="2Oq$k0">
                  <node concept="Xjq3P" id="ir" role="2Oq$k0" />
                  <node concept="2OwXpG" id="is" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="iq" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="it" role="37wK5m">
                    <ref role="3cqZAo" node="ik" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="fo" role="3cqZAp">
          <node concept="3clFbS" id="iu" role="9aQI4">
            <node concept="3cpWs8" id="iv" role="3cqZAp">
              <node concept="3cpWsn" id="ix" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="iy" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="iz" role="33vP2m">
                  <node concept="1pGfFk" id="i$" role="2ShVmc">
                    <ref role="37wK5l" node="11C" resolve="check_LinkToAbstractConcept_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="iw" role="3cqZAp">
              <node concept="2OqwBi" id="i_" role="3clFbG">
                <node concept="2OqwBi" id="iA" role="2Oq$k0">
                  <node concept="Xjq3P" id="iC" role="2Oq$k0" />
                  <node concept="2OwXpG" id="iD" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="iB" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="iE" role="37wK5m">
                    <ref role="3cqZAo" node="ix" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="fp" role="3cqZAp">
          <node concept="3clFbS" id="iF" role="9aQI4">
            <node concept="3cpWs8" id="iG" role="3cqZAp">
              <node concept="3cpWsn" id="iI" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="iJ" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="iK" role="33vP2m">
                  <node concept="1pGfFk" id="iL" role="2ShVmc">
                    <ref role="37wK5l" node="13y" resolve="check_PropertyDeclaration_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="iH" role="3cqZAp">
              <node concept="2OqwBi" id="iM" role="3clFbG">
                <node concept="2OqwBi" id="iN" role="2Oq$k0">
                  <node concept="Xjq3P" id="iP" role="2Oq$k0" />
                  <node concept="2OwXpG" id="iQ" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="iO" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="iR" role="37wK5m">
                    <ref role="3cqZAo" node="iI" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="fq" role="3cqZAp">
          <node concept="3clFbS" id="iS" role="9aQI4">
            <node concept="3cpWs8" id="iT" role="3cqZAp">
              <node concept="3cpWsn" id="iV" role="3cpWs9">
                <property role="TrG5h" value="nonTypesystemRule" />
                <node concept="3uibUv" id="iW" role="1tU5fm">
                  <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
                </node>
                <node concept="2ShNRf" id="iX" role="33vP2m">
                  <node concept="1pGfFk" id="iY" role="2ShVmc">
                    <ref role="37wK5l" node="18b" resolve="check_RedundantSmartReferenceAttribute_NonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="iU" role="3cqZAp">
              <node concept="2OqwBi" id="iZ" role="3clFbG">
                <node concept="2OqwBi" id="j0" role="2Oq$k0">
                  <node concept="Xjq3P" id="j2" role="2Oq$k0" />
                  <node concept="2OwXpG" id="j3" role="2OqNvi">
                    <ref role="2Oxat5" to="qurh:~BaseHelginsDescriptor.myNonTypesystemRules" resolve="myNonTypesystemRules" />
                  </node>
                </node>
                <node concept="liA8E" id="j1" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="j4" role="37wK5m">
                    <ref role="3cqZAo" node="iV" resolve="nonTypesystemRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="f7" role="1B3o_S" />
      <node concept="3cqZAl" id="f8" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="f4" role="1B3o_S" />
    <node concept="3uibUv" id="f5" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~BaseHelginsDescriptor" resolve="BaseHelginsDescriptor" />
    </node>
  </node>
  <node concept="312cEu" id="j5">
    <property role="TrG5h" value="check_AbstractConceptDeclaration_Ids_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:1587916991969778163" />
    <node concept="3clFbW" id="j6" role="jymVt">
      <uo k="s:originTrace" v="n:1587916991969778163" />
      <node concept="3clFbS" id="je" role="3clF47">
        <uo k="s:originTrace" v="n:1587916991969778163" />
      </node>
      <node concept="3Tm1VV" id="jf" role="1B3o_S">
        <uo k="s:originTrace" v="n:1587916991969778163" />
      </node>
      <node concept="3cqZAl" id="jg" role="3clF45">
        <uo k="s:originTrace" v="n:1587916991969778163" />
      </node>
    </node>
    <node concept="3clFb_" id="j7" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1587916991969778163" />
      <node concept="3cqZAl" id="jh" role="3clF45">
        <uo k="s:originTrace" v="n:1587916991969778163" />
      </node>
      <node concept="37vLTG" id="ji" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="acd" />
        <uo k="s:originTrace" v="n:1587916991969778163" />
        <node concept="3Tqbb2" id="jn" role="1tU5fm">
          <uo k="s:originTrace" v="n:1587916991969778163" />
        </node>
      </node>
      <node concept="37vLTG" id="jj" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1587916991969778163" />
        <node concept="3uibUv" id="jo" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1587916991969778163" />
        </node>
      </node>
      <node concept="37vLTG" id="jk" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1587916991969778163" />
        <node concept="3uibUv" id="jp" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1587916991969778163" />
        </node>
      </node>
      <node concept="3clFbS" id="jl" role="3clF47">
        <uo k="s:originTrace" v="n:1587916991969778164" />
        <node concept="3clFbJ" id="jq" role="3cqZAp">
          <uo k="s:originTrace" v="n:771747693430363274" />
          <node concept="3clFbS" id="jx" role="3clFbx">
            <uo k="s:originTrace" v="n:771747693430363276" />
            <node concept="3cpWs6" id="jz" role="3cqZAp">
              <uo k="s:originTrace" v="n:771747693430410465" />
            </node>
          </node>
          <node concept="3fqX7Q" id="jy" role="3clFbw">
            <uo k="s:originTrace" v="n:771747693430409111" />
            <node concept="2OqwBi" id="j$" role="3fr31v">
              <uo k="s:originTrace" v="n:771747693430409113" />
              <node concept="2OqwBi" id="j_" role="2Oq$k0">
                <uo k="s:originTrace" v="n:771747693430409114" />
                <node concept="37vLTw" id="jB" role="2Oq$k0">
                  <ref role="3cqZAo" node="ji" resolve="acd" />
                  <uo k="s:originTrace" v="n:771747693430409115" />
                </node>
                <node concept="I4A8Y" id="jC" role="2OqNvi">
                  <uo k="s:originTrace" v="n:771747693430409116" />
                </node>
              </node>
              <node concept="3zA4fs" id="jA" role="2OqNvi">
                <ref role="3zA4av" to="tpcc:2LiUEk8oQ$g" resolve="structure" />
                <uo k="s:originTrace" v="n:771747693430409117" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="jr" role="3cqZAp">
          <uo k="s:originTrace" v="n:771747693430361526" />
        </node>
        <node concept="3clFbJ" id="js" role="3cqZAp">
          <uo k="s:originTrace" v="n:1587916991969778221" />
          <node concept="9aQIb" id="jD" role="9aQIa">
            <uo k="s:originTrace" v="n:5424895381998224336" />
            <node concept="3clFbS" id="jG" role="9aQI4">
              <uo k="s:originTrace" v="n:5424895381998224337" />
              <node concept="3clFbJ" id="jH" role="3cqZAp">
                <uo k="s:originTrace" v="n:5424895381998224443" />
                <node concept="2OqwBi" id="jI" role="3clFbw">
                  <uo k="s:originTrace" v="n:5424895381998238259" />
                  <node concept="2OqwBi" id="jK" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:5424895381998227998" />
                    <node concept="2OqwBi" id="jM" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:5424895381998225086" />
                      <node concept="37vLTw" id="jO" role="2Oq$k0">
                        <ref role="3cqZAo" node="ji" resolve="acd" />
                        <uo k="s:originTrace" v="n:5424895381998224455" />
                      </node>
                      <node concept="I4A8Y" id="jP" role="2OqNvi">
                        <uo k="s:originTrace" v="n:5424895381998226088" />
                      </node>
                    </node>
                    <node concept="2SmgA7" id="jN" role="2OqNvi">
                      <uo k="s:originTrace" v="n:5424895381998229345" />
                      <node concept="chp4Y" id="jQ" role="1dBWTz">
                        <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                        <uo k="s:originTrace" v="n:5424895381998230207" />
                      </node>
                    </node>
                  </node>
                  <node concept="2HwmR7" id="jL" role="2OqNvi">
                    <uo k="s:originTrace" v="n:5424895381998248114" />
                    <node concept="1bVj0M" id="jR" role="23t8la">
                      <uo k="s:originTrace" v="n:5424895381998248116" />
                      <node concept="3clFbS" id="jS" role="1bW5cS">
                        <uo k="s:originTrace" v="n:5424895381998248117" />
                        <node concept="3clFbF" id="jU" role="3cqZAp">
                          <uo k="s:originTrace" v="n:5424895381998248357" />
                          <node concept="1Wc70l" id="jV" role="3clFbG">
                            <uo k="s:originTrace" v="n:5424895381998410170" />
                            <node concept="3y3z36" id="jW" role="3uHU7B">
                              <uo k="s:originTrace" v="n:5424895381998413313" />
                              <node concept="37vLTw" id="jY" role="3uHU7w">
                                <ref role="3cqZAo" node="ji" resolve="acd" />
                                <uo k="s:originTrace" v="n:5424895381998414570" />
                              </node>
                              <node concept="37vLTw" id="jZ" role="3uHU7B">
                                <ref role="3cqZAo" node="jT" resolve="it" />
                                <uo k="s:originTrace" v="n:5424895381998411441" />
                              </node>
                            </node>
                            <node concept="17R0WA" id="jX" role="3uHU7w">
                              <uo k="s:originTrace" v="n:5424895381998257763" />
                              <node concept="2OqwBi" id="k0" role="3uHU7w">
                                <uo k="s:originTrace" v="n:5424895381998259613" />
                                <node concept="37vLTw" id="k2" role="2Oq$k0">
                                  <ref role="3cqZAo" node="ji" resolve="acd" />
                                  <uo k="s:originTrace" v="n:5424895381998258253" />
                                </node>
                                <node concept="3TrcHB" id="k3" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpce:5OIo7_R7SN0" resolve="conceptId" />
                                  <uo k="s:originTrace" v="n:5424895381998262065" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="k1" role="3uHU7B">
                                <uo k="s:originTrace" v="n:5424895381998249377" />
                                <node concept="37vLTw" id="k4" role="2Oq$k0">
                                  <ref role="3cqZAo" node="jT" resolve="it" />
                                  <uo k="s:originTrace" v="n:5424895381998248356" />
                                </node>
                                <node concept="3TrcHB" id="k5" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpce:5OIo7_R7SN0" resolve="conceptId" />
                                  <uo k="s:originTrace" v="n:5424895381998250912" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="jT" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <uo k="s:originTrace" v="n:6847626768367732801" />
                        <node concept="2jxLKc" id="k6" role="1tU5fm">
                          <uo k="s:originTrace" v="n:6847626768367732802" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="jJ" role="3clFbx">
                  <uo k="s:originTrace" v="n:5424895381998224445" />
                  <node concept="9aQIb" id="k7" role="3cqZAp">
                    <uo k="s:originTrace" v="n:5424895381998262898" />
                    <node concept="3clFbS" id="k8" role="9aQI4">
                      <node concept="3cpWs8" id="ka" role="3cqZAp">
                        <node concept="3cpWsn" id="kd" role="3cpWs9">
                          <property role="TrG5h" value="errorTarget" />
                          <property role="3TUv4t" value="true" />
                          <node concept="3uibUv" id="ke" role="1tU5fm">
                            <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                          </node>
                          <node concept="2ShNRf" id="kf" role="33vP2m">
                            <node concept="1pGfFk" id="kg" role="2ShVmc">
                              <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="kb" role="3cqZAp">
                        <node concept="3cpWsn" id="kh" role="3cpWs9">
                          <property role="TrG5h" value="_reporter_2309309498" />
                          <node concept="3uibUv" id="ki" role="1tU5fm">
                            <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                          </node>
                          <node concept="2OqwBi" id="kj" role="33vP2m">
                            <node concept="3VmV3z" id="kk" role="2Oq$k0">
                              <property role="3VnrPo" value="typeCheckingContext" />
                              <node concept="3uibUv" id="km" role="3Vn4Tt">
                                <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                              </node>
                            </node>
                            <node concept="liA8E" id="kl" role="2OqNvi">
                              <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                              <node concept="37vLTw" id="kn" role="37wK5m">
                                <ref role="3cqZAo" node="ji" resolve="acd" />
                                <uo k="s:originTrace" v="n:5424895381998262902" />
                              </node>
                              <node concept="3cpWs3" id="ko" role="37wK5m">
                                <uo k="s:originTrace" v="n:5424895381998262903" />
                                <node concept="Xl_RD" id="kt" role="3uHU7B">
                                  <property role="Xl_RC" value="Duplicate concept id.\n" />
                                  <uo k="s:originTrace" v="n:5424895381998262905" />
                                </node>
                                <node concept="Xl_RD" id="ku" role="3uHU7w">
                                  <property role="Xl_RC" value="Please invoke the \&quot;Correct ID\&quot; intention on it" />
                                  <uo k="s:originTrace" v="n:5424895381998262907" />
                                </node>
                              </node>
                              <node concept="Xl_RD" id="kp" role="37wK5m">
                                <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                              </node>
                              <node concept="Xl_RD" id="kq" role="37wK5m">
                                <property role="Xl_RC" value="5424895381998262898" />
                              </node>
                              <node concept="10Nm6u" id="kr" role="37wK5m" />
                              <node concept="37vLTw" id="ks" role="37wK5m">
                                <ref role="3cqZAo" node="kd" resolve="errorTarget" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="9aQIb" id="kc" role="3cqZAp">
                        <node concept="3clFbS" id="kv" role="9aQI4">
                          <node concept="3cpWs8" id="kw" role="3cqZAp">
                            <node concept="3cpWsn" id="kz" role="3cpWs9">
                              <property role="TrG5h" value="intentionProvider" />
                              <node concept="3uibUv" id="k$" role="1tU5fm">
                                <ref role="3uigEE" to="2gg1:~BaseQuickFixProvider" resolve="BaseQuickFixProvider" />
                              </node>
                              <node concept="2ShNRf" id="k_" role="33vP2m">
                                <node concept="1pGfFk" id="kA" role="2ShVmc">
                                  <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.&lt;init&gt;(java.lang.String,java.lang.String,boolean)" resolve="BaseQuickFixProvider" />
                                  <node concept="Xl_RD" id="kB" role="37wK5m">
                                    <property role="Xl_RC" value="jetbrains.mps.lang.structure.typesystem.CorrectDuplicateId_QuickFix" />
                                  </node>
                                  <node concept="Xl_RD" id="kC" role="37wK5m">
                                    <property role="Xl_RC" value="5424895381998262899" />
                                  </node>
                                  <node concept="3clFbT" id="kD" role="37wK5m" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="kx" role="3cqZAp">
                            <node concept="2OqwBi" id="kE" role="3clFbG">
                              <node concept="37vLTw" id="kF" role="2Oq$k0">
                                <ref role="3cqZAo" node="kz" resolve="intentionProvider" />
                              </node>
                              <node concept="liA8E" id="kG" role="2OqNvi">
                                <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.putArgument(java.lang.String,java.lang.Object)" resolve="putArgument" />
                                <node concept="Xl_RD" id="kH" role="37wK5m">
                                  <property role="Xl_RC" value="c" />
                                </node>
                                <node concept="37vLTw" id="kI" role="37wK5m">
                                  <ref role="3cqZAo" node="ji" resolve="acd" />
                                  <uo k="s:originTrace" v="n:5424895381998262901" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="ky" role="3cqZAp">
                            <node concept="2OqwBi" id="kJ" role="3clFbG">
                              <node concept="37vLTw" id="kK" role="2Oq$k0">
                                <ref role="3cqZAo" node="kh" resolve="_reporter_2309309498" />
                              </node>
                              <node concept="liA8E" id="kL" role="2OqNvi">
                                <ref role="37wK5l" to="2gg1:~IErrorReporter.addIntentionProvider(jetbrains.mps.errors.QuickFixProvider)" resolve="addIntentionProvider" />
                                <node concept="37vLTw" id="kM" role="37wK5m">
                                  <ref role="3cqZAo" node="kz" resolve="intentionProvider" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="6wLe0" id="k9" role="lGtFl">
                      <property role="6wLej" value="5424895381998262898" />
                      <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="jE" role="3clFbw">
            <uo k="s:originTrace" v="n:6714410169261869334" />
            <node concept="2OqwBi" id="kN" role="2Oq$k0">
              <uo k="s:originTrace" v="n:1587916991969778465" />
              <node concept="37vLTw" id="kP" role="2Oq$k0">
                <ref role="3cqZAo" node="ji" resolve="acd" />
                <uo k="s:originTrace" v="n:1587916991969778236" />
              </node>
              <node concept="3TrcHB" id="kQ" role="2OqNvi">
                <ref role="3TsBF5" to="tpce:5OIo7_R7SN0" resolve="conceptId" />
                <uo k="s:originTrace" v="n:6714410169261866657" />
              </node>
            </node>
            <node concept="17RlXB" id="kO" role="2OqNvi">
              <uo k="s:originTrace" v="n:6714410169261876697" />
            </node>
          </node>
          <node concept="3clFbS" id="jF" role="3clFbx">
            <uo k="s:originTrace" v="n:1587916991969778222" />
            <node concept="9aQIb" id="kR" role="3cqZAp">
              <uo k="s:originTrace" v="n:1587916991969781666" />
              <node concept="3clFbS" id="kS" role="9aQI4">
                <node concept="3cpWs8" id="kU" role="3cqZAp">
                  <node concept="3cpWsn" id="kX" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="kY" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="kZ" role="33vP2m">
                      <node concept="1pGfFk" id="l0" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="kV" role="3cqZAp">
                  <node concept="3cpWsn" id="l1" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="l2" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="l3" role="33vP2m">
                      <node concept="3VmV3z" id="l4" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="l6" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="l5" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                        <node concept="37vLTw" id="l7" role="37wK5m">
                          <ref role="3cqZAo" node="ji" resolve="acd" />
                          <uo k="s:originTrace" v="n:1587916991969781678" />
                        </node>
                        <node concept="3cpWs3" id="l8" role="37wK5m">
                          <uo k="s:originTrace" v="n:1587916991969826521" />
                          <node concept="3cpWs3" id="ld" role="3uHU7B">
                            <uo k="s:originTrace" v="n:1587916991969825835" />
                            <node concept="Xl_RD" id="lf" role="3uHU7B">
                              <property role="Xl_RC" value="Concept id is not defined.\n" />
                              <uo k="s:originTrace" v="n:1587916991969825841" />
                            </node>
                            <node concept="Xl_RD" id="lg" role="3uHU7w">
                              <property role="Xl_RC" value="Please run MainMenu-&gt;Migration-&gt;Migrations-&gt;Language Migrations-&gt;j.m.lang.structure-&gt;Set Ids\n" />
                              <uo k="s:originTrace" v="n:1587916991969826527" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="le" role="3uHU7w">
                            <property role="Xl_RC" value="If this concept was created manually, invoke the \&quot;Generate IDs\&quot; intention on it" />
                            <uo k="s:originTrace" v="n:1587916991969826529" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="l9" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="la" role="37wK5m">
                          <property role="Xl_RC" value="1587916991969781666" />
                        </node>
                        <node concept="10Nm6u" id="lb" role="37wK5m" />
                        <node concept="37vLTw" id="lc" role="37wK5m">
                          <ref role="3cqZAo" node="kX" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="kW" role="3cqZAp">
                  <node concept="3clFbS" id="lh" role="9aQI4">
                    <node concept="3cpWs8" id="li" role="3cqZAp">
                      <node concept="3cpWsn" id="ll" role="3cpWs9">
                        <property role="TrG5h" value="intentionProvider" />
                        <node concept="3uibUv" id="lm" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~BaseQuickFixProvider" resolve="BaseQuickFixProvider" />
                        </node>
                        <node concept="2ShNRf" id="ln" role="33vP2m">
                          <node concept="1pGfFk" id="lo" role="2ShVmc">
                            <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.&lt;init&gt;(java.lang.String,java.lang.String,boolean)" resolve="BaseQuickFixProvider" />
                            <node concept="Xl_RD" id="lp" role="37wK5m">
                              <property role="Xl_RC" value="jetbrains.mps.lang.structure.typesystem.GenerateConceptIds_QuickFix" />
                            </node>
                            <node concept="Xl_RD" id="lq" role="37wK5m">
                              <property role="Xl_RC" value="1587916991969947421" />
                            </node>
                            <node concept="3clFbT" id="lr" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="lj" role="3cqZAp">
                      <node concept="2OqwBi" id="ls" role="3clFbG">
                        <node concept="37vLTw" id="lt" role="2Oq$k0">
                          <ref role="3cqZAo" node="ll" resolve="intentionProvider" />
                        </node>
                        <node concept="liA8E" id="lu" role="2OqNvi">
                          <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.putArgument(java.lang.String,java.lang.Object)" resolve="putArgument" />
                          <node concept="Xl_RD" id="lv" role="37wK5m">
                            <property role="Xl_RC" value="c" />
                          </node>
                          <node concept="37vLTw" id="lw" role="37wK5m">
                            <ref role="3cqZAo" node="ji" resolve="acd" />
                            <uo k="s:originTrace" v="n:1587916991969947720" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="lk" role="3cqZAp">
                      <node concept="2OqwBi" id="lx" role="3clFbG">
                        <node concept="37vLTw" id="ly" role="2Oq$k0">
                          <ref role="3cqZAo" node="l1" resolve="_reporter_2309309498" />
                        </node>
                        <node concept="liA8E" id="lz" role="2OqNvi">
                          <ref role="37wK5l" to="2gg1:~IErrorReporter.addIntentionProvider(jetbrains.mps.errors.QuickFixProvider)" resolve="addIntentionProvider" />
                          <node concept="37vLTw" id="l$" role="37wK5m">
                            <ref role="3cqZAo" node="ll" resolve="intentionProvider" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="kT" role="lGtFl">
                <property role="6wLej" value="1587916991969781666" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="jt" role="3cqZAp">
          <uo k="s:originTrace" v="n:241647608299540233" />
        </node>
        <node concept="2Gpval" id="ju" role="3cqZAp">
          <uo k="s:originTrace" v="n:241647608299540726" />
          <node concept="2GrKxI" id="l_" role="2Gsz3X">
            <property role="TrG5h" value="p" />
            <uo k="s:originTrace" v="n:241647608299540728" />
          </node>
          <node concept="2OqwBi" id="lA" role="2GsD0m">
            <uo k="s:originTrace" v="n:241647608299541411" />
            <node concept="37vLTw" id="lC" role="2Oq$k0">
              <ref role="3cqZAo" node="ji" resolve="acd" />
              <uo k="s:originTrace" v="n:241647608299540768" />
            </node>
            <node concept="3Tsc0h" id="lD" role="2OqNvi">
              <ref role="3TtcxE" to="tpce:f_TKVDG" resolve="propertyDeclaration" />
              <uo k="s:originTrace" v="n:241647608299542252" />
            </node>
          </node>
          <node concept="3clFbS" id="lB" role="2LFqv$">
            <uo k="s:originTrace" v="n:241647608299540732" />
            <node concept="3clFbJ" id="lE" role="3cqZAp">
              <uo k="s:originTrace" v="n:241647608299542320" />
              <node concept="2OqwBi" id="lF" role="3clFbw">
                <uo k="s:originTrace" v="n:241647608299545999" />
                <node concept="2OqwBi" id="lI" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:241647608299543209" />
                  <node concept="2GrUjf" id="lK" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="l_" resolve="p" />
                    <uo k="s:originTrace" v="n:241647608299542332" />
                  </node>
                  <node concept="3TrcHB" id="lL" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:dqwjwHwEjp" resolve="propertyId" />
                    <uo k="s:originTrace" v="n:241647608299544068" />
                  </node>
                </node>
                <node concept="17RlXB" id="lJ" role="2OqNvi">
                  <uo k="s:originTrace" v="n:241647608299548520" />
                </node>
              </node>
              <node concept="3clFbS" id="lG" role="3clFbx">
                <uo k="s:originTrace" v="n:241647608299542322" />
                <node concept="9aQIb" id="lM" role="3cqZAp">
                  <uo k="s:originTrace" v="n:241647608299548534" />
                  <node concept="3clFbS" id="lN" role="9aQI4">
                    <node concept="3cpWs8" id="lP" role="3cqZAp">
                      <node concept="3cpWsn" id="lS" role="3cpWs9">
                        <property role="TrG5h" value="errorTarget" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="lT" role="1tU5fm">
                          <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                        </node>
                        <node concept="2ShNRf" id="lU" role="33vP2m">
                          <node concept="1pGfFk" id="lV" role="2ShVmc">
                            <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="lQ" role="3cqZAp">
                      <node concept="3cpWsn" id="lW" role="3cpWs9">
                        <property role="TrG5h" value="_reporter_2309309498" />
                        <node concept="3uibUv" id="lX" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                        </node>
                        <node concept="2OqwBi" id="lY" role="33vP2m">
                          <node concept="3VmV3z" id="lZ" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="m1" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="m0" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                            <node concept="2GrUjf" id="m2" role="37wK5m">
                              <ref role="2Gs0qQ" node="l_" resolve="p" />
                              <uo k="s:originTrace" v="n:5424895381999210419" />
                            </node>
                            <node concept="3cpWs3" id="m3" role="37wK5m">
                              <uo k="s:originTrace" v="n:241647608299548539" />
                              <node concept="3cpWs3" id="m8" role="3uHU7B">
                                <uo k="s:originTrace" v="n:241647608299548540" />
                                <node concept="Xl_RD" id="ma" role="3uHU7B">
                                  <property role="Xl_RC" value="Property id is not defined.\n" />
                                  <uo k="s:originTrace" v="n:241647608299548541" />
                                </node>
                                <node concept="Xl_RD" id="mb" role="3uHU7w">
                                  <property role="Xl_RC" value="Please run MainMenu-&gt;Migration-&gt;Migrations-&gt;Language Migrations-&gt;j.m.lang.structure-&gt;Set Ids\n" />
                                  <uo k="s:originTrace" v="n:241647608299548542" />
                                </node>
                              </node>
                              <node concept="Xl_RD" id="m9" role="3uHU7w">
                                <property role="Xl_RC" value="If this property was created manually, invoke the \&quot;Generate IDs\&quot; intention on it" />
                                <uo k="s:originTrace" v="n:241647608299548543" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="m4" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="m5" role="37wK5m">
                              <property role="Xl_RC" value="241647608299548534" />
                            </node>
                            <node concept="10Nm6u" id="m6" role="37wK5m" />
                            <node concept="37vLTw" id="m7" role="37wK5m">
                              <ref role="3cqZAo" node="lS" resolve="errorTarget" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="lR" role="3cqZAp">
                      <node concept="3clFbS" id="mc" role="9aQI4">
                        <node concept="3cpWs8" id="md" role="3cqZAp">
                          <node concept="3cpWsn" id="mg" role="3cpWs9">
                            <property role="TrG5h" value="intentionProvider" />
                            <node concept="3uibUv" id="mh" role="1tU5fm">
                              <ref role="3uigEE" to="2gg1:~BaseQuickFixProvider" resolve="BaseQuickFixProvider" />
                            </node>
                            <node concept="2ShNRf" id="mi" role="33vP2m">
                              <node concept="1pGfFk" id="mj" role="2ShVmc">
                                <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.&lt;init&gt;(java.lang.String,java.lang.String,boolean)" resolve="BaseQuickFixProvider" />
                                <node concept="Xl_RD" id="mk" role="37wK5m">
                                  <property role="Xl_RC" value="jetbrains.mps.lang.structure.typesystem.GenerateConceptIds_QuickFix" />
                                </node>
                                <node concept="Xl_RD" id="ml" role="37wK5m">
                                  <property role="Xl_RC" value="241647608299548535" />
                                </node>
                                <node concept="3clFbT" id="mm" role="37wK5m" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="me" role="3cqZAp">
                          <node concept="2OqwBi" id="mn" role="3clFbG">
                            <node concept="37vLTw" id="mo" role="2Oq$k0">
                              <ref role="3cqZAo" node="mg" resolve="intentionProvider" />
                            </node>
                            <node concept="liA8E" id="mp" role="2OqNvi">
                              <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.putArgument(java.lang.String,java.lang.Object)" resolve="putArgument" />
                              <node concept="Xl_RD" id="mq" role="37wK5m">
                                <property role="Xl_RC" value="c" />
                              </node>
                              <node concept="37vLTw" id="mr" role="37wK5m">
                                <ref role="3cqZAo" node="ji" resolve="acd" />
                                <uo k="s:originTrace" v="n:241647608299548537" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="mf" role="3cqZAp">
                          <node concept="2OqwBi" id="ms" role="3clFbG">
                            <node concept="37vLTw" id="mt" role="2Oq$k0">
                              <ref role="3cqZAo" node="lW" resolve="_reporter_2309309498" />
                            </node>
                            <node concept="liA8E" id="mu" role="2OqNvi">
                              <ref role="37wK5l" to="2gg1:~IErrorReporter.addIntentionProvider(jetbrains.mps.errors.QuickFixProvider)" resolve="addIntentionProvider" />
                              <node concept="37vLTw" id="mv" role="37wK5m">
                                <ref role="3cqZAo" node="mg" resolve="intentionProvider" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="6wLe0" id="lO" role="lGtFl">
                    <property role="6wLej" value="241647608299548534" />
                    <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="lH" role="9aQIa">
                <uo k="s:originTrace" v="n:5424895381998286723" />
                <node concept="3clFbS" id="mw" role="9aQI4">
                  <uo k="s:originTrace" v="n:5424895381998286724" />
                  <node concept="3clFbJ" id="mx" role="3cqZAp">
                    <uo k="s:originTrace" v="n:5424895381998286901" />
                    <node concept="2OqwBi" id="my" role="3clFbw">
                      <uo k="s:originTrace" v="n:5424895381998286902" />
                      <node concept="2OqwBi" id="m$" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:5424895381998286904" />
                        <node concept="37vLTw" id="mA" role="2Oq$k0">
                          <ref role="3cqZAo" node="ji" resolve="acd" />
                          <uo k="s:originTrace" v="n:5424895381998286905" />
                        </node>
                        <node concept="3Tsc0h" id="mB" role="2OqNvi">
                          <ref role="3TtcxE" to="tpce:f_TKVDG" resolve="propertyDeclaration" />
                          <uo k="s:originTrace" v="n:5424895381998370157" />
                        </node>
                      </node>
                      <node concept="2HwmR7" id="m_" role="2OqNvi">
                        <uo k="s:originTrace" v="n:5424895381998286909" />
                        <node concept="1bVj0M" id="mC" role="23t8la">
                          <uo k="s:originTrace" v="n:5424895381998286910" />
                          <node concept="3clFbS" id="mD" role="1bW5cS">
                            <uo k="s:originTrace" v="n:5424895381998286911" />
                            <node concept="3clFbF" id="mF" role="3cqZAp">
                              <uo k="s:originTrace" v="n:5424895381998286912" />
                              <node concept="1Wc70l" id="mG" role="3clFbG">
                                <uo k="s:originTrace" v="n:5424895381998416265" />
                                <node concept="3y3z36" id="mH" role="3uHU7B">
                                  <uo k="s:originTrace" v="n:5424895381998418593" />
                                  <node concept="2GrUjf" id="mJ" role="3uHU7w">
                                    <ref role="2Gs0qQ" node="l_" resolve="p" />
                                    <uo k="s:originTrace" v="n:5424895381998419256" />
                                  </node>
                                  <node concept="37vLTw" id="mK" role="3uHU7B">
                                    <ref role="3cqZAo" node="mE" resolve="it" />
                                    <uo k="s:originTrace" v="n:5424895381998417554" />
                                  </node>
                                </node>
                                <node concept="17R0WA" id="mI" role="3uHU7w">
                                  <uo k="s:originTrace" v="n:5424895381998286913" />
                                  <node concept="2OqwBi" id="mL" role="3uHU7w">
                                    <uo k="s:originTrace" v="n:5424895381998286914" />
                                    <node concept="2GrUjf" id="mN" role="2Oq$k0">
                                      <ref role="2Gs0qQ" node="l_" resolve="p" />
                                      <uo k="s:originTrace" v="n:5424895381998333221" />
                                    </node>
                                    <node concept="3TrcHB" id="mO" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpce:dqwjwHwEjp" resolve="propertyId" />
                                      <uo k="s:originTrace" v="n:5424895381998335149" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="mM" role="3uHU7B">
                                    <uo k="s:originTrace" v="n:5424895381998286917" />
                                    <node concept="37vLTw" id="mP" role="2Oq$k0">
                                      <ref role="3cqZAo" node="mE" resolve="it" />
                                      <uo k="s:originTrace" v="n:5424895381998286918" />
                                    </node>
                                    <node concept="3TrcHB" id="mQ" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpce:dqwjwHwEjp" resolve="propertyId" />
                                      <uo k="s:originTrace" v="n:5424895381998327891" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="mE" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <uo k="s:originTrace" v="n:6847626768367732803" />
                            <node concept="2jxLKc" id="mR" role="1tU5fm">
                              <uo k="s:originTrace" v="n:6847626768367732804" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="mz" role="3clFbx">
                      <uo k="s:originTrace" v="n:5424895381998286922" />
                      <node concept="9aQIb" id="mS" role="3cqZAp">
                        <uo k="s:originTrace" v="n:5424895381998286923" />
                        <node concept="3clFbS" id="mT" role="9aQI4">
                          <node concept="3cpWs8" id="mV" role="3cqZAp">
                            <node concept="3cpWsn" id="mY" role="3cpWs9">
                              <property role="TrG5h" value="errorTarget" />
                              <property role="3TUv4t" value="true" />
                              <node concept="3uibUv" id="mZ" role="1tU5fm">
                                <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                              </node>
                              <node concept="2ShNRf" id="n0" role="33vP2m">
                                <node concept="1pGfFk" id="n1" role="2ShVmc">
                                  <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="mW" role="3cqZAp">
                            <node concept="3cpWsn" id="n2" role="3cpWs9">
                              <property role="TrG5h" value="_reporter_2309309498" />
                              <node concept="3uibUv" id="n3" role="1tU5fm">
                                <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                              </node>
                              <node concept="2OqwBi" id="n4" role="33vP2m">
                                <node concept="3VmV3z" id="n5" role="2Oq$k0">
                                  <property role="3VnrPo" value="typeCheckingContext" />
                                  <node concept="3uibUv" id="n7" role="3Vn4Tt">
                                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="n6" role="2OqNvi">
                                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                                  <node concept="2GrUjf" id="n8" role="37wK5m">
                                    <ref role="2Gs0qQ" node="l_" resolve="p" />
                                    <uo k="s:originTrace" v="n:5424895381999101404" />
                                  </node>
                                  <node concept="3cpWs3" id="n9" role="37wK5m">
                                    <uo k="s:originTrace" v="n:5424895381998286928" />
                                    <node concept="Xl_RD" id="ne" role="3uHU7B">
                                      <property role="Xl_RC" value="Duplicate property id.\n" />
                                      <uo k="s:originTrace" v="n:5424895381998286929" />
                                    </node>
                                    <node concept="Xl_RD" id="nf" role="3uHU7w">
                                      <property role="Xl_RC" value="Please invoke the \&quot;Correct ID\&quot; intention on it" />
                                      <uo k="s:originTrace" v="n:5424895381998286930" />
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="na" role="37wK5m">
                                    <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                                  </node>
                                  <node concept="Xl_RD" id="nb" role="37wK5m">
                                    <property role="Xl_RC" value="5424895381998286923" />
                                  </node>
                                  <node concept="10Nm6u" id="nc" role="37wK5m" />
                                  <node concept="37vLTw" id="nd" role="37wK5m">
                                    <ref role="3cqZAo" node="mY" resolve="errorTarget" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="9aQIb" id="mX" role="3cqZAp">
                            <node concept="3clFbS" id="ng" role="9aQI4">
                              <node concept="3cpWs8" id="nh" role="3cqZAp">
                                <node concept="3cpWsn" id="nk" role="3cpWs9">
                                  <property role="TrG5h" value="intentionProvider" />
                                  <node concept="3uibUv" id="nl" role="1tU5fm">
                                    <ref role="3uigEE" to="2gg1:~BaseQuickFixProvider" resolve="BaseQuickFixProvider" />
                                  </node>
                                  <node concept="2ShNRf" id="nm" role="33vP2m">
                                    <node concept="1pGfFk" id="nn" role="2ShVmc">
                                      <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.&lt;init&gt;(java.lang.String,java.lang.String,boolean)" resolve="BaseQuickFixProvider" />
                                      <node concept="Xl_RD" id="no" role="37wK5m">
                                        <property role="Xl_RC" value="jetbrains.mps.lang.structure.typesystem.CorrectDuplicateId_QuickFix" />
                                      </node>
                                      <node concept="Xl_RD" id="np" role="37wK5m">
                                        <property role="Xl_RC" value="5424895381998296115" />
                                      </node>
                                      <node concept="3clFbT" id="nq" role="37wK5m" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="ni" role="3cqZAp">
                                <node concept="2OqwBi" id="nr" role="3clFbG">
                                  <node concept="37vLTw" id="ns" role="2Oq$k0">
                                    <ref role="3cqZAo" node="nk" resolve="intentionProvider" />
                                  </node>
                                  <node concept="liA8E" id="nt" role="2OqNvi">
                                    <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.putArgument(java.lang.String,java.lang.Object)" resolve="putArgument" />
                                    <node concept="Xl_RD" id="nu" role="37wK5m">
                                      <property role="Xl_RC" value="p" />
                                    </node>
                                    <node concept="2GrUjf" id="nv" role="37wK5m">
                                      <ref role="2Gs0qQ" node="l_" resolve="p" />
                                      <uo k="s:originTrace" v="n:5424895381998298997" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="nj" role="3cqZAp">
                                <node concept="2OqwBi" id="nw" role="3clFbG">
                                  <node concept="37vLTw" id="nx" role="2Oq$k0">
                                    <ref role="3cqZAo" node="n2" resolve="_reporter_2309309498" />
                                  </node>
                                  <node concept="liA8E" id="ny" role="2OqNvi">
                                    <ref role="37wK5l" to="2gg1:~IErrorReporter.addIntentionProvider(jetbrains.mps.errors.QuickFixProvider)" resolve="addIntentionProvider" />
                                    <node concept="37vLTw" id="nz" role="37wK5m">
                                      <ref role="3cqZAo" node="nk" resolve="intentionProvider" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="6wLe0" id="mU" role="lGtFl">
                          <property role="6wLej" value="5424895381998286923" />
                          <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="jv" role="3cqZAp">
          <uo k="s:originTrace" v="n:241647608299556497" />
        </node>
        <node concept="2Gpval" id="jw" role="3cqZAp">
          <uo k="s:originTrace" v="n:241647608299555822" />
          <node concept="2GrKxI" id="n$" role="2Gsz3X">
            <property role="TrG5h" value="l" />
            <uo k="s:originTrace" v="n:241647608299555823" />
          </node>
          <node concept="2OqwBi" id="n_" role="2GsD0m">
            <uo k="s:originTrace" v="n:241647608299555824" />
            <node concept="37vLTw" id="nB" role="2Oq$k0">
              <ref role="3cqZAo" node="ji" resolve="acd" />
              <uo k="s:originTrace" v="n:241647608299555825" />
            </node>
            <node concept="3Tsc0h" id="nC" role="2OqNvi">
              <ref role="3TtcxE" to="tpce:f_TKVDF" resolve="linkDeclaration" />
              <uo k="s:originTrace" v="n:241647608299557261" />
            </node>
          </node>
          <node concept="3clFbS" id="nA" role="2LFqv$">
            <uo k="s:originTrace" v="n:241647608299555827" />
            <node concept="3clFbJ" id="nD" role="3cqZAp">
              <uo k="s:originTrace" v="n:241647608299555828" />
              <node concept="2OqwBi" id="nE" role="3clFbw">
                <uo k="s:originTrace" v="n:241647608299555829" />
                <node concept="2OqwBi" id="nH" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:241647608299555830" />
                  <node concept="2GrUjf" id="nJ" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="n$" resolve="l" />
                    <uo k="s:originTrace" v="n:241647608299555831" />
                  </node>
                  <node concept="3TrcHB" id="nK" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:dqwjwHwEj$" resolve="linkId" />
                    <uo k="s:originTrace" v="n:241647608299559145" />
                  </node>
                </node>
                <node concept="17RlXB" id="nI" role="2OqNvi">
                  <uo k="s:originTrace" v="n:241647608299555833" />
                </node>
              </node>
              <node concept="3clFbS" id="nF" role="3clFbx">
                <uo k="s:originTrace" v="n:241647608299555834" />
                <node concept="9aQIb" id="nL" role="3cqZAp">
                  <uo k="s:originTrace" v="n:241647608299555835" />
                  <node concept="3clFbS" id="nM" role="9aQI4">
                    <node concept="3cpWs8" id="nO" role="3cqZAp">
                      <node concept="3cpWsn" id="nR" role="3cpWs9">
                        <property role="TrG5h" value="errorTarget" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="nS" role="1tU5fm">
                          <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                        </node>
                        <node concept="2ShNRf" id="nT" role="33vP2m">
                          <node concept="1pGfFk" id="nU" role="2ShVmc">
                            <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="nP" role="3cqZAp">
                      <node concept="3cpWsn" id="nV" role="3cpWs9">
                        <property role="TrG5h" value="_reporter_2309309498" />
                        <node concept="3uibUv" id="nW" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                        </node>
                        <node concept="2OqwBi" id="nX" role="33vP2m">
                          <node concept="3VmV3z" id="nY" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="o0" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="nZ" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                            <node concept="2GrUjf" id="o1" role="37wK5m">
                              <ref role="2Gs0qQ" node="n$" resolve="l" />
                              <uo k="s:originTrace" v="n:5424895381999208691" />
                            </node>
                            <node concept="3cpWs3" id="o2" role="37wK5m">
                              <uo k="s:originTrace" v="n:241647608299555840" />
                              <node concept="3cpWs3" id="o7" role="3uHU7B">
                                <uo k="s:originTrace" v="n:241647608299555841" />
                                <node concept="Xl_RD" id="o9" role="3uHU7B">
                                  <property role="Xl_RC" value="Link id is not defined.\n" />
                                  <uo k="s:originTrace" v="n:241647608299555842" />
                                </node>
                                <node concept="Xl_RD" id="oa" role="3uHU7w">
                                  <property role="Xl_RC" value="Please run MainMenu-&gt;Migration-&gt;Migrations-&gt;Language Migrations-&gt;j.m.lang.structure-&gt;Set Ids\n" />
                                  <uo k="s:originTrace" v="n:241647608299555843" />
                                </node>
                              </node>
                              <node concept="Xl_RD" id="o8" role="3uHU7w">
                                <property role="Xl_RC" value="If this link was created manually, invoke the \&quot;Generate IDs\&quot; intention on it" />
                                <uo k="s:originTrace" v="n:241647608299555844" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="o3" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="o4" role="37wK5m">
                              <property role="Xl_RC" value="241647608299555835" />
                            </node>
                            <node concept="10Nm6u" id="o5" role="37wK5m" />
                            <node concept="37vLTw" id="o6" role="37wK5m">
                              <ref role="3cqZAo" node="nR" resolve="errorTarget" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="nQ" role="3cqZAp">
                      <node concept="3clFbS" id="ob" role="9aQI4">
                        <node concept="3cpWs8" id="oc" role="3cqZAp">
                          <node concept="3cpWsn" id="of" role="3cpWs9">
                            <property role="TrG5h" value="intentionProvider" />
                            <node concept="3uibUv" id="og" role="1tU5fm">
                              <ref role="3uigEE" to="2gg1:~BaseQuickFixProvider" resolve="BaseQuickFixProvider" />
                            </node>
                            <node concept="2ShNRf" id="oh" role="33vP2m">
                              <node concept="1pGfFk" id="oi" role="2ShVmc">
                                <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.&lt;init&gt;(java.lang.String,java.lang.String,boolean)" resolve="BaseQuickFixProvider" />
                                <node concept="Xl_RD" id="oj" role="37wK5m">
                                  <property role="Xl_RC" value="jetbrains.mps.lang.structure.typesystem.GenerateConceptIds_QuickFix" />
                                </node>
                                <node concept="Xl_RD" id="ok" role="37wK5m">
                                  <property role="Xl_RC" value="241647608299555836" />
                                </node>
                                <node concept="3clFbT" id="ol" role="37wK5m" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="od" role="3cqZAp">
                          <node concept="2OqwBi" id="om" role="3clFbG">
                            <node concept="37vLTw" id="on" role="2Oq$k0">
                              <ref role="3cqZAo" node="of" resolve="intentionProvider" />
                            </node>
                            <node concept="liA8E" id="oo" role="2OqNvi">
                              <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.putArgument(java.lang.String,java.lang.Object)" resolve="putArgument" />
                              <node concept="Xl_RD" id="op" role="37wK5m">
                                <property role="Xl_RC" value="c" />
                              </node>
                              <node concept="37vLTw" id="oq" role="37wK5m">
                                <ref role="3cqZAo" node="ji" resolve="acd" />
                                <uo k="s:originTrace" v="n:241647608299555838" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="oe" role="3cqZAp">
                          <node concept="2OqwBi" id="or" role="3clFbG">
                            <node concept="37vLTw" id="os" role="2Oq$k0">
                              <ref role="3cqZAo" node="nV" resolve="_reporter_2309309498" />
                            </node>
                            <node concept="liA8E" id="ot" role="2OqNvi">
                              <ref role="37wK5l" to="2gg1:~IErrorReporter.addIntentionProvider(jetbrains.mps.errors.QuickFixProvider)" resolve="addIntentionProvider" />
                              <node concept="37vLTw" id="ou" role="37wK5m">
                                <ref role="3cqZAo" node="of" resolve="intentionProvider" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="6wLe0" id="nN" role="lGtFl">
                    <property role="6wLej" value="241647608299555835" />
                    <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="nG" role="9aQIa">
                <uo k="s:originTrace" v="n:5424895381998288060" />
                <node concept="3clFbS" id="ov" role="9aQI4">
                  <uo k="s:originTrace" v="n:5424895381998288061" />
                  <node concept="3clFbJ" id="ow" role="3cqZAp">
                    <uo k="s:originTrace" v="n:5424895381998288238" />
                    <node concept="2OqwBi" id="ox" role="3clFbw">
                      <uo k="s:originTrace" v="n:5424895381998288239" />
                      <node concept="2OqwBi" id="oz" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:5424895381998288241" />
                        <node concept="37vLTw" id="o_" role="2Oq$k0">
                          <ref role="3cqZAo" node="ji" resolve="acd" />
                          <uo k="s:originTrace" v="n:5424895381998288242" />
                        </node>
                        <node concept="3Tsc0h" id="oA" role="2OqNvi">
                          <ref role="3TtcxE" to="tpce:f_TKVDF" resolve="linkDeclaration" />
                          <uo k="s:originTrace" v="n:2380899888860644299" />
                        </node>
                      </node>
                      <node concept="2HwmR7" id="o$" role="2OqNvi">
                        <uo k="s:originTrace" v="n:5424895381998288246" />
                        <node concept="1bVj0M" id="oB" role="23t8la">
                          <uo k="s:originTrace" v="n:5424895381998288247" />
                          <node concept="3clFbS" id="oC" role="1bW5cS">
                            <uo k="s:originTrace" v="n:5424895381998288248" />
                            <node concept="3clFbF" id="oE" role="3cqZAp">
                              <uo k="s:originTrace" v="n:5424895381998288249" />
                              <node concept="1Wc70l" id="oF" role="3clFbG">
                                <uo k="s:originTrace" v="n:5424895381998419919" />
                                <node concept="3y3z36" id="oG" role="3uHU7B">
                                  <uo k="s:originTrace" v="n:5424895381998422176" />
                                  <node concept="2GrUjf" id="oI" role="3uHU7w">
                                    <ref role="2Gs0qQ" node="n$" resolve="l" />
                                    <uo k="s:originTrace" v="n:5424895381998422531" />
                                  </node>
                                  <node concept="37vLTw" id="oJ" role="3uHU7B">
                                    <ref role="3cqZAo" node="oD" resolve="it" />
                                    <uo k="s:originTrace" v="n:5424895381998421226" />
                                  </node>
                                </node>
                                <node concept="17R0WA" id="oH" role="3uHU7w">
                                  <uo k="s:originTrace" v="n:5424895381998288250" />
                                  <node concept="2OqwBi" id="oK" role="3uHU7w">
                                    <uo k="s:originTrace" v="n:5424895381998288251" />
                                    <node concept="2GrUjf" id="oM" role="2Oq$k0">
                                      <ref role="2Gs0qQ" node="n$" resolve="l" />
                                      <uo k="s:originTrace" v="n:5424895381998337738" />
                                    </node>
                                    <node concept="3TrcHB" id="oN" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpce:dqwjwHwEj$" resolve="linkId" />
                                      <uo k="s:originTrace" v="n:5424895381998339666" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="oL" role="3uHU7B">
                                    <uo k="s:originTrace" v="n:5424895381998288254" />
                                    <node concept="37vLTw" id="oO" role="2Oq$k0">
                                      <ref role="3cqZAo" node="oD" resolve="it" />
                                      <uo k="s:originTrace" v="n:5424895381998288255" />
                                    </node>
                                    <node concept="3TrcHB" id="oP" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpce:dqwjwHwEj$" resolve="linkId" />
                                      <uo k="s:originTrace" v="n:5424895381998337312" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="oD" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <uo k="s:originTrace" v="n:6847626768367732805" />
                            <node concept="2jxLKc" id="oQ" role="1tU5fm">
                              <uo k="s:originTrace" v="n:6847626768367732806" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="oy" role="3clFbx">
                      <uo k="s:originTrace" v="n:5424895381998288259" />
                      <node concept="9aQIb" id="oR" role="3cqZAp">
                        <uo k="s:originTrace" v="n:5424895381998288260" />
                        <node concept="3clFbS" id="oS" role="9aQI4">
                          <node concept="3cpWs8" id="oU" role="3cqZAp">
                            <node concept="3cpWsn" id="oX" role="3cpWs9">
                              <property role="TrG5h" value="errorTarget" />
                              <property role="3TUv4t" value="true" />
                              <node concept="3uibUv" id="oY" role="1tU5fm">
                                <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                              </node>
                              <node concept="2ShNRf" id="oZ" role="33vP2m">
                                <node concept="1pGfFk" id="p0" role="2ShVmc">
                                  <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="oV" role="3cqZAp">
                            <node concept="3cpWsn" id="p1" role="3cpWs9">
                              <property role="TrG5h" value="_reporter_2309309498" />
                              <node concept="3uibUv" id="p2" role="1tU5fm">
                                <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                              </node>
                              <node concept="2OqwBi" id="p3" role="33vP2m">
                                <node concept="3VmV3z" id="p4" role="2Oq$k0">
                                  <property role="3VnrPo" value="typeCheckingContext" />
                                  <node concept="3uibUv" id="p6" role="3Vn4Tt">
                                    <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="p5" role="2OqNvi">
                                  <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                                  <node concept="2GrUjf" id="p7" role="37wK5m">
                                    <ref role="2Gs0qQ" node="n$" resolve="l" />
                                    <uo k="s:originTrace" v="n:5424895381999102809" />
                                  </node>
                                  <node concept="3cpWs3" id="p8" role="37wK5m">
                                    <uo k="s:originTrace" v="n:5424895381998288265" />
                                    <node concept="Xl_RD" id="pd" role="3uHU7B">
                                      <property role="Xl_RC" value="Duplicate link id.\n" />
                                      <uo k="s:originTrace" v="n:5424895381998288266" />
                                    </node>
                                    <node concept="Xl_RD" id="pe" role="3uHU7w">
                                      <property role="Xl_RC" value="Please invoke the \&quot;Correct ID\&quot; intention on it" />
                                      <uo k="s:originTrace" v="n:5424895381998288267" />
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="p9" role="37wK5m">
                                    <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                                  </node>
                                  <node concept="Xl_RD" id="pa" role="37wK5m">
                                    <property role="Xl_RC" value="5424895381998288260" />
                                  </node>
                                  <node concept="10Nm6u" id="pb" role="37wK5m" />
                                  <node concept="37vLTw" id="pc" role="37wK5m">
                                    <ref role="3cqZAo" node="oX" resolve="errorTarget" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="9aQIb" id="oW" role="3cqZAp">
                            <node concept="3clFbS" id="pf" role="9aQI4">
                              <node concept="3cpWs8" id="pg" role="3cqZAp">
                                <node concept="3cpWsn" id="pj" role="3cpWs9">
                                  <property role="TrG5h" value="intentionProvider" />
                                  <node concept="3uibUv" id="pk" role="1tU5fm">
                                    <ref role="3uigEE" to="2gg1:~BaseQuickFixProvider" resolve="BaseQuickFixProvider" />
                                  </node>
                                  <node concept="2ShNRf" id="pl" role="33vP2m">
                                    <node concept="1pGfFk" id="pm" role="2ShVmc">
                                      <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.&lt;init&gt;(java.lang.String,java.lang.String,boolean)" resolve="BaseQuickFixProvider" />
                                      <node concept="Xl_RD" id="pn" role="37wK5m">
                                        <property role="Xl_RC" value="jetbrains.mps.lang.structure.typesystem.CorrectDuplicateId_QuickFix" />
                                      </node>
                                      <node concept="Xl_RD" id="po" role="37wK5m">
                                        <property role="Xl_RC" value="5424895381998288261" />
                                      </node>
                                      <node concept="3clFbT" id="pp" role="37wK5m" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="ph" role="3cqZAp">
                                <node concept="2OqwBi" id="pq" role="3clFbG">
                                  <node concept="37vLTw" id="pr" role="2Oq$k0">
                                    <ref role="3cqZAo" node="pj" resolve="intentionProvider" />
                                  </node>
                                  <node concept="liA8E" id="ps" role="2OqNvi">
                                    <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.putArgument(java.lang.String,java.lang.Object)" resolve="putArgument" />
                                    <node concept="Xl_RD" id="pt" role="37wK5m">
                                      <property role="Xl_RC" value="l" />
                                    </node>
                                    <node concept="2GrUjf" id="pu" role="37wK5m">
                                      <ref role="2Gs0qQ" node="n$" resolve="l" />
                                      <uo k="s:originTrace" v="n:5424895381998303115" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="pi" role="3cqZAp">
                                <node concept="2OqwBi" id="pv" role="3clFbG">
                                  <node concept="37vLTw" id="pw" role="2Oq$k0">
                                    <ref role="3cqZAo" node="p1" resolve="_reporter_2309309498" />
                                  </node>
                                  <node concept="liA8E" id="px" role="2OqNvi">
                                    <ref role="37wK5l" to="2gg1:~IErrorReporter.addIntentionProvider(jetbrains.mps.errors.QuickFixProvider)" resolve="addIntentionProvider" />
                                    <node concept="37vLTw" id="py" role="37wK5m">
                                      <ref role="3cqZAo" node="pj" resolve="intentionProvider" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="6wLe0" id="oT" role="lGtFl">
                          <property role="6wLej" value="5424895381998288260" />
                          <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
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
      <node concept="3Tm1VV" id="jm" role="1B3o_S">
        <uo k="s:originTrace" v="n:1587916991969778163" />
      </node>
    </node>
    <node concept="3clFb_" id="j8" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1587916991969778163" />
      <node concept="3bZ5Sz" id="pz" role="3clF45">
        <uo k="s:originTrace" v="n:1587916991969778163" />
      </node>
      <node concept="3clFbS" id="p$" role="3clF47">
        <uo k="s:originTrace" v="n:1587916991969778163" />
        <node concept="3cpWs6" id="pA" role="3cqZAp">
          <uo k="s:originTrace" v="n:1587916991969778163" />
          <node concept="35c_gC" id="pB" role="3cqZAk">
            <ref role="35c_gD" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
            <uo k="s:originTrace" v="n:1587916991969778163" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="p_" role="1B3o_S">
        <uo k="s:originTrace" v="n:1587916991969778163" />
      </node>
    </node>
    <node concept="3clFb_" id="j9" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1587916991969778163" />
      <node concept="37vLTG" id="pC" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1587916991969778163" />
        <node concept="3Tqbb2" id="pG" role="1tU5fm">
          <uo k="s:originTrace" v="n:1587916991969778163" />
        </node>
      </node>
      <node concept="3clFbS" id="pD" role="3clF47">
        <uo k="s:originTrace" v="n:1587916991969778163" />
        <node concept="9aQIb" id="pH" role="3cqZAp">
          <uo k="s:originTrace" v="n:1587916991969778163" />
          <node concept="3clFbS" id="pI" role="9aQI4">
            <uo k="s:originTrace" v="n:1587916991969778163" />
            <node concept="3cpWs6" id="pJ" role="3cqZAp">
              <uo k="s:originTrace" v="n:1587916991969778163" />
              <node concept="2ShNRf" id="pK" role="3cqZAk">
                <uo k="s:originTrace" v="n:1587916991969778163" />
                <node concept="1pGfFk" id="pL" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1587916991969778163" />
                  <node concept="2OqwBi" id="pM" role="37wK5m">
                    <uo k="s:originTrace" v="n:1587916991969778163" />
                    <node concept="2OqwBi" id="pO" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1587916991969778163" />
                      <node concept="liA8E" id="pQ" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1587916991969778163" />
                      </node>
                      <node concept="2JrnkZ" id="pR" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1587916991969778163" />
                        <node concept="37vLTw" id="pS" role="2JrQYb">
                          <ref role="3cqZAo" node="pC" resolve="argument" />
                          <uo k="s:originTrace" v="n:1587916991969778163" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="pP" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1587916991969778163" />
                      <node concept="1rXfSq" id="pT" role="37wK5m">
                        <ref role="37wK5l" node="j8" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1587916991969778163" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="pN" role="37wK5m">
                    <uo k="s:originTrace" v="n:1587916991969778163" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="pE" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1587916991969778163" />
      </node>
      <node concept="3Tm1VV" id="pF" role="1B3o_S">
        <uo k="s:originTrace" v="n:1587916991969778163" />
      </node>
    </node>
    <node concept="3clFb_" id="ja" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1587916991969778163" />
      <node concept="3clFbS" id="pU" role="3clF47">
        <uo k="s:originTrace" v="n:1587916991969778163" />
        <node concept="3cpWs6" id="pX" role="3cqZAp">
          <uo k="s:originTrace" v="n:1587916991969778163" />
          <node concept="3clFbT" id="pY" role="3cqZAk">
            <uo k="s:originTrace" v="n:1587916991969778163" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="pV" role="3clF45">
        <uo k="s:originTrace" v="n:1587916991969778163" />
      </node>
      <node concept="3Tm1VV" id="pW" role="1B3o_S">
        <uo k="s:originTrace" v="n:1587916991969778163" />
      </node>
    </node>
    <node concept="3uibUv" id="jb" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1587916991969778163" />
    </node>
    <node concept="3uibUv" id="jc" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1587916991969778163" />
    </node>
    <node concept="3Tm1VV" id="jd" role="1B3o_S">
      <uo k="s:originTrace" v="n:1587916991969778163" />
    </node>
  </node>
  <node concept="312cEu" id="pZ">
    <property role="TrG5h" value="check_AttributeInfo_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:7588428831943026926" />
    <node concept="3clFbW" id="q0" role="jymVt">
      <uo k="s:originTrace" v="n:7588428831943026926" />
      <node concept="3clFbS" id="q8" role="3clF47">
        <uo k="s:originTrace" v="n:7588428831943026926" />
      </node>
      <node concept="3Tm1VV" id="q9" role="1B3o_S">
        <uo k="s:originTrace" v="n:7588428831943026926" />
      </node>
      <node concept="3cqZAl" id="qa" role="3clF45">
        <uo k="s:originTrace" v="n:7588428831943026926" />
      </node>
    </node>
    <node concept="3clFb_" id="q1" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:7588428831943026926" />
      <node concept="3cqZAl" id="qb" role="3clF45">
        <uo k="s:originTrace" v="n:7588428831943026926" />
      </node>
      <node concept="37vLTG" id="qc" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="conceptDeclaration" />
        <uo k="s:originTrace" v="n:7588428831943026926" />
        <node concept="3Tqbb2" id="qh" role="1tU5fm">
          <uo k="s:originTrace" v="n:7588428831943026926" />
        </node>
      </node>
      <node concept="37vLTG" id="qd" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:7588428831943026926" />
        <node concept="3uibUv" id="qi" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:7588428831943026926" />
        </node>
      </node>
      <node concept="37vLTG" id="qe" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:7588428831943026926" />
        <node concept="3uibUv" id="qj" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:7588428831943026926" />
        </node>
      </node>
      <node concept="3clFbS" id="qf" role="3clF47">
        <uo k="s:originTrace" v="n:7588428831943026927" />
        <node concept="3clFbJ" id="qk" role="3cqZAp">
          <uo k="s:originTrace" v="n:7588428831943477798" />
          <node concept="3clFbS" id="qm" role="3clFbx">
            <uo k="s:originTrace" v="n:7588428831943477801" />
            <node concept="9aQIb" id="qo" role="3cqZAp">
              <uo k="s:originTrace" v="n:7588428831943042516" />
              <node concept="3clFbS" id="qp" role="9aQI4">
                <node concept="3cpWs8" id="qr" role="3cqZAp">
                  <node concept="3cpWsn" id="qu" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="qv" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="qw" role="33vP2m">
                      <node concept="1pGfFk" id="qx" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="qs" role="3cqZAp">
                  <node concept="3cpWsn" id="qy" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="qz" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="q$" role="33vP2m">
                      <node concept="3VmV3z" id="q_" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="qB" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="qA" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                        <node concept="37vLTw" id="qC" role="37wK5m">
                          <ref role="3cqZAo" node="qc" resolve="conceptDeclaration" />
                          <uo k="s:originTrace" v="n:7588428831943044417" />
                        </node>
                        <node concept="Xl_RD" id="qD" role="37wK5m">
                          <property role="Xl_RC" value="Concrete attributes must be with attribute info" />
                          <uo k="s:originTrace" v="n:7588428831943043051" />
                        </node>
                        <node concept="Xl_RD" id="qE" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="qF" role="37wK5m">
                          <property role="Xl_RC" value="7588428831943042516" />
                        </node>
                        <node concept="10Nm6u" id="qG" role="37wK5m" />
                        <node concept="37vLTw" id="qH" role="37wK5m">
                          <ref role="3cqZAo" node="qu" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="qt" role="3cqZAp">
                  <node concept="3clFbS" id="qI" role="9aQI4">
                    <node concept="3cpWs8" id="qJ" role="3cqZAp">
                      <node concept="3cpWsn" id="qL" role="3cpWs9">
                        <property role="TrG5h" value="intentionProvider" />
                        <node concept="3uibUv" id="qM" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~BaseQuickFixProvider" resolve="BaseQuickFixProvider" />
                        </node>
                        <node concept="2ShNRf" id="qN" role="33vP2m">
                          <node concept="1pGfFk" id="qO" role="2ShVmc">
                            <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.&lt;init&gt;(java.lang.String,java.lang.String,boolean)" resolve="BaseQuickFixProvider" />
                            <node concept="Xl_RD" id="qP" role="37wK5m">
                              <property role="Xl_RC" value="jetbrains.mps.lang.structure.typesystem.FixAttributeInfo_QuickFix" />
                            </node>
                            <node concept="Xl_RD" id="qQ" role="37wK5m">
                              <property role="Xl_RC" value="7588428831943322088" />
                            </node>
                            <node concept="3clFbT" id="qR" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="qK" role="3cqZAp">
                      <node concept="2OqwBi" id="qS" role="3clFbG">
                        <node concept="37vLTw" id="qT" role="2Oq$k0">
                          <ref role="3cqZAo" node="qy" resolve="_reporter_2309309498" />
                        </node>
                        <node concept="liA8E" id="qU" role="2OqNvi">
                          <ref role="37wK5l" to="2gg1:~IErrorReporter.addIntentionProvider(jetbrains.mps.errors.QuickFixProvider)" resolve="addIntentionProvider" />
                          <node concept="37vLTw" id="qV" role="37wK5m">
                            <ref role="3cqZAo" node="qL" resolve="intentionProvider" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="qq" role="lGtFl">
                <property role="6wLej" value="7588428831943042516" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="qn" role="3clFbw">
            <uo k="s:originTrace" v="n:7588428831943479843" />
            <node concept="2OqwBi" id="qW" role="3uHU7w">
              <uo k="s:originTrace" v="n:7588428831943491518" />
              <node concept="2OqwBi" id="qY" role="2Oq$k0">
                <uo k="s:originTrace" v="n:7588428831943481842" />
                <node concept="37vLTw" id="r0" role="2Oq$k0">
                  <ref role="3cqZAo" node="qc" resolve="conceptDeclaration" />
                  <uo k="s:originTrace" v="n:7588428831943480645" />
                </node>
                <node concept="3CFZ6_" id="r1" role="2OqNvi">
                  <uo k="s:originTrace" v="n:7588428831943489062" />
                  <node concept="3CFYIy" id="r2" role="3CFYIz">
                    <ref role="3CFYIx" to="tpce:2A8AB0r$C6l" resolve="AttributeInfo" />
                    <uo k="s:originTrace" v="n:7588428831943490060" />
                  </node>
                </node>
              </node>
              <node concept="3w_OXm" id="qZ" role="2OqNvi">
                <uo k="s:originTrace" v="n:7588428831943496462" />
              </node>
            </node>
            <node concept="2YIFZM" id="qX" role="3uHU7B">
              <ref role="1Pybhc" to="tpcn:6_gUeuqI_Vn" resolve="AttributeDesignTimeOperations" />
              <ref role="37wK5l" to="tpcn:6_fwX53kswR" resolve="isAttributeDeclaration" />
              <uo k="s:originTrace" v="n:7588428831943478137" />
              <node concept="37vLTw" id="r3" role="37wK5m">
                <ref role="3cqZAo" node="qc" resolve="conceptDeclaration" />
                <uo k="s:originTrace" v="n:7588428831943478159" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="ql" role="3cqZAp">
          <uo k="s:originTrace" v="n:7588428831943551489" />
          <node concept="3clFbS" id="r4" role="3clFbx">
            <uo k="s:originTrace" v="n:7588428831943551492" />
            <node concept="9aQIb" id="r6" role="3cqZAp">
              <uo k="s:originTrace" v="n:7588428831943655193" />
              <node concept="3clFbS" id="r7" role="9aQI4">
                <node concept="3cpWs8" id="r9" role="3cqZAp">
                  <node concept="3cpWsn" id="rc" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="rd" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="re" role="33vP2m">
                      <node concept="1pGfFk" id="rf" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="ra" role="3cqZAp">
                  <node concept="3cpWsn" id="rg" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="rh" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="ri" role="33vP2m">
                      <node concept="3VmV3z" id="rj" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="rl" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="rk" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                        <node concept="37vLTw" id="rm" role="37wK5m">
                          <ref role="3cqZAo" node="qc" resolve="conceptDeclaration" />
                          <uo k="s:originTrace" v="n:7588428831943655195" />
                        </node>
                        <node concept="Xl_RD" id="rn" role="37wK5m">
                          <property role="Xl_RC" value="Attribute info can be only used for concrete attributes" />
                          <uo k="s:originTrace" v="n:7588428831943655194" />
                        </node>
                        <node concept="Xl_RD" id="ro" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="rp" role="37wK5m">
                          <property role="Xl_RC" value="7588428831943655193" />
                        </node>
                        <node concept="10Nm6u" id="rq" role="37wK5m" />
                        <node concept="37vLTw" id="rr" role="37wK5m">
                          <ref role="3cqZAo" node="rc" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="rb" role="3cqZAp">
                  <node concept="3clFbS" id="rs" role="9aQI4">
                    <node concept="3cpWs8" id="rt" role="3cqZAp">
                      <node concept="3cpWsn" id="rv" role="3cpWs9">
                        <property role="TrG5h" value="intentionProvider" />
                        <node concept="3uibUv" id="rw" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~BaseQuickFixProvider" resolve="BaseQuickFixProvider" />
                        </node>
                        <node concept="2ShNRf" id="rx" role="33vP2m">
                          <node concept="1pGfFk" id="ry" role="2ShVmc">
                            <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.&lt;init&gt;(java.lang.String,java.lang.String,boolean)" resolve="BaseQuickFixProvider" />
                            <node concept="Xl_RD" id="rz" role="37wK5m">
                              <property role="Xl_RC" value="jetbrains.mps.lang.structure.typesystem.FixAttributeInfo_QuickFix" />
                            </node>
                            <node concept="Xl_RD" id="r$" role="37wK5m">
                              <property role="Xl_RC" value="7588428831943655196" />
                            </node>
                            <node concept="3clFbT" id="r_" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="ru" role="3cqZAp">
                      <node concept="2OqwBi" id="rA" role="3clFbG">
                        <node concept="37vLTw" id="rB" role="2Oq$k0">
                          <ref role="3cqZAo" node="rg" resolve="_reporter_2309309498" />
                        </node>
                        <node concept="liA8E" id="rC" role="2OqNvi">
                          <ref role="37wK5l" to="2gg1:~IErrorReporter.addIntentionProvider(jetbrains.mps.errors.QuickFixProvider)" resolve="addIntentionProvider" />
                          <node concept="37vLTw" id="rD" role="37wK5m">
                            <ref role="3cqZAo" node="rv" resolve="intentionProvider" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="r8" role="lGtFl">
                <property role="6wLej" value="7588428831943655193" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="r5" role="3clFbw">
            <uo k="s:originTrace" v="n:7588428831943640312" />
            <node concept="2OqwBi" id="rE" role="3uHU7w">
              <uo k="s:originTrace" v="n:7588428831943650131" />
              <node concept="2OqwBi" id="rG" role="2Oq$k0">
                <uo k="s:originTrace" v="n:7588428831943641790" />
                <node concept="37vLTw" id="rI" role="2Oq$k0">
                  <ref role="3cqZAo" node="qc" resolve="conceptDeclaration" />
                  <uo k="s:originTrace" v="n:7588428831943640674" />
                </node>
                <node concept="3CFZ6_" id="rJ" role="2OqNvi">
                  <uo k="s:originTrace" v="n:7588428831943648563" />
                  <node concept="3CFYIy" id="rK" role="3CFYIz">
                    <ref role="3CFYIx" to="tpce:2A8AB0r$C6l" resolve="AttributeInfo" />
                    <uo k="s:originTrace" v="n:7588428831943649117" />
                  </node>
                </node>
              </node>
              <node concept="3x8VRR" id="rH" role="2OqNvi">
                <uo k="s:originTrace" v="n:7588428831943654630" />
              </node>
            </node>
            <node concept="3fqX7Q" id="rF" role="3uHU7B">
              <uo k="s:originTrace" v="n:7588428831943636904" />
              <node concept="2YIFZM" id="rL" role="3fr31v">
                <ref role="1Pybhc" to="tpcn:6_gUeuqI_Vn" resolve="AttributeDesignTimeOperations" />
                <ref role="37wK5l" to="tpcn:6_fwX53kswR" resolve="isAttributeDeclaration" />
                <uo k="s:originTrace" v="n:7588428831943636961" />
                <node concept="37vLTw" id="rM" role="37wK5m">
                  <ref role="3cqZAo" node="qc" resolve="conceptDeclaration" />
                  <uo k="s:originTrace" v="n:7588428831943636995" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="qg" role="1B3o_S">
        <uo k="s:originTrace" v="n:7588428831943026926" />
      </node>
    </node>
    <node concept="3clFb_" id="q2" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:7588428831943026926" />
      <node concept="3bZ5Sz" id="rN" role="3clF45">
        <uo k="s:originTrace" v="n:7588428831943026926" />
      </node>
      <node concept="3clFbS" id="rO" role="3clF47">
        <uo k="s:originTrace" v="n:7588428831943026926" />
        <node concept="3cpWs6" id="rQ" role="3cqZAp">
          <uo k="s:originTrace" v="n:7588428831943026926" />
          <node concept="35c_gC" id="rR" role="3cqZAk">
            <ref role="35c_gD" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
            <uo k="s:originTrace" v="n:7588428831943026926" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="rP" role="1B3o_S">
        <uo k="s:originTrace" v="n:7588428831943026926" />
      </node>
    </node>
    <node concept="3clFb_" id="q3" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:7588428831943026926" />
      <node concept="37vLTG" id="rS" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:7588428831943026926" />
        <node concept="3Tqbb2" id="rW" role="1tU5fm">
          <uo k="s:originTrace" v="n:7588428831943026926" />
        </node>
      </node>
      <node concept="3clFbS" id="rT" role="3clF47">
        <uo k="s:originTrace" v="n:7588428831943026926" />
        <node concept="9aQIb" id="rX" role="3cqZAp">
          <uo k="s:originTrace" v="n:7588428831943026926" />
          <node concept="3clFbS" id="rY" role="9aQI4">
            <uo k="s:originTrace" v="n:7588428831943026926" />
            <node concept="3cpWs6" id="rZ" role="3cqZAp">
              <uo k="s:originTrace" v="n:7588428831943026926" />
              <node concept="2ShNRf" id="s0" role="3cqZAk">
                <uo k="s:originTrace" v="n:7588428831943026926" />
                <node concept="1pGfFk" id="s1" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:7588428831943026926" />
                  <node concept="2OqwBi" id="s2" role="37wK5m">
                    <uo k="s:originTrace" v="n:7588428831943026926" />
                    <node concept="2OqwBi" id="s4" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:7588428831943026926" />
                      <node concept="liA8E" id="s6" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:7588428831943026926" />
                      </node>
                      <node concept="2JrnkZ" id="s7" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:7588428831943026926" />
                        <node concept="37vLTw" id="s8" role="2JrQYb">
                          <ref role="3cqZAo" node="rS" resolve="argument" />
                          <uo k="s:originTrace" v="n:7588428831943026926" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="s5" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:7588428831943026926" />
                      <node concept="1rXfSq" id="s9" role="37wK5m">
                        <ref role="37wK5l" node="q2" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:7588428831943026926" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="s3" role="37wK5m">
                    <uo k="s:originTrace" v="n:7588428831943026926" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="rU" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:7588428831943026926" />
      </node>
      <node concept="3Tm1VV" id="rV" role="1B3o_S">
        <uo k="s:originTrace" v="n:7588428831943026926" />
      </node>
    </node>
    <node concept="3clFb_" id="q4" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:7588428831943026926" />
      <node concept="3clFbS" id="sa" role="3clF47">
        <uo k="s:originTrace" v="n:7588428831943026926" />
        <node concept="3cpWs6" id="sd" role="3cqZAp">
          <uo k="s:originTrace" v="n:7588428831943026926" />
          <node concept="3clFbT" id="se" role="3cqZAk">
            <uo k="s:originTrace" v="n:7588428831943026926" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="sb" role="3clF45">
        <uo k="s:originTrace" v="n:7588428831943026926" />
      </node>
      <node concept="3Tm1VV" id="sc" role="1B3o_S">
        <uo k="s:originTrace" v="n:7588428831943026926" />
      </node>
    </node>
    <node concept="3uibUv" id="q5" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:7588428831943026926" />
    </node>
    <node concept="3uibUv" id="q6" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:7588428831943026926" />
    </node>
    <node concept="3Tm1VV" id="q7" role="1B3o_S">
      <uo k="s:originTrace" v="n:7588428831943026926" />
    </node>
  </node>
  <node concept="312cEu" id="sf">
    <property role="TrG5h" value="check_ConceptDeclaration_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:6579840439426125742" />
    <node concept="3clFbW" id="sg" role="jymVt">
      <uo k="s:originTrace" v="n:6579840439426125742" />
      <node concept="3clFbS" id="so" role="3clF47">
        <uo k="s:originTrace" v="n:6579840439426125742" />
      </node>
      <node concept="3Tm1VV" id="sp" role="1B3o_S">
        <uo k="s:originTrace" v="n:6579840439426125742" />
      </node>
      <node concept="3cqZAl" id="sq" role="3clF45">
        <uo k="s:originTrace" v="n:6579840439426125742" />
      </node>
    </node>
    <node concept="3clFb_" id="sh" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:6579840439426125742" />
      <node concept="3cqZAl" id="sr" role="3clF45">
        <uo k="s:originTrace" v="n:6579840439426125742" />
      </node>
      <node concept="37vLTG" id="ss" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="conceptDeclaration" />
        <uo k="s:originTrace" v="n:6579840439426125742" />
        <node concept="3Tqbb2" id="sx" role="1tU5fm">
          <uo k="s:originTrace" v="n:6579840439426125742" />
        </node>
      </node>
      <node concept="37vLTG" id="st" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:6579840439426125742" />
        <node concept="3uibUv" id="sy" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:6579840439426125742" />
        </node>
      </node>
      <node concept="37vLTG" id="su" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:6579840439426125742" />
        <node concept="3uibUv" id="sz" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:6579840439426125742" />
        </node>
      </node>
      <node concept="3clFbS" id="sv" role="3clF47">
        <uo k="s:originTrace" v="n:6579840439426125743" />
        <node concept="3cpWs8" id="s$" role="3cqZAp">
          <uo k="s:originTrace" v="n:6579840439426219546" />
          <node concept="3cpWsn" id="sH" role="3cpWs9">
            <property role="TrG5h" value="allSuperConcepts" />
            <uo k="s:originTrace" v="n:6579840439426219547" />
            <node concept="A3Dl8" id="sI" role="1tU5fm">
              <uo k="s:originTrace" v="n:6579840439426219542" />
              <node concept="3Tqbb2" id="sK" role="A3Ik2">
                <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                <uo k="s:originTrace" v="n:6579840439426219545" />
              </node>
            </node>
            <node concept="2OqwBi" id="sJ" role="33vP2m">
              <uo k="s:originTrace" v="n:6579840439426219548" />
              <node concept="37vLTw" id="sL" role="2Oq$k0">
                <ref role="3cqZAo" node="ss" resolve="conceptDeclaration" />
                <uo k="s:originTrace" v="n:6579840439426219549" />
              </node>
              <node concept="3zqWPK" id="sM" role="2OqNvi">
                <ref role="37wK5l" to="tpcn:2A8AB0rAWpG" resolve="getAllSuperConcepts" />
                <uo k="s:originTrace" v="n:8085146484218853703" />
                <node concept="3clFbT" id="sN" role="37wK5m">
                  <property role="3clFbU" value="false" />
                  <uo k="s:originTrace" v="n:8085146484218853705" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="s_" role="3cqZAp">
          <uo k="s:originTrace" v="n:5624281226435410485" />
          <node concept="3cpWsn" id="sO" role="3cpWs9">
            <property role="TrG5h" value="isStub" />
            <uo k="s:originTrace" v="n:5624281226435410486" />
            <node concept="10P_77" id="sP" role="1tU5fm">
              <uo k="s:originTrace" v="n:5624281226435410460" />
            </node>
            <node concept="2OqwBi" id="sQ" role="33vP2m">
              <uo k="s:originTrace" v="n:5624281226435410487" />
              <node concept="37vLTw" id="sR" role="2Oq$k0">
                <ref role="3cqZAo" node="sH" resolve="allSuperConcepts" />
                <uo k="s:originTrace" v="n:5624281226435410488" />
              </node>
              <node concept="2HwmR7" id="sS" role="2OqNvi">
                <uo k="s:originTrace" v="n:5624281226435432908" />
                <node concept="1bVj0M" id="sT" role="23t8la">
                  <uo k="s:originTrace" v="n:5624281226435432910" />
                  <node concept="3clFbS" id="sU" role="1bW5cS">
                    <uo k="s:originTrace" v="n:5624281226435432911" />
                    <node concept="3clFbF" id="sW" role="3cqZAp">
                      <uo k="s:originTrace" v="n:5624281226435432912" />
                      <node concept="2OqwBi" id="sX" role="3clFbG">
                        <uo k="s:originTrace" v="n:4573127675679749738" />
                        <node concept="37vLTw" id="sY" role="2Oq$k0">
                          <ref role="3cqZAo" node="sV" resolve="it" />
                          <uo k="s:originTrace" v="n:4573127675679749736" />
                        </node>
                        <node concept="1QLmlb" id="sZ" role="2OqNvi">
                          <uo k="s:originTrace" v="n:4573127675679749739" />
                          <node concept="ZC_QK" id="t0" role="1QLmnL">
                            <ref role="2aWVGs" to="tpck:8AYOKVCAP5" resolve="IStubForAnotherConcept" />
                            <uo k="s:originTrace" v="n:4573127675679749737" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="sV" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <uo k="s:originTrace" v="n:6847626768367732779" />
                    <node concept="2jxLKc" id="t1" role="1tU5fm">
                      <uo k="s:originTrace" v="n:6847626768367732780" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="sA" role="3cqZAp">
          <uo k="s:originTrace" v="n:5624281226435428813" />
          <node concept="3clFbS" id="t2" role="3clFbx">
            <uo k="s:originTrace" v="n:5624281226435428816" />
            <node concept="3cpWs6" id="t4" role="3cqZAp">
              <uo k="s:originTrace" v="n:5624281226435430791" />
            </node>
          </node>
          <node concept="37vLTw" id="t3" role="3clFbw">
            <ref role="3cqZAo" node="sO" resolve="isStub" />
            <uo k="s:originTrace" v="n:5624281226435430778" />
          </node>
        </node>
        <node concept="3clFbH" id="sB" role="3cqZAp">
          <uo k="s:originTrace" v="n:5624281226435430793" />
        </node>
        <node concept="3clFbJ" id="sC" role="3cqZAp">
          <uo k="s:originTrace" v="n:6579840439426250228" />
          <node concept="3clFbS" id="t5" role="3clFbx">
            <uo k="s:originTrace" v="n:6579840439426250231" />
            <node concept="9aQIb" id="t7" role="3cqZAp">
              <uo k="s:originTrace" v="n:6579840439426263826" />
              <node concept="3clFbS" id="t8" role="9aQI4">
                <node concept="3cpWs8" id="ta" role="3cqZAp">
                  <node concept="3cpWsn" id="tc" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="td" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="te" role="33vP2m">
                      <node concept="1pGfFk" id="tf" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="tb" role="3cqZAp">
                  <node concept="3cpWsn" id="tg" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="th" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="ti" role="33vP2m">
                      <node concept="3VmV3z" id="tj" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="tl" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="tk" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportWarning(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportWarning" />
                        <node concept="37vLTw" id="tm" role="37wK5m">
                          <ref role="3cqZAo" node="ss" resolve="conceptDeclaration" />
                          <uo k="s:originTrace" v="n:6579840439426264566" />
                        </node>
                        <node concept="Xl_RD" id="tn" role="37wK5m">
                          <property role="Xl_RC" value="The concept is marked both as an InterfacePart and an ImplementationPart. It will be treated as InterfacePart " />
                          <uo k="s:originTrace" v="n:6579840439426263856" />
                        </node>
                        <node concept="Xl_RD" id="to" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="tp" role="37wK5m">
                          <property role="Xl_RC" value="6579840439426263826" />
                        </node>
                        <node concept="10Nm6u" id="tq" role="37wK5m" />
                        <node concept="37vLTw" id="tr" role="37wK5m">
                          <ref role="3cqZAo" node="tc" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="t9" role="lGtFl">
                <property role="6wLej" value="6579840439426263826" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="t6" role="3clFbw">
            <uo k="s:originTrace" v="n:6579840439426225879" />
            <node concept="2OqwBi" id="ts" role="3uHU7w">
              <uo k="s:originTrace" v="n:6579840439426227474" />
              <node concept="37vLTw" id="tu" role="2Oq$k0">
                <ref role="3cqZAo" node="sH" resolve="allSuperConcepts" />
                <uo k="s:originTrace" v="n:6579840439426226220" />
              </node>
              <node concept="2HwmR7" id="tv" role="2OqNvi">
                <uo k="s:originTrace" v="n:6579840439426237158" />
                <node concept="1bVj0M" id="tw" role="23t8la">
                  <uo k="s:originTrace" v="n:6579840439426237160" />
                  <node concept="3clFbS" id="tx" role="1bW5cS">
                    <uo k="s:originTrace" v="n:6579840439426237161" />
                    <node concept="3clFbF" id="tz" role="3cqZAp">
                      <uo k="s:originTrace" v="n:6579840439426237838" />
                      <node concept="22lmx$" id="t$" role="3clFbG">
                        <uo k="s:originTrace" v="n:6579840439426245314" />
                        <node concept="2OqwBi" id="t_" role="3uHU7w">
                          <uo k="s:originTrace" v="n:4573127675679749812" />
                          <node concept="37vLTw" id="tB" role="2Oq$k0">
                            <ref role="3cqZAo" node="ty" resolve="it" />
                            <uo k="s:originTrace" v="n:4573127675679749810" />
                          </node>
                          <node concept="1QLmlb" id="tC" role="2OqNvi">
                            <uo k="s:originTrace" v="n:4573127675679749813" />
                            <node concept="ZC_QK" id="tD" role="1QLmnL">
                              <ref role="2aWVGs" to="tpck:64$4ecGX64Q" resolve="ImplementationWithStubPart" />
                              <uo k="s:originTrace" v="n:4573127675679749811" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="tA" role="3uHU7B">
                          <uo k="s:originTrace" v="n:4573127675679749886" />
                          <node concept="37vLTw" id="tE" role="2Oq$k0">
                            <ref role="3cqZAo" node="ty" resolve="it" />
                            <uo k="s:originTrace" v="n:4573127675679749884" />
                          </node>
                          <node concept="1QLmlb" id="tF" role="2OqNvi">
                            <uo k="s:originTrace" v="n:4573127675679749887" />
                            <node concept="ZC_QK" id="tG" role="1QLmnL">
                              <ref role="2aWVGs" to="tpck:19gBtYEv0ln" resolve="ImplementationPart" />
                              <uo k="s:originTrace" v="n:4573127675679749885" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="ty" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <uo k="s:originTrace" v="n:6847626768367732781" />
                    <node concept="2jxLKc" id="tH" role="1tU5fm">
                      <uo k="s:originTrace" v="n:6847626768367732782" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="tt" role="3uHU7B">
              <uo k="s:originTrace" v="n:6579840439426220436" />
              <node concept="37vLTw" id="tI" role="2Oq$k0">
                <ref role="3cqZAo" node="sH" resolve="allSuperConcepts" />
                <uo k="s:originTrace" v="n:6579840439426219552" />
              </node>
              <node concept="2HwmR7" id="tJ" role="2OqNvi">
                <uo k="s:originTrace" v="n:6579840439426221844" />
                <node concept="1bVj0M" id="tK" role="23t8la">
                  <uo k="s:originTrace" v="n:6579840439426221846" />
                  <node concept="3clFbS" id="tL" role="1bW5cS">
                    <uo k="s:originTrace" v="n:6579840439426221847" />
                    <node concept="3clFbF" id="tN" role="3cqZAp">
                      <uo k="s:originTrace" v="n:6579840439426222206" />
                      <node concept="2OqwBi" id="tO" role="3clFbG">
                        <uo k="s:originTrace" v="n:4573127675679749960" />
                        <node concept="37vLTw" id="tP" role="2Oq$k0">
                          <ref role="3cqZAo" node="tM" resolve="it" />
                          <uo k="s:originTrace" v="n:4573127675679749958" />
                        </node>
                        <node concept="1QLmlb" id="tQ" role="2OqNvi">
                          <uo k="s:originTrace" v="n:4573127675679749961" />
                          <node concept="ZC_QK" id="tR" role="1QLmnL">
                            <ref role="2aWVGs" to="tpck:19gBtYEAf4C" resolve="InterfacePart" />
                            <uo k="s:originTrace" v="n:4573127675679749959" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="tM" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <uo k="s:originTrace" v="n:6847626768367732783" />
                    <node concept="2jxLKc" id="tS" role="1tU5fm">
                      <uo k="s:originTrace" v="n:6847626768367732784" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="sD" role="3cqZAp">
          <uo k="s:originTrace" v="n:5624281226435067934" />
        </node>
        <node concept="3cpWs8" id="sE" role="3cqZAp">
          <uo k="s:originTrace" v="n:3415580819639902987" />
          <node concept="3cpWsn" id="tT" role="3cpWs9">
            <property role="TrG5h" value="isInterfacePart" />
            <uo k="s:originTrace" v="n:3415580819639902988" />
            <node concept="10P_77" id="tU" role="1tU5fm">
              <uo k="s:originTrace" v="n:3415580819639902989" />
            </node>
            <node concept="2OqwBi" id="tV" role="33vP2m">
              <uo k="s:originTrace" v="n:3415580819639902990" />
              <node concept="37vLTw" id="tW" role="2Oq$k0">
                <ref role="3cqZAo" node="sH" resolve="allSuperConcepts" />
                <uo k="s:originTrace" v="n:3415580819639902991" />
              </node>
              <node concept="2HwmR7" id="tX" role="2OqNvi">
                <uo k="s:originTrace" v="n:3415580819639902992" />
                <node concept="1bVj0M" id="tY" role="23t8la">
                  <uo k="s:originTrace" v="n:3415580819639902993" />
                  <node concept="3clFbS" id="tZ" role="1bW5cS">
                    <uo k="s:originTrace" v="n:3415580819639902994" />
                    <node concept="3clFbF" id="u1" role="3cqZAp">
                      <uo k="s:originTrace" v="n:3415580819639902995" />
                      <node concept="2OqwBi" id="u2" role="3clFbG">
                        <uo k="s:originTrace" v="n:4573127675679750034" />
                        <node concept="37vLTw" id="u3" role="2Oq$k0">
                          <ref role="3cqZAo" node="u0" resolve="it" />
                          <uo k="s:originTrace" v="n:4573127675679750032" />
                        </node>
                        <node concept="1QLmlb" id="u4" role="2OqNvi">
                          <uo k="s:originTrace" v="n:4573127675679750035" />
                          <node concept="ZC_QK" id="u5" role="1QLmnL">
                            <ref role="2aWVGs" to="tpck:19gBtYEAf4C" resolve="InterfacePart" />
                            <uo k="s:originTrace" v="n:4573127675679750033" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="u0" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <uo k="s:originTrace" v="n:6847626768367732785" />
                    <node concept="2jxLKc" id="u6" role="1tU5fm">
                      <uo k="s:originTrace" v="n:6847626768367732786" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="sF" role="3cqZAp">
          <uo k="s:originTrace" v="n:3415580819639821347" />
          <node concept="3clFbS" id="u7" role="3clFbx">
            <uo k="s:originTrace" v="n:3415580819639821350" />
            <node concept="3cpWs6" id="u9" role="3cqZAp">
              <uo k="s:originTrace" v="n:3415580819639825929" />
            </node>
          </node>
          <node concept="37vLTw" id="u8" role="3clFbw">
            <ref role="3cqZAo" node="tT" resolve="isInterfacePart" />
            <uo k="s:originTrace" v="n:3415580819639907175" />
          </node>
        </node>
        <node concept="3clFbJ" id="sG" role="3cqZAp">
          <uo k="s:originTrace" v="n:5624281226435077226" />
          <node concept="3clFbS" id="ua" role="3clFbx">
            <uo k="s:originTrace" v="n:5624281226435077229" />
            <node concept="3cpWs8" id="uc" role="3cqZAp">
              <uo k="s:originTrace" v="n:5624281226435120883" />
              <node concept="3cpWsn" id="uf" role="3cpWs9">
                <property role="TrG5h" value="stubName" />
                <uo k="s:originTrace" v="n:5624281226435120884" />
                <node concept="17QB3L" id="ug" role="1tU5fm">
                  <uo k="s:originTrace" v="n:5624281226435120880" />
                </node>
                <node concept="3cpWs3" id="uh" role="33vP2m">
                  <uo k="s:originTrace" v="n:5624281226435121240" />
                  <node concept="Xl_RD" id="ui" role="3uHU7B">
                    <property role="Xl_RC" value="Stub" />
                    <uo k="s:originTrace" v="n:5624281226435121243" />
                  </node>
                  <node concept="2OqwBi" id="uj" role="3uHU7w">
                    <uo k="s:originTrace" v="n:5624281226435120885" />
                    <node concept="37vLTw" id="uk" role="2Oq$k0">
                      <ref role="3cqZAo" node="ss" resolve="conceptDeclaration" />
                      <uo k="s:originTrace" v="n:5624281226435120886" />
                    </node>
                    <node concept="3TrcHB" id="ul" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      <uo k="s:originTrace" v="n:5624281226435120887" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="ud" role="3cqZAp">
              <uo k="s:originTrace" v="n:5624281226435532820" />
              <node concept="3cpWsn" id="um" role="3cpWs9">
                <property role="TrG5h" value="stubExists" />
                <uo k="s:originTrace" v="n:5624281226435532821" />
                <node concept="10P_77" id="un" role="1tU5fm">
                  <uo k="s:originTrace" v="n:5624281226435540116" />
                </node>
                <node concept="2OqwBi" id="uo" role="33vP2m">
                  <uo k="s:originTrace" v="n:5624281226435534725" />
                  <node concept="2OqwBi" id="up" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:5624281226435532822" />
                    <node concept="2OqwBi" id="ur" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:5624281226435532823" />
                      <node concept="2OqwBi" id="ut" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:5624281226435532824" />
                        <node concept="37vLTw" id="uv" role="2Oq$k0">
                          <ref role="3cqZAo" node="ss" resolve="conceptDeclaration" />
                          <uo k="s:originTrace" v="n:5624281226435532825" />
                        </node>
                        <node concept="I4A8Y" id="uw" role="2OqNvi">
                          <uo k="s:originTrace" v="n:5624281226435532826" />
                        </node>
                      </node>
                      <node concept="2SmgA7" id="uu" role="2OqNvi">
                        <uo k="s:originTrace" v="n:5624281226435532827" />
                        <node concept="chp4Y" id="ux" role="1dBWTz">
                          <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                          <uo k="s:originTrace" v="n:1500408157948071233" />
                        </node>
                      </node>
                    </node>
                    <node concept="3zZkjj" id="us" role="2OqNvi">
                      <uo k="s:originTrace" v="n:5624281226435532828" />
                      <node concept="1bVj0M" id="uy" role="23t8la">
                        <uo k="s:originTrace" v="n:5624281226435532829" />
                        <node concept="3clFbS" id="uz" role="1bW5cS">
                          <uo k="s:originTrace" v="n:5624281226435532830" />
                          <node concept="3clFbF" id="u_" role="3cqZAp">
                            <uo k="s:originTrace" v="n:5624281226435532831" />
                            <node concept="1Wc70l" id="uA" role="3clFbG">
                              <uo k="s:originTrace" v="n:5624281226435607362" />
                              <node concept="17R0WA" id="uB" role="3uHU7w">
                                <uo k="s:originTrace" v="n:5624281226435613749" />
                                <node concept="2OqwBi" id="uD" role="3uHU7w">
                                  <uo k="s:originTrace" v="n:5624281226435615150" />
                                  <node concept="37vLTw" id="uF" role="2Oq$k0">
                                    <ref role="3cqZAo" node="ss" resolve="conceptDeclaration" />
                                    <uo k="s:originTrace" v="n:5624281226435614128" />
                                  </node>
                                  <node concept="3TrcHB" id="uG" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                                    <uo k="s:originTrace" v="n:5624281226435617865" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="uE" role="3uHU7B">
                                  <uo k="s:originTrace" v="n:5624281226435608224" />
                                  <node concept="37vLTw" id="uH" role="2Oq$k0">
                                    <ref role="3cqZAo" node="u$" resolve="it" />
                                    <uo k="s:originTrace" v="n:5624281226435607729" />
                                  </node>
                                  <node concept="3TrcHB" id="uI" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                                    <uo k="s:originTrace" v="n:5624281226435610776" />
                                  </node>
                                </node>
                              </node>
                              <node concept="17R0WA" id="uC" role="3uHU7B">
                                <uo k="s:originTrace" v="n:5624281226435532832" />
                                <node concept="2OqwBi" id="uJ" role="3uHU7B">
                                  <uo k="s:originTrace" v="n:5624281226435532834" />
                                  <node concept="37vLTw" id="uL" role="2Oq$k0">
                                    <ref role="3cqZAo" node="u$" resolve="it" />
                                    <uo k="s:originTrace" v="n:5624281226435532835" />
                                  </node>
                                  <node concept="3TrcHB" id="uM" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    <uo k="s:originTrace" v="n:5624281226435532836" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="uK" role="3uHU7w">
                                  <ref role="3cqZAo" node="uf" resolve="stubName" />
                                  <uo k="s:originTrace" v="n:5624281226435532833" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="u$" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <uo k="s:originTrace" v="n:6847626768367732787" />
                          <node concept="2jxLKc" id="uN" role="1tU5fm">
                            <uo k="s:originTrace" v="n:6847626768367732788" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3GX2aA" id="uq" role="2OqNvi">
                    <uo k="s:originTrace" v="n:5624281226435538332" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="ue" role="3cqZAp">
              <uo k="s:originTrace" v="n:5624281226435557366" />
              <node concept="3clFbS" id="uO" role="3clFbx">
                <uo k="s:originTrace" v="n:5624281226435557369" />
                <node concept="9aQIb" id="uQ" role="3cqZAp">
                  <uo k="s:originTrace" v="n:5624281226435558417" />
                  <node concept="3clFbS" id="uR" role="9aQI4">
                    <node concept="3cpWs8" id="uT" role="3cqZAp">
                      <node concept="3cpWsn" id="uW" role="3cpWs9">
                        <property role="TrG5h" value="errorTarget" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="uX" role="1tU5fm">
                          <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                        </node>
                        <node concept="2ShNRf" id="uY" role="33vP2m">
                          <node concept="1pGfFk" id="uZ" role="2ShVmc">
                            <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="uU" role="3cqZAp">
                      <node concept="3cpWsn" id="v0" role="3cpWs9">
                        <property role="TrG5h" value="_reporter_2309309498" />
                        <node concept="3uibUv" id="v1" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                        </node>
                        <node concept="2OqwBi" id="v2" role="33vP2m">
                          <node concept="3VmV3z" id="v3" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="v5" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="v4" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                            <node concept="37vLTw" id="v6" role="37wK5m">
                              <ref role="3cqZAo" node="ss" resolve="conceptDeclaration" />
                              <uo k="s:originTrace" v="n:5624281226435558805" />
                            </node>
                            <node concept="Xl_RD" id="v7" role="37wK5m">
                              <property role="Xl_RC" value="Missing stub for a non-stub ImplementationWithStubPart concept" />
                              <uo k="s:originTrace" v="n:5624281226435558435" />
                            </node>
                            <node concept="Xl_RD" id="v8" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="v9" role="37wK5m">
                              <property role="Xl_RC" value="5624281226435558417" />
                            </node>
                            <node concept="10Nm6u" id="va" role="37wK5m" />
                            <node concept="37vLTw" id="vb" role="37wK5m">
                              <ref role="3cqZAo" node="uW" resolve="errorTarget" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="uV" role="3cqZAp">
                      <node concept="3clFbS" id="vc" role="9aQI4">
                        <node concept="3cpWs8" id="vd" role="3cqZAp">
                          <node concept="3cpWsn" id="vf" role="3cpWs9">
                            <property role="TrG5h" value="intentionProvider" />
                            <node concept="3uibUv" id="vg" role="1tU5fm">
                              <ref role="3uigEE" to="2gg1:~BaseQuickFixProvider" resolve="BaseQuickFixProvider" />
                            </node>
                            <node concept="2ShNRf" id="vh" role="33vP2m">
                              <node concept="1pGfFk" id="vi" role="2ShVmc">
                                <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.&lt;init&gt;(java.lang.String,java.lang.String,boolean)" resolve="BaseQuickFixProvider" />
                                <node concept="Xl_RD" id="vj" role="37wK5m">
                                  <property role="Xl_RC" value="jetbrains.mps.lang.structure.typesystem.CreateMissingStub_QuickFix" />
                                </node>
                                <node concept="Xl_RD" id="vk" role="37wK5m">
                                  <property role="Xl_RC" value="4082234026705857781" />
                                </node>
                                <node concept="3clFbT" id="vl" role="37wK5m" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="ve" role="3cqZAp">
                          <node concept="2OqwBi" id="vm" role="3clFbG">
                            <node concept="37vLTw" id="vn" role="2Oq$k0">
                              <ref role="3cqZAo" node="v0" resolve="_reporter_2309309498" />
                            </node>
                            <node concept="liA8E" id="vo" role="2OqNvi">
                              <ref role="37wK5l" to="2gg1:~IErrorReporter.addIntentionProvider(jetbrains.mps.errors.QuickFixProvider)" resolve="addIntentionProvider" />
                              <node concept="37vLTw" id="vp" role="37wK5m">
                                <ref role="3cqZAo" node="vf" resolve="intentionProvider" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="6wLe0" id="uS" role="lGtFl">
                    <property role="6wLej" value="5624281226435558417" />
                    <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="uP" role="3clFbw">
                <uo k="s:originTrace" v="n:5624281226435558388" />
                <node concept="37vLTw" id="vq" role="3fr31v">
                  <ref role="3cqZAo" node="um" resolve="stubExists" />
                  <uo k="s:originTrace" v="n:5624281226435558390" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="ub" role="3clFbw">
            <uo k="s:originTrace" v="n:5624281226435078863" />
            <node concept="37vLTw" id="vr" role="2Oq$k0">
              <ref role="3cqZAo" node="sH" resolve="allSuperConcepts" />
              <uo k="s:originTrace" v="n:5624281226435078864" />
            </node>
            <node concept="2HwmR7" id="vs" role="2OqNvi">
              <uo k="s:originTrace" v="n:5624281226435078865" />
              <node concept="1bVj0M" id="vt" role="23t8la">
                <uo k="s:originTrace" v="n:5624281226435078866" />
                <node concept="3clFbS" id="vu" role="1bW5cS">
                  <uo k="s:originTrace" v="n:5624281226435078867" />
                  <node concept="3clFbF" id="vw" role="3cqZAp">
                    <uo k="s:originTrace" v="n:5624281226435078868" />
                    <node concept="2OqwBi" id="vx" role="3clFbG">
                      <uo k="s:originTrace" v="n:4573127675679750108" />
                      <node concept="37vLTw" id="vy" role="2Oq$k0">
                        <ref role="3cqZAo" node="vv" resolve="it" />
                        <uo k="s:originTrace" v="n:4573127675679750106" />
                      </node>
                      <node concept="1QLmlb" id="vz" role="2OqNvi">
                        <uo k="s:originTrace" v="n:4573127675679750109" />
                        <node concept="ZC_QK" id="v$" role="1QLmnL">
                          <ref role="2aWVGs" to="tpck:64$4ecGX64Q" resolve="ImplementationWithStubPart" />
                          <uo k="s:originTrace" v="n:4573127675679750107" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="vv" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <uo k="s:originTrace" v="n:6847626768367732789" />
                  <node concept="2jxLKc" id="v_" role="1tU5fm">
                    <uo k="s:originTrace" v="n:6847626768367732790" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="sw" role="1B3o_S">
        <uo k="s:originTrace" v="n:6579840439426125742" />
      </node>
    </node>
    <node concept="3clFb_" id="si" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:6579840439426125742" />
      <node concept="3bZ5Sz" id="vA" role="3clF45">
        <uo k="s:originTrace" v="n:6579840439426125742" />
      </node>
      <node concept="3clFbS" id="vB" role="3clF47">
        <uo k="s:originTrace" v="n:6579840439426125742" />
        <node concept="3cpWs6" id="vD" role="3cqZAp">
          <uo k="s:originTrace" v="n:6579840439426125742" />
          <node concept="35c_gC" id="vE" role="3cqZAk">
            <ref role="35c_gD" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
            <uo k="s:originTrace" v="n:6579840439426125742" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="vC" role="1B3o_S">
        <uo k="s:originTrace" v="n:6579840439426125742" />
      </node>
    </node>
    <node concept="3clFb_" id="sj" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:6579840439426125742" />
      <node concept="37vLTG" id="vF" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:6579840439426125742" />
        <node concept="3Tqbb2" id="vJ" role="1tU5fm">
          <uo k="s:originTrace" v="n:6579840439426125742" />
        </node>
      </node>
      <node concept="3clFbS" id="vG" role="3clF47">
        <uo k="s:originTrace" v="n:6579840439426125742" />
        <node concept="9aQIb" id="vK" role="3cqZAp">
          <uo k="s:originTrace" v="n:6579840439426125742" />
          <node concept="3clFbS" id="vL" role="9aQI4">
            <uo k="s:originTrace" v="n:6579840439426125742" />
            <node concept="3cpWs6" id="vM" role="3cqZAp">
              <uo k="s:originTrace" v="n:6579840439426125742" />
              <node concept="2ShNRf" id="vN" role="3cqZAk">
                <uo k="s:originTrace" v="n:6579840439426125742" />
                <node concept="1pGfFk" id="vO" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:6579840439426125742" />
                  <node concept="2OqwBi" id="vP" role="37wK5m">
                    <uo k="s:originTrace" v="n:6579840439426125742" />
                    <node concept="2OqwBi" id="vR" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:6579840439426125742" />
                      <node concept="liA8E" id="vT" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:6579840439426125742" />
                      </node>
                      <node concept="2JrnkZ" id="vU" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:6579840439426125742" />
                        <node concept="37vLTw" id="vV" role="2JrQYb">
                          <ref role="3cqZAo" node="vF" resolve="argument" />
                          <uo k="s:originTrace" v="n:6579840439426125742" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="vS" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:6579840439426125742" />
                      <node concept="1rXfSq" id="vW" role="37wK5m">
                        <ref role="37wK5l" node="si" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:6579840439426125742" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="vQ" role="37wK5m">
                    <uo k="s:originTrace" v="n:6579840439426125742" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="vH" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:6579840439426125742" />
      </node>
      <node concept="3Tm1VV" id="vI" role="1B3o_S">
        <uo k="s:originTrace" v="n:6579840439426125742" />
      </node>
    </node>
    <node concept="3clFb_" id="sk" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:6579840439426125742" />
      <node concept="3clFbS" id="vX" role="3clF47">
        <uo k="s:originTrace" v="n:6579840439426125742" />
        <node concept="3cpWs6" id="w0" role="3cqZAp">
          <uo k="s:originTrace" v="n:6579840439426125742" />
          <node concept="3clFbT" id="w1" role="3cqZAk">
            <uo k="s:originTrace" v="n:6579840439426125742" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="vY" role="3clF45">
        <uo k="s:originTrace" v="n:6579840439426125742" />
      </node>
      <node concept="3Tm1VV" id="vZ" role="1B3o_S">
        <uo k="s:originTrace" v="n:6579840439426125742" />
      </node>
    </node>
    <node concept="3uibUv" id="sl" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:6579840439426125742" />
    </node>
    <node concept="3uibUv" id="sm" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:6579840439426125742" />
    </node>
    <node concept="3Tm1VV" id="sn" role="1B3o_S">
      <uo k="s:originTrace" v="n:6579840439426125742" />
    </node>
  </node>
  <node concept="312cEu" id="w2">
    <property role="TrG5h" value="check_ConceptDeclaration_iconPath_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:4376713410984013095" />
    <node concept="3clFbW" id="w3" role="jymVt">
      <uo k="s:originTrace" v="n:4376713410984013095" />
      <node concept="3clFbS" id="wb" role="3clF47">
        <uo k="s:originTrace" v="n:4376713410984013095" />
      </node>
      <node concept="3Tm1VV" id="wc" role="1B3o_S">
        <uo k="s:originTrace" v="n:4376713410984013095" />
      </node>
      <node concept="3cqZAl" id="wd" role="3clF45">
        <uo k="s:originTrace" v="n:4376713410984013095" />
      </node>
    </node>
    <node concept="3clFb_" id="w4" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:4376713410984013095" />
      <node concept="3cqZAl" id="we" role="3clF45">
        <uo k="s:originTrace" v="n:4376713410984013095" />
      </node>
      <node concept="37vLTG" id="wf" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="conceptDeclaration" />
        <uo k="s:originTrace" v="n:4376713410984013095" />
        <node concept="3Tqbb2" id="wk" role="1tU5fm">
          <uo k="s:originTrace" v="n:4376713410984013095" />
        </node>
      </node>
      <node concept="37vLTG" id="wg" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:4376713410984013095" />
        <node concept="3uibUv" id="wl" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:4376713410984013095" />
        </node>
      </node>
      <node concept="37vLTG" id="wh" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:4376713410984013095" />
        <node concept="3uibUv" id="wm" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:4376713410984013095" />
        </node>
      </node>
      <node concept="3clFbS" id="wi" role="3clF47">
        <uo k="s:originTrace" v="n:4376713410984013096" />
        <node concept="3cpWs8" id="wn" role="3cqZAp">
          <uo k="s:originTrace" v="n:9074655878956859013" />
          <node concept="3cpWsn" id="wp" role="3cpWs9">
            <property role="TrG5h" value="iconPath" />
            <uo k="s:originTrace" v="n:9074655878956859014" />
            <node concept="17QB3L" id="wq" role="1tU5fm">
              <uo k="s:originTrace" v="n:9074655878956859015" />
            </node>
            <node concept="2OqwBi" id="wr" role="33vP2m">
              <uo k="s:originTrace" v="n:9074655878956859016" />
              <node concept="37vLTw" id="ws" role="2Oq$k0">
                <ref role="3cqZAo" node="wf" resolve="conceptDeclaration" />
                <uo k="s:originTrace" v="n:9074655878956859017" />
              </node>
              <node concept="3TrcHB" id="wt" role="2OqNvi">
                <ref role="3TsBF5" to="tpce:gSMwhzt" resolve="iconPath" />
                <uo k="s:originTrace" v="n:9074655878956859018" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="wo" role="3cqZAp">
          <uo k="s:originTrace" v="n:4376713410984021568" />
          <node concept="3clFbS" id="wu" role="3clFbx">
            <uo k="s:originTrace" v="n:4376713410984021569" />
            <node concept="3clFbJ" id="ww" role="3cqZAp">
              <uo k="s:originTrace" v="n:4376713410984021563" />
              <node concept="3fqX7Q" id="wx" role="3clFbw">
                <node concept="3clFbC" id="w$" role="3fr31v">
                  <uo k="s:originTrace" v="n:4376713410984022305" />
                  <node concept="3cmrfG" id="w_" role="3uHU7w">
                    <property role="3cmrfH" value="-1" />
                    <uo k="s:originTrace" v="n:4376713410984022308" />
                  </node>
                  <node concept="2OqwBi" id="wA" role="3uHU7B">
                    <uo k="s:originTrace" v="n:4376713410984021607" />
                    <node concept="37vLTw" id="wB" role="2Oq$k0">
                      <ref role="3cqZAo" node="wp" resolve="iconPath" />
                      <uo k="s:originTrace" v="n:4265636116363073319" />
                    </node>
                    <node concept="liA8E" id="wC" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.indexOf(int)" resolve="indexOf" />
                      <uo k="s:originTrace" v="n:4376713410984022302" />
                      <node concept="1Xhbcc" id="wD" role="37wK5m">
                        <property role="1XhdNS" value="\\" />
                        <uo k="s:originTrace" v="n:4376713410984022304" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="wy" role="3clFbx">
                <node concept="3cpWs8" id="wE" role="3cqZAp">
                  <node concept="3cpWsn" id="wG" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="wH" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="wI" role="33vP2m">
                      <uo k="s:originTrace" v="n:4376713410984022311" />
                      <node concept="1pGfFk" id="wJ" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~PropertyMessageTarget.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty)" resolve="PropertyMessageTarget" />
                        <uo k="s:originTrace" v="n:4376713410984022311" />
                        <node concept="355D3s" id="wK" role="37wK5m">
                          <ref role="355D3t" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                          <ref role="355D3u" to="tpce:gSMwhzt" resolve="iconPath" />
                          <uo k="s:originTrace" v="n:4376713410984022311" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="wF" role="3cqZAp">
                  <node concept="3cpWsn" id="wL" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="wM" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="wN" role="33vP2m">
                      <node concept="3VmV3z" id="wO" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="wQ" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="wP" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                        <node concept="37vLTw" id="wR" role="37wK5m">
                          <ref role="3cqZAo" node="wf" resolve="conceptDeclaration" />
                          <uo k="s:originTrace" v="n:4376713410984022309" />
                        </node>
                        <node concept="Xl_RD" id="wS" role="37wK5m">
                          <property role="Xl_RC" value="Using backslashes in macro" />
                          <uo k="s:originTrace" v="n:4376713410984022312" />
                        </node>
                        <node concept="Xl_RD" id="wT" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="wU" role="37wK5m">
                          <property role="Xl_RC" value="4376713410984021563" />
                        </node>
                        <node concept="10Nm6u" id="wV" role="37wK5m" />
                        <node concept="37vLTw" id="wW" role="37wK5m">
                          <ref role="3cqZAo" node="wG" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="wz" role="lGtFl">
                <property role="6wLej" value="4376713410984021563" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="wv" role="3clFbw">
            <uo k="s:originTrace" v="n:4376713410984021586" />
            <node concept="2OqwBi" id="wX" role="3uHU7w">
              <uo k="s:originTrace" v="n:4376713410984021595" />
              <node concept="37vLTw" id="wZ" role="2Oq$k0">
                <ref role="3cqZAo" node="wp" resolve="iconPath" />
                <uo k="s:originTrace" v="n:4265636116363089296" />
              </node>
              <node concept="liA8E" id="x0" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                <uo k="s:originTrace" v="n:4376713410984021599" />
                <node concept="Xl_RD" id="x1" role="37wK5m">
                  <property role="Xl_RC" value="${" />
                  <uo k="s:originTrace" v="n:4376713410984021600" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="wY" role="3uHU7B">
              <uo k="s:originTrace" v="n:4376713410984021582" />
              <node concept="37vLTw" id="x2" role="3uHU7B">
                <ref role="3cqZAo" node="wp" resolve="iconPath" />
                <uo k="s:originTrace" v="n:4265636116363098579" />
              </node>
              <node concept="10Nm6u" id="x3" role="3uHU7w">
                <uo k="s:originTrace" v="n:4376713410984021585" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="wj" role="1B3o_S">
        <uo k="s:originTrace" v="n:4376713410984013095" />
      </node>
    </node>
    <node concept="3clFb_" id="w5" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:4376713410984013095" />
      <node concept="3bZ5Sz" id="x4" role="3clF45">
        <uo k="s:originTrace" v="n:4376713410984013095" />
      </node>
      <node concept="3clFbS" id="x5" role="3clF47">
        <uo k="s:originTrace" v="n:4376713410984013095" />
        <node concept="3cpWs6" id="x7" role="3cqZAp">
          <uo k="s:originTrace" v="n:4376713410984013095" />
          <node concept="35c_gC" id="x8" role="3cqZAk">
            <ref role="35c_gD" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
            <uo k="s:originTrace" v="n:4376713410984013095" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="x6" role="1B3o_S">
        <uo k="s:originTrace" v="n:4376713410984013095" />
      </node>
    </node>
    <node concept="3clFb_" id="w6" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:4376713410984013095" />
      <node concept="37vLTG" id="x9" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:4376713410984013095" />
        <node concept="3Tqbb2" id="xd" role="1tU5fm">
          <uo k="s:originTrace" v="n:4376713410984013095" />
        </node>
      </node>
      <node concept="3clFbS" id="xa" role="3clF47">
        <uo k="s:originTrace" v="n:4376713410984013095" />
        <node concept="9aQIb" id="xe" role="3cqZAp">
          <uo k="s:originTrace" v="n:4376713410984013095" />
          <node concept="3clFbS" id="xf" role="9aQI4">
            <uo k="s:originTrace" v="n:4376713410984013095" />
            <node concept="3cpWs6" id="xg" role="3cqZAp">
              <uo k="s:originTrace" v="n:4376713410984013095" />
              <node concept="2ShNRf" id="xh" role="3cqZAk">
                <uo k="s:originTrace" v="n:4376713410984013095" />
                <node concept="1pGfFk" id="xi" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:4376713410984013095" />
                  <node concept="2OqwBi" id="xj" role="37wK5m">
                    <uo k="s:originTrace" v="n:4376713410984013095" />
                    <node concept="2OqwBi" id="xl" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:4376713410984013095" />
                      <node concept="liA8E" id="xn" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:4376713410984013095" />
                      </node>
                      <node concept="2JrnkZ" id="xo" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:4376713410984013095" />
                        <node concept="37vLTw" id="xp" role="2JrQYb">
                          <ref role="3cqZAo" node="x9" resolve="argument" />
                          <uo k="s:originTrace" v="n:4376713410984013095" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="xm" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:4376713410984013095" />
                      <node concept="1rXfSq" id="xq" role="37wK5m">
                        <ref role="37wK5l" node="w5" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:4376713410984013095" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="xk" role="37wK5m">
                    <uo k="s:originTrace" v="n:4376713410984013095" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="xb" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:4376713410984013095" />
      </node>
      <node concept="3Tm1VV" id="xc" role="1B3o_S">
        <uo k="s:originTrace" v="n:4376713410984013095" />
      </node>
    </node>
    <node concept="3clFb_" id="w7" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:4376713410984013095" />
      <node concept="3clFbS" id="xr" role="3clF47">
        <uo k="s:originTrace" v="n:4376713410984013095" />
        <node concept="3cpWs6" id="xu" role="3cqZAp">
          <uo k="s:originTrace" v="n:4376713410984013095" />
          <node concept="3clFbT" id="xv" role="3cqZAk">
            <uo k="s:originTrace" v="n:4376713410984013095" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="xs" role="3clF45">
        <uo k="s:originTrace" v="n:4376713410984013095" />
      </node>
      <node concept="3Tm1VV" id="xt" role="1B3o_S">
        <uo k="s:originTrace" v="n:4376713410984013095" />
      </node>
    </node>
    <node concept="3uibUv" id="w8" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:4376713410984013095" />
    </node>
    <node concept="3uibUv" id="w9" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:4376713410984013095" />
    </node>
    <node concept="3Tm1VV" id="wa" role="1B3o_S">
      <uo k="s:originTrace" v="n:4376713410984013095" />
    </node>
  </node>
  <node concept="312cEu" id="xw">
    <property role="TrG5h" value="check_ConceptForNotImplementedMethods_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:1198233312425" />
    <node concept="3clFbW" id="xx" role="jymVt">
      <uo k="s:originTrace" v="n:1198233312425" />
      <node concept="3clFbS" id="xD" role="3clF47">
        <uo k="s:originTrace" v="n:1198233312425" />
      </node>
      <node concept="3Tm1VV" id="xE" role="1B3o_S">
        <uo k="s:originTrace" v="n:1198233312425" />
      </node>
      <node concept="3cqZAl" id="xF" role="3clF45">
        <uo k="s:originTrace" v="n:1198233312425" />
      </node>
    </node>
    <node concept="3clFb_" id="xy" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1198233312425" />
      <node concept="3cqZAl" id="xG" role="3clF45">
        <uo k="s:originTrace" v="n:1198233312425" />
      </node>
      <node concept="37vLTG" id="xH" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="conceptDecl" />
        <uo k="s:originTrace" v="n:1198233312425" />
        <node concept="3Tqbb2" id="xM" role="1tU5fm">
          <uo k="s:originTrace" v="n:1198233312425" />
        </node>
      </node>
      <node concept="37vLTG" id="xI" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1198233312425" />
        <node concept="3uibUv" id="xN" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1198233312425" />
        </node>
      </node>
      <node concept="37vLTG" id="xJ" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1198233312425" />
        <node concept="3uibUv" id="xO" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1198233312425" />
        </node>
      </node>
      <node concept="3clFbS" id="xK" role="3clF47">
        <uo k="s:originTrace" v="n:1198233312426" />
        <node concept="3cpWs8" id="xP" role="3cqZAp">
          <uo k="s:originTrace" v="n:1101389554473902001" />
          <node concept="3cpWsn" id="xU" role="3cpWs9">
            <property role="TrG5h" value="bhNode" />
            <uo k="s:originTrace" v="n:1101389554473902002" />
            <node concept="3Tqbb2" id="xV" role="1tU5fm">
              <ref role="ehGHo" to="1i04:hP3h7Gq" resolve="ConceptBehavior" />
              <uo k="s:originTrace" v="n:1101389554473887112" />
            </node>
            <node concept="1PxgMI" id="xW" role="33vP2m">
              <uo k="s:originTrace" v="n:1818770337282950323" />
              <node concept="2OqwBi" id="xX" role="1m5AlR">
                <uo k="s:originTrace" v="n:1818770337282950324" />
                <node concept="37vLTw" id="xZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="xH" resolve="conceptDecl" />
                  <uo k="s:originTrace" v="n:1101389554474431226" />
                </node>
                <node concept="3zqWPK" id="y0" role="2OqNvi">
                  <ref role="37wK5l" to="tpcn:7g4OXB0yku$" resolve="findConceptAspect" />
                  <uo k="s:originTrace" v="n:8085146484218853708" />
                  <node concept="1qvjxa" id="y1" role="37wK5m">
                    <ref role="1quiSB" to="mg3u:2LiUEk8oQ$g" resolve="behavior" />
                    <uo k="s:originTrace" v="n:8085146484218853710" />
                    <node concept="2OqwBi" id="y2" role="1qvjxb">
                      <uo k="s:originTrace" v="n:8085146484218853711" />
                      <node concept="2JrnkZ" id="y3" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:8085146484218853712" />
                        <node concept="2OqwBi" id="y5" role="2JrQYb">
                          <uo k="s:originTrace" v="n:8085146484218853713" />
                          <node concept="37vLTw" id="y6" role="2Oq$k0">
                            <ref role="3cqZAo" node="xH" resolve="conceptDecl" />
                            <uo k="s:originTrace" v="n:8085146484218853714" />
                          </node>
                          <node concept="I4A8Y" id="y7" role="2OqNvi">
                            <uo k="s:originTrace" v="n:8085146484218853715" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="y4" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                        <uo k="s:originTrace" v="n:8085146484218853716" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="chp4Y" id="xY" role="3oSUPX">
                <ref role="cht4Q" to="1i04:hP3h7Gq" resolve="ConceptBehavior" />
                <uo k="s:originTrace" v="n:8089793891579205968" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="xQ" role="3cqZAp">
          <uo k="s:originTrace" v="n:1198949711266" />
          <node concept="2OqwBi" id="y8" role="3clFbw">
            <uo k="s:originTrace" v="n:2886182022232070199" />
            <node concept="3TrcHB" id="ya" role="2OqNvi">
              <ref role="3TsBF5" to="tpce:40UcGlRb7V2" resolve="abstract" />
              <uo k="s:originTrace" v="n:2886182022232070200" />
            </node>
            <node concept="37vLTw" id="yb" role="2Oq$k0">
              <ref role="3cqZAo" node="xH" resolve="conceptDecl" />
              <uo k="s:originTrace" v="n:1101389554474525403" />
            </node>
          </node>
          <node concept="3clFbS" id="y9" role="3clFbx">
            <uo k="s:originTrace" v="n:1198949711267" />
            <node concept="3cpWs6" id="yc" role="3cqZAp">
              <uo k="s:originTrace" v="n:1198949721467" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="xR" role="3cqZAp">
          <uo k="s:originTrace" v="n:1198949731391" />
          <node concept="3clFbS" id="yd" role="3clFbx">
            <uo k="s:originTrace" v="n:1198949731392" />
            <node concept="3cpWs6" id="yf" role="3cqZAp">
              <uo k="s:originTrace" v="n:1198949742156" />
            </node>
          </node>
          <node concept="2OqwBi" id="ye" role="3clFbw">
            <uo k="s:originTrace" v="n:1204227922023" />
            <node concept="37vLTw" id="yg" role="2Oq$k0">
              <ref role="3cqZAo" node="xH" resolve="conceptDecl" />
              <uo k="s:originTrace" v="n:1101389554474525406" />
            </node>
            <node concept="1mIQ4w" id="yh" role="2OqNvi">
              <uo k="s:originTrace" v="n:1198949737387" />
              <node concept="chp4Y" id="yi" role="cj9EA">
                <ref role="cht4Q" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                <uo k="s:originTrace" v="n:1198949740827" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="xS" role="3cqZAp">
          <uo k="s:originTrace" v="n:1198233400249" />
          <node concept="3cpWsn" id="yj" role="3cpWs9">
            <property role="TrG5h" value="methodDeclarations" />
            <uo k="s:originTrace" v="n:1198233400250" />
            <node concept="2I9FWS" id="yk" role="1tU5fm">
              <ref role="2I9WkF" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
              <uo k="s:originTrace" v="n:1198233400251" />
            </node>
            <node concept="2OqwBi" id="yl" role="33vP2m">
              <uo k="s:originTrace" v="n:1204227930404" />
              <node concept="37vLTw" id="ym" role="2Oq$k0">
                <ref role="3cqZAo" node="xH" resolve="conceptDecl" />
                <uo k="s:originTrace" v="n:1101389554474525405" />
              </node>
              <node concept="3zqWPK" id="yn" role="2OqNvi">
                <ref role="37wK5l" to="tpcn:hEwILIz" resolve="getNotImplementedConceptMethods" />
                <uo k="s:originTrace" v="n:8085146484218853717" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="xT" role="3cqZAp">
          <uo k="s:originTrace" v="n:1198233420097" />
          <node concept="3clFbS" id="yo" role="3clFbx">
            <uo k="s:originTrace" v="n:1198233420098" />
            <node concept="3cpWs8" id="yq" role="3cqZAp">
              <uo k="s:originTrace" v="n:1198950333581" />
              <node concept="3cpWsn" id="yt" role="3cpWs9">
                <property role="TrG5h" value="notImplementedMethods" />
                <uo k="s:originTrace" v="n:1198950333582" />
                <node concept="10P_77" id="yu" role="1tU5fm">
                  <uo k="s:originTrace" v="n:1198950333583" />
                </node>
                <node concept="3clFbT" id="yv" role="33vP2m">
                  <property role="3clFbU" value="false" />
                  <uo k="s:originTrace" v="n:1198950342226" />
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="yr" role="3cqZAp">
              <uo k="s:originTrace" v="n:1198950315626" />
              <node concept="37vLTw" id="yw" role="1DdaDG">
                <ref role="3cqZAo" node="yj" resolve="methodDeclarations" />
                <uo k="s:originTrace" v="n:4265636116363091512" />
              </node>
              <node concept="3cpWsn" id="yx" role="1Duv9x">
                <property role="TrG5h" value="cm" />
                <uo k="s:originTrace" v="n:1198950315628" />
                <node concept="3Tqbb2" id="yz" role="1tU5fm">
                  <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                  <uo k="s:originTrace" v="n:1198950317615" />
                </node>
              </node>
              <node concept="3clFbS" id="yy" role="2LFqv$">
                <uo k="s:originTrace" v="n:1198950315630" />
                <node concept="3clFbJ" id="y$" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1198950344399" />
                  <node concept="3clFbS" id="y_" role="3clFbx">
                    <uo k="s:originTrace" v="n:1198950344401" />
                    <node concept="3clFbF" id="yB" role="3cqZAp">
                      <uo k="s:originTrace" v="n:1198950372215" />
                      <node concept="37vLTI" id="yD" role="3clFbG">
                        <uo k="s:originTrace" v="n:1198950372998" />
                        <node concept="3clFbT" id="yE" role="37vLTx">
                          <property role="3clFbU" value="true" />
                          <uo k="s:originTrace" v="n:1198950373939" />
                        </node>
                        <node concept="37vLTw" id="yF" role="37vLTJ">
                          <ref role="3cqZAo" node="yt" resolve="notImplementedMethods" />
                          <uo k="s:originTrace" v="n:4265636116363094370" />
                        </node>
                      </node>
                    </node>
                    <node concept="3zACq4" id="yC" role="3cqZAp">
                      <uo k="s:originTrace" v="n:1101389554474139972" />
                    </node>
                  </node>
                  <node concept="22lmx$" id="yA" role="3clFbw">
                    <uo k="s:originTrace" v="n:1101389554474137708" />
                    <node concept="3clFbC" id="yG" role="3uHU7B">
                      <uo k="s:originTrace" v="n:1101389554474139425" />
                      <node concept="10Nm6u" id="yI" role="3uHU7w">
                        <uo k="s:originTrace" v="n:1101389554474139482" />
                      </node>
                      <node concept="37vLTw" id="yJ" role="3uHU7B">
                        <ref role="3cqZAo" node="xU" resolve="bhNode" />
                        <uo k="s:originTrace" v="n:1101389554474138563" />
                      </node>
                    </node>
                    <node concept="3fqX7Q" id="yH" role="3uHU7w">
                      <uo k="s:originTrace" v="n:1198950353251" />
                      <node concept="2OqwBi" id="yK" role="3fr31v">
                        <uo k="s:originTrace" v="n:1208198529461" />
                        <node concept="2OqwBi" id="yL" role="2Oq$k0">
                          <uo k="s:originTrace" v="n:1204227941547" />
                          <node concept="37vLTw" id="yN" role="2Oq$k0">
                            <ref role="3cqZAo" node="xU" resolve="bhNode" />
                            <uo k="s:originTrace" v="n:1101389554473902007" />
                          </node>
                          <node concept="3Tsc0h" id="yO" role="2OqNvi">
                            <ref role="3TtcxE" to="1i04:hP3h7G_" resolve="method" />
                            <uo k="s:originTrace" v="n:1198950363007" />
                          </node>
                        </node>
                        <node concept="3JPx81" id="yM" role="2OqNvi">
                          <uo k="s:originTrace" v="n:1198950367931" />
                          <node concept="37vLTw" id="yP" role="25WWJ7">
                            <ref role="3cqZAo" node="yx" resolve="cm" />
                            <uo k="s:originTrace" v="n:4265636116363093058" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="ys" role="3cqZAp">
              <uo k="s:originTrace" v="n:1198950376425" />
              <node concept="3clFbS" id="yQ" role="3clFbx">
                <uo k="s:originTrace" v="n:1198950376426" />
                <node concept="3cpWs8" id="yS" role="3cqZAp">
                  <uo k="s:originTrace" v="n:66987406575605189" />
                  <node concept="3cpWsn" id="yU" role="3cpWs9">
                    <property role="TrG5h" value="msg" />
                    <uo k="s:originTrace" v="n:66987406575605190" />
                    <node concept="17QB3L" id="yV" role="1tU5fm">
                      <uo k="s:originTrace" v="n:66987406575605177" />
                    </node>
                    <node concept="3cpWs3" id="yW" role="33vP2m">
                      <uo k="s:originTrace" v="n:66987406575605193" />
                      <node concept="3cpWs3" id="yX" role="3uHU7B">
                        <uo k="s:originTrace" v="n:66987406575605194" />
                        <node concept="Xl_RD" id="yZ" role="3uHU7B">
                          <property role="Xl_RC" value="Concept " />
                          <uo k="s:originTrace" v="n:66987406575605195" />
                        </node>
                        <node concept="2OqwBi" id="z0" role="3uHU7w">
                          <uo k="s:originTrace" v="n:66987406575605196" />
                          <node concept="37vLTw" id="z1" role="2Oq$k0">
                            <ref role="3cqZAo" node="xH" resolve="conceptDecl" />
                            <uo k="s:originTrace" v="n:1101389554474525404" />
                          </node>
                          <node concept="3TrcHB" id="z2" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            <uo k="s:originTrace" v="n:66987406575605200" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="yY" role="3uHU7w">
                        <property role="Xl_RC" value=" does not implement some abstract methods" />
                        <uo k="s:originTrace" v="n:66987406575605201" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="yT" role="3cqZAp">
                  <uo k="s:originTrace" v="n:66987406575552399" />
                  <node concept="3clFbS" id="z3" role="9aQI4">
                    <node concept="3cpWs8" id="z5" role="3cqZAp">
                      <node concept="3cpWsn" id="z7" role="3cpWs9">
                        <property role="TrG5h" value="errorTarget" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="z8" role="1tU5fm">
                          <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                        </node>
                        <node concept="2ShNRf" id="z9" role="33vP2m">
                          <node concept="1pGfFk" id="za" role="2ShVmc">
                            <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="z6" role="3cqZAp">
                      <node concept="3cpWsn" id="zb" role="3cpWs9">
                        <property role="TrG5h" value="_reporter_2309309498" />
                        <node concept="3uibUv" id="zc" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                        </node>
                        <node concept="2OqwBi" id="zd" role="33vP2m">
                          <node concept="3VmV3z" id="ze" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="zg" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="zf" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                            <node concept="37vLTw" id="zh" role="37wK5m">
                              <ref role="3cqZAo" node="xH" resolve="conceptDecl" />
                              <uo k="s:originTrace" v="n:1101389554474525402" />
                            </node>
                            <node concept="37vLTw" id="zi" role="37wK5m">
                              <ref role="3cqZAo" node="yU" resolve="msg" />
                              <uo k="s:originTrace" v="n:66987406575605203" />
                            </node>
                            <node concept="Xl_RD" id="zj" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="zk" role="37wK5m">
                              <property role="Xl_RC" value="66987406575552399" />
                            </node>
                            <node concept="10Nm6u" id="zl" role="37wK5m" />
                            <node concept="37vLTw" id="zm" role="37wK5m">
                              <ref role="3cqZAo" node="z7" resolve="errorTarget" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="6wLe0" id="z4" role="lGtFl">
                    <property role="6wLej" value="66987406575552399" />
                    <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="yR" role="3clFbw">
                <ref role="3cqZAo" node="yt" resolve="notImplementedMethods" />
                <uo k="s:originTrace" v="n:4265636116363074893" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="yp" role="3clFbw">
            <uo k="s:originTrace" v="n:1198233427480" />
            <node concept="2OqwBi" id="zn" role="3fr31v">
              <uo k="s:originTrace" v="n:1208198529250" />
              <node concept="37vLTw" id="zo" role="2Oq$k0">
                <ref role="3cqZAo" node="yj" resolve="methodDeclarations" />
                <uo k="s:originTrace" v="n:4265636116363112137" />
              </node>
              <node concept="1v1jN8" id="zp" role="2OqNvi">
                <uo k="s:originTrace" v="n:1198233427483" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="xL" role="1B3o_S">
        <uo k="s:originTrace" v="n:1198233312425" />
      </node>
    </node>
    <node concept="3clFb_" id="xz" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1198233312425" />
      <node concept="3bZ5Sz" id="zq" role="3clF45">
        <uo k="s:originTrace" v="n:1198233312425" />
      </node>
      <node concept="3clFbS" id="zr" role="3clF47">
        <uo k="s:originTrace" v="n:1198233312425" />
        <node concept="3cpWs6" id="zt" role="3cqZAp">
          <uo k="s:originTrace" v="n:1198233312425" />
          <node concept="35c_gC" id="zu" role="3cqZAk">
            <ref role="35c_gD" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
            <uo k="s:originTrace" v="n:1198233312425" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="zs" role="1B3o_S">
        <uo k="s:originTrace" v="n:1198233312425" />
      </node>
    </node>
    <node concept="3clFb_" id="x$" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1198233312425" />
      <node concept="37vLTG" id="zv" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1198233312425" />
        <node concept="3Tqbb2" id="zz" role="1tU5fm">
          <uo k="s:originTrace" v="n:1198233312425" />
        </node>
      </node>
      <node concept="3clFbS" id="zw" role="3clF47">
        <uo k="s:originTrace" v="n:1198233312425" />
        <node concept="9aQIb" id="z$" role="3cqZAp">
          <uo k="s:originTrace" v="n:1198233312425" />
          <node concept="3clFbS" id="z_" role="9aQI4">
            <uo k="s:originTrace" v="n:1198233312425" />
            <node concept="3cpWs6" id="zA" role="3cqZAp">
              <uo k="s:originTrace" v="n:1198233312425" />
              <node concept="2ShNRf" id="zB" role="3cqZAk">
                <uo k="s:originTrace" v="n:1198233312425" />
                <node concept="1pGfFk" id="zC" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1198233312425" />
                  <node concept="2OqwBi" id="zD" role="37wK5m">
                    <uo k="s:originTrace" v="n:1198233312425" />
                    <node concept="2OqwBi" id="zF" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1198233312425" />
                      <node concept="liA8E" id="zH" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1198233312425" />
                      </node>
                      <node concept="2JrnkZ" id="zI" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1198233312425" />
                        <node concept="37vLTw" id="zJ" role="2JrQYb">
                          <ref role="3cqZAo" node="zv" resolve="argument" />
                          <uo k="s:originTrace" v="n:1198233312425" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="zG" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1198233312425" />
                      <node concept="1rXfSq" id="zK" role="37wK5m">
                        <ref role="37wK5l" node="xz" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1198233312425" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="zE" role="37wK5m">
                    <uo k="s:originTrace" v="n:1198233312425" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="zx" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1198233312425" />
      </node>
      <node concept="3Tm1VV" id="zy" role="1B3o_S">
        <uo k="s:originTrace" v="n:1198233312425" />
      </node>
    </node>
    <node concept="3clFb_" id="x_" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1198233312425" />
      <node concept="3clFbS" id="zL" role="3clF47">
        <uo k="s:originTrace" v="n:1198233312425" />
        <node concept="3cpWs6" id="zO" role="3cqZAp">
          <uo k="s:originTrace" v="n:1198233312425" />
          <node concept="3clFbT" id="zP" role="3cqZAk">
            <uo k="s:originTrace" v="n:1198233312425" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="zM" role="3clF45">
        <uo k="s:originTrace" v="n:1198233312425" />
      </node>
      <node concept="3Tm1VV" id="zN" role="1B3o_S">
        <uo k="s:originTrace" v="n:1198233312425" />
      </node>
    </node>
    <node concept="3uibUv" id="xA" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1198233312425" />
    </node>
    <node concept="3uibUv" id="xB" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1198233312425" />
    </node>
    <node concept="3Tm1VV" id="xC" role="1B3o_S">
      <uo k="s:originTrace" v="n:1198233312425" />
    </node>
  </node>
  <node concept="312cEu" id="zQ">
    <property role="TrG5h" value="check_DataTypeDeclaration_Ids_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:7791109065627029274" />
    <node concept="3clFbW" id="zR" role="jymVt">
      <uo k="s:originTrace" v="n:7791109065627029274" />
      <node concept="3clFbS" id="zZ" role="3clF47">
        <uo k="s:originTrace" v="n:7791109065627029274" />
      </node>
      <node concept="3Tm1VV" id="$0" role="1B3o_S">
        <uo k="s:originTrace" v="n:7791109065627029274" />
      </node>
      <node concept="3cqZAl" id="$1" role="3clF45">
        <uo k="s:originTrace" v="n:7791109065627029274" />
      </node>
    </node>
    <node concept="3clFb_" id="zS" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:7791109065627029274" />
      <node concept="3cqZAl" id="$2" role="3clF45">
        <uo k="s:originTrace" v="n:7791109065627029274" />
      </node>
      <node concept="37vLTG" id="$3" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="dtd" />
        <uo k="s:originTrace" v="n:7791109065627029274" />
        <node concept="3Tqbb2" id="$8" role="1tU5fm">
          <uo k="s:originTrace" v="n:7791109065627029274" />
        </node>
      </node>
      <node concept="37vLTG" id="$4" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:7791109065627029274" />
        <node concept="3uibUv" id="$9" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:7791109065627029274" />
        </node>
      </node>
      <node concept="37vLTG" id="$5" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:7791109065627029274" />
        <node concept="3uibUv" id="$a" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:7791109065627029274" />
        </node>
      </node>
      <node concept="3clFbS" id="$6" role="3clF47">
        <uo k="s:originTrace" v="n:7791109065627029275" />
        <node concept="3clFbJ" id="$b" role="3cqZAp">
          <uo k="s:originTrace" v="n:7791109065627029276" />
          <node concept="3clFbS" id="$g" role="3clFbx">
            <uo k="s:originTrace" v="n:7791109065627029277" />
            <node concept="3cpWs6" id="$i" role="3cqZAp">
              <uo k="s:originTrace" v="n:7791109065627029278" />
            </node>
          </node>
          <node concept="3fqX7Q" id="$h" role="3clFbw">
            <uo k="s:originTrace" v="n:7791109065627029279" />
            <node concept="2OqwBi" id="$j" role="3fr31v">
              <uo k="s:originTrace" v="n:7791109065627029280" />
              <node concept="2OqwBi" id="$k" role="2Oq$k0">
                <uo k="s:originTrace" v="n:7791109065627029281" />
                <node concept="37vLTw" id="$m" role="2Oq$k0">
                  <ref role="3cqZAo" node="$3" resolve="dtd" />
                  <uo k="s:originTrace" v="n:7791109065627029282" />
                </node>
                <node concept="I4A8Y" id="$n" role="2OqNvi">
                  <uo k="s:originTrace" v="n:7791109065627029283" />
                </node>
              </node>
              <node concept="3zA4fs" id="$l" role="2OqNvi">
                <ref role="3zA4av" to="tpcc:2LiUEk8oQ$g" resolve="structure" />
                <uo k="s:originTrace" v="n:7791109065627029284" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="$c" role="3cqZAp">
          <uo k="s:originTrace" v="n:7791109065627029294" />
        </node>
        <node concept="3clFbJ" id="$d" role="3cqZAp">
          <uo k="s:originTrace" v="n:7111385156653880177" />
          <node concept="3clFbS" id="$o" role="3clFbx">
            <uo k="s:originTrace" v="n:7111385156653880179" />
            <node concept="3cpWs6" id="$q" role="3cqZAp">
              <uo k="s:originTrace" v="n:7111385156653884508" />
            </node>
          </node>
          <node concept="2OqwBi" id="$p" role="3clFbw">
            <uo k="s:originTrace" v="n:7111385156653883110" />
            <node concept="2OqwBi" id="$r" role="2Oq$k0">
              <uo k="s:originTrace" v="n:7111385156653881079" />
              <node concept="37vLTw" id="$t" role="2Oq$k0">
                <ref role="3cqZAo" node="$3" resolve="dtd" />
                <uo k="s:originTrace" v="n:7111385156653880259" />
              </node>
              <node concept="1mfA1w" id="$u" role="2OqNvi">
                <uo k="s:originTrace" v="n:7111385156653882566" />
              </node>
            </node>
            <node concept="1mIQ4w" id="$s" role="2OqNvi">
              <uo k="s:originTrace" v="n:7111385156653884138" />
              <node concept="chp4Y" id="$v" role="cj9EA">
                <ref role="cht4Q" to="tpce:1ob16QTis9A" resolve="EnumMigrationInfo" />
                <uo k="s:originTrace" v="n:7111385156653884257" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="$e" role="3cqZAp">
          <uo k="s:originTrace" v="n:7111385156653880107" />
        </node>
        <node concept="3clFbJ" id="$f" role="3cqZAp">
          <uo k="s:originTrace" v="n:7791109065627029295" />
          <node concept="2OqwBi" id="$w" role="3clFbw">
            <uo k="s:originTrace" v="n:7791109065627029296" />
            <node concept="2OqwBi" id="$z" role="2Oq$k0">
              <uo k="s:originTrace" v="n:7791109065627029297" />
              <node concept="37vLTw" id="$_" role="2Oq$k0">
                <ref role="3cqZAo" node="$3" resolve="dtd" />
                <uo k="s:originTrace" v="n:7791109065627029298" />
              </node>
              <node concept="3TrcHB" id="$A" role="2OqNvi">
                <ref role="3TsBF5" to="tpce:6Kv_6E714g3" resolve="datatypeId" />
                <uo k="s:originTrace" v="n:7791109065627035817" />
              </node>
            </node>
            <node concept="17RlXB" id="$$" role="2OqNvi">
              <uo k="s:originTrace" v="n:7791109065627029300" />
            </node>
          </node>
          <node concept="3clFbS" id="$x" role="3clFbx">
            <uo k="s:originTrace" v="n:7791109065627029301" />
            <node concept="9aQIb" id="$B" role="3cqZAp">
              <uo k="s:originTrace" v="n:7791109065627029302" />
              <node concept="3clFbS" id="$C" role="9aQI4">
                <node concept="3cpWs8" id="$E" role="3cqZAp">
                  <node concept="3cpWsn" id="$H" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="$I" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="$J" role="33vP2m">
                      <node concept="1pGfFk" id="$K" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="$F" role="3cqZAp">
                  <node concept="3cpWsn" id="$L" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="$M" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="$N" role="33vP2m">
                      <node concept="3VmV3z" id="$O" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="$Q" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="$P" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                        <node concept="37vLTw" id="$R" role="37wK5m">
                          <ref role="3cqZAo" node="$3" resolve="dtd" />
                          <uo k="s:originTrace" v="n:7791109065627029306" />
                        </node>
                        <node concept="3cpWs3" id="$S" role="37wK5m">
                          <uo k="s:originTrace" v="n:7791109065627029307" />
                          <node concept="Xl_RD" id="$X" role="3uHU7B">
                            <property role="Xl_RC" value="Absent member id.\n" />
                            <uo k="s:originTrace" v="n:7791109065627029308" />
                          </node>
                          <node concept="Xl_RD" id="$Y" role="3uHU7w">
                            <property role="Xl_RC" value="Please invoke the \&quot;Correct ID\&quot; intention on it" />
                            <uo k="s:originTrace" v="n:7791109065627029309" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="$T" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="$U" role="37wK5m">
                          <property role="Xl_RC" value="7791109065627029302" />
                        </node>
                        <node concept="10Nm6u" id="$V" role="37wK5m" />
                        <node concept="37vLTw" id="$W" role="37wK5m">
                          <ref role="3cqZAo" node="$H" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="$G" role="3cqZAp">
                  <node concept="3clFbS" id="$Z" role="9aQI4">
                    <node concept="3cpWs8" id="_0" role="3cqZAp">
                      <node concept="3cpWsn" id="_3" role="3cpWs9">
                        <property role="TrG5h" value="intentionProvider" />
                        <node concept="3uibUv" id="_4" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~BaseQuickFixProvider" resolve="BaseQuickFixProvider" />
                        </node>
                        <node concept="2ShNRf" id="_5" role="33vP2m">
                          <node concept="1pGfFk" id="_6" role="2ShVmc">
                            <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.&lt;init&gt;(java.lang.String,java.lang.String,boolean)" resolve="BaseQuickFixProvider" />
                            <node concept="Xl_RD" id="_7" role="37wK5m">
                              <property role="Xl_RC" value="jetbrains.mps.lang.structure.typesystem.CorrectDuplicateId_QuickFix" />
                            </node>
                            <node concept="Xl_RD" id="_8" role="37wK5m">
                              <property role="Xl_RC" value="7791109065627029303" />
                            </node>
                            <node concept="3clFbT" id="_9" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="_1" role="3cqZAp">
                      <node concept="2OqwBi" id="_a" role="3clFbG">
                        <node concept="37vLTw" id="_b" role="2Oq$k0">
                          <ref role="3cqZAo" node="_3" resolve="intentionProvider" />
                        </node>
                        <node concept="liA8E" id="_c" role="2OqNvi">
                          <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.putArgument(java.lang.String,java.lang.Object)" resolve="putArgument" />
                          <node concept="Xl_RD" id="_d" role="37wK5m">
                            <property role="Xl_RC" value="d" />
                          </node>
                          <node concept="37vLTw" id="_e" role="37wK5m">
                            <ref role="3cqZAo" node="$3" resolve="dtd" />
                            <uo k="s:originTrace" v="n:7791109065627029305" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="_2" role="3cqZAp">
                      <node concept="2OqwBi" id="_f" role="3clFbG">
                        <node concept="37vLTw" id="_g" role="2Oq$k0">
                          <ref role="3cqZAo" node="$L" resolve="_reporter_2309309498" />
                        </node>
                        <node concept="liA8E" id="_h" role="2OqNvi">
                          <ref role="37wK5l" to="2gg1:~IErrorReporter.addIntentionProvider(jetbrains.mps.errors.QuickFixProvider)" resolve="addIntentionProvider" />
                          <node concept="37vLTw" id="_i" role="37wK5m">
                            <ref role="3cqZAo" node="_3" resolve="intentionProvider" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="$D" role="lGtFl">
                <property role="6wLej" value="7791109065627029302" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="$y" role="3eNLev">
            <uo k="s:originTrace" v="n:7791109065627029310" />
            <node concept="3clFbS" id="_j" role="3eOfB_">
              <uo k="s:originTrace" v="n:7791109065627029311" />
              <node concept="9aQIb" id="_l" role="3cqZAp">
                <uo k="s:originTrace" v="n:7791109065627029312" />
                <node concept="3clFbS" id="_m" role="9aQI4">
                  <node concept="3cpWs8" id="_o" role="3cqZAp">
                    <node concept="3cpWsn" id="_r" role="3cpWs9">
                      <property role="TrG5h" value="errorTarget" />
                      <property role="3TUv4t" value="true" />
                      <node concept="3uibUv" id="_s" role="1tU5fm">
                        <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                      </node>
                      <node concept="2ShNRf" id="_t" role="33vP2m">
                        <node concept="1pGfFk" id="_u" role="2ShVmc">
                          <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="_p" role="3cqZAp">
                    <node concept="3cpWsn" id="_v" role="3cpWs9">
                      <property role="TrG5h" value="_reporter_2309309498" />
                      <node concept="3uibUv" id="_w" role="1tU5fm">
                        <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                      </node>
                      <node concept="2OqwBi" id="_x" role="33vP2m">
                        <node concept="3VmV3z" id="_y" role="2Oq$k0">
                          <property role="3VnrPo" value="typeCheckingContext" />
                          <node concept="3uibUv" id="_$" role="3Vn4Tt">
                            <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                          </node>
                        </node>
                        <node concept="liA8E" id="_z" role="2OqNvi">
                          <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                          <node concept="37vLTw" id="__" role="37wK5m">
                            <ref role="3cqZAo" node="$3" resolve="dtd" />
                            <uo k="s:originTrace" v="n:7791109065627029316" />
                          </node>
                          <node concept="3cpWs3" id="_A" role="37wK5m">
                            <uo k="s:originTrace" v="n:7791109065627029317" />
                            <node concept="Xl_RD" id="_F" role="3uHU7B">
                              <property role="Xl_RC" value="Duplicate member id.\n" />
                              <uo k="s:originTrace" v="n:7791109065627029318" />
                            </node>
                            <node concept="Xl_RD" id="_G" role="3uHU7w">
                              <property role="Xl_RC" value="Please invoke the \&quot;Correct ID\&quot; intention on it" />
                              <uo k="s:originTrace" v="n:7791109065627029319" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="_B" role="37wK5m">
                            <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                          </node>
                          <node concept="Xl_RD" id="_C" role="37wK5m">
                            <property role="Xl_RC" value="7791109065627029312" />
                          </node>
                          <node concept="10Nm6u" id="_D" role="37wK5m" />
                          <node concept="37vLTw" id="_E" role="37wK5m">
                            <ref role="3cqZAo" node="_r" resolve="errorTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="_q" role="3cqZAp">
                    <node concept="3clFbS" id="_H" role="9aQI4">
                      <node concept="3cpWs8" id="_I" role="3cqZAp">
                        <node concept="3cpWsn" id="_L" role="3cpWs9">
                          <property role="TrG5h" value="intentionProvider" />
                          <node concept="3uibUv" id="_M" role="1tU5fm">
                            <ref role="3uigEE" to="2gg1:~BaseQuickFixProvider" resolve="BaseQuickFixProvider" />
                          </node>
                          <node concept="2ShNRf" id="_N" role="33vP2m">
                            <node concept="1pGfFk" id="_O" role="2ShVmc">
                              <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.&lt;init&gt;(java.lang.String,java.lang.String,boolean)" resolve="BaseQuickFixProvider" />
                              <node concept="Xl_RD" id="_P" role="37wK5m">
                                <property role="Xl_RC" value="jetbrains.mps.lang.structure.typesystem.CorrectDuplicateId_QuickFix" />
                              </node>
                              <node concept="Xl_RD" id="_Q" role="37wK5m">
                                <property role="Xl_RC" value="7791109065627029313" />
                              </node>
                              <node concept="3clFbT" id="_R" role="37wK5m" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="_J" role="3cqZAp">
                        <node concept="2OqwBi" id="_S" role="3clFbG">
                          <node concept="37vLTw" id="_T" role="2Oq$k0">
                            <ref role="3cqZAo" node="_L" resolve="intentionProvider" />
                          </node>
                          <node concept="liA8E" id="_U" role="2OqNvi">
                            <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.putArgument(java.lang.String,java.lang.Object)" resolve="putArgument" />
                            <node concept="Xl_RD" id="_V" role="37wK5m">
                              <property role="Xl_RC" value="d" />
                            </node>
                            <node concept="37vLTw" id="_W" role="37wK5m">
                              <ref role="3cqZAo" node="$3" resolve="dtd" />
                              <uo k="s:originTrace" v="n:7791109065627029315" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="_K" role="3cqZAp">
                        <node concept="2OqwBi" id="_X" role="3clFbG">
                          <node concept="37vLTw" id="_Y" role="2Oq$k0">
                            <ref role="3cqZAo" node="_v" resolve="_reporter_2309309498" />
                          </node>
                          <node concept="liA8E" id="_Z" role="2OqNvi">
                            <ref role="37wK5l" to="2gg1:~IErrorReporter.addIntentionProvider(jetbrains.mps.errors.QuickFixProvider)" resolve="addIntentionProvider" />
                            <node concept="37vLTw" id="A0" role="37wK5m">
                              <ref role="3cqZAo" node="_L" resolve="intentionProvider" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="6wLe0" id="_n" role="lGtFl">
                  <property role="6wLej" value="7791109065627029312" />
                  <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="_k" role="3eO9$A">
              <uo k="s:originTrace" v="n:7791109065627029320" />
              <node concept="2OqwBi" id="A1" role="2Oq$k0">
                <uo k="s:originTrace" v="n:7791109065627053155" />
                <node concept="2OqwBi" id="A3" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:7791109065627047562" />
                  <node concept="37vLTw" id="A5" role="2Oq$k0">
                    <ref role="3cqZAo" node="$3" resolve="dtd" />
                    <uo k="s:originTrace" v="n:7791109065627046409" />
                  </node>
                  <node concept="I4A8Y" id="A6" role="2OqNvi">
                    <uo k="s:originTrace" v="n:7791109065627050100" />
                  </node>
                </node>
                <node concept="2RRcyG" id="A4" role="2OqNvi">
                  <uo k="s:originTrace" v="n:7791109065627055962" />
                  <node concept="chp4Y" id="A7" role="3MHsoP">
                    <ref role="cht4Q" to="tpce:2TR3acGo7Lv" resolve="EnumerationDeclaration" />
                    <uo k="s:originTrace" v="n:6750920497483249733" />
                  </node>
                </node>
              </node>
              <node concept="2HwmR7" id="A2" role="2OqNvi">
                <uo k="s:originTrace" v="n:7791109065627029324" />
                <node concept="1bVj0M" id="A8" role="23t8la">
                  <uo k="s:originTrace" v="n:7791109065627029325" />
                  <node concept="3clFbS" id="A9" role="1bW5cS">
                    <uo k="s:originTrace" v="n:7791109065627029326" />
                    <node concept="3clFbF" id="Ab" role="3cqZAp">
                      <uo k="s:originTrace" v="n:7791109065627029327" />
                      <node concept="1Wc70l" id="Ac" role="3clFbG">
                        <uo k="s:originTrace" v="n:7791109065627029328" />
                        <node concept="3y3z36" id="Ad" role="3uHU7B">
                          <uo k="s:originTrace" v="n:7791109065627029329" />
                          <node concept="37vLTw" id="Af" role="3uHU7w">
                            <ref role="3cqZAo" node="$3" resolve="dtd" />
                            <uo k="s:originTrace" v="n:7791109065627029330" />
                          </node>
                          <node concept="37vLTw" id="Ag" role="3uHU7B">
                            <ref role="3cqZAo" node="Aa" resolve="it" />
                            <uo k="s:originTrace" v="n:7791109065627029331" />
                          </node>
                        </node>
                        <node concept="17R0WA" id="Ae" role="3uHU7w">
                          <uo k="s:originTrace" v="n:7791109065627029332" />
                          <node concept="2OqwBi" id="Ah" role="3uHU7w">
                            <uo k="s:originTrace" v="n:7791109065627029333" />
                            <node concept="37vLTw" id="Aj" role="2Oq$k0">
                              <ref role="3cqZAo" node="$3" resolve="dtd" />
                              <uo k="s:originTrace" v="n:7791109065627029334" />
                            </node>
                            <node concept="3TrcHB" id="Ak" role="2OqNvi">
                              <ref role="3TsBF5" to="tpce:6Kv_6E714g3" resolve="datatypeId" />
                              <uo k="s:originTrace" v="n:7791109065627076583" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="Ai" role="3uHU7B">
                            <uo k="s:originTrace" v="n:7791109065627029336" />
                            <node concept="37vLTw" id="Al" role="2Oq$k0">
                              <ref role="3cqZAo" node="Aa" resolve="it" />
                              <uo k="s:originTrace" v="n:7791109065627029337" />
                            </node>
                            <node concept="3TrcHB" id="Am" role="2OqNvi">
                              <ref role="3TsBF5" to="tpce:6Kv_6E714g3" resolve="datatypeId" />
                              <uo k="s:originTrace" v="n:7791109065627074629" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="Aa" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <uo k="s:originTrace" v="n:6847626768367732811" />
                    <node concept="2jxLKc" id="An" role="1tU5fm">
                      <uo k="s:originTrace" v="n:6847626768367732812" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="$7" role="1B3o_S">
        <uo k="s:originTrace" v="n:7791109065627029274" />
      </node>
    </node>
    <node concept="3clFb_" id="zT" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:7791109065627029274" />
      <node concept="3bZ5Sz" id="Ao" role="3clF45">
        <uo k="s:originTrace" v="n:7791109065627029274" />
      </node>
      <node concept="3clFbS" id="Ap" role="3clF47">
        <uo k="s:originTrace" v="n:7791109065627029274" />
        <node concept="3cpWs6" id="Ar" role="3cqZAp">
          <uo k="s:originTrace" v="n:7791109065627029274" />
          <node concept="35c_gC" id="As" role="3cqZAk">
            <ref role="35c_gD" to="tpce:fKAxPRU" resolve="DataTypeDeclaration" />
            <uo k="s:originTrace" v="n:7791109065627029274" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="Aq" role="1B3o_S">
        <uo k="s:originTrace" v="n:7791109065627029274" />
      </node>
    </node>
    <node concept="3clFb_" id="zU" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:7791109065627029274" />
      <node concept="37vLTG" id="At" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:7791109065627029274" />
        <node concept="3Tqbb2" id="Ax" role="1tU5fm">
          <uo k="s:originTrace" v="n:7791109065627029274" />
        </node>
      </node>
      <node concept="3clFbS" id="Au" role="3clF47">
        <uo k="s:originTrace" v="n:7791109065627029274" />
        <node concept="9aQIb" id="Ay" role="3cqZAp">
          <uo k="s:originTrace" v="n:7791109065627029274" />
          <node concept="3clFbS" id="Az" role="9aQI4">
            <uo k="s:originTrace" v="n:7791109065627029274" />
            <node concept="3cpWs6" id="A$" role="3cqZAp">
              <uo k="s:originTrace" v="n:7791109065627029274" />
              <node concept="2ShNRf" id="A_" role="3cqZAk">
                <uo k="s:originTrace" v="n:7791109065627029274" />
                <node concept="1pGfFk" id="AA" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:7791109065627029274" />
                  <node concept="2OqwBi" id="AB" role="37wK5m">
                    <uo k="s:originTrace" v="n:7791109065627029274" />
                    <node concept="2OqwBi" id="AD" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:7791109065627029274" />
                      <node concept="liA8E" id="AF" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:7791109065627029274" />
                      </node>
                      <node concept="2JrnkZ" id="AG" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:7791109065627029274" />
                        <node concept="37vLTw" id="AH" role="2JrQYb">
                          <ref role="3cqZAo" node="At" resolve="argument" />
                          <uo k="s:originTrace" v="n:7791109065627029274" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="AE" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:7791109065627029274" />
                      <node concept="1rXfSq" id="AI" role="37wK5m">
                        <ref role="37wK5l" node="zT" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:7791109065627029274" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="AC" role="37wK5m">
                    <uo k="s:originTrace" v="n:7791109065627029274" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="Av" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:7791109065627029274" />
      </node>
      <node concept="3Tm1VV" id="Aw" role="1B3o_S">
        <uo k="s:originTrace" v="n:7791109065627029274" />
      </node>
    </node>
    <node concept="3clFb_" id="zV" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:7791109065627029274" />
      <node concept="3clFbS" id="AJ" role="3clF47">
        <uo k="s:originTrace" v="n:7791109065627029274" />
        <node concept="3cpWs6" id="AM" role="3cqZAp">
          <uo k="s:originTrace" v="n:7791109065627029274" />
          <node concept="3clFbT" id="AN" role="3cqZAk">
            <uo k="s:originTrace" v="n:7791109065627029274" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="AK" role="3clF45">
        <uo k="s:originTrace" v="n:7791109065627029274" />
      </node>
      <node concept="3Tm1VV" id="AL" role="1B3o_S">
        <uo k="s:originTrace" v="n:7791109065627029274" />
      </node>
    </node>
    <node concept="3uibUv" id="zW" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:7791109065627029274" />
    </node>
    <node concept="3uibUv" id="zX" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:7791109065627029274" />
    </node>
    <node concept="3Tm1VV" id="zY" role="1B3o_S">
      <uo k="s:originTrace" v="n:7791109065627029274" />
    </node>
  </node>
  <node concept="312cEu" id="AO">
    <property role="TrG5h" value="check_DuplicateDataTypeDeclaration_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:1005490780641324566" />
    <node concept="3clFbW" id="AP" role="jymVt">
      <uo k="s:originTrace" v="n:1005490780641324566" />
      <node concept="3clFbS" id="AX" role="3clF47">
        <uo k="s:originTrace" v="n:1005490780641324566" />
      </node>
      <node concept="3Tm1VV" id="AY" role="1B3o_S">
        <uo k="s:originTrace" v="n:1005490780641324566" />
      </node>
      <node concept="3cqZAl" id="AZ" role="3clF45">
        <uo k="s:originTrace" v="n:1005490780641324566" />
      </node>
    </node>
    <node concept="3clFb_" id="AQ" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1005490780641324566" />
      <node concept="3cqZAl" id="B0" role="3clF45">
        <uo k="s:originTrace" v="n:1005490780641324566" />
      </node>
      <node concept="37vLTG" id="B1" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="dataTypeDeclaration" />
        <uo k="s:originTrace" v="n:1005490780641324566" />
        <node concept="3Tqbb2" id="B6" role="1tU5fm">
          <uo k="s:originTrace" v="n:1005490780641324566" />
        </node>
      </node>
      <node concept="37vLTG" id="B2" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1005490780641324566" />
        <node concept="3uibUv" id="B7" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1005490780641324566" />
        </node>
      </node>
      <node concept="37vLTG" id="B3" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1005490780641324566" />
        <node concept="3uibUv" id="B8" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1005490780641324566" />
        </node>
      </node>
      <node concept="3clFbS" id="B4" role="3clF47">
        <uo k="s:originTrace" v="n:1005490780641325223" />
        <node concept="3cpWs8" id="B9" role="3cqZAp">
          <uo k="s:originTrace" v="n:1005490780641410832" />
          <node concept="3cpWsn" id="Be" role="3cpWs9">
            <property role="TrG5h" value="name" />
            <uo k="s:originTrace" v="n:1005490780641410833" />
            <node concept="17QB3L" id="Bf" role="1tU5fm">
              <uo k="s:originTrace" v="n:1005490780641410829" />
            </node>
            <node concept="2OqwBi" id="Bg" role="33vP2m">
              <uo k="s:originTrace" v="n:1005490780641410834" />
              <node concept="37vLTw" id="Bh" role="2Oq$k0">
                <ref role="3cqZAo" node="B1" resolve="dataTypeDeclaration" />
                <uo k="s:originTrace" v="n:1005490780641410835" />
              </node>
              <node concept="3TrcHB" id="Bi" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                <uo k="s:originTrace" v="n:1005490780641410836" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="Ba" role="3cqZAp">
          <uo k="s:originTrace" v="n:1005490780641410949" />
          <node concept="3clFbS" id="Bj" role="3clFbx">
            <uo k="s:originTrace" v="n:1005490780641410952" />
            <node concept="3cpWs6" id="Bl" role="3cqZAp">
              <uo k="s:originTrace" v="n:1005490780641415877" />
            </node>
          </node>
          <node concept="2OqwBi" id="Bk" role="3clFbw">
            <uo k="s:originTrace" v="n:1005490780641412660" />
            <node concept="37vLTw" id="Bm" role="2Oq$k0">
              <ref role="3cqZAo" node="Be" resolve="name" />
              <uo k="s:originTrace" v="n:1005490780641411933" />
            </node>
            <node concept="17RlXB" id="Bn" role="2OqNvi">
              <uo k="s:originTrace" v="n:1005490780641415852" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="Bb" role="3cqZAp">
          <uo k="s:originTrace" v="n:1005490780641701501" />
          <node concept="3clFbS" id="Bo" role="3clFbx">
            <uo k="s:originTrace" v="n:1005490780641701504" />
            <node concept="3cpWs6" id="Bq" role="3cqZAp">
              <uo k="s:originTrace" v="n:1005490780641800519" />
            </node>
          </node>
          <node concept="3y3z36" id="Bp" role="3clFbw">
            <uo k="s:originTrace" v="n:1005490780641800130" />
            <node concept="2OqwBi" id="Br" role="3uHU7B">
              <uo k="s:originTrace" v="n:1005490780641701717" />
              <node concept="37vLTw" id="Bt" role="2Oq$k0">
                <ref role="3cqZAo" node="B1" resolve="dataTypeDeclaration" />
                <uo k="s:originTrace" v="n:1005490780641701605" />
              </node>
              <node concept="2Rxl7S" id="Bu" role="2OqNvi">
                <uo k="s:originTrace" v="n:1005490780641724825" />
              </node>
            </node>
            <node concept="37vLTw" id="Bs" role="3uHU7w">
              <ref role="3cqZAo" node="B1" resolve="dataTypeDeclaration" />
              <uo k="s:originTrace" v="n:1005490780641800088" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="Bc" role="3cqZAp">
          <uo k="s:originTrace" v="n:1005490780641803917" />
        </node>
        <node concept="3clFbJ" id="Bd" role="3cqZAp">
          <uo k="s:originTrace" v="n:1005490780641445139" />
          <node concept="3clFbS" id="Bv" role="3clFbx">
            <uo k="s:originTrace" v="n:1005490780641445142" />
            <node concept="9aQIb" id="Bx" role="3cqZAp">
              <uo k="s:originTrace" v="n:1005490780661498260" />
              <node concept="3clFbS" id="By" role="9aQI4">
                <node concept="3cpWs8" id="B$" role="3cqZAp">
                  <node concept="3cpWsn" id="BA" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="BB" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="BC" role="33vP2m">
                      <node concept="1pGfFk" id="BD" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="B_" role="3cqZAp">
                  <node concept="3cpWsn" id="BE" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="BF" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="BG" role="33vP2m">
                      <node concept="3VmV3z" id="BH" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="BJ" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="BI" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                        <node concept="37vLTw" id="BK" role="37wK5m">
                          <ref role="3cqZAo" node="B1" resolve="dataTypeDeclaration" />
                          <uo k="s:originTrace" v="n:1005490780661498267" />
                        </node>
                        <node concept="3cpWs3" id="BL" role="37wK5m">
                          <uo k="s:originTrace" v="n:1005490780661498262" />
                          <node concept="Xl_RD" id="BQ" role="3uHU7w">
                            <property role="Xl_RC" value=" in model" />
                            <uo k="s:originTrace" v="n:1005490780661498263" />
                          </node>
                          <node concept="3cpWs3" id="BR" role="3uHU7B">
                            <uo k="s:originTrace" v="n:1005490780661498264" />
                            <node concept="Xl_RD" id="BS" role="3uHU7B">
                              <property role="Xl_RC" value="Duplicated name of DataTypeDeclaration " />
                              <uo k="s:originTrace" v="n:1005490780661498265" />
                            </node>
                            <node concept="37vLTw" id="BT" role="3uHU7w">
                              <ref role="3cqZAo" node="Be" resolve="name" />
                              <uo k="s:originTrace" v="n:1005490780661498266" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="BM" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="BN" role="37wK5m">
                          <property role="Xl_RC" value="1005490780661498260" />
                        </node>
                        <node concept="10Nm6u" id="BO" role="37wK5m" />
                        <node concept="37vLTw" id="BP" role="37wK5m">
                          <ref role="3cqZAo" node="BA" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="Bz" role="lGtFl">
                <property role="6wLej" value="1005490780661498260" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="Bw" role="3clFbw">
            <uo k="s:originTrace" v="n:1005490780641424366" />
            <node concept="2OqwBi" id="BU" role="2Oq$k0">
              <uo k="s:originTrace" v="n:1005490780641418373" />
              <node concept="2OqwBi" id="BW" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1005490780641417359" />
                <node concept="37vLTw" id="BY" role="2Oq$k0">
                  <ref role="3cqZAo" node="B1" resolve="dataTypeDeclaration" />
                  <uo k="s:originTrace" v="n:1005490780641417261" />
                </node>
                <node concept="I4A8Y" id="BZ" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1005490780641417834" />
                </node>
              </node>
              <node concept="2RRcyG" id="BX" role="2OqNvi">
                <uo k="s:originTrace" v="n:1005490780641420480" />
                <node concept="chp4Y" id="C0" role="3MHsoP">
                  <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                  <uo k="s:originTrace" v="n:6750920497483249732" />
                </node>
              </node>
            </node>
            <node concept="2HwmR7" id="BV" role="2OqNvi">
              <uo k="s:originTrace" v="n:1005490780641430028" />
              <node concept="1bVj0M" id="C1" role="23t8la">
                <uo k="s:originTrace" v="n:1005490780641430030" />
                <node concept="3clFbS" id="C2" role="1bW5cS">
                  <uo k="s:originTrace" v="n:1005490780641430031" />
                  <node concept="3clFbF" id="C4" role="3cqZAp">
                    <uo k="s:originTrace" v="n:1005490780641430406" />
                    <node concept="1Wc70l" id="C5" role="3clFbG">
                      <uo k="s:originTrace" v="n:1005490780641433028" />
                      <node concept="17QLQc" id="C6" role="3uHU7B">
                        <uo k="s:originTrace" v="n:1005490780641431091" />
                        <node concept="37vLTw" id="C8" role="3uHU7B">
                          <ref role="3cqZAo" node="C3" resolve="it" />
                          <uo k="s:originTrace" v="n:1005490780641430405" />
                        </node>
                        <node concept="37vLTw" id="C9" role="3uHU7w">
                          <ref role="3cqZAo" node="B1" resolve="dataTypeDeclaration" />
                          <uo k="s:originTrace" v="n:1005490780641431267" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="C7" role="3uHU7w">
                        <uo k="s:originTrace" v="n:1005490780641439732" />
                        <node concept="37vLTw" id="Ca" role="2Oq$k0">
                          <ref role="3cqZAo" node="Be" resolve="name" />
                          <uo k="s:originTrace" v="n:1005490780641438757" />
                        </node>
                        <node concept="liA8E" id="Cb" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                          <uo k="s:originTrace" v="n:1005490780641443289" />
                          <node concept="2OqwBi" id="Cc" role="37wK5m">
                            <uo k="s:originTrace" v="n:1005490780641433604" />
                            <node concept="37vLTw" id="Cd" role="2Oq$k0">
                              <ref role="3cqZAo" node="C3" resolve="it" />
                              <uo k="s:originTrace" v="n:1005490780641433300" />
                            </node>
                            <node concept="3TrcHB" id="Ce" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              <uo k="s:originTrace" v="n:1005490780641434301" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="C3" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <uo k="s:originTrace" v="n:6847626768367732807" />
                  <node concept="2jxLKc" id="Cf" role="1tU5fm">
                    <uo k="s:originTrace" v="n:6847626768367732808" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="B5" role="1B3o_S">
        <uo k="s:originTrace" v="n:1005490780641324566" />
      </node>
    </node>
    <node concept="3clFb_" id="AR" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1005490780641324566" />
      <node concept="3bZ5Sz" id="Cg" role="3clF45">
        <uo k="s:originTrace" v="n:1005490780641324566" />
      </node>
      <node concept="3clFbS" id="Ch" role="3clF47">
        <uo k="s:originTrace" v="n:1005490780641324566" />
        <node concept="3cpWs6" id="Cj" role="3cqZAp">
          <uo k="s:originTrace" v="n:1005490780641324566" />
          <node concept="35c_gC" id="Ck" role="3cqZAk">
            <ref role="35c_gD" to="tpce:fKAxPRU" resolve="DataTypeDeclaration" />
            <uo k="s:originTrace" v="n:1005490780641324566" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="Ci" role="1B3o_S">
        <uo k="s:originTrace" v="n:1005490780641324566" />
      </node>
    </node>
    <node concept="3clFb_" id="AS" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1005490780641324566" />
      <node concept="37vLTG" id="Cl" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1005490780641324566" />
        <node concept="3Tqbb2" id="Cp" role="1tU5fm">
          <uo k="s:originTrace" v="n:1005490780641324566" />
        </node>
      </node>
      <node concept="3clFbS" id="Cm" role="3clF47">
        <uo k="s:originTrace" v="n:1005490780641324566" />
        <node concept="9aQIb" id="Cq" role="3cqZAp">
          <uo k="s:originTrace" v="n:1005490780641324566" />
          <node concept="3clFbS" id="Cr" role="9aQI4">
            <uo k="s:originTrace" v="n:1005490780641324566" />
            <node concept="3cpWs6" id="Cs" role="3cqZAp">
              <uo k="s:originTrace" v="n:1005490780641324566" />
              <node concept="2ShNRf" id="Ct" role="3cqZAk">
                <uo k="s:originTrace" v="n:1005490780641324566" />
                <node concept="1pGfFk" id="Cu" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1005490780641324566" />
                  <node concept="2OqwBi" id="Cv" role="37wK5m">
                    <uo k="s:originTrace" v="n:1005490780641324566" />
                    <node concept="2OqwBi" id="Cx" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1005490780641324566" />
                      <node concept="liA8E" id="Cz" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1005490780641324566" />
                      </node>
                      <node concept="2JrnkZ" id="C$" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1005490780641324566" />
                        <node concept="37vLTw" id="C_" role="2JrQYb">
                          <ref role="3cqZAo" node="Cl" resolve="argument" />
                          <uo k="s:originTrace" v="n:1005490780641324566" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="Cy" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1005490780641324566" />
                      <node concept="1rXfSq" id="CA" role="37wK5m">
                        <ref role="37wK5l" node="AR" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1005490780641324566" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="Cw" role="37wK5m">
                    <uo k="s:originTrace" v="n:1005490780641324566" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="Cn" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1005490780641324566" />
      </node>
      <node concept="3Tm1VV" id="Co" role="1B3o_S">
        <uo k="s:originTrace" v="n:1005490780641324566" />
      </node>
    </node>
    <node concept="3clFb_" id="AT" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1005490780641324566" />
      <node concept="3clFbS" id="CB" role="3clF47">
        <uo k="s:originTrace" v="n:1005490780641324566" />
        <node concept="3cpWs6" id="CE" role="3cqZAp">
          <uo k="s:originTrace" v="n:1005490780641324566" />
          <node concept="3clFbT" id="CF" role="3cqZAk">
            <uo k="s:originTrace" v="n:1005490780641324566" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="CC" role="3clF45">
        <uo k="s:originTrace" v="n:1005490780641324566" />
      </node>
      <node concept="3Tm1VV" id="CD" role="1B3o_S">
        <uo k="s:originTrace" v="n:1005490780641324566" />
      </node>
    </node>
    <node concept="3uibUv" id="AU" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1005490780641324566" />
    </node>
    <node concept="3uibUv" id="AV" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1005490780641324566" />
    </node>
    <node concept="3Tm1VV" id="AW" role="1B3o_S">
      <uo k="s:originTrace" v="n:1005490780641324566" />
    </node>
  </node>
  <node concept="312cEu" id="CG">
    <property role="TrG5h" value="check_DuplicatedConceptName_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:7469468981580405274" />
    <node concept="3clFbW" id="CH" role="jymVt">
      <uo k="s:originTrace" v="n:7469468981580405274" />
      <node concept="3clFbS" id="CP" role="3clF47">
        <uo k="s:originTrace" v="n:7469468981580405274" />
      </node>
      <node concept="3Tm1VV" id="CQ" role="1B3o_S">
        <uo k="s:originTrace" v="n:7469468981580405274" />
      </node>
      <node concept="3cqZAl" id="CR" role="3clF45">
        <uo k="s:originTrace" v="n:7469468981580405274" />
      </node>
    </node>
    <node concept="3clFb_" id="CI" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:7469468981580405274" />
      <node concept="3cqZAl" id="CS" role="3clF45">
        <uo k="s:originTrace" v="n:7469468981580405274" />
      </node>
      <node concept="37vLTG" id="CT" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="conceptDeclaration" />
        <uo k="s:originTrace" v="n:7469468981580405274" />
        <node concept="3Tqbb2" id="CY" role="1tU5fm">
          <uo k="s:originTrace" v="n:7469468981580405274" />
        </node>
      </node>
      <node concept="37vLTG" id="CU" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:7469468981580405274" />
        <node concept="3uibUv" id="CZ" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:7469468981580405274" />
        </node>
      </node>
      <node concept="37vLTG" id="CV" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:7469468981580405274" />
        <node concept="3uibUv" id="D0" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:7469468981580405274" />
        </node>
      </node>
      <node concept="3clFbS" id="CW" role="3clF47">
        <uo k="s:originTrace" v="n:7469468981580405275" />
        <node concept="3cpWs8" id="D1" role="3cqZAp">
          <uo k="s:originTrace" v="n:7469468981580452397" />
          <node concept="3cpWsn" id="D4" role="3cpWs9">
            <property role="TrG5h" value="name" />
            <uo k="s:originTrace" v="n:7469468981580452398" />
            <node concept="17QB3L" id="D5" role="1tU5fm">
              <uo k="s:originTrace" v="n:7469468981580452399" />
            </node>
            <node concept="2OqwBi" id="D6" role="33vP2m">
              <uo k="s:originTrace" v="n:7469468981580452402" />
              <node concept="37vLTw" id="D7" role="2Oq$k0">
                <ref role="3cqZAo" node="CT" resolve="conceptDeclaration" />
                <uo k="s:originTrace" v="n:7469468981580452401" />
              </node>
              <node concept="3TrcHB" id="D8" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                <uo k="s:originTrace" v="n:7469468981580452406" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="D2" role="3cqZAp">
          <uo k="s:originTrace" v="n:7469468981580452408" />
          <node concept="3clFbS" id="D9" role="3clFbx">
            <uo k="s:originTrace" v="n:7469468981580452409" />
            <node concept="3cpWs6" id="Db" role="3cqZAp">
              <uo k="s:originTrace" v="n:7469468981580452418" />
            </node>
          </node>
          <node concept="2OqwBi" id="Da" role="3clFbw">
            <uo k="s:originTrace" v="n:7469468981580452413" />
            <node concept="37vLTw" id="Dc" role="2Oq$k0">
              <ref role="3cqZAo" node="D4" resolve="name" />
              <uo k="s:originTrace" v="n:4265636116363089328" />
            </node>
            <node concept="17RlXB" id="Dd" role="2OqNvi">
              <uo k="s:originTrace" v="n:7469468981580452417" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="D3" role="3cqZAp">
          <uo k="s:originTrace" v="n:7469468981580406090" />
          <node concept="3clFbS" id="De" role="3clFbx">
            <uo k="s:originTrace" v="n:7469468981580406091" />
            <node concept="9aQIb" id="Dg" role="3cqZAp">
              <uo k="s:originTrace" v="n:7469468981580406086" />
              <node concept="3clFbS" id="Dh" role="9aQI4">
                <node concept="3cpWs8" id="Dj" role="3cqZAp">
                  <node concept="3cpWsn" id="Dl" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="Dm" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="Dn" role="33vP2m">
                      <uo k="s:originTrace" v="n:7469468981580406111" />
                      <node concept="1pGfFk" id="Do" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~PropertyMessageTarget.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty)" resolve="PropertyMessageTarget" />
                        <uo k="s:originTrace" v="n:7469468981580406111" />
                        <node concept="355D3s" id="Dp" role="37wK5m">
                          <ref role="355D3t" to="tpck:h0TrEE$" resolve="INamedConcept" />
                          <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                          <uo k="s:originTrace" v="n:7469468981580406111" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="Dk" role="3cqZAp">
                  <node concept="3cpWsn" id="Dq" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="Dr" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="Ds" role="33vP2m">
                      <node concept="3VmV3z" id="Dt" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="Dv" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="Du" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                        <node concept="37vLTw" id="Dw" role="37wK5m">
                          <ref role="3cqZAo" node="CT" resolve="conceptDeclaration" />
                          <uo k="s:originTrace" v="n:7469468981580406110" />
                        </node>
                        <node concept="3cpWs3" id="Dx" role="37wK5m">
                          <uo k="s:originTrace" v="n:7469468981580406112" />
                          <node concept="Xl_RD" id="DA" role="3uHU7w">
                            <property role="Xl_RC" value="' in model" />
                            <uo k="s:originTrace" v="n:7469468981580406115" />
                          </node>
                          <node concept="3cpWs3" id="DB" role="3uHU7B">
                            <uo k="s:originTrace" v="n:7469468981580406101" />
                            <node concept="Xl_RD" id="DC" role="3uHU7B">
                              <property role="Xl_RC" value="Duplicated name of concept '" />
                              <uo k="s:originTrace" v="n:7469468981580406100" />
                            </node>
                            <node concept="37vLTw" id="DD" role="3uHU7w">
                              <ref role="3cqZAo" node="D4" resolve="name" />
                              <uo k="s:originTrace" v="n:4265636116363088024" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="Dy" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="Dz" role="37wK5m">
                          <property role="Xl_RC" value="7469468981580406086" />
                        </node>
                        <node concept="10Nm6u" id="D$" role="37wK5m" />
                        <node concept="37vLTw" id="D_" role="37wK5m">
                          <ref role="3cqZAo" node="Dl" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="Di" role="lGtFl">
                <property role="6wLej" value="7469468981580406086" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="Df" role="3clFbw">
            <uo k="s:originTrace" v="n:7469468981580452440" />
            <node concept="2OqwBi" id="DE" role="2Oq$k0">
              <uo k="s:originTrace" v="n:7469468981580452441" />
              <node concept="2OqwBi" id="DG" role="2Oq$k0">
                <uo k="s:originTrace" v="n:7469468981580452442" />
                <node concept="37vLTw" id="DI" role="2Oq$k0">
                  <ref role="3cqZAo" node="CT" resolve="conceptDeclaration" />
                  <uo k="s:originTrace" v="n:7469468981580452443" />
                </node>
                <node concept="I4A8Y" id="DJ" role="2OqNvi">
                  <uo k="s:originTrace" v="n:7469468981580452444" />
                </node>
              </node>
              <node concept="2RRcyG" id="DH" role="2OqNvi">
                <uo k="s:originTrace" v="n:7469468981580452445" />
                <node concept="chp4Y" id="DK" role="3MHsoP">
                  <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                  <uo k="s:originTrace" v="n:6750920497483249731" />
                </node>
              </node>
            </node>
            <node concept="2HwmR7" id="DF" role="2OqNvi">
              <uo k="s:originTrace" v="n:7469468981580452446" />
              <node concept="1bVj0M" id="DL" role="23t8la">
                <uo k="s:originTrace" v="n:7469468981580452447" />
                <node concept="3clFbS" id="DM" role="1bW5cS">
                  <uo k="s:originTrace" v="n:7469468981580452448" />
                  <node concept="3clFbF" id="DO" role="3cqZAp">
                    <uo k="s:originTrace" v="n:7469468981580452449" />
                    <node concept="1Wc70l" id="DP" role="3clFbG">
                      <uo k="s:originTrace" v="n:7469468981580452450" />
                      <node concept="3y3z36" id="DQ" role="3uHU7B">
                        <uo k="s:originTrace" v="n:7469468981580452451" />
                        <node concept="37vLTw" id="DS" role="3uHU7B">
                          <ref role="3cqZAo" node="DN" resolve="it" />
                          <uo k="s:originTrace" v="n:3021153905151751620" />
                        </node>
                        <node concept="37vLTw" id="DT" role="3uHU7w">
                          <ref role="3cqZAo" node="CT" resolve="conceptDeclaration" />
                          <uo k="s:originTrace" v="n:7469468981580452453" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="DR" role="3uHU7w">
                        <uo k="s:originTrace" v="n:1005490780659270909" />
                        <node concept="37vLTw" id="DU" role="2Oq$k0">
                          <ref role="3cqZAo" node="D4" resolve="name" />
                          <uo k="s:originTrace" v="n:1005490780659269900" />
                        </node>
                        <node concept="liA8E" id="DV" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                          <uo k="s:originTrace" v="n:1005490780659274587" />
                          <node concept="2OqwBi" id="DW" role="37wK5m">
                            <uo k="s:originTrace" v="n:1005490780659275859" />
                            <node concept="37vLTw" id="DX" role="2Oq$k0">
                              <ref role="3cqZAo" node="DN" resolve="it" />
                              <uo k="s:originTrace" v="n:1005490780659275031" />
                            </node>
                            <node concept="3TrcHB" id="DY" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              <uo k="s:originTrace" v="n:1005490780659277099" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="DN" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <uo k="s:originTrace" v="n:6847626768367732777" />
                  <node concept="2jxLKc" id="DZ" role="1tU5fm">
                    <uo k="s:originTrace" v="n:6847626768367732778" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="CX" role="1B3o_S">
        <uo k="s:originTrace" v="n:7469468981580405274" />
      </node>
    </node>
    <node concept="3clFb_" id="CJ" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:7469468981580405274" />
      <node concept="3bZ5Sz" id="E0" role="3clF45">
        <uo k="s:originTrace" v="n:7469468981580405274" />
      </node>
      <node concept="3clFbS" id="E1" role="3clF47">
        <uo k="s:originTrace" v="n:7469468981580405274" />
        <node concept="3cpWs6" id="E3" role="3cqZAp">
          <uo k="s:originTrace" v="n:7469468981580405274" />
          <node concept="35c_gC" id="E4" role="3cqZAk">
            <ref role="35c_gD" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
            <uo k="s:originTrace" v="n:7469468981580405274" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="E2" role="1B3o_S">
        <uo k="s:originTrace" v="n:7469468981580405274" />
      </node>
    </node>
    <node concept="3clFb_" id="CK" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:7469468981580405274" />
      <node concept="37vLTG" id="E5" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:7469468981580405274" />
        <node concept="3Tqbb2" id="E9" role="1tU5fm">
          <uo k="s:originTrace" v="n:7469468981580405274" />
        </node>
      </node>
      <node concept="3clFbS" id="E6" role="3clF47">
        <uo k="s:originTrace" v="n:7469468981580405274" />
        <node concept="9aQIb" id="Ea" role="3cqZAp">
          <uo k="s:originTrace" v="n:7469468981580405274" />
          <node concept="3clFbS" id="Eb" role="9aQI4">
            <uo k="s:originTrace" v="n:7469468981580405274" />
            <node concept="3cpWs6" id="Ec" role="3cqZAp">
              <uo k="s:originTrace" v="n:7469468981580405274" />
              <node concept="2ShNRf" id="Ed" role="3cqZAk">
                <uo k="s:originTrace" v="n:7469468981580405274" />
                <node concept="1pGfFk" id="Ee" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:7469468981580405274" />
                  <node concept="2OqwBi" id="Ef" role="37wK5m">
                    <uo k="s:originTrace" v="n:7469468981580405274" />
                    <node concept="2OqwBi" id="Eh" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:7469468981580405274" />
                      <node concept="liA8E" id="Ej" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:7469468981580405274" />
                      </node>
                      <node concept="2JrnkZ" id="Ek" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:7469468981580405274" />
                        <node concept="37vLTw" id="El" role="2JrQYb">
                          <ref role="3cqZAo" node="E5" resolve="argument" />
                          <uo k="s:originTrace" v="n:7469468981580405274" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="Ei" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:7469468981580405274" />
                      <node concept="1rXfSq" id="Em" role="37wK5m">
                        <ref role="37wK5l" node="CJ" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:7469468981580405274" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="Eg" role="37wK5m">
                    <uo k="s:originTrace" v="n:7469468981580405274" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="E7" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:7469468981580405274" />
      </node>
      <node concept="3Tm1VV" id="E8" role="1B3o_S">
        <uo k="s:originTrace" v="n:7469468981580405274" />
      </node>
    </node>
    <node concept="3clFb_" id="CL" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:7469468981580405274" />
      <node concept="3clFbS" id="En" role="3clF47">
        <uo k="s:originTrace" v="n:7469468981580405274" />
        <node concept="3cpWs6" id="Eq" role="3cqZAp">
          <uo k="s:originTrace" v="n:7469468981580405274" />
          <node concept="3clFbT" id="Er" role="3cqZAk">
            <uo k="s:originTrace" v="n:7469468981580405274" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="Eo" role="3clF45">
        <uo k="s:originTrace" v="n:7469468981580405274" />
      </node>
      <node concept="3Tm1VV" id="Ep" role="1B3o_S">
        <uo k="s:originTrace" v="n:7469468981580405274" />
      </node>
    </node>
    <node concept="3uibUv" id="CM" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:7469468981580405274" />
    </node>
    <node concept="3uibUv" id="CN" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:7469468981580405274" />
    </node>
    <node concept="3Tm1VV" id="CO" role="1B3o_S">
      <uo k="s:originTrace" v="n:7469468981580405274" />
    </node>
  </node>
  <node concept="312cEu" id="Es">
    <property role="TrG5h" value="check_EditorForNonAbstractConcept_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:6519915829969160778" />
    <node concept="3clFbW" id="Et" role="jymVt">
      <uo k="s:originTrace" v="n:6519915829969160778" />
      <node concept="3clFbS" id="E_" role="3clF47">
        <uo k="s:originTrace" v="n:6519915829969160778" />
      </node>
      <node concept="3Tm1VV" id="EA" role="1B3o_S">
        <uo k="s:originTrace" v="n:6519915829969160778" />
      </node>
      <node concept="3cqZAl" id="EB" role="3clF45">
        <uo k="s:originTrace" v="n:6519915829969160778" />
      </node>
    </node>
    <node concept="3clFb_" id="Eu" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:6519915829969160778" />
      <node concept="3cqZAl" id="EC" role="3clF45">
        <uo k="s:originTrace" v="n:6519915829969160778" />
      </node>
      <node concept="37vLTG" id="ED" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="conceptDeclaration" />
        <uo k="s:originTrace" v="n:6519915829969160778" />
        <node concept="3Tqbb2" id="EI" role="1tU5fm">
          <uo k="s:originTrace" v="n:6519915829969160778" />
        </node>
      </node>
      <node concept="37vLTG" id="EE" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:6519915829969160778" />
        <node concept="3uibUv" id="EJ" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:6519915829969160778" />
        </node>
      </node>
      <node concept="37vLTG" id="EF" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:6519915829969160778" />
        <node concept="3uibUv" id="EK" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:6519915829969160778" />
        </node>
      </node>
      <node concept="3clFbS" id="EG" role="3clF47">
        <uo k="s:originTrace" v="n:6519915829969160779" />
        <node concept="3clFbJ" id="EL" role="3cqZAp">
          <uo k="s:originTrace" v="n:6519915829969160787" />
          <node concept="2OqwBi" id="ER" role="3clFbw">
            <uo k="s:originTrace" v="n:2886182022231601633" />
            <node concept="3TrcHB" id="ET" role="2OqNvi">
              <ref role="3TsBF5" to="tpce:40UcGlRb7V2" resolve="abstract" />
              <uo k="s:originTrace" v="n:2886182022231601634" />
            </node>
            <node concept="37vLTw" id="EU" role="2Oq$k0">
              <ref role="3cqZAo" node="ED" resolve="conceptDeclaration" />
              <uo k="s:originTrace" v="n:2886182022231601635" />
            </node>
          </node>
          <node concept="3clFbS" id="ES" role="3clFbx">
            <uo k="s:originTrace" v="n:6519915829969160788" />
            <node concept="3cpWs6" id="EV" role="3cqZAp">
              <uo k="s:originTrace" v="n:6519915829969160789" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="EM" role="3cqZAp">
          <uo k="s:originTrace" v="n:6814325058483928641" />
          <node concept="3clFbS" id="EW" role="3clFbx">
            <uo k="s:originTrace" v="n:6814325058483928643" />
            <node concept="3cpWs6" id="EY" role="3cqZAp">
              <uo k="s:originTrace" v="n:6814325058483939690" />
            </node>
          </node>
          <node concept="3fqX7Q" id="EX" role="3clFbw">
            <uo k="s:originTrace" v="n:6814325058483938142" />
            <node concept="2OqwBi" id="EZ" role="3fr31v">
              <uo k="s:originTrace" v="n:6814325058483938144" />
              <node concept="2OqwBi" id="F0" role="2Oq$k0">
                <uo k="s:originTrace" v="n:6814325058483938145" />
                <node concept="37vLTw" id="F2" role="2Oq$k0">
                  <ref role="3cqZAo" node="ED" resolve="conceptDeclaration" />
                  <uo k="s:originTrace" v="n:6814325058483938146" />
                </node>
                <node concept="I4A8Y" id="F3" role="2OqNvi">
                  <uo k="s:originTrace" v="n:6814325058483938147" />
                </node>
              </node>
              <node concept="3zA4fs" id="F1" role="2OqNvi">
                <ref role="3zA4av" to="tpcc:2LiUEk8oQ$g" resolve="structure" />
                <uo k="s:originTrace" v="n:6814325058483938148" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="EN" role="3cqZAp">
          <uo k="s:originTrace" v="n:6519915829969176674" />
          <node concept="3cpWsn" id="F4" role="3cpWs9">
            <property role="TrG5h" value="toCheck" />
            <uo k="s:originTrace" v="n:6519915829969176675" />
            <node concept="3O6Q9H" id="F5" role="1tU5fm">
              <uo k="s:originTrace" v="n:6519915829969176678" />
              <node concept="3Tqbb2" id="F7" role="3O5elw">
                <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                <uo k="s:originTrace" v="n:6519915829969176681" />
              </node>
            </node>
            <node concept="2ShNRf" id="F6" role="33vP2m">
              <uo k="s:originTrace" v="n:6519915829969176689" />
              <node concept="2Jqq0_" id="F8" role="2ShVmc">
                <uo k="s:originTrace" v="n:6519915829969176690" />
                <node concept="3Tqbb2" id="F9" role="HW$YZ">
                  <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                  <uo k="s:originTrace" v="n:6519915829969176691" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="EO" role="3cqZAp">
          <uo k="s:originTrace" v="n:6519915829969164102" />
          <node concept="2OqwBi" id="Fa" role="3clFbG">
            <uo k="s:originTrace" v="n:6519915829969176720" />
            <node concept="37vLTw" id="Fb" role="2Oq$k0">
              <ref role="3cqZAo" node="F4" resolve="toCheck" />
              <uo k="s:originTrace" v="n:4265636116363107559" />
            </node>
            <node concept="2Ke9KJ" id="Fc" role="2OqNvi">
              <uo k="s:originTrace" v="n:6519915829969176724" />
              <node concept="37vLTw" id="Fd" role="25WWJ7">
                <ref role="3cqZAo" node="ED" resolve="conceptDeclaration" />
                <uo k="s:originTrace" v="n:6519915829969176726" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="EP" role="3cqZAp">
          <uo k="s:originTrace" v="n:6519915829969176704" />
          <node concept="2OqwBi" id="Fe" role="2$JKZa">
            <uo k="s:originTrace" v="n:6519915829969195424" />
            <node concept="37vLTw" id="Fg" role="2Oq$k0">
              <ref role="3cqZAo" node="F4" resolve="toCheck" />
              <uo k="s:originTrace" v="n:4265636116363088170" />
            </node>
            <node concept="3GX2aA" id="Fh" role="2OqNvi">
              <uo k="s:originTrace" v="n:6519915829969195428" />
            </node>
          </node>
          <node concept="3clFbS" id="Ff" role="2LFqv$">
            <uo k="s:originTrace" v="n:6519915829969176706" />
            <node concept="3SKdUt" id="Fi" role="3cqZAp">
              <uo k="s:originTrace" v="n:776379770767749393" />
              <node concept="1PaTwC" id="Fn" role="1aUNEU">
                <uo k="s:originTrace" v="n:776379770767749394" />
                <node concept="3oM_SD" id="Fo" role="1PaTwD">
                  <property role="3oM_SC" value="FWIW," />
                  <uo k="s:originTrace" v="n:776379770767749467" />
                </node>
                <node concept="3oM_SD" id="Fp" role="1PaTwD">
                  <property role="3oM_SC" value="similar" />
                  <uo k="s:originTrace" v="n:776379770767752509" />
                </node>
                <node concept="3oM_SD" id="Fq" role="1PaTwD">
                  <property role="3oM_SC" value="code" />
                  <uo k="s:originTrace" v="n:776379770767752590" />
                </node>
                <node concept="3oM_SD" id="Fr" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                  <uo k="s:originTrace" v="n:776379770767752646" />
                </node>
                <node concept="3oM_SD" id="Fs" role="1PaTwD">
                  <property role="3oM_SC" value="CreateDefaultAction" />
                  <uo k="s:originTrace" v="n:776379770767752703" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="Fj" role="3cqZAp">
              <uo k="s:originTrace" v="n:6519915829969176728" />
              <node concept="3cpWsn" id="Ft" role="3cpWs9">
                <property role="TrG5h" value="acd" />
                <uo k="s:originTrace" v="n:6519915829969176729" />
                <node concept="3Tqbb2" id="Fu" role="1tU5fm">
                  <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                  <uo k="s:originTrace" v="n:6519915829969176730" />
                </node>
                <node concept="2OqwBi" id="Fv" role="33vP2m">
                  <uo k="s:originTrace" v="n:6519915829969176731" />
                  <node concept="37vLTw" id="Fw" role="2Oq$k0">
                    <ref role="3cqZAo" node="F4" resolve="toCheck" />
                    <uo k="s:originTrace" v="n:4265636116363076634" />
                  </node>
                  <node concept="2Kt2Hk" id="Fx" role="2OqNvi">
                    <uo k="s:originTrace" v="n:6519915829969176733" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="Fk" role="3cqZAp">
              <uo k="s:originTrace" v="n:6519915829969176786" />
              <node concept="3cpWsn" id="Fy" role="3cpWs9">
                <property role="TrG5h" value="aspects" />
                <uo k="s:originTrace" v="n:6519915829969176787" />
                <node concept="A3Dl8" id="Fz" role="1tU5fm">
                  <uo k="s:originTrace" v="n:776379770767754679" />
                  <node concept="3Tqbb2" id="F_" role="A3Ik2">
                    <uo k="s:originTrace" v="n:776379770767757225" />
                  </node>
                </node>
                <node concept="2OqwBi" id="F$" role="33vP2m">
                  <uo k="s:originTrace" v="n:6519915829969176789" />
                  <node concept="37vLTw" id="FA" role="2Oq$k0">
                    <ref role="3cqZAo" node="Ft" resolve="acd" />
                    <uo k="s:originTrace" v="n:4265636116363112480" />
                  </node>
                  <node concept="3zqWPK" id="FB" role="2OqNvi">
                    <ref role="37wK5l" to="tpcn:4G9PD8$NvPM" resolve="findConceptAspects" />
                    <uo k="s:originTrace" v="n:8085146484218853692" />
                    <node concept="1qvjxa" id="FC" role="37wK5m">
                      <ref role="1quiSB" to="9anm:2LiUEk8oQ$g" resolve="editor" />
                      <uo k="s:originTrace" v="n:8085146484218853694" />
                      <node concept="2OqwBi" id="FD" role="1qvjxb">
                        <uo k="s:originTrace" v="n:8085146484218853695" />
                        <node concept="2JrnkZ" id="FE" role="2Oq$k0">
                          <uo k="s:originTrace" v="n:8085146484218853696" />
                          <node concept="2OqwBi" id="FG" role="2JrQYb">
                            <uo k="s:originTrace" v="n:8085146484218853697" />
                            <node concept="37vLTw" id="FH" role="2Oq$k0">
                              <ref role="3cqZAo" node="Ft" resolve="acd" />
                              <uo k="s:originTrace" v="n:8085146484218853698" />
                            </node>
                            <node concept="I4A8Y" id="FI" role="2OqNvi">
                              <uo k="s:originTrace" v="n:8085146484218853699" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="FF" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                          <uo k="s:originTrace" v="n:8085146484218853700" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="Fl" role="3cqZAp">
              <uo k="s:originTrace" v="n:6519915829969195365" />
              <node concept="3clFbS" id="FJ" role="3clFbx">
                <uo k="s:originTrace" v="n:6519915829969195366" />
                <node concept="3cpWs6" id="FL" role="3cqZAp">
                  <uo k="s:originTrace" v="n:6519915829969195406" />
                </node>
              </node>
              <node concept="1Wc70l" id="FK" role="3clFbw">
                <uo k="s:originTrace" v="n:3946301646574630325" />
                <node concept="3fqX7Q" id="FM" role="3uHU7B">
                  <uo k="s:originTrace" v="n:3946301646574661928" />
                  <node concept="1eOMI4" id="FO" role="3fr31v">
                    <uo k="s:originTrace" v="n:4715587641030809405" />
                    <node concept="2OqwBi" id="FP" role="1eOMHV">
                      <uo k="s:originTrace" v="n:4573127675686565694" />
                      <node concept="37vLTw" id="FQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="Ft" resolve="acd" />
                        <uo k="s:originTrace" v="n:4573127675686565692" />
                      </node>
                      <node concept="1QLmlb" id="FR" role="2OqNvi">
                        <uo k="s:originTrace" v="n:4573127675686565695" />
                        <node concept="ZC_QK" id="FS" role="1QLmnL">
                          <ref role="2aWVGs" to="tpck:gw2VY9q" resolve="BaseConcept" />
                          <uo k="s:originTrace" v="n:4573127675686565693" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="FN" role="3uHU7w">
                  <uo k="s:originTrace" v="n:6519915829969195370" />
                  <node concept="2OqwBi" id="FT" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:776379770767769461" />
                    <node concept="37vLTw" id="FV" role="2Oq$k0">
                      <ref role="3cqZAo" node="Fy" resolve="aspects" />
                      <uo k="s:originTrace" v="n:4265636116363084600" />
                    </node>
                    <node concept="v3k3i" id="FW" role="2OqNvi">
                      <uo k="s:originTrace" v="n:776379770767771329" />
                      <node concept="chp4Y" id="FX" role="v3oSu">
                        <ref role="cht4Q" to="tpc2:fA4kQeF" resolve="ConceptEditorDeclaration" />
                        <uo k="s:originTrace" v="n:776379770767771734" />
                      </node>
                    </node>
                  </node>
                  <node concept="3GX2aA" id="FU" role="2OqNvi">
                    <uo k="s:originTrace" v="n:776379770767774441" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="Fm" role="3cqZAp">
              <uo k="s:originTrace" v="n:6519915829969195408" />
              <node concept="2OqwBi" id="FY" role="3clFbG">
                <uo k="s:originTrace" v="n:6519915829969195410" />
                <node concept="37vLTw" id="FZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="F4" resolve="toCheck" />
                  <uo k="s:originTrace" v="n:4265636116363086977" />
                </node>
                <node concept="X8dFx" id="G0" role="2OqNvi">
                  <uo k="s:originTrace" v="n:6519915829969195414" />
                  <node concept="2OqwBi" id="G1" role="25WWJ7">
                    <uo k="s:originTrace" v="n:6519915829969195417" />
                    <node concept="37vLTw" id="G2" role="2Oq$k0">
                      <ref role="3cqZAo" node="Ft" resolve="acd" />
                      <uo k="s:originTrace" v="n:4265636116363114411" />
                    </node>
                    <node concept="3zqWPK" id="G3" role="2OqNvi">
                      <ref role="37wK5l" to="tpcn:hMuxyK2" resolve="getImmediateSuperconcepts" />
                      <uo k="s:originTrace" v="n:8085146484218853701" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="EQ" role="3cqZAp">
          <uo k="s:originTrace" v="n:2823239769520680200" />
          <node concept="3clFbS" id="G4" role="9aQI4">
            <node concept="3cpWs8" id="G6" role="3cqZAp">
              <node concept="3cpWsn" id="G8" role="3cpWs9">
                <property role="TrG5h" value="errorTarget" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="G9" role="1tU5fm">
                  <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                </node>
                <node concept="2ShNRf" id="Ga" role="33vP2m">
                  <uo k="s:originTrace" v="n:8288068497635052476" />
                  <node concept="1pGfFk" id="Gb" role="2ShVmc">
                    <ref role="37wK5l" to="zavc:~PropertyMessageTarget.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty)" resolve="PropertyMessageTarget" />
                    <uo k="s:originTrace" v="n:8288068497635052476" />
                    <node concept="355D3s" id="Gc" role="37wK5m">
                      <ref role="355D3t" to="tpck:h0TrEE$" resolve="INamedConcept" />
                      <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                      <uo k="s:originTrace" v="n:8288068497635052476" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="G7" role="3cqZAp">
              <node concept="3cpWsn" id="Gd" role="3cpWs9">
                <property role="TrG5h" value="_reporter_2309309498" />
                <node concept="3uibUv" id="Ge" role="1tU5fm">
                  <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                </node>
                <node concept="2OqwBi" id="Gf" role="33vP2m">
                  <node concept="3VmV3z" id="Gg" role="2Oq$k0">
                    <property role="3VnrPo" value="typeCheckingContext" />
                    <node concept="3uibUv" id="Gi" role="3Vn4Tt">
                      <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                    </node>
                  </node>
                  <node concept="liA8E" id="Gh" role="2OqNvi">
                    <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportInfo(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportInfo" />
                    <node concept="37vLTw" id="Gj" role="37wK5m">
                      <ref role="3cqZAo" node="ED" resolve="conceptDeclaration" />
                      <uo k="s:originTrace" v="n:2823239769520681787" />
                    </node>
                    <node concept="3cpWs3" id="Gk" role="37wK5m">
                      <uo k="s:originTrace" v="n:2823239769521183950" />
                      <node concept="3cpWs3" id="Gp" role="3uHU7B">
                        <uo k="s:originTrace" v="n:2823239769521185865" />
                        <node concept="2OqwBi" id="Gr" role="3uHU7w">
                          <uo k="s:originTrace" v="n:2823239769521187085" />
                          <node concept="37vLTw" id="Gt" role="2Oq$k0">
                            <ref role="3cqZAo" node="ED" resolve="conceptDeclaration" />
                            <uo k="s:originTrace" v="n:2823239769521185944" />
                          </node>
                          <node concept="3TrcHB" id="Gu" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            <uo k="s:originTrace" v="n:2823239769521194990" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="Gs" role="3uHU7B">
                          <property role="Xl_RC" value="Editor for concept " />
                          <uo k="s:originTrace" v="n:2823239769521183956" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="Gq" role="3uHU7w">
                        <property role="Xl_RC" value=" is not defined. Default editor will be used." />
                        <uo k="s:originTrace" v="n:2823239769521183958" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="Gl" role="37wK5m">
                      <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                    </node>
                    <node concept="Xl_RD" id="Gm" role="37wK5m">
                      <property role="Xl_RC" value="2823239769520680200" />
                    </node>
                    <node concept="10Nm6u" id="Gn" role="37wK5m" />
                    <node concept="37vLTw" id="Go" role="37wK5m">
                      <ref role="3cqZAo" node="G8" resolve="errorTarget" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6wLe0" id="G5" role="lGtFl">
            <property role="6wLej" value="2823239769520680200" />
            <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="EH" role="1B3o_S">
        <uo k="s:originTrace" v="n:6519915829969160778" />
      </node>
    </node>
    <node concept="3clFb_" id="Ev" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:6519915829969160778" />
      <node concept="3bZ5Sz" id="Gv" role="3clF45">
        <uo k="s:originTrace" v="n:6519915829969160778" />
      </node>
      <node concept="3clFbS" id="Gw" role="3clF47">
        <uo k="s:originTrace" v="n:6519915829969160778" />
        <node concept="3cpWs6" id="Gy" role="3cqZAp">
          <uo k="s:originTrace" v="n:6519915829969160778" />
          <node concept="35c_gC" id="Gz" role="3cqZAk">
            <ref role="35c_gD" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
            <uo k="s:originTrace" v="n:6519915829969160778" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="Gx" role="1B3o_S">
        <uo k="s:originTrace" v="n:6519915829969160778" />
      </node>
    </node>
    <node concept="3clFb_" id="Ew" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:6519915829969160778" />
      <node concept="37vLTG" id="G$" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:6519915829969160778" />
        <node concept="3Tqbb2" id="GC" role="1tU5fm">
          <uo k="s:originTrace" v="n:6519915829969160778" />
        </node>
      </node>
      <node concept="3clFbS" id="G_" role="3clF47">
        <uo k="s:originTrace" v="n:6519915829969160778" />
        <node concept="9aQIb" id="GD" role="3cqZAp">
          <uo k="s:originTrace" v="n:6519915829969160778" />
          <node concept="3clFbS" id="GE" role="9aQI4">
            <uo k="s:originTrace" v="n:6519915829969160778" />
            <node concept="3cpWs6" id="GF" role="3cqZAp">
              <uo k="s:originTrace" v="n:6519915829969160778" />
              <node concept="2ShNRf" id="GG" role="3cqZAk">
                <uo k="s:originTrace" v="n:6519915829969160778" />
                <node concept="1pGfFk" id="GH" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:6519915829969160778" />
                  <node concept="2OqwBi" id="GI" role="37wK5m">
                    <uo k="s:originTrace" v="n:6519915829969160778" />
                    <node concept="2OqwBi" id="GK" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:6519915829969160778" />
                      <node concept="liA8E" id="GM" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:6519915829969160778" />
                      </node>
                      <node concept="2JrnkZ" id="GN" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:6519915829969160778" />
                        <node concept="37vLTw" id="GO" role="2JrQYb">
                          <ref role="3cqZAo" node="G$" resolve="argument" />
                          <uo k="s:originTrace" v="n:6519915829969160778" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="GL" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:6519915829969160778" />
                      <node concept="1rXfSq" id="GP" role="37wK5m">
                        <ref role="37wK5l" node="Ev" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:6519915829969160778" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="GJ" role="37wK5m">
                    <uo k="s:originTrace" v="n:6519915829969160778" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="GA" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:6519915829969160778" />
      </node>
      <node concept="3Tm1VV" id="GB" role="1B3o_S">
        <uo k="s:originTrace" v="n:6519915829969160778" />
      </node>
    </node>
    <node concept="3clFb_" id="Ex" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:6519915829969160778" />
      <node concept="3clFbS" id="GQ" role="3clF47">
        <uo k="s:originTrace" v="n:6519915829969160778" />
        <node concept="3cpWs6" id="GT" role="3cqZAp">
          <uo k="s:originTrace" v="n:6519915829969160778" />
          <node concept="3clFbT" id="GU" role="3cqZAk">
            <uo k="s:originTrace" v="n:6519915829969160778" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="GR" role="3clF45">
        <uo k="s:originTrace" v="n:6519915829969160778" />
      </node>
      <node concept="3Tm1VV" id="GS" role="1B3o_S">
        <uo k="s:originTrace" v="n:6519915829969160778" />
      </node>
    </node>
    <node concept="3uibUv" id="Ey" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:6519915829969160778" />
    </node>
    <node concept="3uibUv" id="Ez" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:6519915829969160778" />
    </node>
    <node concept="3Tm1VV" id="E$" role="1B3o_S">
      <uo k="s:originTrace" v="n:6519915829969160778" />
    </node>
  </node>
  <node concept="312cEu" id="GV">
    <property role="3GE5qa" value="enums" />
    <property role="TrG5h" value="check_EnumerationDeclaration_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:1075010451650513843" />
    <node concept="3clFbW" id="GW" role="jymVt">
      <uo k="s:originTrace" v="n:1075010451650513843" />
      <node concept="3clFbS" id="H4" role="3clF47">
        <uo k="s:originTrace" v="n:1075010451650513843" />
      </node>
      <node concept="3Tm1VV" id="H5" role="1B3o_S">
        <uo k="s:originTrace" v="n:1075010451650513843" />
      </node>
      <node concept="3cqZAl" id="H6" role="3clF45">
        <uo k="s:originTrace" v="n:1075010451650513843" />
      </node>
    </node>
    <node concept="3clFb_" id="GX" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1075010451650513843" />
      <node concept="3cqZAl" id="H7" role="3clF45">
        <uo k="s:originTrace" v="n:1075010451650513843" />
      </node>
      <node concept="37vLTG" id="H8" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="enumerationDeclaration" />
        <uo k="s:originTrace" v="n:1075010451650513843" />
        <node concept="3Tqbb2" id="Hd" role="1tU5fm">
          <uo k="s:originTrace" v="n:1075010451650513843" />
        </node>
      </node>
      <node concept="37vLTG" id="H9" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1075010451650513843" />
        <node concept="3uibUv" id="He" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1075010451650513843" />
        </node>
      </node>
      <node concept="37vLTG" id="Ha" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1075010451650513843" />
        <node concept="3uibUv" id="Hf" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1075010451650513843" />
        </node>
      </node>
      <node concept="3clFbS" id="Hb" role="3clF47">
        <uo k="s:originTrace" v="n:1075010451650513844" />
        <node concept="3cpWs8" id="Hg" role="3cqZAp">
          <uo k="s:originTrace" v="n:1075010451650516272" />
          <node concept="3cpWsn" id="Hn" role="3cpWs9">
            <property role="TrG5h" value="names" />
            <uo k="s:originTrace" v="n:1075010451650516275" />
            <node concept="2ShNRf" id="Ho" role="33vP2m">
              <uo k="s:originTrace" v="n:1075010451650516470" />
              <node concept="1pGfFk" id="Hq" role="2ShVmc">
                <ref role="37wK5l" to="yg2w:~MultiMap.&lt;init&gt;()" resolve="MultiMap" />
                <uo k="s:originTrace" v="n:1075010451650596139" />
                <node concept="17QB3L" id="Hr" role="1pMfVU">
                  <uo k="s:originTrace" v="n:1075010451650596492" />
                </node>
                <node concept="3Tqbb2" id="Hs" role="1pMfVU">
                  <ref role="ehGHo" to="tpce:2TR3acGo7Lw" resolve="EnumerationMemberDeclaration" />
                  <uo k="s:originTrace" v="n:1075010451650596779" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="Hp" role="1tU5fm">
              <ref role="3uigEE" to="yg2w:~MultiMap" resolve="MultiMap" />
              <uo k="s:originTrace" v="n:1075010451650594199" />
              <node concept="17QB3L" id="Ht" role="11_B2D">
                <uo k="s:originTrace" v="n:1075010451650594200" />
              </node>
              <node concept="3Tqbb2" id="Hu" role="11_B2D">
                <ref role="ehGHo" to="tpce:2TR3acGo7Lw" resolve="EnumerationMemberDeclaration" />
                <uo k="s:originTrace" v="n:1075010451650594201" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Hh" role="3cqZAp">
          <uo k="s:originTrace" v="n:1075010451650518718" />
          <node concept="3cpWsn" id="Hv" role="3cpWs9">
            <property role="TrG5h" value="prensetations" />
            <uo k="s:originTrace" v="n:1075010451650518719" />
            <node concept="3uibUv" id="Hw" role="1tU5fm">
              <ref role="3uigEE" to="yg2w:~MultiMap" resolve="MultiMap" />
              <uo k="s:originTrace" v="n:1075010451650593927" />
              <node concept="17QB3L" id="Hy" role="11_B2D">
                <uo k="s:originTrace" v="n:1075010451650593943" />
              </node>
              <node concept="3Tqbb2" id="Hz" role="11_B2D">
                <ref role="ehGHo" to="tpce:2TR3acGo7Lw" resolve="EnumerationMemberDeclaration" />
                <uo k="s:originTrace" v="n:1075010451650594012" />
              </node>
            </node>
            <node concept="2ShNRf" id="Hx" role="33vP2m">
              <uo k="s:originTrace" v="n:1075010451650596935" />
              <node concept="1pGfFk" id="H$" role="2ShVmc">
                <ref role="37wK5l" to="yg2w:~MultiMap.&lt;init&gt;()" resolve="MultiMap" />
                <uo k="s:originTrace" v="n:1075010451650596936" />
                <node concept="17QB3L" id="H_" role="1pMfVU">
                  <uo k="s:originTrace" v="n:1075010451650596937" />
                </node>
                <node concept="3Tqbb2" id="HA" role="1pMfVU">
                  <ref role="ehGHo" to="tpce:2TR3acGo7Lw" resolve="EnumerationMemberDeclaration" />
                  <uo k="s:originTrace" v="n:1075010451650596938" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="Hi" role="3cqZAp">
          <uo k="s:originTrace" v="n:1075010451650518681" />
        </node>
        <node concept="2Gpval" id="Hj" role="3cqZAp">
          <uo k="s:originTrace" v="n:1075010451650513997" />
          <node concept="2GrKxI" id="HB" role="2Gsz3X">
            <property role="TrG5h" value="member" />
            <uo k="s:originTrace" v="n:1075010451650513998" />
          </node>
          <node concept="2OqwBi" id="HC" role="2GsD0m">
            <uo k="s:originTrace" v="n:1075010451650514924" />
            <node concept="37vLTw" id="HE" role="2Oq$k0">
              <ref role="3cqZAo" node="H8" resolve="enumerationDeclaration" />
              <uo k="s:originTrace" v="n:1075010451650514045" />
            </node>
            <node concept="3Tsc0h" id="HF" role="2OqNvi">
              <ref role="3TtcxE" to="tpce:2TR3acGo7N1" resolve="members" />
              <uo k="s:originTrace" v="n:1075010451650516012" />
            </node>
          </node>
          <node concept="3clFbS" id="HD" role="2LFqv$">
            <uo k="s:originTrace" v="n:1075010451650514000" />
            <node concept="3clFbJ" id="HG" role="3cqZAp">
              <uo k="s:originTrace" v="n:1075010451650685186" />
              <node concept="3clFbS" id="HI" role="3clFbx">
                <uo k="s:originTrace" v="n:1075010451650685188" />
                <node concept="3SKdUt" id="HL" role="3cqZAp">
                  <uo k="s:originTrace" v="n:7111385156653890308" />
                  <node concept="1PaTwC" id="HM" role="1aUNEU">
                    <uo k="s:originTrace" v="n:7111385156653890309" />
                    <node concept="3oM_SD" id="HN" role="1PaTwD">
                      <property role="3oM_SC" value="already" />
                      <uo k="s:originTrace" v="n:7111385156653890319" />
                    </node>
                    <node concept="3oM_SD" id="HO" role="1PaTwD">
                      <property role="3oM_SC" value="red" />
                      <uo k="s:originTrace" v="n:7111385156653890321" />
                    </node>
                    <node concept="3oM_SD" id="HP" role="1PaTwD">
                      <property role="3oM_SC" value="due" />
                      <uo k="s:originTrace" v="n:7111385156653890324" />
                    </node>
                    <node concept="3oM_SD" id="HQ" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                      <uo k="s:originTrace" v="n:7111385156653890328" />
                    </node>
                    <node concept="3oM_SD" id="HR" role="1PaTwD">
                      <property role="3oM_SC" value="name" />
                      <uo k="s:originTrace" v="n:7111385156653890333" />
                    </node>
                    <node concept="3oM_SD" id="HS" role="1PaTwD">
                      <property role="3oM_SC" value="constraint" />
                      <uo k="s:originTrace" v="n:7111385156653890339" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="HJ" role="3clFbw">
                <uo k="s:originTrace" v="n:1075010451650804081" />
                <node concept="2OqwBi" id="HT" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:1075010451650686695" />
                  <node concept="2GrUjf" id="HV" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="HB" resolve="member" />
                    <uo k="s:originTrace" v="n:1075010451650685347" />
                  </node>
                  <node concept="3TrcHB" id="HW" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    <uo k="s:originTrace" v="n:1075010451650727130" />
                  </node>
                </node>
                <node concept="17RlXB" id="HU" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1075010451650845632" />
                </node>
              </node>
              <node concept="9aQIb" id="HK" role="9aQIa">
                <uo k="s:originTrace" v="n:1075010451652077868" />
                <node concept="3clFbS" id="HX" role="9aQI4">
                  <uo k="s:originTrace" v="n:1075010451652077869" />
                  <node concept="3clFbF" id="HY" role="3cqZAp">
                    <uo k="s:originTrace" v="n:1075010451650597103" />
                    <node concept="2OqwBi" id="HZ" role="3clFbG">
                      <uo k="s:originTrace" v="n:1075010451650598714" />
                      <node concept="37vLTw" id="I0" role="2Oq$k0">
                        <ref role="3cqZAo" node="Hn" resolve="names" />
                        <uo k="s:originTrace" v="n:1075010451650597102" />
                      </node>
                      <node concept="liA8E" id="I1" role="2OqNvi">
                        <ref role="37wK5l" to="yg2w:~MultiMap.putValue(java.lang.Object,java.lang.Object)" resolve="putValue" />
                        <uo k="s:originTrace" v="n:1075010451650614547" />
                        <node concept="2OqwBi" id="I2" role="37wK5m">
                          <uo k="s:originTrace" v="n:1075010451650615785" />
                          <node concept="2GrUjf" id="I4" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="HB" resolve="member" />
                            <uo k="s:originTrace" v="n:1075010451650614690" />
                          </node>
                          <node concept="3TrcHB" id="I5" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            <uo k="s:originTrace" v="n:1075010451650617086" />
                          </node>
                        </node>
                        <node concept="2GrUjf" id="I3" role="37wK5m">
                          <ref role="2Gs0qQ" node="HB" resolve="member" />
                          <uo k="s:originTrace" v="n:1075010451650618494" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="HH" role="3cqZAp">
              <uo k="s:originTrace" v="n:1075010451652079549" />
              <node concept="3clFbS" id="I6" role="3clFbx">
                <uo k="s:originTrace" v="n:1075010451652079551" />
                <node concept="3clFbJ" id="I9" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1588368162886167535" />
                  <node concept="3clFbS" id="Ia" role="3clFbx">
                    <uo k="s:originTrace" v="n:1588368162886167537" />
                    <node concept="3clFbF" id="Ic" role="3cqZAp">
                      <uo k="s:originTrace" v="n:1588368162885982719" />
                      <node concept="2OqwBi" id="Id" role="3clFbG">
                        <uo k="s:originTrace" v="n:1588368162885982720" />
                        <node concept="37vLTw" id="Ie" role="2Oq$k0">
                          <ref role="3cqZAo" node="Hv" resolve="prensetations" />
                          <uo k="s:originTrace" v="n:1588368162885982721" />
                        </node>
                        <node concept="liA8E" id="If" role="2OqNvi">
                          <ref role="37wK5l" to="yg2w:~MultiMap.putValue(java.lang.Object,java.lang.Object)" resolve="putValue" />
                          <uo k="s:originTrace" v="n:1588368162885982722" />
                          <node concept="2OqwBi" id="Ig" role="37wK5m">
                            <uo k="s:originTrace" v="n:1588368162885982723" />
                            <node concept="2GrUjf" id="Ii" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="HB" resolve="member" />
                              <uo k="s:originTrace" v="n:1588368162885982724" />
                            </node>
                            <node concept="3TrcHB" id="Ij" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              <uo k="s:originTrace" v="n:1588368162886044288" />
                            </node>
                          </node>
                          <node concept="2GrUjf" id="Ih" role="37wK5m">
                            <ref role="2Gs0qQ" node="HB" resolve="member" />
                            <uo k="s:originTrace" v="n:1588368162885982726" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="Ib" role="3clFbw">
                    <uo k="s:originTrace" v="n:1588368162886430351" />
                    <node concept="2OqwBi" id="Ik" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1588368162886168986" />
                      <node concept="2GrUjf" id="Im" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="HB" resolve="member" />
                        <uo k="s:originTrace" v="n:1588368162886168227" />
                      </node>
                      <node concept="3TrcHB" id="In" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        <uo k="s:originTrace" v="n:1588368162886231073" />
                      </node>
                    </node>
                    <node concept="17RvpY" id="Il" role="2OqNvi">
                      <uo k="s:originTrace" v="n:1588368162886492439" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="I7" role="3clFbw">
                <uo k="s:originTrace" v="n:1075010451652212563" />
                <node concept="2OqwBi" id="Io" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:1075010451652081107" />
                  <node concept="2GrUjf" id="Iq" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="HB" resolve="member" />
                    <uo k="s:originTrace" v="n:1075010451652080182" />
                  </node>
                  <node concept="3TrcHB" id="Ir" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:_jzzDSlxy8" resolve="presentation" />
                    <uo k="s:originTrace" v="n:1075010451652128502" />
                  </node>
                </node>
                <node concept="17RlXB" id="Ip" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1075010451652260124" />
                </node>
              </node>
              <node concept="9aQIb" id="I8" role="9aQIa">
                <uo k="s:originTrace" v="n:1075010451652264327" />
                <node concept="3clFbS" id="Is" role="9aQI4">
                  <uo k="s:originTrace" v="n:1075010451652264328" />
                  <node concept="3clFbF" id="It" role="3cqZAp">
                    <uo k="s:originTrace" v="n:1075010451650621985" />
                    <node concept="2OqwBi" id="Iu" role="3clFbG">
                      <uo k="s:originTrace" v="n:1075010451650623195" />
                      <node concept="37vLTw" id="Iv" role="2Oq$k0">
                        <ref role="3cqZAo" node="Hv" resolve="prensetations" />
                        <uo k="s:originTrace" v="n:1075010451650621983" />
                      </node>
                      <node concept="liA8E" id="Iw" role="2OqNvi">
                        <ref role="37wK5l" to="yg2w:~MultiMap.putValue(java.lang.Object,java.lang.Object)" resolve="putValue" />
                        <uo k="s:originTrace" v="n:1075010451650639015" />
                        <node concept="2OqwBi" id="Ix" role="37wK5m">
                          <uo k="s:originTrace" v="n:1075010451650640470" />
                          <node concept="2GrUjf" id="Iz" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="HB" resolve="member" />
                            <uo k="s:originTrace" v="n:1075010451650639187" />
                          </node>
                          <node concept="3TrcHB" id="I$" role="2OqNvi">
                            <ref role="3TsBF5" to="tpce:_jzzDSlxy8" resolve="presentation" />
                            <uo k="s:originTrace" v="n:1075010451650681504" />
                          </node>
                        </node>
                        <node concept="2GrUjf" id="Iy" role="37wK5m">
                          <ref role="2Gs0qQ" node="HB" resolve="member" />
                          <uo k="s:originTrace" v="n:1075010451650679942" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="Hk" role="3cqZAp">
          <uo k="s:originTrace" v="n:1075010451650682118" />
        </node>
        <node concept="2Gpval" id="Hl" role="3cqZAp">
          <uo k="s:originTrace" v="n:1075010451650846564" />
          <node concept="2GrKxI" id="I_" role="2Gsz3X">
            <property role="TrG5h" value="namePartition" />
            <uo k="s:originTrace" v="n:1075010451650846566" />
          </node>
          <node concept="2OqwBi" id="IA" role="2GsD0m">
            <uo k="s:originTrace" v="n:1075010451650848298" />
            <node concept="37vLTw" id="IC" role="2Oq$k0">
              <ref role="3cqZAo" node="Hn" resolve="names" />
              <uo k="s:originTrace" v="n:1075010451650847367" />
            </node>
            <node concept="liA8E" id="ID" role="2OqNvi">
              <ref role="37wK5l" to="yg2w:~MultiMap.entrySet()" resolve="entrySet" />
              <uo k="s:originTrace" v="n:1075010451650849240" />
            </node>
          </node>
          <node concept="3clFbS" id="IB" role="2LFqv$">
            <uo k="s:originTrace" v="n:1075010451650846570" />
            <node concept="3cpWs8" id="IE" role="3cqZAp">
              <uo k="s:originTrace" v="n:1075010451650850005" />
              <node concept="3cpWsn" id="IG" role="3cpWs9">
                <property role="TrG5h" value="members" />
                <uo k="s:originTrace" v="n:1075010451650850008" />
                <node concept="3vKaQO" id="IH" role="1tU5fm">
                  <uo k="s:originTrace" v="n:1075010451650850023" />
                  <node concept="3Tqbb2" id="IJ" role="3O5elw">
                    <ref role="ehGHo" to="tpce:2TR3acGo7Lw" resolve="EnumerationMemberDeclaration" />
                    <uo k="s:originTrace" v="n:1075010451650850044" />
                  </node>
                </node>
                <node concept="2OqwBi" id="II" role="33vP2m">
                  <uo k="s:originTrace" v="n:1075010451650850101" />
                  <node concept="2GrUjf" id="IK" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="I_" resolve="namePartition" />
                    <uo k="s:originTrace" v="n:1075010451650850081" />
                  </node>
                  <node concept="liA8E" id="IL" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map$Entry.getValue()" resolve="getValue" />
                    <uo k="s:originTrace" v="n:1075010451650955954" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="IF" role="3cqZAp">
              <uo k="s:originTrace" v="n:1075010451650961269" />
              <node concept="3clFbS" id="IM" role="3clFbx">
                <uo k="s:originTrace" v="n:1075010451650961271" />
                <node concept="2Gpval" id="IO" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1075010451651607738" />
                  <node concept="2GrKxI" id="IP" role="2Gsz3X">
                    <property role="TrG5h" value="member" />
                    <uo k="s:originTrace" v="n:1075010451651607740" />
                  </node>
                  <node concept="37vLTw" id="IQ" role="2GsD0m">
                    <ref role="3cqZAo" node="IG" resolve="members" />
                    <uo k="s:originTrace" v="n:1075010451651607772" />
                  </node>
                  <node concept="3clFbS" id="IR" role="2LFqv$">
                    <uo k="s:originTrace" v="n:1075010451651607744" />
                    <node concept="9aQIb" id="IS" role="3cqZAp">
                      <uo k="s:originTrace" v="n:1075010451651607869" />
                      <node concept="3clFbS" id="IT" role="9aQI4">
                        <node concept="3cpWs8" id="IV" role="3cqZAp">
                          <node concept="3cpWsn" id="IX" role="3cpWs9">
                            <property role="TrG5h" value="errorTarget" />
                            <property role="3TUv4t" value="true" />
                            <node concept="3uibUv" id="IY" role="1tU5fm">
                              <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                            </node>
                            <node concept="2ShNRf" id="IZ" role="33vP2m">
                              <uo k="s:originTrace" v="n:7111385156654005376" />
                              <node concept="1pGfFk" id="J0" role="2ShVmc">
                                <ref role="37wK5l" to="zavc:~PropertyMessageTarget.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty)" resolve="PropertyMessageTarget" />
                                <uo k="s:originTrace" v="n:7111385156654005376" />
                                <node concept="355D3s" id="J1" role="37wK5m">
                                  <ref role="355D3t" to="tpck:h0TrEE$" resolve="INamedConcept" />
                                  <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                                  <uo k="s:originTrace" v="n:7111385156654005376" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="IW" role="3cqZAp">
                          <node concept="3cpWsn" id="J2" role="3cpWs9">
                            <property role="TrG5h" value="_reporter_2309309498" />
                            <node concept="3uibUv" id="J3" role="1tU5fm">
                              <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                            </node>
                            <node concept="2OqwBi" id="J4" role="33vP2m">
                              <node concept="3VmV3z" id="J5" role="2Oq$k0">
                                <property role="3VnrPo" value="typeCheckingContext" />
                                <node concept="3uibUv" id="J7" role="3Vn4Tt">
                                  <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                                </node>
                              </node>
                              <node concept="liA8E" id="J6" role="2OqNvi">
                                <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                                <node concept="2GrUjf" id="J8" role="37wK5m">
                                  <ref role="2Gs0qQ" node="IP" resolve="member" />
                                  <uo k="s:originTrace" v="n:1075010451651607871" />
                                </node>
                                <node concept="Xl_RD" id="J9" role="37wK5m">
                                  <property role="Xl_RC" value="Duplicate member name" />
                                  <uo k="s:originTrace" v="n:1075010451651607870" />
                                </node>
                                <node concept="Xl_RD" id="Ja" role="37wK5m">
                                  <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                                </node>
                                <node concept="Xl_RD" id="Jb" role="37wK5m">
                                  <property role="Xl_RC" value="1075010451651607869" />
                                </node>
                                <node concept="10Nm6u" id="Jc" role="37wK5m" />
                                <node concept="37vLTw" id="Jd" role="37wK5m">
                                  <ref role="3cqZAo" node="IX" resolve="errorTarget" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="6wLe0" id="IU" role="lGtFl">
                        <property role="6wLej" value="1075010451651607869" />
                        <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eOSWO" id="IN" role="3clFbw">
                <uo k="s:originTrace" v="n:1075010451651607198" />
                <node concept="3cmrfG" id="Je" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                  <uo k="s:originTrace" v="n:1075010451651607217" />
                </node>
                <node concept="2OqwBi" id="Jf" role="3uHU7B">
                  <uo k="s:originTrace" v="n:1075010451650963677" />
                  <node concept="37vLTw" id="Jg" role="2Oq$k0">
                    <ref role="3cqZAo" node="IG" resolve="members" />
                    <uo k="s:originTrace" v="n:1075010451650961574" />
                  </node>
                  <node concept="34oBXx" id="Jh" role="2OqNvi">
                    <uo k="s:originTrace" v="n:1075010451651156765" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="Hm" role="3cqZAp">
          <uo k="s:originTrace" v="n:1075010451651608048" />
          <node concept="2GrKxI" id="Ji" role="2Gsz3X">
            <property role="TrG5h" value="presentationPartition" />
            <uo k="s:originTrace" v="n:1075010451651608049" />
          </node>
          <node concept="2OqwBi" id="Jj" role="2GsD0m">
            <uo k="s:originTrace" v="n:1075010451651608050" />
            <node concept="37vLTw" id="Jl" role="2Oq$k0">
              <ref role="3cqZAo" node="Hv" resolve="prensetations" />
              <uo k="s:originTrace" v="n:1075010451651620236" />
            </node>
            <node concept="liA8E" id="Jm" role="2OqNvi">
              <ref role="37wK5l" to="yg2w:~MultiMap.entrySet()" resolve="entrySet" />
              <uo k="s:originTrace" v="n:1075010451651608052" />
            </node>
          </node>
          <node concept="3clFbS" id="Jk" role="2LFqv$">
            <uo k="s:originTrace" v="n:1075010451651608053" />
            <node concept="3cpWs8" id="Jn" role="3cqZAp">
              <uo k="s:originTrace" v="n:1075010451651608054" />
              <node concept="3cpWsn" id="Jp" role="3cpWs9">
                <property role="TrG5h" value="members" />
                <uo k="s:originTrace" v="n:1075010451651608055" />
                <node concept="3vKaQO" id="Jq" role="1tU5fm">
                  <uo k="s:originTrace" v="n:1075010451651608056" />
                  <node concept="3Tqbb2" id="Js" role="3O5elw">
                    <ref role="ehGHo" to="tpce:2TR3acGo7Lw" resolve="EnumerationMemberDeclaration" />
                    <uo k="s:originTrace" v="n:1075010451651608057" />
                  </node>
                </node>
                <node concept="2OqwBi" id="Jr" role="33vP2m">
                  <uo k="s:originTrace" v="n:1075010451651608058" />
                  <node concept="2GrUjf" id="Jt" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="Ji" resolve="presentationPartition" />
                    <uo k="s:originTrace" v="n:1075010451651608059" />
                  </node>
                  <node concept="liA8E" id="Ju" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map$Entry.getValue()" resolve="getValue" />
                    <uo k="s:originTrace" v="n:1075010451651608060" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="Jo" role="3cqZAp">
              <uo k="s:originTrace" v="n:1075010451651608061" />
              <node concept="3clFbS" id="Jv" role="3clFbx">
                <uo k="s:originTrace" v="n:1075010451651608062" />
                <node concept="2Gpval" id="Jx" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1075010451651608063" />
                  <node concept="2GrKxI" id="Jy" role="2Gsz3X">
                    <property role="TrG5h" value="member" />
                    <uo k="s:originTrace" v="n:1075010451651608064" />
                  </node>
                  <node concept="37vLTw" id="Jz" role="2GsD0m">
                    <ref role="3cqZAo" node="Jp" resolve="members" />
                    <uo k="s:originTrace" v="n:1075010451651608065" />
                  </node>
                  <node concept="3clFbS" id="J$" role="2LFqv$">
                    <uo k="s:originTrace" v="n:1075010451651608066" />
                    <node concept="9aQIb" id="J_" role="3cqZAp">
                      <uo k="s:originTrace" v="n:1075010451651608067" />
                      <node concept="3clFbS" id="JA" role="9aQI4">
                        <node concept="3cpWs8" id="JC" role="3cqZAp">
                          <node concept="3cpWsn" id="JE" role="3cpWs9">
                            <property role="TrG5h" value="errorTarget" />
                            <property role="3TUv4t" value="true" />
                            <node concept="3uibUv" id="JF" role="1tU5fm">
                              <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                            </node>
                            <node concept="2ShNRf" id="JG" role="33vP2m">
                              <uo k="s:originTrace" v="n:7111385156654005492" />
                              <node concept="1pGfFk" id="JH" role="2ShVmc">
                                <ref role="37wK5l" to="zavc:~PropertyMessageTarget.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty)" resolve="PropertyMessageTarget" />
                                <uo k="s:originTrace" v="n:7111385156654005492" />
                                <node concept="355D3s" id="JI" role="37wK5m">
                                  <ref role="355D3t" to="tpce:2TR3acGo7Lw" resolve="EnumerationMemberDeclaration" />
                                  <ref role="355D3u" to="tpce:_jzzDSlxy8" resolve="presentation" />
                                  <uo k="s:originTrace" v="n:7111385156654005492" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="JD" role="3cqZAp">
                          <node concept="3cpWsn" id="JJ" role="3cpWs9">
                            <property role="TrG5h" value="_reporter_2309309498" />
                            <node concept="3uibUv" id="JK" role="1tU5fm">
                              <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                            </node>
                            <node concept="2OqwBi" id="JL" role="33vP2m">
                              <node concept="3VmV3z" id="JM" role="2Oq$k0">
                                <property role="3VnrPo" value="typeCheckingContext" />
                                <node concept="3uibUv" id="JO" role="3Vn4Tt">
                                  <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                                </node>
                              </node>
                              <node concept="liA8E" id="JN" role="2OqNvi">
                                <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                                <node concept="2GrUjf" id="JP" role="37wK5m">
                                  <ref role="2Gs0qQ" node="Jy" resolve="member" />
                                  <uo k="s:originTrace" v="n:1075010451651608069" />
                                </node>
                                <node concept="Xl_RD" id="JQ" role="37wK5m">
                                  <property role="Xl_RC" value="Duplicate member presentation" />
                                  <uo k="s:originTrace" v="n:1075010451651608068" />
                                </node>
                                <node concept="Xl_RD" id="JR" role="37wK5m">
                                  <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                                </node>
                                <node concept="Xl_RD" id="JS" role="37wK5m">
                                  <property role="Xl_RC" value="1075010451651608067" />
                                </node>
                                <node concept="10Nm6u" id="JT" role="37wK5m" />
                                <node concept="37vLTw" id="JU" role="37wK5m">
                                  <ref role="3cqZAo" node="JE" resolve="errorTarget" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="6wLe0" id="JB" role="lGtFl">
                        <property role="6wLej" value="1075010451651608067" />
                        <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eOSWO" id="Jw" role="3clFbw">
                <uo k="s:originTrace" v="n:1075010451651608070" />
                <node concept="3cmrfG" id="JV" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                  <uo k="s:originTrace" v="n:1075010451651608071" />
                </node>
                <node concept="2OqwBi" id="JW" role="3uHU7B">
                  <uo k="s:originTrace" v="n:1075010451651608072" />
                  <node concept="37vLTw" id="JX" role="2Oq$k0">
                    <ref role="3cqZAo" node="Jp" resolve="members" />
                    <uo k="s:originTrace" v="n:1075010451651608073" />
                  </node>
                  <node concept="34oBXx" id="JY" role="2OqNvi">
                    <uo k="s:originTrace" v="n:1075010451651608074" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="Hc" role="1B3o_S">
        <uo k="s:originTrace" v="n:1075010451650513843" />
      </node>
    </node>
    <node concept="3clFb_" id="GY" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1075010451650513843" />
      <node concept="3bZ5Sz" id="JZ" role="3clF45">
        <uo k="s:originTrace" v="n:1075010451650513843" />
      </node>
      <node concept="3clFbS" id="K0" role="3clF47">
        <uo k="s:originTrace" v="n:1075010451650513843" />
        <node concept="3cpWs6" id="K2" role="3cqZAp">
          <uo k="s:originTrace" v="n:1075010451650513843" />
          <node concept="35c_gC" id="K3" role="3cqZAk">
            <ref role="35c_gD" to="tpce:2TR3acGo7Lv" resolve="EnumerationDeclaration" />
            <uo k="s:originTrace" v="n:1075010451650513843" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="K1" role="1B3o_S">
        <uo k="s:originTrace" v="n:1075010451650513843" />
      </node>
    </node>
    <node concept="3clFb_" id="GZ" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1075010451650513843" />
      <node concept="37vLTG" id="K4" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1075010451650513843" />
        <node concept="3Tqbb2" id="K8" role="1tU5fm">
          <uo k="s:originTrace" v="n:1075010451650513843" />
        </node>
      </node>
      <node concept="3clFbS" id="K5" role="3clF47">
        <uo k="s:originTrace" v="n:1075010451650513843" />
        <node concept="9aQIb" id="K9" role="3cqZAp">
          <uo k="s:originTrace" v="n:1075010451650513843" />
          <node concept="3clFbS" id="Ka" role="9aQI4">
            <uo k="s:originTrace" v="n:1075010451650513843" />
            <node concept="3cpWs6" id="Kb" role="3cqZAp">
              <uo k="s:originTrace" v="n:1075010451650513843" />
              <node concept="2ShNRf" id="Kc" role="3cqZAk">
                <uo k="s:originTrace" v="n:1075010451650513843" />
                <node concept="1pGfFk" id="Kd" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1075010451650513843" />
                  <node concept="2OqwBi" id="Ke" role="37wK5m">
                    <uo k="s:originTrace" v="n:1075010451650513843" />
                    <node concept="2OqwBi" id="Kg" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1075010451650513843" />
                      <node concept="liA8E" id="Ki" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1075010451650513843" />
                      </node>
                      <node concept="2JrnkZ" id="Kj" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1075010451650513843" />
                        <node concept="37vLTw" id="Kk" role="2JrQYb">
                          <ref role="3cqZAo" node="K4" resolve="argument" />
                          <uo k="s:originTrace" v="n:1075010451650513843" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="Kh" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1075010451650513843" />
                      <node concept="1rXfSq" id="Kl" role="37wK5m">
                        <ref role="37wK5l" node="GY" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1075010451650513843" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="Kf" role="37wK5m">
                    <uo k="s:originTrace" v="n:1075010451650513843" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="K6" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1075010451650513843" />
      </node>
      <node concept="3Tm1VV" id="K7" role="1B3o_S">
        <uo k="s:originTrace" v="n:1075010451650513843" />
      </node>
    </node>
    <node concept="3clFb_" id="H0" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1075010451650513843" />
      <node concept="3clFbS" id="Km" role="3clF47">
        <uo k="s:originTrace" v="n:1075010451650513843" />
        <node concept="3cpWs6" id="Kp" role="3cqZAp">
          <uo k="s:originTrace" v="n:1075010451650513843" />
          <node concept="3clFbT" id="Kq" role="3cqZAk">
            <uo k="s:originTrace" v="n:1075010451650513843" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="Kn" role="3clF45">
        <uo k="s:originTrace" v="n:1075010451650513843" />
      </node>
      <node concept="3Tm1VV" id="Ko" role="1B3o_S">
        <uo k="s:originTrace" v="n:1075010451650513843" />
      </node>
    </node>
    <node concept="3uibUv" id="H1" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1075010451650513843" />
    </node>
    <node concept="3uibUv" id="H2" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1075010451650513843" />
    </node>
    <node concept="3Tm1VV" id="H3" role="1B3o_S">
      <uo k="s:originTrace" v="n:1075010451650513843" />
    </node>
  </node>
  <node concept="312cEu" id="Kr">
    <property role="TrG5h" value="check_EnumerationMemberDeclaration_Ids_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:1421157252384318936" />
    <node concept="3clFbW" id="Ks" role="jymVt">
      <uo k="s:originTrace" v="n:1421157252384318936" />
      <node concept="3clFbS" id="K$" role="3clF47">
        <uo k="s:originTrace" v="n:1421157252384318936" />
      </node>
      <node concept="3Tm1VV" id="K_" role="1B3o_S">
        <uo k="s:originTrace" v="n:1421157252384318936" />
      </node>
      <node concept="3cqZAl" id="KA" role="3clF45">
        <uo k="s:originTrace" v="n:1421157252384318936" />
      </node>
    </node>
    <node concept="3clFb_" id="Kt" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1421157252384318936" />
      <node concept="3cqZAl" id="KB" role="3clF45">
        <uo k="s:originTrace" v="n:1421157252384318936" />
      </node>
      <node concept="37vLTG" id="KC" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="emd" />
        <uo k="s:originTrace" v="n:1421157252384318936" />
        <node concept="3Tqbb2" id="KH" role="1tU5fm">
          <uo k="s:originTrace" v="n:1421157252384318936" />
        </node>
      </node>
      <node concept="37vLTG" id="KD" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1421157252384318936" />
        <node concept="3uibUv" id="KI" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1421157252384318936" />
        </node>
      </node>
      <node concept="37vLTG" id="KE" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1421157252384318936" />
        <node concept="3uibUv" id="KJ" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1421157252384318936" />
        </node>
      </node>
      <node concept="3clFbS" id="KF" role="3clF47">
        <uo k="s:originTrace" v="n:1421157252384318937" />
        <node concept="3clFbJ" id="KK" role="3cqZAp">
          <uo k="s:originTrace" v="n:1421157252384318938" />
          <node concept="3clFbS" id="KP" role="3clFbx">
            <uo k="s:originTrace" v="n:1421157252384318939" />
            <node concept="3cpWs6" id="KR" role="3cqZAp">
              <uo k="s:originTrace" v="n:1421157252384318940" />
            </node>
          </node>
          <node concept="3fqX7Q" id="KQ" role="3clFbw">
            <uo k="s:originTrace" v="n:1421157252384318941" />
            <node concept="2OqwBi" id="KS" role="3fr31v">
              <uo k="s:originTrace" v="n:1421157252384318942" />
              <node concept="2OqwBi" id="KT" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1421157252384318943" />
                <node concept="37vLTw" id="KV" role="2Oq$k0">
                  <ref role="3cqZAo" node="KC" resolve="emd" />
                  <uo k="s:originTrace" v="n:1421157252384318944" />
                </node>
                <node concept="I4A8Y" id="KW" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1421157252384318945" />
                </node>
              </node>
              <node concept="3zA4fs" id="KU" role="2OqNvi">
                <ref role="3zA4av" to="tpcc:2LiUEk8oQ$g" resolve="structure" />
                <uo k="s:originTrace" v="n:1421157252384318946" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="KL" role="3cqZAp">
          <uo k="s:originTrace" v="n:1421157252384318947" />
        </node>
        <node concept="3cpWs8" id="KM" role="3cqZAp">
          <uo k="s:originTrace" v="n:1421157252384351785" />
          <node concept="3cpWsn" id="KX" role="3cpWs9">
            <property role="TrG5h" value="ed" />
            <uo k="s:originTrace" v="n:1421157252384351786" />
            <node concept="3Tqbb2" id="KY" role="1tU5fm">
              <ref role="ehGHo" to="tpce:2TR3acGo7Lv" resolve="EnumerationDeclaration" />
              <uo k="s:originTrace" v="n:1421157252384351781" />
            </node>
            <node concept="1PxgMI" id="KZ" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <uo k="s:originTrace" v="n:1421157252384351787" />
              <node concept="chp4Y" id="L0" role="3oSUPX">
                <ref role="cht4Q" to="tpce:2TR3acGo7Lv" resolve="EnumerationDeclaration" />
                <uo k="s:originTrace" v="n:1421157252384351788" />
              </node>
              <node concept="2OqwBi" id="L1" role="1m5AlR">
                <uo k="s:originTrace" v="n:1421157252384351789" />
                <node concept="37vLTw" id="L2" role="2Oq$k0">
                  <ref role="3cqZAo" node="KC" resolve="emd" />
                  <uo k="s:originTrace" v="n:1421157252384351790" />
                </node>
                <node concept="1mfA1w" id="L3" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1421157252384351791" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="KN" role="3cqZAp">
          <uo k="s:originTrace" v="n:1421157252384357557" />
        </node>
        <node concept="3clFbJ" id="KO" role="3cqZAp">
          <uo k="s:originTrace" v="n:1421157252384318951" />
          <node concept="2OqwBi" id="L4" role="3clFbw">
            <uo k="s:originTrace" v="n:1421157252384529017" />
            <node concept="2OqwBi" id="L7" role="2Oq$k0">
              <uo k="s:originTrace" v="n:1421157252384521214" />
              <node concept="37vLTw" id="L9" role="2Oq$k0">
                <ref role="3cqZAo" node="KC" resolve="emd" />
                <uo k="s:originTrace" v="n:1421157252384519913" />
              </node>
              <node concept="3TrcHB" id="La" role="2OqNvi">
                <ref role="3TsBF5" to="tpce:1eSXJRel0SS" resolve="memberId" />
                <uo k="s:originTrace" v="n:1421157252384524067" />
              </node>
            </node>
            <node concept="17RlXB" id="L8" role="2OqNvi">
              <uo k="s:originTrace" v="n:1421157252384532962" />
            </node>
          </node>
          <node concept="3clFbS" id="L5" role="3clFbx">
            <uo k="s:originTrace" v="n:1421157252384318990" />
            <node concept="9aQIb" id="Lb" role="3cqZAp">
              <uo k="s:originTrace" v="n:1421157252384318991" />
              <node concept="3clFbS" id="Lc" role="9aQI4">
                <node concept="3cpWs8" id="Le" role="3cqZAp">
                  <node concept="3cpWsn" id="Lh" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="Li" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="Lj" role="33vP2m">
                      <node concept="1pGfFk" id="Lk" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="Lf" role="3cqZAp">
                  <node concept="3cpWsn" id="Ll" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="Lm" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="Ln" role="33vP2m">
                      <node concept="3VmV3z" id="Lo" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="Lq" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="Lp" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                        <node concept="37vLTw" id="Lr" role="37wK5m">
                          <ref role="3cqZAo" node="KC" resolve="emd" />
                          <uo k="s:originTrace" v="n:1421157252384318995" />
                        </node>
                        <node concept="3cpWs3" id="Ls" role="37wK5m">
                          <uo k="s:originTrace" v="n:1421157252384318996" />
                          <node concept="Xl_RD" id="Lx" role="3uHU7B">
                            <property role="Xl_RC" value="Absent member id.\n" />
                            <uo k="s:originTrace" v="n:1421157252384318997" />
                          </node>
                          <node concept="Xl_RD" id="Ly" role="3uHU7w">
                            <property role="Xl_RC" value="Please invoke the \&quot;Correct ID\&quot; intention on it" />
                            <uo k="s:originTrace" v="n:1421157252384318998" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="Lt" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="Lu" role="37wK5m">
                          <property role="Xl_RC" value="1421157252384318991" />
                        </node>
                        <node concept="10Nm6u" id="Lv" role="37wK5m" />
                        <node concept="37vLTw" id="Lw" role="37wK5m">
                          <ref role="3cqZAo" node="Lh" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="Lg" role="3cqZAp">
                  <node concept="3clFbS" id="Lz" role="9aQI4">
                    <node concept="3cpWs8" id="L$" role="3cqZAp">
                      <node concept="3cpWsn" id="LC" role="3cpWs9">
                        <property role="TrG5h" value="intentionProvider" />
                        <node concept="3uibUv" id="LD" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~BaseQuickFixProvider" resolve="BaseQuickFixProvider" />
                        </node>
                        <node concept="2ShNRf" id="LE" role="33vP2m">
                          <node concept="1pGfFk" id="LF" role="2ShVmc">
                            <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.&lt;init&gt;(java.lang.String,java.lang.String,boolean)" resolve="BaseQuickFixProvider" />
                            <node concept="Xl_RD" id="LG" role="37wK5m">
                              <property role="Xl_RC" value="jetbrains.mps.lang.structure.typesystem.CorrectDuplicateId_QuickFix" />
                            </node>
                            <node concept="Xl_RD" id="LH" role="37wK5m">
                              <property role="Xl_RC" value="1421157252384318992" />
                            </node>
                            <node concept="3clFbT" id="LI" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="L_" role="3cqZAp">
                      <node concept="2OqwBi" id="LJ" role="3clFbG">
                        <node concept="37vLTw" id="LK" role="2Oq$k0">
                          <ref role="3cqZAo" node="LC" resolve="intentionProvider" />
                        </node>
                        <node concept="liA8E" id="LL" role="2OqNvi">
                          <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.putArgument(java.lang.String,java.lang.Object)" resolve="putArgument" />
                          <node concept="Xl_RD" id="LM" role="37wK5m">
                            <property role="Xl_RC" value="d" />
                          </node>
                          <node concept="37vLTw" id="LN" role="37wK5m">
                            <ref role="3cqZAo" node="KX" resolve="ed" />
                            <uo k="s:originTrace" v="n:7791109065627033599" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="LA" role="3cqZAp">
                      <node concept="2OqwBi" id="LO" role="3clFbG">
                        <node concept="37vLTw" id="LP" role="2Oq$k0">
                          <ref role="3cqZAo" node="LC" resolve="intentionProvider" />
                        </node>
                        <node concept="liA8E" id="LQ" role="2OqNvi">
                          <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.putArgument(java.lang.String,java.lang.Object)" resolve="putArgument" />
                          <node concept="Xl_RD" id="LR" role="37wK5m">
                            <property role="Xl_RC" value="m" />
                          </node>
                          <node concept="37vLTw" id="LS" role="37wK5m">
                            <ref role="3cqZAo" node="KC" resolve="emd" />
                            <uo k="s:originTrace" v="n:1421157252384318994" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="LB" role="3cqZAp">
                      <node concept="2OqwBi" id="LT" role="3clFbG">
                        <node concept="37vLTw" id="LU" role="2Oq$k0">
                          <ref role="3cqZAo" node="Ll" resolve="_reporter_2309309498" />
                        </node>
                        <node concept="liA8E" id="LV" role="2OqNvi">
                          <ref role="37wK5l" to="2gg1:~IErrorReporter.addIntentionProvider(jetbrains.mps.errors.QuickFixProvider)" resolve="addIntentionProvider" />
                          <node concept="37vLTw" id="LW" role="37wK5m">
                            <ref role="3cqZAo" node="LC" resolve="intentionProvider" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="Ld" role="lGtFl">
                <property role="6wLej" value="1421157252384318991" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="L6" role="3eNLev">
            <uo k="s:originTrace" v="n:1421157252384541236" />
            <node concept="3clFbS" id="LX" role="3eOfB_">
              <uo k="s:originTrace" v="n:1421157252384541237" />
              <node concept="9aQIb" id="LZ" role="3cqZAp">
                <uo k="s:originTrace" v="n:1421157252384533593" />
                <node concept="3clFbS" id="M0" role="9aQI4">
                  <node concept="3cpWs8" id="M2" role="3cqZAp">
                    <node concept="3cpWsn" id="M5" role="3cpWs9">
                      <property role="TrG5h" value="errorTarget" />
                      <property role="3TUv4t" value="true" />
                      <node concept="3uibUv" id="M6" role="1tU5fm">
                        <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                      </node>
                      <node concept="2ShNRf" id="M7" role="33vP2m">
                        <node concept="1pGfFk" id="M8" role="2ShVmc">
                          <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="M3" role="3cqZAp">
                    <node concept="3cpWsn" id="M9" role="3cpWs9">
                      <property role="TrG5h" value="_reporter_2309309498" />
                      <node concept="3uibUv" id="Ma" role="1tU5fm">
                        <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                      </node>
                      <node concept="2OqwBi" id="Mb" role="33vP2m">
                        <node concept="3VmV3z" id="Mc" role="2Oq$k0">
                          <property role="3VnrPo" value="typeCheckingContext" />
                          <node concept="3uibUv" id="Me" role="3Vn4Tt">
                            <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                          </node>
                        </node>
                        <node concept="liA8E" id="Md" role="2OqNvi">
                          <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                          <node concept="37vLTw" id="Mf" role="37wK5m">
                            <ref role="3cqZAo" node="KC" resolve="emd" />
                            <uo k="s:originTrace" v="n:1421157252384533597" />
                          </node>
                          <node concept="3cpWs3" id="Mg" role="37wK5m">
                            <uo k="s:originTrace" v="n:1421157252384533598" />
                            <node concept="Xl_RD" id="Ml" role="3uHU7B">
                              <property role="Xl_RC" value="Duplicate member id.\n" />
                              <uo k="s:originTrace" v="n:1421157252384533599" />
                            </node>
                            <node concept="Xl_RD" id="Mm" role="3uHU7w">
                              <property role="Xl_RC" value="Please invoke the \&quot;Correct ID\&quot; intention on it" />
                              <uo k="s:originTrace" v="n:1421157252384533600" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="Mh" role="37wK5m">
                            <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                          </node>
                          <node concept="Xl_RD" id="Mi" role="37wK5m">
                            <property role="Xl_RC" value="1421157252384533593" />
                          </node>
                          <node concept="10Nm6u" id="Mj" role="37wK5m" />
                          <node concept="37vLTw" id="Mk" role="37wK5m">
                            <ref role="3cqZAo" node="M5" resolve="errorTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="M4" role="3cqZAp">
                    <node concept="3clFbS" id="Mn" role="9aQI4">
                      <node concept="3cpWs8" id="Mo" role="3cqZAp">
                        <node concept="3cpWsn" id="Ms" role="3cpWs9">
                          <property role="TrG5h" value="intentionProvider" />
                          <node concept="3uibUv" id="Mt" role="1tU5fm">
                            <ref role="3uigEE" to="2gg1:~BaseQuickFixProvider" resolve="BaseQuickFixProvider" />
                          </node>
                          <node concept="2ShNRf" id="Mu" role="33vP2m">
                            <node concept="1pGfFk" id="Mv" role="2ShVmc">
                              <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.&lt;init&gt;(java.lang.String,java.lang.String,boolean)" resolve="BaseQuickFixProvider" />
                              <node concept="Xl_RD" id="Mw" role="37wK5m">
                                <property role="Xl_RC" value="jetbrains.mps.lang.structure.typesystem.CorrectDuplicateId_QuickFix" />
                              </node>
                              <node concept="Xl_RD" id="Mx" role="37wK5m">
                                <property role="Xl_RC" value="1421157252384533594" />
                              </node>
                              <node concept="3clFbT" id="My" role="37wK5m" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="Mp" role="3cqZAp">
                        <node concept="2OqwBi" id="Mz" role="3clFbG">
                          <node concept="37vLTw" id="M$" role="2Oq$k0">
                            <ref role="3cqZAo" node="Ms" resolve="intentionProvider" />
                          </node>
                          <node concept="liA8E" id="M_" role="2OqNvi">
                            <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.putArgument(java.lang.String,java.lang.Object)" resolve="putArgument" />
                            <node concept="Xl_RD" id="MA" role="37wK5m">
                              <property role="Xl_RC" value="d" />
                            </node>
                            <node concept="37vLTw" id="MB" role="37wK5m">
                              <ref role="3cqZAo" node="KX" resolve="ed" />
                              <uo k="s:originTrace" v="n:7791109065627033519" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="Mq" role="3cqZAp">
                        <node concept="2OqwBi" id="MC" role="3clFbG">
                          <node concept="37vLTw" id="MD" role="2Oq$k0">
                            <ref role="3cqZAo" node="Ms" resolve="intentionProvider" />
                          </node>
                          <node concept="liA8E" id="ME" role="2OqNvi">
                            <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.putArgument(java.lang.String,java.lang.Object)" resolve="putArgument" />
                            <node concept="Xl_RD" id="MF" role="37wK5m">
                              <property role="Xl_RC" value="m" />
                            </node>
                            <node concept="37vLTw" id="MG" role="37wK5m">
                              <ref role="3cqZAo" node="KC" resolve="emd" />
                              <uo k="s:originTrace" v="n:1421157252384533596" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="Mr" role="3cqZAp">
                        <node concept="2OqwBi" id="MH" role="3clFbG">
                          <node concept="37vLTw" id="MI" role="2Oq$k0">
                            <ref role="3cqZAo" node="M9" resolve="_reporter_2309309498" />
                          </node>
                          <node concept="liA8E" id="MJ" role="2OqNvi">
                            <ref role="37wK5l" to="2gg1:~IErrorReporter.addIntentionProvider(jetbrains.mps.errors.QuickFixProvider)" resolve="addIntentionProvider" />
                            <node concept="37vLTw" id="MK" role="37wK5m">
                              <ref role="3cqZAo" node="Ms" resolve="intentionProvider" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="6wLe0" id="M1" role="lGtFl">
                  <property role="6wLej" value="1421157252384533593" />
                  <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="LY" role="3eO9$A">
              <uo k="s:originTrace" v="n:1421157252384533571" />
              <node concept="2OqwBi" id="ML" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1421157252384533572" />
                <node concept="37vLTw" id="MN" role="2Oq$k0">
                  <ref role="3cqZAo" node="KX" resolve="ed" />
                  <uo k="s:originTrace" v="n:1421157252384533573" />
                </node>
                <node concept="3Tsc0h" id="MO" role="2OqNvi">
                  <ref role="3TtcxE" to="tpce:2TR3acGo7N1" resolve="members" />
                  <uo k="s:originTrace" v="n:1421157252384533574" />
                </node>
              </node>
              <node concept="2HwmR7" id="MM" role="2OqNvi">
                <uo k="s:originTrace" v="n:1421157252384533575" />
                <node concept="1bVj0M" id="MP" role="23t8la">
                  <uo k="s:originTrace" v="n:1421157252384533576" />
                  <node concept="3clFbS" id="MQ" role="1bW5cS">
                    <uo k="s:originTrace" v="n:1421157252384533577" />
                    <node concept="3clFbF" id="MS" role="3cqZAp">
                      <uo k="s:originTrace" v="n:1421157252384533578" />
                      <node concept="1Wc70l" id="MT" role="3clFbG">
                        <uo k="s:originTrace" v="n:1421157252384533579" />
                        <node concept="3y3z36" id="MU" role="3uHU7B">
                          <uo k="s:originTrace" v="n:1421157252384533580" />
                          <node concept="37vLTw" id="MW" role="3uHU7w">
                            <ref role="3cqZAo" node="KC" resolve="emd" />
                            <uo k="s:originTrace" v="n:1421157252384533581" />
                          </node>
                          <node concept="37vLTw" id="MX" role="3uHU7B">
                            <ref role="3cqZAo" node="MR" resolve="it" />
                            <uo k="s:originTrace" v="n:1421157252384533582" />
                          </node>
                        </node>
                        <node concept="17R0WA" id="MV" role="3uHU7w">
                          <uo k="s:originTrace" v="n:1421157252384533583" />
                          <node concept="2OqwBi" id="MY" role="3uHU7w">
                            <uo k="s:originTrace" v="n:1421157252384533584" />
                            <node concept="37vLTw" id="N0" role="2Oq$k0">
                              <ref role="3cqZAo" node="KC" resolve="emd" />
                              <uo k="s:originTrace" v="n:1421157252384533585" />
                            </node>
                            <node concept="3TrcHB" id="N1" role="2OqNvi">
                              <ref role="3TsBF5" to="tpce:1eSXJRel0SS" resolve="memberId" />
                              <uo k="s:originTrace" v="n:1421157252384533586" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="MZ" role="3uHU7B">
                            <uo k="s:originTrace" v="n:1421157252384533587" />
                            <node concept="37vLTw" id="N2" role="2Oq$k0">
                              <ref role="3cqZAo" node="MR" resolve="it" />
                              <uo k="s:originTrace" v="n:1421157252384533588" />
                            </node>
                            <node concept="3TrcHB" id="N3" role="2OqNvi">
                              <ref role="3TsBF5" to="tpce:1eSXJRel0SS" resolve="memberId" />
                              <uo k="s:originTrace" v="n:1421157252384533589" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="MR" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <uo k="s:originTrace" v="n:6847626768367732809" />
                    <node concept="2jxLKc" id="N4" role="1tU5fm">
                      <uo k="s:originTrace" v="n:6847626768367732810" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="KG" role="1B3o_S">
        <uo k="s:originTrace" v="n:1421157252384318936" />
      </node>
    </node>
    <node concept="3clFb_" id="Ku" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1421157252384318936" />
      <node concept="3bZ5Sz" id="N5" role="3clF45">
        <uo k="s:originTrace" v="n:1421157252384318936" />
      </node>
      <node concept="3clFbS" id="N6" role="3clF47">
        <uo k="s:originTrace" v="n:1421157252384318936" />
        <node concept="3cpWs6" id="N8" role="3cqZAp">
          <uo k="s:originTrace" v="n:1421157252384318936" />
          <node concept="35c_gC" id="N9" role="3cqZAk">
            <ref role="35c_gD" to="tpce:2TR3acGo7Lw" resolve="EnumerationMemberDeclaration" />
            <uo k="s:originTrace" v="n:1421157252384318936" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="N7" role="1B3o_S">
        <uo k="s:originTrace" v="n:1421157252384318936" />
      </node>
    </node>
    <node concept="3clFb_" id="Kv" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1421157252384318936" />
      <node concept="37vLTG" id="Na" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1421157252384318936" />
        <node concept="3Tqbb2" id="Ne" role="1tU5fm">
          <uo k="s:originTrace" v="n:1421157252384318936" />
        </node>
      </node>
      <node concept="3clFbS" id="Nb" role="3clF47">
        <uo k="s:originTrace" v="n:1421157252384318936" />
        <node concept="9aQIb" id="Nf" role="3cqZAp">
          <uo k="s:originTrace" v="n:1421157252384318936" />
          <node concept="3clFbS" id="Ng" role="9aQI4">
            <uo k="s:originTrace" v="n:1421157252384318936" />
            <node concept="3cpWs6" id="Nh" role="3cqZAp">
              <uo k="s:originTrace" v="n:1421157252384318936" />
              <node concept="2ShNRf" id="Ni" role="3cqZAk">
                <uo k="s:originTrace" v="n:1421157252384318936" />
                <node concept="1pGfFk" id="Nj" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1421157252384318936" />
                  <node concept="2OqwBi" id="Nk" role="37wK5m">
                    <uo k="s:originTrace" v="n:1421157252384318936" />
                    <node concept="2OqwBi" id="Nm" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1421157252384318936" />
                      <node concept="liA8E" id="No" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1421157252384318936" />
                      </node>
                      <node concept="2JrnkZ" id="Np" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1421157252384318936" />
                        <node concept="37vLTw" id="Nq" role="2JrQYb">
                          <ref role="3cqZAo" node="Na" resolve="argument" />
                          <uo k="s:originTrace" v="n:1421157252384318936" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="Nn" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1421157252384318936" />
                      <node concept="1rXfSq" id="Nr" role="37wK5m">
                        <ref role="37wK5l" node="Ku" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1421157252384318936" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="Nl" role="37wK5m">
                    <uo k="s:originTrace" v="n:1421157252384318936" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="Nc" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1421157252384318936" />
      </node>
      <node concept="3Tm1VV" id="Nd" role="1B3o_S">
        <uo k="s:originTrace" v="n:1421157252384318936" />
      </node>
    </node>
    <node concept="3clFb_" id="Kw" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1421157252384318936" />
      <node concept="3clFbS" id="Ns" role="3clF47">
        <uo k="s:originTrace" v="n:1421157252384318936" />
        <node concept="3cpWs6" id="Nv" role="3cqZAp">
          <uo k="s:originTrace" v="n:1421157252384318936" />
          <node concept="3clFbT" id="Nw" role="3cqZAk">
            <uo k="s:originTrace" v="n:1421157252384318936" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="Nt" role="3clF45">
        <uo k="s:originTrace" v="n:1421157252384318936" />
      </node>
      <node concept="3Tm1VV" id="Nu" role="1B3o_S">
        <uo k="s:originTrace" v="n:1421157252384318936" />
      </node>
    </node>
    <node concept="3uibUv" id="Kx" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1421157252384318936" />
    </node>
    <node concept="3uibUv" id="Ky" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1421157252384318936" />
    </node>
    <node concept="3Tm1VV" id="Kz" role="1B3o_S">
      <uo k="s:originTrace" v="n:1421157252384318936" />
    </node>
  </node>
  <node concept="312cEu" id="Nx">
    <property role="TrG5h" value="check_ExtendedConceptsAreInExtendedLanguages_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:1235133131950" />
    <node concept="3clFbW" id="Ny" role="jymVt">
      <uo k="s:originTrace" v="n:1235133131950" />
      <node concept="3clFbS" id="NE" role="3clF47">
        <uo k="s:originTrace" v="n:1235133131950" />
      </node>
      <node concept="3Tm1VV" id="NF" role="1B3o_S">
        <uo k="s:originTrace" v="n:1235133131950" />
      </node>
      <node concept="3cqZAl" id="NG" role="3clF45">
        <uo k="s:originTrace" v="n:1235133131950" />
      </node>
    </node>
    <node concept="3clFb_" id="Nz" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1235133131950" />
      <node concept="3cqZAl" id="NH" role="3clF45">
        <uo k="s:originTrace" v="n:1235133131950" />
      </node>
      <node concept="37vLTG" id="NI" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="cd" />
        <uo k="s:originTrace" v="n:1235133131950" />
        <node concept="3Tqbb2" id="NN" role="1tU5fm">
          <uo k="s:originTrace" v="n:1235133131950" />
        </node>
      </node>
      <node concept="37vLTG" id="NJ" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1235133131950" />
        <node concept="3uibUv" id="NO" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1235133131950" />
        </node>
      </node>
      <node concept="37vLTG" id="NK" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1235133131950" />
        <node concept="3uibUv" id="NP" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1235133131950" />
        </node>
      </node>
      <node concept="3clFbS" id="NL" role="3clF47">
        <uo k="s:originTrace" v="n:1235133131951" />
        <node concept="3cpWs8" id="NQ" role="3cqZAp">
          <uo k="s:originTrace" v="n:1235136293835" />
          <node concept="3cpWsn" id="NW" role="3cpWs9">
            <property role="TrG5h" value="language" />
            <uo k="s:originTrace" v="n:1235136293836" />
            <node concept="3uibUv" id="NX" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
              <uo k="s:originTrace" v="n:1235136293837" />
            </node>
            <node concept="2YIFZM" id="NY" role="33vP2m">
              <ref role="37wK5l" to="iwwu:i0YipiN" resolve="getDeclaringLanguage" />
              <ref role="1Pybhc" to="iwwu:i0YipgJ" resolve="SModelUtil" />
              <uo k="s:originTrace" v="n:1238249738340" />
              <node concept="37vLTw" id="NZ" role="37wK5m">
                <ref role="3cqZAo" node="NI" resolve="cd" />
                <uo k="s:originTrace" v="n:1238249738342" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="NR" role="3cqZAp">
          <uo k="s:originTrace" v="n:1237222084073" />
          <node concept="3clFbS" id="O0" role="3clFbx">
            <uo k="s:originTrace" v="n:1237222084074" />
            <node concept="3cpWs6" id="O2" role="3cqZAp">
              <uo k="s:originTrace" v="n:1237222095942" />
            </node>
          </node>
          <node concept="3clFbC" id="O1" role="3clFbw">
            <uo k="s:originTrace" v="n:1237222090360" />
            <node concept="10Nm6u" id="O3" role="3uHU7w">
              <uo k="s:originTrace" v="n:1237222091785" />
            </node>
            <node concept="37vLTw" id="O4" role="3uHU7B">
              <ref role="3cqZAo" node="NW" resolve="language" />
              <uo k="s:originTrace" v="n:4265636116363111387" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="NS" role="3cqZAp">
          <uo k="s:originTrace" v="n:1235136357248" />
          <node concept="3cpWsn" id="O5" role="3cpWs9">
            <property role="TrG5h" value="extendedLanguages" />
            <uo k="s:originTrace" v="n:1235136357249" />
            <node concept="2OqwBi" id="O6" role="33vP2m">
              <uo k="s:originTrace" v="n:4596219658198212804" />
              <node concept="37vLTw" id="O8" role="2Oq$k0">
                <ref role="3cqZAo" node="NW" resolve="language" />
                <uo k="s:originTrace" v="n:4596219658198210988" />
              </node>
              <node concept="liA8E" id="O9" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~Language.getAllExtendedLanguages()" resolve="getAllExtendedLanguages" />
                <uo k="s:originTrace" v="n:4596219658198217198" />
              </node>
            </node>
            <node concept="2hMVRd" id="O7" role="1tU5fm">
              <uo k="s:originTrace" v="n:2856694665814355848" />
              <node concept="3uibUv" id="Oa" role="2hN53Y">
                <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                <uo k="s:originTrace" v="n:2856694665814355849" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="NT" role="3cqZAp">
          <uo k="s:originTrace" v="n:1235136330931" />
          <node concept="3cpWsn" id="Ob" role="3cpWs9">
            <property role="TrG5h" value="superConcepts" />
            <uo k="s:originTrace" v="n:1235136330932" />
            <node concept="2I9FWS" id="Oc" role="1tU5fm">
              <ref role="2I9WkF" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
              <uo k="s:originTrace" v="n:1235136330933" />
            </node>
            <node concept="2ShNRf" id="Od" role="33vP2m">
              <uo k="s:originTrace" v="n:8100157207675135669" />
              <node concept="2T8Vx0" id="Oe" role="2ShVmc">
                <uo k="s:originTrace" v="n:8100157207675135670" />
                <node concept="2I9FWS" id="Of" role="2T96Bj">
                  <ref role="2I9WkF" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                  <uo k="s:originTrace" v="n:8100157207675135671" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="NU" role="3cqZAp">
          <uo k="s:originTrace" v="n:8100157207674920064" />
          <node concept="3clFbS" id="Og" role="3clFbx">
            <uo k="s:originTrace" v="n:8100157207674920066" />
            <node concept="3clFbF" id="Oj" role="3cqZAp">
              <uo k="s:originTrace" v="n:8100157207675031996" />
              <node concept="2OqwBi" id="Oo" role="3clFbG">
                <uo k="s:originTrace" v="n:8100157207675143068" />
                <node concept="37vLTw" id="Op" role="2Oq$k0">
                  <ref role="3cqZAo" node="Ob" resolve="superConcepts" />
                  <uo k="s:originTrace" v="n:8100157207675031994" />
                </node>
                <node concept="TSZUe" id="Oq" role="2OqNvi">
                  <uo k="s:originTrace" v="n:8100157207675164024" />
                  <node concept="2OqwBi" id="Or" role="25WWJ7">
                    <uo k="s:originTrace" v="n:8100157207675097252" />
                    <node concept="1PxgMI" id="Os" role="2Oq$k0">
                      <property role="1BlNFB" value="true" />
                      <uo k="s:originTrace" v="n:8100157207675046112" />
                      <node concept="37vLTw" id="Ou" role="1m5AlR">
                        <ref role="3cqZAo" node="NI" resolve="cd" />
                        <uo k="s:originTrace" v="n:8100157207675035322" />
                      </node>
                      <node concept="chp4Y" id="Ov" role="3oSUPX">
                        <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                        <uo k="s:originTrace" v="n:8089793891579205738" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="Ot" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpce:f_TJDff" resolve="extends" />
                      <uo k="s:originTrace" v="n:8100157207675103542" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="Ok" role="3cqZAp">
              <uo k="s:originTrace" v="n:8100157207675282989" />
              <node concept="1PaTwC" id="Ow" role="1aUNEU">
                <uo k="s:originTrace" v="n:700871696606817663" />
                <node concept="3oM_SD" id="Ox" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                  <uo k="s:originTrace" v="n:700871696606817664" />
                </node>
                <node concept="3oM_SD" id="Oy" role="1PaTwD">
                  <property role="3oM_SC" value="implemented" />
                  <uo k="s:originTrace" v="n:700871696606817665" />
                </node>
                <node concept="3oM_SD" id="Oz" role="1PaTwD">
                  <property role="3oM_SC" value="interfaces," />
                  <uo k="s:originTrace" v="n:700871696606817666" />
                </node>
                <node concept="3oM_SD" id="O$" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                  <uo k="s:originTrace" v="n:700871696606817667" />
                </node>
                <node concept="3oM_SD" id="O_" role="1PaTwD">
                  <property role="3oM_SC" value="do" />
                  <uo k="s:originTrace" v="n:700871696606817668" />
                </node>
                <node concept="3oM_SD" id="OA" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                  <uo k="s:originTrace" v="n:700871696606817669" />
                </node>
                <node concept="3oM_SD" id="OB" role="1PaTwD">
                  <property role="3oM_SC" value="require" />
                  <uo k="s:originTrace" v="n:700871696606817670" />
                </node>
                <node concept="3oM_SD" id="OC" role="1PaTwD">
                  <property role="3oM_SC" value="extends" />
                  <uo k="s:originTrace" v="n:700871696606817671" />
                </node>
                <node concept="3oM_SD" id="OD" role="1PaTwD">
                  <property role="3oM_SC" value="between" />
                  <uo k="s:originTrace" v="n:700871696606817672" />
                </node>
                <node concept="3oM_SD" id="OE" role="1PaTwD">
                  <property role="3oM_SC" value="languages." />
                  <uo k="s:originTrace" v="n:700871696606817673" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="Ol" role="3cqZAp">
              <uo k="s:originTrace" v="n:8100157207675307669" />
              <node concept="1PaTwC" id="OF" role="1aUNEU">
                <uo k="s:originTrace" v="n:700871696606817674" />
                <node concept="3oM_SD" id="OG" role="1PaTwD">
                  <property role="3oM_SC" value="I'm" />
                  <uo k="s:originTrace" v="n:700871696606817675" />
                </node>
                <node concept="3oM_SD" id="OH" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                  <uo k="s:originTrace" v="n:700871696606817676" />
                </node>
                <node concept="3oM_SD" id="OI" role="1PaTwD">
                  <property role="3oM_SC" value="quite" />
                  <uo k="s:originTrace" v="n:700871696606817677" />
                </node>
                <node concept="3oM_SD" id="OJ" role="1PaTwD">
                  <property role="3oM_SC" value="sure" />
                  <uo k="s:originTrace" v="n:700871696606817678" />
                </node>
                <node concept="3oM_SD" id="OK" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                  <uo k="s:originTrace" v="n:700871696606817679" />
                </node>
                <node concept="3oM_SD" id="OL" role="1PaTwD">
                  <property role="3oM_SC" value="shall" />
                  <uo k="s:originTrace" v="n:700871696606817680" />
                </node>
                <node concept="3oM_SD" id="OM" role="1PaTwD">
                  <property role="3oM_SC" value="demand" />
                  <uo k="s:originTrace" v="n:700871696606817681" />
                </node>
                <node concept="3oM_SD" id="ON" role="1PaTwD">
                  <property role="3oM_SC" value="extends" />
                  <uo k="s:originTrace" v="n:700871696606817682" />
                </node>
                <node concept="3oM_SD" id="OO" role="1PaTwD">
                  <property role="3oM_SC" value="between" />
                  <uo k="s:originTrace" v="n:700871696606817683" />
                </node>
                <node concept="3oM_SD" id="OP" role="1PaTwD">
                  <property role="3oM_SC" value="languages" />
                  <uo k="s:originTrace" v="n:700871696606817684" />
                </node>
                <node concept="3oM_SD" id="OQ" role="1PaTwD">
                  <property role="3oM_SC" value="even" />
                  <uo k="s:originTrace" v="n:700871696606817685" />
                </node>
                <node concept="3oM_SD" id="OR" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                  <uo k="s:originTrace" v="n:700871696606817686" />
                </node>
                <node concept="3oM_SD" id="OS" role="1PaTwD">
                  <property role="3oM_SC" value="super-concepts," />
                  <uo k="s:originTrace" v="n:700871696606817687" />
                </node>
                <node concept="3oM_SD" id="OT" role="1PaTwD">
                  <property role="3oM_SC" value="but" />
                  <uo k="s:originTrace" v="n:700871696606817688" />
                </node>
                <node concept="3oM_SD" id="OU" role="1PaTwD">
                  <property role="3oM_SC" value="it's" />
                  <uo k="s:originTrace" v="n:700871696606817689" />
                </node>
                <node concept="3oM_SD" id="OV" role="1PaTwD">
                  <property role="3oM_SC" value="just" />
                  <uo k="s:originTrace" v="n:700871696606817690" />
                </node>
                <node concept="3oM_SD" id="OW" role="1PaTwD">
                  <property role="3oM_SC" value="too" />
                  <uo k="s:originTrace" v="n:700871696606817691" />
                </node>
                <node concept="3oM_SD" id="OX" role="1PaTwD">
                  <property role="3oM_SC" value="much" />
                  <uo k="s:originTrace" v="n:700871696606817692" />
                </node>
                <node concept="3oM_SD" id="OY" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                  <uo k="s:originTrace" v="n:700871696606817693" />
                </node>
                <node concept="3oM_SD" id="OZ" role="1PaTwD">
                  <property role="3oM_SC" value="lift" />
                  <uo k="s:originTrace" v="n:700871696606817694" />
                </node>
                <node concept="3oM_SD" id="P0" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                  <uo k="s:originTrace" v="n:700871696606817695" />
                </node>
                <node concept="3oM_SD" id="P1" role="1PaTwD">
                  <property role="3oM_SC" value="restriction" />
                  <uo k="s:originTrace" v="n:700871696606817696" />
                </node>
                <node concept="3oM_SD" id="P2" role="1PaTwD">
                  <property role="3oM_SC" value="now" />
                  <uo k="s:originTrace" v="n:700871696606817697" />
                </node>
                <node concept="3oM_SD" id="P3" role="1PaTwD">
                  <property role="3oM_SC" value=";)" />
                  <uo k="s:originTrace" v="n:700871696606817698" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="Om" role="3cqZAp">
              <uo k="s:originTrace" v="n:8100157207675322062" />
              <node concept="1PaTwC" id="P4" role="1aUNEU">
                <uo k="s:originTrace" v="n:700871696606817699" />
                <node concept="3oM_SD" id="P5" role="1PaTwD">
                  <property role="3oM_SC" value="Generally," />
                  <uo k="s:originTrace" v="n:700871696606817700" />
                </node>
                <node concept="3oM_SD" id="P6" role="1PaTwD">
                  <property role="3oM_SC" value="however," />
                  <uo k="s:originTrace" v="n:700871696606817701" />
                </node>
                <node concept="3oM_SD" id="P7" role="1PaTwD">
                  <property role="3oM_SC" value="it" />
                  <uo k="s:originTrace" v="n:700871696606817702" />
                </node>
                <node concept="3oM_SD" id="P8" role="1PaTwD">
                  <property role="3oM_SC" value="seems" />
                  <uo k="s:originTrace" v="n:700871696606817703" />
                </node>
                <node concept="3oM_SD" id="P9" role="1PaTwD">
                  <property role="3oM_SC" value="reasonable" />
                  <uo k="s:originTrace" v="n:700871696606817704" />
                </node>
                <node concept="3oM_SD" id="Pa" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                  <uo k="s:originTrace" v="n:700871696606817705" />
                </node>
                <node concept="3oM_SD" id="Pb" role="1PaTwD">
                  <property role="3oM_SC" value="demand" />
                  <uo k="s:originTrace" v="n:700871696606817706" />
                </node>
                <node concept="3oM_SD" id="Pc" role="1PaTwD">
                  <property role="3oM_SC" value="extends" />
                  <uo k="s:originTrace" v="n:700871696606817707" />
                </node>
                <node concept="3oM_SD" id="Pd" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                  <uo k="s:originTrace" v="n:700871696606817708" />
                </node>
                <node concept="3oM_SD" id="Pe" role="1PaTwD">
                  <property role="3oM_SC" value="super-concepts" />
                  <uo k="s:originTrace" v="n:700871696606817709" />
                </node>
                <node concept="3oM_SD" id="Pf" role="1PaTwD">
                  <property role="3oM_SC" value="case," />
                  <uo k="s:originTrace" v="n:700871696606817710" />
                </node>
                <node concept="3oM_SD" id="Pg" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                  <uo k="s:originTrace" v="n:700871696606817711" />
                </node>
                <node concept="3oM_SD" id="Ph" role="1PaTwD">
                  <property role="3oM_SC" value="it" />
                  <uo k="s:originTrace" v="n:700871696606817712" />
                </node>
                <node concept="3oM_SD" id="Pi" role="1PaTwD">
                  <property role="3oM_SC" value="means" />
                  <uo k="s:originTrace" v="n:700871696606817713" />
                </node>
                <node concept="3oM_SD" id="Pj" role="1PaTwD">
                  <property role="3oM_SC" value="re-use" />
                  <uo k="s:originTrace" v="n:700871696606817714" />
                </node>
                <node concept="3oM_SD" id="Pk" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                  <uo k="s:originTrace" v="n:700871696606817715" />
                </node>
                <node concept="3oM_SD" id="Pl" role="1PaTwD">
                  <property role="3oM_SC" value="functionality," />
                  <uo k="s:originTrace" v="n:700871696606817716" />
                </node>
                <node concept="3oM_SD" id="Pm" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                  <uo k="s:originTrace" v="n:700871696606817717" />
                </node>
                <node concept="3oM_SD" id="Pn" role="1PaTwD">
                  <property role="3oM_SC" value="absence" />
                  <uo k="s:originTrace" v="n:700871696606817718" />
                </node>
                <node concept="3oM_SD" id="Po" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                  <uo k="s:originTrace" v="n:700871696606817719" />
                </node>
                <node concept="3oM_SD" id="Pp" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                  <uo k="s:originTrace" v="n:700871696606817720" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="On" role="3cqZAp">
              <uo k="s:originTrace" v="n:8100157207675342863" />
              <node concept="1PaTwC" id="Pq" role="1aUNEU">
                <uo k="s:originTrace" v="n:700871696606817721" />
                <node concept="3oM_SD" id="Pr" role="1PaTwD">
                  <property role="3oM_SC" value="constraint" />
                  <uo k="s:originTrace" v="n:700871696606817722" />
                </node>
                <node concept="3oM_SD" id="Ps" role="1PaTwD">
                  <property role="3oM_SC" value="would" />
                  <uo k="s:originTrace" v="n:700871696606817723" />
                </node>
                <node concept="3oM_SD" id="Pt" role="1PaTwD">
                  <property role="3oM_SC" value="encourage" />
                  <uo k="s:originTrace" v="n:700871696606817724" />
                </node>
                <node concept="3oM_SD" id="Pu" role="1PaTwD">
                  <property role="3oM_SC" value="people" />
                  <uo k="s:originTrace" v="n:700871696606817725" />
                </node>
                <node concept="3oM_SD" id="Pv" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                  <uo k="s:originTrace" v="n:700871696606817726" />
                </node>
                <node concept="3oM_SD" id="Pw" role="1PaTwD">
                  <property role="3oM_SC" value="have" />
                  <uo k="s:originTrace" v="n:700871696606817727" />
                </node>
                <node concept="3oM_SD" id="Px" role="1PaTwD">
                  <property role="3oM_SC" value="bad" />
                  <uo k="s:originTrace" v="n:700871696606817728" />
                </node>
                <node concept="3oM_SD" id="Py" role="1PaTwD">
                  <property role="3oM_SC" value="design" />
                  <uo k="s:originTrace" v="n:700871696606817729" />
                </node>
                <node concept="3oM_SD" id="Pz" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                  <uo k="s:originTrace" v="n:700871696606817730" />
                </node>
                <node concept="3oM_SD" id="P$" role="1PaTwD">
                  <property role="3oM_SC" value="extend" />
                  <uo k="s:originTrace" v="n:700871696606817731" />
                </node>
                <node concept="3oM_SD" id="P_" role="1PaTwD">
                  <property role="3oM_SC" value="concepts" />
                  <uo k="s:originTrace" v="n:700871696606817732" />
                </node>
                <node concept="3oM_SD" id="PA" role="1PaTwD">
                  <property role="3oM_SC" value="they" />
                  <uo k="s:originTrace" v="n:700871696606817733" />
                </node>
                <node concept="3oM_SD" id="PB" role="1PaTwD">
                  <property role="3oM_SC" value="shall" />
                  <uo k="s:originTrace" v="n:700871696606817734" />
                </node>
                <node concept="3oM_SD" id="PC" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                  <uo k="s:originTrace" v="n:700871696606817735" />
                </node>
                <node concept="3oM_SD" id="PD" role="1PaTwD">
                  <property role="3oM_SC" value="extend." />
                  <uo k="s:originTrace" v="n:700871696606817736" />
                </node>
                <node concept="3oM_SD" id="PE" role="1PaTwD">
                  <property role="3oM_SC" value="OTOH," />
                  <uo k="s:originTrace" v="n:700871696606817737" />
                </node>
                <node concept="3oM_SD" id="PF" role="1PaTwD">
                  <property role="3oM_SC" value="each" />
                  <uo k="s:originTrace" v="n:700871696606817738" />
                </node>
                <node concept="3oM_SD" id="PG" role="1PaTwD">
                  <property role="3oM_SC" value="language" />
                  <uo k="s:originTrace" v="n:700871696606817739" />
                </node>
                <node concept="3oM_SD" id="PH" role="1PaTwD">
                  <property role="3oM_SC" value="extending" />
                  <uo k="s:originTrace" v="n:700871696606817740" />
                </node>
                <node concept="3oM_SD" id="PI" role="1PaTwD">
                  <property role="3oM_SC" value="lang.core" />
                  <uo k="s:originTrace" v="n:700871696606817741" />
                </node>
                <node concept="3oM_SD" id="PJ" role="1PaTwD">
                  <property role="3oM_SC" value="look" />
                  <uo k="s:originTrace" v="n:700871696606817742" />
                </node>
                <node concept="3oM_SD" id="PK" role="1PaTwD">
                  <property role="3oM_SC" value="odd." />
                  <uo k="s:originTrace" v="n:700871696606817743" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="Oh" role="3clFbw">
            <uo k="s:originTrace" v="n:8100157207674924449" />
            <node concept="37vLTw" id="PL" role="2Oq$k0">
              <ref role="3cqZAo" node="NI" resolve="cd" />
              <uo k="s:originTrace" v="n:8100157207674924237" />
            </node>
            <node concept="1mIQ4w" id="PM" role="2OqNvi">
              <uo k="s:originTrace" v="n:8100157207674929958" />
              <node concept="chp4Y" id="PN" role="cj9EA">
                <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                <uo k="s:originTrace" v="n:8100157207674930031" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="Oi" role="3eNLev">
            <uo k="s:originTrace" v="n:8100157207674930165" />
            <node concept="2OqwBi" id="PO" role="3eO9$A">
              <uo k="s:originTrace" v="n:8100157207674934599" />
              <node concept="37vLTw" id="PQ" role="2Oq$k0">
                <ref role="3cqZAo" node="NI" resolve="cd" />
                <uo k="s:originTrace" v="n:8100157207674934387" />
              </node>
              <node concept="1mIQ4w" id="PR" role="2OqNvi">
                <uo k="s:originTrace" v="n:8100157207674940239" />
                <node concept="chp4Y" id="PS" role="cj9EA">
                  <ref role="cht4Q" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                  <uo k="s:originTrace" v="n:8100157207674940312" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="PP" role="3eOfB_">
              <uo k="s:originTrace" v="n:8100157207674930167" />
              <node concept="3SKdUt" id="PT" role="3cqZAp">
                <uo k="s:originTrace" v="n:2268144450676781883" />
                <node concept="1PaTwC" id="PX" role="1aUNEU">
                  <uo k="s:originTrace" v="n:2268144450676781884" />
                  <node concept="3oM_SD" id="PY" role="1PaTwD">
                    <property role="3oM_SC" value="we" />
                    <uo k="s:originTrace" v="n:2268144450676782152" />
                  </node>
                  <node concept="3oM_SD" id="PZ" role="1PaTwD">
                    <property role="3oM_SC" value="exclude" />
                    <uo k="s:originTrace" v="n:2268144450676782154" />
                  </node>
                  <node concept="3oM_SD" id="Q0" role="1PaTwD">
                    <property role="3oM_SC" value="'marker'" />
                    <uo k="s:originTrace" v="n:2268144450676782167" />
                  </node>
                  <node concept="3oM_SD" id="Q1" role="1PaTwD">
                    <property role="3oM_SC" value="interfaces" />
                    <uo k="s:originTrace" v="n:2268144450676782181" />
                  </node>
                  <node concept="3oM_SD" id="Q2" role="1PaTwD">
                    <property role="3oM_SC" value="here." />
                    <uo k="s:originTrace" v="n:2268144450676782196" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="PU" role="3cqZAp">
                <uo k="s:originTrace" v="n:2268144450676782538" />
                <node concept="1PaTwC" id="Q3" role="1aUNEU">
                  <uo k="s:originTrace" v="n:2268144450676782539" />
                  <node concept="3oM_SD" id="Q4" role="1PaTwD">
                    <property role="3oM_SC" value="FIXME" />
                    <uo k="s:originTrace" v="n:2268144450676782801" />
                  </node>
                  <node concept="3oM_SD" id="Q5" role="1PaTwD">
                    <property role="3oM_SC" value="use" />
                    <uo k="s:originTrace" v="n:2268144450676782803" />
                  </node>
                  <node concept="3oM_SD" id="Q6" role="1PaTwD">
                    <property role="3oM_SC" value="ConceptDeclarationScanner," />
                    <uo k="s:originTrace" v="n:2268144450676782816" />
                  </node>
                  <node concept="3oM_SD" id="Q7" role="1PaTwD">
                    <property role="3oM_SC" value="instead," />
                    <uo k="s:originTrace" v="n:2268144450676782926" />
                  </node>
                  <node concept="3oM_SD" id="Q8" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                    <uo k="s:originTrace" v="n:2268144450676782943" />
                  </node>
                  <node concept="3oM_SD" id="Q9" role="1PaTwD">
                    <property role="3oM_SC" value="be" />
                    <uo k="s:originTrace" v="n:2268144450676782951" />
                  </node>
                  <node concept="3oM_SD" id="Qa" role="1PaTwD">
                    <property role="3oM_SC" value="consistent" />
                    <uo k="s:originTrace" v="n:2268144450676782960" />
                  </node>
                  <node concept="3oM_SD" id="Qb" role="1PaTwD">
                    <property role="3oM_SC" value="what" />
                    <uo k="s:originTrace" v="n:2268144450676782980" />
                  </node>
                  <node concept="3oM_SD" id="Qc" role="1PaTwD">
                    <property role="3oM_SC" value="we" />
                    <uo k="s:originTrace" v="n:2268144450676783001" />
                  </node>
                  <node concept="3oM_SD" id="Qd" role="1PaTwD">
                    <property role="3oM_SC" value="treat" />
                    <uo k="s:originTrace" v="n:2268144450676783013" />
                  </node>
                  <node concept="3oM_SD" id="Qe" role="1PaTwD">
                    <property role="3oM_SC" value="as" />
                    <uo k="s:originTrace" v="n:2268144450676783036" />
                  </node>
                  <node concept="3oM_SD" id="Qf" role="1PaTwD">
                    <property role="3oM_SC" value="a" />
                    <uo k="s:originTrace" v="n:2268144450676783181" />
                  </node>
                  <node concept="3oM_SD" id="Qg" role="1PaTwD">
                    <property role="3oM_SC" value="requirement" />
                    <uo k="s:originTrace" v="n:2268144450676783216" />
                  </node>
                  <node concept="3oM_SD" id="Qh" role="1PaTwD">
                    <property role="3oM_SC" value="for" />
                    <uo k="s:originTrace" v="n:2268144450676783344" />
                  </node>
                  <node concept="3oM_SD" id="Qi" role="1PaTwD">
                    <property role="3oM_SC" value="'extends'" />
                    <uo k="s:originTrace" v="n:2268144450676783371" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="PV" role="3cqZAp">
                <uo k="s:originTrace" v="n:2268144450676783419" />
                <node concept="1PaTwC" id="Qj" role="1aUNEU">
                  <uo k="s:originTrace" v="n:2268144450676783400" />
                  <node concept="3oM_SD" id="Qk" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                    <uo k="s:originTrace" v="n:2268144450676783399" />
                  </node>
                  <node concept="3oM_SD" id="Ql" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                    <uo k="s:originTrace" v="n:2268144450676783921" />
                  </node>
                  <node concept="3oM_SD" id="Qm" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                    <uo k="s:originTrace" v="n:2268144450676783926" />
                  </node>
                  <node concept="3oM_SD" id="Qn" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                    <uo k="s:originTrace" v="n:2268144450676783932" />
                  </node>
                  <node concept="3oM_SD" id="Qo" role="1PaTwD">
                    <property role="3oM_SC" value="just" />
                    <uo k="s:originTrace" v="n:2268144450676783939" />
                  </node>
                  <node concept="3oM_SD" id="Qp" role="1PaTwD">
                    <property role="3oM_SC" value="need" />
                    <uo k="s:originTrace" v="n:2268144450676782891" />
                  </node>
                  <node concept="3oM_SD" id="Qq" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                    <uo k="s:originTrace" v="n:2268144450676782898" />
                  </node>
                  <node concept="3oM_SD" id="Qr" role="1PaTwD">
                    <property role="3oM_SC" value="refactor" />
                    <uo k="s:originTrace" v="n:2268144450676783967" />
                  </node>
                  <node concept="3oM_SD" id="Qs" role="1PaTwD">
                    <property role="3oM_SC" value="CDS" />
                    <uo k="s:originTrace" v="n:2268144450676783986" />
                  </node>
                  <node concept="3oM_SD" id="Qt" role="1PaTwD">
                    <property role="3oM_SC" value="a" />
                    <uo k="s:originTrace" v="n:2268144450676784006" />
                  </node>
                  <node concept="3oM_SD" id="Qu" role="1PaTwD">
                    <property role="3oM_SC" value="bit" />
                    <uo k="s:originTrace" v="n:2268144450676784017" />
                  </node>
                  <node concept="3oM_SD" id="Qv" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                    <uo k="s:originTrace" v="n:2268144450676784039" />
                  </node>
                  <node concept="3oM_SD" id="Qw" role="1PaTwD">
                    <property role="3oM_SC" value="deal" />
                    <uo k="s:originTrace" v="n:2268144450676784052" />
                  </node>
                  <node concept="3oM_SD" id="Qx" role="1PaTwD">
                    <property role="3oM_SC" value="with" />
                    <uo k="s:originTrace" v="n:2268144450676784222" />
                  </node>
                  <node concept="3oM_SD" id="Qy" role="1PaTwD">
                    <property role="3oM_SC" value="1" />
                    <uo k="s:originTrace" v="n:2268144450676784238" />
                  </node>
                  <node concept="3oM_SD" id="Qz" role="1PaTwD">
                    <property role="3oM_SC" value="concept" />
                    <uo k="s:originTrace" v="n:2268144450676784265" />
                  </node>
                  <node concept="3oM_SD" id="Q$" role="1PaTwD">
                    <property role="3oM_SC" value="declaration," />
                    <uo k="s:originTrace" v="n:2268144450676784293" />
                  </node>
                  <node concept="3oM_SD" id="Q_" role="1PaTwD">
                    <property role="3oM_SC" value="not" />
                    <uo k="s:originTrace" v="n:2268144450676784332" />
                  </node>
                  <node concept="3oM_SD" id="QA" role="1PaTwD">
                    <property role="3oM_SC" value="a" />
                    <uo k="s:originTrace" v="n:2268144450676784352" />
                  </node>
                  <node concept="3oM_SD" id="QB" role="1PaTwD">
                    <property role="3oM_SC" value="whole" />
                    <uo k="s:originTrace" v="n:2268144450676784373" />
                  </node>
                  <node concept="3oM_SD" id="QC" role="1PaTwD">
                    <property role="3oM_SC" value="model" />
                    <uo k="s:originTrace" v="n:2268144450676784405" />
                  </node>
                  <node concept="3oM_SD" id="QD" role="1PaTwD">
                    <uo k="s:originTrace" v="n:2268144450676784167" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="PW" role="3cqZAp">
                <uo k="s:originTrace" v="n:8100157207674975494" />
                <node concept="2OqwBi" id="QE" role="3clFbG">
                  <uo k="s:originTrace" v="n:8100157207675190969" />
                  <node concept="37vLTw" id="QF" role="2Oq$k0">
                    <ref role="3cqZAo" node="Ob" resolve="superConcepts" />
                    <uo k="s:originTrace" v="n:8100157207674975493" />
                  </node>
                  <node concept="X8dFx" id="QG" role="2OqNvi">
                    <uo k="s:originTrace" v="n:8100157207675212415" />
                    <node concept="2OqwBi" id="QH" role="25WWJ7">
                      <uo k="s:originTrace" v="n:2268144450676678408" />
                      <node concept="2OqwBi" id="QI" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:8100157207675001437" />
                        <node concept="2OqwBi" id="QK" role="2Oq$k0">
                          <uo k="s:originTrace" v="n:8100157207674987989" />
                          <node concept="1PxgMI" id="QM" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <uo k="s:originTrace" v="n:8100157207674979296" />
                            <node concept="37vLTw" id="QO" role="1m5AlR">
                              <ref role="3cqZAo" node="NI" resolve="cd" />
                              <uo k="s:originTrace" v="n:8100157207674978820" />
                            </node>
                            <node concept="chp4Y" id="QP" role="3oSUPX">
                              <ref role="cht4Q" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                              <uo k="s:originTrace" v="n:8089793891579205725" />
                            </node>
                          </node>
                          <node concept="3Tsc0h" id="QN" role="2OqNvi">
                            <ref role="3TtcxE" to="tpce:h0PrDRO" resolve="extends" />
                            <uo k="s:originTrace" v="n:8100157207674993349" />
                          </node>
                        </node>
                        <node concept="13MTOL" id="QL" role="2OqNvi">
                          <ref role="13MTZf" to="tpce:h0PrY0D" resolve="intfc" />
                          <uo k="s:originTrace" v="n:8100157207675011284" />
                        </node>
                      </node>
                      <node concept="3zZkjj" id="QJ" role="2OqNvi">
                        <uo k="s:originTrace" v="n:2268144450676698366" />
                        <node concept="1bVj0M" id="QQ" role="23t8la">
                          <uo k="s:originTrace" v="n:2268144450676698368" />
                          <node concept="3clFbS" id="QR" role="1bW5cS">
                            <uo k="s:originTrace" v="n:2268144450676698369" />
                            <node concept="3clFbF" id="QT" role="3cqZAp">
                              <uo k="s:originTrace" v="n:2268144450676704498" />
                              <node concept="2OqwBi" id="QU" role="3clFbG">
                                <uo k="s:originTrace" v="n:2268144450676755514" />
                                <node concept="2OqwBi" id="QV" role="2Oq$k0">
                                  <uo k="s:originTrace" v="n:2268144450676716216" />
                                  <node concept="37vLTw" id="QX" role="2Oq$k0">
                                    <ref role="3cqZAo" node="QS" resolve="it" />
                                    <uo k="s:originTrace" v="n:2268144450676704497" />
                                  </node>
                                  <node concept="3CFZ6_" id="QY" role="2OqNvi">
                                    <uo k="s:originTrace" v="n:2268144450676728483" />
                                    <node concept="3CFYIy" id="QZ" role="3CFYIz">
                                      <ref role="3CFYIx" to="tpce:4PXMYyZ4PZg" resolve="MarkerInterfaceAttribute" />
                                      <uo k="s:originTrace" v="n:2268144450676739160" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3w_OXm" id="QW" role="2OqNvi">
                                  <uo k="s:originTrace" v="n:2268144450676757525" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="QS" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <uo k="s:originTrace" v="n:6847626768367732775" />
                            <node concept="2jxLKc" id="R0" role="1tU5fm">
                              <uo k="s:originTrace" v="n:6847626768367732776" />
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
        <node concept="1DcWWT" id="NV" role="3cqZAp">
          <uo k="s:originTrace" v="n:1235136403640" />
          <node concept="3clFbS" id="R1" role="2LFqv$">
            <uo k="s:originTrace" v="n:1235136403641" />
            <node concept="3cpWs8" id="R4" role="3cqZAp">
              <uo k="s:originTrace" v="n:1235136450723" />
              <node concept="3cpWsn" id="R7" role="3cpWs9">
                <property role="TrG5h" value="conceptLanguage" />
                <uo k="s:originTrace" v="n:1235136450724" />
                <node concept="3uibUv" id="R8" role="1tU5fm">
                  <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                  <uo k="s:originTrace" v="n:1235136450725" />
                </node>
                <node concept="2YIFZM" id="R9" role="33vP2m">
                  <ref role="37wK5l" to="iwwu:i0YipiN" resolve="getDeclaringLanguage" />
                  <ref role="1Pybhc" to="iwwu:i0YipgJ" resolve="SModelUtil" />
                  <uo k="s:originTrace" v="n:1238249706944" />
                  <node concept="37vLTw" id="Ra" role="37wK5m">
                    <ref role="3cqZAo" node="R3" resolve="superConcept" />
                    <uo k="s:originTrace" v="n:4265636116363091878" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="R5" role="3cqZAp">
              <uo k="s:originTrace" v="n:6060783635544711525" />
              <node concept="3clFbS" id="Rb" role="3clFbx">
                <uo k="s:originTrace" v="n:6060783635544711526" />
                <node concept="3N13vt" id="Rd" role="3cqZAp">
                  <uo k="s:originTrace" v="n:6060783635544711535" />
                </node>
              </node>
              <node concept="22lmx$" id="Rc" role="3clFbw">
                <uo k="s:originTrace" v="n:8100157207675274499" />
                <node concept="3clFbC" id="Re" role="3uHU7B">
                  <uo k="s:originTrace" v="n:6060783635544711530" />
                  <node concept="37vLTw" id="Rg" role="3uHU7B">
                    <ref role="3cqZAo" node="R7" resolve="conceptLanguage" />
                    <uo k="s:originTrace" v="n:4265636116363103087" />
                  </node>
                  <node concept="10Nm6u" id="Rh" role="3uHU7w">
                    <uo k="s:originTrace" v="n:6060783635544711533" />
                  </node>
                </node>
                <node concept="3clFbC" id="Rf" role="3uHU7w">
                  <uo k="s:originTrace" v="n:8100157207675274573" />
                  <node concept="37vLTw" id="Ri" role="3uHU7B">
                    <ref role="3cqZAo" node="R7" resolve="conceptLanguage" />
                    <uo k="s:originTrace" v="n:8100157207675274538" />
                  </node>
                  <node concept="37vLTw" id="Rj" role="3uHU7w">
                    <ref role="3cqZAo" node="NW" resolve="language" />
                    <uo k="s:originTrace" v="n:8100157207675274537" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="R6" role="3cqZAp">
              <uo k="s:originTrace" v="n:1235136478708" />
              <node concept="3clFbS" id="Rk" role="3clFbx">
                <uo k="s:originTrace" v="n:1235136478709" />
                <node concept="9aQIb" id="Rm" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1235136520823" />
                  <node concept="3clFbS" id="Ro" role="9aQI4">
                    <node concept="3cpWs8" id="Rq" role="3cqZAp">
                      <node concept="3cpWsn" id="Rt" role="3cpWs9">
                        <property role="TrG5h" value="errorTarget" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="Ru" role="1tU5fm">
                          <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                        </node>
                        <node concept="2ShNRf" id="Rv" role="33vP2m">
                          <uo k="s:originTrace" v="n:1826589312423663997" />
                          <node concept="1pGfFk" id="Rw" role="2ShVmc">
                            <ref role="37wK5l" to="zavc:~PropertyMessageTarget.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty)" resolve="PropertyMessageTarget" />
                            <uo k="s:originTrace" v="n:1826589312423663997" />
                            <node concept="355D3s" id="Rx" role="37wK5m">
                              <ref role="355D3t" to="tpck:h0TrEE$" resolve="INamedConcept" />
                              <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                              <uo k="s:originTrace" v="n:1826589312423663997" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="Rr" role="3cqZAp">
                      <node concept="3cpWsn" id="Ry" role="3cpWs9">
                        <property role="TrG5h" value="_reporter_2309309498" />
                        <node concept="3uibUv" id="Rz" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                        </node>
                        <node concept="2OqwBi" id="R$" role="33vP2m">
                          <node concept="3VmV3z" id="R_" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="RB" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="RA" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                            <node concept="37vLTw" id="RC" role="37wK5m">
                              <ref role="3cqZAo" node="NI" resolve="cd" />
                              <uo k="s:originTrace" v="n:1235136701008" />
                            </node>
                            <node concept="3cpWs3" id="RD" role="37wK5m">
                              <uo k="s:originTrace" v="n:1235136689992" />
                              <node concept="2OqwBi" id="RI" role="3uHU7w">
                                <uo k="s:originTrace" v="n:1235136696482" />
                                <node concept="37vLTw" id="RK" role="2Oq$k0">
                                  <ref role="3cqZAo" node="NW" resolve="language" />
                                  <uo k="s:originTrace" v="n:4265636116363074231" />
                                </node>
                                <node concept="liA8E" id="RL" role="2OqNvi">
                                  <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleName()" resolve="getModuleName" />
                                  <uo k="s:originTrace" v="n:5699776870187153317" />
                                </node>
                              </node>
                              <node concept="3cpWs3" id="RJ" role="3uHU7B">
                                <uo k="s:originTrace" v="n:1235136589377" />
                                <node concept="3cpWs3" id="RM" role="3uHU7B">
                                  <uo k="s:originTrace" v="n:1235136791680" />
                                  <node concept="2OqwBi" id="RO" role="3uHU7w">
                                    <uo k="s:originTrace" v="n:1235136795812" />
                                    <node concept="37vLTw" id="RQ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="R3" resolve="superConcept" />
                                      <uo k="s:originTrace" v="n:4265636116363074570" />
                                    </node>
                                    <node concept="3TrcHB" id="RR" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                      <uo k="s:originTrace" v="n:1235136797016" />
                                    </node>
                                  </node>
                                  <node concept="3cpWs3" id="RP" role="3uHU7B">
                                    <uo k="s:originTrace" v="n:1235136774029" />
                                    <node concept="3cpWs3" id="RS" role="3uHU7B">
                                      <uo k="s:originTrace" v="n:1235136561472" />
                                      <node concept="Xl_RD" id="RU" role="3uHU7B">
                                        <property role="Xl_RC" value="language " />
                                        <uo k="s:originTrace" v="n:1235136522495" />
                                      </node>
                                      <node concept="2OqwBi" id="RV" role="3uHU7w">
                                        <uo k="s:originTrace" v="n:1235136568026" />
                                        <node concept="37vLTw" id="RW" role="2Oq$k0">
                                          <ref role="3cqZAo" node="R7" resolve="conceptLanguage" />
                                          <uo k="s:originTrace" v="n:4265636116363096470" />
                                        </node>
                                        <node concept="liA8E" id="RX" role="2OqNvi">
                                          <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleName()" resolve="getModuleName" />
                                          <uo k="s:originTrace" v="n:5699776870187153319" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="RT" role="3uHU7w">
                                      <property role="Xl_RC" value=" of concept " />
                                      <uo k="s:originTrace" v="n:1235136775009" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="RN" role="3uHU7w">
                                  <property role="Xl_RC" value=" is not extended by " />
                                  <uo k="s:originTrace" v="n:1235136596039" />
                                </node>
                              </node>
                            </node>
                            <node concept="Xl_RD" id="RE" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="RF" role="37wK5m">
                              <property role="Xl_RC" value="1235136520823" />
                            </node>
                            <node concept="10Nm6u" id="RG" role="37wK5m" />
                            <node concept="37vLTw" id="RH" role="37wK5m">
                              <ref role="3cqZAo" node="Rt" resolve="errorTarget" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="Rs" role="3cqZAp">
                      <node concept="3clFbS" id="RY" role="9aQI4">
                        <node concept="3cpWs8" id="RZ" role="3cqZAp">
                          <node concept="3cpWsn" id="S3" role="3cpWs9">
                            <property role="TrG5h" value="intentionProvider" />
                            <node concept="3uibUv" id="S4" role="1tU5fm">
                              <ref role="3uigEE" to="2gg1:~BaseQuickFixProvider" resolve="BaseQuickFixProvider" />
                            </node>
                            <node concept="2ShNRf" id="S5" role="33vP2m">
                              <node concept="1pGfFk" id="S6" role="2ShVmc">
                                <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.&lt;init&gt;(java.lang.String,java.lang.String,boolean)" resolve="BaseQuickFixProvider" />
                                <node concept="Xl_RD" id="S7" role="37wK5m">
                                  <property role="Xl_RC" value="jetbrains.mps.lang.structure.typesystem.AddExtendedLanguage_QuickFix" />
                                </node>
                                <node concept="Xl_RD" id="S8" role="37wK5m">
                                  <property role="Xl_RC" value="3013258720419439306" />
                                </node>
                                <node concept="3clFbT" id="S9" role="37wK5m" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="S0" role="3cqZAp">
                          <node concept="2OqwBi" id="Sa" role="3clFbG">
                            <node concept="37vLTw" id="Sb" role="2Oq$k0">
                              <ref role="3cqZAo" node="S3" resolve="intentionProvider" />
                            </node>
                            <node concept="liA8E" id="Sc" role="2OqNvi">
                              <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.putArgument(java.lang.String,java.lang.Object)" resolve="putArgument" />
                              <node concept="Xl_RD" id="Sd" role="37wK5m">
                                <property role="Xl_RC" value="extLang" />
                              </node>
                              <node concept="37vLTw" id="Se" role="37wK5m">
                                <ref role="3cqZAo" node="R7" resolve="conceptLanguage" />
                                <uo k="s:originTrace" v="n:4265636116363087489" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="S1" role="3cqZAp">
                          <node concept="2OqwBi" id="Sf" role="3clFbG">
                            <node concept="37vLTw" id="Sg" role="2Oq$k0">
                              <ref role="3cqZAo" node="S3" resolve="intentionProvider" />
                            </node>
                            <node concept="liA8E" id="Sh" role="2OqNvi">
                              <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.putArgument(java.lang.String,java.lang.Object)" resolve="putArgument" />
                              <node concept="Xl_RD" id="Si" role="37wK5m">
                                <property role="Xl_RC" value="lang" />
                              </node>
                              <node concept="37vLTw" id="Sj" role="37wK5m">
                                <ref role="3cqZAo" node="NW" resolve="language" />
                                <uo k="s:originTrace" v="n:4265636116363109696" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="S2" role="3cqZAp">
                          <node concept="2OqwBi" id="Sk" role="3clFbG">
                            <node concept="37vLTw" id="Sl" role="2Oq$k0">
                              <ref role="3cqZAo" node="Ry" resolve="_reporter_2309309498" />
                            </node>
                            <node concept="liA8E" id="Sm" role="2OqNvi">
                              <ref role="37wK5l" to="2gg1:~IErrorReporter.addIntentionProvider(jetbrains.mps.errors.QuickFixProvider)" resolve="addIntentionProvider" />
                              <node concept="37vLTw" id="Sn" role="37wK5m">
                                <ref role="3cqZAo" node="S3" resolve="intentionProvider" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="6wLe0" id="Rp" role="lGtFl">
                    <property role="6wLej" value="1235136520823" />
                    <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                  </node>
                </node>
                <node concept="3zACq4" id="Rn" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1235136868149" />
                </node>
              </node>
              <node concept="3fqX7Q" id="Rl" role="3clFbw">
                <uo k="s:originTrace" v="n:1235136495316" />
                <node concept="2OqwBi" id="So" role="3fr31v">
                  <uo k="s:originTrace" v="n:1237048089028" />
                  <node concept="37vLTw" id="Sp" role="2Oq$k0">
                    <ref role="3cqZAo" node="O5" resolve="extendedLanguages" />
                    <uo k="s:originTrace" v="n:4265636116363106950" />
                  </node>
                  <node concept="3JPx81" id="Sq" role="2OqNvi">
                    <uo k="s:originTrace" v="n:1237048090600" />
                    <node concept="37vLTw" id="Sr" role="25WWJ7">
                      <ref role="3cqZAo" node="R7" resolve="conceptLanguage" />
                      <uo k="s:originTrace" v="n:4265636116363091335" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="R2" role="1DdaDG">
            <ref role="3cqZAo" node="Ob" resolve="superConcepts" />
            <uo k="s:originTrace" v="n:4265636116363097423" />
          </node>
          <node concept="3cpWsn" id="R3" role="1Duv9x">
            <property role="TrG5h" value="superConcept" />
            <uo k="s:originTrace" v="n:1235136403647" />
            <node concept="3Tqbb2" id="Ss" role="1tU5fm">
              <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
              <uo k="s:originTrace" v="n:1235136426812" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="NM" role="1B3o_S">
        <uo k="s:originTrace" v="n:1235133131950" />
      </node>
    </node>
    <node concept="3clFb_" id="N$" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1235133131950" />
      <node concept="3bZ5Sz" id="St" role="3clF45">
        <uo k="s:originTrace" v="n:1235133131950" />
      </node>
      <node concept="3clFbS" id="Su" role="3clF47">
        <uo k="s:originTrace" v="n:1235133131950" />
        <node concept="3cpWs6" id="Sw" role="3cqZAp">
          <uo k="s:originTrace" v="n:1235133131950" />
          <node concept="35c_gC" id="Sx" role="3cqZAk">
            <ref role="35c_gD" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
            <uo k="s:originTrace" v="n:1235133131950" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="Sv" role="1B3o_S">
        <uo k="s:originTrace" v="n:1235133131950" />
      </node>
    </node>
    <node concept="3clFb_" id="N_" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1235133131950" />
      <node concept="37vLTG" id="Sy" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1235133131950" />
        <node concept="3Tqbb2" id="SA" role="1tU5fm">
          <uo k="s:originTrace" v="n:1235133131950" />
        </node>
      </node>
      <node concept="3clFbS" id="Sz" role="3clF47">
        <uo k="s:originTrace" v="n:1235133131950" />
        <node concept="9aQIb" id="SB" role="3cqZAp">
          <uo k="s:originTrace" v="n:1235133131950" />
          <node concept="3clFbS" id="SC" role="9aQI4">
            <uo k="s:originTrace" v="n:1235133131950" />
            <node concept="3cpWs6" id="SD" role="3cqZAp">
              <uo k="s:originTrace" v="n:1235133131950" />
              <node concept="2ShNRf" id="SE" role="3cqZAk">
                <uo k="s:originTrace" v="n:1235133131950" />
                <node concept="1pGfFk" id="SF" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1235133131950" />
                  <node concept="2OqwBi" id="SG" role="37wK5m">
                    <uo k="s:originTrace" v="n:1235133131950" />
                    <node concept="2OqwBi" id="SI" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1235133131950" />
                      <node concept="liA8E" id="SK" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1235133131950" />
                      </node>
                      <node concept="2JrnkZ" id="SL" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1235133131950" />
                        <node concept="37vLTw" id="SM" role="2JrQYb">
                          <ref role="3cqZAo" node="Sy" resolve="argument" />
                          <uo k="s:originTrace" v="n:1235133131950" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="SJ" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1235133131950" />
                      <node concept="1rXfSq" id="SN" role="37wK5m">
                        <ref role="37wK5l" node="N$" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1235133131950" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="SH" role="37wK5m">
                    <uo k="s:originTrace" v="n:1235133131950" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="S$" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1235133131950" />
      </node>
      <node concept="3Tm1VV" id="S_" role="1B3o_S">
        <uo k="s:originTrace" v="n:1235133131950" />
      </node>
    </node>
    <node concept="3clFb_" id="NA" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1235133131950" />
      <node concept="3clFbS" id="SO" role="3clF47">
        <uo k="s:originTrace" v="n:1235133131950" />
        <node concept="3cpWs6" id="SR" role="3cqZAp">
          <uo k="s:originTrace" v="n:1235133131950" />
          <node concept="3clFbT" id="SS" role="3cqZAk">
            <uo k="s:originTrace" v="n:1235133131950" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="SP" role="3clF45">
        <uo k="s:originTrace" v="n:1235133131950" />
      </node>
      <node concept="3Tm1VV" id="SQ" role="1B3o_S">
        <uo k="s:originTrace" v="n:1235133131950" />
      </node>
    </node>
    <node concept="3uibUv" id="NB" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1235133131950" />
    </node>
    <node concept="3uibUv" id="NC" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1235133131950" />
    </node>
    <node concept="3Tm1VV" id="ND" role="1B3o_S">
      <uo k="s:originTrace" v="n:1235133131950" />
    </node>
  </node>
  <node concept="312cEu" id="ST">
    <property role="TrG5h" value="check_Finals_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:1090488322149246512" />
    <node concept="3clFbW" id="SU" role="jymVt">
      <uo k="s:originTrace" v="n:1090488322149246512" />
      <node concept="3clFbS" id="T2" role="3clF47">
        <uo k="s:originTrace" v="n:1090488322149246512" />
      </node>
      <node concept="3Tm1VV" id="T3" role="1B3o_S">
        <uo k="s:originTrace" v="n:1090488322149246512" />
      </node>
      <node concept="3cqZAl" id="T4" role="3clF45">
        <uo k="s:originTrace" v="n:1090488322149246512" />
      </node>
    </node>
    <node concept="3clFb_" id="SV" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1090488322149246512" />
      <node concept="3cqZAl" id="T5" role="3clF45">
        <uo k="s:originTrace" v="n:1090488322149246512" />
      </node>
      <node concept="37vLTG" id="T6" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="c" />
        <uo k="s:originTrace" v="n:1090488322149246512" />
        <node concept="3Tqbb2" id="Tb" role="1tU5fm">
          <uo k="s:originTrace" v="n:1090488322149246512" />
        </node>
      </node>
      <node concept="37vLTG" id="T7" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1090488322149246512" />
        <node concept="3uibUv" id="Tc" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1090488322149246512" />
        </node>
      </node>
      <node concept="37vLTG" id="T8" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1090488322149246512" />
        <node concept="3uibUv" id="Td" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1090488322149246512" />
        </node>
      </node>
      <node concept="3clFbS" id="T9" role="3clF47">
        <uo k="s:originTrace" v="n:1090488322149246513" />
        <node concept="3clFbJ" id="Te" role="3cqZAp">
          <uo k="s:originTrace" v="n:1090488322149272712" />
          <node concept="3clFbS" id="Tg" role="3clFbx">
            <uo k="s:originTrace" v="n:1090488322149272714" />
            <node concept="3cpWs6" id="Ti" role="3cqZAp">
              <uo k="s:originTrace" v="n:1090488322149276465" />
            </node>
          </node>
          <node concept="2OqwBi" id="Th" role="3clFbw">
            <uo k="s:originTrace" v="n:1090488322149274313" />
            <node concept="2OqwBi" id="Tj" role="2Oq$k0">
              <uo k="s:originTrace" v="n:1090488322149272738" />
              <node concept="37vLTw" id="Tl" role="2Oq$k0">
                <ref role="3cqZAo" node="T6" resolve="c" />
                <uo k="s:originTrace" v="n:1090488322149272739" />
              </node>
              <node concept="3TrEf2" id="Tm" role="2OqNvi">
                <ref role="3Tt5mk" to="tpce:f_TJDff" resolve="extends" />
                <uo k="s:originTrace" v="n:1090488322149272740" />
              </node>
            </node>
            <node concept="3w_OXm" id="Tk" role="2OqNvi">
              <uo k="s:originTrace" v="n:1090488322149276308" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="Tf" role="3cqZAp">
          <uo k="s:originTrace" v="n:1090488322149276490" />
          <node concept="3clFbS" id="Tn" role="3clFbx">
            <uo k="s:originTrace" v="n:1090488322149276492" />
            <node concept="9aQIb" id="Tp" role="3cqZAp">
              <uo k="s:originTrace" v="n:1090488322149297633" />
              <node concept="3clFbS" id="Tq" role="9aQI4">
                <node concept="3cpWs8" id="Ts" role="3cqZAp">
                  <node concept="3cpWsn" id="Tu" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="Tv" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="Tw" role="33vP2m">
                      <uo k="s:originTrace" v="n:1090488322149298752" />
                      <node concept="1pGfFk" id="Tx" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~ReferenceMessageTarget.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractLink)" resolve="ReferenceMessageTarget" />
                        <uo k="s:originTrace" v="n:1090488322149298752" />
                        <node concept="359W_D" id="Ty" role="37wK5m">
                          <ref role="359W_E" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                          <ref role="359W_F" to="tpce:f_TJDff" resolve="extends" />
                          <uo k="s:originTrace" v="n:1090488322149298752" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="Tt" role="3cqZAp">
                  <node concept="3cpWsn" id="Tz" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="T$" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="T_" role="33vP2m">
                      <node concept="3VmV3z" id="TA" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="TC" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="TB" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                        <node concept="37vLTw" id="TD" role="37wK5m">
                          <ref role="3cqZAo" node="T6" resolve="c" />
                          <uo k="s:originTrace" v="n:1090488322149297646" />
                        </node>
                        <node concept="Xl_RD" id="TE" role="37wK5m">
                          <property role="Xl_RC" value="Can't extend a final concept" />
                          <uo k="s:originTrace" v="n:1090488322149299416" />
                        </node>
                        <node concept="Xl_RD" id="TF" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="TG" role="37wK5m">
                          <property role="Xl_RC" value="1090488322149297633" />
                        </node>
                        <node concept="10Nm6u" id="TH" role="37wK5m" />
                        <node concept="37vLTw" id="TI" role="37wK5m">
                          <ref role="3cqZAo" node="Tu" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="Tr" role="lGtFl">
                <property role="6wLej" value="1090488322149297633" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="To" role="3clFbw">
            <uo k="s:originTrace" v="n:1090488322149278099" />
            <node concept="2OqwBi" id="TJ" role="2Oq$k0">
              <uo k="s:originTrace" v="n:1090488322149276524" />
              <node concept="37vLTw" id="TL" role="2Oq$k0">
                <ref role="3cqZAo" node="T6" resolve="c" />
                <uo k="s:originTrace" v="n:1090488322149276525" />
              </node>
              <node concept="3TrEf2" id="TM" role="2OqNvi">
                <ref role="3Tt5mk" to="tpce:f_TJDff" resolve="extends" />
                <uo k="s:originTrace" v="n:1090488322149276526" />
              </node>
            </node>
            <node concept="3TrcHB" id="TK" role="2OqNvi">
              <ref role="3TsBF5" to="tpce:40UcGlRb7V7" resolve="final" />
              <uo k="s:originTrace" v="n:1090488322149280107" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="Ta" role="1B3o_S">
        <uo k="s:originTrace" v="n:1090488322149246512" />
      </node>
    </node>
    <node concept="3clFb_" id="SW" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1090488322149246512" />
      <node concept="3bZ5Sz" id="TN" role="3clF45">
        <uo k="s:originTrace" v="n:1090488322149246512" />
      </node>
      <node concept="3clFbS" id="TO" role="3clF47">
        <uo k="s:originTrace" v="n:1090488322149246512" />
        <node concept="3cpWs6" id="TQ" role="3cqZAp">
          <uo k="s:originTrace" v="n:1090488322149246512" />
          <node concept="35c_gC" id="TR" role="3cqZAk">
            <ref role="35c_gD" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
            <uo k="s:originTrace" v="n:1090488322149246512" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="TP" role="1B3o_S">
        <uo k="s:originTrace" v="n:1090488322149246512" />
      </node>
    </node>
    <node concept="3clFb_" id="SX" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1090488322149246512" />
      <node concept="37vLTG" id="TS" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1090488322149246512" />
        <node concept="3Tqbb2" id="TW" role="1tU5fm">
          <uo k="s:originTrace" v="n:1090488322149246512" />
        </node>
      </node>
      <node concept="3clFbS" id="TT" role="3clF47">
        <uo k="s:originTrace" v="n:1090488322149246512" />
        <node concept="9aQIb" id="TX" role="3cqZAp">
          <uo k="s:originTrace" v="n:1090488322149246512" />
          <node concept="3clFbS" id="TY" role="9aQI4">
            <uo k="s:originTrace" v="n:1090488322149246512" />
            <node concept="3cpWs6" id="TZ" role="3cqZAp">
              <uo k="s:originTrace" v="n:1090488322149246512" />
              <node concept="2ShNRf" id="U0" role="3cqZAk">
                <uo k="s:originTrace" v="n:1090488322149246512" />
                <node concept="1pGfFk" id="U1" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1090488322149246512" />
                  <node concept="2OqwBi" id="U2" role="37wK5m">
                    <uo k="s:originTrace" v="n:1090488322149246512" />
                    <node concept="2OqwBi" id="U4" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1090488322149246512" />
                      <node concept="liA8E" id="U6" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1090488322149246512" />
                      </node>
                      <node concept="2JrnkZ" id="U7" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1090488322149246512" />
                        <node concept="37vLTw" id="U8" role="2JrQYb">
                          <ref role="3cqZAo" node="TS" resolve="argument" />
                          <uo k="s:originTrace" v="n:1090488322149246512" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="U5" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1090488322149246512" />
                      <node concept="1rXfSq" id="U9" role="37wK5m">
                        <ref role="37wK5l" node="SW" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1090488322149246512" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="U3" role="37wK5m">
                    <uo k="s:originTrace" v="n:1090488322149246512" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="TU" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1090488322149246512" />
      </node>
      <node concept="3Tm1VV" id="TV" role="1B3o_S">
        <uo k="s:originTrace" v="n:1090488322149246512" />
      </node>
    </node>
    <node concept="3clFb_" id="SY" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1090488322149246512" />
      <node concept="3clFbS" id="Ua" role="3clF47">
        <uo k="s:originTrace" v="n:1090488322149246512" />
        <node concept="3cpWs6" id="Ud" role="3cqZAp">
          <uo k="s:originTrace" v="n:1090488322149246512" />
          <node concept="3clFbT" id="Ue" role="3cqZAk">
            <uo k="s:originTrace" v="n:1090488322149246512" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="Ub" role="3clF45">
        <uo k="s:originTrace" v="n:1090488322149246512" />
      </node>
      <node concept="3Tm1VV" id="Uc" role="1B3o_S">
        <uo k="s:originTrace" v="n:1090488322149246512" />
      </node>
    </node>
    <node concept="3uibUv" id="SZ" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1090488322149246512" />
    </node>
    <node concept="3uibUv" id="T0" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1090488322149246512" />
    </node>
    <node concept="3Tm1VV" id="T1" role="1B3o_S">
      <uo k="s:originTrace" v="n:1090488322149246512" />
    </node>
  </node>
  <node concept="312cEu" id="Uf">
    <property role="TrG5h" value="check_LinkDeclaration_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:1212181746947" />
    <node concept="3clFbW" id="Ug" role="jymVt">
      <uo k="s:originTrace" v="n:1212181746947" />
      <node concept="3clFbS" id="Uo" role="3clF47">
        <uo k="s:originTrace" v="n:1212181746947" />
      </node>
      <node concept="3Tm1VV" id="Up" role="1B3o_S">
        <uo k="s:originTrace" v="n:1212181746947" />
      </node>
      <node concept="3cqZAl" id="Uq" role="3clF45">
        <uo k="s:originTrace" v="n:1212181746947" />
      </node>
    </node>
    <node concept="3clFb_" id="Uh" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1212181746947" />
      <node concept="3cqZAl" id="Ur" role="3clF45">
        <uo k="s:originTrace" v="n:1212181746947" />
      </node>
      <node concept="37vLTG" id="Us" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="linkToCheck" />
        <uo k="s:originTrace" v="n:1212181746947" />
        <node concept="3Tqbb2" id="Ux" role="1tU5fm">
          <uo k="s:originTrace" v="n:1212181746947" />
        </node>
      </node>
      <node concept="37vLTG" id="Ut" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1212181746947" />
        <node concept="3uibUv" id="Uy" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1212181746947" />
        </node>
      </node>
      <node concept="37vLTG" id="Uu" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1212181746947" />
        <node concept="3uibUv" id="Uz" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1212181746947" />
        </node>
      </node>
      <node concept="3clFbS" id="Uv" role="3clF47">
        <uo k="s:originTrace" v="n:1212181746948" />
        <node concept="3SKdUt" id="U$" role="3cqZAp">
          <uo k="s:originTrace" v="n:7376433222636453473" />
          <node concept="1PaTwC" id="UH" role="1aUNEU">
            <uo k="s:originTrace" v="n:700871696606817643" />
            <node concept="3oM_SD" id="UI" role="1PaTwD">
              <property role="3oM_SC" value="link" />
              <uo k="s:originTrace" v="n:700871696606817644" />
            </node>
            <node concept="3oM_SD" id="UJ" role="1PaTwD">
              <property role="3oM_SC" value="role" />
              <uo k="s:originTrace" v="n:700871696606817645" />
            </node>
            <node concept="3oM_SD" id="UK" role="1PaTwD">
              <property role="3oM_SC" value="shouldn't" />
              <uo k="s:originTrace" v="n:700871696606817646" />
            </node>
            <node concept="3oM_SD" id="UL" role="1PaTwD">
              <property role="3oM_SC" value="hide" />
              <uo k="s:originTrace" v="n:700871696606817647" />
            </node>
            <node concept="3oM_SD" id="UM" role="1PaTwD">
              <property role="3oM_SC" value="roles" />
              <uo k="s:originTrace" v="n:700871696606817648" />
            </node>
            <node concept="3oM_SD" id="UN" role="1PaTwD">
              <property role="3oM_SC" value="in" />
              <uo k="s:originTrace" v="n:700871696606817649" />
            </node>
            <node concept="3oM_SD" id="UO" role="1PaTwD">
              <property role="3oM_SC" value="super-concepts" />
              <uo k="s:originTrace" v="n:700871696606817650" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="U_" role="3cqZAp">
          <uo k="s:originTrace" v="n:1212181840024" />
          <node concept="3clFbS" id="UP" role="3clFbx">
            <uo k="s:originTrace" v="n:1212181840025" />
            <node concept="3cpWs6" id="UR" role="3cqZAp">
              <uo k="s:originTrace" v="n:1212181840026" />
            </node>
          </node>
          <node concept="3clFbC" id="UQ" role="3clFbw">
            <uo k="s:originTrace" v="n:1212181840027" />
            <node concept="10Nm6u" id="US" role="3uHU7w">
              <uo k="s:originTrace" v="n:1212181840028" />
            </node>
            <node concept="2OqwBi" id="UT" role="3uHU7B">
              <uo k="s:originTrace" v="n:1212181840029" />
              <node concept="37vLTw" id="UU" role="2Oq$k0">
                <ref role="3cqZAo" node="Us" resolve="linkToCheck" />
                <uo k="s:originTrace" v="n:1212181854183" />
              </node>
              <node concept="3TrcHB" id="UV" role="2OqNvi">
                <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                <uo k="s:originTrace" v="n:1212181840031" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="UA" role="3cqZAp">
          <uo k="s:originTrace" v="n:1212181840032" />
          <node concept="3cpWsn" id="UW" role="3cpWs9">
            <property role="TrG5h" value="declaringConcept" />
            <uo k="s:originTrace" v="n:1212181840033" />
            <node concept="3Tqbb2" id="UX" role="1tU5fm">
              <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
              <uo k="s:originTrace" v="n:7616135429957786331" />
            </node>
            <node concept="2OqwBi" id="UY" role="33vP2m">
              <uo k="s:originTrace" v="n:1212181840035" />
              <node concept="2Xjw5R" id="UZ" role="2OqNvi">
                <uo k="s:originTrace" v="n:1212181840036" />
                <node concept="1xMEDy" id="V1" role="1xVPHs">
                  <uo k="s:originTrace" v="n:1212181840037" />
                  <node concept="chp4Y" id="V2" role="ri$Ld">
                    <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                    <uo k="s:originTrace" v="n:1212181840038" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="V0" role="2Oq$k0">
                <ref role="3cqZAo" node="Us" resolve="linkToCheck" />
                <uo k="s:originTrace" v="n:1212181840039" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="UB" role="3cqZAp">
          <uo k="s:originTrace" v="n:1212181840040" />
          <node concept="3cpWsn" id="V3" role="3cpWs9">
            <property role="TrG5h" value="allLinks" />
            <uo k="s:originTrace" v="n:1212181840041" />
            <node concept="2I9FWS" id="V4" role="1tU5fm">
              <ref role="2I9WkF" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
              <uo k="s:originTrace" v="n:7853788040701517629" />
            </node>
            <node concept="2OqwBi" id="V5" role="33vP2m">
              <uo k="s:originTrace" v="n:7853788040701509022" />
              <node concept="2OqwBi" id="V6" role="2Oq$k0">
                <uo k="s:originTrace" v="n:7853788040701501384" />
                <node concept="2OqwBi" id="V8" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:1212181840044" />
                  <node concept="3zqWPK" id="Va" role="2OqNvi">
                    <ref role="37wK5l" to="tpcn:2A8AB0rAWpG" resolve="getAllSuperConcepts" />
                    <uo k="s:originTrace" v="n:8085146484218853672" />
                    <node concept="3clFbT" id="Vc" role="37wK5m">
                      <property role="3clFbU" value="true" />
                      <uo k="s:originTrace" v="n:8085146484218853674" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="Vb" role="2Oq$k0">
                    <ref role="3cqZAo" node="UW" resolve="declaringConcept" />
                    <uo k="s:originTrace" v="n:4265636116363065124" />
                  </node>
                </node>
                <node concept="13MTOL" id="V9" role="2OqNvi">
                  <ref role="13MTZf" to="tpce:f_TKVDF" resolve="linkDeclaration" />
                  <uo k="s:originTrace" v="n:7853788040701506937" />
                </node>
              </node>
              <node concept="ANE8D" id="V7" role="2OqNvi">
                <uo k="s:originTrace" v="n:7853788040701510781" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="UC" role="3cqZAp">
          <uo k="s:originTrace" v="n:1010605374656953538" />
          <node concept="3cpWsn" id="Vd" role="3cpWs9">
            <property role="TrG5h" value="specializedLinks" />
            <uo k="s:originTrace" v="n:1010605374656953541" />
            <node concept="2hMVRd" id="Ve" role="1tU5fm">
              <uo k="s:originTrace" v="n:1010605374656953543" />
              <node concept="3Tqbb2" id="Vg" role="2hN53Y">
                <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                <uo k="s:originTrace" v="n:1010605374656953545" />
              </node>
            </node>
            <node concept="2ShNRf" id="Vf" role="33vP2m">
              <uo k="s:originTrace" v="n:1010605374656953546" />
              <node concept="2i4dXS" id="Vh" role="2ShVmc">
                <uo k="s:originTrace" v="n:1010605374656953548" />
                <node concept="3Tqbb2" id="Vi" role="HW$YZ">
                  <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                  <uo k="s:originTrace" v="n:1010605374656953549" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="UD" role="3cqZAp">
          <uo k="s:originTrace" v="n:1010605374656953202" />
          <node concept="3cpWsn" id="Vj" role="3cpWs9">
            <property role="TrG5h" value="specialized" />
            <uo k="s:originTrace" v="n:1010605374656953205" />
            <node concept="3Tqbb2" id="Vk" role="1tU5fm">
              <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
              <uo k="s:originTrace" v="n:1010605374656953207" />
            </node>
            <node concept="2OqwBi" id="Vl" role="33vP2m">
              <uo k="s:originTrace" v="n:1010605374656953208" />
              <node concept="37vLTw" id="Vm" role="2Oq$k0">
                <ref role="3cqZAo" node="Us" resolve="linkToCheck" />
                <uo k="s:originTrace" v="n:1010605374656953211" />
              </node>
              <node concept="3TrEf2" id="Vn" role="2OqNvi">
                <ref role="3Tt5mk" to="tpce:fA0ks94" resolve="specializedLink" />
                <uo k="s:originTrace" v="n:1010605374656953212" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="UE" role="3cqZAp">
          <uo k="s:originTrace" v="n:1010605374656962314" />
          <node concept="1Wc70l" id="Vo" role="2$JKZa">
            <uo k="s:originTrace" v="n:1010605374656962317" />
            <node concept="3y3z36" id="Vq" role="3uHU7B">
              <uo k="s:originTrace" v="n:1010605374656962320" />
              <node concept="37vLTw" id="Vs" role="3uHU7B">
                <ref role="3cqZAo" node="Vj" resolve="specialized" />
                <uo k="s:originTrace" v="n:1010605374656962323" />
              </node>
              <node concept="10Nm6u" id="Vt" role="3uHU7w">
                <uo k="s:originTrace" v="n:1010605374656962324" />
              </node>
            </node>
            <node concept="3fqX7Q" id="Vr" role="3uHU7w">
              <uo k="s:originTrace" v="n:1010605374656962325" />
              <node concept="2OqwBi" id="Vu" role="3fr31v">
                <uo k="s:originTrace" v="n:1010605374656962327" />
                <node concept="37vLTw" id="Vv" role="2Oq$k0">
                  <ref role="3cqZAo" node="Vd" resolve="specializedLinks" />
                  <uo k="s:originTrace" v="n:1010605374656962330" />
                </node>
                <node concept="3JPx81" id="Vw" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1010605374656962331" />
                  <node concept="37vLTw" id="Vx" role="25WWJ7">
                    <ref role="3cqZAo" node="Vj" resolve="specialized" />
                    <uo k="s:originTrace" v="n:1010605374656962333" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="Vp" role="2LFqv$">
            <uo k="s:originTrace" v="n:1010605374656962334" />
            <node concept="3clFbF" id="Vy" role="3cqZAp">
              <uo k="s:originTrace" v="n:1010605374656962335" />
              <node concept="2OqwBi" id="V$" role="3clFbG">
                <uo k="s:originTrace" v="n:1010605374656962337" />
                <node concept="37vLTw" id="V_" role="2Oq$k0">
                  <ref role="3cqZAo" node="Vd" resolve="specializedLinks" />
                  <uo k="s:originTrace" v="n:1010605374656962340" />
                </node>
                <node concept="TSZUe" id="VA" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1010605374656991676" />
                  <node concept="37vLTw" id="VB" role="25WWJ7">
                    <ref role="3cqZAo" node="Vj" resolve="specialized" />
                    <uo k="s:originTrace" v="n:1010605374656991678" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="Vz" role="3cqZAp">
              <uo k="s:originTrace" v="n:1010605374656962344" />
              <node concept="37vLTI" id="VC" role="3clFbG">
                <uo k="s:originTrace" v="n:1010605374656962346" />
                <node concept="37vLTw" id="VD" role="37vLTJ">
                  <ref role="3cqZAo" node="Vj" resolve="specialized" />
                  <uo k="s:originTrace" v="n:1010605374656962349" />
                </node>
                <node concept="2OqwBi" id="VE" role="37vLTx">
                  <uo k="s:originTrace" v="n:1010605374656962350" />
                  <node concept="37vLTw" id="VF" role="2Oq$k0">
                    <ref role="3cqZAo" node="Vj" resolve="specialized" />
                    <uo k="s:originTrace" v="n:1010605374656962353" />
                  </node>
                  <node concept="3TrEf2" id="VG" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpce:fA0ks94" resolve="specializedLink" />
                    <uo k="s:originTrace" v="n:1010605374656962354" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="UF" role="3cqZAp">
          <uo k="s:originTrace" v="n:1212181840069" />
          <node concept="2GrKxI" id="VH" role="2Gsz3X">
            <property role="TrG5h" value="link" />
            <uo k="s:originTrace" v="n:1212181840070" />
          </node>
          <node concept="37vLTw" id="VI" role="2GsD0m">
            <ref role="3cqZAo" node="V3" resolve="allLinks" />
            <uo k="s:originTrace" v="n:4265636116363106899" />
          </node>
          <node concept="3clFbS" id="VJ" role="2LFqv$">
            <uo k="s:originTrace" v="n:1212181840072" />
            <node concept="3clFbJ" id="VK" role="3cqZAp">
              <uo k="s:originTrace" v="n:1212181840073" />
              <node concept="1Wc70l" id="VL" role="3clFbw">
                <uo k="s:originTrace" v="n:8491417075977785218" />
                <node concept="3fqX7Q" id="VN" role="3uHU7w">
                  <uo k="s:originTrace" v="n:1010605374656961998" />
                  <node concept="2OqwBi" id="VP" role="3fr31v">
                    <uo k="s:originTrace" v="n:1010605374656962000" />
                    <node concept="37vLTw" id="VQ" role="2Oq$k0">
                      <ref role="3cqZAo" node="Vd" resolve="specializedLinks" />
                      <uo k="s:originTrace" v="n:1010605374656962003" />
                    </node>
                    <node concept="3JPx81" id="VR" role="2OqNvi">
                      <uo k="s:originTrace" v="n:1010605374656962004" />
                      <node concept="2GrUjf" id="VS" role="25WWJ7">
                        <ref role="2Gs0qQ" node="VH" resolve="link" />
                        <uo k="s:originTrace" v="n:1010605374656962006" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="VO" role="3uHU7B">
                  <uo k="s:originTrace" v="n:2894226241058753101" />
                  <node concept="3y3z36" id="VT" role="3uHU7B">
                    <uo k="s:originTrace" v="n:2894226241058754459" />
                    <node concept="2GrUjf" id="VV" role="3uHU7w">
                      <ref role="2Gs0qQ" node="VH" resolve="link" />
                      <uo k="s:originTrace" v="n:2894226241058754979" />
                    </node>
                    <node concept="37vLTw" id="VW" role="3uHU7B">
                      <ref role="3cqZAo" node="Us" resolve="linkToCheck" />
                      <uo k="s:originTrace" v="n:2894226241058753839" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="VU" role="3uHU7w">
                    <uo k="s:originTrace" v="n:1212181840074" />
                    <node concept="2OqwBi" id="VX" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1212181840075" />
                      <node concept="37vLTw" id="VZ" role="2Oq$k0">
                        <ref role="3cqZAo" node="Us" resolve="linkToCheck" />
                        <uo k="s:originTrace" v="n:1212181840076" />
                      </node>
                      <node concept="3TrcHB" id="W0" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                        <uo k="s:originTrace" v="n:1212181840077" />
                      </node>
                    </node>
                    <node concept="liA8E" id="VY" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                      <uo k="s:originTrace" v="n:1212181840078" />
                      <node concept="2OqwBi" id="W1" role="37wK5m">
                        <uo k="s:originTrace" v="n:1212181840079" />
                        <node concept="2GrUjf" id="W2" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="VH" resolve="link" />
                          <uo k="s:originTrace" v="n:1212181840080" />
                        </node>
                        <node concept="3TrcHB" id="W3" role="2OqNvi">
                          <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                          <uo k="s:originTrace" v="n:1212181840081" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="VM" role="3clFbx">
                <uo k="s:originTrace" v="n:1212181840082" />
                <node concept="9aQIb" id="W4" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1212181840083" />
                  <node concept="3clFbS" id="W5" role="9aQI4">
                    <node concept="3cpWs8" id="W7" role="3cqZAp">
                      <node concept="3cpWsn" id="W9" role="3cpWs9">
                        <property role="TrG5h" value="errorTarget" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="Wa" role="1tU5fm">
                          <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                        </node>
                        <node concept="2ShNRf" id="Wb" role="33vP2m">
                          <node concept="1pGfFk" id="Wc" role="2ShVmc">
                            <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="W8" role="3cqZAp">
                      <node concept="3cpWsn" id="Wd" role="3cpWs9">
                        <property role="TrG5h" value="_reporter_2309309498" />
                        <node concept="3uibUv" id="We" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                        </node>
                        <node concept="2OqwBi" id="Wf" role="33vP2m">
                          <node concept="3VmV3z" id="Wg" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="Wi" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="Wh" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                            <node concept="37vLTw" id="Wj" role="37wK5m">
                              <ref role="3cqZAo" node="Us" resolve="linkToCheck" />
                              <uo k="s:originTrace" v="n:1212181840099" />
                            </node>
                            <node concept="2OqwBi" id="Wk" role="37wK5m">
                              <uo k="s:originTrace" v="n:7853788040701532709" />
                              <node concept="Xl_RD" id="Wp" role="2Oq$k0">
                                <property role="Xl_RC" value="link '%s' is already declared in %s" />
                                <uo k="s:originTrace" v="n:7853788040701532710" />
                              </node>
                              <node concept="2cAKMz" id="Wq" role="2OqNvi">
                                <uo k="s:originTrace" v="n:7853788040701532711" />
                                <node concept="2OqwBi" id="Wr" role="2cAKU6">
                                  <uo k="s:originTrace" v="n:1212181840095" />
                                  <node concept="2GrUjf" id="Wt" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="VH" resolve="link" />
                                    <uo k="s:originTrace" v="n:1212181840096" />
                                  </node>
                                  <node concept="3TrcHB" id="Wu" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                                    <uo k="s:originTrace" v="n:1212181840097" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="Ws" role="2cAKU6">
                                  <uo k="s:originTrace" v="n:1212181840087" />
                                  <node concept="2OqwBi" id="Wv" role="2Oq$k0">
                                    <uo k="s:originTrace" v="n:1212181840088" />
                                    <node concept="2GrUjf" id="Wx" role="2Oq$k0">
                                      <ref role="2Gs0qQ" node="VH" resolve="link" />
                                      <uo k="s:originTrace" v="n:1212181840089" />
                                    </node>
                                    <node concept="2Xjw5R" id="Wy" role="2OqNvi">
                                      <uo k="s:originTrace" v="n:1212181840090" />
                                      <node concept="1xMEDy" id="Wz" role="1xVPHs">
                                        <uo k="s:originTrace" v="n:1212181840091" />
                                        <node concept="chp4Y" id="W$" role="ri$Ld">
                                          <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                                          <uo k="s:originTrace" v="n:1212181840092" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="Ww" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    <uo k="s:originTrace" v="n:1212181840093" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Xl_RD" id="Wl" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="Wm" role="37wK5m">
                              <property role="Xl_RC" value="1212181840083" />
                            </node>
                            <node concept="10Nm6u" id="Wn" role="37wK5m" />
                            <node concept="37vLTw" id="Wo" role="37wK5m">
                              <ref role="3cqZAo" node="W9" resolve="errorTarget" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="6wLe0" id="W6" role="lGtFl">
                    <property role="6wLej" value="1212181840083" />
                    <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="UG" role="3cqZAp">
          <uo k="s:originTrace" v="n:2395585628928511432" />
          <node concept="1Wc70l" id="W_" role="3clFbw">
            <uo k="s:originTrace" v="n:2395585628928542448" />
            <node concept="2OqwBi" id="WB" role="3uHU7w">
              <uo k="s:originTrace" v="n:2395585628928545611" />
              <node concept="3zqWPK" id="WD" role="2OqNvi">
                <ref role="37wK5l" to="tpcn:hEwIfAt" resolve="isSingular" />
                <uo k="s:originTrace" v="n:8085146484218853675" />
              </node>
              <node concept="37vLTw" id="WE" role="2Oq$k0">
                <ref role="3cqZAo" node="Us" resolve="linkToCheck" />
                <uo k="s:originTrace" v="n:2395585628928545131" />
              </node>
            </node>
            <node concept="2OqwBi" id="WC" role="3uHU7B">
              <uo k="s:originTrace" v="n:2395585628928515759" />
              <node concept="3TrcHB" id="WF" role="2OqNvi">
                <ref role="3TsBF5" to="tpce:24YP6ZDjW8M" resolve="unordered" />
                <uo k="s:originTrace" v="n:2395585628928526245" />
              </node>
              <node concept="37vLTw" id="WG" role="2Oq$k0">
                <ref role="3cqZAo" node="Us" resolve="linkToCheck" />
                <uo k="s:originTrace" v="n:2395585628928513559" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="WA" role="3clFbx">
            <uo k="s:originTrace" v="n:2395585628928511435" />
            <node concept="3clFbJ" id="WH" role="3cqZAp">
              <uo k="s:originTrace" v="n:2395585628928759938" />
              <node concept="2OqwBi" id="WI" role="3clFbw">
                <uo k="s:originTrace" v="n:2395585628928785674" />
                <node concept="21noJN" id="WL" role="2OqNvi">
                  <uo k="s:originTrace" v="n:4241665505386130350" />
                  <node concept="21nZrQ" id="WN" role="21noJM">
                    <ref role="21nZrZ" to="tpce:3Ftr4R6BFyn" resolve="reference" />
                    <uo k="s:originTrace" v="n:4241665505386130351" />
                  </node>
                </node>
                <node concept="2OqwBi" id="WM" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:2395585628928764145" />
                  <node concept="37vLTw" id="WO" role="2Oq$k0">
                    <ref role="3cqZAo" node="Us" resolve="linkToCheck" />
                    <uo k="s:originTrace" v="n:2395585628928761775" />
                  </node>
                  <node concept="3TrcHB" id="WP" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                    <uo k="s:originTrace" v="n:2395585628928779661" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="WJ" role="3clFbx">
                <uo k="s:originTrace" v="n:2395585628928759941" />
                <node concept="9aQIb" id="WQ" role="3cqZAp">
                  <uo k="s:originTrace" v="n:2395585628928851523" />
                  <node concept="3clFbS" id="WR" role="9aQI4">
                    <node concept="3cpWs8" id="WT" role="3cqZAp">
                      <node concept="3cpWsn" id="WV" role="3cpWs9">
                        <property role="TrG5h" value="errorTarget" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="WW" role="1tU5fm">
                          <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                        </node>
                        <node concept="2ShNRf" id="WX" role="33vP2m">
                          <uo k="s:originTrace" v="n:2395585628928851526" />
                          <node concept="1pGfFk" id="WY" role="2ShVmc">
                            <ref role="37wK5l" to="zavc:~PropertyMessageTarget.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty)" resolve="PropertyMessageTarget" />
                            <uo k="s:originTrace" v="n:2395585628928851526" />
                            <node concept="355D3s" id="WZ" role="37wK5m">
                              <ref role="355D3t" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                              <ref role="355D3u" to="tpce:3Ftr4R6BH8A" resolve="sourceCardinality" />
                              <uo k="s:originTrace" v="n:2395585628928851526" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="WU" role="3cqZAp">
                      <node concept="3cpWsn" id="X0" role="3cpWs9">
                        <property role="TrG5h" value="_reporter_2309309498" />
                        <node concept="3uibUv" id="X1" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                        </node>
                        <node concept="2OqwBi" id="X2" role="33vP2m">
                          <node concept="3VmV3z" id="X3" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="X5" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="X4" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                            <node concept="37vLTw" id="X6" role="37wK5m">
                              <ref role="3cqZAo" node="Us" resolve="linkToCheck" />
                              <uo k="s:originTrace" v="n:2395585628928851524" />
                            </node>
                            <node concept="Xl_RD" id="X7" role="37wK5m">
                              <property role="Xl_RC" value="association link cannot be unordered" />
                              <uo k="s:originTrace" v="n:2395585628928851525" />
                            </node>
                            <node concept="Xl_RD" id="X8" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="X9" role="37wK5m">
                              <property role="Xl_RC" value="2395585628928851523" />
                            </node>
                            <node concept="10Nm6u" id="Xa" role="37wK5m" />
                            <node concept="37vLTw" id="Xb" role="37wK5m">
                              <ref role="3cqZAo" node="WV" resolve="errorTarget" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="6wLe0" id="WS" role="lGtFl">
                    <property role="6wLej" value="2395585628928851523" />
                    <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="WK" role="9aQIa">
                <uo k="s:originTrace" v="n:2395585628928826716" />
                <node concept="3clFbS" id="Xc" role="9aQI4">
                  <uo k="s:originTrace" v="n:2395585628928826717" />
                  <node concept="9aQIb" id="Xd" role="3cqZAp">
                    <uo k="s:originTrace" v="n:2395585628928560440" />
                    <node concept="3clFbS" id="Xe" role="9aQI4">
                      <node concept="3cpWs8" id="Xg" role="3cqZAp">
                        <node concept="3cpWsn" id="Xi" role="3cpWs9">
                          <property role="TrG5h" value="errorTarget" />
                          <property role="3TUv4t" value="true" />
                          <node concept="3uibUv" id="Xj" role="1tU5fm">
                            <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                          </node>
                          <node concept="2ShNRf" id="Xk" role="33vP2m">
                            <uo k="s:originTrace" v="n:2395585628928571556" />
                            <node concept="1pGfFk" id="Xl" role="2ShVmc">
                              <ref role="37wK5l" to="zavc:~PropertyMessageTarget.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty)" resolve="PropertyMessageTarget" />
                              <uo k="s:originTrace" v="n:2395585628928571556" />
                              <node concept="355D3s" id="Xm" role="37wK5m">
                                <ref role="355D3t" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                                <ref role="355D3u" to="tpce:3Ftr4R6BH8A" resolve="sourceCardinality" />
                                <uo k="s:originTrace" v="n:2395585628928571556" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="Xh" role="3cqZAp">
                        <node concept="3cpWsn" id="Xn" role="3cpWs9">
                          <property role="TrG5h" value="_reporter_2309309498" />
                          <node concept="3uibUv" id="Xo" role="1tU5fm">
                            <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                          </node>
                          <node concept="2OqwBi" id="Xp" role="33vP2m">
                            <node concept="3VmV3z" id="Xq" role="2Oq$k0">
                              <property role="3VnrPo" value="typeCheckingContext" />
                              <node concept="3uibUv" id="Xs" role="3Vn4Tt">
                                <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                              </node>
                            </node>
                            <node concept="liA8E" id="Xr" role="2OqNvi">
                              <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                              <node concept="37vLTw" id="Xt" role="37wK5m">
                                <ref role="3cqZAo" node="Us" resolve="linkToCheck" />
                                <uo k="s:originTrace" v="n:2395585628928567818" />
                              </node>
                              <node concept="Xl_RD" id="Xu" role="37wK5m">
                                <property role="Xl_RC" value="aggregation link with cardinality 1 should be unordered" />
                                <uo k="s:originTrace" v="n:2395585628928562232" />
                              </node>
                              <node concept="Xl_RD" id="Xv" role="37wK5m">
                                <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                              </node>
                              <node concept="Xl_RD" id="Xw" role="37wK5m">
                                <property role="Xl_RC" value="2395585628928560440" />
                              </node>
                              <node concept="10Nm6u" id="Xx" role="37wK5m" />
                              <node concept="37vLTw" id="Xy" role="37wK5m">
                                <ref role="3cqZAo" node="Xi" resolve="errorTarget" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="6wLe0" id="Xf" role="lGtFl">
                      <property role="6wLej" value="2395585628928560440" />
                      <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="Uw" role="1B3o_S">
        <uo k="s:originTrace" v="n:1212181746947" />
      </node>
    </node>
    <node concept="3clFb_" id="Ui" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1212181746947" />
      <node concept="3bZ5Sz" id="Xz" role="3clF45">
        <uo k="s:originTrace" v="n:1212181746947" />
      </node>
      <node concept="3clFbS" id="X$" role="3clF47">
        <uo k="s:originTrace" v="n:1212181746947" />
        <node concept="3cpWs6" id="XA" role="3cqZAp">
          <uo k="s:originTrace" v="n:1212181746947" />
          <node concept="35c_gC" id="XB" role="3cqZAk">
            <ref role="35c_gD" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
            <uo k="s:originTrace" v="n:1212181746947" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="X_" role="1B3o_S">
        <uo k="s:originTrace" v="n:1212181746947" />
      </node>
    </node>
    <node concept="3clFb_" id="Uj" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1212181746947" />
      <node concept="37vLTG" id="XC" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1212181746947" />
        <node concept="3Tqbb2" id="XG" role="1tU5fm">
          <uo k="s:originTrace" v="n:1212181746947" />
        </node>
      </node>
      <node concept="3clFbS" id="XD" role="3clF47">
        <uo k="s:originTrace" v="n:1212181746947" />
        <node concept="9aQIb" id="XH" role="3cqZAp">
          <uo k="s:originTrace" v="n:1212181746947" />
          <node concept="3clFbS" id="XI" role="9aQI4">
            <uo k="s:originTrace" v="n:1212181746947" />
            <node concept="3cpWs6" id="XJ" role="3cqZAp">
              <uo k="s:originTrace" v="n:1212181746947" />
              <node concept="2ShNRf" id="XK" role="3cqZAk">
                <uo k="s:originTrace" v="n:1212181746947" />
                <node concept="1pGfFk" id="XL" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1212181746947" />
                  <node concept="2OqwBi" id="XM" role="37wK5m">
                    <uo k="s:originTrace" v="n:1212181746947" />
                    <node concept="2OqwBi" id="XO" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1212181746947" />
                      <node concept="liA8E" id="XQ" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1212181746947" />
                      </node>
                      <node concept="2JrnkZ" id="XR" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1212181746947" />
                        <node concept="37vLTw" id="XS" role="2JrQYb">
                          <ref role="3cqZAo" node="XC" resolve="argument" />
                          <uo k="s:originTrace" v="n:1212181746947" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="XP" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1212181746947" />
                      <node concept="1rXfSq" id="XT" role="37wK5m">
                        <ref role="37wK5l" node="Ui" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1212181746947" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="XN" role="37wK5m">
                    <uo k="s:originTrace" v="n:1212181746947" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="XE" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1212181746947" />
      </node>
      <node concept="3Tm1VV" id="XF" role="1B3o_S">
        <uo k="s:originTrace" v="n:1212181746947" />
      </node>
    </node>
    <node concept="3clFb_" id="Uk" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1212181746947" />
      <node concept="3clFbS" id="XU" role="3clF47">
        <uo k="s:originTrace" v="n:1212181746947" />
        <node concept="3cpWs6" id="XX" role="3cqZAp">
          <uo k="s:originTrace" v="n:1212181746947" />
          <node concept="3clFbT" id="XY" role="3cqZAk">
            <uo k="s:originTrace" v="n:1212181746947" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="XV" role="3clF45">
        <uo k="s:originTrace" v="n:1212181746947" />
      </node>
      <node concept="3Tm1VV" id="XW" role="1B3o_S">
        <uo k="s:originTrace" v="n:1212181746947" />
      </node>
    </node>
    <node concept="3uibUv" id="Ul" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1212181746947" />
    </node>
    <node concept="3uibUv" id="Um" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1212181746947" />
    </node>
    <node concept="3Tm1VV" id="Un" role="1B3o_S">
      <uo k="s:originTrace" v="n:1212181746947" />
    </node>
  </node>
  <node concept="312cEu" id="XZ">
    <property role="TrG5h" value="check_LinkDeclaration_Specialized_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:2854075155749507956" />
    <node concept="3clFbW" id="Y0" role="jymVt">
      <uo k="s:originTrace" v="n:2854075155749507956" />
      <node concept="3clFbS" id="Y8" role="3clF47">
        <uo k="s:originTrace" v="n:2854075155749507956" />
      </node>
      <node concept="3Tm1VV" id="Y9" role="1B3o_S">
        <uo k="s:originTrace" v="n:2854075155749507956" />
      </node>
      <node concept="3cqZAl" id="Ya" role="3clF45">
        <uo k="s:originTrace" v="n:2854075155749507956" />
      </node>
    </node>
    <node concept="3clFb_" id="Y1" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:2854075155749507956" />
      <node concept="3cqZAl" id="Yb" role="3clF45">
        <uo k="s:originTrace" v="n:2854075155749507956" />
      </node>
      <node concept="37vLTG" id="Yc" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:2854075155749507956" />
        <node concept="3Tqbb2" id="Yh" role="1tU5fm">
          <uo k="s:originTrace" v="n:2854075155749507956" />
        </node>
      </node>
      <node concept="37vLTG" id="Yd" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:2854075155749507956" />
        <node concept="3uibUv" id="Yi" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:2854075155749507956" />
        </node>
      </node>
      <node concept="37vLTG" id="Ye" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:2854075155749507956" />
        <node concept="3uibUv" id="Yj" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:2854075155749507956" />
        </node>
      </node>
      <node concept="3clFbS" id="Yf" role="3clF47">
        <uo k="s:originTrace" v="n:2854075155749507957" />
        <node concept="3cpWs8" id="Yk" role="3cqZAp">
          <uo k="s:originTrace" v="n:2854075155749508053" />
          <node concept="3cpWsn" id="Yw" role="3cpWs9">
            <property role="TrG5h" value="specializedLink" />
            <uo k="s:originTrace" v="n:2854075155749508054" />
            <node concept="3Tqbb2" id="Yx" role="1tU5fm">
              <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
              <uo k="s:originTrace" v="n:2854075155749508055" />
            </node>
            <node concept="2OqwBi" id="Yy" role="33vP2m">
              <uo k="s:originTrace" v="n:2854075155749508058" />
              <node concept="37vLTw" id="Yz" role="2Oq$k0">
                <ref role="3cqZAo" node="Yc" resolve="link" />
                <uo k="s:originTrace" v="n:2854075155749508057" />
              </node>
              <node concept="3TrEf2" id="Y$" role="2OqNvi">
                <ref role="3Tt5mk" to="tpce:fA0ks94" resolve="specializedLink" />
                <uo k="s:originTrace" v="n:2854075155749508062" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="Yl" role="3cqZAp">
          <uo k="s:originTrace" v="n:7602347209950241536" />
          <node concept="3clFbS" id="Y_" role="3clFbx">
            <uo k="s:originTrace" v="n:7602347209950241538" />
            <node concept="3cpWs6" id="YB" role="3cqZAp">
              <uo k="s:originTrace" v="n:7602347209950244543" />
            </node>
          </node>
          <node concept="2OqwBi" id="YA" role="3clFbw">
            <uo k="s:originTrace" v="n:7602347209950242589" />
            <node concept="37vLTw" id="YC" role="2Oq$k0">
              <ref role="3cqZAo" node="Yw" resolve="specializedLink" />
              <uo k="s:originTrace" v="n:7602347209950241592" />
            </node>
            <node concept="3w_OXm" id="YD" role="2OqNvi">
              <uo k="s:originTrace" v="n:7602347209950244345" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="Ym" role="3cqZAp">
          <uo k="s:originTrace" v="n:7602347209950240803" />
        </node>
        <node concept="3SKdUt" id="Yn" role="3cqZAp">
          <uo k="s:originTrace" v="n:7602347209950244801" />
          <node concept="1PaTwC" id="YE" role="1aUNEU">
            <uo k="s:originTrace" v="n:700871696606817744" />
            <node concept="3oM_SD" id="YF" role="1PaTwD">
              <property role="3oM_SC" value="metaclass" />
              <uo k="s:originTrace" v="n:700871696606817745" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="Yo" role="3cqZAp">
          <uo k="s:originTrace" v="n:2854075155749507969" />
          <node concept="17QLQc" id="YG" role="3clFbw">
            <uo k="s:originTrace" v="n:2825951185693230568" />
            <node concept="2OqwBi" id="YI" role="3uHU7B">
              <uo k="s:originTrace" v="n:2854075155749507991" />
              <node concept="37vLTw" id="YK" role="2Oq$k0">
                <ref role="3cqZAo" node="Yw" resolve="specializedLink" />
                <uo k="s:originTrace" v="n:4265636116363066994" />
              </node>
              <node concept="3TrcHB" id="YL" role="2OqNvi">
                <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                <uo k="s:originTrace" v="n:2854075155749507995" />
              </node>
            </node>
            <node concept="2OqwBi" id="YJ" role="3uHU7w">
              <uo k="s:originTrace" v="n:2854075155749508000" />
              <node concept="37vLTw" id="YM" role="2Oq$k0">
                <ref role="3cqZAo" node="Yc" resolve="link" />
                <uo k="s:originTrace" v="n:2854075155749507999" />
              </node>
              <node concept="3TrcHB" id="YN" role="2OqNvi">
                <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                <uo k="s:originTrace" v="n:2854075155749508005" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="YH" role="3clFbx">
            <uo k="s:originTrace" v="n:2854075155749507971" />
            <node concept="9aQIb" id="YO" role="3cqZAp">
              <uo k="s:originTrace" v="n:2854075155749508006" />
              <node concept="3clFbS" id="YP" role="9aQI4">
                <node concept="3cpWs8" id="YR" role="3cqZAp">
                  <node concept="3cpWsn" id="YT" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="YU" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="YV" role="33vP2m">
                      <node concept="1pGfFk" id="YW" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="YS" role="3cqZAp">
                  <node concept="3cpWsn" id="YX" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="YY" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="YZ" role="33vP2m">
                      <node concept="3VmV3z" id="Z0" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="Z2" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="Z1" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                        <node concept="37vLTw" id="Z3" role="37wK5m">
                          <ref role="3cqZAo" node="Yc" resolve="link" />
                          <uo k="s:originTrace" v="n:2854075155749508009" />
                        </node>
                        <node concept="2OqwBi" id="Z4" role="37wK5m">
                          <uo k="s:originTrace" v="n:7853788040701575896" />
                          <node concept="Xl_RD" id="Z9" role="2Oq$k0">
                            <property role="Xl_RC" value="wrong metaclass for link '%s', specialized link '%s' is '%s'" />
                            <uo k="s:originTrace" v="n:7853788040701575897" />
                          </node>
                          <node concept="2cAKMz" id="Za" role="2OqNvi">
                            <uo k="s:originTrace" v="n:7853788040701575898" />
                            <node concept="2OqwBi" id="Zb" role="2cAKU6">
                              <uo k="s:originTrace" v="n:2854075155749508019" />
                              <node concept="37vLTw" id="Ze" role="2Oq$k0">
                                <ref role="3cqZAo" node="Yc" resolve="link" />
                                <uo k="s:originTrace" v="n:2854075155749508018" />
                              </node>
                              <node concept="3TrcHB" id="Zf" role="2OqNvi">
                                <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                                <uo k="s:originTrace" v="n:2854075155749508023" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="Zc" role="2cAKU6">
                              <uo k="s:originTrace" v="n:2854075155749508033" />
                              <node concept="37vLTw" id="Zg" role="2Oq$k0">
                                <ref role="3cqZAo" node="Yw" resolve="specializedLink" />
                                <uo k="s:originTrace" v="n:4265636116363096865" />
                              </node>
                              <node concept="3TrcHB" id="Zh" role="2OqNvi">
                                <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                                <uo k="s:originTrace" v="n:2854075155749508037" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="Zd" role="2cAKU6">
                              <uo k="s:originTrace" v="n:4241665505386130358" />
                              <node concept="24Tkf9" id="Zi" role="2OqNvi">
                                <uo k="s:originTrace" v="n:4241665505386130360" />
                              </node>
                              <node concept="2OqwBi" id="Zj" role="2Oq$k0">
                                <uo k="s:originTrace" v="n:2854075155749508071" />
                                <node concept="37vLTw" id="Zk" role="2Oq$k0">
                                  <ref role="3cqZAo" node="Yw" resolve="specializedLink" />
                                  <uo k="s:originTrace" v="n:4265636116363103993" />
                                </node>
                                <node concept="3TrcHB" id="Zl" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                                  <uo k="s:originTrace" v="n:2854075155749508075" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="Z5" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="Z6" role="37wK5m">
                          <property role="Xl_RC" value="2854075155749508006" />
                        </node>
                        <node concept="10Nm6u" id="Z7" role="37wK5m" />
                        <node concept="37vLTw" id="Z8" role="37wK5m">
                          <ref role="3cqZAo" node="YT" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="YQ" role="lGtFl">
                <property role="6wLej" value="2854075155749508006" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="Yp" role="3cqZAp">
          <uo k="s:originTrace" v="n:7602347209950244849" />
        </node>
        <node concept="3SKdUt" id="Yq" role="3cqZAp">
          <uo k="s:originTrace" v="n:7602347209950244944" />
          <node concept="1PaTwC" id="Zm" role="1aUNEU">
            <uo k="s:originTrace" v="n:700871696606817746" />
            <node concept="3oM_SD" id="Zn" role="1PaTwD">
              <property role="3oM_SC" value="specialized" />
              <uo k="s:originTrace" v="n:700871696606817747" />
            </node>
            <node concept="3oM_SD" id="Zo" role="1PaTwD">
              <property role="3oM_SC" value="must" />
              <uo k="s:originTrace" v="n:700871696606817748" />
            </node>
            <node concept="3oM_SD" id="Zp" role="1PaTwD">
              <property role="3oM_SC" value="be" />
              <uo k="s:originTrace" v="n:700871696606817749" />
            </node>
            <node concept="3oM_SD" id="Zq" role="1PaTwD">
              <property role="3oM_SC" value="a" />
              <uo k="s:originTrace" v="n:700871696606817750" />
            </node>
            <node concept="3oM_SD" id="Zr" role="1PaTwD">
              <property role="3oM_SC" value="super-concept" />
              <uo k="s:originTrace" v="n:700871696606817751" />
            </node>
            <node concept="3oM_SD" id="Zs" role="1PaTwD">
              <property role="3oM_SC" value="of" />
              <uo k="s:originTrace" v="n:700871696606817752" />
            </node>
            <node concept="3oM_SD" id="Zt" role="1PaTwD">
              <property role="3oM_SC" value="specializing" />
              <uo k="s:originTrace" v="n:700871696606817753" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="Yr" role="3cqZAp">
          <uo k="s:originTrace" v="n:7602347209950253422" />
          <node concept="3clFbS" id="Zu" role="3clFbx">
            <uo k="s:originTrace" v="n:7602347209950253424" />
            <node concept="3clFbJ" id="Zw" role="3cqZAp">
              <uo k="s:originTrace" v="n:7602347209950245046" />
              <node concept="3clFbS" id="Zx" role="3clFbx">
                <uo k="s:originTrace" v="n:7602347209950245048" />
                <node concept="9aQIb" id="Zz" role="3cqZAp">
                  <uo k="s:originTrace" v="n:7602347209950276650" />
                  <node concept="3clFbS" id="Z$" role="9aQI4">
                    <node concept="3cpWs8" id="ZA" role="3cqZAp">
                      <node concept="3cpWsn" id="ZC" role="3cpWs9">
                        <property role="TrG5h" value="errorTarget" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="ZD" role="1tU5fm">
                          <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                        </node>
                        <node concept="2ShNRf" id="ZE" role="33vP2m">
                          <uo k="s:originTrace" v="n:7602347209950446158" />
                          <node concept="1pGfFk" id="ZF" role="2ShVmc">
                            <ref role="37wK5l" to="zavc:~ReferenceMessageTarget.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractLink)" resolve="ReferenceMessageTarget" />
                            <uo k="s:originTrace" v="n:7602347209950446158" />
                            <node concept="359W_D" id="ZG" role="37wK5m">
                              <ref role="359W_E" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                              <ref role="359W_F" to="tpce:fA0lvVK" resolve="target" />
                              <uo k="s:originTrace" v="n:7602347209950446158" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="ZB" role="3cqZAp">
                      <node concept="3cpWsn" id="ZH" role="3cpWs9">
                        <property role="TrG5h" value="_reporter_2309309498" />
                        <node concept="3uibUv" id="ZI" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                        </node>
                        <node concept="2OqwBi" id="ZJ" role="33vP2m">
                          <node concept="3VmV3z" id="ZK" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="ZM" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="ZL" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                            <node concept="37vLTw" id="ZN" role="37wK5m">
                              <ref role="3cqZAo" node="Yc" resolve="link" />
                              <uo k="s:originTrace" v="n:7602347209950276900" />
                            </node>
                            <node concept="Xl_RD" id="ZO" role="37wK5m">
                              <property role="Xl_RC" value="link target must be a subconcept of specialized link's target" />
                              <uo k="s:originTrace" v="n:7602347209950276665" />
                            </node>
                            <node concept="Xl_RD" id="ZP" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="ZQ" role="37wK5m">
                              <property role="Xl_RC" value="7602347209950276650" />
                            </node>
                            <node concept="10Nm6u" id="ZR" role="37wK5m" />
                            <node concept="37vLTw" id="ZS" role="37wK5m">
                              <ref role="3cqZAo" node="ZC" resolve="errorTarget" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="6wLe0" id="Z_" role="lGtFl">
                    <property role="6wLej" value="7602347209950276650" />
                    <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="Zy" role="3clFbw">
                <uo k="s:originTrace" v="n:7602347209950245109" />
                <node concept="2OqwBi" id="ZT" role="3fr31v">
                  <uo k="s:originTrace" v="n:7602347209950250364" />
                  <node concept="2OqwBi" id="ZU" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:7602347209950245977" />
                    <node concept="37vLTw" id="ZW" role="2Oq$k0">
                      <ref role="3cqZAo" node="Yc" resolve="link" />
                      <uo k="s:originTrace" v="n:7602347209950245125" />
                    </node>
                    <node concept="3TrEf2" id="ZX" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                      <uo k="s:originTrace" v="n:7602347209950247494" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="ZV" role="2OqNvi">
                    <ref role="37wK5l" to="tpcn:73yVtVlWOga" resolve="isSubconceptOf" />
                    <uo k="s:originTrace" v="n:8085146484218853679" />
                    <node concept="2OqwBi" id="ZY" role="37wK5m">
                      <uo k="s:originTrace" v="n:8085146484218853681" />
                      <node concept="37vLTw" id="ZZ" role="2Oq$k0">
                        <ref role="3cqZAo" node="Yw" resolve="specializedLink" />
                        <uo k="s:originTrace" v="n:8085146484218853682" />
                      </node>
                      <node concept="3TrEf2" id="100" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                        <uo k="s:originTrace" v="n:8085146484218853683" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="Zv" role="3clFbw">
            <uo k="s:originTrace" v="n:7602347209950259512" />
            <node concept="2OqwBi" id="101" role="3uHU7w">
              <uo k="s:originTrace" v="n:7602347209950264421" />
              <node concept="2OqwBi" id="103" role="2Oq$k0">
                <uo k="s:originTrace" v="n:7602347209950261474" />
                <node concept="37vLTw" id="105" role="2Oq$k0">
                  <ref role="3cqZAo" node="Yw" resolve="specializedLink" />
                  <uo k="s:originTrace" v="n:7602347209950260421" />
                </node>
                <node concept="3TrEf2" id="106" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                  <uo k="s:originTrace" v="n:7602347209950262569" />
                </node>
              </node>
              <node concept="3x8VRR" id="104" role="2OqNvi">
                <uo k="s:originTrace" v="n:7602347209950266150" />
              </node>
            </node>
            <node concept="2OqwBi" id="102" role="3uHU7B">
              <uo k="s:originTrace" v="n:7602347209950268663" />
              <node concept="2OqwBi" id="107" role="2Oq$k0">
                <uo k="s:originTrace" v="n:7602347209950254763" />
                <node concept="37vLTw" id="109" role="2Oq$k0">
                  <ref role="3cqZAo" node="Yc" resolve="link" />
                  <uo k="s:originTrace" v="n:7602347209950253916" />
                </node>
                <node concept="3TrEf2" id="10a" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                  <uo k="s:originTrace" v="n:7602347209950256513" />
                </node>
              </node>
              <node concept="3x8VRR" id="108" role="2OqNvi">
                <uo k="s:originTrace" v="n:7602347209950271066" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="Ys" role="3cqZAp">
          <uo k="s:originTrace" v="n:7602347209950280561" />
        </node>
        <node concept="3SKdUt" id="Yt" role="3cqZAp">
          <uo k="s:originTrace" v="n:7602347209950281150" />
          <node concept="1PaTwC" id="10b" role="1aUNEU">
            <uo k="s:originTrace" v="n:700871696606817754" />
            <node concept="3oM_SD" id="10c" role="1PaTwD">
              <property role="3oM_SC" value="cardinality" />
              <uo k="s:originTrace" v="n:700871696606817755" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="Yu" role="3cqZAp">
          <uo k="s:originTrace" v="n:7602347209950282176" />
          <node concept="3clFbS" id="10d" role="3clFbx">
            <uo k="s:originTrace" v="n:7602347209950282178" />
            <node concept="9aQIb" id="10f" role="3cqZAp">
              <uo k="s:originTrace" v="n:7602347209950307055" />
              <node concept="3clFbS" id="10g" role="9aQI4">
                <node concept="3cpWs8" id="10i" role="3cqZAp">
                  <node concept="3cpWsn" id="10k" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="10l" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="10m" role="33vP2m">
                      <uo k="s:originTrace" v="n:7602347209950313008" />
                      <node concept="1pGfFk" id="10n" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~PropertyMessageTarget.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty)" resolve="PropertyMessageTarget" />
                        <uo k="s:originTrace" v="n:7602347209950313008" />
                        <node concept="355D3s" id="10o" role="37wK5m">
                          <ref role="355D3t" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                          <ref role="355D3u" to="tpce:3Ftr4R6BH8A" resolve="sourceCardinality" />
                          <uo k="s:originTrace" v="n:7602347209950313008" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="10j" role="3cqZAp">
                  <node concept="3cpWsn" id="10p" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="10q" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="10r" role="33vP2m">
                      <node concept="3VmV3z" id="10s" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="10u" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="10t" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                        <node concept="37vLTw" id="10v" role="37wK5m">
                          <ref role="3cqZAo" node="Yc" resolve="link" />
                          <uo k="s:originTrace" v="n:7602347209950307718" />
                        </node>
                        <node concept="Xl_RD" id="10w" role="37wK5m">
                          <property role="Xl_RC" value="specialized link has [1..] cardinality, specializing link must be [1..] cardinality" />
                          <uo k="s:originTrace" v="n:7602347209950307070" />
                        </node>
                        <node concept="Xl_RD" id="10x" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="10y" role="37wK5m">
                          <property role="Xl_RC" value="7602347209950307055" />
                        </node>
                        <node concept="10Nm6u" id="10z" role="37wK5m" />
                        <node concept="37vLTw" id="10$" role="37wK5m">
                          <ref role="3cqZAo" node="10k" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="10h" role="lGtFl">
                <property role="6wLej" value="7602347209950307055" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="10e" role="3clFbw">
            <uo k="s:originTrace" v="n:7602347209950300619" />
            <node concept="3fqX7Q" id="10_" role="3uHU7w">
              <uo k="s:originTrace" v="n:7602347209950305899" />
              <node concept="2OqwBi" id="10B" role="3fr31v">
                <uo k="s:originTrace" v="n:7602347209950305901" />
                <node concept="37vLTw" id="10C" role="2Oq$k0">
                  <ref role="3cqZAo" node="Yc" resolve="link" />
                  <uo k="s:originTrace" v="n:7602347209950305902" />
                </node>
                <node concept="3zqWPK" id="10D" role="2OqNvi">
                  <ref role="37wK5l" to="tpcn:2VYdUfnkjmB" resolve="isAtLeastOneCardinality" />
                  <uo k="s:originTrace" v="n:8085146484218853684" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="10A" role="3uHU7B">
              <uo k="s:originTrace" v="n:7602347209950283548" />
              <node concept="37vLTw" id="10E" role="2Oq$k0">
                <ref role="3cqZAo" node="Yw" resolve="specializedLink" />
                <uo k="s:originTrace" v="n:7602347209950294982" />
              </node>
              <node concept="3zqWPK" id="10F" role="2OqNvi">
                <ref role="37wK5l" to="tpcn:2VYdUfnkjmB" resolve="isAtLeastOneCardinality" />
                <uo k="s:originTrace" v="n:8085146484218853686" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="Yv" role="3cqZAp">
          <uo k="s:originTrace" v="n:7602347209950314168" />
          <node concept="3clFbS" id="10G" role="3clFbx">
            <uo k="s:originTrace" v="n:7602347209950314169" />
            <node concept="9aQIb" id="10I" role="3cqZAp">
              <uo k="s:originTrace" v="n:7602347209950314170" />
              <node concept="3clFbS" id="10J" role="9aQI4">
                <node concept="3cpWs8" id="10L" role="3cqZAp">
                  <node concept="3cpWsn" id="10N" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="10O" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="10P" role="33vP2m">
                      <uo k="s:originTrace" v="n:7602347209950314173" />
                      <node concept="1pGfFk" id="10Q" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~PropertyMessageTarget.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty)" resolve="PropertyMessageTarget" />
                        <uo k="s:originTrace" v="n:7602347209950314173" />
                        <node concept="355D3s" id="10R" role="37wK5m">
                          <ref role="355D3t" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                          <ref role="355D3u" to="tpce:3Ftr4R6BH8A" resolve="sourceCardinality" />
                          <uo k="s:originTrace" v="n:7602347209950314173" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="10M" role="3cqZAp">
                  <node concept="3cpWsn" id="10S" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="10T" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="10U" role="33vP2m">
                      <node concept="3VmV3z" id="10V" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="10X" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="10W" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                        <node concept="37vLTw" id="10Y" role="37wK5m">
                          <ref role="3cqZAo" node="Yc" resolve="link" />
                          <uo k="s:originTrace" v="n:7602347209950314172" />
                        </node>
                        <node concept="Xl_RD" id="10Z" role="37wK5m">
                          <property role="Xl_RC" value="specialized link has [..1] cardinality, specializing link must be [..1] cardinality" />
                          <uo k="s:originTrace" v="n:7602347209950314171" />
                        </node>
                        <node concept="Xl_RD" id="110" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="111" role="37wK5m">
                          <property role="Xl_RC" value="7602347209950314170" />
                        </node>
                        <node concept="10Nm6u" id="112" role="37wK5m" />
                        <node concept="37vLTw" id="113" role="37wK5m">
                          <ref role="3cqZAo" node="10N" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="10K" role="lGtFl">
                <property role="6wLej" value="7602347209950314170" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="10H" role="3clFbw">
            <uo k="s:originTrace" v="n:7602347209950314174" />
            <node concept="3fqX7Q" id="114" role="3uHU7w">
              <uo k="s:originTrace" v="n:7602347209950314175" />
              <node concept="2OqwBi" id="116" role="3fr31v">
                <uo k="s:originTrace" v="n:7602347209950314176" />
                <node concept="37vLTw" id="117" role="2Oq$k0">
                  <ref role="3cqZAo" node="Yc" resolve="link" />
                  <uo k="s:originTrace" v="n:7602347209950314177" />
                </node>
                <node concept="3zqWPK" id="118" role="2OqNvi">
                  <ref role="37wK5l" to="tpcn:hEwIfAt" resolve="isSingular" />
                  <uo k="s:originTrace" v="n:8085146484218853688" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="115" role="3uHU7B">
              <uo k="s:originTrace" v="n:7602347209950314179" />
              <node concept="37vLTw" id="119" role="2Oq$k0">
                <ref role="3cqZAo" node="Yw" resolve="specializedLink" />
                <uo k="s:originTrace" v="n:7602347209950314180" />
              </node>
              <node concept="3zqWPK" id="11a" role="2OqNvi">
                <ref role="37wK5l" to="tpcn:hEwIfAt" resolve="isSingular" />
                <uo k="s:originTrace" v="n:8085146484218853690" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="Yg" role="1B3o_S">
        <uo k="s:originTrace" v="n:2854075155749507956" />
      </node>
    </node>
    <node concept="3clFb_" id="Y2" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:2854075155749507956" />
      <node concept="3bZ5Sz" id="11b" role="3clF45">
        <uo k="s:originTrace" v="n:2854075155749507956" />
      </node>
      <node concept="3clFbS" id="11c" role="3clF47">
        <uo k="s:originTrace" v="n:2854075155749507956" />
        <node concept="3cpWs6" id="11e" role="3cqZAp">
          <uo k="s:originTrace" v="n:2854075155749507956" />
          <node concept="35c_gC" id="11f" role="3cqZAk">
            <ref role="35c_gD" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
            <uo k="s:originTrace" v="n:2854075155749507956" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="11d" role="1B3o_S">
        <uo k="s:originTrace" v="n:2854075155749507956" />
      </node>
    </node>
    <node concept="3clFb_" id="Y3" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:2854075155749507956" />
      <node concept="37vLTG" id="11g" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:2854075155749507956" />
        <node concept="3Tqbb2" id="11k" role="1tU5fm">
          <uo k="s:originTrace" v="n:2854075155749507956" />
        </node>
      </node>
      <node concept="3clFbS" id="11h" role="3clF47">
        <uo k="s:originTrace" v="n:2854075155749507956" />
        <node concept="9aQIb" id="11l" role="3cqZAp">
          <uo k="s:originTrace" v="n:2854075155749507956" />
          <node concept="3clFbS" id="11m" role="9aQI4">
            <uo k="s:originTrace" v="n:2854075155749507956" />
            <node concept="3cpWs6" id="11n" role="3cqZAp">
              <uo k="s:originTrace" v="n:2854075155749507956" />
              <node concept="2ShNRf" id="11o" role="3cqZAk">
                <uo k="s:originTrace" v="n:2854075155749507956" />
                <node concept="1pGfFk" id="11p" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:2854075155749507956" />
                  <node concept="2OqwBi" id="11q" role="37wK5m">
                    <uo k="s:originTrace" v="n:2854075155749507956" />
                    <node concept="2OqwBi" id="11s" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:2854075155749507956" />
                      <node concept="liA8E" id="11u" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:2854075155749507956" />
                      </node>
                      <node concept="2JrnkZ" id="11v" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:2854075155749507956" />
                        <node concept="37vLTw" id="11w" role="2JrQYb">
                          <ref role="3cqZAo" node="11g" resolve="argument" />
                          <uo k="s:originTrace" v="n:2854075155749507956" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="11t" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:2854075155749507956" />
                      <node concept="1rXfSq" id="11x" role="37wK5m">
                        <ref role="37wK5l" node="Y2" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:2854075155749507956" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="11r" role="37wK5m">
                    <uo k="s:originTrace" v="n:2854075155749507956" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="11i" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:2854075155749507956" />
      </node>
      <node concept="3Tm1VV" id="11j" role="1B3o_S">
        <uo k="s:originTrace" v="n:2854075155749507956" />
      </node>
    </node>
    <node concept="3clFb_" id="Y4" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:2854075155749507956" />
      <node concept="3clFbS" id="11y" role="3clF47">
        <uo k="s:originTrace" v="n:2854075155749507956" />
        <node concept="3cpWs6" id="11_" role="3cqZAp">
          <uo k="s:originTrace" v="n:2854075155749507956" />
          <node concept="3clFbT" id="11A" role="3cqZAk">
            <uo k="s:originTrace" v="n:2854075155749507956" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="11z" role="3clF45">
        <uo k="s:originTrace" v="n:2854075155749507956" />
      </node>
      <node concept="3Tm1VV" id="11$" role="1B3o_S">
        <uo k="s:originTrace" v="n:2854075155749507956" />
      </node>
    </node>
    <node concept="3uibUv" id="Y5" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:2854075155749507956" />
    </node>
    <node concept="3uibUv" id="Y6" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:2854075155749507956" />
    </node>
    <node concept="3Tm1VV" id="Y7" role="1B3o_S">
      <uo k="s:originTrace" v="n:2854075155749507956" />
    </node>
  </node>
  <node concept="312cEu" id="11B">
    <property role="TrG5h" value="check_LinkToAbstractConcept_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:3021881260572063800" />
    <node concept="3clFbW" id="11C" role="jymVt">
      <uo k="s:originTrace" v="n:3021881260572063800" />
      <node concept="3clFbS" id="11K" role="3clF47">
        <uo k="s:originTrace" v="n:3021881260572063800" />
      </node>
      <node concept="3Tm1VV" id="11L" role="1B3o_S">
        <uo k="s:originTrace" v="n:3021881260572063800" />
      </node>
      <node concept="3cqZAl" id="11M" role="3clF45">
        <uo k="s:originTrace" v="n:3021881260572063800" />
      </node>
    </node>
    <node concept="3clFb_" id="11D" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:3021881260572063800" />
      <node concept="3cqZAl" id="11N" role="3clF45">
        <uo k="s:originTrace" v="n:3021881260572063800" />
      </node>
      <node concept="37vLTG" id="11O" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="linkToCheck" />
        <uo k="s:originTrace" v="n:3021881260572063800" />
        <node concept="3Tqbb2" id="11T" role="1tU5fm">
          <uo k="s:originTrace" v="n:3021881260572063800" />
        </node>
      </node>
      <node concept="37vLTG" id="11P" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3021881260572063800" />
        <node concept="3uibUv" id="11U" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:3021881260572063800" />
        </node>
      </node>
      <node concept="37vLTG" id="11Q" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:3021881260572063800" />
        <node concept="3uibUv" id="11V" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:3021881260572063800" />
        </node>
      </node>
      <node concept="3clFbS" id="11R" role="3clF47">
        <uo k="s:originTrace" v="n:3021881260572063801" />
        <node concept="3clFbJ" id="11W" role="3cqZAp">
          <uo k="s:originTrace" v="n:3021881260572063804" />
          <node concept="3clFbS" id="11X" role="3clFbx">
            <uo k="s:originTrace" v="n:3021881260572063805" />
            <node concept="3clFbJ" id="11Z" role="3cqZAp">
              <uo k="s:originTrace" v="n:3021881260572077900" />
              <node concept="3clFbS" id="120" role="3clFbx">
                <uo k="s:originTrace" v="n:3021881260572077902" />
                <node concept="3cpWs8" id="122" role="3cqZAp">
                  <uo k="s:originTrace" v="n:3021881260572094114" />
                  <node concept="3cpWsn" id="124" role="3cpWs9">
                    <property role="TrG5h" value="concept" />
                    <uo k="s:originTrace" v="n:3021881260572094115" />
                    <node concept="3Tqbb2" id="125" role="1tU5fm">
                      <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                      <uo k="s:originTrace" v="n:3021881260572094113" />
                    </node>
                    <node concept="2OqwBi" id="126" role="33vP2m">
                      <uo k="s:originTrace" v="n:3021881260572094116" />
                      <node concept="37vLTw" id="127" role="2Oq$k0">
                        <ref role="3cqZAo" node="11O" resolve="linkToCheck" />
                        <uo k="s:originTrace" v="n:3021881260572094117" />
                      </node>
                      <node concept="3TrEf2" id="128" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                        <uo k="s:originTrace" v="n:3021881260572094118" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="123" role="3cqZAp">
                  <uo k="s:originTrace" v="n:3021881260572094144" />
                  <node concept="3clFbS" id="129" role="3clFbx">
                    <uo k="s:originTrace" v="n:3021881260572094146" />
                    <node concept="3SKdUt" id="12b" role="3cqZAp">
                      <uo k="s:originTrace" v="n:6568087819227569077" />
                      <node concept="1PaTwC" id="12d" role="1aUNEU">
                        <uo k="s:originTrace" v="n:6568087819227569078" />
                        <node concept="3oM_SD" id="12e" role="1PaTwD">
                          <property role="3oM_SC" value="XXX" />
                          <uo k="s:originTrace" v="n:6568087819227569090" />
                        </node>
                        <node concept="3oM_SD" id="12f" role="1PaTwD">
                          <property role="3oM_SC" value="perhaps," />
                          <uo k="s:originTrace" v="n:6568087819227569102" />
                        </node>
                        <node concept="3oM_SD" id="12g" role="1PaTwD">
                          <property role="3oM_SC" value="it's" />
                          <uo k="s:originTrace" v="n:6568087819227569115" />
                        </node>
                        <node concept="3oM_SD" id="12h" role="1PaTwD">
                          <property role="3oM_SC" value="better" />
                          <uo k="s:originTrace" v="n:6568087819227569119" />
                        </node>
                        <node concept="3oM_SD" id="12i" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                          <uo k="s:originTrace" v="n:6568087819227569134" />
                        </node>
                        <node concept="3oM_SD" id="12j" role="1PaTwD">
                          <property role="3oM_SC" value="have" />
                          <uo k="s:originTrace" v="n:6568087819227569140" />
                        </node>
                        <node concept="3oM_SD" id="12k" role="1PaTwD">
                          <property role="3oM_SC" value="intention" />
                          <uo k="s:originTrace" v="n:6568087819227569157" />
                        </node>
                        <node concept="3oM_SD" id="12l" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                          <uo k="s:originTrace" v="n:6568087819227569175" />
                        </node>
                        <node concept="3oM_SD" id="12m" role="1PaTwD">
                          <property role="3oM_SC" value="provide" />
                          <uo k="s:originTrace" v="n:6568087819227569184" />
                        </node>
                        <node concept="3oM_SD" id="12n" role="1PaTwD">
                          <property role="3oM_SC" value="default" />
                          <uo k="s:originTrace" v="n:6568087819227569214" />
                        </node>
                        <node concept="3oM_SD" id="12o" role="1PaTwD">
                          <property role="3oM_SC" value="implementation" />
                          <uo k="s:originTrace" v="n:6568087819227569235" />
                        </node>
                        <node concept="3oM_SD" id="12p" role="1PaTwD">
                          <property role="3oM_SC" value="instead" />
                          <uo k="s:originTrace" v="n:6568087819227569267" />
                        </node>
                        <node concept="3oM_SD" id="12q" role="1PaTwD">
                          <property role="3oM_SC" value="of" />
                          <uo k="s:originTrace" v="n:6568087819227569290" />
                        </node>
                        <node concept="3oM_SD" id="12r" role="1PaTwD">
                          <property role="3oM_SC" value="(in" />
                          <uo k="s:originTrace" v="n:6568087819227569365" />
                        </node>
                        <node concept="3oM_SD" id="12s" role="1PaTwD">
                          <property role="3oM_SC" value="addition" />
                          <uo k="s:originTrace" v="n:6568087819227569382" />
                        </node>
                        <node concept="3oM_SD" id="12t" role="1PaTwD">
                          <property role="3oM_SC" value="to?)" />
                          <uo k="s:originTrace" v="n:6568087819227569410" />
                        </node>
                        <node concept="3oM_SD" id="12u" role="1PaTwD">
                          <property role="3oM_SC" value="this" />
                          <uo k="s:originTrace" v="n:6568087819227569304" />
                        </node>
                        <node concept="3oM_SD" id="12v" role="1PaTwD">
                          <property role="3oM_SC" value="message?" />
                          <uo k="s:originTrace" v="n:6568087819227569329" />
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="12c" role="3cqZAp">
                      <uo k="s:originTrace" v="n:6568087819227559050" />
                      <node concept="3clFbS" id="12w" role="9aQI4">
                        <node concept="3cpWs8" id="12y" role="3cqZAp">
                          <node concept="3cpWsn" id="12$" role="3cpWs9">
                            <property role="TrG5h" value="errorTarget" />
                            <property role="3TUv4t" value="true" />
                            <node concept="3uibUv" id="12_" role="1tU5fm">
                              <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                            </node>
                            <node concept="2ShNRf" id="12A" role="33vP2m">
                              <node concept="1pGfFk" id="12B" role="2ShVmc">
                                <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="12z" role="3cqZAp">
                          <node concept="3cpWsn" id="12C" role="3cpWs9">
                            <property role="TrG5h" value="_reporter_2309309498" />
                            <node concept="3uibUv" id="12D" role="1tU5fm">
                              <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                            </node>
                            <node concept="2OqwBi" id="12E" role="33vP2m">
                              <node concept="3VmV3z" id="12F" role="2Oq$k0">
                                <property role="3VnrPo" value="typeCheckingContext" />
                                <node concept="3uibUv" id="12H" role="3Vn4Tt">
                                  <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                                </node>
                              </node>
                              <node concept="liA8E" id="12G" role="2OqNvi">
                                <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportInfo(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportInfo" />
                                <node concept="37vLTw" id="12I" role="37wK5m">
                                  <ref role="3cqZAo" node="11O" resolve="linkToCheck" />
                                  <uo k="s:originTrace" v="n:6568087819227559059" />
                                </node>
                                <node concept="3cpWs3" id="12J" role="37wK5m">
                                  <uo k="s:originTrace" v="n:6568087819227559052" />
                                  <node concept="3cpWs3" id="12O" role="3uHU7B">
                                    <uo k="s:originTrace" v="n:6568087819227559053" />
                                    <node concept="Xl_RD" id="12Q" role="3uHU7B">
                                      <property role="Xl_RC" value="The link's target concept has abstract unimplemented methods.\n" />
                                      <uo k="s:originTrace" v="n:6568087819227559055" />
                                    </node>
                                    <node concept="Xl_RD" id="12R" role="3uHU7w">
                                      <property role="Xl_RC" value="Sometimes, MPS Editor creates instances of abstract concepts.\n" />
                                      <uo k="s:originTrace" v="n:6568087819227559057" />
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="12P" role="3uHU7w">
                                    <property role="Xl_RC" value="If you don't provide implementation for the methods, MPS uses built-in defaults if methods get invoked." />
                                    <uo k="s:originTrace" v="n:6568087819227559058" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="12K" role="37wK5m">
                                  <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                                </node>
                                <node concept="Xl_RD" id="12L" role="37wK5m">
                                  <property role="Xl_RC" value="6568087819227559050" />
                                </node>
                                <node concept="10Nm6u" id="12M" role="37wK5m" />
                                <node concept="37vLTw" id="12N" role="37wK5m">
                                  <ref role="3cqZAo" node="12$" resolve="errorTarget" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="6wLe0" id="12x" role="lGtFl">
                        <property role="6wLej" value="6568087819227559050" />
                        <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="12a" role="3clFbw">
                    <uo k="s:originTrace" v="n:3021881260572118682" />
                    <node concept="2OqwBi" id="12S" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:3021881260572099101" />
                      <node concept="37vLTw" id="12U" role="2Oq$k0">
                        <ref role="3cqZAo" node="124" resolve="concept" />
                        <uo k="s:originTrace" v="n:3021881260572098592" />
                      </node>
                      <node concept="3zqWPK" id="12V" role="2OqNvi">
                        <ref role="37wK5l" to="tpcn:hEwILIz" resolve="getNotImplementedConceptMethods" />
                        <uo k="s:originTrace" v="n:8085146484218853706" />
                      </node>
                    </node>
                    <node concept="3GX2aA" id="12T" role="2OqNvi">
                      <uo k="s:originTrace" v="n:3021881260572154402" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="121" role="3clFbw">
                <uo k="s:originTrace" v="n:3021881260572090221" />
                <node concept="2OqwBi" id="12W" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:3021881260572086623" />
                  <node concept="37vLTw" id="12Y" role="2Oq$k0">
                    <ref role="3cqZAo" node="11O" resolve="linkToCheck" />
                    <uo k="s:originTrace" v="n:3021881260572085497" />
                  </node>
                  <node concept="3TrcHB" id="12Z" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                    <uo k="s:originTrace" v="n:3021881260572088662" />
                  </node>
                </node>
                <node concept="21noJN" id="12X" role="2OqNvi">
                  <uo k="s:originTrace" v="n:4241665505386130371" />
                  <node concept="21nZrQ" id="130" role="21noJM">
                    <ref role="21nZrZ" to="tpce:3Ftr4R6BFyo" resolve="aggregation" />
                    <uo k="s:originTrace" v="n:4241665505386130372" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="11Y" role="3clFbw">
            <uo k="s:originTrace" v="n:3021881260572074571" />
            <node concept="2OqwBi" id="131" role="3uHU7B">
              <uo k="s:originTrace" v="n:3021881260572063809" />
              <node concept="37vLTw" id="133" role="2Oq$k0">
                <ref role="3cqZAo" node="11O" resolve="linkToCheck" />
                <uo k="s:originTrace" v="n:3021881260572063810" />
              </node>
              <node concept="3TrcHB" id="134" role="2OqNvi">
                <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                <uo k="s:originTrace" v="n:3021881260572063811" />
              </node>
            </node>
            <node concept="10Nm6u" id="132" role="3uHU7w">
              <uo k="s:originTrace" v="n:3021881260572063808" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="11S" role="1B3o_S">
        <uo k="s:originTrace" v="n:3021881260572063800" />
      </node>
    </node>
    <node concept="3clFb_" id="11E" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:3021881260572063800" />
      <node concept="3bZ5Sz" id="135" role="3clF45">
        <uo k="s:originTrace" v="n:3021881260572063800" />
      </node>
      <node concept="3clFbS" id="136" role="3clF47">
        <uo k="s:originTrace" v="n:3021881260572063800" />
        <node concept="3cpWs6" id="138" role="3cqZAp">
          <uo k="s:originTrace" v="n:3021881260572063800" />
          <node concept="35c_gC" id="139" role="3cqZAk">
            <ref role="35c_gD" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
            <uo k="s:originTrace" v="n:3021881260572063800" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="137" role="1B3o_S">
        <uo k="s:originTrace" v="n:3021881260572063800" />
      </node>
    </node>
    <node concept="3clFb_" id="11F" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:3021881260572063800" />
      <node concept="37vLTG" id="13a" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:3021881260572063800" />
        <node concept="3Tqbb2" id="13e" role="1tU5fm">
          <uo k="s:originTrace" v="n:3021881260572063800" />
        </node>
      </node>
      <node concept="3clFbS" id="13b" role="3clF47">
        <uo k="s:originTrace" v="n:3021881260572063800" />
        <node concept="9aQIb" id="13f" role="3cqZAp">
          <uo k="s:originTrace" v="n:3021881260572063800" />
          <node concept="3clFbS" id="13g" role="9aQI4">
            <uo k="s:originTrace" v="n:3021881260572063800" />
            <node concept="3cpWs6" id="13h" role="3cqZAp">
              <uo k="s:originTrace" v="n:3021881260572063800" />
              <node concept="2ShNRf" id="13i" role="3cqZAk">
                <uo k="s:originTrace" v="n:3021881260572063800" />
                <node concept="1pGfFk" id="13j" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:3021881260572063800" />
                  <node concept="2OqwBi" id="13k" role="37wK5m">
                    <uo k="s:originTrace" v="n:3021881260572063800" />
                    <node concept="2OqwBi" id="13m" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:3021881260572063800" />
                      <node concept="liA8E" id="13o" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:3021881260572063800" />
                      </node>
                      <node concept="2JrnkZ" id="13p" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:3021881260572063800" />
                        <node concept="37vLTw" id="13q" role="2JrQYb">
                          <ref role="3cqZAo" node="13a" resolve="argument" />
                          <uo k="s:originTrace" v="n:3021881260572063800" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="13n" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:3021881260572063800" />
                      <node concept="1rXfSq" id="13r" role="37wK5m">
                        <ref role="37wK5l" node="11E" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:3021881260572063800" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="13l" role="37wK5m">
                    <uo k="s:originTrace" v="n:3021881260572063800" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="13c" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:3021881260572063800" />
      </node>
      <node concept="3Tm1VV" id="13d" role="1B3o_S">
        <uo k="s:originTrace" v="n:3021881260572063800" />
      </node>
    </node>
    <node concept="3clFb_" id="11G" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:3021881260572063800" />
      <node concept="3clFbS" id="13s" role="3clF47">
        <uo k="s:originTrace" v="n:3021881260572063800" />
        <node concept="3cpWs6" id="13v" role="3cqZAp">
          <uo k="s:originTrace" v="n:3021881260572063800" />
          <node concept="3clFbT" id="13w" role="3cqZAk">
            <uo k="s:originTrace" v="n:3021881260572063800" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="13t" role="3clF45">
        <uo k="s:originTrace" v="n:3021881260572063800" />
      </node>
      <node concept="3Tm1VV" id="13u" role="1B3o_S">
        <uo k="s:originTrace" v="n:3021881260572063800" />
      </node>
    </node>
    <node concept="3uibUv" id="11H" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:3021881260572063800" />
    </node>
    <node concept="3uibUv" id="11I" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:3021881260572063800" />
    </node>
    <node concept="3Tm1VV" id="11J" role="1B3o_S">
      <uo k="s:originTrace" v="n:3021881260572063800" />
    </node>
  </node>
  <node concept="312cEu" id="13x">
    <property role="TrG5h" value="check_PropertyDeclaration_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:1212181908803" />
    <node concept="3clFbW" id="13y" role="jymVt">
      <uo k="s:originTrace" v="n:1212181908803" />
      <node concept="3clFbS" id="13E" role="3clF47">
        <uo k="s:originTrace" v="n:1212181908803" />
      </node>
      <node concept="3Tm1VV" id="13F" role="1B3o_S">
        <uo k="s:originTrace" v="n:1212181908803" />
      </node>
      <node concept="3cqZAl" id="13G" role="3clF45">
        <uo k="s:originTrace" v="n:1212181908803" />
      </node>
    </node>
    <node concept="3clFb_" id="13z" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:1212181908803" />
      <node concept="3cqZAl" id="13H" role="3clF45">
        <uo k="s:originTrace" v="n:1212181908803" />
      </node>
      <node concept="37vLTG" id="13I" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="prop" />
        <uo k="s:originTrace" v="n:1212181908803" />
        <node concept="3Tqbb2" id="13N" role="1tU5fm">
          <uo k="s:originTrace" v="n:1212181908803" />
        </node>
      </node>
      <node concept="37vLTG" id="13J" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:1212181908803" />
        <node concept="3uibUv" id="13O" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:1212181908803" />
        </node>
      </node>
      <node concept="37vLTG" id="13K" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:1212181908803" />
        <node concept="3uibUv" id="13P" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:1212181908803" />
        </node>
      </node>
      <node concept="3clFbS" id="13L" role="3clF47">
        <uo k="s:originTrace" v="n:1212181908804" />
        <node concept="3SKdUt" id="13Q" role="3cqZAp">
          <uo k="s:originTrace" v="n:7376433222636454437" />
          <node concept="1PaTwC" id="144" role="1aUNEU">
            <uo k="s:originTrace" v="n:700871696606817651" />
            <node concept="3oM_SD" id="145" role="1PaTwD">
              <property role="3oM_SC" value="property" />
              <uo k="s:originTrace" v="n:700871696606817652" />
            </node>
            <node concept="3oM_SD" id="146" role="1PaTwD">
              <property role="3oM_SC" value="overriding" />
              <uo k="s:originTrace" v="n:700871696606817653" />
            </node>
            <node concept="3oM_SD" id="147" role="1PaTwD">
              <property role="3oM_SC" value="is" />
              <uo k="s:originTrace" v="n:700871696606817654" />
            </node>
            <node concept="3oM_SD" id="148" role="1PaTwD">
              <property role="3oM_SC" value="banned" />
              <uo k="s:originTrace" v="n:700871696606817655" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="13R" role="3cqZAp">
          <uo k="s:originTrace" v="n:1212181978950" />
          <node concept="3clFbS" id="149" role="3clFbx">
            <uo k="s:originTrace" v="n:1212181978951" />
            <node concept="3cpWs6" id="14b" role="3cqZAp">
              <uo k="s:originTrace" v="n:1212181987183" />
            </node>
          </node>
          <node concept="3clFbC" id="14a" role="3clFbw">
            <uo k="s:originTrace" v="n:1212181984007" />
            <node concept="10Nm6u" id="14c" role="3uHU7w">
              <uo k="s:originTrace" v="n:1212181985604" />
            </node>
            <node concept="2OqwBi" id="14d" role="3uHU7B">
              <uo k="s:originTrace" v="n:1212181983190" />
              <node concept="37vLTw" id="14e" role="2Oq$k0">
                <ref role="3cqZAo" node="13I" resolve="prop" />
                <uo k="s:originTrace" v="n:1212181981642" />
              </node>
              <node concept="3TrcHB" id="14f" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                <uo k="s:originTrace" v="n:1212181983428" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="13S" role="3cqZAp">
          <uo k="s:originTrace" v="n:1212182013584" />
          <node concept="3cpWsn" id="14g" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <uo k="s:originTrace" v="n:1212182013585" />
            <node concept="3Tqbb2" id="14h" role="1tU5fm">
              <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
              <uo k="s:originTrace" v="n:1212182013586" />
            </node>
            <node concept="2OqwBi" id="14i" role="33vP2m">
              <uo k="s:originTrace" v="n:1212182013587" />
              <node concept="37vLTw" id="14j" role="2Oq$k0">
                <ref role="3cqZAo" node="13I" resolve="prop" />
                <uo k="s:originTrace" v="n:1212182013588" />
              </node>
              <node concept="2Xjw5R" id="14k" role="2OqNvi">
                <uo k="s:originTrace" v="n:1212182013589" />
                <node concept="1xMEDy" id="14l" role="1xVPHs">
                  <uo k="s:originTrace" v="n:1212182013590" />
                  <node concept="chp4Y" id="14m" role="ri$Ld">
                    <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                    <uo k="s:originTrace" v="n:1212182013591" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="13T" role="3cqZAp">
          <uo k="s:originTrace" v="n:7813081600363857754" />
          <node concept="1PaTwC" id="14n" role="1aUNEU">
            <uo k="s:originTrace" v="n:7813081600363857755" />
            <node concept="3oM_SD" id="14o" role="1PaTwD">
              <property role="3oM_SC" value="XXX" />
              <uo k="s:originTrace" v="n:7813081600363857757" />
            </node>
            <node concept="3oM_SD" id="14p" role="1PaTwD">
              <property role="3oM_SC" value="this" />
              <uo k="s:originTrace" v="n:7813081600363858677" />
            </node>
            <node concept="3oM_SD" id="14q" role="1PaTwD">
              <property role="3oM_SC" value="check" />
              <uo k="s:originTrace" v="n:7813081600363858683" />
            </node>
            <node concept="3oM_SD" id="14r" role="1PaTwD">
              <property role="3oM_SC" value="is" />
              <uo k="s:originTrace" v="n:7813081600363858687" />
            </node>
            <node concept="3oM_SD" id="14s" role="1PaTwD">
              <property role="3oM_SC" value="invoked" />
              <uo k="s:originTrace" v="n:7813081600363858692" />
            </node>
            <node concept="3oM_SD" id="14t" role="1PaTwD">
              <property role="3oM_SC" value="for" />
              <uo k="s:originTrace" v="n:7813081600363858699" />
            </node>
            <node concept="3oM_SD" id="14u" role="1PaTwD">
              <property role="3oM_SC" value="each" />
              <uo k="s:originTrace" v="n:7813081600363858706" />
            </node>
            <node concept="3oM_SD" id="14v" role="1PaTwD">
              <property role="3oM_SC" value="property" />
              <uo k="s:originTrace" v="n:7813081600363858758" />
            </node>
            <node concept="3oM_SD" id="14w" role="1PaTwD">
              <property role="3oM_SC" value="visible" />
              <uo k="s:originTrace" v="n:7813081600363858768" />
            </node>
            <node concept="3oM_SD" id="14x" role="1PaTwD">
              <property role="3oM_SC" value="in" />
              <uo k="s:originTrace" v="n:7813081600363858778" />
            </node>
            <node concept="3oM_SD" id="14y" role="1PaTwD">
              <property role="3oM_SC" value="ConceptDeclaration" />
              <uo k="s:originTrace" v="n:7813081600363858789" />
            </node>
            <node concept="3oM_SD" id="14z" role="1PaTwD">
              <property role="3oM_SC" value="editor." />
              <uo k="s:originTrace" v="n:7813081600363858807" />
            </node>
            <node concept="3oM_SD" id="14$" role="1PaTwD">
              <property role="3oM_SC" value="If" />
              <uo k="s:originTrace" v="n:7813081600363858822" />
            </node>
            <node concept="3oM_SD" id="14_" role="1PaTwD">
              <property role="3oM_SC" value="it" />
              <uo k="s:originTrace" v="n:7813081600363858940" />
            </node>
            <node concept="3oM_SD" id="14A" role="1PaTwD">
              <property role="3oM_SC" value="takes" />
              <uo k="s:originTrace" v="n:7813081600363858957" />
            </node>
            <node concept="3oM_SD" id="14B" role="1PaTwD">
              <property role="3oM_SC" value="noticeably" />
              <uo k="s:originTrace" v="n:7813081600363858974" />
            </node>
            <node concept="3oM_SD" id="14C" role="1PaTwD">
              <property role="3oM_SC" value="longer" />
              <uo k="s:originTrace" v="n:7813081600363859014" />
            </node>
            <node concept="3oM_SD" id="14D" role="1PaTwD">
              <property role="3oM_SC" value="than" />
              <uo k="s:originTrace" v="n:7813081600363858992" />
            </node>
            <node concept="3oM_SD" id="14E" role="1PaTwD">
              <property role="3oM_SC" value="it" />
              <uo k="s:originTrace" v="n:7813081600363859035" />
            </node>
            <node concept="3oM_SD" id="14F" role="1PaTwD">
              <property role="3oM_SC" value="was" />
              <uo k="s:originTrace" v="n:7813081600363859055" />
            </node>
            <node concept="3oM_SD" id="14G" role="1PaTwD">
              <property role="3oM_SC" value="compared" />
              <uo k="s:originTrace" v="n:7813081600363859077" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="13U" role="3cqZAp">
          <uo k="s:originTrace" v="n:7813081600363861307" />
          <node concept="1PaTwC" id="14H" role="1aUNEU">
            <uo k="s:originTrace" v="n:7813081600363861308" />
            <node concept="3oM_SD" id="14I" role="1PaTwD">
              <property role="3oM_SC" value="to" />
              <uo k="s:originTrace" v="n:7813081600363861310" />
            </node>
            <node concept="3oM_SD" id="14J" role="1PaTwD">
              <property role="3oM_SC" value="cached" />
              <uo k="s:originTrace" v="n:7813081600363863506" />
            </node>
            <node concept="3oM_SD" id="14K" role="1PaTwD">
              <property role="3oM_SC" value="access" />
              <uo k="s:originTrace" v="n:7813081600363863510" />
            </node>
            <node concept="3oM_SD" id="14L" role="1PaTwD">
              <property role="3oM_SC" value="to" />
              <uo k="s:originTrace" v="n:7813081600363863515" />
            </node>
            <node concept="3oM_SD" id="14M" role="1PaTwD">
              <property role="3oM_SC" value="property" />
              <uo k="s:originTrace" v="n:7813081600363863520" />
            </node>
            <node concept="3oM_SD" id="14N" role="1PaTwD">
              <property role="3oM_SC" value="declarations," />
              <uo k="s:originTrace" v="n:7813081600363863527" />
            </node>
            <node concept="3oM_SD" id="14O" role="1PaTwD">
              <property role="3oM_SC" value="we'd" />
              <uo k="s:originTrace" v="n:7813081600363863534" />
            </node>
            <node concept="3oM_SD" id="14P" role="1PaTwD">
              <property role="3oM_SC" value="better" />
              <uo k="s:originTrace" v="n:7813081600363863544" />
            </node>
            <node concept="3oM_SD" id="14Q" role="1PaTwD">
              <property role="3oM_SC" value="introduce" />
              <uo k="s:originTrace" v="n:7813081600363863555" />
            </node>
            <node concept="3oM_SD" id="14R" role="1PaTwD">
              <property role="3oM_SC" value="a" />
              <uo k="s:originTrace" v="n:7813081600363863566" />
            </node>
            <node concept="3oM_SD" id="14S" role="1PaTwD">
              <property role="3oM_SC" value="notion" />
              <uo k="s:originTrace" v="n:7813081600363863578" />
            </node>
            <node concept="3oM_SD" id="14T" role="1PaTwD">
              <property role="3oM_SC" value="of" />
              <uo k="s:originTrace" v="n:7813081600363863607" />
            </node>
            <node concept="3oM_SD" id="14U" role="1PaTwD">
              <property role="3oM_SC" value="caching" />
              <uo k="s:originTrace" v="n:7813081600363863622" />
            </node>
            <node concept="3oM_SD" id="14V" role="1PaTwD">
              <property role="3oM_SC" value="context" />
              <uo k="s:originTrace" v="n:7813081600363863592" />
            </node>
            <node concept="3oM_SD" id="14W" role="1PaTwD">
              <property role="3oM_SC" value="here" />
              <uo k="s:originTrace" v="n:7813081600363863639" />
            </node>
            <node concept="3oM_SD" id="14X" role="1PaTwD">
              <property role="3oM_SC" value="and" />
              <uo k="s:originTrace" v="n:7813081600363863657" />
            </node>
            <node concept="3oM_SD" id="14Y" role="1PaTwD">
              <property role="3oM_SC" value="calculate" />
              <uo k="s:originTrace" v="n:7813081600363863676" />
            </node>
            <node concept="3oM_SD" id="14Z" role="1PaTwD">
              <property role="3oM_SC" value="concept" />
              <uo k="s:originTrace" v="n:7813081600363863700" />
            </node>
            <node concept="3oM_SD" id="150" role="1PaTwD">
              <property role="3oM_SC" value="hierarchy/property" />
              <uo k="s:originTrace" v="n:7813081600363863720" />
            </node>
            <node concept="3oM_SD" id="151" role="1PaTwD">
              <property role="3oM_SC" value="declarations" />
              <uo k="s:originTrace" v="n:7813081600363863742" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="13V" role="3cqZAp">
          <uo k="s:originTrace" v="n:7813081600363863952" />
          <node concept="1PaTwC" id="152" role="1aUNEU">
            <uo k="s:originTrace" v="n:7813081600363863953" />
            <node concept="3oM_SD" id="153" role="1PaTwD">
              <property role="3oM_SC" value="once" />
              <uo k="s:originTrace" v="n:7813081600363866188" />
            </node>
            <node concept="3oM_SD" id="154" role="1PaTwD">
              <property role="3oM_SC" value="per" />
              <uo k="s:originTrace" v="n:7813081600363866191" />
            </node>
            <node concept="3oM_SD" id="155" role="1PaTwD">
              <property role="3oM_SC" value="checking" />
              <uo k="s:originTrace" v="n:7813081600363866194" />
            </node>
            <node concept="3oM_SD" id="156" role="1PaTwD">
              <property role="3oM_SC" value="session" />
              <uo k="s:originTrace" v="n:7813081600363866201" />
            </node>
            <node concept="3oM_SD" id="157" role="1PaTwD">
              <property role="3oM_SC" value="(this" />
              <uo k="s:originTrace" v="n:7813081600363866206" />
            </node>
            <node concept="3oM_SD" id="158" role="1PaTwD">
              <property role="3oM_SC" value="doesn't" />
              <uo k="s:originTrace" v="n:7813081600363866214" />
            </node>
            <node concept="3oM_SD" id="159" role="1PaTwD">
              <property role="3oM_SC" value="seem" />
              <uo k="s:originTrace" v="n:7813081600363866221" />
            </node>
            <node concept="3oM_SD" id="15a" role="1PaTwD">
              <property role="3oM_SC" value="to" />
              <uo k="s:originTrace" v="n:7813081600363866230" />
            </node>
            <node concept="3oM_SD" id="15b" role="1PaTwD">
              <property role="3oM_SC" value="be" />
              <uo k="s:originTrace" v="n:7813081600363866239" />
            </node>
            <node concept="3oM_SD" id="15c" role="1PaTwD">
              <property role="3oM_SC" value="any" />
              <uo k="s:originTrace" v="n:7813081600363866249" />
            </node>
            <node concept="3oM_SD" id="15d" role="1PaTwD">
              <property role="3oM_SC" value="trouble" />
              <uo k="s:originTrace" v="n:7813081600363866262" />
            </node>
            <node concept="3oM_SD" id="15e" role="1PaTwD">
              <property role="3oM_SC" value="using" />
              <uo k="s:originTrace" v="n:7813081600363866276" />
            </node>
            <node concept="3oM_SD" id="15f" role="1PaTwD">
              <property role="3oM_SC" value="TypecheckingContext" />
              <uo k="s:originTrace" v="n:7813081600363866291" />
            </node>
            <node concept="3oM_SD" id="15g" role="1PaTwD">
              <property role="3oM_SC" value="to" />
              <uo k="s:originTrace" v="n:7813081600363866309" />
            </node>
            <node concept="3oM_SD" id="15h" role="1PaTwD">
              <property role="3oM_SC" value="keep" />
              <uo k="s:originTrace" v="n:7813081600363866324" />
            </node>
            <node concept="3oM_SD" id="15i" role="1PaTwD">
              <property role="3oM_SC" value="cached" />
              <uo k="s:originTrace" v="n:7813081600363866341" />
            </node>
            <node concept="3oM_SD" id="15j" role="1PaTwD">
              <property role="3oM_SC" value="values" />
              <uo k="s:originTrace" v="n:7813081600363866360" />
            </node>
            <node concept="3oM_SD" id="15k" role="1PaTwD">
              <property role="3oM_SC" value="during" />
              <uo k="s:originTrace" v="n:7813081600363866379" />
            </node>
            <node concept="3oM_SD" id="15l" role="1PaTwD">
              <property role="3oM_SC" value="checking" />
              <uo k="s:originTrace" v="n:7813081600363866401" />
            </node>
            <node concept="3oM_SD" id="15m" role="1PaTwD">
              <property role="3oM_SC" value="session." />
              <uo k="s:originTrace" v="n:7813081600363866422" />
            </node>
            <node concept="3oM_SD" id="15n" role="1PaTwD">
              <property role="3oM_SC" value="" />
              <uo k="s:originTrace" v="n:7813081600363866444" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="13W" role="3cqZAp">
          <uo k="s:originTrace" v="n:7813081600363866622" />
          <node concept="1PaTwC" id="15o" role="1aUNEU">
            <uo k="s:originTrace" v="n:7813081600363866621" />
            <node concept="3oM_SD" id="15p" role="1PaTwD">
              <property role="3oM_SC" value="Could" />
              <uo k="s:originTrace" v="n:7813081600363866620" />
            </node>
            <node concept="3oM_SD" id="15q" role="1PaTwD">
              <property role="3oM_SC" value="use" />
              <uo k="s:originTrace" v="n:7813081600363866516" />
            </node>
            <node concept="3oM_SD" id="15r" role="1PaTwD">
              <property role="3oM_SC" value="setIsNonTypesystemComputation()/" />
              <uo k="s:originTrace" v="n:7813081600363866564" />
            </node>
            <node concept="3oM_SD" id="15s" role="1PaTwD">
              <property role="3oM_SC" value="resetIsNonTypesystemComputation()" />
              <uo k="s:originTrace" v="n:7813081600363866592" />
            </node>
            <node concept="3oM_SD" id="15t" role="1PaTwD">
              <property role="3oM_SC" value="of" />
              <uo k="s:originTrace" v="n:7813081600363866591" />
            </node>
            <node concept="3oM_SD" id="15u" role="1PaTwD">
              <property role="3oM_SC" value="IncrementalTypecheckingContext" />
              <uo k="s:originTrace" v="n:7813081600363868934" />
            </node>
            <node concept="3oM_SD" id="15v" role="1PaTwD">
              <property role="3oM_SC" value="to" />
              <uo k="s:originTrace" v="n:7813081600363868942" />
            </node>
            <node concept="3oM_SD" id="15w" role="1PaTwD">
              <property role="3oM_SC" value="clean" />
              <uo k="s:originTrace" v="n:7813081600363868973" />
            </node>
            <node concept="3oM_SD" id="15x" role="1PaTwD">
              <property role="3oM_SC" value="the" />
              <uo k="s:originTrace" v="n:7813081600363868982" />
            </node>
            <node concept="3oM_SD" id="15y" role="1PaTwD">
              <property role="3oM_SC" value="cache)" />
              <uo k="s:originTrace" v="n:7813081600363868992" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="13X" role="3cqZAp">
          <uo k="s:originTrace" v="n:2648177819226319971" />
          <node concept="3cpWsn" id="15z" role="3cpWs9">
            <property role="TrG5h" value="otherProps" />
            <uo k="s:originTrace" v="n:2648177819226319972" />
            <node concept="_YKpA" id="15$" role="1tU5fm">
              <uo k="s:originTrace" v="n:2648177819226319706" />
              <node concept="3Tqbb2" id="15A" role="_ZDj9">
                <ref role="ehGHo" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
                <uo k="s:originTrace" v="n:2648177819226319709" />
              </node>
            </node>
            <node concept="2OqwBi" id="15_" role="33vP2m">
              <uo k="s:originTrace" v="n:2648177819226319973" />
              <node concept="2OqwBi" id="15B" role="2Oq$k0">
                <uo k="s:originTrace" v="n:2648177819226319974" />
                <node concept="2OqwBi" id="15D" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:2648177819226319975" />
                  <node concept="37vLTw" id="15F" role="2Oq$k0">
                    <ref role="3cqZAo" node="14g" resolve="concept" />
                    <uo k="s:originTrace" v="n:2648177819226319976" />
                  </node>
                  <node concept="3zqWPK" id="15G" role="2OqNvi">
                    <ref role="37wK5l" to="tpcn:hEwILLM" resolve="getPropertyDeclarations" />
                    <uo k="s:originTrace" v="n:8085146484218853677" />
                  </node>
                </node>
                <node concept="3zZkjj" id="15E" role="2OqNvi">
                  <uo k="s:originTrace" v="n:2648177819226319978" />
                  <node concept="1bVj0M" id="15H" role="23t8la">
                    <uo k="s:originTrace" v="n:2648177819226319979" />
                    <node concept="3clFbS" id="15I" role="1bW5cS">
                      <uo k="s:originTrace" v="n:2648177819226319980" />
                      <node concept="3clFbF" id="15K" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2648177819226319981" />
                        <node concept="3y3z36" id="15L" role="3clFbG">
                          <uo k="s:originTrace" v="n:2648177819226319982" />
                          <node concept="37vLTw" id="15M" role="3uHU7w">
                            <ref role="3cqZAo" node="13I" resolve="prop" />
                            <uo k="s:originTrace" v="n:2648177819226319983" />
                          </node>
                          <node concept="37vLTw" id="15N" role="3uHU7B">
                            <ref role="3cqZAo" node="15J" resolve="it" />
                            <uo k="s:originTrace" v="n:2648177819226319984" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="15J" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <uo k="s:originTrace" v="n:6847626768367732769" />
                      <node concept="2jxLKc" id="15O" role="1tU5fm">
                        <uo k="s:originTrace" v="n:6847626768367732770" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="15C" role="2OqNvi">
                <uo k="s:originTrace" v="n:2648177819226319987" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="13Y" role="3cqZAp">
          <uo k="s:originTrace" v="n:1212182188247" />
          <node concept="3cpWsn" id="15P" role="3cpWs9">
            <property role="TrG5h" value="propInConcept" />
            <uo k="s:originTrace" v="n:1212182188248" />
            <node concept="3Tqbb2" id="15Q" role="1tU5fm">
              <ref role="ehGHo" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
              <uo k="s:originTrace" v="n:1212182188249" />
            </node>
            <node concept="2OqwBi" id="15R" role="33vP2m">
              <uo k="s:originTrace" v="n:2648177819226367257" />
              <node concept="37vLTw" id="15S" role="2Oq$k0">
                <ref role="3cqZAo" node="15z" resolve="otherProps" />
                <uo k="s:originTrace" v="n:2648177819226319988" />
              </node>
              <node concept="1z4cxt" id="15T" role="2OqNvi">
                <uo k="s:originTrace" v="n:2648177819226372853" />
                <node concept="1bVj0M" id="15U" role="23t8la">
                  <uo k="s:originTrace" v="n:2648177819226350013" />
                  <node concept="3clFbS" id="15V" role="1bW5cS">
                    <uo k="s:originTrace" v="n:2648177819226350014" />
                    <node concept="3clFbF" id="15X" role="3cqZAp">
                      <uo k="s:originTrace" v="n:2648177819226351161" />
                      <node concept="17R0WA" id="15Y" role="3clFbG">
                        <uo k="s:originTrace" v="n:2648177819226358985" />
                        <node concept="2OqwBi" id="15Z" role="3uHU7w">
                          <uo k="s:originTrace" v="n:2648177819226362379" />
                          <node concept="37vLTw" id="161" role="2Oq$k0">
                            <ref role="3cqZAo" node="13I" resolve="prop" />
                            <uo k="s:originTrace" v="n:2648177819226360156" />
                          </node>
                          <node concept="3TrcHB" id="162" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            <uo k="s:originTrace" v="n:2648177819226364173" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="160" role="3uHU7B">
                          <uo k="s:originTrace" v="n:2648177819226353024" />
                          <node concept="37vLTw" id="163" role="2Oq$k0">
                            <ref role="3cqZAo" node="15W" resolve="it" />
                            <uo k="s:originTrace" v="n:2648177819226351160" />
                          </node>
                          <node concept="3TrcHB" id="164" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            <uo k="s:originTrace" v="n:2648177819226356198" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="15W" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <uo k="s:originTrace" v="n:6847626768367732771" />
                    <node concept="2jxLKc" id="165" role="1tU5fm">
                      <uo k="s:originTrace" v="n:6847626768367732772" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="13Z" role="3cqZAp">
          <uo k="s:originTrace" v="n:1212182148320" />
          <node concept="3clFbS" id="166" role="3clFbx">
            <uo k="s:originTrace" v="n:1212182148321" />
            <node concept="9aQIb" id="168" role="3cqZAp">
              <uo k="s:originTrace" v="n:1212182341577" />
              <node concept="3clFbS" id="16a" role="9aQI4">
                <node concept="3cpWs8" id="16c" role="3cqZAp">
                  <node concept="3cpWsn" id="16e" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="16f" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="16g" role="33vP2m">
                      <node concept="1pGfFk" id="16h" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="16d" role="3cqZAp">
                  <node concept="3cpWsn" id="16i" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="16j" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="16k" role="33vP2m">
                      <node concept="3VmV3z" id="16l" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="16n" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="16m" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                        <node concept="37vLTw" id="16o" role="37wK5m">
                          <ref role="3cqZAo" node="13I" resolve="prop" />
                          <uo k="s:originTrace" v="n:1212182390786" />
                        </node>
                        <node concept="2OqwBi" id="16p" role="37wK5m">
                          <uo k="s:originTrace" v="n:7853788040701486649" />
                          <node concept="Xl_RD" id="16u" role="2Oq$k0">
                            <property role="Xl_RC" value="property '%s' is already declared in %s" />
                            <uo k="s:originTrace" v="n:7853788040701486650" />
                          </node>
                          <node concept="2cAKMz" id="16v" role="2OqNvi">
                            <uo k="s:originTrace" v="n:7853788040701486651" />
                            <node concept="2OqwBi" id="16w" role="2cAKU6">
                              <uo k="s:originTrace" v="n:1212182341589" />
                              <node concept="37vLTw" id="16y" role="2Oq$k0">
                                <ref role="3cqZAo" node="13I" resolve="prop" />
                                <uo k="s:originTrace" v="n:1212182350189" />
                              </node>
                              <node concept="3TrcHB" id="16z" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                <uo k="s:originTrace" v="n:1212182352925" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="16x" role="2cAKU6">
                              <uo k="s:originTrace" v="n:1212182341581" />
                              <node concept="2OqwBi" id="16$" role="2Oq$k0">
                                <uo k="s:originTrace" v="n:1212182341582" />
                                <node concept="37vLTw" id="16A" role="2Oq$k0">
                                  <ref role="3cqZAo" node="15P" resolve="propInConcept" />
                                  <uo k="s:originTrace" v="n:4265636116363071814" />
                                </node>
                                <node concept="2Xjw5R" id="16B" role="2OqNvi">
                                  <uo k="s:originTrace" v="n:1212182341584" />
                                  <node concept="1xMEDy" id="16C" role="1xVPHs">
                                    <uo k="s:originTrace" v="n:1212182341585" />
                                    <node concept="chp4Y" id="16D" role="ri$Ld">
                                      <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                                      <uo k="s:originTrace" v="n:1212182341586" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3TrcHB" id="16_" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                <uo k="s:originTrace" v="n:1212182341587" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="16q" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="16r" role="37wK5m">
                          <property role="Xl_RC" value="1212182341577" />
                        </node>
                        <node concept="10Nm6u" id="16s" role="37wK5m" />
                        <node concept="37vLTw" id="16t" role="37wK5m">
                          <ref role="3cqZAo" node="16e" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="16b" role="lGtFl">
                <property role="6wLej" value="1212182341577" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
              </node>
            </node>
            <node concept="3cpWs6" id="169" role="3cqZAp">
              <uo k="s:originTrace" v="n:576141512674086452" />
            </node>
          </node>
          <node concept="3y3z36" id="167" role="3clFbw">
            <uo k="s:originTrace" v="n:2648177819226382916" />
            <node concept="10Nm6u" id="16E" role="3uHU7w">
              <uo k="s:originTrace" v="n:2648177819226384899" />
            </node>
            <node concept="37vLTw" id="16F" role="3uHU7B">
              <ref role="3cqZAo" node="15P" resolve="propInConcept" />
              <uo k="s:originTrace" v="n:4265636116363113935" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="140" role="3cqZAp">
          <uo k="s:originTrace" v="n:576141512674073486" />
          <node concept="1PaTwC" id="16G" role="1aUNEU">
            <uo k="s:originTrace" v="n:700871696606817656" />
            <node concept="3oM_SD" id="16H" role="1PaTwD">
              <property role="3oM_SC" value="check" />
              <uo k="s:originTrace" v="n:700871696606817657" />
            </node>
            <node concept="3oM_SD" id="16I" role="1PaTwD">
              <property role="3oM_SC" value="constant" />
              <uo k="s:originTrace" v="n:700871696606817658" />
            </node>
            <node concept="3oM_SD" id="16J" role="1PaTwD">
              <property role="3oM_SC" value="names" />
              <uo k="s:originTrace" v="n:700871696606817659" />
            </node>
            <node concept="3oM_SD" id="16K" role="1PaTwD">
              <property role="3oM_SC" value="generated" />
              <uo k="s:originTrace" v="n:700871696606817660" />
            </node>
            <node concept="3oM_SD" id="16L" role="1PaTwD">
              <property role="3oM_SC" value="in" />
              <uo k="s:originTrace" v="n:700871696606817661" />
            </node>
            <node concept="3oM_SD" id="16M" role="1PaTwD">
              <property role="3oM_SC" value="adapters" />
              <uo k="s:originTrace" v="n:700871696606817662" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="141" role="3cqZAp">
          <uo k="s:originTrace" v="n:576141512674073490" />
          <node concept="3cpWsn" id="16N" role="3cpWs9">
            <property role="TrG5h" value="name" />
            <uo k="s:originTrace" v="n:576141512674073491" />
            <node concept="17QB3L" id="16O" role="1tU5fm">
              <uo k="s:originTrace" v="n:576141512674073492" />
            </node>
            <node concept="2YIFZM" id="16P" role="33vP2m">
              <ref role="37wK5l" to="18ew:~NameUtil.toConstantName(java.lang.String)" resolve="toConstantName" />
              <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
              <uo k="s:originTrace" v="n:576141512674073496" />
              <node concept="2OqwBi" id="16Q" role="37wK5m">
                <uo k="s:originTrace" v="n:576141512674073498" />
                <node concept="37vLTw" id="16R" role="2Oq$k0">
                  <ref role="3cqZAo" node="13I" resolve="prop" />
                  <uo k="s:originTrace" v="n:576141512674073497" />
                </node>
                <node concept="3TrcHB" id="16S" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:576141512674073502" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="142" role="3cqZAp">
          <uo k="s:originTrace" v="n:576141512674073621" />
          <node concept="3cpWsn" id="16T" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <uo k="s:originTrace" v="n:576141512674073622" />
            <node concept="3Tqbb2" id="16U" role="1tU5fm">
              <ref role="ehGHo" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
              <uo k="s:originTrace" v="n:576141512674073623" />
            </node>
            <node concept="2OqwBi" id="16V" role="33vP2m">
              <uo k="s:originTrace" v="n:576141512674073624" />
              <node concept="1z4cxt" id="16W" role="2OqNvi">
                <uo k="s:originTrace" v="n:576141512674073628" />
                <node concept="1bVj0M" id="16Y" role="23t8la">
                  <uo k="s:originTrace" v="n:576141512674073629" />
                  <node concept="3clFbS" id="16Z" role="1bW5cS">
                    <uo k="s:originTrace" v="n:576141512674073630" />
                    <node concept="3clFbF" id="171" role="3cqZAp">
                      <uo k="s:originTrace" v="n:576141512674073631" />
                      <node concept="17R0WA" id="172" role="3clFbG">
                        <uo k="s:originTrace" v="n:576141512674073633" />
                        <node concept="2YIFZM" id="173" role="3uHU7w">
                          <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                          <ref role="37wK5l" to="18ew:~NameUtil.toConstantName(java.lang.String)" resolve="toConstantName" />
                          <uo k="s:originTrace" v="n:576141512674073634" />
                          <node concept="2OqwBi" id="175" role="37wK5m">
                            <uo k="s:originTrace" v="n:576141512674073635" />
                            <node concept="37vLTw" id="176" role="2Oq$k0">
                              <ref role="3cqZAo" node="170" resolve="it" />
                              <uo k="s:originTrace" v="n:3021153905150339244" />
                            </node>
                            <node concept="3TrcHB" id="177" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              <uo k="s:originTrace" v="n:576141512674073637" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="174" role="3uHU7B">
                          <ref role="3cqZAo" node="16N" resolve="name" />
                          <uo k="s:originTrace" v="n:4265636116363084631" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="170" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <uo k="s:originTrace" v="n:6847626768367732773" />
                    <node concept="2jxLKc" id="178" role="1tU5fm">
                      <uo k="s:originTrace" v="n:6847626768367732774" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="16X" role="2Oq$k0">
                <ref role="3cqZAo" node="15z" resolve="otherProps" />
                <uo k="s:originTrace" v="n:2648177819226386951" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="143" role="3cqZAp">
          <uo k="s:originTrace" v="n:576141512674073646" />
          <node concept="3clFbS" id="179" role="3clFbx">
            <uo k="s:originTrace" v="n:576141512674073647" />
            <node concept="9aQIb" id="17b" role="3cqZAp">
              <uo k="s:originTrace" v="n:576141512674073565" />
              <node concept="3clFbS" id="17c" role="9aQI4">
                <node concept="3cpWs8" id="17e" role="3cqZAp">
                  <node concept="3cpWsn" id="17g" role="3cpWs9">
                    <property role="TrG5h" value="errorTarget" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="17h" role="1tU5fm">
                      <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                    </node>
                    <node concept="2ShNRf" id="17i" role="33vP2m">
                      <node concept="1pGfFk" id="17j" role="2ShVmc">
                        <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="17f" role="3cqZAp">
                  <node concept="3cpWsn" id="17k" role="3cpWs9">
                    <property role="TrG5h" value="_reporter_2309309498" />
                    <node concept="3uibUv" id="17l" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                    </node>
                    <node concept="2OqwBi" id="17m" role="33vP2m">
                      <node concept="3VmV3z" id="17n" role="2Oq$k0">
                        <property role="3VnrPo" value="typeCheckingContext" />
                        <node concept="3uibUv" id="17p" role="3Vn4Tt">
                          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="17o" role="2OqNvi">
                        <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                        <node concept="37vLTw" id="17q" role="37wK5m">
                          <ref role="3cqZAo" node="13I" resolve="prop" />
                          <uo k="s:originTrace" v="n:576141512674073581" />
                        </node>
                        <node concept="2OqwBi" id="17r" role="37wK5m">
                          <uo k="s:originTrace" v="n:7853788040701489768" />
                          <node concept="Xl_RD" id="17w" role="2Oq$k0">
                            <property role="Xl_RC" value="similar property '%s' is declared in %s" />
                            <uo k="s:originTrace" v="n:7853788040701489769" />
                          </node>
                          <node concept="2cAKMz" id="17x" role="2OqNvi">
                            <uo k="s:originTrace" v="n:7853788040701489770" />
                            <node concept="2OqwBi" id="17y" role="2cAKU6">
                              <uo k="s:originTrace" v="n:576141512674073577" />
                              <node concept="37vLTw" id="17$" role="2Oq$k0">
                                <ref role="3cqZAo" node="16T" resolve="node" />
                                <uo k="s:originTrace" v="n:4265636116363088049" />
                              </node>
                              <node concept="3TrcHB" id="17_" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                <uo k="s:originTrace" v="n:576141512674073579" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="17z" role="2cAKU6">
                              <uo k="s:originTrace" v="n:576141512674073567" />
                              <node concept="2OqwBi" id="17A" role="2Oq$k0">
                                <uo k="s:originTrace" v="n:576141512674073568" />
                                <node concept="37vLTw" id="17C" role="2Oq$k0">
                                  <ref role="3cqZAo" node="16T" resolve="node" />
                                  <uo k="s:originTrace" v="n:4265636116363094223" />
                                </node>
                                <node concept="2Xjw5R" id="17D" role="2OqNvi">
                                  <uo k="s:originTrace" v="n:576141512674073570" />
                                  <node concept="1xMEDy" id="17E" role="1xVPHs">
                                    <uo k="s:originTrace" v="n:576141512674073571" />
                                    <node concept="chp4Y" id="17F" role="ri$Ld">
                                      <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                                      <uo k="s:originTrace" v="n:576141512674073572" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3TrcHB" id="17B" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                <uo k="s:originTrace" v="n:576141512674073573" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="17s" role="37wK5m">
                          <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                        </node>
                        <node concept="Xl_RD" id="17t" role="37wK5m">
                          <property role="Xl_RC" value="576141512674073565" />
                        </node>
                        <node concept="10Nm6u" id="17u" role="37wK5m" />
                        <node concept="37vLTw" id="17v" role="37wK5m">
                          <ref role="3cqZAo" node="17g" resolve="errorTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="6wLe0" id="17d" role="lGtFl">
                <property role="6wLej" value="576141512674073565" />
                <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="17a" role="3clFbw">
            <uo k="s:originTrace" v="n:576141512674073651" />
            <node concept="37vLTw" id="17G" role="2Oq$k0">
              <ref role="3cqZAo" node="16T" resolve="node" />
              <uo k="s:originTrace" v="n:4265636116363077720" />
            </node>
            <node concept="3x8VRR" id="17H" role="2OqNvi">
              <uo k="s:originTrace" v="n:576141512674073655" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="13M" role="1B3o_S">
        <uo k="s:originTrace" v="n:1212181908803" />
      </node>
    </node>
    <node concept="3clFb_" id="13$" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:1212181908803" />
      <node concept="3bZ5Sz" id="17I" role="3clF45">
        <uo k="s:originTrace" v="n:1212181908803" />
      </node>
      <node concept="3clFbS" id="17J" role="3clF47">
        <uo k="s:originTrace" v="n:1212181908803" />
        <node concept="3cpWs6" id="17L" role="3cqZAp">
          <uo k="s:originTrace" v="n:1212181908803" />
          <node concept="35c_gC" id="17M" role="3cqZAk">
            <ref role="35c_gD" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
            <uo k="s:originTrace" v="n:1212181908803" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="17K" role="1B3o_S">
        <uo k="s:originTrace" v="n:1212181908803" />
      </node>
    </node>
    <node concept="3clFb_" id="13_" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:1212181908803" />
      <node concept="37vLTG" id="17N" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:1212181908803" />
        <node concept="3Tqbb2" id="17R" role="1tU5fm">
          <uo k="s:originTrace" v="n:1212181908803" />
        </node>
      </node>
      <node concept="3clFbS" id="17O" role="3clF47">
        <uo k="s:originTrace" v="n:1212181908803" />
        <node concept="9aQIb" id="17S" role="3cqZAp">
          <uo k="s:originTrace" v="n:1212181908803" />
          <node concept="3clFbS" id="17T" role="9aQI4">
            <uo k="s:originTrace" v="n:1212181908803" />
            <node concept="3cpWs6" id="17U" role="3cqZAp">
              <uo k="s:originTrace" v="n:1212181908803" />
              <node concept="2ShNRf" id="17V" role="3cqZAk">
                <uo k="s:originTrace" v="n:1212181908803" />
                <node concept="1pGfFk" id="17W" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:1212181908803" />
                  <node concept="2OqwBi" id="17X" role="37wK5m">
                    <uo k="s:originTrace" v="n:1212181908803" />
                    <node concept="2OqwBi" id="17Z" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1212181908803" />
                      <node concept="liA8E" id="181" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:1212181908803" />
                      </node>
                      <node concept="2JrnkZ" id="182" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:1212181908803" />
                        <node concept="37vLTw" id="183" role="2JrQYb">
                          <ref role="3cqZAo" node="17N" resolve="argument" />
                          <uo k="s:originTrace" v="n:1212181908803" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="180" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:1212181908803" />
                      <node concept="1rXfSq" id="184" role="37wK5m">
                        <ref role="37wK5l" node="13$" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:1212181908803" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="17Y" role="37wK5m">
                    <uo k="s:originTrace" v="n:1212181908803" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="17P" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:1212181908803" />
      </node>
      <node concept="3Tm1VV" id="17Q" role="1B3o_S">
        <uo k="s:originTrace" v="n:1212181908803" />
      </node>
    </node>
    <node concept="3clFb_" id="13A" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:1212181908803" />
      <node concept="3clFbS" id="185" role="3clF47">
        <uo k="s:originTrace" v="n:1212181908803" />
        <node concept="3cpWs6" id="188" role="3cqZAp">
          <uo k="s:originTrace" v="n:1212181908803" />
          <node concept="3clFbT" id="189" role="3cqZAk">
            <uo k="s:originTrace" v="n:1212181908803" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="186" role="3clF45">
        <uo k="s:originTrace" v="n:1212181908803" />
      </node>
      <node concept="3Tm1VV" id="187" role="1B3o_S">
        <uo k="s:originTrace" v="n:1212181908803" />
      </node>
    </node>
    <node concept="3uibUv" id="13B" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1212181908803" />
    </node>
    <node concept="3uibUv" id="13C" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:1212181908803" />
    </node>
    <node concept="3Tm1VV" id="13D" role="1B3o_S">
      <uo k="s:originTrace" v="n:1212181908803" />
    </node>
  </node>
  <node concept="312cEu" id="18a">
    <property role="3GE5qa" value="smartReference" />
    <property role="TrG5h" value="check_RedundantSmartReferenceAttribute_NonTypesystemRule" />
    <uo k="s:originTrace" v="n:3455926958821481083" />
    <node concept="3clFbW" id="18b" role="jymVt">
      <uo k="s:originTrace" v="n:3455926958821481083" />
      <node concept="3clFbS" id="18j" role="3clF47">
        <uo k="s:originTrace" v="n:3455926958821481083" />
      </node>
      <node concept="3Tm1VV" id="18k" role="1B3o_S">
        <uo k="s:originTrace" v="n:3455926958821481083" />
      </node>
      <node concept="3cqZAl" id="18l" role="3clF45">
        <uo k="s:originTrace" v="n:3455926958821481083" />
      </node>
    </node>
    <node concept="3clFb_" id="18c" role="jymVt">
      <property role="TrG5h" value="applyRule" />
      <uo k="s:originTrace" v="n:3455926958821481083" />
      <node concept="3cqZAl" id="18m" role="3clF45">
        <uo k="s:originTrace" v="n:3455926958821481083" />
      </node>
      <node concept="37vLTG" id="18n" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="attr" />
        <uo k="s:originTrace" v="n:3455926958821481083" />
        <node concept="3Tqbb2" id="18s" role="1tU5fm">
          <uo k="s:originTrace" v="n:3455926958821481083" />
        </node>
      </node>
      <node concept="37vLTG" id="18o" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3455926958821481083" />
        <node concept="3uibUv" id="18t" role="1tU5fm">
          <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
          <uo k="s:originTrace" v="n:3455926958821481083" />
        </node>
      </node>
      <node concept="37vLTG" id="18p" role="3clF46">
        <property role="TrG5h" value="status" />
        <uo k="s:originTrace" v="n:3455926958821481083" />
        <node concept="3uibUv" id="18u" role="1tU5fm">
          <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
          <uo k="s:originTrace" v="n:3455926958821481083" />
        </node>
      </node>
      <node concept="3clFbS" id="18q" role="3clF47">
        <uo k="s:originTrace" v="n:3455926958821481084" />
        <node concept="3cpWs8" id="18v" role="3cqZAp">
          <uo k="s:originTrace" v="n:3455926958821507984" />
          <node concept="3cpWsn" id="18y" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <uo k="s:originTrace" v="n:3455926958821507987" />
            <node concept="3Tqbb2" id="18z" role="1tU5fm">
              <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
              <uo k="s:originTrace" v="n:3455926958821507982" />
            </node>
            <node concept="1PxgMI" id="18$" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <uo k="s:originTrace" v="n:3455926958821511000" />
              <node concept="chp4Y" id="18_" role="3oSUPX">
                <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                <uo k="s:originTrace" v="n:3455926958821511268" />
              </node>
              <node concept="2OqwBi" id="18A" role="1m5AlR">
                <uo k="s:originTrace" v="n:3455926958821508680" />
                <node concept="37vLTw" id="18B" role="2Oq$k0">
                  <ref role="3cqZAo" node="18n" resolve="attr" />
                  <uo k="s:originTrace" v="n:3455926958821508033" />
                </node>
                <node concept="1mfA1w" id="18C" role="2OqNvi">
                  <uo k="s:originTrace" v="n:3455926958821509467" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="18w" role="3cqZAp">
          <uo k="s:originTrace" v="n:3455926958821511348" />
          <node concept="3clFbS" id="18D" role="3clFbx">
            <uo k="s:originTrace" v="n:3455926958821511350" />
            <node concept="3clFbJ" id="18F" role="3cqZAp">
              <uo k="s:originTrace" v="n:3455926958821553292" />
              <node concept="3clFbS" id="18I" role="3clFbx">
                <uo k="s:originTrace" v="n:3455926958821553294" />
                <node concept="9aQIb" id="18K" role="3cqZAp">
                  <uo k="s:originTrace" v="n:3455926958821554247" />
                  <node concept="3clFbS" id="18L" role="9aQI4">
                    <node concept="3cpWs8" id="18N" role="3cqZAp">
                      <node concept="3cpWsn" id="18Q" role="3cpWs9">
                        <property role="TrG5h" value="errorTarget" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="18R" role="1tU5fm">
                          <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                        </node>
                        <node concept="2ShNRf" id="18S" role="33vP2m">
                          <node concept="1pGfFk" id="18T" role="2ShVmc">
                            <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="18O" role="3cqZAp">
                      <node concept="3cpWsn" id="18U" role="3cpWs9">
                        <property role="TrG5h" value="_reporter_2309309498" />
                        <node concept="3uibUv" id="18V" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                        </node>
                        <node concept="2OqwBi" id="18W" role="33vP2m">
                          <node concept="3VmV3z" id="18X" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="18Z" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="18Y" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportTypeError(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportTypeError" />
                            <node concept="37vLTw" id="190" role="37wK5m">
                              <ref role="3cqZAo" node="18n" resolve="attr" />
                              <uo k="s:originTrace" v="n:3455926958821554791" />
                            </node>
                            <node concept="Xl_RD" id="191" role="37wK5m">
                              <property role="Xl_RC" value="'smart reference' attribute used for abstract concept" />
                              <uo k="s:originTrace" v="n:3455926958821491209" />
                            </node>
                            <node concept="Xl_RD" id="192" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="193" role="37wK5m">
                              <property role="Xl_RC" value="3455926958821554247" />
                            </node>
                            <node concept="10Nm6u" id="194" role="37wK5m" />
                            <node concept="37vLTw" id="195" role="37wK5m">
                              <ref role="3cqZAo" node="18Q" resolve="errorTarget" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="18P" role="3cqZAp">
                      <node concept="3clFbS" id="196" role="9aQI4">
                        <node concept="3cpWs8" id="197" role="3cqZAp">
                          <node concept="3cpWsn" id="199" role="3cpWs9">
                            <property role="TrG5h" value="intentionProvider" />
                            <node concept="3uibUv" id="19a" role="1tU5fm">
                              <ref role="3uigEE" to="2gg1:~BaseQuickFixProvider" resolve="BaseQuickFixProvider" />
                            </node>
                            <node concept="2ShNRf" id="19b" role="33vP2m">
                              <node concept="1pGfFk" id="19c" role="2ShVmc">
                                <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.&lt;init&gt;(java.lang.String,java.lang.String,boolean)" resolve="BaseQuickFixProvider" />
                                <node concept="Xl_RD" id="19d" role="37wK5m">
                                  <property role="Xl_RC" value="jetbrains.mps.lang.structure.typesystem.fix_RedundantSmartReferenceAttribute_QuickFix" />
                                </node>
                                <node concept="Xl_RD" id="19e" role="37wK5m">
                                  <property role="Xl_RC" value="3455926958821772079" />
                                </node>
                                <node concept="3clFbT" id="19f" role="37wK5m" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="198" role="3cqZAp">
                          <node concept="2OqwBi" id="19g" role="3clFbG">
                            <node concept="37vLTw" id="19h" role="2Oq$k0">
                              <ref role="3cqZAo" node="18U" resolve="_reporter_2309309498" />
                            </node>
                            <node concept="liA8E" id="19i" role="2OqNvi">
                              <ref role="37wK5l" to="2gg1:~IErrorReporter.addIntentionProvider(jetbrains.mps.errors.QuickFixProvider)" resolve="addIntentionProvider" />
                              <node concept="37vLTw" id="19j" role="37wK5m">
                                <ref role="3cqZAo" node="199" resolve="intentionProvider" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="6wLe0" id="18M" role="lGtFl">
                    <property role="6wLej" value="3455926958821554247" />
                    <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="18J" role="3clFbw">
                <uo k="s:originTrace" v="n:3455926958821490977" />
                <node concept="1PxgMI" id="19k" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:3455926958821490978" />
                  <node concept="chp4Y" id="19m" role="3oSUPX">
                    <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                    <uo k="s:originTrace" v="n:3455926958821490979" />
                  </node>
                  <node concept="2OqwBi" id="19n" role="1m5AlR">
                    <uo k="s:originTrace" v="n:3455926958821490980" />
                    <node concept="37vLTw" id="19o" role="2Oq$k0">
                      <ref role="3cqZAo" node="18n" resolve="attr" />
                      <uo k="s:originTrace" v="n:3455926958821490981" />
                    </node>
                    <node concept="1mfA1w" id="19p" role="2OqNvi">
                      <uo k="s:originTrace" v="n:3455926958821490982" />
                    </node>
                  </node>
                </node>
                <node concept="3TrcHB" id="19l" role="2OqNvi">
                  <ref role="3TsBF5" to="tpce:40UcGlRb7V2" resolve="abstract" />
                  <uo k="s:originTrace" v="n:3455926958821490983" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="18G" role="3cqZAp">
              <uo k="s:originTrace" v="n:3455926958821511349" />
            </node>
            <node concept="3clFbJ" id="18H" role="3cqZAp">
              <uo k="s:originTrace" v="n:3455926958821507918" />
              <node concept="3clFbS" id="19q" role="3clFbx">
                <uo k="s:originTrace" v="n:3455926958821507920" />
                <node concept="9aQIb" id="19s" role="3cqZAp">
                  <uo k="s:originTrace" v="n:3455926958821552685" />
                  <node concept="3clFbS" id="19t" role="9aQI4">
                    <node concept="3cpWs8" id="19v" role="3cqZAp">
                      <node concept="3cpWsn" id="19y" role="3cpWs9">
                        <property role="TrG5h" value="errorTarget" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="19z" role="1tU5fm">
                          <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
                        </node>
                        <node concept="2ShNRf" id="19$" role="33vP2m">
                          <node concept="1pGfFk" id="19_" role="2ShVmc">
                            <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="19w" role="3cqZAp">
                      <node concept="3cpWsn" id="19A" role="3cpWs9">
                        <property role="TrG5h" value="_reporter_2309309498" />
                        <node concept="3uibUv" id="19B" role="1tU5fm">
                          <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                        </node>
                        <node concept="2OqwBi" id="19C" role="33vP2m">
                          <node concept="3VmV3z" id="19D" role="2Oq$k0">
                            <property role="3VnrPo" value="typeCheckingContext" />
                            <node concept="3uibUv" id="19F" role="3Vn4Tt">
                              <ref role="3uigEE" to="u78q:~TypeCheckingContext" resolve="TypeCheckingContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="19E" role="2OqNvi">
                            <ref role="37wK5l" to="u78q:~TypeCheckingContext.reportWarning(org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String,java.lang.String,jetbrains.mps.errors.QuickFixProvider,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="reportWarning" />
                            <node concept="37vLTw" id="19G" role="37wK5m">
                              <ref role="3cqZAo" node="18n" resolve="attr" />
                              <uo k="s:originTrace" v="n:3455926958821553098" />
                            </node>
                            <node concept="Xl_RD" id="19H" role="37wK5m">
                              <property role="Xl_RC" value="Trivial 'smart reference' attribute can be dropped" />
                              <uo k="s:originTrace" v="n:3455926958821552706" />
                            </node>
                            <node concept="Xl_RD" id="19I" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                            </node>
                            <node concept="Xl_RD" id="19J" role="37wK5m">
                              <property role="Xl_RC" value="3455926958821552685" />
                            </node>
                            <node concept="10Nm6u" id="19K" role="37wK5m" />
                            <node concept="37vLTw" id="19L" role="37wK5m">
                              <ref role="3cqZAo" node="19y" resolve="errorTarget" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="19x" role="3cqZAp">
                      <node concept="3clFbS" id="19M" role="9aQI4">
                        <node concept="3cpWs8" id="19N" role="3cqZAp">
                          <node concept="3cpWsn" id="19P" role="3cpWs9">
                            <property role="TrG5h" value="intentionProvider" />
                            <node concept="3uibUv" id="19Q" role="1tU5fm">
                              <ref role="3uigEE" to="2gg1:~BaseQuickFixProvider" resolve="BaseQuickFixProvider" />
                            </node>
                            <node concept="2ShNRf" id="19R" role="33vP2m">
                              <node concept="1pGfFk" id="19S" role="2ShVmc">
                                <ref role="37wK5l" to="2gg1:~BaseQuickFixProvider.&lt;init&gt;(java.lang.String,java.lang.String,boolean)" resolve="BaseQuickFixProvider" />
                                <node concept="Xl_RD" id="19T" role="37wK5m">
                                  <property role="Xl_RC" value="jetbrains.mps.lang.structure.typesystem.fix_RedundantSmartReferenceAttribute_QuickFix" />
                                </node>
                                <node concept="Xl_RD" id="19U" role="37wK5m">
                                  <property role="Xl_RC" value="3455926958821769793" />
                                </node>
                                <node concept="3clFbT" id="19V" role="37wK5m" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="19O" role="3cqZAp">
                          <node concept="2OqwBi" id="19W" role="3clFbG">
                            <node concept="37vLTw" id="19X" role="2Oq$k0">
                              <ref role="3cqZAo" node="19A" resolve="_reporter_2309309498" />
                            </node>
                            <node concept="liA8E" id="19Y" role="2OqNvi">
                              <ref role="37wK5l" to="2gg1:~IErrorReporter.addIntentionProvider(jetbrains.mps.errors.QuickFixProvider)" resolve="addIntentionProvider" />
                              <node concept="37vLTw" id="19Z" role="37wK5m">
                                <ref role="3cqZAo" node="19P" resolve="intentionProvider" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="6wLe0" id="19u" role="lGtFl">
                    <property role="6wLej" value="3455926958821552685" />
                    <property role="6wLeW" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="19r" role="3clFbw">
                <uo k="s:originTrace" v="n:3455926958821551690" />
                <node concept="2YIFZM" id="1a0" role="3uHU7w">
                  <ref role="37wK5l" to="twe9:1yWNr0c2nIW" resolve="canBeAttributedImplicitly" />
                  <ref role="1Pybhc" to="twe9:1yWNr0biLwW" resolve="SmartRefAttributeUtil" />
                  <uo k="s:originTrace" v="n:3455926958821552381" />
                  <node concept="37vLTw" id="1a2" role="37wK5m">
                    <ref role="3cqZAo" node="18y" resolve="concept" />
                    <uo k="s:originTrace" v="n:3455926958821552523" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1a1" role="3uHU7B">
                  <uo k="s:originTrace" v="n:3455926958821547685" />
                  <node concept="2OqwBi" id="1a3" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:3455926958821545652" />
                    <node concept="37vLTw" id="1a5" role="2Oq$k0">
                      <ref role="3cqZAo" node="18n" resolve="attr" />
                      <uo k="s:originTrace" v="n:3455926958821545005" />
                    </node>
                    <node concept="3TrEf2" id="1a6" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpce:7ERGDLdpEKR" resolve="refPresentationTemplate" />
                      <uo k="s:originTrace" v="n:3455926958821546471" />
                    </node>
                  </node>
                  <node concept="3w_OXm" id="1a4" role="2OqNvi">
                    <uo k="s:originTrace" v="n:3455926958821549026" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="18E" role="3clFbw">
            <uo k="s:originTrace" v="n:3455926958821513057" />
            <node concept="37vLTw" id="1a7" role="2Oq$k0">
              <ref role="3cqZAo" node="18y" resolve="concept" />
              <uo k="s:originTrace" v="n:3455926958821511387" />
            </node>
            <node concept="3x8VRR" id="1a8" role="2OqNvi">
              <uo k="s:originTrace" v="n:3455926958821544202" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="18x" role="3cqZAp">
          <uo k="s:originTrace" v="n:3455926958821507890" />
        </node>
      </node>
      <node concept="3Tm1VV" id="18r" role="1B3o_S">
        <uo k="s:originTrace" v="n:3455926958821481083" />
      </node>
    </node>
    <node concept="3clFb_" id="18d" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <uo k="s:originTrace" v="n:3455926958821481083" />
      <node concept="3bZ5Sz" id="1a9" role="3clF45">
        <uo k="s:originTrace" v="n:3455926958821481083" />
      </node>
      <node concept="3clFbS" id="1aa" role="3clF47">
        <uo k="s:originTrace" v="n:3455926958821481083" />
        <node concept="3cpWs6" id="1ac" role="3cqZAp">
          <uo k="s:originTrace" v="n:3455926958821481083" />
          <node concept="35c_gC" id="1ad" role="3cqZAk">
            <ref role="35c_gD" to="tpce:7ERGDLdoDvC" resolve="SmartReferenceAttribute" />
            <uo k="s:originTrace" v="n:3455926958821481083" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1ab" role="1B3o_S">
        <uo k="s:originTrace" v="n:3455926958821481083" />
      </node>
    </node>
    <node concept="3clFb_" id="18e" role="jymVt">
      <property role="TrG5h" value="isApplicableAndPattern" />
      <uo k="s:originTrace" v="n:3455926958821481083" />
      <node concept="37vLTG" id="1ae" role="3clF46">
        <property role="TrG5h" value="argument" />
        <uo k="s:originTrace" v="n:3455926958821481083" />
        <node concept="3Tqbb2" id="1ai" role="1tU5fm">
          <uo k="s:originTrace" v="n:3455926958821481083" />
        </node>
      </node>
      <node concept="3clFbS" id="1af" role="3clF47">
        <uo k="s:originTrace" v="n:3455926958821481083" />
        <node concept="9aQIb" id="1aj" role="3cqZAp">
          <uo k="s:originTrace" v="n:3455926958821481083" />
          <node concept="3clFbS" id="1ak" role="9aQI4">
            <uo k="s:originTrace" v="n:3455926958821481083" />
            <node concept="3cpWs6" id="1al" role="3cqZAp">
              <uo k="s:originTrace" v="n:3455926958821481083" />
              <node concept="2ShNRf" id="1am" role="3cqZAk">
                <uo k="s:originTrace" v="n:3455926958821481083" />
                <node concept="1pGfFk" id="1an" role="2ShVmc">
                  <ref role="37wK5l" to="qurh:~IsApplicableStatus.&lt;init&gt;(boolean,jetbrains.mps.lang.pattern.GeneratedMatchingPattern)" resolve="IsApplicableStatus" />
                  <uo k="s:originTrace" v="n:3455926958821481083" />
                  <node concept="2OqwBi" id="1ao" role="37wK5m">
                    <uo k="s:originTrace" v="n:3455926958821481083" />
                    <node concept="2OqwBi" id="1aq" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:3455926958821481083" />
                      <node concept="liA8E" id="1as" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        <uo k="s:originTrace" v="n:3455926958821481083" />
                      </node>
                      <node concept="2JrnkZ" id="1at" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:3455926958821481083" />
                        <node concept="37vLTw" id="1au" role="2JrQYb">
                          <ref role="3cqZAo" node="1ae" resolve="argument" />
                          <uo k="s:originTrace" v="n:3455926958821481083" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="1ar" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
                      <uo k="s:originTrace" v="n:3455926958821481083" />
                      <node concept="1rXfSq" id="1av" role="37wK5m">
                        <ref role="37wK5l" node="18d" resolve="getApplicableConcept" />
                        <uo k="s:originTrace" v="n:3455926958821481083" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="1ap" role="37wK5m">
                    <uo k="s:originTrace" v="n:3455926958821481083" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1ag" role="3clF45">
        <ref role="3uigEE" to="qurh:~IsApplicableStatus" resolve="IsApplicableStatus" />
        <uo k="s:originTrace" v="n:3455926958821481083" />
      </node>
      <node concept="3Tm1VV" id="1ah" role="1B3o_S">
        <uo k="s:originTrace" v="n:3455926958821481083" />
      </node>
    </node>
    <node concept="3clFb_" id="18f" role="jymVt">
      <property role="TrG5h" value="overrides" />
      <uo k="s:originTrace" v="n:3455926958821481083" />
      <node concept="3clFbS" id="1aw" role="3clF47">
        <uo k="s:originTrace" v="n:3455926958821481083" />
        <node concept="3cpWs6" id="1az" role="3cqZAp">
          <uo k="s:originTrace" v="n:3455926958821481083" />
          <node concept="3clFbT" id="1a$" role="3cqZAk">
            <uo k="s:originTrace" v="n:3455926958821481083" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="1ax" role="3clF45">
        <uo k="s:originTrace" v="n:3455926958821481083" />
      </node>
      <node concept="3Tm1VV" id="1ay" role="1B3o_S">
        <uo k="s:originTrace" v="n:3455926958821481083" />
      </node>
    </node>
    <node concept="3uibUv" id="18g" role="EKbjA">
      <ref role="3uigEE" to="qurh:~NonTypesystemRule_Runtime" resolve="NonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:3455926958821481083" />
    </node>
    <node concept="3uibUv" id="18h" role="1zkMxy">
      <ref role="3uigEE" to="qurh:~AbstractNonTypesystemRule_Runtime" resolve="AbstractNonTypesystemRule_Runtime" />
      <uo k="s:originTrace" v="n:3455926958821481083" />
    </node>
    <node concept="3Tm1VV" id="18i" role="1B3o_S">
      <uo k="s:originTrace" v="n:3455926958821481083" />
    </node>
  </node>
  <node concept="312cEu" id="1a_">
    <property role="3GE5qa" value="smartReference" />
    <property role="TrG5h" value="fix_RedundantSmartReferenceAttribute_QuickFix" />
    <uo k="s:originTrace" v="n:3455926958821769790" />
    <node concept="3clFbW" id="1aA" role="jymVt">
      <uo k="s:originTrace" v="n:3455926958821769790" />
      <node concept="3clFbS" id="1aG" role="3clF47">
        <uo k="s:originTrace" v="n:3455926958821769790" />
        <node concept="XkiVB" id="1aJ" role="3cqZAp">
          <ref role="37wK5l" to="2gg1:~QuickFix_Runtime.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="QuickFix_Runtime" />
          <uo k="s:originTrace" v="n:3455926958821769790" />
          <node concept="2ShNRf" id="1aK" role="37wK5m">
            <uo k="s:originTrace" v="n:3455926958821769790" />
            <node concept="1pGfFk" id="1aL" role="2ShVmc">
              <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
              <uo k="s:originTrace" v="n:3455926958821769790" />
              <node concept="Xl_RD" id="1aM" role="37wK5m">
                <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
                <uo k="s:originTrace" v="n:3455926958821769790" />
              </node>
              <node concept="Xl_RD" id="1aN" role="37wK5m">
                <property role="Xl_RC" value="3455926958821769790" />
                <uo k="s:originTrace" v="n:3455926958821769790" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1aH" role="3clF45">
        <uo k="s:originTrace" v="n:3455926958821769790" />
      </node>
      <node concept="3Tm1VV" id="1aI" role="1B3o_S">
        <uo k="s:originTrace" v="n:3455926958821769790" />
      </node>
    </node>
    <node concept="3clFb_" id="1aB" role="jymVt">
      <property role="TrG5h" value="getDescription" />
      <uo k="s:originTrace" v="n:3455926958821769790" />
      <node concept="3Tm1VV" id="1aO" role="1B3o_S">
        <uo k="s:originTrace" v="n:3455926958821769790" />
      </node>
      <node concept="3clFbS" id="1aP" role="3clF47">
        <uo k="s:originTrace" v="n:3455926958821773282" />
        <node concept="3clFbF" id="1aS" role="3cqZAp">
          <uo k="s:originTrace" v="n:3455926958821773819" />
          <node concept="Xl_RD" id="1aT" role="3clFbG">
            <property role="Xl_RC" value="Remove 'smart reference' Attribute" />
            <uo k="s:originTrace" v="n:3455926958821773818" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1aQ" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:3455926958821769790" />
        <node concept="3uibUv" id="1aU" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:3455926958821769790" />
        </node>
      </node>
      <node concept="17QB3L" id="1aR" role="3clF45">
        <uo k="s:originTrace" v="n:3455926958821769790" />
      </node>
    </node>
    <node concept="3clFb_" id="1aC" role="jymVt">
      <property role="TrG5h" value="execute" />
      <uo k="s:originTrace" v="n:3455926958821769790" />
      <node concept="3clFbS" id="1aV" role="3clF47">
        <uo k="s:originTrace" v="n:3455926958821769792" />
        <node concept="3clFbF" id="1aZ" role="3cqZAp">
          <uo k="s:originTrace" v="n:3455926958821770364" />
          <node concept="2OqwBi" id="1b0" role="3clFbG">
            <uo k="s:originTrace" v="n:3455926958821770770" />
            <node concept="Q6c8r" id="1b1" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3455926958821770363" />
            </node>
            <node concept="3YRAZt" id="1b2" role="2OqNvi">
              <uo k="s:originTrace" v="n:3455926958821771393" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1aW" role="3clF45">
        <uo k="s:originTrace" v="n:3455926958821769790" />
      </node>
      <node concept="3Tm1VV" id="1aX" role="1B3o_S">
        <uo k="s:originTrace" v="n:3455926958821769790" />
      </node>
      <node concept="37vLTG" id="1aY" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:3455926958821769790" />
        <node concept="3uibUv" id="1b3" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:3455926958821769790" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1aD" role="1B3o_S">
      <uo k="s:originTrace" v="n:3455926958821769790" />
    </node>
    <node concept="3uibUv" id="1aE" role="1zkMxy">
      <ref role="3uigEE" to="2gg1:~QuickFix_Runtime" resolve="QuickFix_Runtime" />
      <uo k="s:originTrace" v="n:3455926958821769790" />
    </node>
    <node concept="6wLe0" id="1aF" role="lGtFl">
      <property role="6wLej" value="3455926958821769790" />
      <property role="6wLeW" value="jetbrains.mps.lang.structure.typesystem" />
      <uo k="s:originTrace" v="n:3455926958821769790" />
    </node>
  </node>
</model>

