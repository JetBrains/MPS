<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7fa64b2e-9276-48d0-83e8-bd0a49298c05(jetbrains.mps.ide.httpsupport.nodeaccess.plugin)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="817e4e70-961e-4a95-98a1-15e9f32231f1" name="jetbrains.mps.ide.httpsupport" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="6" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="-1" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
  </languages>
  <imports>
    <import index="kz9k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.navigation(MPS.Editor/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="fwk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.textgen.trace(MPS.Core/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="btn2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.impl(MPS.IDEA/)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="dp1x" ref="r:84719e1a-99f6-4297-90ba-8ad2a947fa4a(jetbrains.mps.ide.datatransfer)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="ekwn" ref="r:9832fb5f-2578-4b58-8014-a5de79da988e(jetbrains.mps.ide.editor.actions)" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" />
    <import index="tprt" ref="r:00000000-0000-4000-0000-011c895904a5(jetbrains.mps.ide.common)" />
    <import index="jlff" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vfs(MPS.IDEA/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="gspm" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui.popup(MPS.IDEA/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="jkny" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.wm(MPS.IDEA/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="vmdq" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.awt(MPS.IDEA/)" />
    <import index="tqvn" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.tempmodel(MPS.Core/)" />
    <import index="g3l6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.model(MPS.Core/)" />
    <import index="rfhd" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util.registry(MPS.IDEA/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="3a50" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide(MPS.Platform/)" />
    <import index="fpru" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.psi.search(MPS.IDEA/)" />
    <import index="zn9m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util(MPS.IDEA/)" />
    <import index="jtsr" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.project(MPS.OpenAPI/)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <property id="4692598989365753297" name="updateInBackground" index="1rBW0U" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1205851242421" name="methodDeclaration" index="32lrUH" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1204992316090" name="point" index="2f8Tey" />
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="1205679047295" name="jetbrains.mps.lang.plugin.structure.ActionParameterDeclaration" flags="ig" index="2S4$dB" />
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
      <concept id="1206092561075" name="jetbrains.mps.lang.plugin.structure.ActionParameterReferenceOperation" flags="nn" index="3gHZIF" />
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ngI" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1219920932475" name="jetbrains.mps.baseLanguage.structure.VariableArityType" flags="in" index="8X2XB">
        <child id="1219921048460" name="componentType" index="8Xvag" />
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
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
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
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
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
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
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
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
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
      </concept>
      <concept id="8064396509828172209" name="jetbrains.mps.baseLanguage.structure.UnaryMinus" flags="nn" index="1ZRNhn" />
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
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ngI" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="5045161044515397667" name="jetbrains.mps.lang.smodel.structure.Node_PointerOperation" flags="ng" index="iZEcu" />
      <concept id="7400021826771268254" name="jetbrains.mps.lang.smodel.structure.SNodePointerType" flags="ig" index="2sp9CU" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1156234966388" name="shortDescription" index="OYnhT" />
      </concept>
      <concept id="1196978630214" name="jetbrains.mps.lang.core.structure.IResolveInfo" flags="ngI" index="2Lv6Xg">
        <property id="1196978656277" name="resolveInfo" index="2Lvdk3" />
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
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
    <language id="817e4e70-961e-4a95-98a1-15e9f32231f1" name="jetbrains.mps.ide.httpsupport">
      <concept id="5573986434797682998" name="jetbrains.mps.ide.httpsupport.structure.HandleRequestFunction" flags="ig" index="pF8on" />
      <concept id="5573986434797765074" name="jetbrains.mps.ide.httpsupport.structure.HttpRequestParameter" flags="ng" index="pFkrN" />
      <concept id="5573986434797590400" name="jetbrains.mps.ide.httpsupport.structure.RequestHandler" flags="ng" index="pFx2x">
        <child id="5573986434797811183" name="handleFunction" index="pCJbe" />
        <child id="6040064942661848825" name="queryPrefix" index="std7D" />
        <child id="2332657309400291202" name="queryParameters" index="3_QDjO" />
      </concept>
      <concept id="6040064942661848791" name="jetbrains.mps.ide.httpsupport.structure.QueryPath" flags="ng" index="std77">
        <child id="6040064942661848818" name="segmetns" index="std7y" />
      </concept>
      <concept id="6040064942661848792" name="jetbrains.mps.ide.httpsupport.structure.QuerySegment" flags="ng" index="std78">
        <property id="6040064942662280271" name="segment" index="svBHv" />
      </concept>
      <concept id="2332657309400452757" name="jetbrains.mps.ide.httpsupport.structure.QueryParameterReference" flags="ng" index="3_PKRz">
        <reference id="2332657309400452758" name="queryParameter" index="3_PKRw" />
      </concept>
      <concept id="2332657309400282169" name="jetbrains.mps.ide.httpsupport.structure.QueryParameter" flags="ng" index="3_QJtf">
        <property id="2332657309400282173" name="required" index="3_QJtb" />
        <child id="5111696079053634063" name="parameterConverter" index="1TjXUf" />
      </concept>
      <concept id="5111696079053507374" name="jetbrains.mps.ide.httpsupport.structure.DefaultParameterConverter" flags="ng" index="1TjqYI">
        <child id="5111696079053507400" name="parameterType" index="1TjqZ8" />
      </concept>
      <concept id="4427830474126495781" name="jetbrains.mps.ide.httpsupport.structure.MPSInternalPortProvider" flags="ng" index="1UxO1Y" />
      <concept id="6886330673564897217" name="jetbrains.mps.ide.httpsupport.structure.ResponseSendOperation" flags="ng" index="1W9Qq2">
        <property id="6886330673564897341" name="type" index="1W9R_Y" />
        <child id="6886330673564897343" name="buffer" index="1W9R_W" />
      </concept>
      <concept id="4622937352052264727" name="jetbrains.mps.ide.httpsupport.structure.ParameterInitializer" flags="ng" index="1ZOzog">
        <reference id="4622937352052264728" name="parameter" index="1ZOzov" />
        <child id="4622937352052264730" name="value" index="1ZOzot" />
      </concept>
      <concept id="4622937352052264595" name="jetbrains.mps.ide.httpsupport.structure.RequestURLBuilderExpression" flags="ng" index="1ZOzuk">
        <reference id="4622937352052264638" name="requestHandler" index="1ZOzuT" />
        <child id="8009469105144444496" name="port" index="1WJIZB" />
        <child id="4622937352052298487" name="initializer" index="1ZOqJK" />
      </concept>
    </language>
  </registry>
  <node concept="pFx2x" id="2lt1tUBuq2$">
    <property role="TrG5h" value="NodeOpener" />
    <node concept="pF8on" id="2lt1tUBuq2_" role="pCJbe">
      <node concept="3clFbS" id="2lt1tUBuq2A" role="2VODD2">
        <node concept="3SKdUt" id="38IyatNVHWF" role="3cqZAp">
          <node concept="1PaTwC" id="38IyatNVHWG" role="1aUNEU">
            <node concept="3oM_SD" id="38IyatNVHWH" role="1PaTwD">
              <property role="3oM_SC" value="The" />
            </node>
            <node concept="3oM_SD" id="38IyatNVI7d" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="38IyatNVI9l" role="1PaTwD">
              <property role="3oM_SC" value="may" />
            </node>
            <node concept="3oM_SD" id="38IyatNVI9O" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="38IyatNVIaF" role="1PaTwD">
              <property role="3oM_SC" value="incorrect" />
            </node>
            <node concept="3oM_SD" id="38IyatNVIci" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="38IyatNVIdP" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="38IyatNVIf4" role="1PaTwD">
              <property role="3oM_SC" value="ide.httpsupport.specifyProjectInNodeURL" />
            </node>
            <node concept="3oM_SD" id="38IyatNVJTJ" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="38IyatNVJVi" role="1PaTwD">
              <property role="3oM_SC" value="false" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="38IyatNSNwj" role="3cqZAp">
          <node concept="3cpWsn" id="38IyatNSNwk" role="3cpWs9">
            <property role="TrG5h" value="projectForNode" />
            <node concept="3uibUv" id="38IyatNSNo9" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
            <node concept="2YIFZM" id="38IyatNSNwl" role="33vP2m">
              <ref role="37wK5l" node="2Sv4ObXJ51E" resolve="getProjectForNode" />
              <ref role="1Pybhc" node="2lt1tUBuCdK" resolve="HandlerUtil" />
              <node concept="3_PKRz" id="38IyatNSNwm" role="37wK5m">
                <ref role="3_PKRw" node="21vgRr5xHMM" resolve="project" />
              </node>
              <node concept="3_PKRz" id="38IyatNSNwn" role="37wK5m">
                <ref role="3_PKRw" node="21vgRr5xzVs" resolve="ref" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4yQMaPlI_5B" role="3cqZAp">
          <node concept="3clFbS" id="4yQMaPlI_5D" role="3clFbx">
            <node concept="3cpWs8" id="5ueUq77WvdM" role="3cqZAp">
              <node concept="3cpWsn" id="5ueUq77WvdN" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3uibUv" id="5ueUq77WvdO" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="2YIFZM" id="12oNA5U0IpO" role="33vP2m">
                  <ref role="37wK5l" node="3naYLZo3_69" resolve="openNode" />
                  <ref role="1Pybhc" node="2lt1tUBuCdK" resolve="HandlerUtil" />
                  <node concept="37vLTw" id="38IyatNTm2S" role="37wK5m">
                    <ref role="3cqZAo" node="38IyatNSNwk" resolve="projectForNode" />
                  </node>
                  <node concept="3_PKRz" id="12oNA5U0IpR" role="37wK5m">
                    <ref role="3_PKRw" node="21vgRr5xzVs" resolve="ref" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3naYLZo4U3r" role="3cqZAp">
              <node concept="3y3z36" id="5ueUq77XS$0" role="3clFbw">
                <node concept="37vLTw" id="5ueUq77WvCX" role="3uHU7B">
                  <ref role="3cqZAo" node="5ueUq77WvdN" resolve="node" />
                </node>
                <node concept="10Nm6u" id="5ueUq77WvCY" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="3naYLZo4U3t" role="3clFbx">
                <node concept="3cpWs8" id="5ueUq77XOVJ" role="3cqZAp">
                  <node concept="3cpWsn" id="5ueUq77XOVM" role="3cpWs9">
                    <property role="TrG5h" value="nodePresentation" />
                    <node concept="17QB3L" id="5ueUq77XOVH" role="1tU5fm" />
                  </node>
                </node>
                <node concept="3clFbF" id="5ueUq77XPyT" role="3cqZAp">
                  <node concept="2OqwBi" id="5ueUq77XQf8" role="3clFbG">
                    <node concept="2OqwBi" id="5ueUq77XPNa" role="2Oq$k0">
                      <node concept="37vLTw" id="38IyatNTmbQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="38IyatNSNwk" resolve="projectForNode" />
                      </node>
                      <node concept="liA8E" id="5ueUq77XQ8y" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5ueUq77XQFN" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                      <node concept="1bVj0M" id="5ueUq77XQIM" role="37wK5m">
                        <node concept="3clFbS" id="5ueUq77XQIN" role="1bW5cS">
                          <node concept="3clFbF" id="5ueUq77XQRF" role="3cqZAp">
                            <node concept="37vLTI" id="5ueUq77XRm$" role="3clFbG">
                              <node concept="2OqwBi" id="5ueUq77XR$H" role="37vLTx">
                                <node concept="37vLTw" id="5ueUq77XRsa" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5ueUq77WvdN" resolve="node" />
                                </node>
                                <node concept="liA8E" id="5ueUq77XRSr" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SNode.getPresentation()" resolve="getPresentation" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="5ueUq77XQUk" role="37vLTJ">
                                <ref role="3cqZAo" node="5ueUq77XOVM" resolve="nodePresentation" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="5ueUq77WvWt" role="3cqZAp">
                  <node concept="3cpWsn" id="5ueUq77WvWw" role="3cpWs9">
                    <property role="TrG5h" value="text" />
                    <node concept="17QB3L" id="5ueUq77WvWr" role="1tU5fm" />
                    <node concept="3cpWs3" id="5ueUq77WDl5" role="33vP2m">
                      <node concept="2OqwBi" id="5ueUq77Y3DU" role="3uHU7w">
                        <node concept="37vLTw" id="38IyatNTmkR" role="2Oq$k0">
                          <ref role="3cqZAo" node="38IyatNSNwk" resolve="projectForNode" />
                        </node>
                        <node concept="liA8E" id="5ueUq77Y4dn" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getName()" resolve="getName" />
                        </node>
                      </node>
                      <node concept="3cpWs3" id="5ueUq77YcB1" role="3uHU7B">
                        <node concept="Xl_RD" id="5ueUq77WBgz" role="3uHU7w">
                          <property role="Xl_RC" value=")&lt;/i&gt;&lt;br&gt;&lt;b&gt;Project&lt;/b&gt;: " />
                        </node>
                        <node concept="3cpWs3" id="5ueUq77Y9lo" role="3uHU7B">
                          <node concept="3cpWs3" id="5ueUq77WAIV" role="3uHU7B">
                            <node concept="3cpWs3" id="5ueUq77Wzr2" role="3uHU7B">
                              <node concept="3cpWs3" id="5ueUq77YpZy" role="3uHU7B">
                                <node concept="Xl_RD" id="5ueUq77WxNP" role="3uHU7w">
                                  <property role="Xl_RC" value="The requested node has been opened in MPS&lt;br&gt;&lt;b&gt;Node&lt;/b&gt;: " />
                                </node>
                                <node concept="10M0yZ" id="5ueUq77Wx1v" role="3uHU7B">
                                  <ref role="3cqZAo" node="5ueUq77WwLa" resolve="HEADER_RESPONCE" />
                                  <ref role="1PxDUh" node="2lt1tUBuCdK" resolve="HandlerUtil" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="5ueUq77XSm2" role="3uHU7w">
                                <ref role="3cqZAo" node="5ueUq77XOVM" resolve="nodePresentation" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="5ueUq77Y9vQ" role="3uHU7w">
                              <property role="Xl_RC" value=" &lt;i&gt;(" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="5ueUq77YEKj" role="3uHU7w">
                            <node concept="37vLTw" id="5ueUq77YEqz" role="2Oq$k0">
                              <ref role="3cqZAo" node="5ueUq77WvdN" resolve="node" />
                            </node>
                            <node concept="liA8E" id="5ueUq77YF93" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5ueUq77WF4i" role="3cqZAp">
                  <node concept="2OqwBi" id="5ueUq77WFhe" role="3clFbG">
                    <node concept="pFkrN" id="5ueUq77WF4g" role="2Oq$k0" />
                    <node concept="1W9Qq2" id="5ueUq77WFxN" role="2OqNvi">
                      <property role="1W9R_Y" value="text/html; charset=UTF-8" />
                      <node concept="37vLTw" id="5ueUq77WFzB" role="1W9R_W">
                        <ref role="3cqZAo" node="5ueUq77WvWw" resolve="text" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="5ueUq77XS$3" role="9aQIa">
                <node concept="3clFbS" id="5ueUq77WvDU" role="9aQI4">
                  <node concept="3cpWs8" id="5ueUq77WFMH" role="3cqZAp">
                    <node concept="3cpWsn" id="5ueUq77WFMK" role="3cpWs9">
                      <property role="TrG5h" value="text" />
                      <node concept="17QB3L" id="5ueUq77WFMF" role="1tU5fm" />
                      <node concept="3cpWs3" id="5ueUq77YIPM" role="33vP2m">
                        <node concept="3cpWs3" id="1Zsr4zxXEz4" role="3uHU7B">
                          <node concept="3cpWs3" id="1Zsr4zxXJvB" role="3uHU7B">
                            <node concept="3_PKRz" id="1Zsr4zxXLBV" role="3uHU7w">
                              <ref role="3_PKRw" node="21vgRr5xzVs" resolve="ref" />
                            </node>
                            <node concept="3cpWs3" id="5ueUq77WGob" role="3uHU7B">
                              <node concept="10M0yZ" id="5ueUq77WFUX" role="3uHU7B">
                                <ref role="3cqZAo" node="5ueUq77WwLa" resolve="HEADER_RESPONCE" />
                                <ref role="1PxDUh" node="2lt1tUBuCdK" resolve="HandlerUtil" />
                              </node>
                              <node concept="Xl_RD" id="5ueUq77Yh5e" role="3uHU7w">
                                <property role="Xl_RC" value="The requested node has not been found&lt;br&gt;&lt;b&gt;Node reference&lt;/b&gt;: " />
                              </node>
                            </node>
                          </node>
                          <node concept="Xl_RD" id="1Zsr4zxXEzc" role="3uHU7w">
                            <property role="Xl_RC" value="&lt;br&gt;&lt;b&gt;Project&lt;/b&gt;: " />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="5ueUq77YJk8" role="3uHU7w">
                          <node concept="37vLTw" id="38IyatNTmvo" role="2Oq$k0">
                            <ref role="3cqZAo" node="38IyatNSNwk" resolve="projectForNode" />
                          </node>
                          <node concept="liA8E" id="5ueUq77YJSH" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~Project.getName()" resolve="getName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5ueUq77W14k" role="3cqZAp">
                    <node concept="2YIFZM" id="5ueUq77W15L" role="3clFbG">
                      <ref role="37wK5l" node="5ueUq77VMRd" resolve="showNodeNotFoundPopup" />
                      <ref role="1Pybhc" node="2lt1tUBuCdK" resolve="HandlerUtil" />
                      <node concept="37vLTw" id="5gKLqigBfGy" role="37wK5m">
                        <ref role="3cqZAo" node="38IyatNSNwk" resolve="projectForNode" />
                      </node>
                      <node concept="3_PKRz" id="5ueUq77W19u" role="37wK5m">
                        <ref role="3_PKRw" node="21vgRr5xzVs" resolve="ref" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5ueUq77WtM$" role="3cqZAp">
                    <node concept="2OqwBi" id="5ueUq77WtZY" role="3clFbG">
                      <node concept="pFkrN" id="5ueUq77WtMy" role="2Oq$k0" />
                      <node concept="1W9Qq2" id="5ueUq77Wugx" role="2OqNvi">
                        <property role="1W9R_Y" value="text/html; charset=UTF-8" />
                        <node concept="37vLTw" id="5ueUq77WGRd" role="1W9R_W">
                          <ref role="3cqZAo" node="5ueUq77WFMK" resolve="text" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4yQMaPlIA1l" role="3clFbw">
            <node concept="10Nm6u" id="4yQMaPlIAeb" role="3uHU7w" />
            <node concept="37vLTw" id="38IyatNTlTz" role="3uHU7B">
              <ref role="3cqZAo" node="38IyatNSNwk" resolve="projectForNode" />
            </node>
          </node>
          <node concept="9aQIb" id="4yQMaPlLeF6" role="9aQIa">
            <node concept="3clFbS" id="4yQMaPlLeF7" role="9aQI4">
              <node concept="3cpWs8" id="5ueUq77WHfo" role="3cqZAp">
                <node concept="3cpWsn" id="5ueUq77WHfr" role="3cpWs9">
                  <property role="TrG5h" value="text" />
                  <node concept="17QB3L" id="5ueUq77WHfm" role="1tU5fm" />
                  <node concept="3cpWs3" id="5ueUq77WHHE" role="33vP2m">
                    <node concept="Xl_RD" id="5ueUq77WHIf" role="3uHU7w">
                      <property role="Xl_RC" value="No project is available" />
                    </node>
                    <node concept="10M0yZ" id="5ueUq77WHgs" role="3uHU7B">
                      <ref role="1PxDUh" node="2lt1tUBuCdK" resolve="HandlerUtil" />
                      <ref role="3cqZAo" node="5ueUq77WwLa" resolve="HEADER_RESPONCE" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5ueUq77VnJo" role="3cqZAp">
                <node concept="2YIFZM" id="4vg7_weWdZe" role="3clFbG">
                  <ref role="37wK5l" node="4vg7_weVOC3" resolve="showNoProjectIsAvailablePopup" />
                  <ref role="1Pybhc" node="2lt1tUBuCdK" resolve="HandlerUtil" />
                </node>
              </node>
              <node concept="3clFbF" id="5YhakczIeZc" role="3cqZAp">
                <node concept="2OqwBi" id="5YhakczIfdY" role="3clFbG">
                  <node concept="pFkrN" id="5YhakczIeZa" role="2Oq$k0" />
                  <node concept="1W9Qq2" id="5YhakczIfrk" role="2OqNvi">
                    <property role="1W9R_Y" value="text/html" />
                    <node concept="37vLTw" id="5ueUq77WIvZ" role="1W9R_W">
                      <ref role="3cqZAo" node="5ueUq77WHfr" resolve="text" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3_QJtf" id="21vgRr5xzVs" role="3_QDjO">
      <property role="TrG5h" value="ref" />
      <property role="3_QJtb" value="true" />
      <node concept="1TjqYI" id="4rKp80ZKZez" role="1TjXUf">
        <node concept="3uibUv" id="4rKp80ZKZtk" role="1TjqZ8">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
    </node>
    <node concept="3_QJtf" id="21vgRr5xHMM" role="3_QDjO">
      <property role="TrG5h" value="project" />
      <property role="3_QJtb" value="false" />
      <node concept="1TjqYI" id="4rKp80ZKZvW" role="1TjXUf">
        <node concept="3uibUv" id="4rKp80ZKZEP" role="1TjqZ8">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="std77" id="qifh9t62LH" role="std7D">
      <node concept="std78" id="qifh9t62Md" role="std7y">
        <property role="svBHv" value="node" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2lt1tUBuCdK">
    <property role="TrG5h" value="HandlerUtil" />
    <node concept="2tJIrI" id="4yQMaPlLlhr" role="jymVt" />
    <node concept="Wx3nA" id="7prpbsC604h" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="SOURCE_GEN" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="7prpbsC60Dz" role="1B3o_S" />
      <node concept="17QB3L" id="4hySY0cg0Iv" role="1tU5fm" />
      <node concept="Xl_RD" id="7prpbsC60aP" role="33vP2m">
        <property role="Xl_RC" value="source_gen/" />
      </node>
    </node>
    <node concept="2tJIrI" id="4vg7_weVOJT" role="jymVt" />
    <node concept="Wx3nA" id="5ueUq77UMLK" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="HEADER" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="5ueUq77UKGN" role="1B3o_S" />
      <node concept="17QB3L" id="5ueUq77UMLB" role="1tU5fm" />
      <node concept="Xl_RD" id="5ueUq77UMWI" role="33vP2m">
        <property role="Xl_RC" value="&lt;b&gt;HTTP Support Plugin&lt;/b&gt;\n" />
      </node>
    </node>
    <node concept="2tJIrI" id="5ueUq77Ww0y" role="jymVt" />
    <node concept="Wx3nA" id="5ueUq77WwLa" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="HEADER_RESPONCE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="5ueUq77Wwmz" role="1B3o_S" />
      <node concept="17QB3L" id="5ueUq77WwL0" role="1tU5fm" />
      <node concept="Xl_RD" id="5ueUq77WwY0" role="33vP2m">
        <property role="Xl_RC" value="&lt;b&gt;MPS - HTTP Support Plugin&lt;/b&gt;&lt;br&gt;" />
      </node>
    </node>
    <node concept="2tJIrI" id="5ueUq77Vyjg" role="jymVt" />
    <node concept="Wx3nA" id="4vg7_weVPiU" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="NO_PROJECT_IS_AVAILABLE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="4vg7_weVOZG" role="1B3o_S" />
      <node concept="17QB3L" id="4vg7_weVPiL" role="1tU5fm" />
      <node concept="Xl_RD" id="4vg7_weVPq1" role="33vP2m">
        <property role="Xl_RC" value="An incoming request can not be handled properly since no project is available" />
      </node>
    </node>
    <node concept="2tJIrI" id="5ueUq77WbQt" role="jymVt" />
    <node concept="Wx3nA" id="5ueUq77WcC7" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="POPUP_TIME" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="5ueUq77Wcdx" role="1B3o_S" />
      <node concept="10Oyi0" id="5ueUq77Wdks" role="1tU5fm" />
      <node concept="3cmrfG" id="5ueUq77WcOZ" role="33vP2m">
        <property role="3cmrfH" value="10000" />
      </node>
    </node>
    <node concept="2tJIrI" id="6dOBq74Q1J4" role="jymVt" />
    <node concept="Wx3nA" id="6dOBq74QFqg" role="jymVt">
      <property role="TrG5h" value="SUCCESS_STREAM" />
      <property role="2dlcS1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="2dld4O" value="false" />
      <node concept="10Q1$e" id="6dOBq74QFqi" role="1tU5fm">
        <node concept="10PrrI" id="6dOBq74QFqj" role="10Q1$1" />
      </node>
      <node concept="3Tm1VV" id="6dOBq74R7kN" role="1B3o_S" />
      <node concept="1rXfSq" id="3vUpEF4NbQu" role="33vP2m">
        <ref role="37wK5l" node="3vUpEF4NaOX" resolve="stream" />
        <node concept="3cmrfG" id="3vUpEF4MJk0" role="37wK5m">
          <property role="3cmrfH" value="71" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJk1" role="37wK5m">
          <property role="3cmrfH" value="73" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJk2" role="37wK5m">
          <property role="3cmrfH" value="70" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJk3" role="37wK5m">
          <property role="3cmrfH" value="56" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJk4" role="37wK5m">
          <property role="3cmrfH" value="57" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJk5" role="37wK5m">
          <property role="3cmrfH" value="97" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJk6" role="37wK5m">
          <property role="3cmrfH" value="2" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJk7" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJk8" role="37wK5m">
          <property role="3cmrfH" value="2" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJk9" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
        <node concept="1ZRNhn" id="3vUpEF4MJka" role="37wK5m">
          <node concept="3cmrfG" id="3vUpEF4MJkb" role="2$L3a6">
            <property role="3cmrfH" value="128" />
          </node>
        </node>
        <node concept="1ZRNhn" id="3vUpEF4MJkc" role="37wK5m">
          <node concept="3cmrfG" id="3vUpEF4MJkd" role="2$L3a6">
            <property role="3cmrfH" value="1" />
          </node>
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJke" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
        <node concept="1ZRNhn" id="3vUpEF4MJkf" role="37wK5m">
          <node concept="3cmrfG" id="3vUpEF4MJkg" role="2$L3a6">
            <property role="3cmrfH" value="1" />
          </node>
        </node>
        <node concept="1ZRNhn" id="3vUpEF4MJkh" role="37wK5m">
          <node concept="3cmrfG" id="3vUpEF4MJki" role="2$L3a6">
            <property role="3cmrfH" value="1" />
          </node>
        </node>
        <node concept="1ZRNhn" id="3vUpEF4MJkj" role="37wK5m">
          <node concept="3cmrfG" id="3vUpEF4MJkk" role="2$L3a6">
            <property role="3cmrfH" value="1" />
          </node>
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJkl" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJkm" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJkn" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJko" role="37wK5m">
          <property role="3cmrfH" value="44" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJkp" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJkq" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJkr" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJks" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJkt" role="37wK5m">
          <property role="3cmrfH" value="1" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJku" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJkv" role="37wK5m">
          <property role="3cmrfH" value="1" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJkw" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJkx" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJky" role="37wK5m">
          <property role="3cmrfH" value="2" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJkz" role="37wK5m">
          <property role="3cmrfH" value="2" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJk$" role="37wK5m">
          <property role="3cmrfH" value="68" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJk_" role="37wK5m">
          <property role="3cmrfH" value="1" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJkA" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4MJkB" role="37wK5m">
          <property role="3cmrfH" value="59" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6dOBq74QqWq" role="jymVt" />
    <node concept="Wx3nA" id="6dOBq74R6h8" role="jymVt">
      <property role="TrG5h" value="FAILURE_STREAM" />
      <property role="2dlcS1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="2dld4O" value="false" />
      <node concept="10Q1$e" id="6dOBq74R6h9" role="1tU5fm">
        <node concept="10PrrI" id="6dOBq74R6ha" role="10Q1$1" />
      </node>
      <node concept="3Tm1VV" id="6dOBq74R7la" role="1B3o_S" />
      <node concept="1rXfSq" id="3vUpEF4Ncpx" role="33vP2m">
        <ref role="37wK5l" node="3vUpEF4NaOX" resolve="stream" />
        <node concept="3cmrfG" id="3vUpEF4Ncx5" role="37wK5m">
          <property role="3cmrfH" value="71" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4Ncx6" role="37wK5m">
          <property role="3cmrfH" value="73" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4Ncx7" role="37wK5m">
          <property role="3cmrfH" value="70" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4Ncx8" role="37wK5m">
          <property role="3cmrfH" value="56" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4Ncx9" role="37wK5m">
          <property role="3cmrfH" value="57" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4Ncxa" role="37wK5m">
          <property role="3cmrfH" value="97" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4NdaP" role="37wK5m">
          <property role="3cmrfH" value="1" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4Ncxc" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4Ncxd" role="37wK5m">
          <property role="3cmrfH" value="1" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4Ncxe" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
        <node concept="1ZRNhn" id="3vUpEF4Ncxf" role="37wK5m">
          <node concept="3cmrfG" id="3vUpEF4Ncxg" role="2$L3a6">
            <property role="3cmrfH" value="128" />
          </node>
        </node>
        <node concept="1ZRNhn" id="3vUpEF4Ncxh" role="37wK5m">
          <node concept="3cmrfG" id="3vUpEF4Ncxi" role="2$L3a6">
            <property role="3cmrfH" value="1" />
          </node>
        </node>
        <node concept="3cmrfG" id="3vUpEF4Ncxj" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
        <node concept="1ZRNhn" id="3vUpEF4Ncxk" role="37wK5m">
          <node concept="3cmrfG" id="3vUpEF4Ncxl" role="2$L3a6">
            <property role="3cmrfH" value="1" />
          </node>
        </node>
        <node concept="1ZRNhn" id="3vUpEF4Ncxm" role="37wK5m">
          <node concept="3cmrfG" id="3vUpEF4Ncxn" role="2$L3a6">
            <property role="3cmrfH" value="1" />
          </node>
        </node>
        <node concept="1ZRNhn" id="3vUpEF4Ncxo" role="37wK5m">
          <node concept="3cmrfG" id="3vUpEF4Ncxp" role="2$L3a6">
            <property role="3cmrfH" value="1" />
          </node>
        </node>
        <node concept="3cmrfG" id="3vUpEF4Ncxq" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4Ncxr" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4Ncxs" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4Ncxt" role="37wK5m">
          <property role="3cmrfH" value="44" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4Ncxu" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4Ncxv" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4Ncxw" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4Ncxx" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4Ncxy" role="37wK5m">
          <property role="3cmrfH" value="1" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4Ncxz" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4Ncx$" role="37wK5m">
          <property role="3cmrfH" value="1" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4Ncx_" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4NcxA" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4NcxB" role="37wK5m">
          <property role="3cmrfH" value="2" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4NcxC" role="37wK5m">
          <property role="3cmrfH" value="2" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4NcxD" role="37wK5m">
          <property role="3cmrfH" value="68" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4NcxE" role="37wK5m">
          <property role="3cmrfH" value="1" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4NcxF" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
        <node concept="3cmrfG" id="3vUpEF4NcxG" role="37wK5m">
          <property role="3cmrfH" value="59" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6dOBq74R6aE" role="jymVt" />
    <node concept="2YIFZL" id="3vUpEF4NaOX" role="jymVt">
      <property role="TrG5h" value="stream" />
      <node concept="3clFbS" id="3vUpEF4NaOZ" role="3clF47">
        <node concept="3cpWs8" id="3vUpEF4Nhwv" role="3cqZAp">
          <node concept="3cpWsn" id="3vUpEF4Nhwy" role="3cpWs9">
            <property role="TrG5h" value="bytes" />
            <node concept="10Q1$e" id="3vUpEF4NhB4" role="1tU5fm">
              <node concept="10PrrI" id="3vUpEF4Nhwt" role="10Q1$1" />
            </node>
            <node concept="2ShNRf" id="3vUpEF4NhFI" role="33vP2m">
              <node concept="3$_iS1" id="3vUpEF4Niw_" role="2ShVmc">
                <node concept="3$GHV9" id="3vUpEF4NiwB" role="3$GQph">
                  <node concept="2OqwBi" id="3vUpEF4NiQd" role="3$I4v7">
                    <node concept="37vLTw" id="3vUpEF4NiBA" role="2Oq$k0">
                      <ref role="3cqZAo" node="3vUpEF4NaPj" resolve="values" />
                    </node>
                    <node concept="1Rwk04" id="3vUpEF4Nj8N" role="2OqNvi" />
                  </node>
                </node>
                <node concept="10PrrI" id="3vUpEF4Nis9" role="3$_nBY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="3vUpEF4NjoX" role="3cqZAp">
          <node concept="3clFbS" id="3vUpEF4NjoZ" role="2LFqv$">
            <node concept="3clFbF" id="3vUpEF4Nmul" role="3cqZAp">
              <node concept="37vLTI" id="3vUpEF4NnIz" role="3clFbG">
                <node concept="10QFUN" id="3vUpEF4NoE5" role="37vLTx">
                  <node concept="10PrrI" id="3vUpEF4NoE2" role="10QFUM" />
                  <node concept="AH0OO" id="3vUpEF4Nq5f" role="10QFUP">
                    <node concept="37vLTw" id="3vUpEF4NqgZ" role="AHEQo">
                      <ref role="3cqZAo" node="3vUpEF4Njp0" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="3vUpEF4NpHm" role="AHHXb">
                      <ref role="3cqZAo" node="3vUpEF4NaPj" resolve="values" />
                    </node>
                  </node>
                </node>
                <node concept="AH0OO" id="3vUpEF4NmzN" role="37vLTJ">
                  <node concept="37vLTw" id="3vUpEF4NmRE" role="AHEQo">
                    <ref role="3cqZAo" node="3vUpEF4Njp0" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="3vUpEF4Nmuj" role="AHHXb">
                    <ref role="3cqZAo" node="3vUpEF4Nhwy" resolve="bytes" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3vUpEF4Njp0" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="3vUpEF4NjvP" role="1tU5fm" />
            <node concept="3cmrfG" id="3vUpEF4Nj$g" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="3vUpEF4NkG1" role="1Dwp0S">
            <node concept="2OqwBi" id="3vUpEF4NlbK" role="3uHU7w">
              <node concept="37vLTw" id="3vUpEF4NkJI" role="2Oq$k0">
                <ref role="3cqZAo" node="3vUpEF4NaPj" resolve="values" />
              </node>
              <node concept="1Rwk04" id="3vUpEF4NloC" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="3vUpEF4NjBP" role="3uHU7B">
              <ref role="3cqZAo" node="3vUpEF4Njp0" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="3vUpEF4NmlV" role="1Dwrff">
            <node concept="37vLTw" id="3vUpEF4NmlX" role="2$L3a6">
              <ref role="3cqZAo" node="3vUpEF4Njp0" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3vUpEF4NrUU" role="3cqZAp">
          <node concept="37vLTw" id="3vUpEF4Ns8v" role="3cqZAk">
            <ref role="3cqZAo" node="3vUpEF4Nhwy" resolve="bytes" />
          </node>
        </node>
      </node>
      <node concept="10Q1$e" id="3vUpEF4NaPh" role="3clF45">
        <node concept="10PrrI" id="3vUpEF4NaPi" role="10Q1$1" />
      </node>
      <node concept="37vLTG" id="3vUpEF4NaPj" role="3clF46">
        <property role="TrG5h" value="values" />
        <node concept="8X2XB" id="3vUpEF4NaPk" role="1tU5fm">
          <node concept="10Oyi0" id="3vUpEF4NaPl" role="8Xvag" />
        </node>
      </node>
      <node concept="3Tm6S6" id="3vUpEF4NaPg" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4yQMaPlI25h" role="jymVt" />
    <node concept="2YIFZL" id="2Sv4ObXJ51E" role="jymVt">
      <property role="TrG5h" value="getProjectForNode" />
      <node concept="3clFbS" id="2Sv4ObXJ51I" role="3clF47">
        <node concept="3clFbJ" id="2Sv4ObXJ51J" role="3cqZAp">
          <node concept="3clFbC" id="2Sv4ObXJ51K" role="3clFbw">
            <node concept="37vLTw" id="2Sv4ObXJ51L" role="3uHU7B">
              <ref role="3cqZAo" node="2Sv4ObXJ51G" resolve="nodeRef" />
            </node>
            <node concept="10Nm6u" id="2Sv4ObXJ51M" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="2Sv4ObXJ51O" role="3clFbx">
            <node concept="3cpWs6" id="2Sv4ObXJ51P" role="3cqZAp">
              <node concept="10Nm6u" id="2Sv4ObXJlP0" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2Sv4ObXJ51S" role="3cqZAp">
          <node concept="3cpWsn" id="2Sv4ObXJ51R" role="3cpWs9">
            <property role="TrG5h" value="modelReference" />
            <node concept="3uibUv" id="2Sv4ObXJ51T" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
            </node>
            <node concept="2OqwBi" id="2Sv4ObXJ55Z" role="33vP2m">
              <node concept="37vLTw" id="2Sv4ObXJ54v" role="2Oq$k0">
                <ref role="3cqZAo" node="2Sv4ObXJ51G" resolve="nodeRef" />
              </node>
              <node concept="liA8E" id="2Sv4ObXJ560" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNodeReference.getModelReference()" resolve="getModelReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="38IyatNSTbz" role="3cqZAp">
          <node concept="3cpWsn" id="38IyatNSTb$" role="3cpWs9">
            <property role="TrG5h" value="projectManager" />
            <node concept="3uibUv" id="38IyatNSTb_" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~ProjectManager" resolve="ProjectManager" />
            </node>
            <node concept="2OqwBi" id="38IyatNSERz" role="33vP2m">
              <node concept="2OqwBi" id="38IyatNSER$" role="2Oq$k0">
                <node concept="2YIFZM" id="38IyatNSER_" role="2Oq$k0">
                  <ref role="37wK5l" to="3a50:~MPSCoreComponents.getInstance()" resolve="getInstance" />
                  <ref role="1Pybhc" to="3a50:~MPSCoreComponents" resolve="MPSCoreComponents" />
                </node>
                <node concept="liA8E" id="38IyatNSERA" role="2OqNvi">
                  <ref role="37wK5l" to="3a50:~MPSCoreComponents.getPlatform()" resolve="getPlatform" />
                </node>
              </node>
              <node concept="liA8E" id="38IyatNSERB" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="38IyatNSERC" role="37wK5m">
                  <ref role="3VsUkX" to="z1c3:~ProjectManager" resolve="ProjectManager" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2Sv4ObXJ52n" role="3cqZAp">
          <node concept="22lmx$" id="2FoDMB3xctf" role="3clFbw">
            <node concept="3clFbC" id="2Sv4ObXJ52o" role="3uHU7w">
              <node concept="37vLTw" id="2Sv4ObXJ52p" role="3uHU7B">
                <ref role="3cqZAo" node="38IyatNSTb$" resolve="projectManager" />
              </node>
              <node concept="10Nm6u" id="2Sv4ObXJ52q" role="3uHU7w" />
            </node>
            <node concept="3clFbC" id="2Sv4ObXJ51W" role="3uHU7B">
              <node concept="37vLTw" id="2Sv4ObXJ51X" role="3uHU7B">
                <ref role="3cqZAo" node="2Sv4ObXJ51R" resolve="modelReference" />
              </node>
              <node concept="10Nm6u" id="2Sv4ObXJ51Y" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="2Sv4ObXJ52s" role="3clFbx">
            <node concept="3cpWs6" id="2Sv4ObXJ52t" role="3cqZAp">
              <node concept="10Nm6u" id="2Sv4ObXJmOT" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="IcPzlqxWfy" role="3cqZAp">
          <node concept="3cpWsn" id="IcPzlqxWf_" role="3cpWs9">
            <property role="TrG5h" value="modelId" />
            <node concept="3uibUv" id="IcPzlqxWfB" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModelId" resolve="SModelId" />
            </node>
            <node concept="2OqwBi" id="IcPzlqxWfC" role="33vP2m">
              <node concept="37vLTw" id="IcPzlqxWfF" role="2Oq$k0">
                <ref role="3cqZAo" node="2Sv4ObXJ51R" resolve="modelReference" />
              </node>
              <node concept="liA8E" id="IcPzlqxWfG" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModelReference.getModelId()" resolve="getModelId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="38IyatNVR4P" role="3cqZAp">
          <node concept="1PaTwC" id="38IyatNVR4Q" role="1aUNEU">
            <node concept="3oM_SD" id="38IyatNVR4R" role="1PaTwD">
              <property role="3oM_SC" value="Check" />
            </node>
            <node concept="3oM_SD" id="38IyatNVS7V" role="1PaTwD">
              <property role="3oM_SC" value="first" />
            </node>
            <node concept="3oM_SD" id="38IyatNVS8H" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="38IyatNVRZ4" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="38IyatNVS06" role="1PaTwD">
              <property role="3oM_SC" value="provided" />
            </node>
            <node concept="3oM_SD" id="38IyatNVS48" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="38IyatNVS17" role="1PaTwD">
              <property role="3oM_SC" value="contains" />
            </node>
            <node concept="3oM_SD" id="38IyatNVS59" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="38IyatNVS6a" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="38IyatNEoP2" role="3cqZAp">
          <node concept="1Wc70l" id="38IyatNTae9" role="3clFbw">
            <node concept="3y3z36" id="38IyatNTf8O" role="3uHU7B">
              <node concept="10Nm6u" id="38IyatNTgWm" role="3uHU7w" />
              <node concept="37vLTw" id="38IyatNTdpl" role="3uHU7B">
                <ref role="3cqZAo" node="2FoDMB3vjj4" resolve="project" />
              </node>
            </node>
            <node concept="1rXfSq" id="38IyatNEoP5" role="3uHU7w">
              <ref role="37wK5l" node="38IyatNEfkp" resolve="ownsModel" />
              <node concept="37vLTw" id="38IyatNEoP6" role="37wK5m">
                <ref role="3cqZAo" node="2FoDMB3vjj4" resolve="project" />
              </node>
              <node concept="37vLTw" id="38IyatNEoP7" role="37wK5m">
                <ref role="3cqZAo" node="IcPzlqxWf_" resolve="modelId" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="38IyatNEoP8" role="3clFbx">
            <node concept="3cpWs6" id="38IyatNEoP9" role="3cqZAp">
              <node concept="37vLTw" id="38IyatNEoPa" role="3cqZAk">
                <ref role="3cqZAo" node="2FoDMB3vjj4" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="38IyatNVTlT" role="3cqZAp">
          <node concept="1PaTwC" id="38IyatNVTlU" role="1aUNEU">
            <node concept="3oM_SD" id="38IyatNVTlV" role="1PaTwD">
              <property role="3oM_SC" value="Scan" />
            </node>
            <node concept="3oM_SD" id="38IyatNVUhC" role="1PaTwD">
              <property role="3oM_SC" value="projects" />
            </node>
            <node concept="3oM_SD" id="38IyatNVUjq" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="38IyatNVUjr" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="38IyatNVUjs" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="2Sv4ObXJ52z" role="3cqZAp">
          <node concept="2OqwBi" id="2Sv4ObXJ56Q" role="1DdaDG">
            <node concept="37vLTw" id="2Sv4ObXJ55i" role="2Oq$k0">
              <ref role="3cqZAo" node="38IyatNSTb$" resolve="projectManager" />
            </node>
            <node concept="liA8E" id="2Sv4ObXJ56R" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~ProjectManager.getOpenedProjects()" resolve="getOpenedProjects" />
            </node>
          </node>
          <node concept="3cpWsn" id="2Sv4ObXJ52Q" role="1Duv9x">
            <property role="TrG5h" value="p" />
            <node concept="3uibUv" id="2Sv4ObXJ52S" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
          </node>
          <node concept="3clFbS" id="IcPzlqy4dM" role="2LFqv$">
            <node concept="3clFbJ" id="IcPzlqy4e$" role="3cqZAp">
              <node concept="1rXfSq" id="38IyatNEUj_" role="3clFbw">
                <ref role="37wK5l" node="38IyatNEfkp" resolve="ownsModel" />
                <node concept="37vLTw" id="38IyatNEUjA" role="37wK5m">
                  <ref role="3cqZAo" node="2Sv4ObXJ52Q" resolve="p" />
                </node>
                <node concept="37vLTw" id="38IyatNEUjB" role="37wK5m">
                  <ref role="3cqZAo" node="IcPzlqxWf_" resolve="modelId" />
                </node>
              </node>
              <node concept="3clFbS" id="IcPzlqy4eC" role="3clFbx">
                <node concept="3cpWs6" id="IcPzlqy4eD" role="3cqZAp">
                  <node concept="37vLTw" id="IcPzlqy4eE" role="3cqZAk">
                    <ref role="3cqZAo" node="2Sv4ObXJ52Q" resolve="p" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2Sv4ObXJ52U" role="3cqZAp">
          <node concept="10Nm6u" id="2Sv4ObXJn2Q" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="38IyatNSJ2W" role="1B3o_S" />
      <node concept="3uibUv" id="2Sv4ObXJ52X" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="37vLTG" id="2FoDMB3vjj4" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2FoDMB3vjj5" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="2Sv4ObXJ51G" role="3clF46">
        <property role="TrG5h" value="nodeRef" />
        <node concept="3uibUv" id="2Sv4ObXJ51H" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="38IyatNEfkp" role="jymVt">
      <property role="TrG5h" value="ownsModel" />
      <property role="2Lvdk3" value="ownsModel" />
      <node concept="10P_77" id="38IyatNEfkt" role="3clF45" />
      <node concept="37vLTG" id="38IyatNEfku" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3uibUv" id="38IyatNEfkw" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="38IyatNEfkx" role="3clF46">
        <property role="TrG5h" value="modelId" />
        <node concept="3uibUv" id="38IyatNEfkz" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModelId" resolve="SModelId" />
        </node>
      </node>
      <node concept="3clFbS" id="38IyatNEfk$" role="3clF47">
        <node concept="3cpWs6" id="38IyatNEfk_" role="3cqZAp">
          <node concept="2OqwBi" id="38IyatNEfkA" role="3cqZAk">
            <node concept="2OqwBi" id="38IyatNEfkD" role="2Oq$k0">
              <node concept="37vLTw" id="38IyatNEfkG" role="2Oq$k0">
                <ref role="3cqZAo" node="38IyatNEfku" resolve="p" />
              </node>
              <node concept="liA8E" id="38IyatNEfkH" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="38IyatNEfkI" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.computeReadAction(java.util.function.Supplier)" resolve="computeReadAction" />
              <node concept="1bVj0M" id="38IyatNEfkJ" role="37wK5m">
                <node concept="3clFbS" id="38IyatNEfkL" role="1bW5cS">
                  <node concept="1DcWWT" id="38IyatNEfkM" role="3cqZAp">
                    <node concept="2OqwBi" id="38IyatNEfkQ" role="1DdaDG">
                      <node concept="37vLTw" id="38IyatNEfkT" role="2Oq$k0">
                        <ref role="3cqZAo" node="38IyatNEfku" resolve="p" />
                      </node>
                      <node concept="liA8E" id="38IyatNEfkU" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~Project.getProjectModulesWithGenerators()" resolve="getProjectModulesWithGenerators" />
                      </node>
                    </node>
                    <node concept="3cpWsn" id="38IyatNEfkV" role="1Duv9x">
                      <property role="OYnhT" value="local variable" />
                      <property role="TrG5h" value="module" />
                      <property role="2Lvdk3" value="module" />
                      <node concept="3uibUv" id="38IyatNEfkX" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="38IyatNEfkY" role="2LFqv$">
                      <node concept="3clFbJ" id="38IyatNEfkZ" role="3cqZAp">
                        <node concept="3y3z36" id="38IyatNEfl2" role="3clFbw">
                          <node concept="2OqwBi" id="38IyatNEfl5" role="3uHU7B">
                            <node concept="37vLTw" id="38IyatNEfl8" role="2Oq$k0">
                              <ref role="3cqZAo" node="38IyatNEfkV" resolve="module" />
                            </node>
                            <node concept="liA8E" id="38IyatNEfl9" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~SModule.getModel(org.jetbrains.mps.openapi.model.SModelId)" resolve="getModel" />
                              <node concept="37vLTw" id="38IyatNEfla" role="37wK5m">
                                <ref role="3cqZAo" node="38IyatNEfkx" resolve="modelId" />
                              </node>
                            </node>
                          </node>
                          <node concept="10Nm6u" id="38IyatNEflb" role="3uHU7w" />
                        </node>
                        <node concept="3clFbS" id="38IyatNEflc" role="3clFbx">
                          <node concept="3cpWs6" id="38IyatNEfld" role="3cqZAp">
                            <node concept="3clFbT" id="38IyatNEfle" role="3cqZAk">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="38IyatNEflf" role="3cqZAp">
                    <node concept="3clFbT" id="38IyatNEflg" role="3cqZAk" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="38IyatNEflh" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2FoDMB3uuor" role="jymVt" />
    <node concept="2YIFZL" id="3naYLZo3_69" role="jymVt">
      <property role="TrG5h" value="openNode" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3naYLZo3_6b" role="3clF47">
        <node concept="3clFbJ" id="12oNA5TXt3R" role="3cqZAp">
          <node concept="3clFbS" id="12oNA5TXt3T" role="3clFbx">
            <node concept="3cpWs6" id="12oNA5TXtx8" role="3cqZAp">
              <node concept="10Nm6u" id="5ueUq77WuIA" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="12oNA5TXtmI" role="3clFbw">
            <node concept="10Nm6u" id="12oNA5TXtrM" role="3uHU7w" />
            <node concept="37vLTw" id="12oNA5TXt9e" role="3uHU7B">
              <ref role="3cqZAo" node="3naYLZo3_73" resolve="nodeReference" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ETkb2gSM$O" role="3cqZAp" />
        <node concept="3cpWs8" id="3naYLZo3_6c" role="3cqZAp">
          <node concept="3cpWsn" id="3naYLZo3_6d" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="repository" />
            <node concept="3uibUv" id="3naYLZo3_6e" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="3naYLZo3_6f" role="33vP2m">
              <node concept="37vLTw" id="3naYLZo3_6g" role="2Oq$k0">
                <ref role="3cqZAo" node="3naYLZo3_71" resolve="project" />
              </node>
              <node concept="liA8E" id="3naYLZo3_6h" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="12oNA5TWLqX" role="3cqZAp" />
        <node concept="3clFbF" id="6ETkb2gSSjp" role="3cqZAp">
          <node concept="2OqwBi" id="6ETkb2gT7LR" role="3clFbG">
            <node concept="2OqwBi" id="6ETkb2gT4vP" role="2Oq$k0">
              <node concept="2OqwBi" id="6ETkb2gT1pN" role="2Oq$k0">
                <node concept="2ShNRf" id="6ETkb2gSSjl" role="2Oq$k0">
                  <node concept="1pGfFk" id="6ETkb2gSYv6" role="2ShVmc">
                    <ref role="37wK5l" to="kz9k:~EditorNavigator.&lt;init&gt;(jetbrains.mps.project.Project)" resolve="EditorNavigator" />
                    <node concept="37vLTw" id="6ETkb2gSZu3" role="37wK5m">
                      <ref role="3cqZAo" node="3naYLZo3_71" resolve="project" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6ETkb2gT2tL" role="2OqNvi">
                  <ref role="37wK5l" to="kz9k:~EditorNavigator.shallFocus(boolean)" resolve="shallFocus" />
                  <node concept="3clFbT" id="6ETkb2gT3u8" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6ETkb2gT5F6" role="2OqNvi">
                <ref role="37wK5l" to="kz9k:~EditorNavigator.shallSelect(boolean)" resolve="shallSelect" />
                <node concept="3clFbT" id="6ETkb2gT6Hc" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6ETkb2gT8WJ" role="2OqNvi">
              <ref role="37wK5l" to="kz9k:~EditorNavigator.open(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="open" />
              <node concept="37vLTw" id="6ETkb2gTa5m" role="37wK5m">
                <ref role="3cqZAo" node="3naYLZo3_73" resolve="nodeReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="12oNA5TZV5y" role="3cqZAp" />
        <node concept="3clFbF" id="71N0yF1Nt3Y" role="3cqZAp">
          <node concept="2YIFZM" id="71N0yF1NwbW" role="3clFbG">
            <ref role="37wK5l" to="3a50:~ThreadUtils.runInUIThreadNoWait(java.lang.Runnable)" resolve="runInUIThreadNoWait" />
            <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
            <node concept="1bVj0M" id="71N0yF1Ny9m" role="37wK5m">
              <node concept="3clFbS" id="71N0yF1Ny9n" role="1bW5cS">
                <node concept="3clFbF" id="6ETkb2gTuFr" role="3cqZAp">
                  <node concept="1rXfSq" id="6ETkb2gTuFq" role="3clFbG">
                    <ref role="37wK5l" node="3whKZwB1k79" resolve="requestFocus" />
                    <node concept="37vLTw" id="6ETkb2gTvIb" role="37wK5m">
                      <ref role="3cqZAo" node="3naYLZo3_71" resolve="project" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ETkb2gTTcI" role="3cqZAp" />
        <node concept="3cpWs6" id="6ETkb2gTUiM" role="3cqZAp">
          <node concept="2OqwBi" id="6ETkb2gU7Jj" role="3cqZAk">
            <node concept="2ShNRf" id="6ETkb2gTWkU" role="2Oq$k0">
              <node concept="1pGfFk" id="6ETkb2gU5su" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository)" resolve="ModelAccessHelper" />
                <node concept="37vLTw" id="6ETkb2gU6vp" role="37wK5m">
                  <ref role="3cqZAo" node="3naYLZo3_6d" resolve="repository" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6ETkb2gU8PD" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="6ETkb2gU9UC" role="37wK5m">
                <node concept="3clFbS" id="6ETkb2gU9UD" role="1bW5cS">
                  <node concept="3clFbF" id="6ETkb2gUbdC" role="3cqZAp">
                    <node concept="2OqwBi" id="6ETkb2gUbo_" role="3clFbG">
                      <node concept="37vLTw" id="6ETkb2gUbdB" role="2Oq$k0">
                        <ref role="3cqZAo" node="3naYLZo3_73" resolve="nodeReference" />
                      </node>
                      <node concept="liA8E" id="6ETkb2gUcji" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                        <node concept="37vLTw" id="6ETkb2gUdpi" role="37wK5m">
                          <ref role="3cqZAo" node="3naYLZo3_6d" resolve="repository" />
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
      <node concept="3uibUv" id="5ueUq77WuzU" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="37vLTG" id="3naYLZo3_71" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3naYLZo3_72" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="3naYLZo3_73" role="3clF46">
        <property role="TrG5h" value="nodeReference" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3naYLZo3_74" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3naYLZo3_75" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7jkoQKX7ALx" role="jymVt" />
    <node concept="2YIFZL" id="7jkoQKX7Cu8" role="jymVt">
      <property role="TrG5h" value="getProjectRelativeFile" />
      <node concept="3clFbS" id="7jkoQKX7Cub" role="3clF47">
        <node concept="3cpWs8" id="7jkoQKX7Ej9" role="3cqZAp">
          <node concept="3cpWsn" id="7jkoQKX7Eja" role="3cpWs9">
            <property role="TrG5h" value="ideaProject" />
            <node concept="3uibUv" id="7jkoQKX7Ee0" role="1tU5fm">
              <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
            </node>
            <node concept="1rXfSq" id="7jkoQKX7Ejb" role="33vP2m">
              <ref role="37wK5l" node="7jkoQKX7_tW" resolve="ideaProject" />
              <node concept="37vLTw" id="7jkoQKX7Ejc" role="37wK5m">
                <ref role="3cqZAo" node="7jkoQKX7D8m" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jkoQKX7ENS" role="3cqZAp">
          <node concept="3cpWsn" id="7jkoQKX7ENT" role="3cpWs9">
            <property role="TrG5h" value="projectFile" />
            <node concept="3uibUv" id="7jkoQKX7ENU" role="1tU5fm">
              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
            </node>
            <node concept="2YIFZM" id="7jkoQKX7ENV" role="33vP2m">
              <ref role="1Pybhc" to="4nm9:~ProjectUtil" resolve="ProjectUtil" />
              <ref role="37wK5l" to="4nm9:~ProjectUtil.guessProjectDir(com.intellij.openapi.project.Project)" resolve="guessProjectDir" />
              <node concept="37vLTw" id="7jkoQKX7ENW" role="37wK5m">
                <ref role="3cqZAo" node="7jkoQKX7Eja" resolve="ideaProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7jkoQKX7G2x" role="3cqZAp">
          <node concept="3clFbS" id="7jkoQKX7G2z" role="3clFbx">
            <node concept="3cpWs6" id="7jkoQKX7GOE" role="3cqZAp">
              <node concept="10Nm6u" id="7jkoQKX7GS1" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="7jkoQKX7GDF" role="3clFbw">
            <node concept="10Nm6u" id="7jkoQKX7GGN" role="3uHU7w" />
            <node concept="37vLTw" id="7jkoQKX7Go5" role="3uHU7B">
              <ref role="3cqZAo" node="7jkoQKX7ENT" resolve="projectFile" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7jkoQKX7F29" role="3cqZAp">
          <node concept="2OqwBi" id="7jkoQKX7FlU" role="3cqZAk">
            <node concept="37vLTw" id="7jkoQKX7FlV" role="2Oq$k0">
              <ref role="3cqZAo" node="7jkoQKX7ENT" resolve="projectFile" />
            </node>
            <node concept="liA8E" id="7jkoQKX7FlW" role="2OqNvi">
              <ref role="37wK5l" to="jlff:~VirtualFile.findFileByRelativePath(java.lang.String)" resolve="findFileByRelativePath" />
              <node concept="37vLTw" id="7jkoQKX7FwF" role="37wK5m">
                <ref role="3cqZAo" node="7jkoQKX7CYt" resolve="path" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7jkoQKX7BFz" role="1B3o_S" />
      <node concept="3uibUv" id="7jkoQKX7Cp0" role="3clF45">
        <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
      </node>
      <node concept="37vLTG" id="7jkoQKX7D8m" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7jkoQKX7FH9" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="7jkoQKX7CYt" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="17QB3L" id="7jkoQKX7CYs" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7jkoQKX7GYP" role="jymVt" />
    <node concept="2YIFZL" id="7jkoQKX7IX9" role="jymVt">
      <property role="TrG5h" value="findFilesByName" />
      <node concept="3clFbS" id="7jkoQKX7IXc" role="3clF47">
        <node concept="3cpWs8" id="7jkoQKX8aQ5" role="3cqZAp">
          <node concept="3cpWsn" id="7jkoQKX8aQ6" role="3cpWs9">
            <property role="TrG5h" value="ideaProject" />
            <node concept="3uibUv" id="7jkoQKX8bAx" role="1tU5fm">
              <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
            </node>
            <node concept="1rXfSq" id="7jkoQKX8bfm" role="33vP2m">
              <ref role="37wK5l" node="7jkoQKX7_tW" resolve="ideaProject" />
              <node concept="37vLTw" id="7jkoQKX8bpY" role="37wK5m">
                <ref role="3cqZAo" node="7jkoQKX7Jvo" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="52yXSKPxDpc" role="3cqZAp">
          <node concept="3cpWsn" id="52yXSKPxDpd" role="3cpWs9">
            <property role="TrG5h" value="function" />
            <node concept="3uibUv" id="52yXSKPxGg8" role="1tU5fm">
              <ref role="3uigEE" to="zn9m:~Computable" resolve="Computable" />
              <node concept="3uibUv" id="52yXSKPxDpa" role="11_B2D">
                <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                <node concept="3uibUv" id="52yXSKPxDpb" role="11_B2D">
                  <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                </node>
              </node>
            </node>
            <node concept="1bVj0M" id="52yXSKPxDpe" role="33vP2m">
              <node concept="3clFbS" id="52yXSKPxDpf" role="1bW5cS">
                <node concept="3cpWs6" id="52yXSKPxDpg" role="3cqZAp">
                  <node concept="2YIFZM" id="52yXSKPxDph" role="3cqZAk">
                    <ref role="1Pybhc" to="fpru:~FilenameIndex" resolve="FilenameIndex" />
                    <ref role="37wK5l" to="fpru:~FilenameIndex.getVirtualFilesByName(com.intellij.openapi.project.Project,java.lang.String,com.intellij.psi.search.GlobalSearchScope)" resolve="getVirtualFilesByName" />
                    <node concept="37vLTw" id="52yXSKPxDpi" role="37wK5m">
                      <ref role="3cqZAo" node="7jkoQKX8aQ6" resolve="ideaProject" />
                    </node>
                    <node concept="37vLTw" id="52yXSKPxDpj" role="37wK5m">
                      <ref role="3cqZAo" node="7jkoQKX7JUW" resolve="fileName" />
                    </node>
                    <node concept="2YIFZM" id="52yXSKPxDpk" role="37wK5m">
                      <ref role="1Pybhc" to="fpru:~GlobalSearchScope" resolve="GlobalSearchScope" />
                      <ref role="37wK5l" to="fpru:~GlobalSearchScope.everythingScope(com.intellij.openapi.project.Project)" resolve="everythingScope" />
                      <node concept="37vLTw" id="52yXSKPxDpl" role="37wK5m">
                        <ref role="3cqZAo" node="7jkoQKX8aQ6" resolve="ideaProject" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3vUpEF4LXBu" role="3cqZAp">
          <node concept="2OqwBi" id="3vUpEF4LXVV" role="3clFbG">
            <node concept="2YIFZM" id="3vUpEF4LXGX" role="2Oq$k0">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
            <node concept="liA8E" id="3vUpEF4LYgT" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.runReadAction(com.intellij.openapi.util.Computable)" resolve="runReadAction" />
              <node concept="37vLTw" id="52yXSKPxDpm" role="37wK5m">
                <ref role="3cqZAo" node="52yXSKPxDpd" resolve="function" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7jkoQKX7HUx" role="1B3o_S" />
      <node concept="A3Dl8" id="7jkoQKX7IFJ" role="3clF45">
        <node concept="3uibUv" id="7jkoQKX7IQC" role="A3Ik2">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
      <node concept="37vLTG" id="7jkoQKX7Jvo" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7jkoQKX8agW" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="7jkoQKX7JUW" role="3clF46">
        <property role="TrG5h" value="fileName" />
        <node concept="17QB3L" id="7jkoQKX7K61" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7jkoQKX5Nxu" role="jymVt" />
    <node concept="2YIFZL" id="7jkoQKX5Q7d" role="jymVt">
      <property role="TrG5h" value="tryOpenNodeByGeneratedFile" />
      <node concept="3clFbS" id="7jkoQKX5Q7g" role="3clF47">
        <node concept="3cpWs8" id="7jkoQKX5X9c" role="3cqZAp">
          <node concept="3cpWsn" id="7jkoQKX5X9f" role="3cpWs9">
            <property role="TrG5h" value="fileName" />
            <node concept="17QB3L" id="7jkoQKX5X9b" role="1tU5fm" />
            <node concept="2OqwBi" id="7jkoQKX5XuD" role="33vP2m">
              <node concept="37vLTw" id="7jkoQKX5Xd9" role="2Oq$k0">
                <ref role="3cqZAo" node="7jkoQKX5QG3" resolve="file" />
              </node>
              <node concept="liA8E" id="7jkoQKX5ZPt" role="2OqNvi">
                <ref role="37wK5l" to="jlff:~VirtualFile.getName()" resolve="getName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jkoQKX6011" role="3cqZAp">
          <node concept="3cpWsn" id="7jkoQKX6014" role="3cpWs9">
            <property role="TrG5h" value="path" />
            <node concept="17QB3L" id="7jkoQKX600Z" role="1tU5fm" />
            <node concept="2OqwBi" id="7jkoQKX60k$" role="33vP2m">
              <node concept="37vLTw" id="7jkoQKX606l" role="2Oq$k0">
                <ref role="3cqZAo" node="7jkoQKX5QG3" resolve="file" />
              </node>
              <node concept="liA8E" id="7jkoQKX60Ke" role="2OqNvi">
                <ref role="37wK5l" to="jlff:~VirtualFile.getCanonicalPath()" resolve="getCanonicalPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jkoQKX62ti" role="3cqZAp" />
        <node concept="3cpWs8" id="7jkoQKX61e9" role="3cqZAp">
          <node concept="3cpWsn" id="7jkoQKX61ea" role="3cpWs9">
            <property role="TrG5h" value="sourceGen" />
            <node concept="10Oyi0" id="7jkoQKX61eb" role="1tU5fm" />
            <node concept="2OqwBi" id="7jkoQKX61ec" role="33vP2m">
              <node concept="37vLTw" id="7jkoQKX63xg" role="2Oq$k0">
                <ref role="3cqZAo" node="7jkoQKX6014" resolve="path" />
              </node>
              <node concept="liA8E" id="7jkoQKX61ee" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.lastIndexOf(java.lang.String)" resolve="lastIndexOf" />
                <node concept="37vLTw" id="7jkoQKX61em" role="37wK5m">
                  <ref role="3cqZAo" node="7prpbsC604h" resolve="SOURCE_GEN" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7jkoQKX65ln" role="3cqZAp">
          <node concept="3clFbS" id="7jkoQKX65lp" role="3clFbx">
            <node concept="3cpWs6" id="7jkoQKX68gl" role="3cqZAp">
              <node concept="3clFbT" id="7jkoQKX6zIT" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="7jkoQKX675f" role="3clFbw">
            <node concept="37vLTw" id="7jkoQKX65Xb" role="3uHU7B">
              <ref role="3cqZAo" node="7jkoQKX61ea" resolve="sourceGen" />
            </node>
            <node concept="3cmrfG" id="7jkoQKX67IV" role="3uHU7w">
              <property role="3cmrfH" value="-1" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jkoQKX61eo" role="3cqZAp">
          <node concept="3cpWsn" id="7jkoQKX61ep" role="3cpWs9">
            <property role="TrG5h" value="unitNamePosition" />
            <node concept="10Oyi0" id="7jkoQKX61eq" role="1tU5fm" />
            <node concept="3K4zz7" id="7jkoQKX61er" role="33vP2m">
              <node concept="3cmrfG" id="7jkoQKX61es" role="3K4E3e">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3clFbC" id="7jkoQKX61et" role="3K4Cdx">
                <node concept="3cmrfG" id="7jkoQKX61eu" role="3uHU7w">
                  <property role="3cmrfH" value="-1" />
                </node>
                <node concept="37vLTw" id="7jkoQKX61ev" role="3uHU7B">
                  <ref role="3cqZAo" node="7jkoQKX61ea" resolve="sourceGen" />
                </node>
              </node>
              <node concept="3cpWs3" id="7jkoQKX61ew" role="3K4GZi">
                <node concept="2OqwBi" id="7jkoQKX61ex" role="3uHU7w">
                  <node concept="37vLTw" id="7jkoQKX61eF" role="2Oq$k0">
                    <ref role="3cqZAo" node="7prpbsC604h" resolve="SOURCE_GEN" />
                  </node>
                  <node concept="liA8E" id="7jkoQKX61ez" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                  </node>
                </node>
                <node concept="37vLTw" id="7jkoQKX61e$" role="3uHU7B">
                  <ref role="3cqZAo" node="7jkoQKX61ea" resolve="sourceGen" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jkoQKX6f4P" role="3cqZAp">
          <node concept="3cpWsn" id="7jkoQKX6f4Q" role="3cpWs9">
            <property role="TrG5h" value="ext" />
            <node concept="3uibUv" id="7jkoQKX6dNK" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2OqwBi" id="7jkoQKX6f4R" role="33vP2m">
              <node concept="37vLTw" id="7jkoQKX6f4S" role="2Oq$k0">
                <ref role="3cqZAo" node="7jkoQKX5QG3" resolve="file" />
              </node>
              <node concept="liA8E" id="7jkoQKX6f4T" role="2OqNvi">
                <ref role="37wK5l" to="jlff:~VirtualFile.getExtension()" resolve="getExtension" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jkoQKX6hoJ" role="3cqZAp">
          <node concept="3cpWsn" id="7jkoQKX6hoM" role="3cpWs9">
            <property role="TrG5h" value="extLength" />
            <node concept="10Oyi0" id="7jkoQKX6hoH" role="1tU5fm" />
            <node concept="3K4zz7" id="7jkoQKX6i6j" role="33vP2m">
              <node concept="3cmrfG" id="7jkoQKX6iaM" role="3K4E3e">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="3cpWs3" id="7jkoQKX6ljm" role="3K4GZi">
                <node concept="3cmrfG" id="7jkoQKX6lmv" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="7jkoQKX6j_L" role="3uHU7B">
                  <node concept="37vLTw" id="7jkoQKX6ihJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="7jkoQKX6f4Q" resolve="ext" />
                  </node>
                  <node concept="liA8E" id="7jkoQKX6kga" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="7jkoQKX6hVr" role="3K4Cdx">
                <node concept="10Nm6u" id="7jkoQKX6hYw" role="3uHU7w" />
                <node concept="37vLTw" id="7jkoQKX6hDp" role="3uHU7B">
                  <ref role="3cqZAo" node="7jkoQKX6f4Q" resolve="ext" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jkoQKX61eH" role="3cqZAp">
          <node concept="3cpWsn" id="7jkoQKX61eI" role="3cpWs9">
            <property role="TrG5h" value="unitNameEndPostion" />
            <node concept="10Oyi0" id="7jkoQKX61eJ" role="1tU5fm" />
            <node concept="3cpWsd" id="7jkoQKX61eK" role="33vP2m">
              <node concept="2OqwBi" id="7jkoQKX61eL" role="3uHU7B">
                <node concept="37vLTw" id="7jkoQKX63Db" role="2Oq$k0">
                  <ref role="3cqZAo" node="7jkoQKX6014" resolve="path" />
                </node>
                <node concept="liA8E" id="7jkoQKX61eN" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                </node>
              </node>
              <node concept="37vLTw" id="7jkoQKX6mgH" role="3uHU7w">
                <ref role="3cqZAo" node="7jkoQKX6hoM" resolve="extLength" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jkoQKX61eR" role="3cqZAp">
          <node concept="3cpWsn" id="7jkoQKX61eS" role="3cpWs9">
            <property role="TrG5h" value="unitName" />
            <node concept="17QB3L" id="7jkoQKX61eT" role="1tU5fm" />
            <node concept="2OqwBi" id="7jkoQKX61eU" role="33vP2m">
              <node concept="2OqwBi" id="7jkoQKX61eV" role="2Oq$k0">
                <node concept="37vLTw" id="7jkoQKX64bZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="7jkoQKX6014" resolve="path" />
                </node>
                <node concept="liA8E" id="7jkoQKX61eX" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                  <node concept="37vLTw" id="7jkoQKX61eY" role="37wK5m">
                    <ref role="3cqZAo" node="7jkoQKX61ep" resolve="unitNamePosition" />
                  </node>
                  <node concept="37vLTw" id="7jkoQKX61eZ" role="37wK5m">
                    <ref role="3cqZAo" node="7jkoQKX61eI" resolve="unitNameEndPostion" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7jkoQKX61f0" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.replace(char,char)" resolve="replace" />
                <node concept="1Xhbcc" id="7jkoQKX61f1" role="37wK5m">
                  <property role="1XhdNS" value="/" />
                </node>
                <node concept="1Xhbcc" id="7jkoQKX61f2" role="37wK5m">
                  <property role="1XhdNS" value="." />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jkoQKX61f3" role="3cqZAp">
          <node concept="3cpWsn" id="7jkoQKX61f4" role="3cpWs9">
            <property role="TrG5h" value="modelNameEndPosition" />
            <node concept="10Oyi0" id="7jkoQKX61f5" role="1tU5fm" />
            <node concept="2OqwBi" id="7jkoQKX61f6" role="33vP2m">
              <node concept="37vLTw" id="7jkoQKX61f7" role="2Oq$k0">
                <ref role="3cqZAo" node="7jkoQKX61eS" resolve="unitName" />
              </node>
              <node concept="liA8E" id="7jkoQKX61f8" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.lastIndexOf(java.lang.String)" resolve="lastIndexOf" />
                <node concept="Xl_RD" id="7jkoQKX61f9" role="37wK5m">
                  <property role="Xl_RC" value="." />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7jkoQKX69Yq" role="3cqZAp">
          <node concept="3clFbS" id="7jkoQKX69Yr" role="3clFbx">
            <node concept="3cpWs6" id="7jkoQKX6awo" role="3cqZAp">
              <node concept="3clFbT" id="7jkoQKX6$oB" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="7jkoQKX69YA" role="3clFbw">
            <node concept="3cmrfG" id="7jkoQKX69YB" role="3uHU7w">
              <property role="3cmrfH" value="-1" />
            </node>
            <node concept="37vLTw" id="7jkoQKX69YC" role="3uHU7B">
              <ref role="3cqZAo" node="7jkoQKX61f4" resolve="modelNameEndPosition" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jkoQKX6bqr" role="3cqZAp">
          <node concept="3cpWsn" id="7jkoQKX6bqs" role="3cpWs9">
            <property role="TrG5h" value="modelName" />
            <node concept="17QB3L" id="7jkoQKX6bqt" role="1tU5fm" />
            <node concept="2OqwBi" id="7jkoQKX6bqz" role="33vP2m">
              <node concept="liA8E" id="7jkoQKX6bq$" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                <node concept="3cmrfG" id="7jkoQKX6bq_" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="7jkoQKX6bqA" role="37wK5m">
                  <ref role="3cqZAo" node="7jkoQKX61f4" resolve="modelNameEndPosition" />
                </node>
              </node>
              <node concept="37vLTw" id="7jkoQKX6bqB" role="2Oq$k0">
                <ref role="3cqZAo" node="7jkoQKX61eS" resolve="unitName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jkoQKX6mLt" role="3cqZAp" />
        <node concept="3cpWs8" id="7jkoQKX6uRr" role="3cqZAp">
          <node concept="3cpWsn" id="7jkoQKX6uRs" role="3cpWs9">
            <property role="TrG5h" value="debugInfos" />
            <node concept="3uibUv" id="7jkoQKX6uLa" role="1tU5fm">
              <ref role="3uigEE" to="1ctc:~Stream" resolve="Stream" />
              <node concept="3uibUv" id="7jkoQKX6uLd" role="11_B2D">
                <ref role="3uigEE" to="fwk:~DebugInfo" resolve="DebugInfo" />
              </node>
            </node>
            <node concept="2OqwBi" id="7jkoQKX6uRt" role="33vP2m">
              <node concept="2ShNRf" id="7jkoQKX6uRu" role="2Oq$k0">
                <node concept="1pGfFk" id="7jkoQKX6uRv" role="2ShVmc">
                  <ref role="37wK5l" to="fwk:~DefaultTraceInfoProvider.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository)" resolve="DefaultTraceInfoProvider" />
                  <node concept="2OqwBi" id="7jkoQKX6uRw" role="37wK5m">
                    <node concept="37vLTw" id="7jkoQKX6vNT" role="2Oq$k0">
                      <ref role="3cqZAo" node="7jkoQKX5QpQ" resolve="project" />
                    </node>
                    <node concept="liA8E" id="7jkoQKX6uRy" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7jkoQKX6uRz" role="2OqNvi">
                <ref role="37wK5l" to="fwk:~TraceInfoProvider.debugInfo(java.lang.String)" resolve="debugInfo" />
                <node concept="37vLTw" id="7jkoQKX6uR$" role="37wK5m">
                  <ref role="3cqZAo" node="7jkoQKX6bqs" resolve="modelName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jkoQKX6GgF" role="3cqZAp">
          <node concept="3cpWsn" id="7jkoQKX6GgL" role="3cpWs9">
            <property role="TrG5h" value="it" />
            <node concept="3uibUv" id="7jkoQKX6GgN" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
              <node concept="3uibUv" id="7jkoQKX6Jkz" role="11_B2D">
                <ref role="3uigEE" to="fwk:~DebugInfo" resolve="DebugInfo" />
              </node>
            </node>
            <node concept="2OqwBi" id="7jkoQKX6JIT" role="33vP2m">
              <node concept="37vLTw" id="7jkoQKX6JsU" role="2Oq$k0">
                <ref role="3cqZAo" node="7jkoQKX6uRs" resolve="debugInfos" />
              </node>
              <node concept="liA8E" id="7jkoQKX6Lsd" role="2OqNvi">
                <ref role="37wK5l" to="1ctc:~BaseStream.iterator()" resolve="iterator" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jkoQKX6YXJ" role="3cqZAp">
          <node concept="3cpWsn" id="7jkoQKX6YXM" role="3cpWs9">
            <property role="TrG5h" value="nodeChooser" />
            <node concept="1ajhzC" id="7jkoQKX6YXF" role="1tU5fm">
              <node concept="3uibUv" id="7jkoQKX6ZRN" role="1ajl9A">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="3uibUv" id="7jkoQKX7czL" role="1ajw0F">
                <ref role="3uigEE" to="fwk:~DebugInfo" resolve="DebugInfo" />
              </node>
            </node>
            <node concept="3K4zz7" id="7jkoQKX72KY" role="33vP2m">
              <node concept="3y3z36" id="7jkoQKX72xG" role="3K4Cdx">
                <node concept="10Nm6u" id="7jkoQKX72GN" role="3uHU7w" />
                <node concept="37vLTw" id="7jkoQKX71A2" role="3uHU7B">
                  <ref role="3cqZAo" node="7jkoQKX6vad" resolve="line" />
                </node>
              </node>
              <node concept="1bVj0M" id="7jkoQKX6SHc" role="3K4E3e">
                <node concept="3clFbS" id="7jkoQKX6SHe" role="1bW5cS">
                  <node concept="3clFbF" id="7jkoQKX6U29" role="3cqZAp">
                    <node concept="2OqwBi" id="7jkoQKX6Tnn" role="3clFbG">
                      <node concept="2ShNRf" id="7jkoQKX6Tno" role="2Oq$k0">
                        <node concept="1pGfFk" id="7jkoQKX6Tnp" role="2ShVmc">
                          <ref role="37wK5l" to="fwk:~BaseLanguageNodeLookup.&lt;init&gt;(jetbrains.mps.textgen.trace.DebugInfo)" resolve="BaseLanguageNodeLookup" />
                          <node concept="37vLTw" id="7jkoQKX73gQ" role="37wK5m">
                            <ref role="3cqZAo" node="7jkoQKX6TbR" resolve="info" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="7jkoQKX6Tnt" role="2OqNvi">
                        <ref role="37wK5l" to="fwk:~BaseLanguageNodeLookup.getNodeAt(java.lang.String,int)" resolve="getNodeAt" />
                        <node concept="37vLTw" id="7jkoQKX6Tnu" role="37wK5m">
                          <ref role="3cqZAo" node="7jkoQKX5X9f" resolve="fileName" />
                        </node>
                        <node concept="37vLTw" id="7jkoQKX6Tnv" role="37wK5m">
                          <ref role="3cqZAo" node="7jkoQKX6vad" resolve="line" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="7jkoQKX6TbR" role="1bW2Oz">
                  <property role="TrG5h" value="info" />
                  <node concept="3uibUv" id="7jkoQKX6TbQ" role="1tU5fm">
                    <ref role="3uigEE" to="fwk:~DebugInfo" resolve="DebugInfo" />
                  </node>
                </node>
              </node>
              <node concept="1bVj0M" id="7jkoQKX73j2" role="3K4GZi">
                <node concept="3clFbS" id="7jkoQKX73j3" role="1bW5cS">
                  <node concept="3cpWs8" id="7jkoQKX76OY" role="3cqZAp">
                    <node concept="3cpWsn" id="7jkoQKX76OZ" role="3cpWs9">
                      <property role="TrG5h" value="roots" />
                      <node concept="2OqwBi" id="7jkoQKX76P0" role="33vP2m">
                        <node concept="liA8E" id="7jkoQKX76P1" role="2OqNvi">
                          <ref role="37wK5l" to="fwk:~DebugInfo.getRoots()" resolve="getRoots" />
                        </node>
                        <node concept="37vLTw" id="7jkoQKX76P2" role="2Oq$k0">
                          <ref role="3cqZAo" node="7jkoQKX73jb" resolve="info" />
                        </node>
                      </node>
                      <node concept="A3Dl8" id="7jkoQKX76XU" role="1tU5fm">
                        <node concept="3uibUv" id="7jkoQKX76XV" role="A3Ik2">
                          <ref role="3uigEE" to="fwk:~DebugInfoRoot" resolve="DebugInfoRoot" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7jkoQKX73j4" role="3cqZAp">
                    <node concept="2OqwBi" id="7jkoQKX7bF8" role="3clFbG">
                      <node concept="2OqwBi" id="7jkoQKX76Ad" role="2Oq$k0">
                        <node concept="37vLTw" id="7jkoQKX76P3" role="2Oq$k0">
                          <ref role="3cqZAo" node="7jkoQKX76OZ" resolve="roots" />
                        </node>
                        <node concept="1z4cxt" id="7jkoQKX7bi1" role="2OqNvi">
                          <node concept="1bVj0M" id="7jkoQKX7bi3" role="23t8la">
                            <node concept="3clFbS" id="7jkoQKX7bi4" role="1bW5cS">
                              <node concept="3clFbF" id="7jkoQKX7bi5" role="3cqZAp">
                                <node concept="2OqwBi" id="7jkoQKX7bi6" role="3clFbG">
                                  <node concept="2OqwBi" id="7jkoQKX7bi7" role="2Oq$k0">
                                    <node concept="37vLTw" id="7jkoQKX7bi8" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5W7E4fV0Xp8" resolve="it" />
                                    </node>
                                    <node concept="liA8E" id="7jkoQKX7bi9" role="2OqNvi">
                                      <ref role="37wK5l" to="fwk:~DebugInfoRoot.getFileNames()" resolve="getFileNames" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="7jkoQKX7bia" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object)" resolve="contains" />
                                    <node concept="37vLTw" id="7jkoQKX7bib" role="37wK5m">
                                      <ref role="3cqZAo" node="7jkoQKX5X9f" resolve="fileName" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="5W7E4fV0Xp8" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="5W7E4fV0Xp9" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="7jkoQKX7c4P" role="2OqNvi">
                        <ref role="37wK5l" to="fwk:~DebugInfoRoot.getNodeRef()" resolve="getNodeRef" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="7jkoQKX73jb" role="1bW2Oz">
                  <property role="TrG5h" value="info" />
                  <node concept="3uibUv" id="7jkoQKX73jc" role="1tU5fm">
                    <ref role="3uigEE" to="fwk:~DebugInfo" resolve="DebugInfo" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="7jkoQKX6ANG" role="3cqZAp">
          <node concept="3clFbS" id="7jkoQKX6ANH" role="2LFqv$">
            <node concept="3cpWs8" id="7jkoQKX7gC$" role="3cqZAp">
              <node concept="3cpWsn" id="7jkoQKX7gC_" role="3cpWs9">
                <property role="TrG5h" value="reference" />
                <node concept="3uibUv" id="7jkoQKX7g_T" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
                <node concept="2Sg_IR" id="7jkoQKX7gCA" role="33vP2m">
                  <node concept="37vLTw" id="7jkoQKX7gCB" role="2SgG2M">
                    <ref role="3cqZAo" node="7jkoQKX6YXM" resolve="nodeChooser" />
                  </node>
                  <node concept="2OqwBi" id="7jkoQKX7gCC" role="2SgHGx">
                    <node concept="37vLTw" id="7jkoQKX7gCD" role="2Oq$k0">
                      <ref role="3cqZAo" node="7jkoQKX6GgL" resolve="it" />
                    </node>
                    <node concept="liA8E" id="7jkoQKX7gCE" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Iterator.next()" resolve="next" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7jkoQKX6ANU" role="3cqZAp">
              <node concept="3clFbS" id="7jkoQKX6ANV" role="3clFbx">
                <node concept="3cpWs6" id="7jkoQKX6BZH" role="3cqZAp">
                  <node concept="3clFbT" id="7jkoQKX6C3g" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="7jkoQKX6AO2" role="3clFbw">
                <node concept="10Nm6u" id="7jkoQKX6AO3" role="3uHU7w" />
                <node concept="2YIFZM" id="7jkoQKX6AO4" role="3uHU7B">
                  <ref role="1Pybhc" node="2lt1tUBuCdK" resolve="HandlerUtil" />
                  <ref role="37wK5l" node="3naYLZo3_69" resolve="openNode" />
                  <node concept="37vLTw" id="7jkoQKX6Dhy" role="37wK5m">
                    <ref role="3cqZAo" node="7jkoQKX5QpQ" resolve="project" />
                  </node>
                  <node concept="37vLTw" id="7jkoQKX7jj6" role="37wK5m">
                    <ref role="3cqZAo" node="7jkoQKX7gC_" resolve="reference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7jkoQKX6AO7" role="2$JKZa">
            <node concept="37vLTw" id="7jkoQKX6AO8" role="2Oq$k0">
              <ref role="3cqZAo" node="7jkoQKX6GgL" resolve="it" />
            </node>
            <node concept="liA8E" id="7jkoQKX6AO9" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Iterator.hasNext()" resolve="hasNext" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7jkoQKX6Pgp" role="3cqZAp">
          <node concept="3clFbT" id="7jkoQKX6Pmz" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7jkoQKX5O0D" role="1B3o_S" />
      <node concept="10P_77" id="7jkoQKX6oEB" role="3clF45" />
      <node concept="37vLTG" id="7jkoQKX5QpQ" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7jkoQKX6x9c" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="7jkoQKX5QG3" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="file" />
        <node concept="3uibUv" id="7jkoQKX5QVV" role="1tU5fm">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
      <node concept="37vLTG" id="7jkoQKX6vad" role="3clF46">
        <property role="TrG5h" value="line" />
        <node concept="3uibUv" id="7jkoQKX6AxY" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7jkoQKX7sOa" role="jymVt" />
    <node concept="2YIFZL" id="7jkoQKX7_tW" role="jymVt">
      <property role="TrG5h" value="ideaProject" />
      <node concept="3clFbS" id="7jkoQKX7_tY" role="3clF47">
        <node concept="3clFbF" id="7jkoQKX7_tZ" role="3cqZAp">
          <node concept="2OqwBi" id="7jkoQKX7_u0" role="3clFbG">
            <node concept="1eOMI4" id="7jkoQKX7_u1" role="2Oq$k0">
              <node concept="10QFUN" id="7jkoQKX7_u2" role="1eOMHV">
                <node concept="37vLTw" id="7jkoQKX7_u3" role="10QFUP">
                  <ref role="3cqZAo" node="7jkoQKX7_u8" resolve="project" />
                </node>
                <node concept="3uibUv" id="7jkoQKX7_u4" role="10QFUM">
                  <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7jkoQKX7_u5" role="2OqNvi">
              <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7jkoQKX7_u7" role="3clF45">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
      <node concept="37vLTG" id="7jkoQKX7_u8" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7jkoQKX7_u9" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7jkoQKX7_u6" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7jkoQKX7ogC" role="jymVt" />
    <node concept="2YIFZL" id="7jkoQKX7$WJ" role="jymVt">
      <property role="TrG5h" value="openFile" />
      <node concept="3clFbS" id="7jkoQKX7$WL" role="3clF47">
        <node concept="3clFbF" id="7jkoQKX81Mc" role="3cqZAp">
          <node concept="2OqwBi" id="7jkoQKX821g" role="3clFbG">
            <node concept="2YIFZM" id="7jkoQKX81P7" role="2Oq$k0">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
            <node concept="liA8E" id="7jkoQKX82jv" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
              <node concept="1bVj0M" id="7jkoQKX82qU" role="37wK5m">
                <node concept="3clFbS" id="7jkoQKX82qV" role="1bW5cS">
                  <node concept="3clFbF" id="7jkoQKX82uQ" role="3cqZAp">
                    <node concept="2YIFZM" id="7jkoQKX82uR" role="3clFbG">
                      <ref role="1Pybhc" to="tprt:3EnpNH2_Hx5" resolve="FileOpenUtil" />
                      <ref role="37wK5l" to="tprt:3EnpNH2_Hzo" resolve="openFile" />
                      <node concept="1rXfSq" id="7jkoQKX82uS" role="37wK5m">
                        <ref role="37wK5l" node="7jkoQKX7_tW" resolve="ideaProject" />
                        <node concept="37vLTw" id="7jkoQKX82uT" role="37wK5m">
                          <ref role="3cqZAo" node="7jkoQKX7$X9" resolve="project" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="7jkoQKX82uU" role="37wK5m">
                        <ref role="3cqZAo" node="7jkoQKX7$Xb" resolve="file" />
                      </node>
                      <node concept="3K4zz7" id="7jkoQKX82uV" role="37wK5m">
                        <node concept="3cmrfG" id="7jkoQKX82uW" role="3K4E3e">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="7jkoQKX82uX" role="3K4GZi">
                          <ref role="3cqZAo" node="7jkoQKX7$Xd" resolve="line" />
                        </node>
                        <node concept="3clFbC" id="7jkoQKX82uY" role="3K4Cdx">
                          <node concept="10Nm6u" id="7jkoQKX82uZ" role="3uHU7w" />
                          <node concept="37vLTw" id="7jkoQKX82v0" role="3uHU7B">
                            <ref role="3cqZAo" node="7jkoQKX7$Xd" resolve="line" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7jkoQKX82v1" role="3cqZAp">
                    <node concept="1rXfSq" id="7jkoQKX82v2" role="3clFbG">
                      <ref role="37wK5l" node="3whKZwB1k79" resolve="requestFocus" />
                      <node concept="37vLTw" id="7jkoQKX82v3" role="37wK5m">
                        <ref role="3cqZAo" node="7jkoQKX7$X9" resolve="project" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7jkoQKX7L1L" role="3clF45" />
      <node concept="37vLTG" id="7jkoQKX7$X9" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7jkoQKX7$Xa" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="7jkoQKX7$Xb" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="3uibUv" id="7jkoQKX7$Xc" role="1tU5fm">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
      <node concept="37vLTG" id="7jkoQKX7$Xd" role="3clF46">
        <property role="TrG5h" value="line" />
        <node concept="3uibUv" id="7jkoQKX7$Xe" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7jkoQKX7L9v" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="12oNA5U0asF" role="jymVt" />
    <node concept="2YIFZL" id="3whKZwB1k79" role="jymVt">
      <property role="TrG5h" value="requestFocus" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3whKZwB1k7b" role="3clF47">
        <node concept="3SKdUt" id="71N0yF1O4Ed" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXoh3N" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXoh3O" role="1PaTwD">
              <property role="3oM_SC" value="requires" />
            </node>
            <node concept="3oM_SD" id="ATZLwXoh3P" role="1PaTwD">
              <property role="3oM_SC" value="EDT" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="71N0yF1O1AA" role="3cqZAp">
          <node concept="2YIFZM" id="71N0yF1O2zq" role="3clFbG">
            <ref role="37wK5l" to="3a50:~ThreadUtils.assertEDT()" resolve="assertEDT" />
            <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
          </node>
        </node>
        <node concept="3clFbF" id="3whKZwB1k7h" role="3cqZAp">
          <node concept="2YIFZM" id="3whKZwB1k7i" role="3clFbG">
            <ref role="37wK5l" to="btn2:~ProjectUtil.focusProjectWindow(com.intellij.openapi.project.Project,boolean)" resolve="focusProjectWindow" />
            <ref role="1Pybhc" to="btn2:~ProjectUtil" resolve="ProjectUtil" />
            <node concept="1rXfSq" id="7jkoQKX7_Wz" role="37wK5m">
              <ref role="37wK5l" node="7jkoQKX7_tW" resolve="ideaProject" />
              <node concept="37vLTw" id="7jkoQKX7A4M" role="37wK5m">
                <ref role="3cqZAo" node="3whKZwB1k7s" resolve="project" />
              </node>
            </node>
            <node concept="3clFbT" id="3whKZwB1k7p" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3whKZwB1k7r" role="3clF45" />
      <node concept="37vLTG" id="3whKZwB1k7s" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3whKZwB1k7t" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7jkoQKX7On1" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4vg7_weVKgc" role="jymVt" />
    <node concept="2YIFZL" id="5ueUq77W2gO" role="jymVt">
      <property role="TrG5h" value="getNodeNotFoundText" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5ueUq77W2gR" role="3clF47">
        <node concept="3cpWs6" id="5ueUq77W393" role="3cqZAp">
          <node concept="3cpWs3" id="23v1Xs_8P$x" role="3cqZAk">
            <node concept="3cpWs3" id="23v1Xs_8P$y" role="3uHU7B">
              <node concept="Xl_RD" id="23v1Xs_8P$z" role="3uHU7B">
                <property role="Xl_RC" value="Can not find node &lt;i&gt;" />
              </node>
              <node concept="37vLTw" id="5ueUq77W3iR" role="3uHU7w">
                <ref role="3cqZAo" node="5ueUq77W2_b" resolve="ref" />
              </node>
            </node>
            <node concept="Xl_RD" id="23v1Xs_8P$_" role="3uHU7w">
              <property role="Xl_RC" value="&lt;/i&gt;\nNode might be deleted or not belong to the project" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5ueUq77W1Wp" role="1B3o_S" />
      <node concept="17QB3L" id="5ueUq77W2gF" role="3clF45" />
      <node concept="37vLTG" id="5ueUq77W2_b" role="3clF46">
        <property role="TrG5h" value="ref" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="5ueUq77W2_a" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="7jkoQKX4PXf" role="jymVt">
      <property role="TrG5h" value="getFileNotFoundText" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7jkoQKX4PXg" role="3clF47">
        <node concept="3cpWs6" id="7jkoQKX4PXh" role="3cqZAp">
          <node concept="3cpWs3" id="7jkoQKX4PXi" role="3cqZAk">
            <node concept="3cpWs3" id="7jkoQKX4PXj" role="3uHU7B">
              <node concept="Xl_RD" id="7jkoQKX4PXk" role="3uHU7B">
                <property role="Xl_RC" value="Can not find file &lt;i&gt;" />
              </node>
              <node concept="37vLTw" id="7jkoQKX4PXl" role="3uHU7w">
                <ref role="3cqZAo" node="7jkoQKX4PXp" resolve="path" />
              </node>
            </node>
            <node concept="Xl_RD" id="7jkoQKX4PXm" role="3uHU7w">
              <property role="Xl_RC" value="&lt;/i&gt;\nFile might be deleted or not belong to the project" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7jkoQKX4PXn" role="1B3o_S" />
      <node concept="17QB3L" id="7jkoQKX4PXo" role="3clF45" />
      <node concept="37vLTG" id="7jkoQKX4PXp" role="3clF46">
        <property role="TrG5h" value="path" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="7jkoQKX4Qqd" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5ueUq77WpYO" role="jymVt" />
    <node concept="2YIFZL" id="4vg7_weVOC3" role="jymVt">
      <property role="TrG5h" value="showNoProjectIsAvailablePopup" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4vg7_weVOC6" role="3clF47">
        <node concept="3clFbF" id="4vg7_weX1Ye" role="3cqZAp">
          <node concept="2OqwBi" id="4vg7_weX2tj" role="3clFbG">
            <node concept="2YIFZM" id="4vg7_weX1YM" role="2Oq$k0">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
            <node concept="liA8E" id="5ueUq77Trmm" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
              <node concept="1bVj0M" id="4vg7_weXfHt" role="37wK5m">
                <node concept="3clFbS" id="4vg7_weXfHu" role="1bW5cS">
                  <node concept="3cpWs8" id="4vg7_weWdgm" role="3cqZAp">
                    <node concept="3cpWsn" id="4vg7_weWdgn" role="3cpWs9">
                      <property role="TrG5h" value="component" />
                      <node concept="3uibUv" id="5ueUq77Wmc$" role="1tU5fm">
                        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
                      </node>
                      <node concept="2OqwBi" id="5ueUq77WmZG" role="33vP2m">
                        <node concept="1eOMI4" id="5ueUq77WmB2" role="2Oq$k0">
                          <node concept="0kSF2" id="5ueUq77UJrO" role="1eOMHV">
                            <node concept="3uibUv" id="5ueUq77UJrR" role="0kSFW">
                              <ref role="3uigEE" to="jkny:~IdeFrame" resolve="IdeFrame" />
                            </node>
                            <node concept="2OqwBi" id="5ueUq77UgkA" role="0kSFX">
                              <node concept="2YIFZM" id="5ueUq77Ugbf" role="2Oq$k0">
                                <ref role="37wK5l" to="jkny:~WindowManager.getInstance()" resolve="getInstance" />
                                <ref role="1Pybhc" to="jkny:~WindowManager" resolve="WindowManager" />
                              </node>
                              <node concept="liA8E" id="5ueUq77Upw7" role="2OqNvi">
                                <ref role="37wK5l" to="jkny:~WindowManager.findVisibleFrame()" resolve="findVisibleFrame" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="5ueUq77WniQ" role="2OqNvi">
                          <ref role="37wK5l" to="jkny:~IdeFrame.getComponent()" resolve="getComponent" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5ueUq77Wo1g" role="3cqZAp">
                    <node concept="1rXfSq" id="5ueUq77Wo1e" role="3clFbG">
                      <ref role="37wK5l" node="5ueUq77WhDc" resolve="createPopupAndShow" />
                      <node concept="3cpWs3" id="5ueUq77UP9w" role="37wK5m">
                        <node concept="37vLTw" id="5ueUq77WoqD" role="3uHU7w">
                          <ref role="3cqZAo" node="4vg7_weVPiU" resolve="NO_PROJECT_IS_AVAILABLE" />
                        </node>
                        <node concept="37vLTw" id="5ueUq77WoqK" role="3uHU7B">
                          <ref role="3cqZAo" node="5ueUq77UMLK" resolve="HEADER" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="5ueUq77WoX$" role="37wK5m">
                        <ref role="3cqZAo" node="4vg7_weWdgn" resolve="component" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4vg7_weVMGz" role="1B3o_S" />
      <node concept="3cqZAl" id="4vg7_weVOBU" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5ueUq77W1I8" role="jymVt" />
    <node concept="2YIFZL" id="5ueUq77VMRd" role="jymVt">
      <property role="TrG5h" value="showNodeNotFoundPopup" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5ueUq77VMRg" role="3clF47">
        <node concept="3cpWs8" id="7jkoQKX4OQ5" role="3cqZAp">
          <node concept="3cpWsn" id="7jkoQKX4OQ6" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="17QB3L" id="7jkoQKX4LZ_" role="1tU5fm" />
            <node concept="3cpWs3" id="7jkoQKX4OQ7" role="33vP2m">
              <node concept="37vLTw" id="7jkoQKX4OQ8" role="3uHU7B">
                <ref role="3cqZAo" node="5ueUq77UMLK" resolve="HEADER" />
              </node>
              <node concept="1rXfSq" id="7jkoQKX4OQ9" role="3uHU7w">
                <ref role="37wK5l" node="5ueUq77W2gO" resolve="getNodeNotFoundText" />
                <node concept="37vLTw" id="7jkoQKX4OQa" role="37wK5m">
                  <ref role="3cqZAo" node="5ueUq77W1lr" resolve="ref" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jkoQKX4PhE" role="3cqZAp">
          <node concept="2YIFZM" id="7jkoQKX4PhD" role="3clFbG">
            <ref role="1Pybhc" node="2lt1tUBuCdK" resolve="HandlerUtil" />
            <ref role="37wK5l" node="7jkoQKX4Ph$" resolve="showNotFoundPopup" />
            <node concept="37vLTw" id="7jkoQKX4PhB" role="37wK5m">
              <ref role="3cqZAo" node="5ueUq77VNBC" resolve="project" />
            </node>
            <node concept="37vLTw" id="7jkoQKX4PhC" role="37wK5m">
              <ref role="3cqZAo" node="7jkoQKX4OQ6" resolve="text" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5ueUq77VM$1" role="1B3o_S" />
      <node concept="3cqZAl" id="5ueUq77VMR4" role="3clF45" />
      <node concept="37vLTG" id="5ueUq77VNBC" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="5ueUq77VNBB" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="5ueUq77W1lr" role="3clF46">
        <property role="TrG5h" value="ref" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="5ueUq77W1_K" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7jkoQKX4PJW" role="jymVt" />
    <node concept="2YIFZL" id="7jkoQKX4MNB" role="jymVt">
      <property role="TrG5h" value="showFileNotFoundPopup" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7jkoQKX4MNC" role="3clF47">
        <node concept="3cpWs8" id="7jkoQKX4Ugt" role="3cqZAp">
          <node concept="3cpWsn" id="7jkoQKX4Ugu" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="17QB3L" id="7jkoQKX4Ugv" role="1tU5fm" />
            <node concept="3cpWs3" id="7jkoQKX4Ugw" role="33vP2m">
              <node concept="37vLTw" id="7jkoQKX4UgD" role="3uHU7B">
                <ref role="3cqZAo" node="5ueUq77UMLK" resolve="HEADER" />
              </node>
              <node concept="1rXfSq" id="7jkoQKX4Ugx" role="3uHU7w">
                <ref role="37wK5l" node="7jkoQKX4PXf" resolve="getFileNotFoundText" />
                <node concept="37vLTw" id="7jkoQKX4UBJ" role="37wK5m">
                  <ref role="3cqZAo" node="7jkoQKX4MOf" resolve="path" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jkoQKX4UgF" role="3cqZAp">
          <node concept="2YIFZM" id="7jkoQKX4UgG" role="3clFbG">
            <ref role="1Pybhc" node="2lt1tUBuCdK" resolve="HandlerUtil" />
            <ref role="37wK5l" node="7jkoQKX4Ph$" resolve="showNotFoundPopup" />
            <node concept="37vLTw" id="7jkoQKX4UgH" role="37wK5m">
              <ref role="3cqZAo" node="7jkoQKX4MOd" resolve="project" />
            </node>
            <node concept="37vLTw" id="7jkoQKX4UgI" role="37wK5m">
              <ref role="3cqZAo" node="7jkoQKX4Ugu" resolve="text" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7jkoQKX4MOb" role="1B3o_S" />
      <node concept="3cqZAl" id="7jkoQKX4MOc" role="3clF45" />
      <node concept="37vLTG" id="7jkoQKX4MOd" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7jkoQKX4MOe" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="7jkoQKX4MOf" role="3clF46">
        <property role="TrG5h" value="path" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="7jkoQKX4O8v" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7jkoQKX4N3M" role="jymVt" />
    <node concept="2YIFZL" id="7jkoQKX4Ph$" role="jymVt">
      <property role="TrG5h" value="showNotFoundPopup" />
      <node concept="3Tm6S6" id="7jkoQKX4Ph_" role="1B3o_S" />
      <node concept="3cqZAl" id="7jkoQKX4PhA" role="3clF45" />
      <node concept="37vLTG" id="7jkoQKX4Phs" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7jkoQKX4Pht" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="7jkoQKX4Phu" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="7jkoQKX4Phv" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7jkoQKX4PgW" role="3clF47">
        <node concept="3cpWs8" id="7jkoQKX4PgX" role="3cqZAp">
          <node concept="3cpWsn" id="7jkoQKX4PgY" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="7jkoQKX4PgZ" role="1tU5fm">
              <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="0kSF2" id="7jkoQKX4Ph0" role="33vP2m">
              <node concept="3uibUv" id="7jkoQKX4Ph1" role="0kSFW">
                <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
              </node>
              <node concept="37vLTw" id="7jkoQKX4Phw" role="0kSFX">
                <ref role="3cqZAo" node="7jkoQKX4Phs" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jkoQKX4Ph3" role="3cqZAp">
          <node concept="3cpWsn" id="7jkoQKX4Ph4" role="3cpWs9">
            <property role="TrG5h" value="ideaProject" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="7jkoQKX4Ph5" role="1tU5fm">
              <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
            </node>
            <node concept="2OqwBi" id="7jkoQKX4Ph6" role="33vP2m">
              <node concept="37vLTw" id="7jkoQKX4Ph7" role="2Oq$k0">
                <ref role="3cqZAo" node="7jkoQKX4PgY" resolve="mpsProject" />
              </node>
              <node concept="liA8E" id="7jkoQKX4Ph8" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jkoQKX4Ph9" role="3cqZAp">
          <node concept="2OqwBi" id="7jkoQKX4Pha" role="3clFbG">
            <node concept="2YIFZM" id="7jkoQKX4Phb" role="2Oq$k0">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
            <node concept="liA8E" id="7jkoQKX4Phc" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
              <node concept="1bVj0M" id="7jkoQKX4Phd" role="37wK5m">
                <node concept="3clFbS" id="7jkoQKX4Phe" role="1bW5cS">
                  <node concept="3cpWs8" id="7jkoQKX4Phf" role="3cqZAp">
                    <node concept="3cpWsn" id="7jkoQKX4Phg" role="3cpWs9">
                      <property role="TrG5h" value="component" />
                      <node concept="3uibUv" id="7jkoQKX4Phh" role="1tU5fm">
                        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
                      </node>
                      <node concept="2OqwBi" id="7jkoQKX4Phi" role="33vP2m">
                        <node concept="2OqwBi" id="7jkoQKX4Phj" role="2Oq$k0">
                          <node concept="2YIFZM" id="7jkoQKX4Phk" role="2Oq$k0">
                            <ref role="1Pybhc" to="jkny:~WindowManager" resolve="WindowManager" />
                            <ref role="37wK5l" to="jkny:~WindowManager.getInstance()" resolve="getInstance" />
                          </node>
                          <node concept="liA8E" id="7jkoQKX4Phl" role="2OqNvi">
                            <ref role="37wK5l" to="jkny:~WindowManager.getStatusBar(com.intellij.openapi.project.Project)" resolve="getStatusBar" />
                            <node concept="37vLTw" id="7jkoQKX4Phm" role="37wK5m">
                              <ref role="3cqZAo" node="7jkoQKX4Ph4" resolve="ideaProject" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7jkoQKX4Phn" role="2OqNvi">
                          <ref role="37wK5l" to="jkny:~StatusBar.getComponent()" resolve="getComponent" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7jkoQKX4Pho" role="3cqZAp">
                    <node concept="1rXfSq" id="7jkoQKX4Php" role="3clFbG">
                      <ref role="37wK5l" node="5ueUq77WhDc" resolve="createPopupAndShow" />
                      <node concept="37vLTw" id="7jkoQKX4Phx" role="37wK5m">
                        <ref role="3cqZAo" node="7jkoQKX4Phu" resolve="text" />
                      </node>
                      <node concept="37vLTw" id="7jkoQKX4Phr" role="37wK5m">
                        <ref role="3cqZAo" node="7jkoQKX4Phg" resolve="component" />
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
    <node concept="2tJIrI" id="5ueUq77WgYg" role="jymVt" />
    <node concept="2YIFZL" id="5ueUq77WhDc" role="jymVt">
      <property role="TrG5h" value="createPopupAndShow" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5ueUq77WhDf" role="3clF47">
        <node concept="3clFbF" id="5ueUq77Winy" role="3cqZAp">
          <node concept="2OqwBi" id="5ueUq77VZIg" role="3clFbG">
            <node concept="2OqwBi" id="5ueUq77VZIh" role="2Oq$k0">
              <node concept="2OqwBi" id="5ueUq77VZIi" role="2Oq$k0">
                <node concept="2OqwBi" id="5ueUq77VZIj" role="2Oq$k0">
                  <node concept="2YIFZM" id="5ueUq77VZIk" role="2Oq$k0">
                    <ref role="1Pybhc" to="gspm:~JBPopupFactory" resolve="JBPopupFactory" />
                    <ref role="37wK5l" to="gspm:~JBPopupFactory.getInstance()" resolve="getInstance" />
                  </node>
                  <node concept="liA8E" id="5ueUq77VZIl" role="2OqNvi">
                    <ref role="37wK5l" to="gspm:~JBPopupFactory.createHtmlTextBalloonBuilder(java.lang.String,com.intellij.openapi.ui.MessageType,javax.swing.event.HyperlinkListener)" resolve="createHtmlTextBalloonBuilder" />
                    <node concept="37vLTw" id="5ueUq77Wj_B" role="37wK5m">
                      <ref role="3cqZAo" node="5ueUq77Wica" resolve="text" />
                    </node>
                    <node concept="10M0yZ" id="5ueUq77VZIn" role="37wK5m">
                      <ref role="3cqZAo" to="jkm4:~MessageType.WARNING" resolve="WARNING" />
                      <ref role="1PxDUh" to="jkm4:~MessageType" resolve="MessageType" />
                    </node>
                    <node concept="10Nm6u" id="5ueUq77VZIo" role="37wK5m" />
                  </node>
                </node>
                <node concept="liA8E" id="5ueUq77VZIp" role="2OqNvi">
                  <ref role="37wK5l" to="gspm:~BalloonBuilder.setFadeoutTime(long)" resolve="setFadeoutTime" />
                  <node concept="37vLTw" id="5ueUq77WinP" role="37wK5m">
                    <ref role="3cqZAo" node="5ueUq77WcC7" resolve="POPUP_TIME" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5ueUq77VZIr" role="2OqNvi">
                <ref role="37wK5l" to="gspm:~BalloonBuilder.createBalloon()" resolve="createBalloon" />
              </node>
            </node>
            <node concept="liA8E" id="5ueUq77VZIs" role="2OqNvi">
              <ref role="37wK5l" to="gspm:~Balloon.show(com.intellij.ui.awt.RelativePoint,com.intellij.openapi.ui.popup.Balloon$Position)" resolve="show" />
              <node concept="2YIFZM" id="5ueUq77VZIt" role="37wK5m">
                <ref role="37wK5l" to="vmdq:~RelativePoint.getSouthWestOf(javax.swing.JComponent)" resolve="getSouthWestOf" />
                <ref role="1Pybhc" to="vmdq:~RelativePoint" resolve="RelativePoint" />
                <node concept="37vLTw" id="5ueUq77WjXp" role="37wK5m">
                  <ref role="3cqZAo" node="5ueUq77WjDQ" resolve="component" />
                </node>
              </node>
              <node concept="Rm8GO" id="5ueUq77VZIx" role="37wK5m">
                <ref role="1Px2BO" to="gspm:~Balloon$Position" resolve="Balloon.Position" />
                <ref role="Rm8GQ" to="gspm:~Balloon$Position.above" resolve="above" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5ueUq77WhD2" role="1B3o_S" />
      <node concept="3cqZAl" id="5ueUq77WhCT" role="3clF45" />
      <node concept="37vLTG" id="5ueUq77Wica" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="5ueUq77Wic9" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5ueUq77WjDQ" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="5ueUq77WjSa" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="2lt1tUBuCdL" role="1B3o_S" />
  </node>
  <node concept="sE7Ow" id="3ApdfstLXw">
    <property role="TrG5h" value="NodeReferenceURL" />
    <property role="2uzpH1" value="Copy Node Reference as URL" />
    <property role="1rBW0U" value="true" />
    <node concept="2XrIbr" id="7aHtdNxlvw_" role="32lrUH">
      <property role="TrG5h" value="specifyProjectInURL" />
      <node concept="10P_77" id="7aHtdNxlDBT" role="3clF45" />
      <node concept="3clFbS" id="7aHtdNxlvwB" role="3clF47">
        <node concept="3clFbF" id="7aHtdNxlDIu" role="3cqZAp">
          <node concept="2YIFZM" id="7aHtdNxlDxZ" role="3clFbG">
            <ref role="1Pybhc" to="rfhd:~Registry" resolve="Registry" />
            <ref role="37wK5l" to="rfhd:~Registry.is(java.lang.String)" resolve="is" />
            <node concept="Xl_RD" id="7aHtdNxlDy0" role="37wK5m">
              <property role="Xl_RC" value="ide.httpsupport.specifyProjectInNodeURL" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7aHtdNxlvO1" role="1B3o_S" />
    </node>
    <node concept="2S4$dB" id="3Apdfsu3Gq" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="1oajcY" id="3Apdfsu3Gs" role="1oa70y" />
      <node concept="3Tm6S6" id="3Apdfsu3Gr" role="1B3o_S" />
      <node concept="3Tqbb2" id="3Apdfsu3yf" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="xSXmQZ$XRM" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
    </node>
    <node concept="tnohg" id="3ApdfstLXx" role="tncku">
      <node concept="3clFbS" id="3ApdfstLXy" role="2VODD2">
        <node concept="3cpWs8" id="5jO7UiONb7H" role="3cqZAp">
          <node concept="3cpWsn" id="5jO7UiONb7I" role="3cpWs9">
            <property role="TrG5h" value="pointer" />
            <node concept="2sp9CU" id="5jO7UiONb7G" role="1tU5fm" />
            <node concept="2OqwBi" id="5jO7UiONb7J" role="33vP2m">
              <node concept="2OqwBi" id="5jO7UiONb7K" role="2Oq$k0">
                <node concept="2WthIp" id="5jO7UiONb7L" role="2Oq$k0" />
                <node concept="3gHZIF" id="5jO7UiONb7M" role="2OqNvi">
                  <ref role="2WH_rO" node="3Apdfsu3Gq" resolve="node" />
                </node>
              </node>
              <node concept="iZEcu" id="5jO7UiONb7N" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6frl3mWcF43" role="3cqZAp">
          <node concept="2YIFZM" id="6frl3mWcF7R" role="3clFbG">
            <ref role="37wK5l" to="dp1x:5tGs5KqKiI4" resolve="copyTextToClipboard" />
            <ref role="1Pybhc" to="dp1x:5tGs5KqKfGH" resolve="CopyPasteUtil" />
            <node concept="3K4zz7" id="5jO7UiON8Yu" role="37wK5m">
              <node concept="2OqwBi" id="5jO7UiON9fu" role="3K4Cdx">
                <node concept="2WthIp" id="5jO7UiON90D" role="2Oq$k0" />
                <node concept="2XshWL" id="5jO7UiON9zq" role="2OqNvi">
                  <ref role="2WH_rO" node="7aHtdNxlvw_" resolve="specifyProjectInURL" />
                </node>
              </node>
              <node concept="1ZOzuk" id="6frl3mWcFa_" role="3K4E3e">
                <ref role="1ZOzuT" node="2lt1tUBuq2$" resolve="NodeOpener" />
                <node concept="1ZOzog" id="6frl3mWcG75" role="1ZOqJK">
                  <ref role="1ZOzov" node="21vgRr5xzVs" resolve="ref" />
                  <node concept="37vLTw" id="5jO7UiONb7O" role="1ZOzot">
                    <ref role="3cqZAo" node="5jO7UiONb7I" resolve="pointer" />
                  </node>
                </node>
                <node concept="1ZOzog" id="6frl3mWcFeI" role="1ZOqJK">
                  <ref role="1ZOzov" node="21vgRr5xHMM" resolve="project" />
                  <node concept="2OqwBi" id="5jO7UiONau3" role="1ZOzot">
                    <node concept="2WthIp" id="5jO7UiONabx" role="2Oq$k0" />
                    <node concept="1DTwFV" id="5jO7UiONaWp" role="2OqNvi">
                      <ref role="2WH_rO" node="xSXmQZ$XRM" resolve="project" />
                    </node>
                  </node>
                </node>
                <node concept="1UxO1Y" id="1_yOWEXeb1S" role="1WJIZB" />
              </node>
              <node concept="1ZOzuk" id="5jO7UiON9Gx" role="3K4GZi">
                <ref role="1ZOzuT" node="2lt1tUBuq2$" resolve="NodeOpener" />
                <node concept="1ZOzog" id="5jO7UiON9Gy" role="1ZOqJK">
                  <ref role="1ZOzov" node="21vgRr5xzVs" resolve="ref" />
                  <node concept="37vLTw" id="5jO7UiONb7P" role="1ZOzot">
                    <ref role="3cqZAo" node="5jO7UiONb7I" resolve="pointer" />
                  </node>
                </node>
                <node concept="1UxO1Y" id="5jO7UiON9GL" role="1WJIZB" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="1_yOWEXebar" role="tmbBb">
      <node concept="3clFbS" id="1_yOWEXebas" role="2VODD2">
        <node concept="3cpWs8" id="3wy6fduFpJR" role="3cqZAp">
          <node concept="3cpWsn" id="3wy6fduFpJS" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="H_c77" id="3wy6fduFpJP" role="1tU5fm" />
            <node concept="2OqwBi" id="3wy6fduFpJT" role="33vP2m">
              <node concept="2OqwBi" id="3wy6fduFpJU" role="2Oq$k0">
                <node concept="2WthIp" id="3wy6fduFpJV" role="2Oq$k0" />
                <node concept="3gHZIF" id="3wy6fduFpJW" role="2OqNvi">
                  <ref role="2WH_rO" node="3Apdfsu3Gq" resolve="node" />
                </node>
              </node>
              <node concept="I4A8Y" id="3wy6fduFpJX" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1_yOWEXeckz" role="3cqZAp">
          <node concept="1Wc70l" id="3wy6fduFr3V" role="3clFbG">
            <node concept="3fqX7Q" id="3wy6fduFtdn" role="3uHU7w">
              <node concept="1eOMI4" id="3wy6fduFtYI" role="3fr31v">
                <node concept="2ZW3vV" id="3wy6fduFtdo" role="1eOMHV">
                  <node concept="3uibUv" id="3wy6fduFtdp" role="2ZW6by">
                    <ref role="3uigEE" to="g3l6:~TransientSModel" resolve="TransientSModel" />
                  </node>
                  <node concept="37vLTw" id="3wy6fduFtdq" role="2ZW6bz">
                    <ref role="3cqZAo" node="3wy6fduFpJS" resolve="model" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="5ueUq77ZbaV" role="3uHU7B">
              <node concept="2YIFZM" id="5ueUq77ZbaX" role="3fr31v">
                <ref role="37wK5l" to="tqvn:~TemporaryModels.isTemporary(org.jetbrains.mps.openapi.model.SModel)" resolve="isTemporary" />
                <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
                <node concept="37vLTw" id="3wy6fduFpJY" role="37wK5m">
                  <ref role="3cqZAo" node="3wy6fduFpJS" resolve="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="3Apdfsu17E">
    <property role="TrG5h" value="NodeAsUriActions" />
    <node concept="ftmFs" id="3Apdfsu18E" role="ftER_">
      <node concept="tCFHf" id="3Apdfsu18H" role="ftvYc">
        <ref role="tCJdB" node="3ApdfstLXw" resolve="NodeReferenceURL" />
      </node>
    </node>
    <node concept="tT9cl" id="3Apdfsu2kH" role="2f5YQi">
      <ref role="tU$_T" to="ekwn:1xsN4xJX8VI" resolve="EditorPopup" />
      <ref role="2f8Tey" to="ekwn:4h0_rmDoo08" resolve="copy" />
    </node>
    <node concept="tT9cl" id="4h0_rmDoizZ" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4Gvz" resolve="NodeActions" />
      <ref role="2f8Tey" to="tprs:4h0_rmDolOA" resolve="copy" />
    </node>
  </node>
  <node concept="2DaZZR" id="4hySY0cffO1" />
  <node concept="pFx2x" id="xSXmQZxYrt">
    <property role="TrG5h" value="FileOpener" />
    <node concept="3_QJtf" id="xSXmQZxYwV" role="3_QDjO">
      <property role="TrG5h" value="file" />
      <property role="3_QJtb" value="true" />
      <node concept="1TjqYI" id="4rKp80ZK$Uo" role="1TjXUf">
        <node concept="17QB3L" id="4rKp80ZK_9T" role="1TjqZ8" />
      </node>
    </node>
    <node concept="3_QJtf" id="xSXmQZy0Q7" role="3_QDjO">
      <property role="TrG5h" value="project" />
      <node concept="1TjqYI" id="4rKp80ZK_CM" role="1TjXUf">
        <node concept="3uibUv" id="4rKp80ZKA2h" role="1TjqZ8">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="3_QJtf" id="7jkoQKX7RSx" role="3_QDjO">
      <property role="TrG5h" value="line" />
      <node concept="1TjqYI" id="7jkoQKX7RU9" role="1TjXUf">
        <node concept="3uibUv" id="7jkoQKX8fJH" role="1TjqZ8">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
    </node>
    <node concept="pF8on" id="xSXmQZxYru" role="pCJbe">
      <node concept="3clFbS" id="xSXmQZxYrv" role="2VODD2">
        <node concept="3clFbJ" id="xSXmQZyBSt" role="3cqZAp">
          <node concept="3clFbS" id="xSXmQZyBSv" role="3clFbx">
            <node concept="3cpWs8" id="7jkoQKX7Sil" role="3cqZAp">
              <node concept="3cpWsn" id="7jkoQKX7Sim" role="3cpWs9">
                <property role="TrG5h" value="fileByRelativePath" />
                <node concept="3uibUv" id="7jkoQKX7Sin" role="1tU5fm">
                  <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                </node>
                <node concept="2YIFZM" id="7jkoQKX7Sqb" role="33vP2m">
                  <ref role="37wK5l" node="7jkoQKX7Cu8" resolve="getProjectRelativeFile" />
                  <ref role="1Pybhc" node="2lt1tUBuCdK" resolve="HandlerUtil" />
                  <node concept="3_PKRz" id="7jkoQKX7Srd" role="37wK5m">
                    <ref role="3_PKRw" node="xSXmQZy0Q7" resolve="project" />
                  </node>
                  <node concept="3_PKRz" id="7jkoQKX7SEC" role="37wK5m">
                    <ref role="3_PKRw" node="xSXmQZxYwV" resolve="file" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7jkoQKX7SWG" role="3cqZAp">
              <node concept="3clFbS" id="7jkoQKX7SWI" role="3clFbx">
                <node concept="3clFbJ" id="7jkoQKX7THL" role="3cqZAp">
                  <node concept="3clFbS" id="7jkoQKX7THN" role="3clFbx">
                    <node concept="3clFbF" id="7jkoQKX7YN4" role="3cqZAp">
                      <node concept="2YIFZM" id="7jkoQKX7YUp" role="3clFbG">
                        <ref role="37wK5l" node="7jkoQKX7$WJ" resolve="openFile" />
                        <ref role="1Pybhc" node="2lt1tUBuCdK" resolve="HandlerUtil" />
                        <node concept="3_PKRz" id="7jkoQKX7Z0P" role="37wK5m">
                          <ref role="3_PKRw" node="xSXmQZy0Q7" resolve="project" />
                        </node>
                        <node concept="37vLTw" id="7jkoQKX82Rz" role="37wK5m">
                          <ref role="3cqZAo" node="7jkoQKX7Sim" resolve="fileByRelativePath" />
                        </node>
                        <node concept="3_PKRz" id="7jkoQKX8365" role="37wK5m">
                          <ref role="3_PKRw" node="7jkoQKX7RSx" resolve="line" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="7jkoQKX83Fd" role="3clFbw">
                    <node concept="2YIFZM" id="7jkoQKX83Ff" role="3fr31v">
                      <ref role="37wK5l" node="7jkoQKX5Q7d" resolve="tryOpenNodeByGeneratedFile" />
                      <ref role="1Pybhc" node="2lt1tUBuCdK" resolve="HandlerUtil" />
                      <node concept="3_PKRz" id="7jkoQKX83Fg" role="37wK5m">
                        <ref role="3_PKRw" node="xSXmQZy0Q7" resolve="project" />
                      </node>
                      <node concept="37vLTw" id="7jkoQKX83Fh" role="37wK5m">
                        <ref role="3cqZAo" node="7jkoQKX7Sim" resolve="fileByRelativePath" />
                      </node>
                      <node concept="3_PKRz" id="7jkoQKX83Fi" role="37wK5m">
                        <ref role="3_PKRw" node="7jkoQKX7RSx" resolve="line" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7jkoQKX7Ut0" role="3cqZAp">
                  <node concept="2OqwBi" id="7jkoQKX7Ut1" role="3clFbG">
                    <node concept="pFkrN" id="7jkoQKX7Ut2" role="2Oq$k0" />
                    <node concept="1W9Qq2" id="7jkoQKX7Ut3" role="2OqNvi">
                      <property role="1W9R_Y" value="image/gif" />
                      <node concept="10M0yZ" id="7jkoQKX7Ut4" role="1W9R_W">
                        <ref role="3cqZAo" node="6dOBq74QFqg" resolve="SUCCESS_STREAM" />
                        <ref role="1PxDUh" node="2lt1tUBuCdK" resolve="HandlerUtil" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="7jkoQKX7Ut5" role="3cqZAp" />
              </node>
              <node concept="3y3z36" id="7jkoQKX7TaZ" role="3clFbw">
                <node concept="10Nm6u" id="7jkoQKX7TbB" role="3uHU7w" />
                <node concept="37vLTw" id="7jkoQKX7T1b" role="3uHU7B">
                  <ref role="3cqZAo" node="7jkoQKX7Sim" resolve="fileByRelativePath" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7jkoQKX84zz" role="3cqZAp">
              <node concept="3cpWsn" id="7jkoQKX84zA" role="3cpWs9">
                <property role="TrG5h" value="virtualFiles" />
                <node concept="A3Dl8" id="7jkoQKX84zw" role="1tU5fm">
                  <node concept="3uibUv" id="7jkoQKX84F8" role="A3Ik2">
                    <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                  </node>
                </node>
                <node concept="2YIFZM" id="7jkoQKX89Gn" role="33vP2m">
                  <ref role="37wK5l" node="7jkoQKX7IX9" resolve="findFilesByName" />
                  <ref role="1Pybhc" node="2lt1tUBuCdK" resolve="HandlerUtil" />
                  <node concept="3_PKRz" id="7jkoQKX89Go" role="37wK5m">
                    <ref role="3_PKRw" node="xSXmQZy0Q7" resolve="project" />
                  </node>
                  <node concept="3_PKRz" id="7jkoQKX89Gp" role="37wK5m">
                    <ref role="3_PKRw" node="xSXmQZxYwV" resolve="file" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="7jkoQKX85WT" role="3cqZAp">
              <node concept="2GrKxI" id="7jkoQKX85WV" role="2Gsz3X">
                <property role="TrG5h" value="virtualFile" />
              </node>
              <node concept="37vLTw" id="7jkoQKX861j" role="2GsD0m">
                <ref role="3cqZAo" node="7jkoQKX84zA" resolve="virtualFiles" />
              </node>
              <node concept="3clFbS" id="7jkoQKX85WZ" role="2LFqv$">
                <node concept="3clFbJ" id="7jkoQKX866x" role="3cqZAp">
                  <node concept="3clFbS" id="7jkoQKX866z" role="3clFbx">
                    <node concept="3clFbF" id="7jkoQKX868D" role="3cqZAp">
                      <node concept="2OqwBi" id="7jkoQKX868E" role="3clFbG">
                        <node concept="pFkrN" id="7jkoQKX868F" role="2Oq$k0" />
                        <node concept="1W9Qq2" id="7jkoQKX868G" role="2OqNvi">
                          <property role="1W9R_Y" value="image/gif" />
                          <node concept="10M0yZ" id="7jkoQKX868H" role="1W9R_W">
                            <ref role="1PxDUh" node="2lt1tUBuCdK" resolve="HandlerUtil" />
                            <ref role="3cqZAo" node="6dOBq74QFqg" resolve="SUCCESS_STREAM" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="7jkoQKX868I" role="3cqZAp" />
                  </node>
                  <node concept="2YIFZM" id="7jkoQKX866V" role="3clFbw">
                    <ref role="1Pybhc" node="2lt1tUBuCdK" resolve="HandlerUtil" />
                    <ref role="37wK5l" node="7jkoQKX5Q7d" resolve="tryOpenNodeByGeneratedFile" />
                    <node concept="3_PKRz" id="7jkoQKX866W" role="37wK5m">
                      <ref role="3_PKRw" node="xSXmQZy0Q7" resolve="project" />
                    </node>
                    <node concept="2GrUjf" id="7jkoQKX89Aq" role="37wK5m">
                      <ref role="2Gs0qQ" node="7jkoQKX85WV" resolve="virtualFile" />
                    </node>
                    <node concept="3_PKRz" id="7jkoQKX866Y" role="37wK5m">
                      <ref role="3_PKRw" node="7jkoQKX7RSx" resolve="line" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7jkoQKX86Bp" role="3cqZAp">
              <node concept="3clFbS" id="7jkoQKX86Br" role="3clFbx">
                <node concept="3clFbF" id="7jkoQKX86os" role="3cqZAp">
                  <node concept="2YIFZM" id="7jkoQKX87uV" role="3clFbG">
                    <ref role="37wK5l" node="7jkoQKX7$WJ" resolve="openFile" />
                    <ref role="1Pybhc" node="2lt1tUBuCdK" resolve="HandlerUtil" />
                    <node concept="3_PKRz" id="7jkoQKX87$D" role="37wK5m">
                      <ref role="3_PKRw" node="xSXmQZy0Q7" resolve="project" />
                    </node>
                    <node concept="2OqwBi" id="7jkoQKX88P9" role="37wK5m">
                      <node concept="37vLTw" id="7jkoQKX88_O" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jkoQKX84zA" resolve="virtualFiles" />
                      </node>
                      <node concept="1uHKPH" id="7jkoQKX89b1" role="2OqNvi" />
                    </node>
                    <node concept="3_PKRz" id="7jkoQKX87QJ" role="37wK5m">
                      <ref role="3_PKRw" node="7jkoQKX7RSx" resolve="line" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7jkoQKX87xS" role="3cqZAp">
                  <node concept="2OqwBi" id="7jkoQKX87xT" role="3clFbG">
                    <node concept="pFkrN" id="7jkoQKX87xU" role="2Oq$k0" />
                    <node concept="1W9Qq2" id="7jkoQKX87xV" role="2OqNvi">
                      <property role="1W9R_Y" value="image/gif" />
                      <node concept="10M0yZ" id="7jkoQKX87xW" role="1W9R_W">
                        <ref role="3cqZAo" node="6dOBq74QFqg" resolve="SUCCESS_STREAM" />
                        <ref role="1PxDUh" node="2lt1tUBuCdK" resolve="HandlerUtil" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="7jkoQKX87xX" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="7jkoQKX86Ss" role="3clFbw">
                <node concept="37vLTw" id="7jkoQKX86GO" role="2Oq$k0">
                  <ref role="3cqZAo" node="7jkoQKX84zA" resolve="virtualFiles" />
                </node>
                <node concept="3GX2aA" id="7jkoQKX87n_" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbF" id="7jkoQKX5hdU" role="3cqZAp">
              <node concept="2YIFZM" id="7jkoQKX5hnv" role="3clFbG">
                <ref role="37wK5l" node="7jkoQKX4MNB" resolve="showFileNotFoundPopup" />
                <ref role="1Pybhc" node="2lt1tUBuCdK" resolve="HandlerUtil" />
                <node concept="3_PKRz" id="7jkoQKX5hod" role="37wK5m">
                  <ref role="3_PKRw" node="xSXmQZy0Q7" resolve="project" />
                </node>
                <node concept="3_PKRz" id="7jkoQKX5hBm" role="37wK5m">
                  <ref role="3_PKRw" node="xSXmQZxYwV" resolve="file" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="xSXmQZyDVa" role="3clFbw">
            <node concept="3uibUv" id="xSXmQZyEUU" role="2ZW6by">
              <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="3_PKRz" id="xSXmQZyCG9" role="2ZW6bz">
              <ref role="3_PKRw" node="xSXmQZy0Q7" resolve="project" />
            </node>
          </node>
          <node concept="9aQIb" id="5ueUq77VruU" role="9aQIa">
            <node concept="3clFbS" id="5ueUq77VruV" role="9aQI4">
              <node concept="3clFbF" id="5ueUq77VrDW" role="3cqZAp">
                <node concept="2YIFZM" id="5ueUq77VrDY" role="3clFbG">
                  <ref role="37wK5l" node="4vg7_weVOC3" resolve="showNoProjectIsAvailablePopup" />
                  <ref role="1Pybhc" node="2lt1tUBuCdK" resolve="HandlerUtil" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="xSXmQZyQS$" role="3cqZAp" />
        <node concept="3clFbF" id="xSXmQZy_pC" role="3cqZAp">
          <node concept="2OqwBi" id="xSXmQZy_pD" role="3clFbG">
            <node concept="pFkrN" id="xSXmQZy_pE" role="2Oq$k0" />
            <node concept="1W9Qq2" id="xSXmQZy_pF" role="2OqNvi">
              <property role="1W9R_Y" value="image/gif" />
              <node concept="10M0yZ" id="xSXmQZy_pG" role="1W9R_W">
                <ref role="1PxDUh" node="2lt1tUBuCdK" resolve="HandlerUtil" />
                <ref role="3cqZAo" node="6dOBq74R6h8" resolve="FAILURE_STREAM" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="std77" id="5fiBL1fEkeZ" role="std7D">
      <node concept="std78" id="5fiBL1fFjNT" role="std7y">
        <property role="svBHv" value="file" />
      </node>
    </node>
  </node>
</model>

