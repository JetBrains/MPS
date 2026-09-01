<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:afa6200c-5e34-4244-b141-d3f095bc906f(jetbrains.mps.checkers.test@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="5" />
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
  </languages>
  <imports>
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpeh" ref="r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)" />
    <import index="tpcj" ref="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)" />
    <import index="tpcg" ref="r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)" />
    <import index="rl1i" ref="r:8a82b7a4-1180-4262-8f18-8c96a5d3ac16(jetbrains.mps.ide.hierarchy)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="rjhg" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit(JUnit/)" />
    <import index="7e8u" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.ui.tree(MPS.Platform/)" />
    <import index="57ty" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.messages(MPS.Platform/)" />
    <import index="lzb2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui(MPS.IDEA/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="1215507671101" name="jetbrains.mps.lang.test.structure.NodeErrorCheckOperation" flags="ng" index="1TM$A">
        <child id="8489045168660938517" name="errorRef" index="3lydEf" />
      </concept>
      <concept id="1215603922101" name="jetbrains.mps.lang.test.structure.NodeOperationsContainer" flags="ng" index="7CXmI">
        <child id="1215604436604" name="nodeOperations" index="7EUXB" />
      </concept>
      <concept id="1215607067978" name="jetbrains.mps.lang.test.structure.CheckNodeForErrorMessagesOperation" flags="ng" index="7OXhh">
        <property id="3743352646565420194" name="includeSelf" index="GvXf4" />
      </concept>
      <concept id="7835233914439520906" name="jetbrains.mps.lang.test.structure.AbstractNodeRuleCheckOperation" flags="ng" index="mZCkL">
        <child id="710597951278798299" name="expectedMessage" index="1DMPz9" />
      </concept>
      <concept id="7691029917083831655" name="jetbrains.mps.lang.test.structure.UnknownRuleReference" flags="ng" index="2u4KIi" />
      <concept id="7691029917083872157" name="jetbrains.mps.lang.test.structure.IRuleReference" flags="ngI" index="2u4UPC">
        <reference id="8333855927540250453" name="declaration" index="39XzEq" />
      </concept>
      <concept id="4531408400484511853" name="jetbrains.mps.lang.test.structure.ReportErrorStatementReference" flags="ng" index="2PYRI3" />
      <concept id="8333855927540283103" name="jetbrains.mps.lang.test.structure.NodeConstraintsErrorCheckOperation" flags="ng" index="39XrGg">
        <child id="8333855927548182241" name="errorRef" index="39rjcI" />
      </concept>
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
        <property id="2616911529524314943" name="accessMode" index="3DII0k" />
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
      <concept id="710597951278798236" name="jetbrains.mps.lang.test.structure.ExpectedMessageContainer" flags="ng" index="1DMPye">
        <property id="710597951278798237" name="text" index="1DMPyf" />
      </concept>
      <concept id="1225978065297" name="jetbrains.mps.lang.test.structure.SimpleNodeTest" flags="ng" index="1LZb2c" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ngI" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
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
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785110" name="jetbrains.mps.lang.quotation.structure.AbstractAntiquotation" flags="ngI" index="2c44t0">
        <property id="6489343236075007666" name="label" index="3hQQBS" />
        <child id="1196350785111" name="expression" index="2c44t1" />
      </concept>
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
      <concept id="4056363777117001481" name="jetbrains.mps.lang.quotation.structure.StringToTypedValueMigrationInfo" flags="ngI" index="AAgTk">
        <property id="2173356959483005420" name="stringValueMigrated" index="3qcH_f" />
      </concept>
      <concept id="1196866233735" name="jetbrains.mps.lang.quotation.structure.PropertyAntiquotation" flags="ng" index="2EMmih" />
    </language>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
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
  </registry>
  <node concept="1lH9Xt" id="5TUCQr3cQ2o">
    <property role="TrG5h" value="SuppressErrorsTest" />
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <node concept="1qefOq" id="5TUCQr3cQpB" role="1SKRRt">
      <node concept="1eOMI4" id="5TUCQr3iBf8" role="1qenE9">
        <node concept="17qRlL" id="5TUCQr3iEj4" role="1eOMHV">
          <node concept="3cmrfG" id="5TUCQr3iC40" role="3uHU7B">
            <property role="3cmrfH" value="1" />
          </node>
          <node concept="Xl_RD" id="5TUCQr3iDXq" role="3uHU7w">
            <property role="Xl_RC" value="" />
          </node>
          <node concept="7CXmI" id="29gobADqJJt" role="lGtFl">
            <node concept="1TM$A" id="29gobADqJJu" role="7EUXB">
              <node concept="2PYRI3" id="29gobADqJJv" role="3lydEf">
                <ref role="39XzEq" to="tpeh:1d383CxV4OK" />
              </node>
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="29gobADr4nD" role="lGtFl">
          <node concept="7OXhh" id="29gobADr4vR" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="5TUCQr3cQ3a" role="1SKRRt">
      <node concept="2c44tf" id="5TUCQr3cQ4S" role="1qenE9">
        <node concept="1eOMI4" id="5TUCQr3iELC" role="2c44tc">
          <node concept="17qRlL" id="5TUCQr3iELD" role="1eOMHV">
            <node concept="3cmrfG" id="5TUCQr3iELE" role="3uHU7B">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="Xl_RD" id="5TUCQr3iELF" role="3uHU7w">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="29gobADr4xr" role="lGtFl">
          <node concept="7OXhh" id="29gobADr4x$" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="5TUCQr3iyLL" role="1SKRRt">
      <node concept="2c44tf" id="5TUCQr3izr6" role="1qenE9">
        <node concept="3cpWs3" id="5TUCQr3iEUN" role="2c44tc">
          <node concept="3cmrfG" id="5TUCQr3iEUW" role="3uHU7B">
            <property role="3cmrfH" value="1" />
          </node>
          <node concept="3cmrfG" id="5TUCQr3iJsS" role="3uHU7w">
            <property role="3cmrfH" value="2" />
            <node concept="2EMmih" id="5TUCQr3iLqx" role="lGtFl">
              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
              <property role="2qtEX9" value="value" />
              <property role="3hQQBS" value="IntegerConstant" />
              <property role="3qcH_f" value="true" />
              <node concept="1eOMI4" id="5TUCQr3iMfS" role="2c44t1">
                <node concept="17qRlL" id="5TUCQr3iMfT" role="1eOMHV">
                  <node concept="3cmrfG" id="5TUCQr3iMfU" role="3uHU7B">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="Xl_RD" id="5TUCQr3iMfV" role="3uHU7w">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="7CXmI" id="29gobADqKVT" role="lGtFl">
                    <node concept="1TM$A" id="29gobADqKVU" role="7EUXB">
                      <node concept="2PYRI3" id="29gobADqKVV" role="3lydEf">
                        <ref role="39XzEq" to="tpeh:1d383CxV4OK" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="7CXmI" id="29gobADr4yZ" role="lGtFl">
          <node concept="7OXhh" id="29gobADr4z8" role="7EUXB">
            <property role="GvXf4" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6AHMUXrgltQ">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="ConceptHierarchyCycleTest" />
    <node concept="1qefOq" id="6AHMUXrgltR" role="1SKRRt">
      <node concept="1TIwiD" id="6AHMUXrgltT" role="1qenE9">
        <property role="EcuMT" value="7614966498964100985" />
        <property role="TrG5h" value="CyclicSelfExtendingConcept" />
        <ref role="1TJDcQ" node="6AHMUXrgltT" resolve="CyclicSelfExtendingConcept" />
        <node concept="7CXmI" id="6AHMUXrglCf" role="lGtFl">
          <node concept="1TM$A" id="2deb$5$b5K6" role="7EUXB">
            <node concept="2PYRI3" id="2deb$5$b5K7" role="3lydEf">
              <ref role="39XzEq" to="tpcj:6AHMUXrf29$" />
            </node>
            <node concept="1DMPye" id="2deb$5$b5K8" role="1DMPz9">
              <property role="1DMPyf" value="Error: Cyclic concept hierarchy: this concept is its own superconcept" />
            </node>
          </node>
          <node concept="39XrGg" id="2deb$5$b5K9" role="7EUXB">
            <node concept="2u4KIi" id="2deb$5$b5Ka" role="39rjcI">
              <ref role="39XzEq" to="tpcg:5Vvmn_QkT3X" />
            </node>
            <node concept="1DMPye" id="2deb$5$b5Kb" role="1DMPz9">
              <property role="1DMPyf" value="The reference  CyclicSelfExtendingConcept (extends) is out of search scope" />
            </node>
          </node>
        </node>
        <node concept="3xLA65" id="1NJXWPlwMez" role="lGtFl">
          <property role="TrG5h" value="selfExtending" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="6AHMUXrgltU" role="1SKRRt">
      <node concept="1TIwiD" id="6AHMUXrgltW" role="1qenE9">
        <property role="EcuMT" value="7614966498964100988" />
        <property role="TrG5h" value="CyclicConceptA" />
        <ref role="1TJDcQ" node="6AHMUXrgltZ" resolve="CyclicConceptB" />
        <node concept="7CXmI" id="6AHMUXrglCI" role="lGtFl">
          <node concept="39XrGg" id="2deb$5$b5Kc" role="7EUXB">
            <node concept="2u4KIi" id="2deb$5$b5Kd" role="39rjcI">
              <ref role="39XzEq" to="tpcg:5Vvmn_QkT3X" />
            </node>
            <node concept="1DMPye" id="2deb$5$b5Ke" role="1DMPz9">
              <property role="1DMPyf" value="The reference  CyclicConceptB (extends) is out of search scope" />
            </node>
          </node>
          <node concept="1TM$A" id="2deb$5$b5Kf" role="7EUXB">
            <node concept="2PYRI3" id="2deb$5$b5Kg" role="3lydEf">
              <ref role="39XzEq" to="tpcj:6AHMUXrf29$" />
            </node>
            <node concept="1DMPye" id="2deb$5$b5Kh" role="1DMPz9">
              <property role="1DMPyf" value="Error: Cyclic concept hierarchy: this concept is its own superconcept" />
            </node>
          </node>
        </node>
        <node concept="3xLA65" id="1NJXWPlwQVs" role="lGtFl">
          <property role="TrG5h" value="conceptA" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="6AHMUXrgltX" role="1SKRRt">
      <node concept="1TIwiD" id="6AHMUXrgltZ" role="1qenE9">
        <property role="EcuMT" value="7614966498964100991" />
        <property role="TrG5h" value="CyclicConceptB" />
        <ref role="1TJDcQ" node="6AHMUXrgltW" resolve="CyclicConceptA" />
        <node concept="7CXmI" id="6AHMUXrglDd" role="lGtFl">
          <node concept="1TM$A" id="2deb$5$b5Ki" role="7EUXB">
            <node concept="2PYRI3" id="2deb$5$b5Kj" role="3lydEf">
              <ref role="39XzEq" to="tpcj:6AHMUXrf29$" />
            </node>
            <node concept="1DMPye" id="2deb$5$b5Kk" role="1DMPz9">
              <property role="1DMPyf" value="Error: Cyclic concept hierarchy: this concept is its own superconcept" />
            </node>
          </node>
          <node concept="39XrGg" id="2deb$5$b5Kl" role="7EUXB">
            <node concept="2u4KIi" id="2deb$5$b5Km" role="39rjcI">
              <ref role="39XzEq" to="tpcg:5Vvmn_QkT3X" />
            </node>
            <node concept="1DMPye" id="2deb$5$b5Kn" role="1DMPz9">
              <property role="1DMPyf" value="The reference  CyclicConceptA (extends) is out of search scope" />
            </node>
          </node>
        </node>
        <node concept="3xLA65" id="1NJXWPlwVPd" role="lGtFl">
          <property role="TrG5h" value="conceptB" />
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="1NJXWPlx0xp" role="1SL9yI">
      <property role="TrG5h" value="selfExtendingConceptHierarchyIsReported" />
      <node concept="3cqZAl" id="1NJXWPlx0xs" role="3clF45" />
      <node concept="3clFbS" id="1NJXWPlx0xt" role="3clF47">
        <node concept="3clFbF" id="1NJXWPm7pi9" role="3cqZAp">
          <node concept="2YIFZM" id="1NJXWPm7pib" role="3clFbG">
            <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
            <ref role="37wK5l" to="rjhg:~Assert.assertTrue(java.lang.String,boolean)" resolve="assertTrue" />
            <node concept="Xl_RD" id="1NJXWPm7pic" role="37wK5m">
              <property role="Xl_RC" value="cyclic concept hierarchy of a self-extending concept must be reported" />
            </node>
            <node concept="2YIFZM" id="1NJXWPm7pid" role="37wK5m">
              <ref role="1Pybhc" node="1NJXWPlwJKu" resolve="ConceptHierarchyTreeTestSupport" />
              <ref role="37wK5l" node="1NJXWPlwJKE" resolve="buildParentHierarchy" />
              <node concept="3xONca" id="1NJXWPm7pie" role="37wK5m">
                <ref role="3xOPvv" node="1NJXWPlwMez" resolve="selfExtending" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="1NJXWPlx5rV" role="1SL9yI">
      <property role="TrG5h" value="mutuallyExtendingConceptHierarchyIsReported" />
      <node concept="3cqZAl" id="1NJXWPlx5rY" role="3clF45" />
      <node concept="3clFbS" id="1NJXWPlx5rZ" role="3clF47">
        <node concept="3clFbF" id="1NJXWPm7vZS" role="3cqZAp">
          <node concept="2YIFZM" id="1NJXWPm7vZU" role="3clFbG">
            <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
            <ref role="37wK5l" to="rjhg:~Assert.assertTrue(java.lang.String,boolean)" resolve="assertTrue" />
            <node concept="Xl_RD" id="1NJXWPm7vZV" role="37wK5m">
              <property role="Xl_RC" value="cyclic concept hierarchy of mutually extending concept A must be reported" />
            </node>
            <node concept="2YIFZM" id="1NJXWPm7vZW" role="37wK5m">
              <ref role="1Pybhc" node="1NJXWPlwJKu" resolve="ConceptHierarchyTreeTestSupport" />
              <ref role="37wK5l" node="1NJXWPlwJKE" resolve="buildParentHierarchy" />
              <node concept="3xONca" id="1NJXWPm7vZX" role="37wK5m">
                <ref role="3xOPvv" node="1NJXWPlwQVs" resolve="conceptA" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1NJXWPm7ADO" role="3cqZAp">
          <node concept="2YIFZM" id="1NJXWPm7ADQ" role="3clFbG">
            <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
            <ref role="37wK5l" to="rjhg:~Assert.assertTrue(java.lang.String,boolean)" resolve="assertTrue" />
            <node concept="Xl_RD" id="1NJXWPm7ADR" role="37wK5m">
              <property role="Xl_RC" value="cyclic concept hierarchy of mutually extending concept B must be reported" />
            </node>
            <node concept="2YIFZM" id="1NJXWPm7ADS" role="37wK5m">
              <ref role="1Pybhc" node="1NJXWPlwJKu" resolve="ConceptHierarchyTreeTestSupport" />
              <ref role="37wK5l" node="1NJXWPlwJKE" resolve="buildParentHierarchy" />
              <node concept="3xONca" id="1NJXWPm7ADT" role="37wK5m">
                <ref role="3xOPvv" node="1NJXWPlwVPd" resolve="conceptB" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="1NJXWPm8Imm" role="1SL9yI">
      <property role="TrG5h" value="selfExtendingConceptHierarchyIsReportedInExpandedTree" />
      <node concept="3cqZAl" id="1NJXWPm8Imp" role="3clF45" />
      <node concept="3clFbS" id="1NJXWPm8Imq" role="3clF47">
        <node concept="3clFbF" id="1NJXWPm8Imr" role="3cqZAp">
          <node concept="2YIFZM" id="1NJXWPm8Imt" role="3clFbG">
            <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
            <ref role="37wK5l" to="rjhg:~Assert.assertEquals(java.lang.String,java.lang.Object,java.lang.Object)" resolve="assertEquals" />
            <node concept="Xl_RD" id="1NJXWPm8Imu" role="37wK5m">
              <property role="Xl_RC" value="expanding the hierarchy of a self-extending concept must report the cycle as an error node" />
            </node>
            <node concept="Xl_RD" id="1NJXWPm8Imv" role="37wK5m">
              <property role="Xl_RC" value="circular concept hierarchy" />
            </node>
            <node concept="2YIFZM" id="1NJXWPm8Imw" role="37wK5m">
              <ref role="1Pybhc" node="1NJXWPlwJKu" resolve="ConceptHierarchyTreeTestSupport" />
              <ref role="37wK5l" node="1NJXWPm8$0v" resolve="expandChildHierarchyUntilCycleReported" />
              <node concept="3xONca" id="1NJXWPm8Imx" role="37wK5m">
                <ref role="3xOPvv" node="1NJXWPlwMez" resolve="selfExtending" />
              </node>
              <node concept="3cmrfG" id="1NJXWPm8Imy" role="37wK5m">
                <property role="3cmrfH" value="20" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="1NJXWPm8NG5" role="1SL9yI">
      <property role="TrG5h" value="mutuallyExtendingConceptHierarchyIsReportedInExpandedTree" />
      <node concept="3cqZAl" id="1NJXWPm8NG8" role="3clF45" />
      <node concept="3clFbS" id="1NJXWPm8NG9" role="3clF47">
        <node concept="3clFbF" id="1NJXWPm8NGa" role="3cqZAp">
          <node concept="2YIFZM" id="1NJXWPm8NGc" role="3clFbG">
            <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
            <ref role="37wK5l" to="rjhg:~Assert.assertEquals(java.lang.String,java.lang.Object,java.lang.Object)" resolve="assertEquals" />
            <node concept="Xl_RD" id="1NJXWPm8NGd" role="37wK5m">
              <property role="Xl_RC" value="expanding the hierarchy of mutually extending concept A must report the cycle as an error node" />
            </node>
            <node concept="Xl_RD" id="1NJXWPm8NGe" role="37wK5m">
              <property role="Xl_RC" value="circular concept hierarchy" />
            </node>
            <node concept="2YIFZM" id="1NJXWPm8NGf" role="37wK5m">
              <ref role="1Pybhc" node="1NJXWPlwJKu" resolve="ConceptHierarchyTreeTestSupport" />
              <ref role="37wK5l" node="1NJXWPm8$0v" resolve="expandChildHierarchyUntilCycleReported" />
              <node concept="3xONca" id="1NJXWPm8NGg" role="37wK5m">
                <ref role="3xOPvv" node="1NJXWPlwQVs" resolve="conceptA" />
              </node>
              <node concept="3cmrfG" id="1NJXWPm8NGh" role="37wK5m">
                <property role="3cmrfH" value="20" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1NJXWPm8NGi" role="3cqZAp">
          <node concept="2YIFZM" id="1NJXWPm8NGk" role="3clFbG">
            <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
            <ref role="37wK5l" to="rjhg:~Assert.assertEquals(java.lang.String,java.lang.Object,java.lang.Object)" resolve="assertEquals" />
            <node concept="Xl_RD" id="1NJXWPm8NGl" role="37wK5m">
              <property role="Xl_RC" value="expanding the hierarchy of mutually extending concept B must report the cycle as an error node" />
            </node>
            <node concept="Xl_RD" id="1NJXWPm8NGm" role="37wK5m">
              <property role="Xl_RC" value="circular concept hierarchy" />
            </node>
            <node concept="2YIFZM" id="1NJXWPm8NGn" role="37wK5m">
              <ref role="1Pybhc" node="1NJXWPlwJKu" resolve="ConceptHierarchyTreeTestSupport" />
              <ref role="37wK5l" node="1NJXWPm8$0v" resolve="expandChildHierarchyUntilCycleReported" />
              <node concept="3xONca" id="1NJXWPm8NGo" role="37wK5m">
                <ref role="3xOPvv" node="1NJXWPlwVPd" resolve="conceptB" />
              </node>
              <node concept="3cmrfG" id="1NJXWPm8NGp" role="37wK5m">
                <property role="3cmrfH" value="20" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1NJXWPlwJKu">
    <property role="TrG5h" value="ConceptHierarchyTreeTestSupport" />
    <node concept="3Tm1VV" id="1NJXWPlwJKv" role="1B3o_S" />
    <node concept="3uibUv" id="1NJXWPlwJKw" role="1zkMxy">
      <ref role="3uigEE" to="rl1i:51NkKCgB44F" resolve="ConceptHierarchyTree" />
    </node>
    <node concept="3UR2Jj" id="1NJXWPlwJKY" role="lGtFl">
      <node concept="1PaTwC" id="1NJXWPlwJKZ" role="1Vez_I">
        <node concept="3oM_SD" id="1NJXWPlwJL0" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
      </node>
      <node concept="1PaTwC" id="1NJXWPlwJL5" role="1Vez_I">
        <node concept="3oM_SD" id="1NJXWPlwJL6" role="1PaTwD">
          <property role="3oM_SC" value="Gives" />
        </node>
        <node concept="3oM_SD" id="1NJXWPlwJL7" role="1PaTwD">
          <property role="3oM_SC" value="tests" />
        </node>
        <node concept="3oM_SD" id="1NJXWPlwJL8" role="1PaTwD">
          <property role="3oM_SC" value="access" />
        </node>
        <node concept="3oM_SD" id="1NJXWPlwJL9" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1NJXWPlwJLa" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1NJXWPlwJLb" role="1PaTwD">
          <property role="3oM_SC" value="protected" />
        </node>
        <node concept="3oM_SD" id="1NJXWPlwJLc" role="1PaTwD">
          <property role="3oM_SC" value="hierarchy" />
        </node>
        <node concept="3oM_SD" id="1NJXWPlwJLd" role="1PaTwD">
          <property role="3oM_SC" value="building" />
        </node>
        <node concept="3oM_SD" id="1NJXWPlwJLe" role="1PaTwD">
          <property role="3oM_SC" value="code" />
        </node>
        <node concept="3oM_SD" id="1NJXWPlwJLf" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1NJXWPlwJLg" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1NJXWPlwJLh" role="1PaTwD">
          <property role="3oM_SC" value="Concept" />
        </node>
        <node concept="3oM_SD" id="1NJXWPlwJLi" role="1PaTwD">
          <property role="3oM_SC" value="Hierarchy" />
        </node>
        <node concept="3oM_SD" id="1NJXWPlwJLj" role="1PaTwD">
          <property role="3oM_SC" value="view." />
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="1NJXWPlwJKx" role="jymVt">
      <node concept="3cqZAl" id="1NJXWPlwJKy" role="3clF45" />
      <node concept="37vLTG" id="1NJXWPlwJKz" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="1NJXWPlwJK$" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3clFbS" id="1NJXWPlwJK_" role="3clF47">
        <node concept="XkiVB" id="1NJXWPlwJLM" role="3cqZAp">
          <ref role="37wK5l" to="rl1i:51NkKCgB44M" resolve="ConceptHierarchyTree" />
          <node concept="37vLTw" id="1NJXWPlwJLN" role="37wK5m">
            <ref role="3cqZAo" node="1NJXWPlwJKz" resolve="repository" />
          </node>
          <node concept="37vLTw" id="1NJXWPm8ehl" role="37wK5m">
            <ref role="3cqZAo" node="1NJXWPm899q" resolve="isParentHierarchy" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1NJXWPlwJKD" role="1B3o_S" />
      <node concept="37vLTG" id="1NJXWPm899q" role="3clF46">
        <property role="TrG5h" value="isParentHierarchy" />
        <node concept="10P_77" id="1NJXWPm899s" role="1tU5fm" />
      </node>
    </node>
    <node concept="2YIFZL" id="1NJXWPlwJKE" role="jymVt">
      <property role="TrG5h" value="buildParentHierarchy" />
      <node concept="37vLTG" id="1NJXWPlwJKF" role="3clF46">
        <property role="TrG5h" value="conceptDeclaration" />
        <node concept="3uibUv" id="1NJXWPlwJKG" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="1NJXWPlwJKH" role="3clF47">
        <node concept="3cpWs8" id="1NJXWPlwJKJ" role="3cqZAp">
          <node concept="3cpWsn" id="1NJXWPlwJKI" role="3cpWs9">
            <property role="TrG5h" value="tree" />
            <node concept="3uibUv" id="1NJXWPlwJKK" role="1tU5fm">
              <ref role="3uigEE" node="1NJXWPlwJKu" resolve="ConceptHierarchyTreeTestSupport" />
            </node>
            <node concept="2ShNRf" id="1NJXWPlwJLP" role="33vP2m">
              <node concept="1pGfFk" id="1NJXWPlwJMk" role="2ShVmc">
                <ref role="37wK5l" node="1NJXWPlwJKx" resolve="ConceptHierarchyTreeTestSupport" />
                <node concept="2OqwBi" id="1NJXWPlwJRn" role="37wK5m">
                  <node concept="2OqwBi" id="1NJXWPlwJR6" role="2Oq$k0">
                    <node concept="37vLTw" id="1NJXWPlwJNA" role="2Oq$k0">
                      <ref role="3cqZAo" node="1NJXWPlwJKF" resolve="conceptDeclaration" />
                    </node>
                    <node concept="liA8E" id="1NJXWPlwJR7" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1NJXWPlwJRo" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                  </node>
                </node>
                <node concept="3clFbT" id="1NJXWPm8j_e" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1NJXWPlwJKO" role="3cqZAp">
          <node concept="2OqwBi" id="1NJXWPlwJPc" role="3clFbG">
            <node concept="37vLTw" id="1NJXWPlwJMH" role="2Oq$k0">
              <ref role="3cqZAo" node="1NJXWPlwJKI" resolve="tree" />
            </node>
            <node concept="liA8E" id="1NJXWPlwJPd" role="2OqNvi">
              <ref role="37wK5l" to="rl1i:2z9SX9btPUk" resolve="setHierarchyNode" />
              <node concept="37vLTw" id="1NJXWPlwJPe" role="37wK5m">
                <ref role="3cqZAo" node="1NJXWPlwJKF" resolve="conceptDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="SfApY" id="1NJXWPm72CQ" role="3cqZAp">
          <node concept="3clFbS" id="1NJXWPm72CW" role="SfCbr">
            <node concept="3clFbF" id="1NJXWPm72CX" role="3cqZAp">
              <node concept="2OqwBi" id="1NJXWPm72CZ" role="3clFbG">
                <node concept="37vLTw" id="1NJXWPm72D2" role="2Oq$k0">
                  <ref role="3cqZAo" node="1NJXWPlwJKI" resolve="tree" />
                </node>
                <node concept="liA8E" id="1NJXWPm72D3" role="2OqNvi">
                  <ref role="37wK5l" to="rl1i:3Xr93YReMvD" resolve="rebuildParentHierarchy" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1NJXWPm72D4" role="3cqZAp">
              <node concept="3clFbT" id="1NJXWPm72D5" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="1NJXWPm72D6" role="TEbGg">
            <node concept="3cpWsn" id="1NJXWPm72Da" role="TDEfY">
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="1NJXWPm72Dc" role="1tU5fm">
                <ref role="3uigEE" to="rl1i:51NkKCgB4lI" resolve="CircularHierarchyException" />
              </node>
            </node>
            <node concept="3clFbS" id="1NJXWPm72Dd" role="TDEfX">
              <node concept="3cpWs6" id="1NJXWPm72De" role="3cqZAp">
                <node concept="3clFbT" id="1NJXWPm72Df" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1NJXWPlwJKT" role="1B3o_S" />
      <node concept="10P_77" id="1NJXWPm6VCr" role="3clF45" />
      <node concept="P$JXv" id="1NJXWPlwJKV" role="lGtFl">
        <node concept="1PaTwC" id="1NJXWPlwJKW" role="1Vez_I">
          <node concept="3oM_SD" id="1NJXWPlwJKX" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
        <node concept="1PaTwC" id="1NJXWPlwJLk" role="1Vez_I">
          <node concept="3oM_SD" id="1NJXWPlwJLl" role="1PaTwD">
            <property role="3oM_SC" value="Builds" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLm" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLn" role="1PaTwD">
            <property role="3oM_SC" value="parent" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLo" role="1PaTwD">
            <property role="3oM_SC" value="hierarchy" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLp" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLq" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLr" role="1PaTwD">
            <property role="3oM_SC" value="given" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLs" role="1PaTwD">
            <property role="3oM_SC" value="concept" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLt" role="1PaTwD">
            <property role="3oM_SC" value="declaration," />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLu" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLv" role="1PaTwD">
            <property role="3oM_SC" value="way" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLw" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLx" role="1PaTwD">
            <property role="3oM_SC" value="Concept" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLy" role="1PaTwD">
            <property role="3oM_SC" value="Hierarchy" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJLz" role="1PaTwD">
            <property role="3oM_SC" value="view" />
          </node>
          <node concept="3oM_SD" id="1NJXWPlwJL$" role="1PaTwD">
            <property role="3oM_SC" value="does." />
          </node>
        </node>
        <node concept="1PaTwC" id="1NJXWPm79BC" role="1Vez_I">
          <node concept="3oM_SD" id="1NJXWPm79BE" role="1PaTwD">
            <property role="3oM_SC" value="Returns" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm79BF" role="1PaTwD">
            <property role="3oM_SC" value="true" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm79BG" role="1PaTwD">
            <property role="3oM_SC" value="if" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm79BH" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm79BI" role="1PaTwD">
            <property role="3oM_SC" value="cyclic" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm79BJ" role="1PaTwD">
            <property role="3oM_SC" value="concept" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm79BK" role="1PaTwD">
            <property role="3oM_SC" value="hierarchy" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm79BL" role="1PaTwD">
            <property role="3oM_SC" value="was" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm79BM" role="1PaTwD">
            <property role="3oM_SC" value="reported" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm79BN" role="1PaTwD">
            <property role="3oM_SC" value="instead" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm79BO" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm79BP" role="1PaTwD">
            <property role="3oM_SC" value="being" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm79BQ" role="1PaTwD">
            <property role="3oM_SC" value="silently" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm79BR" role="1PaTwD">
            <property role="3oM_SC" value="truncated," />
          </node>
          <node concept="3oM_SD" id="1NJXWPm79BS" role="1PaTwD">
            <property role="3oM_SC" value="see" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm79BT" role="1PaTwD">
            <property role="3oM_SC" value="MPS-40037." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="1NJXWPm8$0v" role="jymVt">
      <property role="TrG5h" value="expandChildHierarchyUntilCycleReported" />
      <node concept="17QB3L" id="1NJXWPm8$0z" role="3clF45" />
      <node concept="3Tm1VV" id="1NJXWPm8$0$" role="1B3o_S" />
      <node concept="37vLTG" id="1NJXWPm8$0_" role="3clF46">
        <property role="TrG5h" value="conceptDeclaration" />
        <node concept="3uibUv" id="1NJXWPm8$0B" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="1NJXWPm8$0C" role="3clF46">
        <property role="TrG5h" value="maxDepth" />
        <node concept="10Oyi0" id="1NJXWPm8$0E" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1NJXWPm8$0F" role="3clF47">
        <node concept="3cpWs8" id="1NJXWPm8$0G" role="3cqZAp">
          <node concept="3cpWsn" id="1NJXWPm8$0J" role="3cpWs9">
            <property role="TrG5h" value="tree" />
            <node concept="3uibUv" id="1NJXWPm8$0L" role="1tU5fm">
              <ref role="3uigEE" node="1NJXWPlwJKu" resolve="ConceptHierarchyTreeTestSupport" />
            </node>
            <node concept="2ShNRf" id="1NJXWPm8$0M" role="33vP2m">
              <node concept="1pGfFk" id="1NJXWPm8$0O" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="1NJXWPlwJKx" resolve="ConceptHierarchyTreeTestSupport" />
                <node concept="2OqwBi" id="1NJXWPm8$0P" role="37wK5m">
                  <node concept="2OqwBi" id="1NJXWPm8$0S" role="2Oq$k0">
                    <node concept="37vLTw" id="1NJXWPm8$0V" role="2Oq$k0">
                      <ref role="3cqZAo" node="1NJXWPm8$0_" resolve="conceptDeclaration" />
                    </node>
                    <node concept="liA8E" id="1NJXWPm8$0W" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1NJXWPm8$0X" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                  </node>
                </node>
                <node concept="3clFbT" id="1NJXWPm8$0Y" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1NJXWPm8$0Z" role="3cqZAp">
          <node concept="2OqwBi" id="1NJXWPm8$11" role="3clFbG">
            <node concept="37vLTw" id="1NJXWPm8$14" role="2Oq$k0">
              <ref role="3cqZAo" node="1NJXWPm8$0J" resolve="tree" />
            </node>
            <node concept="liA8E" id="1NJXWPm8$15" role="2OqNvi">
              <ref role="37wK5l" to="rl1i:2z9SX9btPUk" resolve="setHierarchyNode" />
              <node concept="37vLTw" id="1NJXWPm8$16" role="37wK5m">
                <ref role="3cqZAo" node="1NJXWPm8$0_" resolve="conceptDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="SfApY" id="1NJXWPm8$17" role="3cqZAp">
          <node concept="3clFbS" id="1NJXWPm8$1d" role="SfCbr">
            <node concept="3cpWs6" id="1NJXWPm8$1e" role="3cqZAp">
              <node concept="1rXfSq" id="1NJXWPm8$1f" role="3cqZAk">
                <ref role="37wK5l" node="1NJXWPm8oWj" resolve="findReportedCycle" />
                <node concept="2OqwBi" id="1NJXWPm8$1g" role="37wK5m">
                  <node concept="37vLTw" id="1NJXWPm8$1j" role="2Oq$k0">
                    <ref role="3cqZAo" node="1NJXWPm8$0J" resolve="tree" />
                  </node>
                  <node concept="liA8E" id="1NJXWPm8$1k" role="2OqNvi">
                    <ref role="37wK5l" to="rl1i:3Xr93YReMvD" resolve="rebuildParentHierarchy" />
                  </node>
                </node>
                <node concept="37vLTw" id="1NJXWPm8$1l" role="37wK5m">
                  <ref role="3cqZAo" node="1NJXWPm8$0C" resolve="maxDepth" />
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="1NJXWPm8$1m" role="TEbGg">
            <node concept="3cpWsn" id="1NJXWPm8$1q" role="TDEfY">
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="1NJXWPm8$1s" role="1tU5fm">
                <ref role="3uigEE" to="rl1i:51NkKCgB4lI" resolve="CircularHierarchyException" />
              </node>
            </node>
            <node concept="3clFbS" id="1NJXWPm8$1t" role="TDEfX">
              <node concept="YS8fn" id="1NJXWPm8$1u" role="3cqZAp">
                <node concept="2ShNRf" id="1NJXWPm8$1w" role="YScLw">
                  <node concept="1pGfFk" id="1NJXWPm8$1y" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="IllegalStateException" />
                    <node concept="Xl_RD" id="1NJXWPm8$1z" role="37wK5m">
                      <property role="Xl_RC" value="the parent chain above the root is not walked in this direction, so it cannot report a cycle" />
                    </node>
                    <node concept="37vLTw" id="1NJXWPm8$1$" role="37wK5m">
                      <ref role="3cqZAo" node="1NJXWPm8$1q" resolve="ex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="1NJXWPm8$1_" role="lGtFl">
        <node concept="1PaTwC" id="1NJXWPm8$1C" role="1Vez_I" />
        <node concept="1PaTwC" id="1NJXWPm8$1E" role="1Vez_I">
          <node concept="3oM_SD" id="1NJXWPm8$1G" role="1PaTwD">
            <property role="3oM_SC" value="Expands" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$1H" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$1I" role="1PaTwD">
            <property role="3oM_SC" value="child" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$1J" role="1PaTwD">
            <property role="3oM_SC" value="hierarchy" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$1K" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$1L" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$1M" role="1PaTwD">
            <property role="3oM_SC" value="given" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$1N" role="1PaTwD">
            <property role="3oM_SC" value="concept" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$1O" role="1PaTwD">
            <property role="3oM_SC" value="declaration" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$1P" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$1Q" role="1PaTwD">
            <property role="3oM_SC" value="way" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$1R" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$1S" role="1PaTwD">
            <property role="3oM_SC" value="Concept" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$1T" role="1PaTwD">
            <property role="3oM_SC" value="Hierarchy" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$1U" role="1PaTwD">
            <property role="3oM_SC" value="view" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$1V" role="1PaTwD">
            <property role="3oM_SC" value="does," />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$1W" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$1X" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$1Y" role="1PaTwD">
            <property role="3oM_SC" value="direction" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$1Z" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$20" role="1PaTwD">
            <property role="3oM_SC" value="walks" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$21" role="1PaTwD">
            <property role="3oM_SC" value="superconcepts," />
          </node>
        </node>
        <node concept="1PaTwC" id="1NJXWPm8$22" role="1Vez_I">
          <node concept="3oM_SD" id="1NJXWPm8$24" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$25" role="1PaTwD">
            <property role="3oM_SC" value="returns" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$26" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$27" role="1PaTwD">
            <property role="3oM_SC" value="message" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$28" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$29" role="1PaTwD">
            <property role="3oM_SC" value="view" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2a" role="1PaTwD">
            <property role="3oM_SC" value="reported" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2b" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2c" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2d" role="1PaTwD">
            <property role="3oM_SC" value="hierarchy," />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2e" role="1PaTwD">
            <property role="3oM_SC" value="or" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2f" role="1PaTwD">
            <property role="3oM_SC" value="null" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2g" role="1PaTwD">
            <property role="3oM_SC" value="if" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2h" role="1PaTwD">
            <property role="3oM_SC" value="nothing" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2i" role="1PaTwD">
            <property role="3oM_SC" value="was" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2j" role="1PaTwD">
            <property role="3oM_SC" value="reported." />
          </node>
        </node>
        <node concept="1PaTwC" id="1NJXWPm8$2k" role="1Vez_I">
          <node concept="3oM_SD" id="1NJXWPm8$2m" role="1PaTwD">
            <property role="3oM_SC" value="A" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2n" role="1PaTwD">
            <property role="3oM_SC" value="cyclic" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2o" role="1PaTwD">
            <property role="3oM_SC" value="hierarchy" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2p" role="1PaTwD">
            <property role="3oM_SC" value="has" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2q" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2r" role="1PaTwD">
            <property role="3oM_SC" value="be" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2s" role="1PaTwD">
            <property role="3oM_SC" value="reported" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2t" role="1PaTwD">
            <property role="3oM_SC" value="by" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2u" role="1PaTwD">
            <property role="3oM_SC" value="ChildHierarchyTreeNode" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2v" role="1PaTwD">
            <property role="3oM_SC" value="as" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2w" role="1PaTwD">
            <property role="3oM_SC" value="an" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2x" role="1PaTwD">
            <property role="3oM_SC" value="error" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2y" role="1PaTwD">
            <property role="3oM_SC" value="node" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2z" role="1PaTwD">
            <property role="3oM_SC" value="instead" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2$" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2_" role="1PaTwD">
            <property role="3oM_SC" value="being" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2A" role="1PaTwD">
            <property role="3oM_SC" value="expanded" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2B" role="1PaTwD">
            <property role="3oM_SC" value="forever," />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2C" role="1PaTwD">
            <property role="3oM_SC" value="see" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2D" role="1PaTwD">
            <property role="3oM_SC" value="MPS-40037." />
          </node>
        </node>
        <node concept="1PaTwC" id="1NJXWPm8$2E" role="1Vez_I">
          <node concept="3oM_SD" id="1NJXWPm8$2G" role="1PaTwD">
            <property role="3oM_SC" value="The" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2H" role="1PaTwD">
            <property role="3oM_SC" value="reported" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2I" role="1PaTwD">
            <property role="3oM_SC" value="node" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2J" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2K" role="1PaTwD">
            <property role="3oM_SC" value="looked" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2L" role="1PaTwD">
            <property role="3oM_SC" value="up" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2M" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2N" role="1PaTwD">
            <property role="3oM_SC" value="way" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2O" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2P" role="1PaTwD">
            <property role="3oM_SC" value="view" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2Q" role="1PaTwD">
            <property role="3oM_SC" value="renders" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2R" role="1PaTwD">
            <property role="3oM_SC" value="it" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2S" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2T" role="1PaTwD">
            <property role="3oM_SC" value="red," />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2U" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2V" role="1PaTwD">
            <property role="3oM_SC" value="Icons.ERROR_ICON" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2W" role="1PaTwD">
            <property role="3oM_SC" value="-" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2X" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2Y" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$2Z" role="1PaTwD">
            <property role="3oM_SC" value="also" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$30" role="1PaTwD">
            <property role="3oM_SC" value="pins" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$31" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$32" role="1PaTwD">
            <property role="3oM_SC" value="presentation." />
          </node>
        </node>
        <node concept="1PaTwC" id="1NJXWPm8$33" role="1Vez_I">
          <node concept="3oM_SD" id="1NJXWPm8$35" role="1PaTwD">
            <property role="3oM_SC" value="The" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$36" role="1PaTwD">
            <property role="3oM_SC" value="walk" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$37" role="1PaTwD">
            <property role="3oM_SC" value="descends" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$38" role="1PaTwD">
            <property role="3oM_SC" value="at" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$39" role="1PaTwD">
            <property role="3oM_SC" value="most" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$3a" role="1PaTwD">
            <property role="3oM_SC" value="maxDepth" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$3b" role="1PaTwD">
            <property role="3oM_SC" value="levels" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$3c" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$3d" role="1PaTwD">
            <property role="3oM_SC" value="fails" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$3e" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$3f" role="1PaTwD">
            <property role="3oM_SC" value="an" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$3g" role="1PaTwD">
            <property role="3oM_SC" value="IllegalStateException" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$3h" role="1PaTwD">
            <property role="3oM_SC" value="once" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$3i" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$3j" role="1PaTwD">
            <property role="3oM_SC" value="budget" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$3k" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$3l" role="1PaTwD">
            <property role="3oM_SC" value="exhausted," />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$3m" role="1PaTwD">
            <property role="3oM_SC" value="so" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$3n" role="1PaTwD">
            <property role="3oM_SC" value="that" />
          </node>
        </node>
        <node concept="1PaTwC" id="1NJXWPm8$3o" role="1Vez_I">
          <node concept="3oM_SD" id="1NJXWPm8$3q" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$3r" role="1PaTwD">
            <property role="3oM_SC" value="regression" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$3s" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$3t" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$3u" role="1PaTwD">
            <property role="3oM_SC" value="cycle" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$3v" role="1PaTwD">
            <property role="3oM_SC" value="guard" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$3w" role="1PaTwD">
            <property role="3oM_SC" value="fails" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$3x" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$3y" role="1PaTwD">
            <property role="3oM_SC" value="test" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$3z" role="1PaTwD">
            <property role="3oM_SC" value="instead" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$3$" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$3_" role="1PaTwD">
            <property role="3oM_SC" value="hanging" />
          </node>
          <node concept="3oM_SD" id="1NJXWPm8$3A" role="1PaTwD">
            <property role="3oM_SC" value="it." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="1NJXWPm8oWj" role="jymVt">
      <property role="TrG5h" value="findReportedCycle" />
      <node concept="17QB3L" id="1NJXWPm8oWn" role="3clF45" />
      <node concept="3Tm6S6" id="1NJXWPm8oWo" role="1B3o_S" />
      <node concept="37vLTG" id="1NJXWPm8oWp" role="3clF46">
        <property role="TrG5h" value="treeNode" />
        <node concept="3uibUv" id="1NJXWPm8oWr" role="1tU5fm">
          <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
        </node>
      </node>
      <node concept="37vLTG" id="1NJXWPm8oWs" role="3clF46">
        <property role="TrG5h" value="depthBudget" />
        <node concept="10Oyi0" id="1NJXWPm8oWu" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1NJXWPm8umN" role="3clF47">
        <node concept="3clFbJ" id="1NJXWPm8umO" role="3cqZAp">
          <node concept="2dkUwp" id="1NJXWPm8umR" role="3clFbw">
            <node concept="37vLTw" id="1NJXWPm8umU" role="3uHU7B">
              <ref role="3cqZAo" node="1NJXWPm8oWs" resolve="depthBudget" />
            </node>
            <node concept="3cmrfG" id="1NJXWPm8umV" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbS" id="1NJXWPm8umW" role="3clFbx">
            <node concept="YS8fn" id="1NJXWPm8umX" role="3cqZAp">
              <node concept="2ShNRf" id="1NJXWPm8umZ" role="YScLw">
                <node concept="1pGfFk" id="1NJXWPm8un1" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="1NJXWPm8un2" role="37wK5m">
                    <property role="Xl_RC" value="hierarchy expansion did not terminate: the concept hierarchy cycle was not reported" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1NJXWPm8un3" role="3cqZAp">
          <node concept="2OqwBi" id="1NJXWPm8un5" role="3clFbG">
            <node concept="37vLTw" id="1NJXWPm8un8" role="2Oq$k0">
              <ref role="3cqZAo" node="1NJXWPm8oWp" resolve="treeNode" />
            </node>
            <node concept="liA8E" id="1NJXWPm8un9" role="2OqNvi">
              <ref role="37wK5l" to="7e8u:~MPSTreeNode.init()" resolve="init" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1NJXWPm8una" role="3cqZAp">
          <node concept="1Wc70l" id="1NJXWPm8und" role="3clFbw">
            <node concept="3clFbC" id="1NJXWPm8ung" role="3uHU7B">
              <node concept="2OqwBi" id="1NJXWPm8unj" role="3uHU7B">
                <node concept="37vLTw" id="1NJXWPm8unm" role="2Oq$k0">
                  <ref role="3cqZAo" node="1NJXWPm8oWp" resolve="treeNode" />
                </node>
                <node concept="liA8E" id="1NJXWPm8unn" role="2OqNvi">
                  <ref role="37wK5l" to="7e8u:~MPSTreeNode.getIcon()" resolve="getIcon" />
                </node>
              </node>
              <node concept="10M0yZ" id="1NJXWPm8uno" role="3uHU7w">
                <ref role="1PxDUh" to="57ty:~Icons" resolve="Icons" />
                <ref role="3cqZAo" to="57ty:~Icons.ERROR_ICON" resolve="ERROR_ICON" />
              </node>
            </node>
            <node concept="3clFbC" id="1NJXWPm8unp" role="3uHU7w">
              <node concept="2OqwBi" id="1NJXWPm8uns" role="3uHU7B">
                <node concept="37vLTw" id="1NJXWPm8unv" role="2Oq$k0">
                  <ref role="3cqZAo" node="1NJXWPm8oWp" resolve="treeNode" />
                </node>
                <node concept="liA8E" id="1NJXWPm8unw" role="2OqNvi">
                  <ref role="37wK5l" to="7e8u:~MPSTreeNode.getColor()" resolve="getColor" />
                </node>
              </node>
              <node concept="10M0yZ" id="1NJXWPm8unx" role="3uHU7w">
                <ref role="1PxDUh" to="lzb2:~JBColor" resolve="JBColor" />
                <ref role="3cqZAo" to="lzb2:~JBColor.RED" resolve="RED" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1NJXWPm8uny" role="3clFbx">
            <node concept="3cpWs6" id="1NJXWPm8unz" role="3cqZAp">
              <node concept="2OqwBi" id="1NJXWPm8un$" role="3cqZAk">
                <node concept="37vLTw" id="1NJXWPm8unB" role="2Oq$k0">
                  <ref role="3cqZAo" node="1NJXWPm8oWp" resolve="treeNode" />
                </node>
                <node concept="liA8E" id="1NJXWPm8unC" role="2OqNvi">
                  <ref role="37wK5l" to="7e8u:~MPSTreeNode.getAdditionalText()" resolve="getAdditionalText" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="1NJXWPm8unD" role="3cqZAp">
          <node concept="3cpWsn" id="1NJXWPm8unH" role="1Duv9x">
            <property role="TrG5h" value="child" />
            <node concept="3uibUv" id="1NJXWPm8unJ" role="1tU5fm">
              <ref role="3uigEE" to="7e8u:~MPSTreeNode" resolve="MPSTreeNode" />
            </node>
          </node>
          <node concept="37vLTw" id="1NJXWPm8unK" role="1DdaDG">
            <ref role="3cqZAo" node="1NJXWPm8oWp" resolve="treeNode" />
          </node>
          <node concept="3clFbS" id="1NJXWPm8unL" role="2LFqv$">
            <node concept="3cpWs8" id="1NJXWPm8unM" role="3cqZAp">
              <node concept="3cpWsn" id="1NJXWPm8unP" role="3cpWs9">
                <property role="TrG5h" value="reported" />
                <node concept="17QB3L" id="1NJXWPm8unR" role="1tU5fm" />
                <node concept="1rXfSq" id="1NJXWPm8unS" role="33vP2m">
                  <ref role="37wK5l" node="1NJXWPm8oWj" resolve="findReportedCycle" />
                  <node concept="37vLTw" id="1NJXWPm8unT" role="37wK5m">
                    <ref role="3cqZAo" node="1NJXWPm8unH" resolve="child" />
                  </node>
                  <node concept="3cpWsd" id="1NJXWPm8unU" role="37wK5m">
                    <node concept="37vLTw" id="1NJXWPm8unX" role="3uHU7B">
                      <ref role="3cqZAo" node="1NJXWPm8oWs" resolve="depthBudget" />
                    </node>
                    <node concept="3cmrfG" id="1NJXWPm8unY" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1NJXWPm8unZ" role="3cqZAp">
              <node concept="3y3z36" id="1NJXWPm8uo2" role="3clFbw">
                <node concept="37vLTw" id="1NJXWPm8uo5" role="3uHU7B">
                  <ref role="3cqZAo" node="1NJXWPm8unP" resolve="reported" />
                </node>
                <node concept="10Nm6u" id="1NJXWPm8uo6" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="1NJXWPm8uo7" role="3clFbx">
                <node concept="3cpWs6" id="1NJXWPm8uo8" role="3cqZAp">
                  <node concept="37vLTw" id="1NJXWPm8uo9" role="3cqZAk">
                    <ref role="3cqZAo" node="1NJXWPm8unP" resolve="reported" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1NJXWPm8uoa" role="3cqZAp">
          <node concept="10Nm6u" id="1NJXWPm8uob" role="3cqZAk" />
        </node>
      </node>
    </node>
  </node>
</model>

