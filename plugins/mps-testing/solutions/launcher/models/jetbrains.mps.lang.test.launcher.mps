<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1cb9f3bb-9050-412e-95bb-906faebc74ca(jetbrains.mps.lang.test.launcher)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports>
    <import index="jo3e" ref="r:73cef602-d8a6-459c-91ff-d4e129d1a7c5(jetbrains.mps.tool.builder)" />
    <import index="asz6" ref="r:067fd2c9-d009-4506-91db-a69992d65964(jetbrains.mps.tool.common)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="79ha" ref="r:2876f1ee-0b45-4db5-8c09-0682cdee5c67(jetbrains.mps.tool.environment)" />
    <import index="cky9" ref="r:1d4e7c57-c144-4228-9dec-8180ddf9f0ee(jetbrains.mps.tool.environment)" />
    <import index="52vl" ref="r:2706a815-df9c-4792-bb89-2a2c3cd1dc7a(jetbrains.mps.tool.run)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="t6h5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.reflect(JDK/)" />
    <import index="i5cy" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent.atomic(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="32g5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.library(MPS.Core/)" />
    <import index="v9gs" ref="r:a139668a-5a0e-46e2-a802-102190e497e5(jetbrains.mps.core.tool.environment.util)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="w827" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs.openapi(MPS.Core/)" />
    <import index="je6q" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.library.contributor(MPS.Core/)" />
    <import index="pa15" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.persistence(MPS.Core/)" />
    <import index="w0gx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.structure.modules(MPS.Core/)" />
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
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
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
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
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
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
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
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
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
      <concept id="8276990574909231788" name="jetbrains.mps.baseLanguage.structure.FinallyClause" flags="ng" index="1wplmZ">
        <child id="8276990574909234106" name="finallyBody" index="1wplMD" />
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
  </registry>
  <node concept="312cEu" id="7MSVDs2zHO$">
    <property role="TrG5h" value="LaunchTestWorker" />
    <node concept="2tJIrI" id="7MSVDs2zXcT" role="jymVt" />
    <node concept="Wx3nA" id="7MSVDs2EIdY" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="LAUNCHER_CLASS" />
      <node concept="3Tm6S6" id="7MSVDs2EIdV" role="1B3o_S" />
      <node concept="17QB3L" id="7MSVDs2EIdW" role="1tU5fm" />
      <node concept="Xl_RD" id="7MSVDs2EIdX" role="33vP2m">
        <property role="Xl_RC" value="jetbrains.mps.lang.test.junit5.ScriptJUnit5Launcher" />
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
    <node concept="Wx3nA" id="7MSVDs2F5xZ" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="LAUNCHER_METHOD" />
      <node concept="3Tm6S6" id="7MSVDs2F5xW" role="1B3o_S" />
      <node concept="17QB3L" id="7MSVDs2F5xX" role="1tU5fm" />
      <node concept="Xl_RD" id="7MSVDs2F5xY" role="33vP2m">
        <property role="Xl_RC" value="launchTests" />
      </node>
    </node>
    <node concept="2tJIrI" id="7MSVDs2F7e2" role="jymVt" />
    <node concept="Wx3nA" id="5HBbAYqGRmA" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="TEST_REPORTS_DIR" />
      <node concept="3Tm1VV" id="5HBbAYqGRmB" role="1B3o_S" />
      <node concept="17QB3L" id="5HBbAYqGRmC" role="1tU5fm" />
      <node concept="Xl_RD" id="5HBbAYqGRmD" role="33vP2m">
        <property role="Xl_RC" value="launchtests.testReportsDir" />
      </node>
    </node>
    <node concept="Wx3nA" id="51DD0tdNVKK" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="TEST_REPORTS_OPENTEST" />
      <node concept="3Tm1VV" id="51DD0tdNVKL" role="1B3o_S" />
      <node concept="17QB3L" id="51DD0tdNVKM" role="1tU5fm" />
      <node concept="Xl_RD" id="51DD0tdNVKN" role="33vP2m">
        <property role="Xl_RC" value="launchtests.testReportsOpenTest" />
      </node>
    </node>
    <node concept="2tJIrI" id="HwplGLPdli" role="jymVt" />
    <node concept="2tJIrI" id="5EMxBKzMAF$" role="jymVt" />
    <node concept="312cEg" id="1xUpa7QRhb4" role="jymVt">
      <property role="TrG5h" value="myForceFailOnError" />
      <node concept="3Tm6S6" id="1xUpa7QRhb5" role="1B3o_S" />
      <node concept="10P_77" id="1xUpa7QRpbb" role="1tU5fm" />
      <node concept="3clFbT" id="1xUpa7QR_48" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="1xUpa7QRBa0" role="jymVt" />
    <node concept="3clFbW" id="7MSVDs2$19T" role="jymVt">
      <node concept="37vLTG" id="7MSVDs2$1cU" role="3clF46">
        <property role="TrG5h" value="whatToDo" />
        <node concept="3uibUv" id="7MSVDs2$1gL" role="1tU5fm">
          <ref role="3uigEE" to="asz6:KL8Aql8enO" resolve="Script" />
        </node>
      </node>
      <node concept="3cqZAl" id="7MSVDs2$19V" role="3clF45" />
      <node concept="3Tm1VV" id="7MSVDs2$19W" role="1B3o_S" />
      <node concept="3clFbS" id="7MSVDs2$19X" role="3clF47">
        <node concept="XkiVB" id="7MSVDs2$nOY" role="3cqZAp">
          <ref role="37wK5l" to="jo3e:KL8Aqlj5me" resolve="WorkerBase" />
          <node concept="37vLTw" id="7MSVDs2$nTJ" role="37wK5m">
            <ref role="3cqZAo" node="7MSVDs2$1cU" resolve="whatToDo" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1xUpa7QTahb" role="jymVt" />
    <node concept="3clFb_" id="4MVYzzgu$Rh" role="jymVt">
      <property role="TrG5h" value="createEnvironment" />
      <property role="od$2w" value="false" />
      <node concept="3uibUv" id="4MVYzzgu$Ri" role="3clF45">
        <ref role="3uigEE" to="79ha:HKKzfMjqRV" resolve="Environment" />
      </node>
      <node concept="3Tmbuc" id="4MVYzzgu$Rk" role="1B3o_S" />
      <node concept="3clFbS" id="4MVYzzgu$Rl" role="3clF47">
        <node concept="3cpWs8" id="5gsHVK$KXKS" role="3cqZAp">
          <node concept="3cpWsn" id="5gsHVK$KXKT" role="3cpWs9">
            <property role="TrG5h" value="config" />
            <node concept="3uibUv" id="5gsHVK$KVU3" role="1tU5fm">
              <ref role="3uigEE" to="79ha:6rx4kZDk5A9" resolve="EnvironmentConfig" />
            </node>
            <node concept="2OqwBi" id="5tXD4tyZY9i" role="33vP2m">
              <node concept="1rXfSq" id="5gsHVK$KXKU" role="2Oq$k0">
                <ref role="37wK5l" to="jo3e:63P3E8$mb3n" resolve="createEnvironmentConfig" />
                <node concept="37vLTw" id="5gsHVK$KXKV" role="37wK5m">
                  <ref role="3cqZAo" to="jo3e:KL8Aqlj5lG" resolve="myWhatToDo" />
                </node>
              </node>
              <node concept="liA8E" id="5tXD4tz01kh" role="2OqNvi">
                <ref role="37wK5l" to="79ha:28TMbOSEVXt" resolve="withTestModeOn" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3FyGp$Gjuk8" role="3cqZAp">
          <node concept="3cpWsn" id="3FyGp$Gjukb" role="3cpWs9">
            <property role="TrG5h" value="hasVcsPlugin" />
            <node concept="10P_77" id="3FyGp$Gjuk6" role="1tU5fm" />
            <node concept="3clFbT" id="3FyGp$GjK1K" role="33vP2m" />
          </node>
        </node>
        <node concept="1DcWWT" id="3FyGp$GgV7b" role="3cqZAp">
          <node concept="3clFbS" id="3FyGp$GgV7e" role="2LFqv$">
            <node concept="3clFbJ" id="3FyGp$Gh4Hf" role="3cqZAp">
              <node concept="3clFbS" id="3FyGp$Gh4Hh" role="3clFbx">
                <node concept="3clFbF" id="3FyGp$GjWc8" role="3cqZAp">
                  <node concept="37vLTI" id="3FyGp$Gk0s2" role="3clFbG">
                    <node concept="3clFbT" id="3FyGp$Gk2YH" role="37vLTx">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="37vLTw" id="3FyGp$GjWc6" role="37vLTJ">
                      <ref role="3cqZAo" node="3FyGp$Gjukb" resolve="hasVcsPlugin" />
                    </node>
                  </node>
                </node>
                <node concept="3zACq4" id="3FyGp$Gjm8G" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="3FyGp$Gj5BO" role="3clFbw">
                <node concept="Xl_RD" id="3FyGp$GiVRj" role="2Oq$k0">
                  <property role="Xl_RC" value="com.intellij.platform.vcs" />
                </node>
                <node concept="liA8E" id="3FyGp$Gj9KL" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="3FyGp$GjglA" role="37wK5m">
                    <node concept="37vLTw" id="3FyGp$GjdN_" role="2Oq$k0">
                      <ref role="3cqZAo" node="3FyGp$GgV7f" resolve="pd" />
                    </node>
                    <node concept="2OwXpG" id="3FyGp$Gji0W" role="2OqNvi">
                      <ref role="2Oxat5" to="asz6:r$A3E5qOHV" resolve="id" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3FyGp$GgV7f" role="1Duv9x">
            <property role="TrG5h" value="pd" />
            <node concept="3uibUv" id="3FyGp$GgV7j" role="1tU5fm">
              <ref role="3uigEE" to="asz6:r$A3E5vV_o" resolve="PluginData" />
            </node>
          </node>
          <node concept="2OqwBi" id="3FyGp$GgV7k" role="1DdaDG">
            <node concept="37vLTw" id="3FyGp$GgV7l" role="2Oq$k0">
              <ref role="3cqZAo" node="5gsHVK$KXKT" resolve="config" />
            </node>
            <node concept="liA8E" id="3FyGp$GgV7m" role="2OqNvi">
              <ref role="37wK5l" to="79ha:5UWB9tjYeB" resolve="getPlugins" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3FyGp$GkhV3" role="3cqZAp">
          <node concept="3clFbS" id="3FyGp$GkhV5" role="3clFbx">
            <node concept="3clFbF" id="3FyGp$Gkucg" role="3cqZAp">
              <node concept="37vLTI" id="3FyGp$Gkz95" role="3clFbG">
                <node concept="2OqwBi" id="3FyGp$GkBoV" role="37vLTx">
                  <node concept="37vLTw" id="3FyGp$Gk_HJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="5gsHVK$KXKT" resolve="config" />
                  </node>
                  <node concept="liA8E" id="3FyGp$GkGBT" role="2OqNvi">
                    <ref role="37wK5l" to="79ha:5whBXIGKmsC" resolve="withPlatformVcsPlugin" />
                  </node>
                </node>
                <node concept="37vLTw" id="3FyGp$Gkuce" role="37vLTJ">
                  <ref role="3cqZAo" node="5gsHVK$KXKT" resolve="config" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="3FyGp$Gkm0p" role="3clFbw">
            <node concept="37vLTw" id="3FyGp$Gkq5q" role="3fr31v">
              <ref role="3cqZAo" node="3FyGp$Gjukb" resolve="hasVcsPlugin" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5EMxBKzUI0V" role="3cqZAp">
          <node concept="1PaTwC" id="5EMxBKzUI0W" role="1aUNEU">
            <node concept="3oM_SD" id="5EMxBKzUMsB" role="1PaTwD">
              <property role="3oM_SC" value="XXX" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzUN8r" role="1PaTwD">
              <property role="3oM_SC" value="perhaps," />
            </node>
            <node concept="3oM_SD" id="5EMxBKzUNk5" role="1PaTwD">
              <property role="3oM_SC" value="it's" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzUPSn" role="1PaTwD">
              <property role="3oM_SC" value="better" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzURrP" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzUS6B" role="1PaTwD">
              <property role="3oM_SC" value="add" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzUSbG" role="1PaTwD">
              <property role="3oM_SC" value="myWhatToDo.getModules()" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzUUG3" role="1PaTwD">
              <property role="3oM_SC" value="into" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzUUMC" role="1PaTwD">
              <property role="3oM_SC" value="config" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzUWJW" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5EMxBKzV0JH" role="3cqZAp">
          <node concept="1PaTwC" id="5EMxBKzV0JI" role="1aUNEU">
            <node concept="3oM_SD" id="5EMxBKzV0JJ" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzV25H" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzV28I" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzV2a0" role="1PaTwD">
              <property role="3oM_SC" value="than" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzV2j7" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzV2mV" role="1PaTwD">
              <property role="3oM_SC" value="deal" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzV2tw" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzV2zQ" role="1PaTwD">
              <property role="3oM_SC" value="LibraryInitializer" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzV34d" role="1PaTwD">
              <property role="3oM_SC" value="explicitly" />
            </node>
            <node concept="3oM_SD" id="5EMxBKzV3io" role="1PaTwD">
              <property role="3oM_SC" value="later?" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2R_g56bHtf_" role="3cqZAp">
          <node concept="3cpWsn" id="2R_g56bHtf$" role="3cpWs9">
            <property role="TrG5h" value="environment" />
            <node concept="3uibUv" id="2R_g56bHtfA" role="1tU5fm">
              <ref role="3uigEE" to="cky9:6rx4kZDk5Br" resolve="IdeaEnvironment" />
            </node>
            <node concept="2ShNRf" id="2R_g56bHxiG" role="33vP2m">
              <node concept="1pGfFk" id="5tXD4tz0Vxm" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="cky9:4OPNMy2crcG" resolve="IdeaEnvironment" />
                <node concept="37vLTw" id="5gsHVK$KXKW" role="37wK5m">
                  <ref role="3cqZAo" node="5gsHVK$KXKT" resolve="config" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2R_g56bHtfD" role="3cqZAp">
          <node concept="2OqwBi" id="2R_g56bHwZe" role="3clFbG">
            <node concept="37vLTw" id="2R_g56bHwZd" role="2Oq$k0">
              <ref role="3cqZAo" node="2R_g56bHtf$" resolve="environment" />
            </node>
            <node concept="liA8E" id="2R_g56bHwZf" role="2OqNvi">
              <ref role="37wK5l" to="cky9:3eUNqOk7mHv" resolve="init" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2R_g56bHtfF" role="3cqZAp">
          <node concept="37vLTw" id="2R_g56bHtfG" role="3cqZAk">
            <ref role="3cqZAo" node="2R_g56bHtf$" resolve="environment" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4MVYzzgu$Rm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7MSVDs2AcYe" role="jymVt" />
    <node concept="3clFb_" id="7MSVDs2$zQq" role="jymVt">
      <property role="TrG5h" value="work" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="7MSVDs2$zQr" role="1B3o_S" />
      <node concept="3cqZAl" id="7MSVDs2$zQs" role="3clF45" />
      <node concept="3clFbS" id="7MSVDs2$zQu" role="3clF47">
        <node concept="3cpWs8" id="60NJ4O1fN19" role="3cqZAp">
          <node concept="3cpWsn" id="60NJ4O1fN1a" role="3cpWs9">
            <property role="TrG5h" value="object" />
            <node concept="3uibUv" id="60NJ4O1fN17" role="1tU5fm">
              <ref role="3uigEE" to="i5cy:~AtomicReference" resolve="AtomicReference" />
              <node concept="3uibUv" id="60NJ4O1fOx9" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="2ShNRf" id="60NJ4O1fSrq" role="33vP2m">
              <node concept="1pGfFk" id="60NJ4O1fSqw" role="2ShVmc">
                <ref role="37wK5l" to="i5cy:~AtomicReference.&lt;init&gt;()" resolve="AtomicReference" />
                <node concept="3uibUv" id="60NJ4O1fSqx" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="60NJ4O1f9zg" role="3cqZAp">
          <node concept="3cpWsn" id="60NJ4O1f9zh" role="3cpWs9">
            <property role="TrG5h" value="method" />
            <node concept="3uibUv" id="60NJ4O1f8oQ" role="1tU5fm">
              <ref role="3uigEE" to="i5cy:~AtomicReference" resolve="AtomicReference" />
              <node concept="3uibUv" id="60NJ4O1fn63" role="11_B2D">
                <ref role="3uigEE" to="t6h5:~Method" resolve="Method" />
              </node>
            </node>
            <node concept="2ShNRf" id="60NJ4O1fppg" role="33vP2m">
              <node concept="1pGfFk" id="60NJ4O1fpom" role="2ShVmc">
                <ref role="37wK5l" to="i5cy:~AtomicReference.&lt;init&gt;()" resolve="AtomicReference" />
                <node concept="3uibUv" id="60NJ4O1fpon" role="1pMfVU">
                  <ref role="3uigEE" to="t6h5:~Method" resolve="Method" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5tXD4tz0h7X" role="3cqZAp" />
        <node concept="3cpWs8" id="5tXD4tz0_3N" role="3cqZAp">
          <node concept="3cpWsn" id="5tXD4tz0_3O" role="3cpWs9">
            <property role="TrG5h" value="libInitializer" />
            <node concept="3uibUv" id="5tXD4tz0z1$" role="1tU5fm">
              <ref role="3uigEE" to="32g5:~LibraryInitializer" resolve="LibraryInitializer" />
            </node>
            <node concept="2OqwBi" id="5tXD4tz0_3P" role="33vP2m">
              <node concept="1rXfSq" id="5tXD4tz28Aq" role="2Oq$k0">
                <ref role="37wK5l" to="jo3e:51g5y1cQ0$5" resolve="getPlatform" />
              </node>
              <node concept="liA8E" id="5tXD4tz0_3T" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="5tXD4tz0_3U" role="37wK5m">
                  <ref role="3VsUkX" to="32g5:~LibraryInitializer" resolve="LibraryInitializer" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5tXD4tyX7pr" role="3cqZAp">
          <node concept="3cpWsn" id="5tXD4tyX7ps" role="3cpWs9">
            <property role="TrG5h" value="fs" />
            <node concept="3uibUv" id="5tXD4tyX4K6" role="1tU5fm">
              <ref role="3uigEE" to="w827:~FileSystem" resolve="FileSystem" />
            </node>
            <node concept="2OqwBi" id="5tXD4tyX7pt" role="33vP2m">
              <node concept="2OqwBi" id="5tXD4tyX7pu" role="2Oq$k0">
                <node concept="1rXfSq" id="5tXD4tyX7pv" role="2Oq$k0">
                  <ref role="37wK5l" to="jo3e:51g5y1cQ0$5" resolve="getPlatform" />
                </node>
                <node concept="liA8E" id="5tXD4tyX7pw" role="2OqNvi">
                  <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                  <node concept="3VsKOn" id="5tXD4tyX7px" role="37wK5m">
                    <ref role="3VsUkX" to="3ju5:~VFSManager" resolve="VFSManager" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5tXD4tyX7py" role="2OqNvi">
                <ref role="37wK5l" to="3ju5:~VFSManager.getUmbrellaFileSystemJavaIO()" resolve="getUmbrellaFileSystemJavaIO" />
              </node>
            </node>
          </node>
        </node>
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
        <node concept="3cpWs8" id="7LkutxgThrq" role="3cqZAp">
          <node concept="3cpWsn" id="7LkutxgThrr" role="3cpWs9">
            <property role="TrG5h" value="mm" />
            <node concept="3uibUv" id="7LkutxgThrs" role="1tU5fm">
              <ref role="3uigEE" to="32g5:~ModulesMiner" resolve="ModulesMiner" />
            </node>
            <node concept="2ShNRf" id="7LkutxgTh_b" role="33vP2m">
              <node concept="1pGfFk" id="7LkutxgThU4" role="2ShVmc">
                <ref role="37wK5l" to="32g5:~ModulesMiner.&lt;init&gt;(jetbrains.mps.components.ComponentHost)" resolve="ModulesMiner" />
                <node concept="1rXfSq" id="5tXD4tz2jeY" role="37wK5m">
                  <ref role="37wK5l" to="jo3e:51g5y1cQ0$5" resolve="getPlatform" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5tXD4tz1dtr" role="3cqZAp">
          <node concept="1PaTwC" id="5tXD4tz1dts" role="1aUNEU">
            <node concept="3oM_SD" id="5tXD4tz1dtt" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="5tXD4tz1gmd" role="1PaTwD">
              <property role="3oM_SC" value="wonder" />
            </node>
            <node concept="3oM_SD" id="5tXD4tz1gvl" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="5tXD4tz1hhH" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="5tXD4tz1i1z" role="1PaTwD">
              <property role="3oM_SC" value="still" />
            </node>
            <node concept="3oM_SD" id="5tXD4tz1iME" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="5tXD4tz1iT0" role="1PaTwD">
              <property role="3oM_SC" value="VfsRootAccess.allowRootAccess" />
            </node>
            <node concept="3oM_SD" id="5tXD4tz1rg1" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="5tXD4tz1sFG" role="1PaTwD">
              <property role="3oM_SC" value="https://youtrack.jetbrains.com/issue/MPS-24778" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5tXD4tz1xda" role="3cqZAp">
          <node concept="1PaTwC" id="5tXD4tz1xdb" role="1aUNEU">
            <node concept="3oM_SD" id="5tXD4tz1xdc" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="5tXD4tz1$7d" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="5tXD4tz1_tN" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="5tXD4tz1Ac9" role="1PaTwD">
              <property role="3oM_SC" value="java.io-backed" />
            </node>
            <node concept="3oM_SD" id="5tXD4tz1D7s" role="1PaTwD">
              <property role="3oM_SC" value="IFile" />
            </node>
            <node concept="3oM_SD" id="5tXD4tz1DBE" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5tXD4tz1DGY" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="5tXD4tz1DM3" role="1PaTwD">
              <property role="3oM_SC" value="IDEA's" />
            </node>
            <node concept="3oM_SD" id="5tXD4tz1Emj" role="1PaTwD">
              <property role="3oM_SC" value="VirtualFiles" />
            </node>
            <node concept="3oM_SD" id="5tXD4tz1G1Y" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5tXD4tz1G5M" role="1PaTwD">
              <property role="3oM_SC" value="access" />
            </node>
            <node concept="3oM_SD" id="5tXD4tz1Hb6" role="1PaTwD">
              <property role="3oM_SC" value="these" />
            </node>
            <node concept="3oM_SD" id="5tXD4tz1I_H" role="1PaTwD">
              <property role="3oM_SC" value="modules" />
            </node>
            <node concept="3oM_SD" id="5tXD4tz1K2B" role="1PaTwD">
              <property role="3oM_SC" value="now" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5tXD4tyYDV1" role="3cqZAp">
          <node concept="3clFbS" id="5tXD4tyYDV4" role="2LFqv$">
            <node concept="3cpWs8" id="5tXD4tz2pwK" role="3cqZAp">
              <node concept="3cpWsn" id="5tXD4tz2pwL" role="3cpWs9">
                <property role="TrG5h" value="ff" />
                <node concept="3uibUv" id="5tXD4tz2nnj" role="1tU5fm">
                  <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                </node>
                <node concept="2OqwBi" id="5tXD4tz2pwM" role="33vP2m">
                  <node concept="37vLTw" id="5tXD4tz2pwN" role="2Oq$k0">
                    <ref role="3cqZAo" node="5tXD4tyX7ps" resolve="fs" />
                  </node>
                  <node concept="liA8E" id="5tXD4tz2pwO" role="2OqNvi">
                    <ref role="37wK5l" to="w827:~FileSystem.getFile(java.io.File)" resolve="getFile" />
                    <node concept="37vLTw" id="5tXD4tz2pwP" role="37wK5m">
                      <ref role="3cqZAo" node="5tXD4tyYDV5" resolve="testModule" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5tXD4tyYLAB" role="3cqZAp">
              <node concept="2OqwBi" id="5tXD4tyYP4R" role="3clFbG">
                <node concept="37vLTw" id="5tXD4tyYLAA" role="2Oq$k0">
                  <ref role="3cqZAo" node="1ROuiHYDbO" resolve="paths" />
                </node>
                <node concept="liA8E" id="5tXD4tyYSLb" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="2ShNRf" id="5tXD4tyYVNz" role="37wK5m">
                    <node concept="1pGfFk" id="5tXD4tyYZIN" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" to="je6q:~LibDescriptor.&lt;init&gt;(jetbrains.mps.vfs.IFile)" resolve="LibDescriptor" />
                      <node concept="37vLTw" id="5tXD4tz2pwQ" role="37wK5m">
                        <ref role="3cqZAo" node="5tXD4tz2pwL" resolve="ff" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5tXD4tz2ALO" role="3cqZAp">
              <node concept="2OqwBi" id="5tXD4tz2C4T" role="3clFbG">
                <node concept="37vLTw" id="5tXD4tz2ALM" role="2Oq$k0">
                  <ref role="3cqZAo" node="7LkutxgThrr" resolve="mm" />
                </node>
                <node concept="liA8E" id="5tXD4tz2EDg" role="2OqNvi">
                  <ref role="37wK5l" to="32g5:~ModulesMiner.collectModules(jetbrains.mps.vfs.IFile)" resolve="collectModules" />
                  <node concept="37vLTw" id="5tXD4tz2HBO" role="37wK5m">
                    <ref role="3cqZAo" node="5tXD4tz2pwL" resolve="ff" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5tXD4tyYDV5" role="1Duv9x">
            <property role="TrG5h" value="testModule" />
            <node concept="3uibUv" id="5tXD4tyYDV9" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
          </node>
          <node concept="2OqwBi" id="5tXD4tyYDVa" role="1DdaDG">
            <node concept="37vLTw" id="5tXD4tyYDVb" role="2Oq$k0">
              <ref role="3cqZAo" to="jo3e:KL8Aqlj5lG" resolve="myWhatToDo" />
            </node>
            <node concept="liA8E" id="5tXD4tyYDVc" role="2OqNvi">
              <ref role="37wK5l" to="asz6:KL8Aql8esM" resolve="getModules" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5tXD4tyWBjD" role="3cqZAp">
          <node concept="2OqwBi" id="5tXD4tyWE1$" role="3clFbG">
            <node concept="37vLTw" id="5tXD4tyWBjB" role="2Oq$k0">
              <ref role="3cqZAo" node="5tXD4tz0_3O" resolve="libInitializer" />
            </node>
            <node concept="liA8E" id="5tXD4tyWG7W" role="2OqNvi">
              <ref role="37wK5l" to="32g5:~LibraryInitializer.load(java.util.List)" resolve="load" />
              <node concept="2YIFZM" id="5tXD4tyWL4e" role="37wK5m">
                <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                <node concept="2YIFZM" id="5tXD4tyWUzA" role="37wK5m">
                  <ref role="37wK5l" to="v9gs:3eUNqOk8DM1" resolve="fromSet" />
                  <ref role="1Pybhc" to="v9gs:57xhZj4tkXA" resolve="SetLibraryContributor" />
                  <node concept="Xl_RD" id="5tXD4tyZvga" role="37wK5m">
                    <property role="Xl_RC" value="TestModules" />
                  </node>
                  <node concept="37vLTw" id="5tXD4tyZpNy" role="37wK5m">
                    <ref role="3cqZAo" node="1ROuiHYDbO" resolve="paths" />
                  </node>
                </node>
                <node concept="3uibUv" id="5tXD4tyZLew" role="3PaCim">
                  <ref role="3uigEE" to="je6q:~LibraryContributor" resolve="LibraryContributor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5tXD4tz0MIO" role="3cqZAp" />
        <node concept="3cpWs8" id="5tXD4tz4yBm" role="3cqZAp">
          <node concept="3cpWsn" id="5tXD4tz4yBn" role="3cpWs9">
            <property role="TrG5h" value="pf" />
            <node concept="3uibUv" id="5tXD4tz4wPs" role="1tU5fm">
              <ref role="3uigEE" to="pa15:~PersistenceRegistry" resolve="PersistenceRegistry" />
            </node>
            <node concept="2OqwBi" id="5tXD4tz4yBo" role="33vP2m">
              <node concept="1rXfSq" id="5tXD4tz4yBp" role="2Oq$k0">
                <ref role="37wK5l" to="jo3e:51g5y1cQ0$5" resolve="getPlatform" />
              </node>
              <node concept="liA8E" id="5tXD4tz4yBq" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="5tXD4tz4yBr" role="37wK5m">
                  <ref role="3VsUkX" to="pa15:~PersistenceRegistry" resolve="PersistenceRegistry" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5tXD4tz3xlL" role="3cqZAp">
          <node concept="3cpWsn" id="5tXD4tz3xlM" role="3cpWs9">
            <property role="TrG5h" value="testData" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="5tXD4tz3xlN" role="1tU5fm">
              <ref role="3uigEE" to="asz6:5tXD4tyLjpu" resolve="TestData" />
            </node>
            <node concept="2ShNRf" id="5tXD4tz3In_" role="33vP2m">
              <node concept="HV5vD" id="5tXD4tz3MkE" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="HV5vE" to="asz6:5tXD4tyLjpu" resolve="TestData" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5tXD4tz3di6" role="3cqZAp">
          <node concept="3clFbS" id="5tXD4tz3di9" role="2LFqv$">
            <node concept="3SKdUt" id="5tXD4tz52N5" role="3cqZAp">
              <node concept="1PaTwC" id="5tXD4tz52N6" role="1aUNEU">
                <node concept="3oM_SD" id="5tXD4tz55VP" role="1PaTwD">
                  <property role="3oM_SC" value="XXX" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz56pK" role="1PaTwD">
                  <property role="3oM_SC" value="quite" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz56xB" role="1PaTwD">
                  <property role="3oM_SC" value="odd" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz57Te" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5cSj" role="1PaTwD">
                  <property role="3oM_SC" value="go" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5d_o" role="1PaTwD">
                  <property role="3oM_SC" value="back" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5ele" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5f3$" role="1PaTwD">
                  <property role="3oM_SC" value="forth" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5gtW" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5hdM" role="1PaTwD">
                  <property role="3oM_SC" value="PersistenceFacade" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5lvI" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz57Xh" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz58Em" role="1PaTwD">
                  <property role="3oM_SC" value="got" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5aN_" role="1PaTwD">
                  <property role="3oM_SC" value="ModuleDescriptor" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5mah" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5mU7" role="1PaTwD">
                  <property role="3oM_SC" value="pure" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5n0t" role="1PaTwD">
                  <property role="3oM_SC" value="persistent" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5nRT" role="1PaTwD">
                  <property role="3oM_SC" value="values," />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5pn9" role="1PaTwD">
                  <property role="3oM_SC" value="would" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5puZ" role="1PaTwD">
                  <property role="3oM_SC" value="be" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5pyN" role="1PaTwD">
                  <property role="3oM_SC" value="great" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5pED" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5pIt" role="1PaTwD">
                  <property role="3oM_SC" value="use" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5qsN" role="1PaTwD">
                  <property role="3oM_SC" value="them" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5rPU" role="1PaTwD">
                  <property role="3oM_SC" value="directly" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="5tXD4tz5wNG" role="3cqZAp">
              <node concept="1PaTwC" id="5tXD4tz5wNH" role="1aUNEU">
                <node concept="3oM_SD" id="5tXD4tz5wNI" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5wP2" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5zxo" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5zyE" role="1PaTwD">
                  <property role="3oM_SC" value="otoh," />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5$jL" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5_0Q" role="1PaTwD">
                  <property role="3oM_SC" value="keep" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5_KG" role="1PaTwD">
                  <property role="3oM_SC" value="module" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5Az4" role="1PaTwD">
                  <property role="3oM_SC" value="id" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5AAS" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5AFX" role="1PaTwD">
                  <property role="3oM_SC" value="namespace" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5By8" role="1PaTwD">
                  <property role="3oM_SC" value="separately," />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5CFu" role="1PaTwD">
                  <property role="3oM_SC" value="no" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5DoM" role="1PaTwD">
                  <property role="3oM_SC" value="chance" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5Eba" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5ESu" role="1PaTwD">
                  <property role="3oM_SC" value="get" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5FB3" role="1PaTwD">
                  <property role="3oM_SC" value="serialized" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5Jnf" role="1PaTwD">
                  <property role="3oM_SC" value="ModuleReference" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5K1M" role="1PaTwD">
                  <property role="3oM_SC" value="right" />
                </node>
                <node concept="3oM_SD" id="5tXD4tz5Ow$" role="1PaTwD">
                  <property role="3oM_SC" value="away." />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5tXD4tz9Zzw" role="3cqZAp">
              <node concept="1rXfSq" id="5tXD4tz9Zzu" role="3clFbG">
                <ref role="37wK5l" to="asz6:7MSVDs2AdYS" resolve="info" />
                <node concept="2OqwBi" id="5tXD4tzaPss" role="37wK5m">
                  <node concept="Xl_RD" id="5tXD4tza2ZY" role="2Oq$k0">
                    <property role="Xl_RC" value="Registered module %s for test auto-discovery" />
                  </node>
                  <node concept="2cAKMz" id="5tXD4tzaSo3" role="2OqNvi">
                    <node concept="2OqwBi" id="5tXD4tzb77o" role="2cAKU6">
                      <node concept="2OqwBi" id="5tXD4tzb0Hy" role="2Oq$k0">
                        <node concept="37vLTw" id="5tXD4tzaZ8k" role="2Oq$k0">
                          <ref role="3cqZAo" node="5tXD4tz3dia" resolve="mh" />
                        </node>
                        <node concept="liA8E" id="5tXD4tzb3_u" role="2OqNvi">
                          <ref role="37wK5l" to="32g5:~ModulesMiner$ModuleHandle.getDescriptor()" resolve="getDescriptor" />
                        </node>
                      </node>
                      <node concept="liA8E" id="5tXD4tzbayN" role="2OqNvi">
                        <ref role="37wK5l" to="w0gx:~ModuleDescriptor.getNamespace()" resolve="getNamespace" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5tXD4tz5TJG" role="3cqZAp">
              <node concept="2OqwBi" id="5tXD4tz63hF" role="3clFbG">
                <node concept="2OqwBi" id="5tXD4tz5WbN" role="2Oq$k0">
                  <node concept="37vLTw" id="5tXD4tz5TJE" role="2Oq$k0">
                    <ref role="3cqZAo" node="5tXD4tz3xlM" resolve="testData" />
                  </node>
                  <node concept="2OwXpG" id="5tXD4tz5ZBI" role="2OqNvi">
                    <ref role="2Oxat5" to="asz6:5tXD4tyLDFE" resolve="testModules" />
                  </node>
                </node>
                <node concept="liA8E" id="5tXD4tz67mF" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="2ShNRf" id="5tXD4tz6aJ0" role="37wK5m">
                    <node concept="1pGfFk" id="5tXD4tz6fgo" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" to="asz6:5tXD4tyPJx6" resolve="TestData.ModuleRecord" />
                      <node concept="2OqwBi" id="5tXD4tz9NwM" role="37wK5m">
                        <node concept="37vLTw" id="5tXD4tz9NwN" role="2Oq$k0">
                          <ref role="3cqZAo" node="5tXD4tz4yBn" resolve="pf" />
                        </node>
                        <node concept="liA8E" id="5tXD4tz9NwO" role="2OqNvi">
                          <ref role="37wK5l" to="pa15:~PersistenceRegistry.asString(org.jetbrains.mps.openapi.module.SModuleReference)" resolve="asString" />
                          <node concept="2OqwBi" id="5tXD4tz9NwP" role="37wK5m">
                            <node concept="2OqwBi" id="5tXD4tz9NwQ" role="2Oq$k0">
                              <node concept="37vLTw" id="5tXD4tz9NwR" role="2Oq$k0">
                                <ref role="3cqZAo" node="5tXD4tz3dia" resolve="mh" />
                              </node>
                              <node concept="liA8E" id="5tXD4tz9NwS" role="2OqNvi">
                                <ref role="37wK5l" to="32g5:~ModulesMiner$ModuleHandle.getDescriptor()" resolve="getDescriptor" />
                              </node>
                            </node>
                            <node concept="liA8E" id="5tXD4tz9NwT" role="2OqNvi">
                              <ref role="37wK5l" to="w0gx:~ModuleDescriptor.getModuleReference()" resolve="getModuleReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbT" id="5tXD4tz6pEW" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5tXD4tz3dia" role="1Duv9x">
            <property role="TrG5h" value="mh" />
            <node concept="3uibUv" id="5tXD4tz3die" role="1tU5fm">
              <ref role="3uigEE" to="32g5:~ModulesMiner$ModuleHandle" resolve="ModulesMiner.ModuleHandle" />
            </node>
          </node>
          <node concept="2OqwBi" id="5tXD4tz3dif" role="1DdaDG">
            <node concept="37vLTw" id="5tXD4tz3dig" role="2Oq$k0">
              <ref role="3cqZAo" node="7LkutxgThrr" resolve="mm" />
            </node>
            <node concept="liA8E" id="5tXD4tz3dih" role="2OqNvi">
              <ref role="37wK5l" to="32g5:~ModulesMiner.getCollectedModules()" resolve="getCollectedModules" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="60NJ4O1fUG5" role="3cqZAp" />
        <node concept="3cpWs8" id="7MSVDs2BRqh" role="3cqZAp">
          <node concept="3cpWsn" id="7MSVDs2BRqi" role="3cpWs9">
            <property role="TrG5h" value="code" />
            <node concept="3uibUv" id="7MSVDs2BRhK" role="1tU5fm">
              <ref role="3uigEE" to="52vl:7RjIo8RuyI" resolve="ModuleClassCode" />
            </node>
            <node concept="2ShNRf" id="7MSVDs2BRqj" role="33vP2m">
              <node concept="1pGfFk" id="7MSVDs2BRqk" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="52vl:7RjIo8Rvfs" resolve="ModuleClassCode" />
                <node concept="37vLTw" id="7MSVDs2ENon" role="37wK5m">
                  <ref role="3cqZAo" node="7MSVDs2ENo6" resolve="LAUNCHER_SOLUTION" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7MSVDs2BYe8" role="3cqZAp">
          <node concept="3clFbS" id="7MSVDs2BYe9" role="1zxBo7">
            <node concept="3clFbF" id="7MSVDs2BOVl" role="3cqZAp">
              <node concept="2OqwBi" id="7MSVDs2BRIX" role="3clFbG">
                <node concept="37vLTw" id="7MSVDs2BRqm" role="2Oq$k0">
                  <ref role="3cqZAo" node="7MSVDs2BRqi" resolve="code" />
                </node>
                <node concept="liA8E" id="7MSVDs2BRYW" role="2OqNvi">
                  <ref role="37wK5l" to="52vl:7RjIo8REDK" resolve="load" />
                  <node concept="2OqwBi" id="7MSVDs2BSBJ" role="37wK5m">
                    <node concept="37vLTw" id="7MSVDs2BSnq" role="2Oq$k0">
                      <ref role="3cqZAo" to="jo3e:KL8Aqlj5lM" resolve="myEnvironment" />
                    </node>
                    <node concept="liA8E" id="7MSVDs2BSTl" role="2OqNvi">
                      <ref role="37wK5l" to="79ha:8Pnvxgloc_" resolve="getPlatform" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="7MSVDs2EIef" role="37wK5m">
                    <ref role="3cqZAo" node="7MSVDs2EIdY" resolve="LAUNCHER_CLASS" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7MSVDs2Hjh3" role="3cqZAp">
              <node concept="3cpWsn" id="7MSVDs2Hjh4" role="3cpWs9">
                <property role="TrG5h" value="ctor" />
                <node concept="3uibUv" id="7MSVDs2Hih2" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
                  <node concept="3uibUv" id="7MSVDs2Hih9" role="11_B2D">
                    <ref role="3uigEE" to="t6h5:~Constructor" resolve="Constructor" />
                    <node concept="3qTvmN" id="7MSVDs2Hiha" role="11_B2D" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7MSVDs2Hjh5" role="33vP2m">
                  <node concept="37vLTw" id="7MSVDs2Hjh6" role="2Oq$k0">
                    <ref role="3cqZAo" node="7MSVDs2BRqi" resolve="code" />
                  </node>
                  <node concept="liA8E" id="7MSVDs2Hjh7" role="2OqNvi">
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
                    <ref role="3cqZAo" node="7MSVDs2BRqi" resolve="code" />
                  </node>
                  <node concept="liA8E" id="7MSVDs2HOB$" role="2OqNvi">
                    <ref role="37wK5l" to="52vl:3w1$bnwD3B3" resolve="instanceMethod" />
                    <node concept="37vLTw" id="7MSVDs2HOB_" role="37wK5m">
                      <ref role="3cqZAo" node="7MSVDs2F5xZ" resolve="LAUNCHER_METHOD" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="60NJ4O1fcMw" role="3cqZAp">
              <node concept="2OqwBi" id="60NJ4O1fs6K" role="3clFbG">
                <node concept="37vLTw" id="60NJ4O1fcMA" role="2Oq$k0">
                  <ref role="3cqZAo" node="60NJ4O1f9zh" resolve="method" />
                </node>
                <node concept="liA8E" id="60NJ4O1ft3a" role="2OqNvi">
                  <ref role="37wK5l" to="i5cy:~AtomicReference.set(java.lang.Object)" resolve="set" />
                  <node concept="2OqwBi" id="60NJ4O1fw$D" role="37wK5m">
                    <node concept="37vLTw" id="60NJ4O1fw$E" role="2Oq$k0">
                      <ref role="3cqZAo" node="7MSVDs2HOBx" resolve="meth" />
                    </node>
                    <node concept="liA8E" id="60NJ4O1fw$F" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7MSVDs2HLVM" role="3cqZAp" />
            <node concept="3clFbJ" id="7MSVDs2Hobf" role="3cqZAp">
              <node concept="3clFbS" id="7MSVDs2Hobh" role="3clFbx">
                <node concept="3clFbF" id="60NJ4O1fZuZ" role="3cqZAp">
                  <node concept="2OqwBi" id="60NJ4O1g0aN" role="3clFbG">
                    <node concept="37vLTw" id="60NJ4O1fZuX" role="2Oq$k0">
                      <ref role="3cqZAo" node="60NJ4O1fN1a" resolve="object" />
                    </node>
                    <node concept="liA8E" id="60NJ4O1g0Ot" role="2OqNvi">
                      <ref role="37wK5l" to="i5cy:~AtomicReference.set(java.lang.Object)" resolve="set" />
                      <node concept="2OqwBi" id="60NJ4O1hbUd" role="37wK5m">
                        <node concept="2OqwBi" id="60NJ4O1hbUe" role="2Oq$k0">
                          <node concept="37vLTw" id="60NJ4O1hbUf" role="2Oq$k0">
                            <ref role="3cqZAo" node="7MSVDs2Hjh4" resolve="ctor" />
                          </node>
                          <node concept="liA8E" id="60NJ4O1hbUg" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                          </node>
                        </node>
                        <node concept="liA8E" id="60NJ4O1hbUh" role="2OqNvi">
                          <ref role="37wK5l" to="t6h5:~Constructor.newInstance(java.lang.Object...)" resolve="newInstance" />
                          <node concept="37vLTw" id="60NJ4O1hbUj" role="37wK5m">
                            <ref role="3cqZAo" to="jo3e:KL8Aqlj5lM" resolve="myEnvironment" />
                          </node>
                          <node concept="37vLTw" id="5tXD4tz6UVk" role="37wK5m">
                            <ref role="3cqZAo" node="5tXD4tz3xlM" resolve="testData" />
                          </node>
                          <node concept="Xjq3P" id="60NJ4O1hbUk" role="37wK5m" />
                          <node concept="1rXfSq" id="5EMxBKzVEyK" role="37wK5m">
                            <ref role="37wK5l" node="5EMxBKzSLtu" resolve="getTestProjectDir" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="7MSVDs2IgUC" role="3cqZAp" />
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
                <node concept="2OqwBi" id="7MSVDs2Hq71" role="3uHU7B">
                  <node concept="37vLTw" id="7MSVDs2HpsS" role="2Oq$k0">
                    <ref role="3cqZAo" node="7MSVDs2Hjh4" resolve="ctor" />
                  </node>
                  <node concept="liA8E" id="7MSVDs2HrR3" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Optional.isPresent()" resolve="isPresent" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="7MSVDs2IfpQ" role="9aQIa">
                <node concept="3clFbS" id="7MSVDs2IfpR" role="9aQI4">
                  <node concept="3clFbJ" id="7MSVDs310EC" role="3cqZAp">
                    <node concept="3clFbS" id="7MSVDs310EE" role="3clFbx">
                      <node concept="3clFbF" id="7MSVDs2Iimy" role="3cqZAp">
                        <node concept="1rXfSq" id="7MSVDs2Iimz" role="3clFbG">
                          <ref role="37wK5l" node="5tXD4tyHD8_" resolve="fatal" />
                          <node concept="3cpWs3" id="7MSVDs2Iim$" role="37wK5m">
                            <node concept="37vLTw" id="7MSVDs2IimT" role="3uHU7w">
                              <ref role="3cqZAo" node="7MSVDs2EIdY" resolve="LAUNCHER_CLASS" />
                            </node>
                            <node concept="Xl_RD" id="7MSVDs31iPE" role="3uHU7B">
                              <property role="Xl_RC" value="not found constructor in " />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="5EMxBKzVp12" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7MSVDs31dQ1" role="3clFbw">
                      <node concept="37vLTw" id="7MSVDs31dQ2" role="2Oq$k0">
                        <ref role="3cqZAo" node="7MSVDs2Hjh4" resolve="ctor" />
                      </node>
                      <node concept="liA8E" id="7MSVDs31dQ3" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Optional.isEmpty()" resolve="isEmpty" />
                      </node>
                    </node>
                    <node concept="9aQIb" id="7MSVDs317bh" role="9aQIa">
                      <node concept="3clFbS" id="7MSVDs317bi" role="9aQI4">
                        <node concept="3clFbF" id="7MSVDs318G9" role="3cqZAp">
                          <node concept="1rXfSq" id="7MSVDs318Ga" role="3clFbG">
                            <ref role="37wK5l" node="5tXD4tyHD8_" resolve="fatal" />
                            <node concept="2OqwBi" id="5EMxBKzJrVi" role="37wK5m">
                              <node concept="Xl_RD" id="5EMxBKzJrVj" role="2Oq$k0">
                                <property role="Xl_RC" value="not found method %s in %s" />
                              </node>
                              <node concept="2cAKMz" id="5EMxBKzJrVk" role="2OqNvi">
                                <node concept="37vLTw" id="7MSVDs318Gg" role="2cAKU6">
                                  <ref role="3cqZAo" node="7MSVDs2F5xZ" resolve="LAUNCHER_METHOD" />
                                </node>
                                <node concept="37vLTw" id="7MSVDs318Gc" role="2cAKU6">
                                  <ref role="3cqZAo" node="7MSVDs2EIdY" resolve="LAUNCHER_CLASS" />
                                </node>
                              </node>
                            </node>
                            <node concept="10Nm6u" id="5EMxBKzVgNg" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7MSVDs2F0cl" role="3cqZAp" />
          </node>
          <node concept="3uVAMA" id="7MSVDs2BYeb" role="1zxBo5">
            <node concept="3clFbS" id="7MSVDs2BYec" role="1zc67A">
              <node concept="3clFbF" id="7MSVDs2EEn3" role="3cqZAp">
                <node concept="1rXfSq" id="7MSVDs2EEn2" role="3clFbG">
                  <ref role="37wK5l" node="5tXD4tyHD8_" resolve="fatal" />
                  <node concept="2OqwBi" id="5EMxBKzJnM5" role="37wK5m">
                    <node concept="Xl_RD" id="5EMxBKzJnM6" role="2Oq$k0">
                      <property role="Xl_RC" value="not found class %s among classes of %s" />
                    </node>
                    <node concept="2cAKMz" id="5EMxBKzJnM7" role="2OqNvi">
                      <node concept="37vLTw" id="7MSVDs2EQOm" role="2cAKU6">
                        <ref role="3cqZAo" node="7MSVDs2EIdY" resolve="LAUNCHER_CLASS" />
                      </node>
                      <node concept="37vLTw" id="7MSVDs2EWR3" role="2cAKU6">
                        <ref role="3cqZAo" node="7MSVDs2ENo6" resolve="LAUNCHER_SOLUTION" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="7MSVDs2EYFF" role="37wK5m">
                    <ref role="3cqZAo" node="7MSVDs2BYed" resolve="e" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="7MSVDs2BYed" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="7MSVDs2BYee" role="1tU5fm">
                <node concept="3uibUv" id="7MSVDs2BYea" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~ClassNotFoundException" resolve="ClassNotFoundException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="7MSVDs2GLLY" role="1zxBo5">
            <node concept="XOnhg" id="7MSVDs2GLLZ" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="7MSVDs2GLM0" role="1tU5fm">
                <node concept="3uibUv" id="7MSVDs2GP0T" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~InstantiationException" resolve="InstantiationException" />
                </node>
                <node concept="3uibUv" id="7MSVDs2HBm9" role="nSUat">
                  <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
                </node>
                <node concept="3uibUv" id="7MSVDs2GS6g" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~IllegalAccessException" resolve="IllegalAccessException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7MSVDs2GLM1" role="1zc67A">
              <node concept="3clFbF" id="7MSVDs2GVKC" role="3cqZAp">
                <node concept="1rXfSq" id="7MSVDs2GVKB" role="3clFbG">
                  <ref role="37wK5l" node="5tXD4tyHD8_" resolve="fatal" />
                  <node concept="Xl_RD" id="7MSVDs2GXvp" role="37wK5m">
                    <property role="Xl_RC" value="unexpected error " />
                  </node>
                  <node concept="37vLTw" id="7MSVDs2H3Qo" role="37wK5m">
                    <ref role="3cqZAo" node="7MSVDs2GLLZ" resolve="e" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="60NJ4O1fB$L" role="3cqZAp" />
        <node concept="3J1_TO" id="60NJ4O1gFGb" role="3cqZAp">
          <node concept="3uVAMA" id="60NJ4O1gGW7" role="1zxBo5">
            <node concept="XOnhg" id="60NJ4O1gGW8" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="60NJ4O1gI9m" role="1tU5fm">
                <node concept="3uibUv" id="60NJ4O1gI9o" role="nSUat">
                  <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
                </node>
                <node concept="3uibUv" id="60NJ4O1gI9p" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~IllegalAccessException" resolve="IllegalAccessException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="60NJ4O1gGWa" role="1zc67A">
              <node concept="3clFbF" id="60NJ4O1gZ2e" role="3cqZAp">
                <node concept="1rXfSq" id="60NJ4O1gZ2f" role="3clFbG">
                  <ref role="37wK5l" node="5tXD4tyHD8_" resolve="fatal" />
                  <node concept="Xl_RD" id="60NJ4O1gZ2g" role="37wK5m">
                    <property role="Xl_RC" value="unexpected error " />
                  </node>
                  <node concept="37vLTw" id="60NJ4O1gZ2h" role="37wK5m">
                    <ref role="3cqZAo" node="60NJ4O1gGW8" resolve="e" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="60NJ4O1gFGd" role="1zxBo7">
            <node concept="3clFbJ" id="60NJ4O1g7de" role="3cqZAp">
              <node concept="3clFbS" id="60NJ4O1g7dg" role="3clFbx">
                <node concept="3clFbJ" id="5EMxBKzK46t" role="3cqZAp">
                  <node concept="3clFbS" id="5EMxBKzK46v" role="3clFbx">
                    <node concept="3cpWs8" id="5EMxBKzLaLe" role="3cqZAp">
                      <node concept="3cpWsn" id="5EMxBKzLaLf" role="3cpWs9">
                        <property role="TrG5h" value="r" />
                        <node concept="3uibUv" id="5EMxBKzL8pM" role="1tU5fm">
                          <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
                          <node concept="3uibUv" id="5EMxBKzL8pP" role="11_B2D">
                            <ref role="3uigEE" to="t6h5:~Method" resolve="Method" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="5EMxBKzLaLg" role="33vP2m">
                          <node concept="37vLTw" id="5EMxBKzLaLh" role="2Oq$k0">
                            <ref role="3cqZAo" node="7MSVDs2BRqi" resolve="code" />
                          </node>
                          <node concept="liA8E" id="5EMxBKzLaLi" role="2OqNvi">
                            <ref role="37wK5l" to="52vl:3w1$bnwD3B3" resolve="instanceMethod" />
                            <node concept="Xl_RD" id="5EMxBKzLaLj" role="37wK5m">
                              <property role="Xl_RC" value="teamcityReport" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="5EMxBKzLlP3" role="3cqZAp">
                      <node concept="3clFbS" id="5EMxBKzLlP5" role="3clFbx">
                        <node concept="3clFbF" id="5EMxBKzM91v" role="3cqZAp">
                          <node concept="2OqwBi" id="5EMxBKzMeXA" role="3clFbG">
                            <node concept="2OqwBi" id="5EMxBKzMaLw" role="2Oq$k0">
                              <node concept="37vLTw" id="5EMxBKzM91t" role="2Oq$k0">
                                <ref role="3cqZAo" node="5EMxBKzLaLf" resolve="r" />
                              </node>
                              <node concept="liA8E" id="5EMxBKzMdFv" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                              </node>
                            </node>
                            <node concept="liA8E" id="5EMxBKzMi15" role="2OqNvi">
                              <ref role="37wK5l" to="t6h5:~Method.invoke(java.lang.Object,java.lang.Object...)" resolve="invoke" />
                              <node concept="2OqwBi" id="5EMxBKzMo0H" role="37wK5m">
                                <node concept="37vLTw" id="5EMxBKzMmcG" role="2Oq$k0">
                                  <ref role="3cqZAo" node="60NJ4O1fN1a" resolve="object" />
                                </node>
                                <node concept="liA8E" id="5EMxBKzMrbc" role="2OqNvi">
                                  <ref role="37wK5l" to="i5cy:~AtomicReference.get()" resolve="get" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="5EMxBKzLpHW" role="3clFbw">
                        <node concept="37vLTw" id="5EMxBKzLo$n" role="2Oq$k0">
                          <ref role="3cqZAo" node="5EMxBKzLaLf" resolve="r" />
                        </node>
                        <node concept="liA8E" id="5EMxBKzLsIc" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Optional.isPresent()" resolve="isPresent" />
                        </node>
                      </node>
                      <node concept="9aQIb" id="5EMxBKzLB7d" role="9aQIa">
                        <node concept="3clFbS" id="5EMxBKzLB7e" role="9aQI4">
                          <node concept="3clFbF" id="5EMxBKzLDXo" role="3cqZAp">
                            <node concept="1rXfSq" id="5EMxBKzLDXn" role="3clFbG">
                              <ref role="37wK5l" to="asz6:7MSVDs2AenN" resolve="warning" />
                              <node concept="Xl_RD" id="5EMxBKzLKIf" role="37wK5m">
                                <property role="Xl_RC" value="Can't request TeamCity reporting" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="KL8Aqll5hj" role="3clFbw">
                    <node concept="2OqwBi" id="KL8Aqll5hk" role="3uHU7B">
                      <node concept="37vLTw" id="2BHiRxeus6Y" role="2Oq$k0">
                        <ref role="3cqZAo" to="jo3e:KL8Aqlj5lG" resolve="myWhatToDo" />
                      </node>
                      <node concept="liA8E" id="KL8Aqll5hm" role="2OqNvi">
                        <ref role="37wK5l" to="asz6:KL8Aql8eBs" resolve="getProperty" />
                        <node concept="Xl_RD" id="KL8Aqll5hn" role="37wK5m">
                          <property role="Xl_RC" value="teamcity.version" />
                        </node>
                      </node>
                    </node>
                    <node concept="10Nm6u" id="KL8Aqll5ho" role="3uHU7w" />
                  </node>
                </node>
                <node concept="3cpWs8" id="5EMxBKzO$id" role="3cqZAp">
                  <node concept="3cpWsn" id="5EMxBKzO$ie" role="3cpWs9">
                    <property role="TrG5h" value="testReportsDir" />
                    <node concept="3uibUv" id="5EMxBKzOxSG" role="1tU5fm">
                      <ref role="3uigEE" to="guwi:~File" resolve="File" />
                    </node>
                    <node concept="1rXfSq" id="5EMxBKzO$if" role="33vP2m">
                      <ref role="37wK5l" node="5HBbAYqGVkX" resolve="getTestReportsDir" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5EMxBKzOE2I" role="3cqZAp">
                  <node concept="3clFbS" id="5EMxBKzOE2K" role="3clFbx">
                    <node concept="3cpWs8" id="5EMxBKzPx4B" role="3cqZAp">
                      <node concept="3cpWsn" id="5EMxBKzPx4C" role="3cpWs9">
                        <property role="TrG5h" value="cfgMethod" />
                        <node concept="3uibUv" id="5EMxBKzPx4D" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                        <node concept="3K4zz7" id="5EMxBKzPDOw" role="33vP2m">
                          <node concept="Xl_RD" id="5EMxBKzPIMU" role="3K4GZi">
                            <property role="Xl_RC" value="legacyXmlReport" />
                          </node>
                          <node concept="Xl_RD" id="5EMxBKzNqKV" role="3K4E3e">
                            <property role="Xl_RC" value="opentestReport" />
                          </node>
                          <node concept="2YIFZM" id="5EMxBKzN1Cs" role="3K4Cdx">
                            <ref role="37wK5l" to="wyt6:~Boolean.parseBoolean(java.lang.String)" resolve="parseBoolean" />
                            <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                            <node concept="2OqwBi" id="51DD0tdOmfd" role="37wK5m">
                              <node concept="37vLTw" id="51DD0tdOmfe" role="2Oq$k0">
                                <ref role="3cqZAo" to="jo3e:KL8Aqlj5lG" resolve="myWhatToDo" />
                              </node>
                              <node concept="liA8E" id="51DD0tdOmff" role="2OqNvi">
                                <ref role="37wK5l" to="asz6:KL8Aql8eBs" resolve="getProperty" />
                                <node concept="37vLTw" id="5EMxBKzQa4a" role="37wK5m">
                                  <ref role="3cqZAo" node="51DD0tdNVKK" resolve="TEST_REPORTS_OPENTEST" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="5EMxBKzNqKO" role="3cqZAp">
                      <node concept="3cpWsn" id="5EMxBKzNqKP" role="3cpWs9">
                        <property role="TrG5h" value="r" />
                        <node concept="3uibUv" id="5EMxBKzNqKQ" role="1tU5fm">
                          <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
                          <node concept="3uibUv" id="5EMxBKzNqKR" role="11_B2D">
                            <ref role="3uigEE" to="t6h5:~Method" resolve="Method" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="5EMxBKzNqKS" role="33vP2m">
                          <node concept="37vLTw" id="5EMxBKzNqKT" role="2Oq$k0">
                            <ref role="3cqZAo" node="7MSVDs2BRqi" resolve="code" />
                          </node>
                          <node concept="liA8E" id="5EMxBKzNqKU" role="2OqNvi">
                            <ref role="37wK5l" to="52vl:3w1$bnwD3B3" resolve="instanceMethod" />
                            <node concept="37vLTw" id="5EMxBKzPYAB" role="37wK5m">
                              <ref role="3cqZAo" node="5EMxBKzPx4C" resolve="cfgMethod" />
                            </node>
                            <node concept="3VsKOn" id="5EMxBKzNKqf" role="37wK5m">
                              <ref role="3VsUkX" to="guwi:~File" resolve="File" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="5EMxBKzNqKW" role="3cqZAp">
                      <node concept="3clFbS" id="5EMxBKzNqKX" role="3clFbx">
                        <node concept="3clFbF" id="5EMxBKzNqKY" role="3cqZAp">
                          <node concept="2OqwBi" id="5EMxBKzNqKZ" role="3clFbG">
                            <node concept="2OqwBi" id="5EMxBKzNqL0" role="2Oq$k0">
                              <node concept="37vLTw" id="5EMxBKzNqL1" role="2Oq$k0">
                                <ref role="3cqZAo" node="5EMxBKzNqKP" resolve="r" />
                              </node>
                              <node concept="liA8E" id="5EMxBKzNqL2" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                              </node>
                            </node>
                            <node concept="liA8E" id="5EMxBKzNqL3" role="2OqNvi">
                              <ref role="37wK5l" to="t6h5:~Method.invoke(java.lang.Object,java.lang.Object...)" resolve="invoke" />
                              <node concept="2OqwBi" id="5EMxBKzNqL4" role="37wK5m">
                                <node concept="37vLTw" id="5EMxBKzNqL5" role="2Oq$k0">
                                  <ref role="3cqZAo" node="60NJ4O1fN1a" resolve="object" />
                                </node>
                                <node concept="liA8E" id="5EMxBKzNqL6" role="2OqNvi">
                                  <ref role="37wK5l" to="i5cy:~AtomicReference.get()" resolve="get" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="5EMxBKzO$ig" role="37wK5m">
                                <ref role="3cqZAo" node="5EMxBKzO$ie" resolve="testReportsDir" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="5EMxBKzNqL7" role="3clFbw">
                        <node concept="37vLTw" id="5EMxBKzNqL8" role="2Oq$k0">
                          <ref role="3cqZAo" node="5EMxBKzNqKP" resolve="r" />
                        </node>
                        <node concept="liA8E" id="5EMxBKzNqL9" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Optional.isPresent()" resolve="isPresent" />
                        </node>
                      </node>
                      <node concept="9aQIb" id="5EMxBKzNqLa" role="9aQIa">
                        <node concept="3clFbS" id="5EMxBKzNqLb" role="9aQI4">
                          <node concept="3clFbF" id="5EMxBKzNqLc" role="3cqZAp">
                            <node concept="1rXfSq" id="5EMxBKzNqLd" role="3clFbG">
                              <ref role="37wK5l" to="asz6:7MSVDs2AenN" resolve="warning" />
                              <node concept="2OqwBi" id="5EMxBKzR7W1" role="37wK5m">
                                <node concept="Xl_RD" id="5EMxBKzNqLe" role="2Oq$k0">
                                  <property role="Xl_RC" value="Can't request test reporting to %s" />
                                </node>
                                <node concept="2cAKMz" id="5EMxBKzRbYt" role="2OqNvi">
                                  <node concept="37vLTw" id="5EMxBKzRgdy" role="2cAKU6">
                                    <ref role="3cqZAo" node="5EMxBKzO$ie" resolve="testReportsDir" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="5EMxBKzON7Y" role="3clFbw">
                    <node concept="10Nm6u" id="5EMxBKzORdc" role="3uHU7w" />
                    <node concept="37vLTw" id="5EMxBKzOJ09" role="3uHU7B">
                      <ref role="3cqZAo" node="5EMxBKzO$ie" resolve="testReportsDir" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="5EMxBKzMVad" role="3cqZAp" />
                <node concept="3cpWs8" id="7sAAQ3RSqo$" role="3cqZAp">
                  <node concept="3cpWsn" id="7sAAQ3RSqo_" role="3cpWs9">
                    <property role="TrG5h" value="retVal" />
                    <node concept="3uibUv" id="7sAAQ3RSoid" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                    <node concept="2OqwBi" id="7sAAQ3RSqoA" role="33vP2m">
                      <node concept="2OqwBi" id="7sAAQ3RSqoB" role="2Oq$k0">
                        <node concept="37vLTw" id="7sAAQ3RSqoC" role="2Oq$k0">
                          <ref role="3cqZAo" node="60NJ4O1f9zh" resolve="method" />
                        </node>
                        <node concept="liA8E" id="7sAAQ3RSqoD" role="2OqNvi">
                          <ref role="37wK5l" to="i5cy:~AtomicReference.get()" resolve="get" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7sAAQ3RSqoE" role="2OqNvi">
                        <ref role="37wK5l" to="t6h5:~Method.invoke(java.lang.Object,java.lang.Object...)" resolve="invoke" />
                        <node concept="2OqwBi" id="7sAAQ3RSqoF" role="37wK5m">
                          <node concept="37vLTw" id="7sAAQ3RSqoG" role="2Oq$k0">
                            <ref role="3cqZAo" node="60NJ4O1fN1a" resolve="object" />
                          </node>
                          <node concept="liA8E" id="7sAAQ3RSqoH" role="2OqNvi">
                            <ref role="37wK5l" to="i5cy:~AtomicReference.get()" resolve="get" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7sAAQ3RSxy8" role="3cqZAp">
                  <node concept="3clFbS" id="7sAAQ3RSxyl" role="3clFbx">
                    <node concept="3clFbJ" id="7sAAQ3RSKLt" role="3cqZAp">
                      <node concept="3clFbS" id="7sAAQ3RSKLv" role="3clFbx">
                        <node concept="3clFbF" id="7sAAQ3RSQsf" role="3cqZAp">
                          <node concept="1rXfSq" id="7sAAQ3RSQse" role="3clFbG">
                            <ref role="37wK5l" node="7MSVDs2G$ly" resolve="failBuild" />
                          </node>
                        </node>
                      </node>
                      <node concept="3eOSWO" id="7sAAQ3RSOr8" role="3clFbw">
                        <node concept="3cmrfG" id="7sAAQ3RSOrV" role="3uHU7w">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="10QFUN" id="7sAAQ3RSANq" role="3uHU7B">
                          <node concept="3uibUv" id="7sAAQ3RSANv" role="10QFUM">
                            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                          </node>
                          <node concept="37vLTw" id="7sAAQ3RSANw" role="10QFUP">
                            <ref role="3cqZAo" node="7sAAQ3RSqo_" resolve="retVal" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2ZW3vV" id="7sAAQ3RSzod" role="3clFbw">
                    <node concept="3uibUv" id="7sAAQ3RS_4y" role="2ZW6by">
                      <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                    </node>
                    <node concept="37vLTw" id="7sAAQ3RSqoI" role="2ZW6bz">
                      <ref role="3cqZAo" node="7sAAQ3RSqo_" resolve="retVal" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="60NJ4O1gf2u" role="3clFbw">
                <node concept="3y3z36" id="60NJ4O1gjF9" role="3uHU7w">
                  <node concept="10Nm6u" id="60NJ4O1gl51" role="3uHU7w" />
                  <node concept="2OqwBi" id="60NJ4O1ggZO" role="3uHU7B">
                    <node concept="37vLTw" id="60NJ4O1ggj0" role="2Oq$k0">
                      <ref role="3cqZAo" node="60NJ4O1fN1a" resolve="object" />
                    </node>
                    <node concept="liA8E" id="60NJ4O1gisz" role="2OqNvi">
                      <ref role="37wK5l" to="i5cy:~AtomicReference.get()" resolve="get" />
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="60NJ4O1gcVs" role="3uHU7B">
                  <node concept="2OqwBi" id="60NJ4O1ga8o" role="3uHU7B">
                    <node concept="37vLTw" id="60NJ4O1g8Q2" role="2Oq$k0">
                      <ref role="3cqZAo" node="60NJ4O1f9zh" resolve="method" />
                    </node>
                    <node concept="liA8E" id="60NJ4O1gb4K" role="2OqNvi">
                      <ref role="37wK5l" to="i5cy:~AtomicReference.get()" resolve="get" />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="60NJ4O1gdQ_" role="3uHU7w" />
                </node>
              </node>
              <node concept="9aQIb" id="60NJ4O1h319" role="9aQIa">
                <node concept="3clFbS" id="60NJ4O1h31a" role="9aQI4">
                  <node concept="3clFbF" id="5EMxBKzW5PW" role="3cqZAp">
                    <node concept="1rXfSq" id="5EMxBKzW5PU" role="3clFbG">
                      <ref role="37wK5l" node="5tXD4tyHD8_" resolve="fatal" />
                      <node concept="Xl_RD" id="5EMxBKzW9sW" role="37wK5m">
                        <property role="Xl_RC" value="failed to instantiate MPS code counterpart" />
                      </node>
                      <node concept="10Nm6u" id="5EMxBKzXs2N" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="5EMxBKzX$be" role="1zxBo6">
            <node concept="3clFbS" id="5EMxBKzX$bf" role="1wplMD">
              <node concept="3clFbF" id="60NJ4O1gZ2i" role="3cqZAp">
                <node concept="1rXfSq" id="60NJ4O1gZ2j" role="3clFbG">
                  <ref role="37wK5l" node="7MSVDs2G$ly" resolve="failBuild" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7MSVDs2$zQv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5tXD4tyHAFj" role="jymVt" />
    <node concept="3clFb_" id="5tXD4tyHD8_" role="jymVt">
      <property role="TrG5h" value="fatal" />
      <node concept="37vLTG" id="5tXD4tyHD8A" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="5tXD4tyHD8B" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5tXD4tyHD8C" role="3clF46">
        <property role="TrG5h" value="ex" />
        <node concept="3uibUv" id="5tXD4tyHD8D" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
        </node>
      </node>
      <node concept="3cqZAl" id="5tXD4tyHD8E" role="3clF45" />
      <node concept="3Tm1VV" id="5tXD4tyHD8F" role="1B3o_S" />
      <node concept="3clFbS" id="5tXD4tyHD8H" role="3clF47">
        <node concept="3clFbF" id="5tXD4tyHLf7" role="3cqZAp">
          <node concept="1rXfSq" id="5tXD4tyHLf6" role="3clFbG">
            <ref role="37wK5l" to="asz6:7MSVDs2A_uu" resolve="error" />
            <node concept="37vLTw" id="5tXD4tyHNHh" role="37wK5m">
              <ref role="3cqZAo" node="5tXD4tyHD8A" resolve="text" />
            </node>
            <node concept="37vLTw" id="5tXD4tyHPUa" role="37wK5m">
              <ref role="3cqZAo" node="5tXD4tyHD8C" resolve="ex" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5tXD4tyJ4bs" role="3cqZAp">
          <node concept="1PaTwC" id="5tXD4tyJ4bt" role="1aUNEU">
            <node concept="3oM_SD" id="5tXD4tyJ6Di" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="5tXD4tyJ854" role="1PaTwD">
              <property role="3oM_SC" value="severe" />
            </node>
            <node concept="3oM_SD" id="5tXD4tyJ9qw" role="1PaTwD">
              <property role="3oM_SC" value="errors" />
            </node>
            <node concept="3oM_SD" id="5tXD4tyJ9SF" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="5tXD4tyJ9Wv" role="1PaTwD">
              <property role="3oM_SC" value="ignore" />
            </node>
            <node concept="3oM_SD" id="5tXD4tyJfyy" role="1PaTwD">
              <property role="3oM_SC" value="&quot;failOnError=false&quot;" />
            </node>
            <node concept="3oM_SD" id="5tXD4tyJlnx" role="1PaTwD">
              <property role="3oM_SC" value="flag" />
            </node>
            <node concept="3oM_SD" id="5tXD4tyJgQG" role="1PaTwD">
              <property role="3oM_SC" value="users" />
            </node>
            <node concept="3oM_SD" id="5tXD4tyJhnC" role="1PaTwD">
              <property role="3oM_SC" value="may" />
            </node>
            <node concept="3oM_SD" id="5tXD4tyJhH7" role="1PaTwD">
              <property role="3oM_SC" value="supplied" />
            </node>
            <node concept="3oM_SD" id="5tXD4tyJihB" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5tXD4tyJilr" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5tXD4tyJjct" role="1PaTwD">
              <property role="3oM_SC" value="task" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1xUpa7QT0mG" role="3cqZAp">
          <node concept="37vLTI" id="1xUpa7QT2yv" role="3clFbG">
            <node concept="3clFbT" id="1xUpa7QT3CL" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="1xUpa7QT0mF" role="37vLTJ">
              <ref role="3cqZAo" node="1xUpa7QRhb4" resolve="myForceFailOnError" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5tXD4tyHD8I" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7MSVDs2F4Ex" role="jymVt" />
    <node concept="3clFb_" id="1xUpa7QQZH9" role="jymVt">
      <property role="TrG5h" value="failBuild" />
      <node concept="3cqZAl" id="1xUpa7QQZHa" role="3clF45" />
      <node concept="3Tmbuc" id="1xUpa7QQZHb" role="1B3o_S" />
      <node concept="37vLTG" id="1xUpa7QQZHx" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="1xUpa7QQZHy" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1xUpa7QQZHz" role="3clF47">
        <node concept="3clFbJ" id="1xUpa7QR7pD" role="3cqZAp">
          <node concept="37vLTw" id="1xUpa7QR7pF" role="3clFbw">
            <ref role="3cqZAo" node="1xUpa7QRhb4" resolve="myForceFailOnError" />
          </node>
          <node concept="3clFbS" id="1xUpa7QR7pN" role="3clFbx">
            <node concept="3clFbF" id="1xUpa7QR7pO" role="3cqZAp">
              <node concept="1rXfSq" id="1xUpa7QR7pP" role="3clFbG">
                <ref role="37wK5l" to="jo3e:1xUpa7QRXpG" resolve="forceFailBuild" />
                <node concept="37vLTw" id="1xUpa7QR7pQ" role="37wK5m">
                  <ref role="3cqZAo" node="1xUpa7QQZHx" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5tXD4tyI5WJ" role="3cqZAp">
          <node concept="3nyPlj" id="5tXD4tyI5WH" role="3clFbG">
            <ref role="37wK5l" to="jo3e:KL8Aqlj5qV" resolve="failBuild" />
            <node concept="37vLTw" id="5tXD4tyI8xE" role="37wK5m">
              <ref role="3cqZAo" node="1xUpa7QQZHx" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1xUpa7QQZH$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1xUpa7QR2vw" role="jymVt" />
    <node concept="3clFb_" id="7MSVDs2G$ly" role="jymVt">
      <property role="TrG5h" value="failBuild" />
      <node concept="3cqZAl" id="7MSVDs2G$lz" role="3clF45" />
      <node concept="3Tm6S6" id="5tXD4tyH3QE" role="1B3o_S" />
      <node concept="3clFbS" id="7MSVDs2G$lA" role="3clF47">
        <node concept="3clFbF" id="7MSVDs2GB4v" role="3cqZAp">
          <node concept="1rXfSq" id="7MSVDs2GB4u" role="3clFbG">
            <ref role="37wK5l" node="1xUpa7QQZH9" resolve="failBuild" />
            <node concept="Xl_RD" id="7MSVDs2GBRy" role="37wK5m">
              <property role="Xl_RC" value="launchtests" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5EMxBKzNYxF" role="jymVt" />
    <node concept="3clFb_" id="5HBbAYqGVkX" role="jymVt">
      <property role="TrG5h" value="getTestReportsDir" />
      <node concept="3Tm6S6" id="5EMxBKzO8D2" role="1B3o_S" />
      <node concept="3uibUv" id="5HBbAYqHfD3" role="3clF45">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
      <node concept="3clFbS" id="5HBbAYqGVl0" role="3clF47">
        <node concept="3cpWs8" id="5HBbAYqGVl1" role="3cqZAp">
          <node concept="3cpWsn" id="5HBbAYqGVl2" role="3cpWs9">
            <property role="TrG5h" value="property" />
            <node concept="17QB3L" id="5HBbAYqGVl3" role="1tU5fm" />
            <node concept="2OqwBi" id="5HBbAYqGVl4" role="33vP2m">
              <node concept="37vLTw" id="5HBbAYqGVl5" role="2Oq$k0">
                <ref role="3cqZAo" to="jo3e:KL8Aqlj5lG" resolve="myWhatToDo" />
              </node>
              <node concept="liA8E" id="5HBbAYqGVl6" role="2OqNvi">
                <ref role="37wK5l" to="asz6:KL8Aql8eBs" resolve="getProperty" />
                <node concept="37vLTw" id="5HBbAYqGVl7" role="37wK5m">
                  <ref role="3cqZAo" node="5HBbAYqGRmA" resolve="TEST_REPORTS_DIR" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5HBbAYqHhVK" role="3cqZAp">
          <node concept="3clFbC" id="5HBbAYqIWcb" role="3clFbw">
            <node concept="37vLTw" id="5HBbAYqHj9b" role="3uHU7B">
              <ref role="3cqZAo" node="5HBbAYqGVl2" resolve="property" />
            </node>
            <node concept="10Nm6u" id="5HBbAYqHm7y" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5HBbAYqIWcg" role="3clFbx">
            <node concept="3cpWs6" id="5HBbAYqIXqZ" role="3cqZAp">
              <node concept="10Nm6u" id="5HBbAYqJ1Ok" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5HBbAYqHwBF" role="3cqZAp">
          <node concept="3cpWsn" id="5HBbAYqHwBG" role="3cpWs9">
            <property role="TrG5h" value="dir" />
            <node concept="3uibUv" id="5HBbAYqHvX_" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="5HBbAYqHwBH" role="33vP2m">
              <node concept="1pGfFk" id="5HBbAYqHwBI" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                <node concept="37vLTw" id="5HBbAYqHwBJ" role="37wK5m">
                  <ref role="3cqZAo" node="5HBbAYqGVl2" resolve="property" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5HBbAYqH_CX" role="3cqZAp">
          <node concept="3clFbS" id="5HBbAYqH_DK" role="3clFbx">
            <node concept="3clFbJ" id="5HBbAYqHHMu" role="3cqZAp">
              <node concept="3clFbS" id="5HBbAYqHHNh" role="3clFbx">
                <node concept="3clFbF" id="5EMxBKzRDud" role="3cqZAp">
                  <node concept="1rXfSq" id="5EMxBKzRDub" role="3clFbG">
                    <ref role="37wK5l" to="asz6:7MSVDs2AhAE" resolve="error" />
                    <node concept="3cpWs3" id="5HBbAYqIo1A" role="37wK5m">
                      <node concept="2OqwBi" id="5HBbAYqIo1B" role="3uHU7w">
                        <node concept="37vLTw" id="5HBbAYqIo1C" role="2Oq$k0">
                          <ref role="3cqZAo" node="5HBbAYqHwBG" resolve="dir" />
                        </node>
                        <node concept="liA8E" id="5HBbAYqIo1D" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="5HBbAYqIo1E" role="3uHU7B">
                        <property role="Xl_RC" value="could not create directory for test reports: " />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="5HBbAYqIo1y" role="3cqZAp">
                  <node concept="10Nm6u" id="5HBbAYqIo1z" role="3cqZAk" />
                </node>
              </node>
              <node concept="3fqX7Q" id="5HBbAYqHJRn" role="3clFbw">
                <node concept="2OqwBi" id="5HBbAYqHJRp" role="3fr31v">
                  <node concept="37vLTw" id="5HBbAYqHJRq" role="2Oq$k0">
                    <ref role="3cqZAo" node="5HBbAYqHwBG" resolve="dir" />
                  </node>
                  <node concept="liA8E" id="5HBbAYqHJRr" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~File.mkdirs()" resolve="mkdirs" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="5HBbAYqHAL$" role="3clFbw">
            <node concept="2OqwBi" id="5HBbAYqHALA" role="3fr31v">
              <node concept="37vLTw" id="5HBbAYqHALB" role="2Oq$k0">
                <ref role="3cqZAo" node="5HBbAYqHwBG" resolve="dir" />
              </node>
              <node concept="liA8E" id="5HBbAYqHALC" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5HBbAYqIhk2" role="3cqZAp">
          <node concept="3clFbS" id="5HBbAYqIhk4" role="3clFbx">
            <node concept="3clFbF" id="5EMxBKzRYVN" role="3cqZAp">
              <node concept="1rXfSq" id="5EMxBKzRYVL" role="3clFbG">
                <ref role="37wK5l" to="asz6:7MSVDs2AhAE" resolve="error" />
                <node concept="3cpWs3" id="5HBbAYqHX9y" role="37wK5m">
                  <node concept="2OqwBi" id="5HBbAYqI2gZ" role="3uHU7w">
                    <node concept="37vLTw" id="5HBbAYqI0Ip" role="2Oq$k0">
                      <ref role="3cqZAo" node="5HBbAYqHwBG" resolve="dir" />
                    </node>
                    <node concept="liA8E" id="5HBbAYqI4Pp" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="5HBbAYqHM9f" role="3uHU7B">
                    <property role="Xl_RC" value="not a directory: " />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5HBbAYqI8lA" role="3cqZAp">
              <node concept="10Nm6u" id="5HBbAYqI8nZ" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="5HBbAYqImSV" role="3clFbw">
            <node concept="2OqwBi" id="5HBbAYqImSX" role="3fr31v">
              <node concept="37vLTw" id="5HBbAYqImSY" role="2Oq$k0">
                <ref role="3cqZAo" node="5HBbAYqHwBG" resolve="dir" />
              </node>
              <node concept="liA8E" id="5HBbAYqImSZ" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.isDirectory()" resolve="isDirectory" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5HBbAYqIaHl" role="3cqZAp">
          <node concept="37vLTw" id="5HBbAYqIcYI" role="3cqZAk">
            <ref role="3cqZAo" node="5HBbAYqHwBG" resolve="dir" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5EMxBKzS_qK" role="jymVt" />
    <node concept="3clFb_" id="5EMxBKzSLtu" role="jymVt">
      <property role="TrG5h" value="getTestProjectDir" />
      <node concept="3clFbS" id="5EMxBKzSLtx" role="3clF47">
        <node concept="3cpWs8" id="7CPkROrtj37" role="3cqZAp">
          <node concept="3cpWsn" id="7CPkROrtj38" role="3cpWs9">
            <property role="TrG5h" value="projectDirectories" />
            <node concept="3uibUv" id="7CPkROrtiL6" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="7CPkROrtiL9" role="11_B2D">
                <ref role="3uigEE" to="guwi:~File" resolve="File" />
              </node>
            </node>
            <node concept="2OqwBi" id="7CPkROrtj39" role="33vP2m">
              <node concept="37vLTw" id="7CPkROrtj3a" role="2Oq$k0">
                <ref role="3cqZAo" to="jo3e:KL8Aqlj5lG" resolve="myWhatToDo" />
              </node>
              <node concept="liA8E" id="7CPkROrtj3b" role="2OqNvi">
                <ref role="37wK5l" to="asz6:7CPkROrsoB_" resolve="getProjectDirectories" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7CPkROrtn2S" role="3cqZAp">
          <node concept="3clFbS" id="7CPkROrtn2U" role="3clFbx">
            <node concept="3clFbJ" id="7CPkROrtwxb" role="3cqZAp">
              <node concept="3clFbS" id="7CPkROrtwxd" role="3clFbx">
                <node concept="3clFbF" id="5EMxBKzT8ap" role="3cqZAp">
                  <node concept="1rXfSq" id="5EMxBKzT8an" role="3clFbG">
                    <ref role="37wK5l" to="asz6:7MSVDs2A_uu" resolve="error" />
                    <node concept="3cpWs3" id="5EMxBKzTzLb" role="37wK5m">
                      <node concept="37vLTw" id="5EMxBKzTCv1" role="3uHU7w">
                        <ref role="3cqZAo" node="7CPkROrtj38" resolve="projectDirectories" />
                      </node>
                      <node concept="Xl_RD" id="7CPkROrtI2y" role="3uHU7B">
                        <property role="Xl_RC" value="only one project directory can be specified:" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="7CPkROrtPlh" role="37wK5m">
                      <node concept="1pGfFk" id="7CPkROrtUr9" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;()" resolve="IllegalStateException" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eOSWO" id="7CPkROrtBOP" role="3clFbw">
                <node concept="3cmrfG" id="7CPkROrtBP6" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="7CPkROrty4y" role="3uHU7B">
                  <node concept="37vLTw" id="7CPkROrtxjH" role="2Oq$k0">
                    <ref role="3cqZAo" node="7CPkROrtj38" resolve="projectDirectories" />
                  </node>
                  <node concept="liA8E" id="7CPkROrt$z7" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5EMxBKzTPGK" role="3cqZAp">
              <node concept="2OqwBi" id="7CPkROru8ub" role="3cqZAk">
                <node concept="37vLTw" id="7CPkROru8uc" role="2Oq$k0">
                  <ref role="3cqZAo" node="7CPkROrtj38" resolve="projectDirectories" />
                </node>
                <node concept="liA8E" id="7CPkROru8ud" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                  <node concept="3cmrfG" id="7CPkROru8ue" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="7CPkROrtuQ4" role="3clFbw">
            <node concept="2OqwBi" id="7CPkROrtuQ6" role="3fr31v">
              <node concept="37vLTw" id="7CPkROrtuQ7" role="2Oq$k0">
                <ref role="3cqZAo" node="7CPkROrtj38" resolve="projectDirectories" />
              </node>
              <node concept="liA8E" id="7CPkROrtuQ8" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5EMxBKzUfo3" role="3cqZAp">
          <node concept="10Nm6u" id="5EMxBKzUlBI" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm6S6" id="5EMxBKzSFi0" role="1B3o_S" />
      <node concept="3uibUv" id="5EMxBKzSJEc" role="3clF45">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
    </node>
    <node concept="2tJIrI" id="5EMxBKzNYyX" role="jymVt" />
    <node concept="2tJIrI" id="7MSVDs2GDpT" role="jymVt" />
    <node concept="2YIFZL" id="7MSVDs2$tkx" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="37vLTG" id="7MSVDs2$tt0" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="7MSVDs2$t$e" role="1tU5fm">
          <node concept="17QB3L" id="7MSVDs2$tva" role="10Q1$1" />
        </node>
      </node>
      <node concept="3cqZAl" id="7MSVDs2$tkz" role="3clF45" />
      <node concept="3Tm1VV" id="7MSVDs2$tk$" role="1B3o_S" />
      <node concept="3clFbS" id="7MSVDs2$tk_" role="3clF47">
        <node concept="3clFbF" id="7MSVDs2$tJz" role="3cqZAp">
          <node concept="2OqwBi" id="7MSVDs2$zqb" role="3clFbG">
            <node concept="2ShNRf" id="7MSVDs2$tJx" role="2Oq$k0">
              <node concept="1pGfFk" id="7MSVDs2$u2V" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="7MSVDs2$19T" resolve="LaunchTestWorker" />
                <node concept="2YIFZM" id="5gsHVK$X$AH" role="37wK5m">
                  <ref role="37wK5l" to="asz6:KL8Aql8eDb" resolve="fromDumpInFile" />
                  <ref role="1Pybhc" to="asz6:KL8Aql8enO" resolve="Script" />
                  <node concept="2ShNRf" id="5gsHVK$X$AI" role="37wK5m">
                    <node concept="1pGfFk" id="5gsHVK$X$AJ" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                      <node concept="AH0OO" id="5gsHVK$X$AK" role="37wK5m">
                        <node concept="3cmrfG" id="5gsHVK$X$AL" role="AHEQo">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="5gsHVK$X$AM" role="AHHXb">
                          <ref role="3cqZAo" node="7MSVDs2$tt0" resolve="args" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7MSVDs2$zCN" role="2OqNvi">
              <ref role="37wK5l" to="jo3e:KL8Aqlj5n4" resolve="workFromMain" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7MSVDs2zHO_" role="1B3o_S" />
    <node concept="3uibUv" id="7MSVDs2zWSZ" role="1zkMxy">
      <ref role="3uigEE" to="jo3e:KL8Aqlj5ln" resolve="WorkerBase" />
    </node>
    <node concept="3uibUv" id="7MSVDs2CrVB" role="EKbjA">
      <ref role="3uigEE" to="asz6:7MSVDs2AdGA" resolve="WorkerCallback" />
    </node>
  </node>
</model>

