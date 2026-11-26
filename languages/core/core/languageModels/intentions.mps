<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c89590285(jetbrains.mps.lang.core.intentions)">
  <persistence version="9" />
  <languages>
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="-1" />
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="1" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="15" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors(MPS.Core/)" />
    <import index="d6hs" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors.item(MPS.Core/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
  </imports>
  <registry>
    <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts">
      <concept id="1194033889146" name="jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1XNTG" />
    </language>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
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
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
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
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
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
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions">
      <concept id="1192794744107" name="jetbrains.mps.lang.intentions.structure.IntentionDeclaration" flags="ig" index="2S6QgY" />
      <concept id="1192794782375" name="jetbrains.mps.lang.intentions.structure.DescriptionBlock" flags="in" index="2S6ZIM" />
      <concept id="1192795771125" name="jetbrains.mps.lang.intentions.structure.IsApplicableBlock" flags="in" index="2SaL7w" />
      <concept id="1192795911897" name="jetbrains.mps.lang.intentions.structure.ExecuteBlock" flags="in" index="2Sbjvc" />
      <concept id="1192796902958" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" flags="nn" index="2Sf5sV" />
      <concept id="2522969319638091381" name="jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration" flags="ig" index="2ZfUlf">
        <property id="2522969319638091386" name="isAvailableInChildNodes" index="2ZfUl0" />
        <property id="2522969319638091385" name="isErrorIntention" index="2ZfUl3" />
        <reference id="2522969319638198290" name="forConcept" index="2ZfgGC" />
        <child id="2522969319638198291" name="executeFunction" index="2ZfgGD" />
        <child id="2522969319638093995" name="isApplicableFunction" index="2ZfVeh" />
        <child id="2522969319638093993" name="descriptionFunction" index="2ZfVej" />
      </concept>
      <concept id="1240316299033" name="jetbrains.mps.lang.intentions.structure.QueryBlock" flags="in" index="38BcoT">
        <child id="1240393479918" name="paramType" index="3ddBve" />
      </concept>
      <concept id="1240322627579" name="jetbrains.mps.lang.intentions.structure.IntentionParameter" flags="nn" index="38Zlrr" />
      <concept id="1240395258925" name="jetbrains.mps.lang.intentions.structure.ParameterizedIntentionDeclaration" flags="ig" index="3dkpOd">
        <child id="1240395532443" name="queryFunction" index="3dlsAV" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="5979988948250981289" name="jetbrains.mps.lang.actions.structure.SNodeCreatorAndInitializer" flags="nn" index="2fJWfE" />
      <concept id="767145758118872833" name="jetbrains.mps.lang.actions.structure.NF_LinkList_AddNewChildOperation" flags="nn" index="2DeJg1" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1139184414036" name="jetbrains.mps.lang.smodel.structure.LinkList_AddNewChildOperation" flags="nn" index="WFELt">
        <reference id="1139877738879" name="concept" index="1A0vxQ" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1144195091934" name="jetbrains.mps.lang.smodel.structure.Node_IsRoleOperation" flags="nn" index="1BlSNk">
        <reference id="1144195362400" name="conceptOfParent" index="1BmUXE" />
        <reference id="1144195396777" name="linkInParent" index="1Bn3mz" />
      </concept>
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1235566831861" name="jetbrains.mps.baseLanguage.collections.structure.AllOperation" flags="nn" index="2HxqBE" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1227022159410" name="jetbrains.mps.baseLanguage.collections.structure.AddFirstElementOperation" flags="nn" index="2Ke4WJ" />
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
        <child id="1206655950512" name="initializer" index="3Mj9YC" />
      </concept>
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1206655653991" name="jetbrains.mps.baseLanguage.collections.structure.MapInitializer" flags="ng" index="3Mi1_Z">
        <child id="1206655902276" name="entries" index="3MiYds" />
      </concept>
      <concept id="1206655735055" name="jetbrains.mps.baseLanguage.collections.structure.MapEntry" flags="ng" index="3Milgn">
        <child id="1206655844556" name="key" index="3MiK7k" />
        <child id="1206655853135" name="value" index="3MiMdn" />
      </concept>
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
    </language>
  </registry>
  <node concept="2S6QgY" id="3EoG9lZUfG5">
    <property role="2ZfUl0" value="true" />
    <property role="TrG5h" value="SuppressAllTypesystemError" />
    <property role="3GE5qa" value="types" />
    <property role="2ZfUl3" value="true" />
    <ref role="2ZfgGC" to="tpck:2WmWrdnSpX2" resolve="ICanSuppressErrors" />
    <node concept="2S6ZIM" id="3EoG9lZUfG6" role="2ZfVej">
      <node concept="3clFbS" id="3EoG9lZUfG7" role="2VODD2">
        <node concept="3clFbF" id="4AMiyJgEZ$Z" role="3cqZAp">
          <node concept="2YIFZM" id="futs1s683B" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
            <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
            <node concept="3cpWs3" id="3cRcejOZ$lX" role="37wK5m">
              <node concept="Xl_RD" id="3EoG9lZUfG9" role="3uHU7B">
                <property role="Xl_RC" value="Suppress all typesystem messages for " />
              </node>
              <node concept="2OqwBi" id="4oS1ku9llqj" role="3uHU7w">
                <node concept="2Sf5sV" id="futs1s69ol" role="2Oq$k0" />
                <node concept="3zqWPK" id="70OdufORh5B" role="2OqNvi">
                  <ref role="37wK5l" to="tpcu:4oS1ku9jIXr" resolve="nodeDescription" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3EoG9lZUfGa" role="2ZfgGD">
      <node concept="3clFbS" id="3EoG9lZUfGb" role="2VODD2">
        <node concept="3clFbJ" id="13pCwyChQu2" role="3cqZAp">
          <node concept="2OqwBi" id="3hXhqMM3ya2" role="3clFbw">
            <node concept="2OqwBi" id="13pCwyChQtM" role="2Oq$k0">
              <node concept="2Sf5sV" id="13pCwyChQtL" role="2Oq$k0" />
              <node concept="3CFZ6_" id="13pCwyChQtQ" role="2OqNvi">
                <node concept="3CFYIy" id="13pCwyChQtS" role="3CFYIz">
                  <ref role="3CFYIx" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
                </node>
              </node>
            </node>
            <node concept="1v1jN8" id="3hXhqMM3Abq" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="13pCwyChQu3" role="3clFbx">
            <node concept="3cpWs8" id="3Z3vdqw987w" role="3cqZAp">
              <node concept="3cpWsn" id="3Z3vdqw987x" role="3cpWs9">
                <property role="TrG5h" value="annotation" />
                <node concept="3Tqbb2" id="3Z3vdqw987t" role="1tU5fm">
                  <ref role="ehGHo" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
                </node>
                <node concept="2OqwBi" id="3Z3vdqw987y" role="33vP2m">
                  <node concept="2OqwBi" id="3Z3vdqw987z" role="2Oq$k0">
                    <node concept="2Sf5sV" id="3Z3vdqw987$" role="2Oq$k0" />
                    <node concept="3CFZ6_" id="3Z3vdqw987_" role="2OqNvi">
                      <node concept="3CFYIy" id="3Z3vdqw987A" role="3CFYIz">
                        <ref role="3CFYIx" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
                      </node>
                    </node>
                  </node>
                  <node concept="2DeJg1" id="3Z3vdqw987B" role="2OqNvi">
                    <ref role="1A0vxQ" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3Z3vdqw9lp1" role="3cqZAp">
              <node concept="3cpWsn" id="3Z3vdqw9lp2" role="3cpWs9">
                <property role="TrG5h" value="flavours" />
                <node concept="3rvAFt" id="3Z3vdqw9loU" role="1tU5fm">
                  <node concept="17QB3L" id="3Z3vdqw9loZ" role="3rvQeY" />
                  <node concept="17QB3L" id="3Z3vdqw9lp0" role="3rvSg0" />
                </node>
                <node concept="2ShNRf" id="3Z3vdqw9lp3" role="33vP2m">
                  <node concept="3rGOSV" id="3Z3vdqw9lp4" role="2ShVmc">
                    <node concept="17QB3L" id="3Z3vdqw9lp5" role="3rHrn6" />
                    <node concept="17QB3L" id="3Z3vdqw9lp6" role="3rHtpV" />
                    <node concept="3Mi1_Z" id="3Z3vdqw9lp7" role="3Mj9YC">
                      <node concept="3Milgn" id="3Z3vdqw9m9T" role="3MiYds">
                        <node concept="2OqwBi" id="3Z3vdqw9AF9" role="3MiK7k">
                          <node concept="10M0yZ" id="3Z3vdqw9maC" role="2Oq$k0">
                            <ref role="3cqZAo" to="d6hs:~IssueKindReportItem.FLAVOUR_ISSUE_KIND" resolve="FLAVOUR_ISSUE_KIND" />
                            <ref role="1PxDUh" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                          </node>
                          <node concept="liA8E" id="3Z3vdqw9AYD" role="2OqNvi">
                            <ref role="37wK5l" to="d6hs:~ReportItemBase$SimpleReportItemFlavour.getId()" resolve="getId" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="3Z3vdqw9Br6" role="3MiMdn">
                          <node concept="2OqwBi" id="3Z3vdqw9B9m" role="2Oq$k0">
                            <node concept="10M0yZ" id="3Z3vdqw9mb_" role="2Oq$k0">
                              <ref role="3cqZAo" to="d6hs:~IssueKindReportItem.TYPESYSTEM" resolve="TYPESYSTEM" />
                              <ref role="1PxDUh" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                            </node>
                            <node concept="liA8E" id="3Z3vdqw9Bmi" role="2OqNvi">
                              <ref role="37wK5l" to="d6hs:~IssueKindReportItem$CheckerCategory.deriveItemKind()" resolve="deriveItemKind" />
                            </node>
                          </node>
                          <node concept="liA8E" id="3Z3vdqw9ByK" role="2OqNvi">
                            <ref role="37wK5l" to="d6hs:~IssueKindReportItem$ItemKind.toString()" resolve="toString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3EoG9lZUfGc" role="3cqZAp">
              <node concept="37vLTI" id="3Z3vdqw9i$9" role="3clFbG">
                <node concept="2OqwBi" id="3Z3vdqw9jBM" role="37vLTx">
                  <node concept="2ShNRf" id="3Z3vdqw9iFg" role="2Oq$k0">
                    <node concept="1pGfFk" id="3Z3vdqw9jgl" role="2ShVmc">
                      <ref role="37wK5l" to="d6hs:~FlavouredItem$ReportItemPredicate.&lt;init&gt;(java.util.Map)" resolve="FlavouredItem.ReportItemPredicate" />
                      <node concept="37vLTw" id="3Z3vdqw9lp8" role="37wK5m">
                        <ref role="3cqZAo" node="3Z3vdqw9lp2" resolve="flavours" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3Z3vdqw9XQp" role="2OqNvi">
                    <ref role="37wK5l" to="d6hs:~FlavouredItem$ReportItemPredicate.serialize()" resolve="serialize" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3Z3vdqw99Xv" role="37vLTJ">
                  <node concept="37vLTw" id="3Z3vdqw987C" role="2Oq$k0">
                    <ref role="3cqZAo" node="3Z3vdqw987x" resolve="annotation" />
                  </node>
                  <node concept="3TrcHB" id="3Z3vdqw9a96" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:26xHjLJaBbH" resolve="filter" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7s1FVdAxX0B" role="3cqZAp">
              <node concept="37vLTI" id="7s1FVdAyMUE" role="3clFbG">
                <node concept="Xl_RD" id="7s1FVdAyNLA" role="37vLTx">
                  <property role="Xl_RC" value="all typesystem messages" />
                </node>
                <node concept="2OqwBi" id="7s1FVdAxX_B" role="37vLTJ">
                  <node concept="37vLTw" id="7s1FVdAxX0_" role="2Oq$k0">
                    <ref role="3cqZAo" node="3Z3vdqw987x" resolve="annotation" />
                  </node>
                  <node concept="3TrcHB" id="7s1FVdAyNgT" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:7s1FVdAuNzP" resolve="message" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="13pCwyChQu6" role="9aQIa">
            <node concept="3clFbS" id="13pCwyChQu7" role="9aQI4">
              <node concept="3clFbF" id="13pCwyChQu8" role="3cqZAp">
                <node concept="2OqwBi" id="3hXhqMM3BSE" role="3clFbG">
                  <node concept="2OqwBi" id="13pCwyChQua" role="2Oq$k0">
                    <node concept="2Sf5sV" id="13pCwyChQu9" role="2Oq$k0" />
                    <node concept="3CFZ6_" id="13pCwyChQue" role="2OqNvi">
                      <node concept="3CFYIy" id="13pCwyChQug" role="3CFYIz">
                        <ref role="3CFYIx" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
                      </node>
                    </node>
                  </node>
                  <node concept="2Kehj3" id="3hXhqMM3DHE" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="13pCwyChQa8" role="2ZfVeh">
      <node concept="3clFbS" id="13pCwyChQa9" role="2VODD2">
        <node concept="3clFbJ" id="29wnaCndFrD" role="3cqZAp">
          <node concept="2OqwBi" id="3hXhqMM3Pau" role="3clFbw">
            <node concept="2OqwBi" id="29wnaCndFrI" role="2Oq$k0">
              <node concept="2Sf5sV" id="29wnaCndFrH" role="2Oq$k0" />
              <node concept="3CFZ6_" id="29wnaCndFIP" role="2OqNvi">
                <node concept="3CFYIy" id="29wnaCndFIR" role="3CFYIz">
                  <ref role="3CFYIx" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
                </node>
              </node>
            </node>
            <node concept="3GX2aA" id="3hXhqMM3SV0" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="29wnaCndFrE" role="3clFbx">
            <node concept="3cpWs6" id="29wnaCndFIW" role="3cqZAp">
              <node concept="3clFbT" id="4AMiyJgEZUD" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4I7wSXxshr9" role="3cqZAp">
          <node concept="3cpWsn" id="4I7wSXxshra" role="3cpWs9">
            <property role="TrG5h" value="editorComponent" />
            <node concept="10QFUN" id="5W9QiQ0P5Qh" role="33vP2m">
              <node concept="3uibUv" id="5W9QiQ0P5VD" role="10QFUM">
                <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
              </node>
              <node concept="2OqwBi" id="4I7wSXxshrc" role="10QFUP">
                <node concept="1XNTG" id="4I7wSXxshrd" role="2Oq$k0" />
                <node concept="liA8E" id="4I7wSXxshre" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent()" resolve="getEditorComponent" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="5W9QiQ0P5CF" role="1tU5fm">
              <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3Z3vdqw9mhi" role="3cqZAp">
          <node concept="3cpWsn" id="3Z3vdqw9mhj" role="3cpWs9">
            <property role="TrG5h" value="reportItemsForCell" />
            <node concept="3vKaQO" id="3Z3vdqw9mv$" role="1tU5fm">
              <node concept="3uibUv" id="3Z3vdqw9mvA" role="3O5elw">
                <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
              </node>
            </node>
            <node concept="2OqwBi" id="3Z3vdqw9mhk" role="33vP2m">
              <node concept="37vLTw" id="3Z3vdqw9mhl" role="2Oq$k0">
                <ref role="3cqZAo" node="4I7wSXxshra" resolve="editorComponent" />
              </node>
              <node concept="liA8E" id="3Z3vdqw9mhm" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getReportItemsForCell(jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="getReportItemsForCell" />
                <node concept="2OqwBi" id="3Z3vdqw9mhn" role="37wK5m">
                  <node concept="37vLTw" id="3Z3vdqw9mho" role="2Oq$k0">
                    <ref role="3cqZAo" node="4I7wSXxshra" resolve="editorComponent" />
                  </node>
                  <node concept="liA8E" id="3Z3vdqw9mhp" role="2OqNvi">
                    <ref role="37wK5l" to="exr9:~EditorComponent.getSelectedCell()" resolve="getSelectedCell" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3Z3vdqw9mX3" role="3cqZAp">
          <node concept="3clFbS" id="3Z3vdqw9mX5" role="3clFbx">
            <node concept="3cpWs6" id="3Z3vdqw9nBa" role="3cqZAp">
              <node concept="3clFbT" id="3Z3vdqw9o1g" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4JjgcuaFw3f" role="3clFbw">
            <node concept="37vLTw" id="3Z3vdqw9mhq" role="2Oq$k0">
              <ref role="3cqZAo" node="3Z3vdqw9mhj" resolve="reportItemsForCell" />
            </node>
            <node concept="1v1jN8" id="3Z3vdqw9ssW" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="4JjgcuaFv_0" role="3cqZAp">
          <node concept="1Wc70l" id="2dHt7HZ2e$4" role="3cqZAk">
            <node concept="2OqwBi" id="3Z3vdqw9vRT" role="3uHU7B">
              <node concept="37vLTw" id="3Z3vdqw9uoO" role="2Oq$k0">
                <ref role="3cqZAo" node="3Z3vdqw9mhj" resolve="reportItemsForCell" />
              </node>
              <node concept="2HxqBE" id="3Z3vdqw9xQ_" role="2OqNvi">
                <node concept="1bVj0M" id="3Z3vdqw9xQB" role="23t8la">
                  <node concept="3clFbS" id="3Z3vdqw9xQC" role="1bW5cS">
                    <node concept="3clFbF" id="3Z3vdqw9xQD" role="3cqZAp">
                      <node concept="17R0WA" id="3Z3vdqw9yLB" role="3clFbG">
                        <node concept="2OqwBi" id="3Z3vdqw9zWQ" role="3uHU7B">
                          <node concept="2OqwBi" id="3Z3vdqw9xQE" role="2Oq$k0">
                            <node concept="37vLTw" id="3Z3vdqw9xQF" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0W21" resolve="it" />
                            </node>
                            <node concept="liA8E" id="3Z3vdqw9yiN" role="2OqNvi">
                              <ref role="37wK5l" to="d6hs:~IssueKindReportItem.getIssueKind()" resolve="getIssueKind" />
                            </node>
                          </node>
                          <node concept="liA8E" id="3Z3vdqw9$AR" role="2OqNvi">
                            <ref role="37wK5l" to="d6hs:~IssueKindReportItem$ItemKind.getChecker()" resolve="getChecker" />
                          </node>
                        </node>
                        <node concept="10M0yZ" id="3Z3vdqw9z$E" role="3uHU7w">
                          <ref role="3cqZAo" to="d6hs:~IssueKindReportItem.TYPESYSTEM" resolve="TYPESYSTEM" />
                          <ref role="1PxDUh" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0W21" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0W22" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2dHt7HZ2ePF" role="3uHU7w">
              <node concept="37vLTw" id="2dHt7HZ2ePG" role="2Oq$k0">
                <ref role="3cqZAo" node="3Z3vdqw9mhj" resolve="reportItemsForCell" />
              </node>
              <node concept="2HwmR7" id="2dHt7HZ2fBL" role="2OqNvi">
                <node concept="1bVj0M" id="2dHt7HZ2fBN" role="23t8la">
                  <node concept="3clFbS" id="2dHt7HZ2fBO" role="1bW5cS">
                    <node concept="3clFbF" id="2dHt7HZ2fBP" role="3cqZAp">
                      <node concept="17R0WA" id="2dHt7HZ2fBQ" role="3clFbG">
                        <node concept="2OqwBi" id="2dHt7HZ2fBS" role="3uHU7B">
                          <node concept="37vLTw" id="2dHt7HZ2fBT" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0W23" resolve="it" />
                          </node>
                          <node concept="liA8E" id="2dHt7HZ2gRs" role="2OqNvi">
                            <ref role="37wK5l" to="d6hs:~ReportItem.getSeverity()" resolve="getSeverity" />
                          </node>
                        </node>
                        <node concept="Rm8GO" id="2dHt7HZ2hEn" role="3uHU7w">
                          <ref role="Rm8GQ" to="2gg1:~MessageStatus.ERROR" resolve="ERROR" />
                          <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0W23" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0W24" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3dkpOd" id="KgjTrBm2ni">
    <property role="3GE5qa" value="types" />
    <property role="TrG5h" value="SuppressSpecificInspection" />
    <property role="2ZfUl0" value="true" />
    <ref role="2ZfgGC" to="tpck:2WmWrdnSpX2" resolve="ICanSuppressErrors" />
    <node concept="2S6ZIM" id="KgjTrBm2nj" role="2ZfVej">
      <node concept="3clFbS" id="KgjTrBm2nk" role="2VODD2">
        <node concept="3clFbF" id="KgjTrBm2nl" role="3cqZAp">
          <node concept="3cpWs3" id="KgjTrBm2nm" role="3clFbG">
            <node concept="3cpWs3" id="KgjTrBm2nn" role="3uHU7B">
              <node concept="3cpWs3" id="KgjTrBm2no" role="3uHU7B">
                <node concept="2YIFZM" id="4Ijpa7sMOcc" role="3uHU7w">
                  <ref role="37wK5l" node="4Ijpa7sLJhv" resolve="ensureNotTooLong" />
                  <ref role="1Pybhc" node="4Ijpa7sLFz4" resolve="SuppressionUtil" />
                  <node concept="2OqwBi" id="4Ijpa7sMOcd" role="37wK5m">
                    <node concept="38Zlrr" id="4Ijpa7sMOce" role="2Oq$k0" />
                    <node concept="liA8E" id="4Ijpa7sMOcf" role="2OqNvi">
                      <ref role="37wK5l" to="d6hs:~ReportItem.getMessage()" resolve="getMessage" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="KgjTrBm2ns" role="3uHU7B">
                  <property role="Xl_RC" value="Suppress message '" />
                </node>
              </node>
              <node concept="Xl_RD" id="KgjTrBm2nt" role="3uHU7w">
                <property role="Xl_RC" value="' for " />
              </node>
            </node>
            <node concept="2OqwBi" id="KgjTrBm2nu" role="3uHU7w">
              <node concept="2Sf5sV" id="KgjTrBm2nv" role="2Oq$k0" />
              <node concept="3zqWPK" id="70OdufORh5D" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:4oS1ku9jIXr" resolve="nodeDescription" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="KgjTrBm2nx" role="2ZfgGD">
      <node concept="3clFbS" id="KgjTrBm2ny" role="2VODD2">
        <node concept="3cpWs8" id="KgjTrBm2nF" role="3cqZAp">
          <node concept="3cpWsn" id="KgjTrBm2nG" role="3cpWs9">
            <property role="TrG5h" value="annotation" />
            <node concept="3Tqbb2" id="KgjTrBm2nH" role="1tU5fm">
              <ref role="ehGHo" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
            </node>
            <node concept="2OqwBi" id="KgjTrBm2nI" role="33vP2m">
              <node concept="2OqwBi" id="KgjTrBm2nJ" role="2Oq$k0">
                <node concept="2Sf5sV" id="KgjTrBm2nK" role="2Oq$k0" />
                <node concept="3CFZ6_" id="KgjTrBm2nL" role="2OqNvi">
                  <node concept="3CFYIy" id="KgjTrBm2nM" role="3CFYIz">
                    <ref role="3CFYIx" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
                  </node>
                </node>
              </node>
              <node concept="2Ke4WJ" id="KgjTrBm2nN" role="2OqNvi">
                <node concept="2ShNRf" id="KgjTrBm2nO" role="25WWJ7">
                  <node concept="2fJWfE" id="KgjTrBm2nP" role="2ShVmc">
                    <node concept="3Tqbb2" id="KgjTrBm2nQ" role="3zrR0E">
                      <ref role="ehGHo" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="KgjTrBm2nR" role="3cqZAp">
          <node concept="37vLTI" id="KgjTrBm2nS" role="3clFbG">
            <node concept="2OqwBi" id="KgjTrBm2nT" role="37vLTJ">
              <node concept="37vLTw" id="KgjTrBm2nU" role="2Oq$k0">
                <ref role="3cqZAo" node="KgjTrBm2nG" resolve="annotation" />
              </node>
              <node concept="3TrcHB" id="KgjTrBm2nV" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:26xHjLJaBbH" resolve="filter" />
              </node>
            </node>
            <node concept="2OqwBi" id="KgjTrBm2nW" role="37vLTx">
              <node concept="2OqwBi" id="KgjTrBm2nX" role="2Oq$k0">
                <node concept="38Zlrr" id="KgjTrBm2nY" role="2Oq$k0" />
                <node concept="liA8E" id="KgjTrBm2nZ" role="2OqNvi">
                  <ref role="37wK5l" to="d6hs:~FlavouredItem.toPredicate(java.util.Set)" resolve="toPredicate" />
                  <node concept="2OqwBi" id="KgjTrBm2o0" role="37wK5m">
                    <node concept="38Zlrr" id="KgjTrBm2o1" role="2Oq$k0" />
                    <node concept="liA8E" id="KgjTrBm2o2" role="2OqNvi">
                      <ref role="37wK5l" to="d6hs:~FlavouredItem.getIdFlavours()" resolve="getIdFlavours" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="KgjTrBm2o3" role="2OqNvi">
                <ref role="37wK5l" to="d6hs:~FlavouredItem$ReportItemPredicate.serialize()" resolve="serialize" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7s1FVdAz6EZ" role="3cqZAp">
          <node concept="37vLTI" id="7s1FVdAz6F0" role="3clFbG">
            <node concept="2OqwBi" id="7s1FVdAz6F1" role="37vLTx">
              <node concept="38Zlrr" id="7s1FVdAz6F2" role="2Oq$k0" />
              <node concept="liA8E" id="7s1FVdAz6F3" role="2OqNvi">
                <ref role="37wK5l" to="d6hs:~ReportItem.getMessage()" resolve="getMessage" />
              </node>
            </node>
            <node concept="2OqwBi" id="7s1FVdAz6F4" role="37vLTJ">
              <node concept="37vLTw" id="7s1FVdAz6F5" role="2Oq$k0">
                <ref role="3cqZAo" node="KgjTrBm2nG" resolve="annotation" />
              </node>
              <node concept="3TrcHB" id="7s1FVdAz6F6" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:7s1FVdAuNzP" resolve="message" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="38BcoT" id="KgjTrBm2o4" role="3dlsAV">
      <node concept="3clFbS" id="KgjTrBm2o5" role="2VODD2">
        <node concept="3cpWs8" id="KgjTrBm2o6" role="3cqZAp">
          <node concept="3cpWsn" id="KgjTrBm2o7" role="3cpWs9">
            <property role="TrG5h" value="editorComponent" />
            <node concept="10QFUN" id="KgjTrBm2o8" role="33vP2m">
              <node concept="3uibUv" id="KgjTrBm2o9" role="10QFUM">
                <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
              </node>
              <node concept="2OqwBi" id="KgjTrBm2oa" role="10QFUP">
                <node concept="1XNTG" id="KgjTrBm2ob" role="2Oq$k0" />
                <node concept="liA8E" id="KgjTrBm2oc" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent()" resolve="getEditorComponent" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="KgjTrBm2od" role="1tU5fm">
              <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="KgjTrBm2oe" role="3cqZAp">
          <node concept="3cpWsn" id="KgjTrBm2of" role="3cpWs9">
            <property role="TrG5h" value="reportItemsForCell" />
            <node concept="3vKaQO" id="KgjTrBm2og" role="1tU5fm">
              <node concept="3uibUv" id="KgjTrBm2oh" role="3O5elw">
                <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
              </node>
            </node>
            <node concept="2OqwBi" id="KgjTrBm2oi" role="33vP2m">
              <node concept="37vLTw" id="KgjTrBm2oj" role="2Oq$k0">
                <ref role="3cqZAo" node="KgjTrBm2o7" resolve="editorComponent" />
              </node>
              <node concept="liA8E" id="KgjTrBm2ok" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getReportItemsForCell(jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="getReportItemsForCell" />
                <node concept="2OqwBi" id="KgjTrBm2ol" role="37wK5m">
                  <node concept="37vLTw" id="KgjTrBm2om" role="2Oq$k0">
                    <ref role="3cqZAo" node="KgjTrBm2o7" resolve="editorComponent" />
                  </node>
                  <node concept="liA8E" id="KgjTrBm2on" role="2OqNvi">
                    <ref role="37wK5l" to="exr9:~EditorComponent.getSelectedCell()" resolve="getSelectedCell" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="KgjTrBm2oo" role="3cqZAp">
          <node concept="2ShNRf" id="KgjTrBm2op" role="3cqZAk">
            <node concept="Tc6Ow" id="KgjTrBm2oq" role="2ShVmc">
              <node concept="3uibUv" id="KgjTrBm2or" role="HW$YZ">
                <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
              </node>
              <node concept="2OqwBi" id="KgjTrBm2os" role="I$8f6">
                <node concept="37vLTw" id="KgjTrBm2ot" role="2Oq$k0">
                  <ref role="3cqZAo" node="KgjTrBm2of" resolve="reportItemsForCell" />
                </node>
                <node concept="3zZkjj" id="KgjTrBm2ou" role="2OqNvi">
                  <node concept="1bVj0M" id="KgjTrBm2ov" role="23t8la">
                    <node concept="3clFbS" id="KgjTrBm2ow" role="1bW5cS">
                      <node concept="3clFbF" id="KgjTrBm2ox" role="3cqZAp">
                        <node concept="17R0WA" id="5Ow3SnJlc7k" role="3clFbG">
                          <node concept="2OqwBi" id="KgjTrBm2o$" role="3uHU7B">
                            <node concept="37vLTw" id="KgjTrBm2o_" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0W25" resolve="it" />
                            </node>
                            <node concept="liA8E" id="KgjTrBm2oA" role="2OqNvi">
                              <ref role="37wK5l" to="d6hs:~ReportItem.getSeverity()" resolve="getSeverity" />
                            </node>
                          </node>
                          <node concept="Rm8GO" id="5Ow3SnJlcmv" role="3uHU7w">
                            <ref role="Rm8GQ" to="2gg1:~MessageStatus.WARNING" resolve="WARNING" />
                            <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0W25" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0W26" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="KgjTrBm2oD" role="3ddBve">
        <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
      </node>
    </node>
  </node>
  <node concept="3dkpOd" id="dxGXeXAWTk">
    <property role="3GE5qa" value="types" />
    <property role="TrG5h" value="SuppressSpecificErrors" />
    <property role="2ZfUl0" value="true" />
    <property role="2ZfUl3" value="true" />
    <ref role="2ZfgGC" to="tpck:2WmWrdnSpX2" resolve="ICanSuppressErrors" />
    <node concept="2S6ZIM" id="dxGXeXAWTl" role="2ZfVej">
      <node concept="3clFbS" id="dxGXeXAWTm" role="2VODD2">
        <node concept="3clFbF" id="4oS1ku9jQ05" role="3cqZAp">
          <node concept="3cpWs3" id="4oS1ku9jOdA" role="3clFbG">
            <node concept="3cpWs3" id="4oS1ku9jRpN" role="3uHU7B">
              <node concept="3cpWs3" id="4oS1ku9jT33" role="3uHU7B">
                <node concept="Xl_RD" id="4oS1ku9jCYV" role="3uHU7B">
                  <property role="Xl_RC" value="Suppress error '" />
                </node>
                <node concept="2YIFZM" id="4Ijpa7sMKA0" role="3uHU7w">
                  <ref role="37wK5l" node="4Ijpa7sLJhv" resolve="ensureNotTooLong" />
                  <ref role="1Pybhc" node="4Ijpa7sLFz4" resolve="SuppressionUtil" />
                  <node concept="2OqwBi" id="4Ijpa7sMKA1" role="37wK5m">
                    <node concept="38Zlrr" id="4Ijpa7sMKA2" role="2Oq$k0" />
                    <node concept="liA8E" id="4Ijpa7sMKA3" role="2OqNvi">
                      <ref role="37wK5l" to="d6hs:~ReportItem.getMessage()" resolve="getMessage" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="4oS1ku9jS7w" role="3uHU7w">
                <property role="Xl_RC" value="' for " />
              </node>
            </node>
            <node concept="2OqwBi" id="4oS1ku9jMII" role="3uHU7w">
              <node concept="2Sf5sV" id="4oS1ku9jCXx" role="2Oq$k0" />
              <node concept="3zqWPK" id="70OdufORh5F" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:4oS1ku9jIXr" resolve="nodeDescription" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="dxGXeXAWTn" role="2ZfgGD">
      <node concept="3clFbS" id="dxGXeXAWTo" role="2VODD2">
        <node concept="3cpWs8" id="4oS1ku9kMV8" role="3cqZAp">
          <node concept="3cpWsn" id="4oS1ku9kMV9" role="3cpWs9">
            <property role="TrG5h" value="annotation" />
            <node concept="3Tqbb2" id="4oS1ku9kMV4" role="1tU5fm">
              <ref role="ehGHo" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
            </node>
            <node concept="2OqwBi" id="3Z3vdqw6TSO" role="33vP2m">
              <node concept="2OqwBi" id="4oS1ku9kMVb" role="2Oq$k0">
                <node concept="2Sf5sV" id="4oS1ku9kMVc" role="2Oq$k0" />
                <node concept="3CFZ6_" id="4oS1ku9kMVd" role="2OqNvi">
                  <node concept="3CFYIy" id="4oS1ku9kMVe" role="3CFYIz">
                    <ref role="3CFYIx" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
                  </node>
                </node>
              </node>
              <node concept="2Ke4WJ" id="3Z3vdqw894Z" role="2OqNvi">
                <node concept="2ShNRf" id="3Z3vdqw8951" role="25WWJ7">
                  <node concept="2fJWfE" id="3Z3vdqw8952" role="2ShVmc">
                    <node concept="3Tqbb2" id="3Z3vdqw8953" role="3zrR0E">
                      <ref role="ehGHo" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4oS1ku9jCXH" role="3cqZAp">
          <node concept="37vLTI" id="4oS1ku9jCXN" role="3clFbG">
            <node concept="2OqwBi" id="4oS1ku9jCYj" role="37vLTJ">
              <node concept="37vLTw" id="4oS1ku9kPvf" role="2Oq$k0">
                <ref role="3cqZAo" node="4oS1ku9kMV9" resolve="annotation" />
              </node>
              <node concept="3TrcHB" id="4oS1ku9jCZ1" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:26xHjLJaBbH" resolve="filter" />
              </node>
            </node>
            <node concept="2OqwBi" id="4oS1ku9jCX1" role="37vLTx">
              <node concept="2OqwBi" id="4oS1ku9jCYB" role="2Oq$k0">
                <node concept="38Zlrr" id="3Z3vdqw8Wts" role="2Oq$k0" />
                <node concept="liA8E" id="4oS1ku9jCYf" role="2OqNvi">
                  <ref role="37wK5l" to="d6hs:~FlavouredItem.toPredicate(java.util.Set)" resolve="toPredicate" />
                  <node concept="2OqwBi" id="4oS1ku9jg2m" role="37wK5m">
                    <node concept="38Zlrr" id="3Z3vdqw8WkV" role="2Oq$k0" />
                    <node concept="liA8E" id="4oS1ku9jg$T" role="2OqNvi">
                      <ref role="37wK5l" to="d6hs:~FlavouredItem.getIdFlavours()" resolve="getIdFlavours" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4oS1ku9jCYX" role="2OqNvi">
                <ref role="37wK5l" to="d6hs:~FlavouredItem$ReportItemPredicate.serialize()" resolve="serialize" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7s1FVdAyYwi" role="3cqZAp">
          <node concept="37vLTI" id="7s1FVdAyYwj" role="3clFbG">
            <node concept="2OqwBi" id="7s1FVdAz3PV" role="37vLTx">
              <node concept="38Zlrr" id="7s1FVdAz25X" role="2Oq$k0" />
              <node concept="liA8E" id="7s1FVdAz47l" role="2OqNvi">
                <ref role="37wK5l" to="d6hs:~ReportItem.getMessage()" resolve="getMessage" />
              </node>
            </node>
            <node concept="2OqwBi" id="7s1FVdAyYwl" role="37vLTJ">
              <node concept="37vLTw" id="7s1FVdAyYwm" role="2Oq$k0">
                <ref role="3cqZAo" node="4oS1ku9kMV9" resolve="annotation" />
              </node>
              <node concept="3TrcHB" id="7s1FVdAyYwn" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:7s1FVdAuNzP" resolve="message" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="38BcoT" id="4oS1ku9jgO5" role="3dlsAV">
      <node concept="3clFbS" id="4oS1ku9jgO6" role="2VODD2">
        <node concept="3cpWs8" id="4oS1ku9jhLH" role="3cqZAp">
          <node concept="3cpWsn" id="4oS1ku9jhLI" role="3cpWs9">
            <property role="TrG5h" value="editorComponent" />
            <node concept="10QFUN" id="4oS1ku9jhLJ" role="33vP2m">
              <node concept="3uibUv" id="4oS1ku9jhLK" role="10QFUM">
                <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
              </node>
              <node concept="2OqwBi" id="4oS1ku9jhLL" role="10QFUP">
                <node concept="1XNTG" id="4oS1ku9jhLM" role="2Oq$k0" />
                <node concept="liA8E" id="4oS1ku9jhLN" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent()" resolve="getEditorComponent" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="4oS1ku9jhLO" role="1tU5fm">
              <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="KgjTrBlINy" role="3cqZAp">
          <node concept="3cpWsn" id="KgjTrBlINz" role="3cpWs9">
            <property role="TrG5h" value="reportItemsForCell" />
            <node concept="_YKpA" id="7iyvL_jintq" role="1tU5fm">
              <node concept="3uibUv" id="7iyvL_jints" role="_ZDj9">
                <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
              </node>
            </node>
            <node concept="2ShNRf" id="7iyvL_ji5Wt" role="33vP2m">
              <node concept="Tc6Ow" id="7iyvL_jifWG" role="2ShVmc">
                <node concept="3uibUv" id="7iyvL_jimyx" role="HW$YZ">
                  <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                </node>
                <node concept="2OqwBi" id="KgjTrBlIN$" role="I$8f6">
                  <node concept="37vLTw" id="KgjTrBlIN_" role="2Oq$k0">
                    <ref role="3cqZAo" node="4oS1ku9jhLI" resolve="editorComponent" />
                  </node>
                  <node concept="liA8E" id="KgjTrBlINA" role="2OqNvi">
                    <ref role="37wK5l" to="exr9:~EditorComponent.getReportItemsForCell(jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="getReportItemsForCell" />
                    <node concept="2OqwBi" id="KgjTrBlINB" role="37wK5m">
                      <node concept="37vLTw" id="KgjTrBlINC" role="2Oq$k0">
                        <ref role="3cqZAo" node="4oS1ku9jhLI" resolve="editorComponent" />
                      </node>
                      <node concept="liA8E" id="KgjTrBlIND" role="2OqNvi">
                        <ref role="37wK5l" to="exr9:~EditorComponent.getSelectedCell()" resolve="getSelectedCell" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7iyvL_jhKAn" role="3cqZAp">
          <node concept="3clFbS" id="7iyvL_jhKAp" role="3clFbx">
            <node concept="3clFbF" id="7iyvL_jir2Z" role="3cqZAp">
              <node concept="2OqwBi" id="7iyvL_jissd" role="3clFbG">
                <node concept="37vLTw" id="7iyvL_jir2X" role="2Oq$k0">
                  <ref role="3cqZAo" node="KgjTrBlINz" resolve="reportItemsForCell" />
                </node>
                <node concept="X8dFx" id="7iyvL_jiu1k" role="2OqNvi">
                  <node concept="2OqwBi" id="7iyvL_jiv5$" role="25WWJ7">
                    <node concept="37vLTw" id="7iyvL_jiv5_" role="2Oq$k0">
                      <ref role="3cqZAo" node="4oS1ku9jhLI" resolve="editorComponent" />
                    </node>
                    <node concept="liA8E" id="7iyvL_jiv5A" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.getReportItemsForCell(jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="getReportItemsForCell" />
                      <node concept="2OqwBi" id="7iyvL_jhTVz" role="37wK5m">
                        <node concept="37vLTw" id="7iyvL_jhT16" role="2Oq$k0">
                          <ref role="3cqZAo" node="4oS1ku9jhLI" resolve="editorComponent" />
                        </node>
                        <node concept="liA8E" id="7iyvL_jhYVk" role="2OqNvi">
                          <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode)" resolve="findNodeCell" />
                          <node concept="2OqwBi" id="7iyvL_ji0gO" role="37wK5m">
                            <node concept="2Sf5sV" id="7iyvL_jhZHq" role="2Oq$k0" />
                            <node concept="1mfA1w" id="7iyvL_ji1dR" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7iyvL_jhLW2" role="3clFbw">
            <node concept="2Sf5sV" id="7iyvL_jhLoz" role="2Oq$k0" />
            <node concept="1BlSNk" id="7iyvL_jhMPQ" role="2OqNvi">
              <ref role="1BmUXE" to="tpck:gw2VY9q" resolve="BaseConcept" />
              <ref role="1Bn3mz" to="tpck:4uZwTti3__2" resolve="smodelAttribute" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4oS1ku9jip0" role="3cqZAp">
          <node concept="2ShNRf" id="4oS1ku9jljO" role="3cqZAk">
            <node concept="Tc6Ow" id="4oS1ku9jljK" role="2ShVmc">
              <node concept="3uibUv" id="4oS1ku9jljL" role="HW$YZ">
                <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
              </node>
              <node concept="2OqwBi" id="KgjTrBlKPJ" role="I$8f6">
                <node concept="37vLTw" id="KgjTrBlINE" role="2Oq$k0">
                  <ref role="3cqZAo" node="KgjTrBlINz" resolve="reportItemsForCell" />
                </node>
                <node concept="3zZkjj" id="KgjTrBlMmQ" role="2OqNvi">
                  <node concept="1bVj0M" id="KgjTrBlMmS" role="23t8la">
                    <node concept="3clFbS" id="KgjTrBlMmT" role="1bW5cS">
                      <node concept="3clFbF" id="KgjTrBlN6Z" role="3cqZAp">
                        <node concept="17R0WA" id="KgjTrBlRfO" role="3clFbG">
                          <node concept="Rm8GO" id="KgjTrBlXpU" role="3uHU7w">
                            <ref role="Rm8GQ" to="2gg1:~MessageStatus.ERROR" resolve="ERROR" />
                            <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                          </node>
                          <node concept="2OqwBi" id="KgjTrBlNHz" role="3uHU7B">
                            <node concept="37vLTw" id="KgjTrBlN6Y" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0W27" resolve="it" />
                            </node>
                            <node concept="liA8E" id="KgjTrBlOB1" role="2OqNvi">
                              <ref role="37wK5l" to="d6hs:~ReportItem.getSeverity()" resolve="getSeverity" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0W27" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0W28" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4oS1ku9jhxu" role="3ddBve">
        <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="2dHt7HZ2mm6">
    <property role="2ZfUl0" value="true" />
    <property role="TrG5h" value="SuppressAllTypesystemWarning" />
    <property role="3GE5qa" value="types" />
    <ref role="2ZfgGC" to="tpck:2WmWrdnSpX2" resolve="ICanSuppressErrors" />
    <node concept="2S6ZIM" id="2dHt7HZ2mm7" role="2ZfVej">
      <node concept="3clFbS" id="2dHt7HZ2mm8" role="2VODD2">
        <node concept="3clFbF" id="2dHt7HZ2mm9" role="3cqZAp">
          <node concept="3K4zz7" id="2dHt7HZ2mma" role="3clFbG">
            <node concept="2OqwBi" id="2dHt7HZ2mmb" role="3K4Cdx">
              <node concept="2OqwBi" id="2dHt7HZ2mmc" role="2Oq$k0">
                <node concept="2Sf5sV" id="2dHt7HZ2mmd" role="2Oq$k0" />
                <node concept="3CFZ6_" id="2dHt7HZ2mme" role="2OqNvi">
                  <node concept="3CFYIy" id="2dHt7HZ2mmf" role="3CFYIz">
                    <ref role="3CFYIx" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
                  </node>
                </node>
              </node>
              <node concept="1v1jN8" id="2dHt7HZ2mmg" role="2OqNvi" />
            </node>
            <node concept="Xl_RD" id="2dHt7HZ2mmh" role="3K4GZi">
              <property role="Xl_RC" value="Don't suppress errors" />
            </node>
            <node concept="2YIFZM" id="2dHt7HZ2mmi" role="3K4E3e">
              <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="3cpWs3" id="2dHt7HZ2mmj" role="37wK5m">
                <node concept="Xl_RD" id="2dHt7HZ2mmk" role="3uHU7B">
                  <property role="Xl_RC" value="Suppress all typesystem messages for " />
                </node>
                <node concept="2OqwBi" id="2dHt7HZ2mml" role="3uHU7w">
                  <node concept="2Sf5sV" id="2dHt7HZ2mmm" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORh5H" role="2OqNvi">
                    <ref role="37wK5l" to="tpcu:4oS1ku9jIXr" resolve="nodeDescription" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="2dHt7HZ2mmo" role="2ZfgGD">
      <node concept="3clFbS" id="2dHt7HZ2mmp" role="2VODD2">
        <node concept="3clFbJ" id="2dHt7HZ2mmq" role="3cqZAp">
          <node concept="2OqwBi" id="2dHt7HZ2mmr" role="3clFbw">
            <node concept="2OqwBi" id="2dHt7HZ2mms" role="2Oq$k0">
              <node concept="2Sf5sV" id="2dHt7HZ2mmt" role="2Oq$k0" />
              <node concept="3CFZ6_" id="2dHt7HZ2mmu" role="2OqNvi">
                <node concept="3CFYIy" id="2dHt7HZ2mmv" role="3CFYIz">
                  <ref role="3CFYIx" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
                </node>
              </node>
            </node>
            <node concept="1v1jN8" id="2dHt7HZ2mmw" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="2dHt7HZ2mmx" role="3clFbx">
            <node concept="3cpWs8" id="2dHt7HZ2mmy" role="3cqZAp">
              <node concept="3cpWsn" id="2dHt7HZ2mmz" role="3cpWs9">
                <property role="TrG5h" value="annotation" />
                <node concept="3Tqbb2" id="2dHt7HZ2mm$" role="1tU5fm">
                  <ref role="ehGHo" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
                </node>
                <node concept="2OqwBi" id="2dHt7HZ2mm_" role="33vP2m">
                  <node concept="2OqwBi" id="2dHt7HZ2mmA" role="2Oq$k0">
                    <node concept="2Sf5sV" id="2dHt7HZ2mmB" role="2Oq$k0" />
                    <node concept="3CFZ6_" id="2dHt7HZ2mmC" role="2OqNvi">
                      <node concept="3CFYIy" id="2dHt7HZ2mmD" role="3CFYIz">
                        <ref role="3CFYIx" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
                      </node>
                    </node>
                  </node>
                  <node concept="2DeJg1" id="2dHt7HZ2mmE" role="2OqNvi">
                    <ref role="1A0vxQ" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2dHt7HZ2mmF" role="3cqZAp">
              <node concept="3cpWsn" id="2dHt7HZ2mmG" role="3cpWs9">
                <property role="TrG5h" value="flavours" />
                <node concept="3rvAFt" id="2dHt7HZ2mmH" role="1tU5fm">
                  <node concept="17QB3L" id="2dHt7HZ2mmI" role="3rvQeY" />
                  <node concept="17QB3L" id="2dHt7HZ2mmJ" role="3rvSg0" />
                </node>
                <node concept="2ShNRf" id="2dHt7HZ2mmK" role="33vP2m">
                  <node concept="3rGOSV" id="2dHt7HZ2mmL" role="2ShVmc">
                    <node concept="17QB3L" id="2dHt7HZ2mmM" role="3rHrn6" />
                    <node concept="17QB3L" id="2dHt7HZ2mmN" role="3rHtpV" />
                    <node concept="3Mi1_Z" id="2dHt7HZ2mmO" role="3Mj9YC">
                      <node concept="3Milgn" id="2dHt7HZ2mmP" role="3MiYds">
                        <node concept="2OqwBi" id="2dHt7HZ2mmQ" role="3MiK7k">
                          <node concept="10M0yZ" id="2dHt7HZ2mmR" role="2Oq$k0">
                            <ref role="1PxDUh" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                            <ref role="3cqZAo" to="d6hs:~IssueKindReportItem.FLAVOUR_ISSUE_KIND" resolve="FLAVOUR_ISSUE_KIND" />
                          </node>
                          <node concept="liA8E" id="2dHt7HZ2mmS" role="2OqNvi">
                            <ref role="37wK5l" to="d6hs:~ReportItemBase$SimpleReportItemFlavour.getId()" resolve="getId" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="2dHt7HZ2mmT" role="3MiMdn">
                          <node concept="2OqwBi" id="2dHt7HZ2mmU" role="2Oq$k0">
                            <node concept="10M0yZ" id="2dHt7HZ2mmV" role="2Oq$k0">
                              <ref role="3cqZAo" to="d6hs:~IssueKindReportItem.TYPESYSTEM" resolve="TYPESYSTEM" />
                              <ref role="1PxDUh" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                            </node>
                            <node concept="liA8E" id="2dHt7HZ2mmW" role="2OqNvi">
                              <ref role="37wK5l" to="d6hs:~IssueKindReportItem$CheckerCategory.deriveItemKind()" resolve="deriveItemKind" />
                            </node>
                          </node>
                          <node concept="liA8E" id="2dHt7HZ2mmX" role="2OqNvi">
                            <ref role="37wK5l" to="d6hs:~IssueKindReportItem$ItemKind.toString()" resolve="toString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2dHt7HZ2mmY" role="3cqZAp">
              <node concept="37vLTI" id="2dHt7HZ2mmZ" role="3clFbG">
                <node concept="2OqwBi" id="2dHt7HZ2mn0" role="37vLTx">
                  <node concept="2ShNRf" id="2dHt7HZ2mn1" role="2Oq$k0">
                    <node concept="1pGfFk" id="2dHt7HZ2mn2" role="2ShVmc">
                      <ref role="37wK5l" to="d6hs:~FlavouredItem$ReportItemPredicate.&lt;init&gt;(java.util.Map)" resolve="FlavouredItem.ReportItemPredicate" />
                      <node concept="37vLTw" id="2dHt7HZ2mn3" role="37wK5m">
                        <ref role="3cqZAo" node="2dHt7HZ2mmG" resolve="flavours" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="2dHt7HZ2mn4" role="2OqNvi">
                    <ref role="37wK5l" to="d6hs:~FlavouredItem$ReportItemPredicate.serialize()" resolve="serialize" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2dHt7HZ2mn5" role="37vLTJ">
                  <node concept="37vLTw" id="2dHt7HZ2mn6" role="2Oq$k0">
                    <ref role="3cqZAo" node="2dHt7HZ2mmz" resolve="annotation" />
                  </node>
                  <node concept="3TrcHB" id="2dHt7HZ2mn7" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:26xHjLJaBbH" resolve="filter" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7s1FVdAyT03" role="3cqZAp">
              <node concept="37vLTI" id="7s1FVdAyT04" role="3clFbG">
                <node concept="Xl_RD" id="7s1FVdAyT05" role="37vLTx">
                  <property role="Xl_RC" value="all typesystem messages" />
                </node>
                <node concept="2OqwBi" id="7s1FVdAyT06" role="37vLTJ">
                  <node concept="37vLTw" id="7s1FVdAyT07" role="2Oq$k0">
                    <ref role="3cqZAo" node="2dHt7HZ2mmz" resolve="annotation" />
                  </node>
                  <node concept="3TrcHB" id="7s1FVdAyT08" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:7s1FVdAuNzP" resolve="message" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="2dHt7HZ2mn8" role="9aQIa">
            <node concept="3clFbS" id="2dHt7HZ2mn9" role="9aQI4">
              <node concept="3clFbF" id="2dHt7HZ2mna" role="3cqZAp">
                <node concept="2OqwBi" id="2dHt7HZ2mnb" role="3clFbG">
                  <node concept="2OqwBi" id="2dHt7HZ2mnc" role="2Oq$k0">
                    <node concept="2Sf5sV" id="2dHt7HZ2mnd" role="2Oq$k0" />
                    <node concept="3CFZ6_" id="2dHt7HZ2mne" role="2OqNvi">
                      <node concept="3CFYIy" id="2dHt7HZ2mnf" role="3CFYIz">
                        <ref role="3CFYIx" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
                      </node>
                    </node>
                  </node>
                  <node concept="2Kehj3" id="2dHt7HZ2mng" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="2dHt7HZ2mnh" role="2ZfVeh">
      <node concept="3clFbS" id="2dHt7HZ2mni" role="2VODD2">
        <node concept="3clFbJ" id="2dHt7HZ2mnj" role="3cqZAp">
          <node concept="2OqwBi" id="2dHt7HZ2mnk" role="3clFbw">
            <node concept="2OqwBi" id="2dHt7HZ2mnl" role="2Oq$k0">
              <node concept="2Sf5sV" id="2dHt7HZ2mnm" role="2Oq$k0" />
              <node concept="3CFZ6_" id="2dHt7HZ2mnn" role="2OqNvi">
                <node concept="3CFYIy" id="2dHt7HZ2mno" role="3CFYIz">
                  <ref role="3CFYIx" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
                </node>
              </node>
            </node>
            <node concept="3GX2aA" id="2dHt7HZ2mnp" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="2dHt7HZ2mnq" role="3clFbx">
            <node concept="3cpWs6" id="2dHt7HZ2mnr" role="3cqZAp">
              <node concept="3clFbT" id="2dHt7HZ2mns" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2dHt7HZ2mnt" role="3cqZAp">
          <node concept="3cpWsn" id="2dHt7HZ2mnu" role="3cpWs9">
            <property role="TrG5h" value="editorComponent" />
            <node concept="10QFUN" id="2dHt7HZ2mnv" role="33vP2m">
              <node concept="3uibUv" id="2dHt7HZ2mnw" role="10QFUM">
                <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
              </node>
              <node concept="2OqwBi" id="2dHt7HZ2mnx" role="10QFUP">
                <node concept="1XNTG" id="2dHt7HZ2mny" role="2Oq$k0" />
                <node concept="liA8E" id="2dHt7HZ2mnz" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent()" resolve="getEditorComponent" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="2dHt7HZ2mn$" role="1tU5fm">
              <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2dHt7HZ2mn_" role="3cqZAp">
          <node concept="3cpWsn" id="2dHt7HZ2mnA" role="3cpWs9">
            <property role="TrG5h" value="reportItemsForCell" />
            <node concept="3vKaQO" id="2dHt7HZ2mnB" role="1tU5fm">
              <node concept="3uibUv" id="2dHt7HZ2mnC" role="3O5elw">
                <ref role="3uigEE" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
              </node>
            </node>
            <node concept="2OqwBi" id="2dHt7HZ2mnD" role="33vP2m">
              <node concept="37vLTw" id="2dHt7HZ2mnE" role="2Oq$k0">
                <ref role="3cqZAo" node="2dHt7HZ2mnu" resolve="editorComponent" />
              </node>
              <node concept="liA8E" id="2dHt7HZ2mnF" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getReportItemsForCell(jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="getReportItemsForCell" />
                <node concept="2OqwBi" id="2dHt7HZ2mnG" role="37wK5m">
                  <node concept="37vLTw" id="2dHt7HZ2mnH" role="2Oq$k0">
                    <ref role="3cqZAo" node="2dHt7HZ2mnu" resolve="editorComponent" />
                  </node>
                  <node concept="liA8E" id="2dHt7HZ2mnI" role="2OqNvi">
                    <ref role="37wK5l" to="exr9:~EditorComponent.getSelectedCell()" resolve="getSelectedCell" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2dHt7HZ2mnJ" role="3cqZAp">
          <node concept="3clFbS" id="2dHt7HZ2mnK" role="3clFbx">
            <node concept="3cpWs6" id="2dHt7HZ2mnL" role="3cqZAp">
              <node concept="3clFbT" id="2dHt7HZ2mnM" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2dHt7HZ2mnN" role="3clFbw">
            <node concept="37vLTw" id="2dHt7HZ2mnO" role="2Oq$k0">
              <ref role="3cqZAo" node="2dHt7HZ2mnA" resolve="reportItemsForCell" />
            </node>
            <node concept="1v1jN8" id="2dHt7HZ2mnP" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="2dHt7HZ2mnQ" role="3cqZAp">
          <node concept="1Wc70l" id="2dHt7HZ2mnR" role="3cqZAk">
            <node concept="2OqwBi" id="2dHt7HZ2mnS" role="3uHU7B">
              <node concept="37vLTw" id="2dHt7HZ2mnT" role="2Oq$k0">
                <ref role="3cqZAo" node="2dHt7HZ2mnA" resolve="reportItemsForCell" />
              </node>
              <node concept="2HxqBE" id="2dHt7HZ2mnU" role="2OqNvi">
                <node concept="1bVj0M" id="2dHt7HZ2mnV" role="23t8la">
                  <node concept="3clFbS" id="2dHt7HZ2mnW" role="1bW5cS">
                    <node concept="3clFbF" id="2dHt7HZ2mnX" role="3cqZAp">
                      <node concept="17R0WA" id="2dHt7HZ2mnY" role="3clFbG">
                        <node concept="2OqwBi" id="2dHt7HZ2mnZ" role="3uHU7B">
                          <node concept="2OqwBi" id="2dHt7HZ2mo0" role="2Oq$k0">
                            <node concept="37vLTw" id="2dHt7HZ2mo1" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0W29" resolve="it" />
                            </node>
                            <node concept="liA8E" id="2dHt7HZ2mo2" role="2OqNvi">
                              <ref role="37wK5l" to="d6hs:~IssueKindReportItem.getIssueKind()" resolve="getIssueKind" />
                            </node>
                          </node>
                          <node concept="liA8E" id="2dHt7HZ2mo3" role="2OqNvi">
                            <ref role="37wK5l" to="d6hs:~IssueKindReportItem$ItemKind.getChecker()" resolve="getChecker" />
                          </node>
                        </node>
                        <node concept="10M0yZ" id="2dHt7HZ2mo4" role="3uHU7w">
                          <ref role="1PxDUh" to="d6hs:~IssueKindReportItem" resolve="IssueKindReportItem" />
                          <ref role="3cqZAo" to="d6hs:~IssueKindReportItem.TYPESYSTEM" resolve="TYPESYSTEM" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0W29" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0W2a" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="2dHt7HZ2v_Q" role="3uHU7w">
              <node concept="2OqwBi" id="2dHt7HZ2v_S" role="3fr31v">
                <node concept="37vLTw" id="2dHt7HZ2v_T" role="2Oq$k0">
                  <ref role="3cqZAo" node="2dHt7HZ2mnA" resolve="reportItemsForCell" />
                </node>
                <node concept="2HwmR7" id="2dHt7HZ2v_U" role="2OqNvi">
                  <node concept="1bVj0M" id="2dHt7HZ2v_V" role="23t8la">
                    <node concept="3clFbS" id="2dHt7HZ2v_W" role="1bW5cS">
                      <node concept="3clFbF" id="2dHt7HZ2v_X" role="3cqZAp">
                        <node concept="17R0WA" id="2dHt7HZ2v_Y" role="3clFbG">
                          <node concept="2OqwBi" id="2dHt7HZ2v_Z" role="3uHU7B">
                            <node concept="37vLTw" id="2dHt7HZ2vA0" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0W2b" resolve="it" />
                            </node>
                            <node concept="liA8E" id="2dHt7HZ2vA1" role="2OqNvi">
                              <ref role="37wK5l" to="d6hs:~ReportItem.getSeverity()" resolve="getSeverity" />
                            </node>
                          </node>
                          <node concept="Rm8GO" id="2dHt7HZ2vA2" role="3uHU7w">
                            <ref role="Rm8GQ" to="2gg1:~MessageStatus.ERROR" resolve="ERROR" />
                            <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0W2b" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0W2c" role="1tU5fm" />
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
  <node concept="3dkpOd" id="4AMiyJgBfv$">
    <property role="3GE5qa" value="types" />
    <property role="TrG5h" value="UnsuppressError" />
    <property role="2ZfUl0" value="true" />
    <ref role="2ZfgGC" to="tpck:2WmWrdnSpX2" resolve="ICanSuppressErrors" />
    <node concept="2S6ZIM" id="4AMiyJgBfv_" role="2ZfVej">
      <node concept="3clFbS" id="4AMiyJgBfvA" role="2VODD2">
        <node concept="3clFbF" id="4AMiyJgBfvB" role="3cqZAp">
          <node concept="3cpWs3" id="4AMiyJgBfvC" role="3clFbG">
            <node concept="3cpWs3" id="4AMiyJgBfvD" role="3uHU7B">
              <node concept="3cpWs3" id="4AMiyJgBfvE" role="3uHU7B">
                <node concept="Xl_RD" id="4AMiyJgBfvI" role="3uHU7B">
                  <property role="Xl_RC" value="Don't suppress error '" />
                </node>
                <node concept="2YIFZM" id="4Ijpa7sMRMo" role="3uHU7w">
                  <ref role="37wK5l" node="4Ijpa7sLJhv" resolve="ensureNotTooLong" />
                  <ref role="1Pybhc" node="4Ijpa7sLFz4" resolve="SuppressionUtil" />
                  <node concept="2OqwBi" id="4Ijpa7sMRMp" role="37wK5m">
                    <node concept="38Zlrr" id="4Ijpa7sMRMq" role="2Oq$k0" />
                    <node concept="3TrcHB" id="4Ijpa7sMRMr" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:7s1FVdAuNzP" resolve="message" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="4AMiyJgBfvJ" role="3uHU7w">
                <property role="Xl_RC" value="' for " />
              </node>
            </node>
            <node concept="2OqwBi" id="4AMiyJgBfvK" role="3uHU7w">
              <node concept="2Sf5sV" id="4AMiyJgBfvL" role="2Oq$k0" />
              <node concept="3zqWPK" id="70OdufORh5J" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:4oS1ku9jIXr" resolve="nodeDescription" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="4AMiyJgBfvN" role="2ZfgGD">
      <node concept="3clFbS" id="4AMiyJgBfvO" role="2VODD2">
        <node concept="3clFbF" id="4AMiyJgEf57" role="3cqZAp">
          <node concept="2OqwBi" id="4AMiyJgEfcg" role="3clFbG">
            <node concept="38Zlrr" id="4AMiyJgEf56" role="2Oq$k0" />
            <node concept="3YRAZt" id="4AMiyJgEfnR" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="7s1FVdA$jBo" role="3cqZAp">
          <node concept="2OqwBi" id="7s1FVdA$kAF" role="3clFbG">
            <node concept="2OqwBi" id="7s1FVdA$k24" role="2Oq$k0">
              <node concept="2OqwBi" id="7s1FVdA$jR0" role="2Oq$k0">
                <node concept="2OqwBi" id="7s1FVdA$jGo" role="2Oq$k0">
                  <node concept="1XNTG" id="7s1FVdA$jBm" role="2Oq$k0" />
                  <node concept="liA8E" id="7s1FVdA$jMd" role="2OqNvi">
                    <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent()" resolve="getEditorComponent" />
                  </node>
                </node>
                <node concept="liA8E" id="7s1FVdA$jXu" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorComponent.getRootCell()" resolve="getRootCell" />
                </node>
              </node>
              <node concept="liA8E" id="7s1FVdA$kxK" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getCellContext()" resolve="getCellContext" />
              </node>
            </node>
            <node concept="liA8E" id="7s1FVdA$kJ0" role="2OqNvi">
              <ref role="37wK5l" to="f4zo:~EditorCellContext.getHints()" resolve="getHints" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="38BcoT" id="4AMiyJgBfwe" role="3dlsAV">
      <node concept="3clFbS" id="4AMiyJgBfwf" role="2VODD2">
        <node concept="3clFbF" id="4AMiyJgBxJc" role="3cqZAp">
          <node concept="2OqwBi" id="4AMiyJgDp0t" role="3clFbG">
            <node concept="2OqwBi" id="4AMiyJgCbtR" role="2Oq$k0">
              <node concept="2OqwBi" id="4AMiyJgBybo" role="2Oq$k0">
                <node concept="2Sf5sV" id="4AMiyJgBxJb" role="2Oq$k0" />
                <node concept="3CFZ6_" id="4AMiyJgByTm" role="2OqNvi">
                  <node concept="3CFYIy" id="4AMiyJgBz$p" role="3CFYIz">
                    <ref role="3CFYIx" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
                  </node>
                </node>
              </node>
              <node concept="3zZkjj" id="4AMiyJgChYq" role="2OqNvi">
                <node concept="1bVj0M" id="4AMiyJgChYs" role="23t8la">
                  <node concept="3clFbS" id="4AMiyJgChYt" role="1bW5cS">
                    <node concept="3cpWs6" id="4AMiyJgEnGU" role="3cqZAp">
                      <node concept="2OqwBi" id="4AMiyJgDMFi" role="3cqZAk">
                        <node concept="2OqwBi" id="7s1FVdAzibf" role="2Oq$k0">
                          <node concept="37vLTw" id="7s1FVdAzgLK" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0W2d" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="7s1FVdAzjB1" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:7s1FVdAuNzP" resolve="message" />
                          </node>
                        </node>
                        <node concept="17RvpY" id="7s1FVdAzqZl" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0W2d" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0W2e" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="4AMiyJgDqDQ" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="4AMiyJgB$r6" role="3ddBve">
        <ref role="ehGHo" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4Ijpa7sLFz4">
    <property role="3GE5qa" value="types" />
    <property role="TrG5h" value="SuppressionUtil" />
    <property role="1EXbeo" value="true" />
    <node concept="Wx3nA" id="4Ijpa7sMBqt" role="jymVt">
      <property role="TrG5h" value="MAX_LENGTH" />
      <property role="3TUv4t" value="true" />
      <node concept="10Oyi0" id="4Ijpa7sMBqu" role="1tU5fm" />
      <node concept="3cmrfG" id="4Ijpa7sMBqv" role="33vP2m">
        <property role="3cmrfH" value="80" />
      </node>
      <node concept="3Tm6S6" id="4Ijpa7sMBqw" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="4Ijpa7sMBqx" role="jymVt">
      <property role="TrG5h" value="ELLIPSIS" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4Ijpa7sMBqy" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="4Ijpa7sMBqz" role="33vP2m">
        <property role="Xl_RC" value="..." />
      </node>
      <node concept="3Tm6S6" id="4Ijpa7sMBq$" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4Ijpa7sNrJd" role="jymVt" />
    <node concept="2YIFZL" id="4Ijpa7sLJhv" role="jymVt">
      <property role="TrG5h" value="ensureNotTooLong" />
      <node concept="3clFbS" id="4Ijpa7sMFHZ" role="3clF47">
        <node concept="3clFbJ" id="4Ijpa7sMFGZ" role="3cqZAp">
          <node concept="3clFbC" id="4Ijpa7sMFH0" role="3clFbw">
            <node concept="37vLTw" id="4Ijpa7sMFH1" role="3uHU7B">
              <ref role="3cqZAo" node="4Ijpa7sLFV4" resolve="message" />
            </node>
            <node concept="10Nm6u" id="4Ijpa7sMFH2" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="4Ijpa7sMFH4" role="3clFbx">
            <node concept="3cpWs6" id="4Ijpa7sMFH5" role="3cqZAp">
              <node concept="10Nm6u" id="4Ijpa7sMFH6" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4Ijpa7sMFH8" role="3cqZAp">
          <node concept="3cpWsn" id="4Ijpa7sMFH7" role="3cpWs9">
            <property role="TrG5h" value="normalized" />
            <node concept="17QB3L" id="4Ijpa7sNsjz" role="1tU5fm" />
            <node concept="2OqwBi" id="4Ijpa7sMFJ7" role="33vP2m">
              <node concept="37vLTw" id="4Ijpa7sMFIc" role="2Oq$k0">
                <ref role="3cqZAo" node="4Ijpa7sLFV4" resolve="message" />
              </node>
              <node concept="liA8E" id="4Ijpa7sMFJ8" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.replaceAll(java.lang.String,java.lang.String)" resolve="replaceAll" />
                <node concept="Xl_RD" id="4Ijpa7sMFJ9" role="37wK5m">
                  <property role="Xl_RC" value="[\\r\\n]+" />
                </node>
                <node concept="Xl_RD" id="4Ijpa7sMFJa" role="37wK5m">
                  <property role="Xl_RC" value=" " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4Ijpa7sMFHd" role="3cqZAp">
          <node concept="2dkUwp" id="4Ijpa7sMFHe" role="3clFbw">
            <node concept="2OqwBi" id="4Ijpa7sMFJp" role="3uHU7B">
              <node concept="37vLTw" id="4Ijpa7sMFIj" role="2Oq$k0">
                <ref role="3cqZAo" node="4Ijpa7sMFH7" resolve="normalized" />
              </node>
              <node concept="liA8E" id="4Ijpa7sMFJq" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
              </node>
            </node>
            <node concept="37vLTw" id="4Ijpa7sMFHg" role="3uHU7w">
              <ref role="3cqZAo" node="4Ijpa7sMBqt" resolve="MAX_LENGTH" />
            </node>
          </node>
          <node concept="3clFbS" id="4Ijpa7sMFHi" role="3clFbx">
            <node concept="3cpWs6" id="4Ijpa7sMFHj" role="3cqZAp">
              <node concept="37vLTw" id="4Ijpa7sMFHk" role="3cqZAk">
                <ref role="3cqZAo" node="4Ijpa7sMFH7" resolve="normalized" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4Ijpa7sMFHm" role="3cqZAp">
          <node concept="3cpWsn" id="4Ijpa7sMFHl" role="3cpWs9">
            <property role="TrG5h" value="limit" />
            <node concept="10Oyi0" id="4Ijpa7sMFHn" role="1tU5fm" />
            <node concept="3cpWsd" id="4Ijpa7sMFHo" role="33vP2m">
              <node concept="37vLTw" id="4Ijpa7sMFHp" role="3uHU7B">
                <ref role="3cqZAo" node="4Ijpa7sMBqt" resolve="MAX_LENGTH" />
              </node>
              <node concept="2OqwBi" id="4Ijpa7sMFJJ" role="3uHU7w">
                <node concept="37vLTw" id="4Ijpa7sMFIo" role="2Oq$k0">
                  <ref role="3cqZAo" node="4Ijpa7sMBqx" resolve="ELLIPSIS" />
                </node>
                <node concept="liA8E" id="4Ijpa7sMFJK" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4Ijpa7sMFHs" role="3cqZAp">
          <node concept="3cpWsn" id="4Ijpa7sMFHr" role="3cpWs9">
            <property role="TrG5h" value="prefix" />
            <node concept="17QB3L" id="4Ijpa7sNrQn" role="1tU5fm" />
            <node concept="2OqwBi" id="4Ijpa7sMFJZ" role="33vP2m">
              <node concept="37vLTw" id="4Ijpa7sMFIt" role="2Oq$k0">
                <ref role="3cqZAo" node="4Ijpa7sMFH7" resolve="normalized" />
              </node>
              <node concept="liA8E" id="4Ijpa7sMFK0" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                <node concept="3cmrfG" id="4Ijpa7sMFK1" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="4Ijpa7sMFK2" role="37wK5m">
                  <ref role="3cqZAo" node="4Ijpa7sMFHl" resolve="limit" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4Ijpa7sMFHx" role="3cqZAp">
          <node concept="3fqX7Q" id="4Ijpa7sMFHy" role="3clFbw">
            <node concept="2YIFZM" id="4Ijpa7sMFI$" role="3fr31v">
              <ref role="1Pybhc" to="wyt6:~Character" resolve="Character" />
              <ref role="37wK5l" to="wyt6:~Character.isWhitespace(char)" resolve="isWhitespace" />
              <node concept="2OqwBi" id="4Ijpa7sMFLa" role="37wK5m">
                <node concept="37vLTw" id="4Ijpa7sMFK6" role="2Oq$k0">
                  <ref role="3cqZAo" node="4Ijpa7sMFH7" resolve="normalized" />
                </node>
                <node concept="liA8E" id="4Ijpa7sMFLb" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.charAt(int)" resolve="charAt" />
                  <node concept="37vLTw" id="4Ijpa7sMFLc" role="37wK5m">
                    <ref role="3cqZAo" node="4Ijpa7sMFHl" resolve="limit" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4Ijpa7sMFHB" role="3clFbx">
            <node concept="3cpWs8" id="4Ijpa7sMFHD" role="3cqZAp">
              <node concept="3cpWsn" id="4Ijpa7sMFHC" role="3cpWs9">
                <property role="TrG5h" value="lastSpace" />
                <node concept="10Oyi0" id="4Ijpa7sMFHE" role="1tU5fm" />
                <node concept="2OqwBi" id="4Ijpa7sMFKn" role="33vP2m">
                  <node concept="37vLTw" id="4Ijpa7sMFIE" role="2Oq$k0">
                    <ref role="3cqZAo" node="4Ijpa7sMFHr" resolve="prefix" />
                  </node>
                  <node concept="liA8E" id="4Ijpa7sMFKo" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.lastIndexOf(int)" resolve="lastIndexOf" />
                    <node concept="1Xhbcc" id="4Ijpa7sMFKp" role="37wK5m">
                      <property role="1XhdNS" value=" " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4Ijpa7sMFHH" role="3cqZAp">
              <node concept="3eOSWO" id="4Ijpa7sMFHI" role="3clFbw">
                <node concept="37vLTw" id="4Ijpa7sMFHJ" role="3uHU7B">
                  <ref role="3cqZAo" node="4Ijpa7sMFHC" resolve="lastSpace" />
                </node>
                <node concept="FJ1c_" id="4Ijpa7sMFHK" role="3uHU7w">
                  <node concept="37vLTw" id="4Ijpa7sMFHL" role="3uHU7B">
                    <ref role="3cqZAo" node="4Ijpa7sMFHl" resolve="limit" />
                  </node>
                  <node concept="3cmrfG" id="4Ijpa7sMFHM" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="4Ijpa7sMFHO" role="3clFbx">
                <node concept="3clFbF" id="4Ijpa7sMFHP" role="3cqZAp">
                  <node concept="37vLTI" id="4Ijpa7sMFHQ" role="3clFbG">
                    <node concept="37vLTw" id="4Ijpa7sMFHR" role="37vLTJ">
                      <ref role="3cqZAo" node="4Ijpa7sMFHr" resolve="prefix" />
                    </node>
                    <node concept="2OqwBi" id="4Ijpa7sMFKC" role="37vLTx">
                      <node concept="37vLTw" id="4Ijpa7sMFIK" role="2Oq$k0">
                        <ref role="3cqZAo" node="4Ijpa7sMFHr" resolve="prefix" />
                      </node>
                      <node concept="liA8E" id="4Ijpa7sMFKD" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                        <node concept="3cmrfG" id="4Ijpa7sMFKE" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="4Ijpa7sMFKF" role="37wK5m">
                          <ref role="3cqZAo" node="4Ijpa7sMFHC" resolve="lastSpace" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4Ijpa7sMFHV" role="3cqZAp">
          <node concept="3cpWs3" id="4Ijpa7sMFHW" role="3cqZAk">
            <node concept="2OqwBi" id="4Ijpa7sMFKU" role="3uHU7B">
              <node concept="37vLTw" id="4Ijpa7sMFIR" role="2Oq$k0">
                <ref role="3cqZAo" node="4Ijpa7sMFHr" resolve="prefix" />
              </node>
              <node concept="liA8E" id="4Ijpa7sMFKV" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.stripTrailing()" resolve="stripTrailing" />
              </node>
            </node>
            <node concept="37vLTw" id="4Ijpa7sMFHY" role="3uHU7w">
              <ref role="3cqZAo" node="4Ijpa7sMBqx" resolve="ELLIPSIS" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4Ijpa7sLFV4" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="4Ijpa7sLFV3" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="4Ijpa7sLFQD" role="3clF45" />
      <node concept="3Tm1VV" id="4Ijpa7sLFPf" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="4Ijpa7sLFz5" role="1B3o_S" />
  </node>
</model>

