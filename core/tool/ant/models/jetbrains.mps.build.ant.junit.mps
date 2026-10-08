<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:df01b7a4-085b-4689-a5be-0177cb8fceea(jetbrains.mps.build.ant.junit)">
  <persistence version="9" />
  <languages>
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
  </languages>
  <imports>
    <import index="644x" ref="r:7b2ffdb7-2bfc-4488-8c0c-ee8fe93fe3c1(jetbrains.mps.build.ant)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="gola" ref="847a3235-09f9-403c-b6a9-1c294a212e92/java:org.apache.tools.ant(Ant/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="rg95" ref="847a3235-09f9-403c-b6a9-1c294a212e92/java:org.apache.tools.ant.types(Ant/)" />
    <import index="67b4" ref="847a3235-09f9-403c-b6a9-1c294a212e92/java:org.apache.tools.ant.types.resources(Ant/)" />
    <import index="asz6" ref="r:067fd2c9-d009-4506-91db-a69992d65964(jetbrains.mps.tool.common)" />
    <import index="kpdv" ref="847a3235-09f9-403c-b6a9-1c294a212e92/java:org.apache.tools.ant.taskdefs(Ant/)" />
    <import index="i5cy" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent.atomic(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
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
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
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
      <concept id="1070534555686" name="jetbrains.mps.baseLanguage.structure.CharType" flags="in" index="10Pfzv" />
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
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
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670592366" name="defaultBlock" index="3Kb1Dw" />
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="6971016359099800069" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldSingleCommentLine" flags="ngI" index="2JaDLO">
        <child id="6971016359099801474" name="commentBody" index="2JaDBN" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
      <concept id="5085607816306582224" name="jetbrains.mps.baseLanguage.javadoc.structure.InlineTagCommentTextElement" flags="ng" index="1Vtdud">
        <child id="5085607816306582225" name="tag" index="1Vtduc" />
      </concept>
      <concept id="5085607816306633585" name="jetbrains.mps.baseLanguage.javadoc.structure.CodeInlineDocTagTE" flags="ng" index="1VuTSG" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
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
  <node concept="312cEu" id="4MVYzzgvQfE">
    <property role="TrG5h" value="LaunchTestTask" />
    <node concept="2tJIrI" id="5gsHVK_2Jo_" role="jymVt" />
    <node concept="Wx3nA" id="5gsHVK_2GMu" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="NO_FS_ROOTS_ACCESS_CHECK_OPTION" />
      <node concept="3Tm1VV" id="5gsHVK_2GMr" role="1B3o_S" />
      <node concept="17QB3L" id="5gsHVK_2GMs" role="1tU5fm" />
      <node concept="Xl_RD" id="5gsHVK_2GMt" role="33vP2m">
        <property role="Xl_RC" value="-DNO_FS_ROOTS_ACCESS_CHECK=true" />
      </node>
    </node>
    <node concept="2tJIrI" id="5gsHVK_2IgG" role="jymVt" />
    <node concept="Wx3nA" id="5gsHVKA4WnD" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="MPS_TESTING_PLUGIN_HOME" />
      <node concept="3Tm1VV" id="5gsHVKA4WnA" role="1B3o_S" />
      <node concept="17QB3L" id="5gsHVKA4WnB" role="1tU5fm" />
      <node concept="Xl_RD" id="5gsHVKA4WnC" role="33vP2m">
        <property role="Xl_RC" value="plugins/mps-testing" />
      </node>
    </node>
    <node concept="Wx3nA" id="5gsHVKCOxLY" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="LAUNCHER_SUPPORT_JAR" />
      <node concept="3Tm1VV" id="5gsHVKCOxLZ" role="1B3o_S" />
      <node concept="17QB3L" id="5gsHVKCOxM0" role="1tU5fm" />
      <node concept="Xl_RD" id="5gsHVKCOxM1" role="33vP2m">
        <property role="Xl_RC" value="languages/launcher/jetbrains.mps.lang.test.launcher.jar" />
      </node>
    </node>
    <node concept="2tJIrI" id="HwplGLPhwg" role="jymVt" />
    <node concept="Wx3nA" id="5HBbAYqGxvU" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="TEST_REPORTS_DIR_PROPERTY" />
      <node concept="3Tm1VV" id="5HBbAYqGxvV" role="1B3o_S" />
      <node concept="17QB3L" id="5HBbAYqGxvW" role="1tU5fm" />
      <node concept="Xl_RD" id="5HBbAYqGxvX" role="33vP2m">
        <property role="Xl_RC" value="launchtests.testReportsDir" />
      </node>
    </node>
    <node concept="Wx3nA" id="51DD0tdNp3b" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="TEST_REPORTS_OPENTEST" />
      <node concept="3Tm1VV" id="51DD0tdNp3c" role="1B3o_S" />
      <node concept="17QB3L" id="51DD0tdNp3d" role="1tU5fm" />
      <node concept="Xl_RD" id="51DD0tdNp3e" role="33vP2m">
        <property role="Xl_RC" value="launchtests.testReportsOpenTest" />
      </node>
    </node>
    <node concept="2tJIrI" id="HwplGLMAWl" role="jymVt" />
    <node concept="312cEg" id="5gsHVK_0mum" role="jymVt">
      <property role="TrG5h" value="myModuleFile" />
      <node concept="3Tm6S6" id="5gsHVK_0mun" role="1B3o_S" />
      <node concept="3uibUv" id="5gsHVK_0nIy" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="5gsHVK_2v9V" role="11_B2D">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="2ShNRf" id="5gsHVK_0o$_" role="33vP2m">
        <node concept="1pGfFk" id="5gsHVK_0qvE" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5gsHVK_0ndw" role="jymVt" />
    <node concept="3clFbW" id="4MVYzzgvQZf" role="jymVt">
      <node concept="3cqZAl" id="4MVYzzgvQZh" role="3clF45" />
      <node concept="3Tm1VV" id="4MVYzzgvQZi" role="1B3o_S" />
      <node concept="3clFbS" id="4MVYzzgvQZj" role="3clF47">
        <node concept="XkiVB" id="4MVYzzgwoag" role="3cqZAp">
          <ref role="37wK5l" to="644x:4vDU0BPxMGt" resolve="MpsLoadTask" />
          <node concept="Xl_RD" id="4MVYzzgwocN" role="37wK5m">
            <property role="Xl_RC" value="jetbrains.mps.lang.test.launcher.LaunchTestWorker" />
          </node>
        </node>
        <node concept="3SKdUt" id="2o55QbnMffe" role="3cqZAp">
          <node concept="1PaTwC" id="2o55QbnMfff" role="1aUNEU">
            <node concept="3oM_SD" id="2o55QbnMfuB" role="1PaTwD">
              <property role="3oM_SC" value="According" />
            </node>
            <node concept="3oM_SD" id="2o55QbnMfuS" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="2o55QbnMfx$" role="1PaTwD">
              <property role="3oM_SC" value="CoreProgressManager.shouldKeepTasksAsynchronousInHeadlessMode," />
            </node>
            <node concept="3oM_SD" id="2o55QbnMfy7" role="1PaTwD">
              <property role="3oM_SC" value="ignoreHeadless" />
            </node>
            <node concept="3oM_SD" id="2o55QbnMfyo" role="1PaTwD">
              <property role="3oM_SC" value="means" />
            </node>
            <node concept="3oM_SD" id="2o55QbnMfyD" role="1PaTwD">
              <property role="3oM_SC" value="async" />
            </node>
            <node concept="3oM_SD" id="2o55QbnMfza" role="1PaTwD">
              <property role="3oM_SC" value="operations" />
            </node>
            <node concept="3oM_SD" id="2o55QbnMfzF" role="1PaTwD">
              <property role="3oM_SC" value="run" />
            </node>
            <node concept="3oM_SD" id="2o55QbnMfzG" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="2o55QbnMfzX" role="1PaTwD">
              <property role="3oM_SC" value="headless" />
            </node>
            <node concept="3oM_SD" id="2o55QbnMfzY" role="1PaTwD">
              <property role="3oM_SC" value="mode" />
            </node>
            <node concept="3oM_SD" id="2o55QbnMf$f" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="2o55QbnMf$g" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="2o55QbnMf$x" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="2o55QbnMf$M" role="1PaTwD">
              <property role="3oM_SC" value="they" />
            </node>
            <node concept="3oM_SD" id="2o55QbnMf_3" role="1PaTwD">
              <property role="3oM_SC" value="run" />
            </node>
            <node concept="3oM_SD" id="2o55QbnMf_4" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="2o55QbnMf_l" role="1PaTwD">
              <property role="3oM_SC" value="GUI" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2o55QbnJdqm" role="3cqZAp">
          <node concept="3cpWsn" id="2o55QbnJdqn" role="3cpWs9">
            <property role="TrG5h" value="a1" />
            <node concept="3uibUv" id="2o55QbnJdqo" role="1tU5fm">
              <ref role="3uigEE" to="644x:3ufQioQQsm3" resolve="Arg" />
            </node>
            <node concept="2ShNRf" id="2o55QbnJg1S" role="33vP2m">
              <node concept="1pGfFk" id="2o55QbnJhhG" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="644x:1hBlbKBNftw" resolve="Arg" />
                <node concept="Xl_RD" id="2o55QbnJhx8" role="37wK5m">
                  <property role="Xl_RC" value="-Dintellij.progress.task.ignoreHeadless=true" />
                </node>
                <node concept="Xl_RD" id="2o55QbnJhZO" role="37wK5m">
                  <property role="Xl_RC" value="-Dintellij.progress.task.ignoreHeadless" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2o55QbnJqDv" role="3cqZAp">
          <node concept="1PaTwC" id="2o55QbnJqDw" role="1aUNEU">
            <node concept="3oM_SD" id="2o55QbnJqDx" role="1PaTwD">
              <property role="3oM_SC" value="perhaps," />
            </node>
            <node concept="3oM_SD" id="2o55QbnJqSA" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJqSC" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJqT9" role="1PaTwD">
              <property role="3oM_SC" value="common" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJqTa" role="1PaTwD">
              <property role="3oM_SC" value="method" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJqTr" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJqTG" role="1PaTwD">
              <property role="3oM_SC" value="IDEA" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJqUd" role="1PaTwD">
              <property role="3oM_SC" value="env" />
            </node>
            <node concept="3oM_SD" id="2o55QbnJqUu" role="1PaTwD">
              <property role="3oM_SC" value="arguments?" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2o55QbnHB7I" role="3cqZAp">
          <node concept="3cpWsn" id="2o55QbnHB7J" role="3cpWs9">
            <property role="TrG5h" value="a2" />
            <node concept="3uibUv" id="2o55QbnHB7K" role="1tU5fm">
              <ref role="3uigEE" to="644x:3ufQioQQsm3" resolve="Arg" />
            </node>
            <node concept="2ShNRf" id="2o55QbnHB7L" role="33vP2m">
              <node concept="1pGfFk" id="2o55QbnHB7M" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="644x:1hBlbKBNftw" resolve="Arg" />
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
        <node concept="3SKdUt" id="2XPMm9goitp" role="3cqZAp">
          <node concept="1PaTwC" id="2XPMm9goitq" role="1aUNEU">
            <node concept="3oM_SD" id="2XPMm9goits" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goitt" role="1PaTwD">
              <property role="3oM_SC" value="system" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goitu" role="1PaTwD">
              <property role="3oM_SC" value="CL" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goitv" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goitw" role="1PaTwD">
              <property role="3oM_SC" value="runMPS;" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goitx" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goity" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goitz" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goit$" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goit_" role="1PaTwD">
              <property role="3oM_SC" value="forced" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goitA" role="1PaTwD">
              <property role="3oM_SC" value="core" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goitB" role="1PaTwD">
              <property role="3oM_SC" value="CL," />
            </node>
            <node concept="3oM_SD" id="2XPMm9goitC" role="1PaTwD">
              <property role="3oM_SC" value="optional" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goitD" role="1PaTwD">
              <property role="3oM_SC" value="core" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goitE" role="1PaTwD">
              <property role="3oM_SC" value="content" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goitF" role="1PaTwD">
              <property role="3oM_SC" value="modules" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goitG" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goitH" role="1PaTwD">
              <property role="3oM_SC" value="class" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goitI" role="1PaTwD">
              <property role="3oM_SC" value="loaders" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goitJ" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goitK" role="1PaTwD">
              <property role="3oM_SC" value="see" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goitL" role="1PaTwD">
              <property role="3oM_SC" value="their" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goitM" role="1PaTwD">
              <property role="3oM_SC" value="plugin" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goitN" role="1PaTwD">
              <property role="3oM_SC" value="dependencies" />
            </node>
            <node concept="3oM_SD" id="2XPMm9goitO" role="1PaTwD">
              <property role="3oM_SC" value="(MPS-40180)" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2XPMm9goite" role="3cqZAp">
          <node concept="3cpWsn" id="2XPMm9goitd" role="3cpWs9">
            <property role="TrG5h" value="a3" />
            <node concept="3uibUv" id="2XPMm9goitf" role="1tU5fm">
              <ref role="3uigEE" to="644x:3ufQioQQsm3" resolve="Arg" />
            </node>
            <node concept="2ShNRf" id="2XPMm9gorLz" role="33vP2m">
              <node concept="1pGfFk" id="2XPMm9gorLS" role="2ShVmc">
                <ref role="37wK5l" to="644x:1hBlbKBNftw" resolve="Arg" />
                <node concept="Xl_RD" id="2XPMm9gorLT" role="37wK5m">
                  <property role="Xl_RC" value="-Djava.system.class.loader=com.intellij.util.lang.PathClassLoader" />
                </node>
                <node concept="Xl_RD" id="2XPMm9gorLU" role="37wK5m">
                  <property role="Xl_RC" value="-Djava.system.class.loader" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2XPMm9goitk" role="3cqZAp">
          <node concept="3cpWsn" id="2XPMm9goitj" role="3cpWs9">
            <property role="TrG5h" value="a4" />
            <node concept="3uibUv" id="2XPMm9goitl" role="1tU5fm">
              <ref role="3uigEE" to="644x:3ufQioQQsm3" resolve="Arg" />
            </node>
            <node concept="2ShNRf" id="2XPMm9gorLV" role="33vP2m">
              <node concept="1pGfFk" id="2XPMm9gorMg" role="2ShVmc">
                <ref role="37wK5l" to="644x:1hBlbKBNftw" resolve="Arg" />
                <node concept="Xl_RD" id="2XPMm9gorMh" role="37wK5m">
                  <property role="Xl_RC" value="-Didea.force.use.core.classloader=false" />
                </node>
                <node concept="Xl_RD" id="2XPMm9gorMi" role="37wK5m">
                  <property role="Xl_RC" value="-Didea.force.use.core.classloader" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2XPMm9gowH2" role="3cqZAp">
          <node concept="1rXfSq" id="2XPMm9gowH3" role="3clFbG">
            <ref role="37wK5l" to="644x:3ufQioQQtns" resolve="addConfiguredJvmArgs" />
            <node concept="2ShNRf" id="2XPMm9gowHo" role="37wK5m">
              <node concept="1pGfFk" id="2XPMm9gowHz" role="2ShVmc">
                <ref role="37wK5l" to="644x:1hBlbKBX2QW" resolve="JvmArgs" />
                <node concept="3clFbT" id="2XPMm9gowH$" role="37wK5m" />
                <node concept="37vLTw" id="2XPMm9gowH_" role="37wK5m">
                  <ref role="3cqZAo" node="2o55QbnJdqn" resolve="a1" />
                </node>
                <node concept="37vLTw" id="2XPMm9gowHA" role="37wK5m">
                  <ref role="3cqZAo" node="2o55QbnHB7J" resolve="a2" />
                </node>
                <node concept="37vLTw" id="2XPMm9gowHB" role="37wK5m">
                  <ref role="3cqZAo" node="2XPMm9goitd" resolve="a3" />
                </node>
                <node concept="37vLTw" id="2XPMm9gowHC" role="37wK5m">
                  <ref role="3cqZAo" node="2XPMm9goitj" resolve="a4" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4MVYzzgvR6K" role="jymVt" />
    <node concept="3clFb_" id="5gsHVK$OlJd" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="3Tm1VV" id="5gsHVK$OlJe" role="1B3o_S" />
      <node concept="3cqZAl" id="5gsHVK$OlJg" role="3clF45" />
      <node concept="3uibUv" id="5gsHVK$OnrR" role="Sfmx6">
        <ref role="3uigEE" to="gola:~BuildException" resolve="BuildException" />
      </node>
      <node concept="3clFbS" id="5gsHVK$OlJj" role="3clF47">
        <node concept="3clFbF" id="5gsHVK$OlJm" role="3cqZAp">
          <node concept="3nyPlj" id="5gsHVK$OlJl" role="3clFbG">
            <ref role="37wK5l" to="gola:~Task.init()" resolve="init" />
          </node>
        </node>
        <node concept="3clFbF" id="5gsHVK$Yo$X" role="3cqZAp">
          <node concept="1rXfSq" id="5gsHVK$Yo$V" role="3clFbG">
            <ref role="37wK5l" to="644x:1$mDfZ_zcl8" resolve="setOpenPackages" />
            <node concept="3clFbT" id="5gsHVK$Yp0c" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5gsHVK$Yq5P" role="3cqZAp">
          <node concept="1rXfSq" id="5gsHVK$Yq5N" role="3clFbG">
            <ref role="37wK5l" to="644x:3ufQioQQtjQ" resolve="setFailOnError" />
            <node concept="3clFbT" id="5gsHVK$Yqxt" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5gsHVK$NSXG" role="3cqZAp">
          <node concept="1rXfSq" id="5gsHVK$NSXE" role="3clFbG">
            <ref role="37wK5l" node="5gsHVK$Ohb6" resolve="setForkTrue" />
          </node>
        </node>
        <node concept="3clFbF" id="5gsHVK$Yw9V" role="3cqZAp">
          <node concept="1rXfSq" id="5gsHVK$Yw9W" role="3clFbG">
            <ref role="37wK5l" to="644x:3ufQioQQtns" resolve="addConfiguredJvmArgs" />
            <node concept="1rXfSq" id="1hBlbKC3FBz" role="37wK5m">
              <ref role="37wK5l" to="644x:1hBlbKBW1jB" resolve="jvmArgsFrom" />
              <node concept="37vLTw" id="1hBlbKC3IhL" role="37wK5m">
                <ref role="3cqZAo" node="5gsHVK_2GMu" resolve="NO_FS_ROOTS_ACCESS_CHECK_OPTION" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5gsHVK$OlJk" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5gsHVK$Om0H" role="jymVt" />
    <node concept="3clFb_" id="5gsHVK$OfAM" role="jymVt">
      <property role="TrG5h" value="setFork" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="5gsHVK$OfAN" role="1B3o_S" />
      <node concept="3cqZAl" id="5gsHVK$OfAO" role="3clF45" />
      <node concept="37vLTG" id="5gsHVK$OfAP" role="3clF46">
        <property role="TrG5h" value="fork" />
        <property role="3TUv4t" value="false" />
        <node concept="10P_77" id="5gsHVK$OfAQ" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5gsHVK$OfAW" role="3clF47">
        <node concept="3clFbJ" id="5gsHVK$OoEj" role="3cqZAp">
          <node concept="3fqX7Q" id="5gsHVK$OoS9" role="3clFbw">
            <node concept="37vLTw" id="5gsHVK$Op3S" role="3fr31v">
              <ref role="3cqZAo" node="5gsHVK$OfAP" resolve="fork" />
            </node>
          </node>
          <node concept="3clFbS" id="5gsHVK$OoEl" role="3clFbx">
            <node concept="YS8fn" id="5gsHVK$Opf_" role="3cqZAp">
              <node concept="2ShNRf" id="5gsHVK$Opr0" role="YScLw">
                <node concept="1pGfFk" id="5gsHVK$OqtR" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="gola:~BuildException.&lt;init&gt;(java.lang.String)" resolve="BuildException" />
                  <node concept="Xl_RD" id="5gsHVK$OqD3" role="37wK5m">
                    <property role="Xl_RC" value="fork=false not supported" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5gsHVK$Oscq" role="3cqZAp">
          <node concept="3nyPlj" id="5gsHVK$Osco" role="3clFbG">
            <ref role="37wK5l" to="644x:3ufQioQQtke" resolve="setFork" />
            <node concept="3clFbT" id="5gsHVK$OsBP" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5gsHVK$OfAX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5gsHVK$Oh5_" role="jymVt" />
    <node concept="3clFb_" id="HwplGLLEu6" role="jymVt">
      <property role="TrG5h" value="setHaltOnFailure" />
      <node concept="37vLTG" id="HwplGLLRwR" role="3clF46">
        <property role="TrG5h" value="haltOnFailure" />
        <node concept="10P_77" id="HwplGLLTw1" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="HwplGLLEu8" role="3clF45" />
      <node concept="3Tm1VV" id="HwplGLLEu9" role="1B3o_S" />
      <node concept="3clFbS" id="HwplGLLEua" role="3clF47">
        <node concept="3clFbF" id="HwplGLLUkd" role="3cqZAp">
          <node concept="2OqwBi" id="HwplGLLZdV" role="3clFbG">
            <node concept="2OqwBi" id="HwplGLLWeq" role="2Oq$k0">
              <node concept="Xjq3P" id="HwplGLLUkc" role="2Oq$k0" />
              <node concept="2OwXpG" id="HwplGLLXV1" role="2OqNvi">
                <ref role="2Oxat5" to="644x:3ufQioQQtje" resolve="myWhatToDo" />
              </node>
            </node>
            <node concept="liA8E" id="400sF7FtyY6" role="2OqNvi">
              <ref role="37wK5l" to="asz6:KL8Aql8et$" resolve="updateFailOnError" />
              <node concept="37vLTw" id="400sF7Ft_5$" role="37wK5m">
                <ref role="3cqZAo" node="HwplGLLRwR" resolve="haltOnFailure" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="HwplGLLCE9" role="jymVt" />
    <node concept="3clFb_" id="5HBbAYqG$Xc" role="jymVt">
      <property role="TrG5h" value="setReports" />
      <node concept="37vLTG" id="5HBbAYqG$Xd" role="3clF46">
        <property role="TrG5h" value="testReportsDir" />
        <node concept="3uibUv" id="5HBbAYqJusD" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3cqZAl" id="5HBbAYqG$Xf" role="3clF45" />
      <node concept="3Tm1VV" id="5HBbAYqG$Xg" role="1B3o_S" />
      <node concept="3clFbS" id="5HBbAYqG$Xh" role="3clF47">
        <node concept="3clFbF" id="5HBbAYqG$Xi" role="3cqZAp">
          <node concept="2OqwBi" id="5HBbAYqG$Xj" role="3clFbG">
            <node concept="2OqwBi" id="5HBbAYqG$Xk" role="2Oq$k0">
              <node concept="Xjq3P" id="5HBbAYqG$Xl" role="2Oq$k0" />
              <node concept="2OwXpG" id="5HBbAYqG$Xm" role="2OqNvi">
                <ref role="2Oxat5" to="644x:3ufQioQQtje" resolve="myWhatToDo" />
              </node>
            </node>
            <node concept="liA8E" id="5HBbAYqG$Xn" role="2OqNvi">
              <ref role="37wK5l" to="asz6:KL8Aql8eBe" resolve="putProperty" />
              <node concept="37vLTw" id="5HBbAYqG$Xo" role="37wK5m">
                <ref role="3cqZAo" node="5HBbAYqGxvU" resolve="TEST_REPORTS_DIR_PROPERTY" />
              </node>
              <node concept="2OqwBi" id="5HBbAYqG$Xp" role="37wK5m">
                <node concept="37vLTw" id="5HBbAYqJxNl" role="2Oq$k0">
                  <ref role="3cqZAo" node="5HBbAYqG$Xd" resolve="testReportsDir" />
                </node>
                <node concept="liA8E" id="5HBbAYqG$Xs" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.toString()" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="51DD0tdN8qp" role="jymVt" />
    <node concept="3clFb_" id="51DD0tdN6DH" role="jymVt">
      <property role="TrG5h" value="setOpenTest" />
      <node concept="37vLTG" id="51DD0tdN6DI" role="3clF46">
        <property role="TrG5h" value="openTest" />
        <node concept="10P_77" id="51DD0tdNicW" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="51DD0tdN6DK" role="3clF45" />
      <node concept="3Tm1VV" id="51DD0tdN6DL" role="1B3o_S" />
      <node concept="3clFbS" id="51DD0tdN6DM" role="3clF47">
        <node concept="3clFbF" id="51DD0tdN6DN" role="3cqZAp">
          <node concept="2OqwBi" id="51DD0tdN6DO" role="3clFbG">
            <node concept="2OqwBi" id="51DD0tdN6DP" role="2Oq$k0">
              <node concept="Xjq3P" id="51DD0tdN6DQ" role="2Oq$k0" />
              <node concept="2OwXpG" id="51DD0tdN6DR" role="2OqNvi">
                <ref role="2Oxat5" to="644x:3ufQioQQtje" resolve="myWhatToDo" />
              </node>
            </node>
            <node concept="liA8E" id="51DD0tdN6DS" role="2OqNvi">
              <ref role="37wK5l" to="asz6:KL8Aql8eBe" resolve="putProperty" />
              <node concept="37vLTw" id="51DD0tdN6DT" role="37wK5m">
                <ref role="3cqZAo" node="51DD0tdNp3b" resolve="TEST_REPORTS_OPENTEST" />
              </node>
              <node concept="2YIFZM" id="51DD0tdNJQi" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~Boolean.toString(boolean)" resolve="toString" />
                <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                <node concept="37vLTw" id="51DD0tdNLdJ" role="37wK5m">
                  <ref role="3cqZAo" node="51DD0tdN6DI" resolve="openTest" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5HBbAYqG$Xb" role="jymVt" />
    <node concept="3clFb_" id="3vL64MrqPjM" role="jymVt">
      <property role="TrG5h" value="addConfiguredProject" />
      <node concept="3clFbS" id="3vL64MrqPjP" role="3clF47">
        <node concept="3clFbJ" id="3vL64Mru9aO" role="3cqZAp">
          <node concept="3clFbS" id="3vL64Mru9aQ" role="3clFbx">
            <node concept="3clFbF" id="3vL64MrqVms" role="3cqZAp">
              <node concept="2OqwBi" id="3vL64MrqWMh" role="3clFbG">
                <node concept="37vLTw" id="3vL64MrqVmr" role="2Oq$k0">
                  <ref role="3cqZAo" to="644x:3ufQioQQtje" resolve="myWhatToDo" />
                </node>
                <node concept="liA8E" id="3vL64MrqYqb" role="2OqNvi">
                  <ref role="37wK5l" to="asz6:KL8Aql8eqX" resolve="addProjectFile" />
                  <node concept="2OqwBi" id="3vL64Mrr0J9" role="37wK5m">
                    <node concept="37vLTw" id="3vL64MrqZw4" role="2Oq$k0">
                      <ref role="3cqZAo" node="3vL64MrqTBu" resolve="projectPath" />
                    </node>
                    <node concept="liA8E" id="3vL64Mrr2bz" role="2OqNvi">
                      <ref role="37wK5l" to="644x:3vL64MrqKye" resolve="getPath" />
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
                <ref role="37wK5l" to="644x:3vL64MrqKye" resolve="getPath" />
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
          <ref role="3uigEE" to="644x:3vL64MrqJPF" resolve="ProjectPath" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="KUYoaWXRWz" role="jymVt" />
    <node concept="3clFb_" id="28$8eDn2SGn" role="jymVt">
      <property role="TrG5h" value="addConfiguredLibrary" />
      <node concept="3cqZAl" id="28$8eDn2SGo" role="3clF45" />
      <node concept="3Tm1VV" id="28$8eDn2SGp" role="1B3o_S" />
      <node concept="3clFbS" id="28$8eDn2SGq" role="3clF47">
        <node concept="3cpWs8" id="28$8eDn2SGr" role="3cqZAp">
          <node concept="3cpWsn" id="28$8eDn2SGs" role="3cpWs9">
            <property role="TrG5h" value="file" />
            <node concept="3uibUv" id="28$8eDn2SGt" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2OqwBi" id="28$8eDn2SGu" role="33vP2m">
              <node concept="37vLTw" id="28$8eDn2SGv" role="2Oq$k0">
                <ref role="3cqZAo" node="28$8eDn2SGE" resolve="jar" />
              </node>
              <node concept="liA8E" id="28$8eDn2SGw" role="2OqNvi">
                <ref role="37wK5l" to="644x:3ag$5R8QD_N" resolve="getFile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="28$8eDn2SGx" role="3cqZAp">
          <node concept="3clFbS" id="28$8eDn2SGy" role="3clFbx">
            <node concept="3cpWs6" id="28$8eDn2SGz" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="28$8eDn2SG$" role="3clFbw">
            <node concept="37vLTw" id="28$8eDn2SG_" role="3uHU7B">
              <ref role="3cqZAo" node="28$8eDn2SGs" resolve="file" />
            </node>
            <node concept="10Nm6u" id="28$8eDn2SGA" role="3uHU7w" />
          </node>
        </node>
        <node concept="3clFbF" id="28$8eDn2SGB" role="3cqZAp">
          <node concept="1rXfSq" id="28$8eDn2SGC" role="3clFbG">
            <ref role="37wK5l" to="644x:28$8eDmZz2T" resolve="addLibraryJar" />
            <node concept="37vLTw" id="28$8eDn2SGD" role="37wK5m">
              <ref role="3cqZAo" node="28$8eDn2SGs" resolve="file" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="28$8eDn2SGE" role="3clF46">
        <property role="TrG5h" value="jar" />
        <node concept="3uibUv" id="28$8eDn2SGF" role="1tU5fm">
          <ref role="3uigEE" to="644x:3ufQioQQu2K" resolve="ModuleJarDataType" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4MVYzzgwudE" role="jymVt" />
    <node concept="3clFb_" id="4MVYzzgwuiZ" role="jymVt">
      <property role="TrG5h" value="addConfiguredMacro" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="4MVYzzgwuj0" role="1B3o_S" />
      <node concept="3cqZAl" id="4MVYzzgwuj1" role="3clF45" />
      <node concept="37vLTG" id="4MVYzzgwuj2" role="3clF46">
        <property role="TrG5h" value="macro" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="4MVYzzgwuj3" role="1tU5fm">
          <ref role="3uigEE" to="644x:3ufQioQQt4w" resolve="Macro" />
        </node>
      </node>
      <node concept="3clFbS" id="4MVYzzgwujh" role="3clF47">
        <node concept="3clFbF" id="4MVYzzgwujl" role="3cqZAp">
          <node concept="3nyPlj" id="4MVYzzgwujk" role="3clFbG">
            <ref role="37wK5l" to="644x:3ufQioQQtmx" resolve="addConfiguredMacro" />
            <node concept="37vLTw" id="4MVYzzgwujj" role="37wK5m">
              <ref role="3cqZAo" node="4MVYzzgwuj2" resolve="macro" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4MVYzzgwuji" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5gsHVK_0hdZ" role="jymVt" />
    <node concept="3clFb_" id="5gsHVK_0is2" role="jymVt">
      <property role="TrG5h" value="addConfiguredTestModules" />
      <node concept="37vLTG" id="5gsHVK_0lCj" role="3clF46">
        <property role="TrG5h" value="testModules" />
        <node concept="3uibUv" id="5gsHVK_0mag" role="1tU5fm">
          <ref role="3uigEE" node="5gsHVK$ZUic" resolve="TestModules" />
        </node>
      </node>
      <node concept="3cqZAl" id="5gsHVK_0is4" role="3clF45" />
      <node concept="3Tm1VV" id="5gsHVK_0is5" role="1B3o_S" />
      <node concept="3clFbS" id="5gsHVK_0is6" role="3clF47">
        <node concept="3clFbF" id="5gsHVK_0qGR" role="3cqZAp">
          <node concept="2OqwBi" id="5gsHVK_0s1C" role="3clFbG">
            <node concept="37vLTw" id="5gsHVK_0qGQ" role="2Oq$k0">
              <ref role="3cqZAo" node="5gsHVK_0mum" resolve="myModuleFile" />
            </node>
            <node concept="liA8E" id="5gsHVK_0tIW" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection)" resolve="addAll" />
              <node concept="2OqwBi" id="5gsHVK_0uC5" role="37wK5m">
                <node concept="37vLTw" id="5gsHVK_0uhp" role="2Oq$k0">
                  <ref role="3cqZAo" node="5gsHVK_0lCj" resolve="testModules" />
                </node>
                <node concept="liA8E" id="5gsHVK_0vd9" role="2OqNvi">
                  <ref role="37wK5l" node="5gsHVK$ZYgE" resolve="getAllFilesThatExist" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4MVYzzgvR6R" role="jymVt" />
    <node concept="2tJIrI" id="HwplGLQRT3" role="jymVt" />
    <node concept="3clFb_" id="5gsHVK$XZk6" role="jymVt">
      <property role="TrG5h" value="calculateClassPath" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="5gsHVK$XZk7" role="1B3o_S" />
      <node concept="3uibUv" id="5gsHVK$XZk8" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="5gsHVK$XZk9" role="11_B2D">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="37vLTG" id="5gsHVK$XZlv" role="3clF46">
        <property role="TrG5h" value="fork" />
        <node concept="10P_77" id="5gsHVK$XZlw" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5gsHVK$XZlG" role="3clF47">
        <node concept="3cpWs8" id="5gsHVK$Y3fP" role="3cqZAp">
          <node concept="3cpWsn" id="5gsHVK$Y3fQ" role="3cpWs9">
            <property role="TrG5h" value="cp" />
            <node concept="3uibUv" id="5gsHVK$Y3fN" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~LinkedHashSet" resolve="LinkedHashSet" />
              <node concept="3uibUv" id="5gsHVK$Y3fO" role="11_B2D">
                <ref role="3uigEE" to="guwi:~File" resolve="File" />
              </node>
            </node>
            <node concept="2ShNRf" id="5gsHVK$Y3fR" role="33vP2m">
              <node concept="1pGfFk" id="5gsHVK$Y3fS" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~LinkedHashSet.&lt;init&gt;(java.util.Collection)" resolve="LinkedHashSet" />
                <node concept="3nyPlj" id="5gsHVK$Y3fT" role="37wK5m">
                  <ref role="37wK5l" to="644x:3ufQioQQtwU" resolve="calculateClassPath" />
                  <node concept="37vLTw" id="5gsHVK$Y3fU" role="37wK5m">
                    <ref role="3cqZAo" node="5gsHVK$XZlv" resolve="fork" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1oo0A63GPjg" role="3cqZAp">
          <node concept="3cpWsn" id="1oo0A63GPjh" role="3cpWs9">
            <property role="TrG5h" value="mpsHome" />
            <node concept="1rXfSq" id="4OPNMy26ZGv" role="33vP2m">
              <ref role="37wK5l" to="644x:4OPNMy25ZUO" resolve="getMpsHome_Checked" />
            </node>
            <node concept="3uibUv" id="gQDJKN7uul" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5gsHVKA510O" role="3cqZAp">
          <node concept="3cpWsn" id="5gsHVKA510P" role="3cpWs9">
            <property role="TrG5h" value="mpsTestingPluginHome" />
            <node concept="3uibUv" id="5gsHVKA50zL" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="5gsHVKA510Q" role="33vP2m">
              <node concept="1pGfFk" id="5gsHVKA510R" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                <node concept="37vLTw" id="5gsHVKA510S" role="37wK5m">
                  <ref role="3cqZAo" node="1oo0A63GPjh" resolve="mpsHome" />
                </node>
                <node concept="37vLTw" id="5gsHVKA510T" role="37wK5m">
                  <ref role="3cqZAo" node="5gsHVKA4WnD" resolve="MPS_TESTING_PLUGIN_HOME" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5gsHVKA6JWS" role="3cqZAp">
          <node concept="3clFbS" id="5gsHVKA6JWU" role="3clFbx">
            <node concept="YS8fn" id="5gsHVKA6Qen" role="3cqZAp">
              <node concept="2ShNRf" id="5gsHVKA6Rt3" role="YScLw">
                <node concept="1pGfFk" id="5gsHVKA6TU1" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="gola:~BuildException.&lt;init&gt;(java.lang.String)" resolve="BuildException" />
                  <node concept="Xl_RD" id="5gsHVKA6Ves" role="37wK5m">
                    <property role="Xl_RC" value="mps-testing plugin not found" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="5gsHVKA6OXc" role="3clFbw">
            <node concept="2OqwBi" id="5gsHVKA6OXe" role="3fr31v">
              <node concept="37vLTw" id="5gsHVKA6OXf" role="2Oq$k0">
                <ref role="3cqZAo" node="5gsHVKA510P" resolve="mpsTestingPluginHome" />
              </node>
              <node concept="liA8E" id="5gsHVKA6OXg" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5gsHVKA6r2V" role="3cqZAp">
          <node concept="3cpWsn" id="5gsHVKA6r2W" role="3cpWs9">
            <property role="TrG5h" value="launcherSupport" />
            <node concept="3uibUv" id="5gsHVKA6qf4" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="5gsHVKA6r2X" role="33vP2m">
              <node concept="1pGfFk" id="5gsHVKA6r2Y" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                <node concept="37vLTw" id="5gsHVKA6r2Z" role="37wK5m">
                  <ref role="3cqZAo" node="5gsHVKA510P" resolve="mpsTestingPluginHome" />
                </node>
                <node concept="37vLTw" id="5gsHVKA6r30" role="37wK5m">
                  <ref role="3cqZAo" node="5gsHVKCOxLY" resolve="LAUNCHER_SUPPORT_JAR" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5gsHVKA79tu" role="3cqZAp">
          <node concept="3clFbS" id="5gsHVKA79tw" role="3clFbx">
            <node concept="YS8fn" id="5gsHVKA7htd" role="3cqZAp">
              <node concept="2ShNRf" id="5gsHVKA7iEh" role="YScLw">
                <node concept="1pGfFk" id="5gsHVKA7lFd" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="gola:~BuildException.&lt;init&gt;(java.lang.String)" resolve="BuildException" />
                  <node concept="Xl_RD" id="5gsHVKA7n0l" role="37wK5m">
                    <property role="Xl_RC" value="launchtests support library not found" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="5gsHVKA7gdE" role="3clFbw">
            <node concept="2OqwBi" id="5gsHVKA7gdG" role="3fr31v">
              <node concept="37vLTw" id="5gsHVKA7gdH" role="2Oq$k0">
                <ref role="3cqZAo" node="5gsHVKA6r2W" resolve="launcherSupport" />
              </node>
              <node concept="liA8E" id="5gsHVKA7gdI" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5gsHVKCOY$b" role="3cqZAp">
          <node concept="2OqwBi" id="5gsHVKCOY$c" role="3clFbG">
            <node concept="37vLTw" id="5gsHVKCOY$d" role="2Oq$k0">
              <ref role="3cqZAo" node="5gsHVK$Y3fQ" resolve="cp" />
            </node>
            <node concept="liA8E" id="5gsHVKCOY$e" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~HashSet.add(java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="5gsHVKCOY$f" role="37wK5m">
                <ref role="3cqZAo" node="5gsHVKA6r2W" resolve="launcherSupport" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5gsHVKA4ZYh" role="3cqZAp" />
        <node concept="3clFbF" id="5gsHVK$Yfqv" role="3cqZAp">
          <node concept="37vLTw" id="5gsHVK$Yfqt" role="3clFbG">
            <ref role="3cqZAo" node="5gsHVK$Y3fQ" resolve="cp" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5gsHVK$XZlH" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5gsHVK_0vIZ" role="jymVt" />
    <node concept="3clFb_" id="76_s2Q_bp7s" role="jymVt">
      <property role="TrG5h" value="filterClasspathEntry" />
      <node concept="37vLTG" id="76_s2Q_bp7t" role="3clF46">
        <property role="TrG5h" value="entry" />
        <node concept="17QB3L" id="76_s2Q_bp7u" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="76_s2Q_bp7v" role="3clF45" />
      <node concept="3Tmbuc" id="76_s2Q_bp7w" role="1B3o_S" />
      <node concept="3clFbS" id="76_s2Q_bp7D" role="3clF47">
        <node concept="3SKdUt" id="76_s2Q$EOhQ" role="3cqZAp">
          <node concept="1PaTwC" id="76_s2Q$EOhR" role="1aUNEU">
            <node concept="3oM_SD" id="76_s2Q$EYPT" role="1PaTwD">
              <property role="3oM_SC" value="filter" />
            </node>
            <node concept="3oM_SD" id="76_s2Q$EYPV" role="1PaTwD">
              <property role="3oM_SC" value="out" />
            </node>
            <node concept="3oM_SD" id="76_s2Q$EYTm" role="1PaTwD">
              <property role="3oM_SC" value="junit-3.8.2.jar" />
            </node>
            <node concept="3oM_SD" id="76_s2Q$EZsQ" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="76_s2Q$EZsV" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="76_s2Q$EZuH" role="1PaTwD">
              <property role="3oM_SC" value="unconditionally" />
            </node>
            <node concept="3oM_SD" id="76_s2Q$EZ_$" role="1PaTwD">
              <property role="3oM_SC" value="provided" />
            </node>
            <node concept="3oM_SD" id="76_s2Q$EZGs" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="76_s2Q$EZG_" role="1PaTwD">
              <property role="3oM_SC" value="TC's" />
            </node>
            <node concept="3oM_SD" id="76_s2Q$EZLN" role="1PaTwD">
              <property role="3oM_SC" value="Ant" />
            </node>
            <node concept="3oM_SD" id="76_s2Q$EZPm" role="1PaTwD">
              <property role="3oM_SC" value="runner" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4PUdRxB_hzz" role="3cqZAp">
          <node concept="1PaTwC" id="4PUdRxB_hz$" role="1aUNEU">
            <node concept="3oM_SD" id="4PUdRxB_iMk" role="1PaTwD">
              <property role="3oM_SC" value="also," />
            </node>
            <node concept="3oM_SD" id="4PUdRxB_iNr" role="1PaTwD">
              <property role="3oM_SC" value="filter" />
            </node>
            <node concept="3oM_SD" id="4PUdRxB_iPC" role="1PaTwD">
              <property role="3oM_SC" value="out" />
            </node>
            <node concept="3oM_SD" id="4PUdRxB_iUb" role="1PaTwD">
              <property role="3oM_SC" value="junit-4.11.jar" />
            </node>
            <node concept="3oM_SD" id="4PUdRxB_iZ0" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="4PUdRxB_iZ6" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="4PUdRxB_j0i" role="1PaTwD">
              <property role="3oM_SC" value="apparently" />
            </node>
            <node concept="3oM_SD" id="4PUdRxB_j1v" role="1PaTwD">
              <property role="3oM_SC" value="distributed" />
            </node>
            <node concept="3oM_SD" id="4PUdRxB_j71" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="4PUdRxB_j8g" role="1PaTwD">
              <property role="3oM_SC" value="Ant" />
            </node>
            <node concept="3oM_SD" id="4PUdRxB_j9w" role="1PaTwD">
              <property role="3oM_SC" value="1.10.1" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4PUdRxB_ls2" role="3cqZAp">
          <node concept="1PaTwC" id="4PUdRxB_ls3" role="1aUNEU">
            <node concept="3oM_SD" id="4PUdRxB_mF0" role="1PaTwD">
              <property role="3oM_SC" value="neither" />
            </node>
            <node concept="3oM_SD" id="4PUdRxB_mG7" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="4PUdRxB_mHf" role="1PaTwD">
              <property role="3oM_SC" value="compatible" />
            </node>
            <node concept="3oM_SD" id="4PUdRxB_mKy" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="4PUdRxB_mKB" role="1PaTwD">
              <property role="3oM_SC" value="JUnit5's" />
            </node>
            <node concept="3oM_SD" id="4PUdRxB_mMR" role="1PaTwD">
              <property role="3oM_SC" value="Vintage" />
            </node>
            <node concept="3oM_SD" id="4PUdRxB_mO3" role="1PaTwD">
              <property role="3oM_SC" value="engine" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="76_s2Q_btaE" role="3cqZAp">
          <node concept="22lmx$" id="4PUdRxB_4mB" role="3clFbG">
            <node concept="2OqwBi" id="4PUdRxB_8Wt" role="3uHU7w">
              <node concept="37vLTw" id="4PUdRxB_7vc" role="2Oq$k0">
                <ref role="3cqZAo" node="76_s2Q_bp7t" resolve="entry" />
              </node>
              <node concept="liA8E" id="4PUdRxB_asw" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                <node concept="Xl_RD" id="4PUdRxB_cDd" role="37wK5m">
                  <property role="Xl_RC" value="junit-4.11" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="76_s2Q$Ecym" role="3uHU7B">
              <node concept="37vLTw" id="76_s2Q$E8jX" role="2Oq$k0">
                <ref role="3cqZAo" node="76_s2Q_bp7t" resolve="entry" />
              </node>
              <node concept="liA8E" id="76_s2Q$EkBJ" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                <node concept="Xl_RD" id="76_s2Q$ErhY" role="37wK5m">
                  <property role="Xl_RC" value="junit-3" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="76_s2Q_bp7E" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="76_s2Q_bIRL" role="jymVt" />
    <node concept="3clFb_" id="5gsHVK_0JqV" role="jymVt">
      <property role="TrG5h" value="finalizeScriptSettings" />
      <node concept="3Tmbuc" id="5gsHVK_0Jru" role="1B3o_S" />
      <node concept="3cqZAl" id="5gsHVK_0Jrv" role="3clF45" />
      <node concept="37vLTG" id="5gsHVK_0Jrw" role="3clF46">
        <property role="TrG5h" value="whatToDo" />
        <node concept="3uibUv" id="5gsHVK_0Jrx" role="1tU5fm">
          <ref role="3uigEE" to="asz6:KL8Aql8enO" resolve="Script" />
        </node>
      </node>
      <node concept="3clFbS" id="5gsHVK_0JrI" role="3clF47">
        <node concept="3clFbF" id="5gsHVK_0JrM" role="3cqZAp">
          <node concept="3nyPlj" id="5gsHVK_0JrL" role="3clFbG">
            <ref role="37wK5l" to="644x:g9$9d2AipS" resolve="finalizeScriptSettings" />
            <node concept="37vLTw" id="5gsHVK_0JrK" role="37wK5m">
              <ref role="3cqZAo" node="5gsHVK_0Jrw" resolve="whatToDo" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5gsHVK_0MzR" role="3cqZAp" />
        <node concept="1DcWWT" id="5gsHVK_0O1L" role="3cqZAp">
          <node concept="3clFbS" id="5gsHVK_0O1O" role="2LFqv$">
            <node concept="3clFbF" id="5gsHVK_12Q8" role="3cqZAp">
              <node concept="2OqwBi" id="5gsHVK_13Ui" role="3clFbG">
                <node concept="37vLTw" id="5gsHVK_12Q6" role="2Oq$k0">
                  <ref role="3cqZAo" node="5gsHVK_0Jrw" resolve="whatToDo" />
                </node>
                <node concept="liA8E" id="5gsHVK_15ox" role="2OqNvi">
                  <ref role="37wK5l" to="asz6:KL8Aql8epR" resolve="addModuleFile" />
                  <node concept="37vLTw" id="5gsHVK_2_An" role="37wK5m">
                    <ref role="3cqZAo" node="5gsHVK_0O1P" resolve="f" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5gsHVK_0O1P" role="1Duv9x">
            <property role="TrG5h" value="f" />
            <node concept="3uibUv" id="5gsHVK_2xDY" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
          </node>
          <node concept="37vLTw" id="5gsHVK_0O1U" role="1DdaDG">
            <ref role="3cqZAo" node="5gsHVK_0mum" resolve="myModuleFile" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5gsHVK_0JrJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5gsHVK_0La8" role="jymVt" />
    <node concept="3clFb_" id="1rGdf3ZzO13" role="jymVt">
      <property role="TrG5h" value="createStreamHandler" />
      <node concept="3uibUv" id="1rGdf3ZzO14" role="3clF45">
        <ref role="3uigEE" to="kpdv:~ExecuteStreamHandler" resolve="ExecuteStreamHandler" />
      </node>
      <node concept="3Tmbuc" id="1rGdf3ZzO15" role="1B3o_S" />
      <node concept="3clFbS" id="1rGdf3ZzO1k" role="3clF47">
        <node concept="3clFbJ" id="1rGdf3Z_bH9" role="3cqZAp">
          <node concept="3clFbS" id="1rGdf3Z_bHb" role="3clFbx">
            <node concept="3cpWs6" id="1rGdf3Z_e$N" role="3cqZAp">
              <node concept="2ShNRf" id="1rGdf3Z_fZN" role="3cqZAk">
                <node concept="1pGfFk" id="1rGdf3Z_iPN" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" node="1rGdf3Zytcm" resolve="ServiceMessageFilteringStreamHandler" />
                  <node concept="Xjq3P" id="1rGdf3Z_iRe" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="1rGdf3Z_d8y" role="3clFbw">
            <ref role="37wK5l" node="1rGdf3Z$Mke" resolve="isRunningOnTeamcity" />
          </node>
          <node concept="9aQIb" id="1rGdf3Z_kXQ" role="9aQIa">
            <node concept="3clFbS" id="1rGdf3Z_kXR" role="9aQI4">
              <node concept="3cpWs6" id="1rGdf3Z_mpu" role="3cqZAp">
                <node concept="2ShNRf" id="1rGdf3Z_nmp" role="3cqZAk">
                  <node concept="1pGfFk" id="1rGdf3Z_qer" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="1rGdf3Zz4BS" resolve="OutputLoggingStreamHandler" />
                    <node concept="Xjq3P" id="1rGdf3Z_rEN" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1rGdf3ZzO1l" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1rGdf3ZzTBd" role="jymVt" />
    <node concept="3clFb_" id="1rGdf3Z$Mke" role="jymVt">
      <property role="TrG5h" value="isRunningOnTeamcity" />
      <node concept="10P_77" id="1rGdf3Z$NWa" role="3clF45" />
      <node concept="3Tm1VV" id="1rGdf3Z$Mkh" role="1B3o_S" />
      <node concept="3clFbS" id="1rGdf3Z$Mki" role="3clF47">
        <node concept="3clFbF" id="1rGdf3Z$VTE" role="3cqZAp">
          <node concept="3y3z36" id="1rGdf3Z_6lj" role="3clFbG">
            <node concept="10Nm6u" id="1rGdf3Z_7J6" role="3uHU7w" />
            <node concept="2OqwBi" id="1rGdf3Z$Yr$" role="3uHU7B">
              <node concept="2OqwBi" id="3ufQioQQtvL" role="2Oq$k0">
                <node concept="1rXfSq" id="4hiugqyyP62" role="2Oq$k0">
                  <ref role="37wK5l" to="gola:~ProjectComponent.getProject()" resolve="getProject" />
                </node>
                <node concept="liA8E" id="3ufQioQQtvN" role="2OqNvi">
                  <ref role="37wK5l" to="gola:~Project.getProperties()" resolve="getProperties" />
                </node>
              </node>
              <node concept="liA8E" id="1rGdf3Z_0q3" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Hashtable.get(java.lang.Object)" resolve="get" />
                <node concept="Xl_RD" id="1rGdf3Z_1Us" role="37wK5m">
                  <property role="Xl_RC" value="teamcity.version" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1rGdf3Z_9hu" role="jymVt" />
    <node concept="3clFb_" id="5gsHVK$Ohb6" role="jymVt">
      <property role="TrG5h" value="setForkTrue" />
      <node concept="3cqZAl" id="5gsHVK$Ohb8" role="3clF45" />
      <node concept="3Tm6S6" id="5gsHVK$OhER" role="1B3o_S" />
      <node concept="3clFbS" id="5gsHVK$Ohba" role="3clF47">
        <node concept="3clFbF" id="5gsHVK$OnIm" role="3cqZAp">
          <node concept="3nyPlj" id="5gsHVK$OnIl" role="3clFbG">
            <ref role="37wK5l" to="644x:3ufQioQQtke" resolve="setFork" />
            <node concept="3clFbT" id="5gsHVK$Oom4" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
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
              <node concept="10M0yZ" id="KUYoaWY4FI" role="37wK5m">
                <ref role="3cqZAo" to="gola:~Project.MSG_ERR" resolve="MSG_ERR" />
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
    <node concept="2tJIrI" id="5gsHVK$XwSg" role="jymVt" />
    <node concept="3Tm1VV" id="4MVYzzgvQfF" role="1B3o_S" />
    <node concept="3uibUv" id="4MVYzzgvQKA" role="1zkMxy">
      <ref role="3uigEE" to="644x:3ufQioQQti6" resolve="MpsLoadTask" />
    </node>
    <node concept="3UR2Jj" id="4MVYzzgwoCO" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHs_sz" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_s$" role="1PaTwD">
          <property role="3oM_SC" value="A" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_s_" role="1PaTwD">
          <property role="3oM_SC" value="runtime" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_sA" role="1PaTwD">
          <property role="3oM_SC" value="object" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_sB" role="1PaTwD">
          <property role="3oM_SC" value="representing" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_sC" role="1PaTwD">
          <property role="3oM_SC" value="Ant" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_sD" role="1PaTwD">
          <property role="3oM_SC" value="task" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_sE" role="1PaTwD">
          <property role="3oM_SC" value="&amp;lt;launchtest&amp;gt;." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_sF" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_sG" role="1PaTwD">
          <property role="3oM_SC" value="Executes" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_sH" role="1PaTwD">
          <property role="3oM_SC" value="tests" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_sI" role="1PaTwD">
          <property role="3oM_SC" value="in" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_sJ" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_sK" role="1PaTwD">
          <property role="3oM_SC" value="forked" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_sL" role="1PaTwD">
          <property role="3oM_SC" value="process." />
        </node>
        <node concept="22dLRv" id="1E1X3WHs_sM" role="1PaTwD">
          <property role="22dLRs" value="p" />
          <node concept="1PaTwC" id="1E1X3WHs_sO" role="22dLJL">
            <node concept="3oM_SD" id="1E1X3WHs_sP" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_sQ" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_sR" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_sS" role="1PaTwD">
          <property role="3oM_SC" value="Supports" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_sT" role="1PaTwD">
          <property role="3oM_SC" value="children" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_sU" role="1PaTwD">
          <property role="3oM_SC" value="tags:" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_sV" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_sW" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
        <node concept="22dLRv" id="1E1X3WHs_sX" role="1PaTwD">
          <property role="22dLRs" value="ul" />
          <node concept="1PaTwC" id="1E1X3WHs_sZ" role="22dLJL">
            <node concept="3oM_SD" id="1E1X3WHs_t0" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
          <node concept="1PaTwC" id="1E1X3WHs_t1" role="22dLJL">
            <node concept="3oM_SD" id="1E1X3WHs_t2" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="22dLRv" id="1E1X3WHs_t3" role="1PaTwD">
              <property role="22dLRs" value="li" />
              <node concept="1PaTwC" id="1E1X3WHs_t5" role="22dLJL">
                <node concept="3oM_SD" id="1E1X3WHs_t6" role="1PaTwD">
                  <property role="3oM_SC" value="&amp;lt;library&amp;gt;" />
                </node>
              </node>
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_t7" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
          <node concept="1PaTwC" id="1E1X3WHs_t8" role="22dLJL">
            <node concept="3oM_SD" id="1E1X3WHs_t9" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="22dLRv" id="1E1X3WHs_ta" role="1PaTwD">
              <property role="22dLRs" value="li" />
              <node concept="1PaTwC" id="1E1X3WHs_tc" role="22dLJL">
                <node concept="3oM_SD" id="1E1X3WHs_td" role="1PaTwD">
                  <property role="3oM_SC" value="&amp;lt;macro&amp;gt;" />
                </node>
              </node>
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_te" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
          <node concept="1PaTwC" id="1E1X3WHs_tf" role="22dLJL">
            <node concept="3oM_SD" id="1E1X3WHs_tg" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="22dLRv" id="1E1X3WHs_th" role="1PaTwD">
              <property role="22dLRs" value="li" />
              <node concept="1PaTwC" id="1E1X3WHs_tj" role="22dLJL">
                <node concept="3oM_SD" id="1E1X3WHs_tk" role="1PaTwD">
                  <property role="3oM_SC" value="&amp;lt;plugin&amp;gt;" />
                </node>
              </node>
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_tl" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_tm" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
          <node concept="1PaTwC" id="1E1X3WHs_tn" role="22dLJL">
            <node concept="3oM_SD" id="1E1X3WHs_to" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="22dLRv" id="1E1X3WHs_tp" role="1PaTwD">
              <property role="22dLRs" value="li" />
              <node concept="1PaTwC" id="1E1X3WHs_tr" role="22dLJL">
                <node concept="3oM_SD" id="1E1X3WHs_ts" role="1PaTwD">
                  <property role="3oM_SC" value="&amp;lt;testmodules&amp;gt;" />
                </node>
              </node>
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_tt" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
          <node concept="1PaTwC" id="1E1X3WHs_tu" role="22dLJL">
            <node concept="3oM_SD" id="1E1X3WHs_tv" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="22dLRv" id="1E1X3WHs_tw" role="1PaTwD">
              <property role="22dLRs" value="li" />
              <node concept="1PaTwC" id="1E1X3WHs_ty" role="22dLJL">
                <node concept="3oM_SD" id="1E1X3WHs_tz" role="1PaTwD">
                  <property role="3oM_SC" value="&amp;lt;project&amp;gt;" />
                </node>
              </node>
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_t$" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_t_" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_tA" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
          <node concept="1PaTwC" id="1E1X3WHs_tB" role="22dLJL">
            <node concept="3oM_SD" id="1E1X3WHs_tC" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_tD" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5gsHVK$ZUic">
    <property role="TrG5h" value="TestModules" />
    <node concept="2tJIrI" id="5gsHVK$ZUzt" role="jymVt" />
    <node concept="312cEg" id="5gsHVK$ZVjD" role="jymVt">
      <property role="TrG5h" value="myResources" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5gsHVK$ZVjE" role="1B3o_S" />
      <node concept="3uibUv" id="5gsHVK$ZVjG" role="1tU5fm">
        <ref role="3uigEE" to="67b4:~Resources" resolve="Resources" />
      </node>
      <node concept="2ShNRf" id="5gsHVK$ZVMw" role="33vP2m">
        <node concept="1pGfFk" id="5gsHVK$ZVMn" role="2ShVmc">
          <ref role="37wK5l" to="67b4:~Resources.&lt;init&gt;()" resolve="Resources" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5gsHVK$ZVov" role="jymVt" />
    <node concept="3clFbW" id="5gsHVK$ZUBv" role="jymVt">
      <node concept="3cqZAl" id="5gsHVK$ZUBx" role="3clF45" />
      <node concept="3Tm1VV" id="5gsHVK$ZUBy" role="1B3o_S" />
      <node concept="3clFbS" id="5gsHVK$ZUBz" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5gsHVK$ZUDj" role="jymVt" />
    <node concept="3clFb_" id="5gsHVK$ZUII" role="jymVt">
      <property role="TrG5h" value="add" />
      <node concept="37vLTG" id="5gsHVK$ZUYy" role="3clF46">
        <property role="TrG5h" value="resources" />
        <node concept="3uibUv" id="5gsHVK$ZV6q" role="1tU5fm">
          <ref role="3uigEE" to="rg95:~ResourceCollection" resolve="ResourceCollection" />
        </node>
      </node>
      <node concept="3cqZAl" id="5gsHVK$ZUIK" role="3clF45" />
      <node concept="3Tm1VV" id="5gsHVK$ZUIL" role="1B3o_S" />
      <node concept="3clFbS" id="5gsHVK$ZUIM" role="3clF47">
        <node concept="3clFbF" id="5gsHVK$ZVjH" role="3cqZAp">
          <node concept="2OqwBi" id="5gsHVK$ZWgH" role="3clFbG">
            <node concept="37vLTw" id="5gsHVK$ZVjM" role="2Oq$k0">
              <ref role="3cqZAo" node="5gsHVK$ZVjD" resolve="myResources" />
            </node>
            <node concept="liA8E" id="5gsHVK$ZWNr" role="2OqNvi">
              <ref role="37wK5l" to="67b4:~Resources.add(org.apache.tools.ant.types.ResourceCollection)" resolve="add" />
              <node concept="37vLTw" id="5gsHVK$ZWRw" role="37wK5m">
                <ref role="3cqZAo" node="5gsHVK$ZUYy" resolve="resources" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5gsHVK$ZX0V" role="jymVt" />
    <node concept="3clFb_" id="5gsHVK$ZYgE" role="jymVt">
      <property role="TrG5h" value="getAllFilesThatExist" />
      <node concept="3uibUv" id="5gsHVK_1BZL" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="5gsHVK_2fcq" role="11_B2D">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5gsHVK$ZYgH" role="1B3o_S" />
      <node concept="3clFbS" id="5gsHVK$ZYgI" role="3clF47">
        <node concept="3cpWs8" id="5gsHVK_1GjW" role="3cqZAp">
          <node concept="3cpWsn" id="5gsHVK_1Gk2" role="3cpWs9">
            <property role="TrG5h" value="all" />
            <node concept="3uibUv" id="5gsHVK_1Gk4" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="5gsHVK_2g4F" role="11_B2D">
                <ref role="3uigEE" to="guwi:~File" resolve="File" />
              </node>
            </node>
            <node concept="2ShNRf" id="5gsHVK_1HOq" role="33vP2m">
              <node concept="1pGfFk" id="5gsHVK_1InX" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5gsHVK$ZZOr" role="3cqZAp">
          <node concept="3clFbS" id="5gsHVK$ZZOu" role="2LFqv$">
            <node concept="3clFbJ" id="5gsHVK_2hdz" role="3cqZAp">
              <node concept="3clFbS" id="5gsHVK_2hd_" role="3clFbx">
                <node concept="3clFbF" id="5gsHVK_1J$h" role="3cqZAp">
                  <node concept="2OqwBi" id="5gsHVK_1KzE" role="3clFbG">
                    <node concept="37vLTw" id="5gsHVK_1J$f" role="2Oq$k0">
                      <ref role="3cqZAo" node="5gsHVK_1Gk2" resolve="all" />
                    </node>
                    <node concept="liA8E" id="5gsHVK_1M0y" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="2OqwBi" id="5gsHVK_2pDY" role="37wK5m">
                        <node concept="1eOMI4" id="5gsHVK_2myZ" role="2Oq$k0">
                          <node concept="10QFUN" id="5gsHVK_2myW" role="1eOMHV">
                            <node concept="3uibUv" id="5gsHVK_2n2q" role="10QFUM">
                              <ref role="3uigEE" to="67b4:~FileResource" resolve="FileResource" />
                            </node>
                            <node concept="37vLTw" id="5gsHVK_2nxy" role="10QFUP">
                              <ref role="3cqZAo" node="5gsHVK$ZZOv" resolve="res" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="5gsHVK_2qMn" role="2OqNvi">
                          <ref role="37wK5l" to="67b4:~FileResource.getFile()" resolve="getFile" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="5gsHVK_2B0Z" role="3clFbw">
                <node concept="2OqwBi" id="5gsHVK_2CvD" role="3uHU7B">
                  <node concept="37vLTw" id="5gsHVK_2BHq" role="2Oq$k0">
                    <ref role="3cqZAo" node="5gsHVK$ZZOv" resolve="res" />
                  </node>
                  <node concept="liA8E" id="5gsHVK_2DaJ" role="2OqNvi">
                    <ref role="37wK5l" to="rg95:~Resource.isExists()" resolve="isExists" />
                  </node>
                </node>
                <node concept="2ZW3vV" id="5gsHVK_2kic" role="3uHU7w">
                  <node concept="3uibUv" id="5gsHVK_2kWN" role="2ZW6by">
                    <ref role="3uigEE" to="67b4:~FileResource" resolve="FileResource" />
                  </node>
                  <node concept="37vLTw" id="5gsHVK_2jgb" role="2ZW6bz">
                    <ref role="3cqZAo" node="5gsHVK$ZZOv" resolve="res" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5gsHVK$ZZOv" role="1Duv9x">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="5gsHVK$ZZOz" role="1tU5fm">
              <ref role="3uigEE" to="rg95:~Resource" resolve="Resource" />
            </node>
          </node>
          <node concept="37vLTw" id="5gsHVK$ZZO$" role="1DdaDG">
            <ref role="3cqZAo" node="5gsHVK$ZVjD" resolve="myResources" />
          </node>
        </node>
        <node concept="3clFbF" id="5gsHVK_1UIs" role="3cqZAp">
          <node concept="2YIFZM" id="5gsHVK_1Vdj" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List)" resolve="unmodifiableList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="37vLTw" id="5gsHVK_1VUR" role="37wK5m">
              <ref role="3cqZAo" node="5gsHVK_1Gk2" resolve="all" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5gsHVK$ZY5$" role="jymVt" />
    <node concept="3Tm1VV" id="5gsHVK$ZUid" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="1rGdf3Zyo3f">
    <property role="TrG5h" value="ServiceMessageFilteringStreamHandler" />
    <node concept="2tJIrI" id="1rGdf3Zyow3" role="jymVt" />
    <node concept="312cEg" id="1rGdf3Zz84l" role="jymVt">
      <property role="TrG5h" value="testStarted" />
      <node concept="3Tm6S6" id="1rGdf3Zz84m" role="1B3o_S" />
      <node concept="3uibUv" id="1rGdf3ZAb9L" role="1tU5fm">
        <ref role="3uigEE" to="i5cy:~AtomicBoolean" resolve="AtomicBoolean" />
      </node>
      <node concept="2ShNRf" id="1rGdf3ZAbG$" role="33vP2m">
        <node concept="1pGfFk" id="1rGdf3ZAcrp" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" to="i5cy:~AtomicBoolean.&lt;init&gt;(boolean)" resolve="AtomicBoolean" />
          <node concept="3clFbT" id="1rGdf3ZAcDr" role="37wK5m" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1rGdf3Zz7Vt" role="jymVt" />
    <node concept="3clFbW" id="1rGdf3Zytcm" role="jymVt">
      <node concept="37vLTG" id="1rGdf3Zytyw" role="3clF46">
        <property role="TrG5h" value="task" />
        <node concept="3uibUv" id="1rGdf3ZytRl" role="1tU5fm">
          <ref role="3uigEE" to="gola:~Task" resolve="Task" />
        </node>
      </node>
      <node concept="3cqZAl" id="1rGdf3Zytco" role="3clF45" />
      <node concept="3Tm1VV" id="1rGdf3Zytcp" role="1B3o_S" />
      <node concept="3clFbS" id="1rGdf3Zytcq" role="3clF47">
        <node concept="XkiVB" id="1rGdf3Zyu8l" role="3cqZAp">
          <ref role="37wK5l" to="644x:3ufQioQQt1D" resolve="MyExecuteStreamHandler" />
          <node concept="37vLTw" id="1rGdf3Zyuuc" role="37wK5m">
            <ref role="3cqZAo" node="1rGdf3Zytyw" resolve="task" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1rGdf3ZyrNb" role="jymVt" />
    <node concept="3Tm1VV" id="1rGdf3Zyo3g" role="1B3o_S" />
    <node concept="3uibUv" id="1rGdf3ZyodE" role="EKbjA">
      <ref role="3uigEE" to="kpdv:~ExecuteStreamHandler" resolve="ExecuteStreamHandler" />
    </node>
    <node concept="3clFb_" id="1rGdf3Zys5P" role="jymVt">
      <property role="TrG5h" value="logError" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="1rGdf3Zys5Q" role="1B3o_S" />
      <node concept="3cqZAl" id="1rGdf3Zys5R" role="3clF45" />
      <node concept="37vLTG" id="1rGdf3Zys5S" role="3clF46">
        <property role="TrG5h" value="line" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="1rGdf3Zys5T" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1rGdf3Zys61" role="3clF47">
        <node concept="3clFbJ" id="1rGdf3Zzawb" role="3cqZAp">
          <node concept="3clFbS" id="1rGdf3Zzawd" role="3clFbx">
            <node concept="3clFbF" id="1rGdf3ZzED4" role="3cqZAp">
              <node concept="3nyPlj" id="1rGdf3ZzED2" role="3clFbG">
                <ref role="37wK5l" to="644x:3ufQioQQt2E" resolve="logOutput" />
                <node concept="3cpWs3" id="1rGdf3ZzEZ5" role="37wK5m">
                  <node concept="Xl_RD" id="1rGdf3ZzEZ6" role="3uHU7w">
                    <property role="Xl_RC" value="' name='Test stderr']" />
                  </node>
                  <node concept="3cpWs3" id="1rGdf3ZzEZ7" role="3uHU7B">
                    <node concept="Xl_RD" id="1rGdf3ZzEZ8" role="3uHU7B">
                      <property role="Xl_RC" value="##teamcity[testStdErr out='" />
                    </node>
                    <node concept="1rXfSq" id="1rGdf3ZzEZ9" role="3uHU7w">
                      <ref role="37wK5l" node="1rGdf3ZzoDM" resolve="escape" />
                      <node concept="37vLTw" id="1rGdf3ZzEZa" role="37wK5m">
                        <ref role="3cqZAo" node="1rGdf3Zys5S" resolve="line" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1rGdf3ZzKOm" role="3cqZAp">
              <node concept="3nyPlj" id="1rGdf3ZzKOn" role="3clFbG">
                <ref role="37wK5l" to="644x:3ufQioQQt2E" resolve="logOutput" />
                <node concept="37vLTw" id="1rGdf3ZzKOo" role="37wK5m">
                  <ref role="3cqZAo" node="1rGdf3Zys5S" resolve="line" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1rGdf3ZzFla" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="1rGdf3ZAcWO" role="3clFbw">
            <node concept="37vLTw" id="1rGdf3ZzaI9" role="2Oq$k0">
              <ref role="3cqZAo" node="1rGdf3Zz84l" resolve="testStarted" />
            </node>
            <node concept="liA8E" id="1rGdf3ZAe4Z" role="2OqNvi">
              <ref role="37wK5l" to="i5cy:~AtomicBoolean.get()" resolve="get" />
            </node>
          </node>
          <node concept="9aQIb" id="1rGdf3Zz_$i" role="9aQIa">
            <node concept="3clFbS" id="1rGdf3Zz_$j" role="9aQI4">
              <node concept="1X3_iC" id="6vgd21k5iX1" role="lGtFl">
                <property role="3V$3am" value="statement" />
                <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                <node concept="3clFbF" id="1rGdf3Zys65" role="8Wnug">
                  <node concept="3nyPlj" id="1rGdf3Zys64" role="3clFbG">
                    <ref role="37wK5l" to="644x:3ufQioQQt2c" resolve="logError" />
                    <node concept="37vLTw" id="1rGdf3Zys63" role="37wK5m">
                      <ref role="3cqZAo" node="1rGdf3Zys5S" resolve="line" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="6vgd21k5k7Q" role="3cqZAp">
                <node concept="1PaTwC" id="6vgd21k5k7R" role="1aUNEU">
                  <node concept="3oM_SD" id="6vgd21k5ki2" role="1PaTwD">
                    <property role="3oM_SC" value="FIXME" />
                  </node>
                  <node concept="3oM_SD" id="6vgd21k5ki4" role="1PaTwD">
                    <property role="3oM_SC" value="this" />
                  </node>
                  <node concept="3oM_SD" id="6vgd21k5ki7" role="1PaTwD">
                    <property role="3oM_SC" value="should" />
                  </node>
                  <node concept="3oM_SD" id="6vgd21k5kib" role="1PaTwD">
                    <property role="3oM_SC" value="be" />
                  </node>
                  <node concept="3oM_SD" id="6vgd21k5kig" role="1PaTwD">
                    <property role="3oM_SC" value="logged" />
                  </node>
                  <node concept="3oM_SD" id="6vgd21k5kim" role="1PaTwD">
                    <property role="3oM_SC" value="as" />
                  </node>
                  <node concept="3oM_SD" id="6vgd21k5kj1" role="1PaTwD">
                    <property role="3oM_SC" value="error," />
                  </node>
                  <node concept="3oM_SD" id="6vgd21k5kj9" role="1PaTwD">
                    <property role="3oM_SC" value="otherwise" />
                  </node>
                  <node concept="3oM_SD" id="6vgd21k5kji" role="1PaTwD">
                    <property role="3oM_SC" value="we're" />
                  </node>
                  <node concept="3oM_SD" id="6vgd21k5kjs" role="1PaTwD">
                    <property role="3oM_SC" value="hiding" />
                  </node>
                  <node concept="3oM_SD" id="6vgd21k5kjB" role="1PaTwD">
                    <property role="3oM_SC" value="problems" />
                  </node>
                  <node concept="3oM_SD" id="6vgd21k5kjN" role="1PaTwD">
                    <property role="3oM_SC" value="from" />
                  </node>
                  <node concept="3oM_SD" id="6vgd21k5kk0" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="6vgd21k5kke" role="1PaTwD">
                    <property role="3oM_SC" value="user" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6vgd21k5ijV" role="3cqZAp">
                <node concept="3nyPlj" id="6vgd21k5ijW" role="3clFbG">
                  <ref role="37wK5l" to="644x:3ufQioQQt2E" resolve="logOutput" />
                  <node concept="37vLTw" id="6vgd21k5ijX" role="37wK5m">
                    <ref role="3cqZAo" node="1rGdf3Zys5S" resolve="line" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1rGdf3Zys62" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1rGdf3ZyuGh" role="jymVt" />
    <node concept="3clFb_" id="1rGdf3Zys66" role="jymVt">
      <property role="TrG5h" value="logOutput" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="1rGdf3Zys67" role="1B3o_S" />
      <node concept="3cqZAl" id="1rGdf3Zys68" role="3clF45" />
      <node concept="37vLTG" id="1rGdf3Zys69" role="3clF46">
        <property role="TrG5h" value="line" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="1rGdf3Zys6a" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1rGdf3Zys6h" role="3clF47">
        <node concept="3clFbJ" id="1rGdf3Zz5G1" role="3cqZAp">
          <node concept="3clFbS" id="1rGdf3Zz5G3" role="3clFbx">
            <node concept="3clFbF" id="1rGdf3ZzGs1" role="3cqZAp">
              <node concept="2OqwBi" id="1rGdf3ZAen6" role="3clFbG">
                <node concept="2OqwBi" id="1rGdf3ZzGSg" role="2Oq$k0">
                  <node concept="Xjq3P" id="1rGdf3ZzGrZ" role="2Oq$k0" />
                  <node concept="2OwXpG" id="1rGdf3ZzHs1" role="2OqNvi">
                    <ref role="2Oxat5" node="1rGdf3Zz84l" resolve="testStarted" />
                  </node>
                </node>
                <node concept="liA8E" id="1rGdf3ZAeBD" role="2OqNvi">
                  <ref role="37wK5l" to="i5cy:~AtomicBoolean.set(boolean)" resolve="set" />
                  <node concept="3clFbT" id="1rGdf3ZAeUi" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1rGdf3ZzJvO" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="1rGdf3Zz6bq" role="3clFbw">
            <node concept="37vLTw" id="1rGdf3Zz5N1" role="2Oq$k0">
              <ref role="3cqZAo" node="1rGdf3Zys69" resolve="line" />
            </node>
            <node concept="liA8E" id="1rGdf3Zz6w0" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
              <node concept="Xl_RD" id="1rGdf3Zz6AL" role="37wK5m">
                <property role="Xl_RC" value="##teamcity[testStarted" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1rGdf3Zz7qy" role="3eNLev">
            <node concept="3clFbS" id="1rGdf3Zz7q$" role="3eOfB_">
              <node concept="3clFbF" id="1rGdf3ZzIqd" role="3cqZAp">
                <node concept="2OqwBi" id="1rGdf3ZAfxv" role="3clFbG">
                  <node concept="2OqwBi" id="1rGdf3ZzIv1" role="2Oq$k0">
                    <node concept="Xjq3P" id="1rGdf3ZzIqc" role="2Oq$k0" />
                    <node concept="2OwXpG" id="1rGdf3ZzIN3" role="2OqNvi">
                      <ref role="2Oxat5" node="1rGdf3Zz84l" resolve="testStarted" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1rGdf3ZAfMd" role="2OqNvi">
                    <ref role="37wK5l" to="i5cy:~AtomicBoolean.set(boolean)" resolve="set" />
                    <node concept="3clFbT" id="1rGdf3ZAg7n" role="37wK5m" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="1rGdf3ZzJix" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="1rGdf3Zz7wW" role="3eO9$A">
              <node concept="37vLTw" id="1rGdf3Zz7wX" role="2Oq$k0">
                <ref role="3cqZAo" node="1rGdf3Zys69" resolve="line" />
              </node>
              <node concept="liA8E" id="1rGdf3Zz7wY" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                <node concept="Xl_RD" id="1rGdf3Zz7wZ" role="37wK5m">
                  <property role="Xl_RC" value="##teamcity[testFinished" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1rGdf3ZzB7m" role="3eNLev">
            <node concept="2OqwBi" id="1rGdf3ZAgyb" role="3eO9$A">
              <node concept="37vLTw" id="1rGdf3ZzBO2" role="2Oq$k0">
                <ref role="3cqZAo" node="1rGdf3Zz84l" resolve="testStarted" />
              </node>
              <node concept="liA8E" id="1rGdf3ZAgMl" role="2OqNvi">
                <ref role="37wK5l" to="i5cy:~AtomicBoolean.get()" resolve="get" />
              </node>
            </node>
            <node concept="3clFbS" id="1rGdf3ZzB7o" role="3eOfB_">
              <node concept="3clFbF" id="1rGdf3ZzFF$" role="3cqZAp">
                <node concept="3nyPlj" id="1rGdf3ZzFFy" role="3clFbG">
                  <ref role="37wK5l" to="644x:3ufQioQQt2E" resolve="logOutput" />
                  <node concept="3cpWs3" id="1rGdf3ZzG2h" role="37wK5m">
                    <node concept="Xl_RD" id="1rGdf3ZzG2i" role="3uHU7w">
                      <property role="Xl_RC" value="' name='Test stdout']" />
                    </node>
                    <node concept="3cpWs3" id="1rGdf3ZzG2j" role="3uHU7B">
                      <node concept="Xl_RD" id="1rGdf3ZzG2k" role="3uHU7B">
                        <property role="Xl_RC" value="##teamcity[testStdOut out='" />
                      </node>
                      <node concept="1rXfSq" id="1rGdf3ZzG2l" role="3uHU7w">
                        <ref role="37wK5l" node="1rGdf3ZzoDM" resolve="escape" />
                        <node concept="37vLTw" id="1rGdf3ZzG2m" role="37wK5m">
                          <ref role="3cqZAo" node="1rGdf3Zys69" resolve="line" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1rGdf3Zys6l" role="3cqZAp">
          <node concept="3nyPlj" id="1rGdf3Zys6k" role="3clFbG">
            <ref role="37wK5l" to="644x:3ufQioQQt2E" resolve="logOutput" />
            <node concept="37vLTw" id="1rGdf3Zys6j" role="37wK5m">
              <ref role="3cqZAo" node="1rGdf3Zys69" resolve="line" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1rGdf3Zys6i" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1rGdf3Zz8cI" role="jymVt" />
    <node concept="3clFb_" id="1rGdf3ZzoDM" role="jymVt">
      <property role="TrG5h" value="escape" />
      <node concept="37vLTG" id="1rGdf3ZzoNw" role="3clF46">
        <property role="TrG5h" value="str" />
        <node concept="17QB3L" id="1rGdf3Zzpxi" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="1rGdf3Zzp6A" role="3clF45" />
      <node concept="3Tm1VV" id="1rGdf3ZzoDP" role="1B3o_S" />
      <node concept="3clFbS" id="1rGdf3ZzoDQ" role="3clF47">
        <node concept="3cpWs6" id="5gsHVKBeiVF" role="3cqZAp">
          <node concept="2YIFZM" id="5gsHVKBfSic" role="3cqZAk">
            <ref role="1Pybhc" node="5gsHVKB0XrU" resolve="MapSerializerUtil" />
            <ref role="37wK5l" node="5gsHVKB0Xts" resolve="escapeStr" />
            <node concept="37vLTw" id="5gsHVKBfSid" role="37wK5m">
              <ref role="3cqZAo" node="1rGdf3ZzoNw" resolve="str" />
            </node>
            <node concept="10M0yZ" id="5gsHVKBMbMZ" role="37wK5m">
              <ref role="1PxDUh" node="5gsHVKB0XrU" resolve="MapSerializerUtil" />
              <ref role="3cqZAo" node="5gsHVKB0Xsj" resolve="STD_ESCAPER" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3UR2Jj" id="1rGdf3ZyoEB" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHs_tE" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_tF" role="1PaTwD">
          <property role="3oM_SC" value="A" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_tG" role="1PaTwD">
          <property role="3oM_SC" value="stream" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_tH" role="1PaTwD">
          <property role="3oM_SC" value="handler" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_tI" role="1PaTwD">
          <property role="3oM_SC" value="that" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_tJ" role="1PaTwD">
          <property role="3oM_SC" value="forwards" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_tK" role="1PaTwD">
          <property role="3oM_SC" value="each" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_tL" role="1PaTwD">
          <property role="3oM_SC" value="line" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_tM" role="1PaTwD">
          <property role="3oM_SC" value="from" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_tN" role="1PaTwD">
          <property role="3oM_SC" value="output" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_tO" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_tP" role="1PaTwD">
          <property role="3oM_SC" value="error" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_tQ" role="1PaTwD">
          <property role="3oM_SC" value="streams" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_tR" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_tS" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_tT" role="1PaTwD">
          <property role="3oM_SC" value="task's" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_tU" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_tV" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHs_tW" role="1PaTwD">
          <node concept="1VuTSG" id="1E1X3WHs_tX" role="1Vtduc">
            <node concept="1PaTwC" id="1E1X3WHs_u0" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHs_u1" role="1PaTwD">
                <property role="3oM_SC" value="log()" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_u2" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHs_u3" role="1PaTwD">
          <node concept="1VuTSG" id="1E1X3WHs_u4" role="1Vtduc">
            <node concept="1PaTwC" id="1E1X3WHs_u7" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHs_u8" role="1PaTwD">
                <property role="3oM_SC" value="logError()" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_u9" role="1PaTwD">
          <property role="3oM_SC" value="methods" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_ua" role="1PaTwD">
          <property role="3oM_SC" value="respectively." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_ub" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_uc" role="1PaTwD">
          <property role="3oM_SC" value="Logged" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_ud" role="1PaTwD">
          <property role="3oM_SC" value="lines" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_ue" role="1PaTwD">
          <property role="3oM_SC" value="are" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uf" role="1PaTwD">
          <property role="3oM_SC" value="analyzed" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_ug" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uh" role="1PaTwD">
          <property role="3oM_SC" value="TeamCity's" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_ui" role="1PaTwD">
          <property role="3oM_SC" value="&quot;service" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uj" role="1PaTwD">
          <property role="3oM_SC" value="messages&quot;," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uk" role="1PaTwD">
          <property role="3oM_SC" value="among" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_ul" role="1PaTwD">
          <property role="3oM_SC" value="which" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_um" role="1PaTwD">
          <property role="3oM_SC" value="&quot;testStarted&quot;" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_un" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uo" role="1PaTwD">
          <property role="3oM_SC" value="&quot;testFinished&quot;" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_up" role="1PaTwD">
          <property role="3oM_SC" value="indicate" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_uq" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_ur" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_us" role="1PaTwD">
          <property role="3oM_SC" value="start" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_ut" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uu" role="1PaTwD">
          <property role="3oM_SC" value="end" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uv" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uw" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_ux" role="1PaTwD">
          <property role="3oM_SC" value="block" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uy" role="1PaTwD">
          <property role="3oM_SC" value="corresponding" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uz" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_u$" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_u_" role="1PaTwD">
          <property role="3oM_SC" value="test" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uA" role="1PaTwD">
          <property role="3oM_SC" value="run." />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uB" role="1PaTwD">
          <property role="3oM_SC" value="All" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uC" role="1PaTwD">
          <property role="3oM_SC" value="messages" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uD" role="1PaTwD">
          <property role="3oM_SC" value="within" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uE" role="1PaTwD">
          <property role="3oM_SC" value="such" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uF" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uG" role="1PaTwD">
          <property role="3oM_SC" value="block" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uH" role="1PaTwD">
          <property role="3oM_SC" value="are" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_uI" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_uJ" role="1PaTwD">
          <property role="3oM_SC" value="wrapped" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uK" role="1PaTwD">
          <property role="3oM_SC" value="into" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uL" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uM" role="1PaTwD">
          <property role="3oM_SC" value="new" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uN" role="1PaTwD">
          <property role="3oM_SC" value="service" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uO" role="1PaTwD">
          <property role="3oM_SC" value="message," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uP" role="1PaTwD">
          <property role="3oM_SC" value="correspondingly" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uQ" role="1PaTwD">
          <property role="3oM_SC" value="&quot;testStdOut&quot;" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uR" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uS" role="1PaTwD">
          <property role="3oM_SC" value="&quot;testStdErr&quot;," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uT" role="1PaTwD">
          <property role="3oM_SC" value="which" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uU" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_uV" role="1PaTwD">
          <property role="3oM_SC" value="forwarded" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_uW" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_uX" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHs_uY" role="1PaTwD">
          <node concept="1VuTSG" id="1E1X3WHs_uZ" role="1Vtduc">
            <node concept="1PaTwC" id="1E1X3WHs_v2" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHs_v3" role="1PaTwD">
                <property role="3oM_SC" value="log()" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_v4" role="1PaTwD">
          <property role="3oM_SC" value="method." />
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="1rGdf3Zyrs5" role="1zkMxy">
      <ref role="3uigEE" to="644x:3ufQioQQt1t" resolve="MyExecuteStreamHandler" />
    </node>
  </node>
  <node concept="312cEu" id="1rGdf3Zz47R">
    <property role="TrG5h" value="OutputLoggingStreamHandler" />
    <node concept="3clFbW" id="1rGdf3Zz4BS" role="jymVt">
      <node concept="37vLTG" id="1rGdf3Zz4DN" role="3clF46">
        <property role="TrG5h" value="task" />
        <node concept="3uibUv" id="1rGdf3Zz4Ha" role="1tU5fm">
          <ref role="3uigEE" to="gola:~Task" resolve="Task" />
        </node>
      </node>
      <node concept="3cqZAl" id="1rGdf3Zz4BU" role="3clF45" />
      <node concept="3Tm1VV" id="1rGdf3Zz4BV" role="1B3o_S" />
      <node concept="3clFbS" id="1rGdf3Zz4BW" role="3clF47">
        <node concept="XkiVB" id="1rGdf3Zz4O$" role="3cqZAp">
          <ref role="37wK5l" to="644x:3ufQioQQt1D" resolve="MyExecuteStreamHandler" />
          <node concept="37vLTw" id="1rGdf3Zz4Sq" role="37wK5m">
            <ref role="3cqZAo" node="1rGdf3Zz4DN" resolve="task" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1rGdf3Zz4Uo" role="jymVt" />
    <node concept="3Tm1VV" id="1rGdf3Zz47S" role="1B3o_S" />
    <node concept="3uibUv" id="1rGdf3Zz4qn" role="EKbjA">
      <ref role="3uigEE" to="kpdv:~ExecuteStreamHandler" resolve="ExecuteStreamHandler" />
    </node>
    <node concept="3uibUv" id="1rGdf3Zz4zM" role="1zkMxy">
      <ref role="3uigEE" to="644x:3ufQioQQt1t" resolve="MyExecuteStreamHandler" />
    </node>
    <node concept="3clFb_" id="1rGdf3Zz4Xc" role="jymVt">
      <property role="TrG5h" value="logError" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="1rGdf3Zz4Xd" role="1B3o_S" />
      <node concept="3cqZAl" id="1rGdf3Zz4Xe" role="3clF45" />
      <node concept="37vLTG" id="1rGdf3Zz4Xf" role="3clF46">
        <property role="TrG5h" value="line" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="1rGdf3Zz4Xg" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1rGdf3Zz4Xo" role="3clF47">
        <node concept="3clFbF" id="1rGdf3Zz5cQ" role="3cqZAp">
          <node concept="3nyPlj" id="1rGdf3Zz5cP" role="3clFbG">
            <ref role="37wK5l" to="644x:3ufQioQQt2E" resolve="logOutput" />
            <node concept="37vLTw" id="1rGdf3Zz5pT" role="37wK5m">
              <ref role="3cqZAo" node="1rGdf3Zz4Xf" resolve="line" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1rGdf3Zz4Xp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3UR2Jj" id="1rGdf3Z_tE9" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHs_v5" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_v6" role="1PaTwD">
          <property role="3oM_SC" value="Logs" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_v7" role="1PaTwD">
          <property role="3oM_SC" value="both" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_v8" role="1PaTwD">
          <property role="3oM_SC" value="output" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_v9" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_va" role="1PaTwD">
          <property role="3oM_SC" value="error" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_vb" role="1PaTwD">
          <property role="3oM_SC" value="streams" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_vc" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_vd" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_ve" role="1PaTwD">
          <property role="3oM_SC" value="forked" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_vf" role="1PaTwD">
          <property role="3oM_SC" value="process" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_vg" role="1PaTwD">
          <property role="3oM_SC" value="as" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_vh" role="1PaTwD">
          <property role="3oM_SC" value="calls" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_vi" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="1Vtdud" id="1E1X3WHs_vj" role="1PaTwD">
          <node concept="1VuTSG" id="1E1X3WHs_vk" role="1Vtduc">
            <node concept="1PaTwC" id="1E1X3WHs_vn" role="2JaDBN">
              <node concept="3oM_SD" id="1E1X3WHs_vo" role="1PaTwD">
                <property role="3oM_SC" value="log" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_vp" role="1PaTwD">
          <property role="3oM_SC" value="method." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHs_vq" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_vr" role="1PaTwD">
          <property role="3oM_SC" value="This" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_vs" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_vt" role="1PaTwD">
          <property role="3oM_SC" value="done" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_vu" role="1PaTwD">
          <property role="3oM_SC" value="so" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_vv" role="1PaTwD">
          <property role="3oM_SC" value="as" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_vw" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_vx" role="1PaTwD">
          <property role="3oM_SC" value="emulate" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_vy" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_vz" role="1PaTwD">
          <property role="3oM_SC" value="same" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_v$" role="1PaTwD">
          <property role="3oM_SC" value="behaviour" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_v_" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_vA" role="1PaTwD">
          <property role="3oM_SC" value="running" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_vB" role="1PaTwD">
          <property role="3oM_SC" value="test" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_vC" role="1PaTwD">
          <property role="3oM_SC" value="locally" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_vD" role="1PaTwD">
          <property role="3oM_SC" value="as" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_vE" role="1PaTwD">
          <property role="3oM_SC" value="well" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_vF" role="1PaTwD">
          <property role="3oM_SC" value="as" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_vG" role="1PaTwD">
          <property role="3oM_SC" value="on" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHs_vH" role="1PaTwD">
          <property role="3oM_SC" value="TeamCity." />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5gsHVKB0XrU">
    <property role="TrG5h" value="MapSerializerUtil" />
    <property role="2bfB8j" value="true" />
    <property role="1EXbeo" value="true" />
    <node concept="3Tm1VV" id="5gsHVKB0XrV" role="1B3o_S" />
    <node concept="Wx3nA" id="5gsHVKB0Xsb" role="jymVt">
      <property role="TrG5h" value="TEST_FAILED" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="5gsHVKB0Xsc" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="5gsHVKB0Xsd" role="33vP2m">
        <property role="Xl_RC" value="testFailed" />
      </node>
      <node concept="3Tm1VV" id="5gsHVKB0Xse" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="5gsHVKB0Xsf" role="jymVt">
      <property role="TrG5h" value="TEST_IGNORED" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="5gsHVKB0Xsg" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="5gsHVKB0Xsh" role="33vP2m">
        <property role="Xl_RC" value="testIgnored" />
      </node>
      <node concept="3Tm1VV" id="5gsHVKB0Xsi" role="1B3o_S" />
    </node>
    <node concept="3HP615" id="5gsHVKB0XrW" role="jymVt">
      <property role="TrG5h" value="EscapeInfoProvider" />
      <node concept="3Tm1VV" id="5gsHVKB0XrX" role="1B3o_S" />
      <node concept="3UR2Jj" id="5gsHVKB0Xsa" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs_vI" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_vJ" role="1PaTwD">
            <property role="3oM_SC" value="String" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_vK" role="1PaTwD">
            <property role="3oM_SC" value="escaping" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_vL" role="1PaTwD">
            <property role="3oM_SC" value="info" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_vM" role="1PaTwD">
            <property role="3oM_SC" value="provider." />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5gsHVKB0XrY" role="jymVt">
        <property role="TrG5h" value="escape" />
        <node concept="3Tm1VV" id="5gsHVKB0XrZ" role="1B3o_S" />
        <node concept="37vLTG" id="5gsHVKB0Xs0" role="3clF46">
          <property role="TrG5h" value="c" />
          <node concept="10Pfzv" id="5gsHVKB0Xs1" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="5gsHVKB0Xs2" role="3clF47" />
        <node concept="10Pfzv" id="5gsHVKB0Xs3" role="3clF45" />
        <node concept="P$JXv" id="5gsHVKB0Xs4" role="lGtFl">
          <node concept="1PaTwC" id="1E1X3WHs_vP" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHs_vQ" role="1PaTwD">
              <property role="3oM_SC" value="Converts" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_vR" role="1PaTwD">
              <property role="3oM_SC" value="character" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_vS" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_vT" role="1PaTwD">
              <property role="3oM_SC" value="its" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_vU" role="1PaTwD">
              <property role="3oM_SC" value="representation" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_vV" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_vW" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_vX" role="1PaTwD">
              <property role="3oM_SC" value="final" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_vY" role="1PaTwD">
              <property role="3oM_SC" value="string" />
            </node>
          </node>
          <node concept="1PaTwC" id="1E1X3WHs_vZ" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHs_w0" role="1PaTwD">
              <property role="3oM_SC" value="@param" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_w1" role="1PaTwD">
              <property role="3oM_SC" value="c" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_w2" role="1PaTwD">
              <property role="3oM_SC" value="character" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_w3" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_w4" role="1PaTwD">
              <property role="3oM_SC" value="convert" />
            </node>
          </node>
          <node concept="1PaTwC" id="1E1X3WHs_w5" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHs_w6" role="1PaTwD">
              <property role="3oM_SC" value="@return" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_w7" role="1PaTwD">
              <property role="3oM_SC" value="character" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_w8" role="1PaTwD">
              <property role="3oM_SC" value="representation" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_w9" role="1PaTwD">
              <property role="3oM_SC" value="or" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_wa" role="1PaTwD">
              <property role="3oM_SC" value="0" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_wb" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_wc" role="1PaTwD">
              <property role="3oM_SC" value="conversion" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_wd" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_we" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_wf" role="1PaTwD">
              <property role="3oM_SC" value="applicable" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_wg" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_wh" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_wi" role="1PaTwD">
              <property role="3oM_SC" value="character" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5gsHVKB0Xs5" role="jymVt">
        <property role="TrG5h" value="escapeCharacter" />
        <node concept="3Tm1VV" id="5gsHVKB0Xs6" role="1B3o_S" />
        <node concept="3clFbS" id="5gsHVKB0Xs7" role="3clF47" />
        <node concept="10Pfzv" id="5gsHVKB0Xs8" role="3clF45" />
        <node concept="P$JXv" id="5gsHVKB0Xs9" role="lGtFl">
          <node concept="1PaTwC" id="1E1X3WHs_wj" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHs_wk" role="1PaTwD">
              <property role="3oM_SC" value="Escape" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_wl" role="1PaTwD">
              <property role="3oM_SC" value="character" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_wm" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_wn" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_wo" role="1PaTwD">
              <property role="3oM_SC" value="before" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_wp" role="1PaTwD">
              <property role="3oM_SC" value="escaped" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_wq" role="1PaTwD">
              <property role="3oM_SC" value="characters" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_wr" role="1PaTwD">
              <property role="3oM_SC" value="(before" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_ws" role="1PaTwD">
              <property role="3oM_SC" value="character" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_wt" role="1PaTwD">
              <property role="3oM_SC" value="representations" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_wu" role="1PaTwD">
              <property role="3oM_SC" value="generated" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_wv" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_ww" role="1PaTwD">
              <property role="3oM_SC" value="{@link" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_wx" role="1PaTwD">
              <property role="3oM_SC" value="#escape(char)}" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_wy" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_wz" role="1PaTwD">
              <property role="3oM_SC" value="method)" />
            </node>
          </node>
          <node concept="1PaTwC" id="1E1X3WHs_w$" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHs_w_" role="1PaTwD">
              <property role="3oM_SC" value="@return" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_wA" role="1PaTwD">
              <property role="3oM_SC" value="see" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHs_wB" role="1PaTwD">
              <property role="3oM_SC" value="above" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="5gsHVKB0Xsj" role="jymVt">
      <property role="TrG5h" value="STD_ESCAPER" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="5gsHVKB0Xsk" role="1tU5fm">
        <ref role="3uigEE" node="5gsHVKB0XrW" resolve="MapSerializerUtil.EscapeInfoProvider" />
      </node>
      <node concept="2ShNRf" id="5gsHVKB0Xsl" role="33vP2m">
        <node concept="YeOm9" id="5gsHVKB0Xsm" role="2ShVmc">
          <node concept="1Y3b0j" id="5gsHVKB0Xsn" role="YeSDq">
            <ref role="1Y3XeK" node="5gsHVKB0XrW" resolve="MapSerializerUtil.EscapeInfoProvider" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3clFb_" id="5gsHVKB0Xso" role="jymVt">
              <property role="TrG5h" value="escape" />
              <node concept="37vLTG" id="5gsHVKB0Xsp" role="3clF46">
                <property role="TrG5h" value="c" />
                <property role="3TUv4t" value="true" />
                <node concept="10Pfzv" id="5gsHVKB0Xsq" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="5gsHVKB0Xsr" role="3clF47">
                <node concept="3KaCP$" id="5gsHVKB0Xst" role="3cqZAp">
                  <node concept="37vLTw" id="5gsHVKB0Xss" role="3KbGdf">
                    <ref role="3cqZAo" node="5gsHVKB0Xsp" resolve="c" />
                  </node>
                  <node concept="3clFbS" id="5gsHVKB0Xsu" role="3Kb1Dw">
                    <node concept="3cpWs6" id="5gsHVKB0Xth" role="3cqZAp">
                      <node concept="3cmrfG" id="5gsHVKB0Xti" role="3cqZAk">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                  <node concept="3KbdKl" id="5gsHVKB0Xsw" role="3KbHQx">
                    <node concept="1Xhbcc" id="5gsHVKB0Xsv" role="3Kbmr1">
                      <property role="1XhdNS" value="\n" />
                    </node>
                    <node concept="3clFbS" id="5gsHVKB0Xsx" role="3Kbo56">
                      <node concept="3cpWs6" id="5gsHVKB0Xsy" role="3cqZAp">
                        <node concept="1Xhbcc" id="5gsHVKB0Xsz" role="3cqZAk">
                          <property role="1XhdNS" value="n" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3KbdKl" id="5gsHVKB0Xs_" role="3KbHQx">
                    <node concept="1Xhbcc" id="5gsHVKB0Xs$" role="3Kbmr1">
                      <property role="1XhdNS" value="\r" />
                    </node>
                    <node concept="3clFbS" id="5gsHVKB0XsA" role="3Kbo56">
                      <node concept="3cpWs6" id="5gsHVKB0XsB" role="3cqZAp">
                        <node concept="1Xhbcc" id="5gsHVKB0XsC" role="3cqZAk">
                          <property role="1XhdNS" value="r" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3KbdKl" id="5gsHVKB0XsE" role="3KbHQx">
                    <node concept="1Xhbcc" id="5gsHVKB0XsD" role="3Kbmr1">
                      <property role="1XhdNS" value="\b" />
                    </node>
                    <node concept="3clFbS" id="5gsHVKB0XsF" role="3Kbo56">
                      <node concept="3cpWs6" id="5gsHVKB0XsG" role="3cqZAp">
                        <node concept="1Xhbcc" id="5gsHVKB0XsH" role="3cqZAk">
                          <property role="1XhdNS" value="b" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3KbdKl" id="5gsHVKB0XsJ" role="3KbHQx">
                    <node concept="1Xhbcc" id="5gsHVKB0XsI" role="3Kbmr1">
                      <property role="1XhdNS" value="" />
                    </node>
                    <node concept="3clFbS" id="5gsHVKB0XsK" role="3Kbo56">
                      <node concept="3cpWs6" id="5gsHVKB0XsL" role="3cqZAp">
                        <node concept="1Xhbcc" id="5gsHVKB0XsM" role="3cqZAk">
                          <property role="1XhdNS" value="x" />
                        </node>
                      </node>
                      <node concept="3SKdUt" id="5gsHVKB0XwU" role="3cqZAp">
                        <node concept="1PaTwC" id="5gsHVKB0XwV" role="1aUNEU">
                          <node concept="3oM_SD" id="5gsHVKB0XwW" role="1PaTwD">
                            <property role="3oM_SC" value="next-line" />
                          </node>
                          <node concept="3oM_SD" id="5gsHVKB0XwX" role="1PaTwD">
                            <property role="3oM_SC" value="character" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3KbdKl" id="5gsHVKB0XsO" role="3KbHQx">
                    <node concept="1Xhbcc" id="5gsHVKB0XsN" role="3Kbmr1">
                      <property role="1XhdNS" value=" " />
                    </node>
                    <node concept="3clFbS" id="5gsHVKB0XsP" role="3Kbo56">
                      <node concept="3cpWs6" id="5gsHVKB0XsQ" role="3cqZAp">
                        <node concept="1Xhbcc" id="5gsHVKB0XsR" role="3cqZAk">
                          <property role="1XhdNS" value="l" />
                        </node>
                      </node>
                      <node concept="3SKdUt" id="5gsHVKB0XwY" role="3cqZAp">
                        <node concept="1PaTwC" id="5gsHVKB0XwZ" role="1aUNEU">
                          <node concept="3oM_SD" id="5gsHVKB0Xx0" role="1PaTwD">
                            <property role="3oM_SC" value="line-separator" />
                          </node>
                          <node concept="3oM_SD" id="5gsHVKB0Xx1" role="1PaTwD">
                            <property role="3oM_SC" value="character" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3KbdKl" id="5gsHVKB0XsT" role="3KbHQx">
                    <node concept="1Xhbcc" id="5gsHVKB0XsS" role="3Kbmr1">
                      <property role="1XhdNS" value=" " />
                    </node>
                    <node concept="3clFbS" id="5gsHVKB0XsU" role="3Kbo56">
                      <node concept="3cpWs6" id="5gsHVKB0XsV" role="3cqZAp">
                        <node concept="1Xhbcc" id="5gsHVKB0XsW" role="3cqZAk">
                          <property role="1XhdNS" value="p" />
                        </node>
                      </node>
                      <node concept="3SKdUt" id="5gsHVKB0Xx2" role="3cqZAp">
                        <node concept="1PaTwC" id="5gsHVKB0Xx3" role="1aUNEU">
                          <node concept="3oM_SD" id="5gsHVKB0Xx4" role="1PaTwD">
                            <property role="3oM_SC" value="paragraph-separator" />
                          </node>
                          <node concept="3oM_SD" id="5gsHVKB0Xx5" role="1PaTwD">
                            <property role="3oM_SC" value="character" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3KbdKl" id="5gsHVKB0XsY" role="3KbHQx">
                    <node concept="1Xhbcc" id="5gsHVKB0XsX" role="3Kbmr1">
                      <property role="1XhdNS" value="|" />
                    </node>
                    <node concept="3clFbS" id="5gsHVKB0XsZ" role="3Kbo56">
                      <node concept="3cpWs6" id="5gsHVKB0Xt0" role="3cqZAp">
                        <node concept="1Xhbcc" id="5gsHVKB0Xt1" role="3cqZAk">
                          <property role="1XhdNS" value="|" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3KbdKl" id="5gsHVKB0Xt3" role="3KbHQx">
                    <node concept="1Xhbcc" id="5gsHVKB0Xt2" role="3Kbmr1">
                      <property role="1XhdNS" value="\'" />
                    </node>
                    <node concept="3clFbS" id="5gsHVKB0Xt4" role="3Kbo56">
                      <node concept="3cpWs6" id="5gsHVKB0Xt5" role="3cqZAp">
                        <node concept="1Xhbcc" id="5gsHVKB0Xt6" role="3cqZAk">
                          <property role="1XhdNS" value="\'" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3KbdKl" id="5gsHVKB0Xt8" role="3KbHQx">
                    <node concept="1Xhbcc" id="5gsHVKB0Xt7" role="3Kbmr1">
                      <property role="1XhdNS" value="[" />
                    </node>
                    <node concept="3clFbS" id="5gsHVKB0Xt9" role="3Kbo56">
                      <node concept="3cpWs6" id="5gsHVKB0Xta" role="3cqZAp">
                        <node concept="1Xhbcc" id="5gsHVKB0Xtb" role="3cqZAk">
                          <property role="1XhdNS" value="[" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3KbdKl" id="5gsHVKB0Xtd" role="3KbHQx">
                    <node concept="1Xhbcc" id="5gsHVKB0Xtc" role="3Kbmr1">
                      <property role="1XhdNS" value="]" />
                    </node>
                    <node concept="3clFbS" id="5gsHVKB0Xte" role="3Kbo56">
                      <node concept="3cpWs6" id="5gsHVKB0Xtf" role="3cqZAp">
                        <node concept="1Xhbcc" id="5gsHVKB0Xtg" role="3cqZAk">
                          <property role="1XhdNS" value="]" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Tm1VV" id="5gsHVKB0Xtj" role="1B3o_S" />
              <node concept="10Pfzv" id="5gsHVKB0Xtk" role="3clF45" />
            </node>
            <node concept="3clFb_" id="5gsHVKB0Xtl" role="jymVt">
              <property role="TrG5h" value="escapeCharacter" />
              <node concept="3clFbS" id="5gsHVKB0Xtm" role="3clF47">
                <node concept="3cpWs6" id="5gsHVKB0Xtn" role="3cqZAp">
                  <node concept="1Xhbcc" id="5gsHVKB0Xto" role="3cqZAk">
                    <property role="1XhdNS" value="|" />
                  </node>
                </node>
              </node>
              <node concept="3Tm1VV" id="5gsHVKB0Xtp" role="1B3o_S" />
              <node concept="10Pfzv" id="5gsHVKB0Xtq" role="3clF45" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5gsHVKB0Xtr" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="5gsHVKB0Xts" role="jymVt">
      <property role="TrG5h" value="escapeStr" />
      <node concept="37vLTG" id="5gsHVKB0Xtt" role="3clF46">
        <property role="TrG5h" value="str" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="5gsHVKB0Xtu" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="5gsHVKB0Xtv" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3uibUv" id="5gsHVKB0Xtw" role="1tU5fm">
          <ref role="3uigEE" node="5gsHVKB0XrW" resolve="MapSerializerUtil.EscapeInfoProvider" />
        </node>
      </node>
      <node concept="3clFbS" id="5gsHVKB0Xtx" role="3clF47">
        <node concept="3clFbJ" id="5gsHVKB0Xty" role="3cqZAp">
          <node concept="3clFbC" id="5gsHVKB0Xtz" role="3clFbw">
            <node concept="37vLTw" id="5gsHVKB0Xt$" role="3uHU7B">
              <ref role="3cqZAo" node="5gsHVKB0Xtt" resolve="str" />
            </node>
            <node concept="10Nm6u" id="5gsHVKB0Xt_" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5gsHVKB0XtC" role="3clFbx">
            <node concept="3cpWs6" id="5gsHVKB0XtA" role="3cqZAp">
              <node concept="10Nm6u" id="5gsHVKB0XtB" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5gsHVKB0XtE" role="3cqZAp">
          <node concept="3cpWsn" id="5gsHVKB0XtD" role="3cpWs9">
            <property role="TrG5h" value="finalCount" />
            <node concept="10Oyi0" id="5gsHVKB0XtF" role="1tU5fm" />
            <node concept="1rXfSq" id="5gsHVKB0XtG" role="33vP2m">
              <ref role="37wK5l" node="5gsHVKB0Xva" resolve="calcFinalEscapedStringCount" />
              <node concept="37vLTw" id="5gsHVKB0XtH" role="37wK5m">
                <ref role="3cqZAo" node="5gsHVKB0Xtt" resolve="str" />
              </node>
              <node concept="37vLTw" id="5gsHVKB0XtI" role="37wK5m">
                <ref role="3cqZAo" node="5gsHVKB0Xtv" resolve="p" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5gsHVKB0XtJ" role="3cqZAp">
          <node concept="3clFbC" id="5gsHVKB0XtK" role="3clFbw">
            <node concept="2OqwBi" id="5gsHVKB1h9M" role="3uHU7B">
              <node concept="37vLTw" id="5gsHVKB1egv" role="2Oq$k0">
                <ref role="3cqZAo" node="5gsHVKB0Xtt" resolve="str" />
              </node>
              <node concept="liA8E" id="5gsHVKB1h9N" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
              </node>
            </node>
            <node concept="37vLTw" id="5gsHVKB0XtM" role="3uHU7w">
              <ref role="3cqZAo" node="5gsHVKB0XtD" resolve="finalCount" />
            </node>
          </node>
          <node concept="3clFbS" id="5gsHVKB0XtP" role="3clFbx">
            <node concept="3cpWs6" id="5gsHVKB0XtN" role="3cqZAp">
              <node concept="37vLTw" id="5gsHVKB0XtO" role="3cqZAk">
                <ref role="3cqZAo" node="5gsHVKB0Xtt" resolve="str" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5gsHVKB0XtR" role="3cqZAp">
          <node concept="3cpWsn" id="5gsHVKB0XtQ" role="3cpWs9">
            <property role="TrG5h" value="resultChars" />
            <node concept="10Q1$e" id="5gsHVKB0XtT" role="1tU5fm">
              <node concept="10Pfzv" id="5gsHVKB0XtS" role="10Q1$1" />
            </node>
            <node concept="2ShNRf" id="5gsHVKB0XtY" role="33vP2m">
              <node concept="3$_iS1" id="5gsHVKB0XtW" role="2ShVmc">
                <node concept="3$GHV9" id="5gsHVKB0XtX" role="3$GQph">
                  <node concept="37vLTw" id="5gsHVKB0XtV" role="3$I4v7">
                    <ref role="3cqZAo" node="5gsHVKB0XtD" resolve="finalCount" />
                  </node>
                </node>
                <node concept="10Pfzv" id="5gsHVKB0XtU" role="3$_nBY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5gsHVKB0Xu0" role="3cqZAp">
          <node concept="3cpWsn" id="5gsHVKB0XtZ" role="3cpWs9">
            <property role="TrG5h" value="resultPos" />
            <node concept="10Oyi0" id="5gsHVKB0Xu1" role="1tU5fm" />
            <node concept="3cmrfG" id="5gsHVKB0Xu2" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="5gsHVKB0Xu3" role="3cqZAp">
          <node concept="3cpWsn" id="5gsHVKB0Xu4" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="5gsHVKB0Xu6" role="1tU5fm" />
            <node concept="3cmrfG" id="5gsHVKB0Xu7" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="5gsHVKB0Xu8" role="1Dwp0S">
            <node concept="37vLTw" id="5gsHVKB0Xu9" role="3uHU7B">
              <ref role="3cqZAo" node="5gsHVKB0Xu4" resolve="i" />
            </node>
            <node concept="2OqwBi" id="5gsHVKB1gfI" role="3uHU7w">
              <node concept="37vLTw" id="5gsHVKB1egF" role="2Oq$k0">
                <ref role="3cqZAo" node="5gsHVKB0Xtt" resolve="str" />
              </node>
              <node concept="liA8E" id="5gsHVKB1gfJ" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
              </node>
            </node>
          </node>
          <node concept="3uNrnE" id="5gsHVKB0Xuc" role="1Dwrff">
            <node concept="37vLTw" id="5gsHVKB0Xud" role="2$L3a6">
              <ref role="3cqZAo" node="5gsHVKB0Xu4" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="5gsHVKB0Xuf" role="2LFqv$">
            <node concept="3cpWs8" id="5gsHVKB0Xuh" role="3cqZAp">
              <node concept="3cpWsn" id="5gsHVKB0Xug" role="3cpWs9">
                <property role="TrG5h" value="c" />
                <node concept="10Pfzv" id="5gsHVKB0Xui" role="1tU5fm" />
                <node concept="2OqwBi" id="5gsHVKB1gEN" role="33vP2m">
                  <node concept="37vLTw" id="5gsHVKB1e3O" role="2Oq$k0">
                    <ref role="3cqZAo" node="5gsHVKB0Xtt" resolve="str" />
                  </node>
                  <node concept="liA8E" id="5gsHVKB1gEO" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.charAt(int)" resolve="charAt" />
                    <node concept="37vLTw" id="5gsHVKB1gEP" role="37wK5m">
                      <ref role="3cqZAo" node="5gsHVKB0Xu4" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5gsHVKB0Xum" role="3cqZAp">
              <node concept="3cpWsn" id="5gsHVKB0Xul" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="escaped" />
                <node concept="10Pfzv" id="5gsHVKB0Xun" role="1tU5fm" />
                <node concept="2OqwBi" id="5gsHVKB1gXk" role="33vP2m">
                  <node concept="37vLTw" id="5gsHVKB1egn" role="2Oq$k0">
                    <ref role="3cqZAo" node="5gsHVKB0Xtv" resolve="p" />
                  </node>
                  <node concept="liA8E" id="5gsHVKB1gXl" role="2OqNvi">
                    <ref role="37wK5l" node="5gsHVKB0XrY" resolve="escape" />
                    <node concept="37vLTw" id="5gsHVKB1gXm" role="37wK5m">
                      <ref role="3cqZAo" node="5gsHVKB0Xug" resolve="c" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5gsHVKB0Xuq" role="3cqZAp">
              <node concept="3y3z36" id="5gsHVKB0Xur" role="3clFbw">
                <node concept="37vLTw" id="5gsHVKB0Xus" role="3uHU7B">
                  <ref role="3cqZAo" node="5gsHVKB0Xul" resolve="escaped" />
                </node>
                <node concept="3cmrfG" id="5gsHVKB0Xut" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="9aQIb" id="5gsHVKB0XuI" role="9aQIa">
                <node concept="3clFbS" id="5gsHVKB0XuJ" role="9aQI4">
                  <node concept="3clFbF" id="5gsHVKB0XuK" role="3cqZAp">
                    <node concept="37vLTI" id="5gsHVKB0XuL" role="3clFbG">
                      <node concept="AH0OO" id="5gsHVKB0XuM" role="37vLTJ">
                        <node concept="37vLTw" id="5gsHVKB0XuN" role="AHHXb">
                          <ref role="3cqZAo" node="5gsHVKB0XtQ" resolve="resultChars" />
                        </node>
                        <node concept="3uNrnE" id="5gsHVKB0XuO" role="AHEQo">
                          <node concept="37vLTw" id="5gsHVKB0XuP" role="2$L3a6">
                            <ref role="3cqZAo" node="5gsHVKB0XtZ" resolve="resultPos" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="5gsHVKB0XuQ" role="37vLTx">
                        <ref role="3cqZAo" node="5gsHVKB0Xug" resolve="c" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5gsHVKB0Xuv" role="3clFbx">
                <node concept="3clFbF" id="5gsHVKB0Xuw" role="3cqZAp">
                  <node concept="37vLTI" id="5gsHVKB0Xux" role="3clFbG">
                    <node concept="AH0OO" id="5gsHVKB0Xuy" role="37vLTJ">
                      <node concept="37vLTw" id="5gsHVKB0Xuz" role="AHHXb">
                        <ref role="3cqZAo" node="5gsHVKB0XtQ" resolve="resultChars" />
                      </node>
                      <node concept="3uNrnE" id="5gsHVKB0Xu$" role="AHEQo">
                        <node concept="37vLTw" id="5gsHVKB0Xu_" role="2$L3a6">
                          <ref role="3cqZAo" node="5gsHVKB0XtZ" resolve="resultPos" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5gsHVKB1gmz" role="37vLTx">
                      <node concept="37vLTw" id="5gsHVKB1egZ" role="2Oq$k0">
                        <ref role="3cqZAo" node="5gsHVKB0Xtv" resolve="p" />
                      </node>
                      <node concept="liA8E" id="5gsHVKB1gm$" role="2OqNvi">
                        <ref role="37wK5l" node="5gsHVKB0Xs5" resolve="escapeCharacter" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5gsHVKB0XuB" role="3cqZAp">
                  <node concept="37vLTI" id="5gsHVKB0XuC" role="3clFbG">
                    <node concept="AH0OO" id="5gsHVKB0XuD" role="37vLTJ">
                      <node concept="37vLTw" id="5gsHVKB0XuE" role="AHHXb">
                        <ref role="3cqZAo" node="5gsHVKB0XtQ" resolve="resultChars" />
                      </node>
                      <node concept="3uNrnE" id="5gsHVKB0XuF" role="AHEQo">
                        <node concept="37vLTw" id="5gsHVKB0XuG" role="2$L3a6">
                          <ref role="3cqZAo" node="5gsHVKB0XtZ" resolve="resultPos" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="5gsHVKB0XuH" role="37vLTx">
                      <ref role="3cqZAo" node="5gsHVKB0Xul" resolve="escaped" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5gsHVKB0XuR" role="3cqZAp">
          <node concept="3y3z36" id="5gsHVKB0XuS" role="3clFbw">
            <node concept="37vLTw" id="5gsHVKB0XuT" role="3uHU7B">
              <ref role="3cqZAo" node="5gsHVKB0XtZ" resolve="resultPos" />
            </node>
            <node concept="37vLTw" id="5gsHVKB0XuU" role="3uHU7w">
              <ref role="3cqZAo" node="5gsHVKB0XtD" resolve="finalCount" />
            </node>
          </node>
          <node concept="3clFbS" id="5gsHVKB0XuW" role="3clFbx">
            <node concept="YS8fn" id="5gsHVKB0Xv3" role="3cqZAp">
              <node concept="2ShNRf" id="5gsHVKB1e42" role="YScLw">
                <node concept="1pGfFk" id="5gsHVKB1eg8" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                  <node concept="3cpWs3" id="5gsHVKB1eg9" role="37wK5m">
                    <node concept="3cpWs3" id="5gsHVKB1ega" role="3uHU7B">
                      <node concept="Xl_RD" id="5gsHVKB1egb" role="3uHU7B">
                        <property role="Xl_RC" value="Incorrect escaping for '" />
                      </node>
                      <node concept="37vLTw" id="5gsHVKB1egc" role="3uHU7w">
                        <ref role="3cqZAo" node="5gsHVKB0Xtt" resolve="str" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="5gsHVKB1egd" role="3uHU7w">
                      <property role="Xl_RC" value="'" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5gsHVKB0Xv4" role="3cqZAp">
          <node concept="2ShNRf" id="5gsHVKB1eh9" role="3cqZAk">
            <node concept="1pGfFk" id="5gsHVKB1ete" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~String.&lt;init&gt;(char[])" resolve="String" />
              <node concept="37vLTw" id="5gsHVKB1etf" role="37wK5m">
                <ref role="3cqZAo" node="5gsHVKB0XtQ" resolve="resultChars" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5gsHVKB0Xv7" role="1B3o_S" />
      <node concept="3uibUv" id="5gsHVKB0Xv8" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="P$JXv" id="5gsHVKB0Xv9" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHs_wC" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_wD" role="1PaTwD">
            <property role="3oM_SC" value="Escapes" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_wE" role="1PaTwD">
            <property role="3oM_SC" value="characters" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_wF" role="1PaTwD">
            <property role="3oM_SC" value="specified" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_wG" role="1PaTwD">
            <property role="3oM_SC" value="by" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_wH" role="1PaTwD">
            <property role="3oM_SC" value="provider" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_wI" role="1PaTwD">
            <property role="3oM_SC" value="with" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_wJ" role="1PaTwD">
            <property role="3oM_SC" value="'\'" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_wK" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_wL" role="1PaTwD">
            <property role="3oM_SC" value="specified" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_wM" role="1PaTwD">
            <property role="3oM_SC" value="character." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_wN" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_wO" role="1PaTwD">
            <property role="3oM_SC" value="@param" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_wP" role="1PaTwD">
            <property role="3oM_SC" value="str" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_wQ" role="1PaTwD">
            <property role="3oM_SC" value="initial" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_wR" role="1PaTwD">
            <property role="3oM_SC" value="string" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_wS" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_wT" role="1PaTwD">
            <property role="3oM_SC" value="@param" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_wU" role="1PaTwD">
            <property role="3oM_SC" value="p" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_wV" role="1PaTwD">
            <property role="3oM_SC" value="escape" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_wW" role="1PaTwD">
            <property role="3oM_SC" value="info" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_wX" role="1PaTwD">
            <property role="3oM_SC" value="provider." />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHs_wY" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHs_wZ" role="1PaTwD">
            <property role="3oM_SC" value="@return" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_x0" role="1PaTwD">
            <property role="3oM_SC" value="escaped" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHs_x1" role="1PaTwD">
            <property role="3oM_SC" value="string." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="5gsHVKB0Xva" role="jymVt">
      <property role="TrG5h" value="calcFinalEscapedStringCount" />
      <node concept="37vLTG" id="5gsHVKB0Xvb" role="3clF46">
        <property role="TrG5h" value="name" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="5gsHVKB0Xvc" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="5gsHVKB0Xvd" role="3clF46">
        <property role="TrG5h" value="p" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="5gsHVKB0Xve" role="1tU5fm">
          <ref role="3uigEE" node="5gsHVKB0XrW" resolve="MapSerializerUtil.EscapeInfoProvider" />
        </node>
      </node>
      <node concept="3clFbS" id="5gsHVKB0Xvf" role="3clF47">
        <node concept="3cpWs8" id="5gsHVKB0Xvh" role="3cqZAp">
          <node concept="3cpWsn" id="5gsHVKB0Xvg" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10Oyi0" id="5gsHVKB0Xvi" role="1tU5fm" />
            <node concept="3cmrfG" id="5gsHVKB0Xvj" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="5gsHVKB0Xvk" role="3cqZAp">
          <node concept="3cpWsn" id="5gsHVKB0Xvl" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="5gsHVKB0Xvn" role="1tU5fm" />
            <node concept="3cmrfG" id="5gsHVKB0Xvo" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="5gsHVKB0Xvp" role="1Dwp0S">
            <node concept="37vLTw" id="5gsHVKB0Xvq" role="3uHU7B">
              <ref role="3cqZAo" node="5gsHVKB0Xvl" resolve="i" />
            </node>
            <node concept="2OqwBi" id="5gsHVKB1hkL" role="3uHU7w">
              <node concept="37vLTw" id="5gsHVKB1eh5" role="2Oq$k0">
                <ref role="3cqZAo" node="5gsHVKB0Xvb" resolve="name" />
              </node>
              <node concept="liA8E" id="5gsHVKB1hkM" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
              </node>
            </node>
          </node>
          <node concept="3uNrnE" id="5gsHVKB0Xvt" role="1Dwrff">
            <node concept="37vLTw" id="5gsHVKB0Xvu" role="2$L3a6">
              <ref role="3cqZAo" node="5gsHVKB0Xvl" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="5gsHVKB0Xvw" role="2LFqv$">
            <node concept="3cpWs8" id="5gsHVKB0Xvy" role="3cqZAp">
              <node concept="3cpWsn" id="5gsHVKB0Xvx" role="3cpWs9">
                <property role="TrG5h" value="c" />
                <node concept="10Pfzv" id="5gsHVKB0Xvz" role="1tU5fm" />
                <node concept="2OqwBi" id="5gsHVKB1gNp" role="33vP2m">
                  <node concept="37vLTw" id="5gsHVKB1e3W" role="2Oq$k0">
                    <ref role="3cqZAo" node="5gsHVKB0Xvb" resolve="name" />
                  </node>
                  <node concept="liA8E" id="5gsHVKB1gNq" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.charAt(int)" resolve="charAt" />
                    <node concept="37vLTw" id="5gsHVKB1gNr" role="37wK5m">
                      <ref role="3cqZAo" node="5gsHVKB0Xvl" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5gsHVKB0XvA" role="3cqZAp">
              <node concept="3y3z36" id="5gsHVKB0XvB" role="3clFbw">
                <node concept="2OqwBi" id="5gsHVKB1ft1" role="3uHU7B">
                  <node concept="37vLTw" id="5gsHVKB1egR" role="2Oq$k0">
                    <ref role="3cqZAo" node="5gsHVKB0Xvd" resolve="p" />
                  </node>
                  <node concept="liA8E" id="5gsHVKB1ft2" role="2OqNvi">
                    <ref role="37wK5l" node="5gsHVKB0XrY" resolve="escape" />
                    <node concept="37vLTw" id="5gsHVKB1ft3" role="37wK5m">
                      <ref role="3cqZAo" node="5gsHVKB0Xvx" resolve="c" />
                    </node>
                  </node>
                </node>
                <node concept="3cmrfG" id="5gsHVKB0XvE" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="9aQIb" id="5gsHVKB0XvL" role="9aQIa">
                <node concept="3clFbS" id="5gsHVKB0XvM" role="9aQI4">
                  <node concept="3clFbF" id="5gsHVKB0XvN" role="3cqZAp">
                    <node concept="d57v9" id="5gsHVKB0XvO" role="3clFbG">
                      <node concept="37vLTw" id="5gsHVKB0XvP" role="37vLTJ">
                        <ref role="3cqZAo" node="5gsHVKB0Xvg" resolve="result" />
                      </node>
                      <node concept="3cmrfG" id="5gsHVKB0XvQ" role="37vLTx">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5gsHVKB0XvG" role="3clFbx">
                <node concept="3clFbF" id="5gsHVKB0XvH" role="3cqZAp">
                  <node concept="d57v9" id="5gsHVKB0XvI" role="3clFbG">
                    <node concept="37vLTw" id="5gsHVKB0XvJ" role="37vLTJ">
                      <ref role="3cqZAo" node="5gsHVKB0Xvg" resolve="result" />
                    </node>
                    <node concept="3cmrfG" id="5gsHVKB0XvK" role="37vLTx">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5gsHVKB0XvR" role="3cqZAp">
          <node concept="37vLTw" id="5gsHVKB0XvS" role="3cqZAk">
            <ref role="3cqZAo" node="5gsHVKB0Xvg" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5gsHVKB0XvT" role="1B3o_S" />
      <node concept="10Oyi0" id="5gsHVKB0XvU" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="5gsHVKB0XvV" role="jymVt">
      <property role="TrG5h" value="asString" />
      <node concept="37vLTG" id="5gsHVKB0XvW" role="3clF46">
        <property role="TrG5h" value="messageName" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="5gsHVKB0XvX" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="5gsHVKB0XvY" role="3clF46">
        <property role="TrG5h" value="attributes" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="5gsHVKB0XvZ" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        </node>
      </node>
      <node concept="3clFbS" id="5gsHVKB0Xw0" role="3clF47">
        <node concept="3cpWs8" id="5gsHVKB0Xw2" role="3cqZAp">
          <node concept="3cpWsn" id="5gsHVKB0Xw1" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="3uibUv" id="5gsHVKB0Xw3" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="3cpWs3" id="5gsHVKB0Xw4" role="33vP2m">
              <node concept="Xl_RD" id="5gsHVKB0Xw5" role="3uHU7B">
                <property role="Xl_RC" value="##teamcity[" />
              </node>
              <node concept="37vLTw" id="5gsHVKB0Xw6" role="3uHU7w">
                <ref role="3cqZAo" node="5gsHVKB0XvW" resolve="messageName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="5gsHVKB0Xw7" role="3cqZAp">
          <node concept="3cpWsn" id="5gsHVKB0Xw8" role="1Duv9x">
            <property role="TrG5h" value="iterator" />
            <node concept="3uibUv" id="5gsHVKB0Xwa" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
            </node>
            <node concept="2OqwBi" id="5gsHVKB1hSK" role="33vP2m">
              <node concept="2OqwBi" id="5gsHVKB1gBu" role="2Oq$k0">
                <node concept="37vLTw" id="5gsHVKB1eg_" role="2Oq$k0">
                  <ref role="3cqZAo" node="5gsHVKB0XvY" resolve="attributes" />
                </node>
                <node concept="liA8E" id="5gsHVKB1gBv" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.keySet()" resolve="keySet" />
                </node>
              </node>
              <node concept="liA8E" id="5gsHVKB1hSL" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Set.iterator()" resolve="iterator" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5gsHVKB1gt_" role="1Dwp0S">
            <node concept="37vLTw" id="5gsHVKB1egL" role="2Oq$k0">
              <ref role="3cqZAo" node="5gsHVKB0Xw8" resolve="iterator" />
            </node>
            <node concept="liA8E" id="5gsHVKB1gtA" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Iterator.hasNext()" resolve="hasNext" />
            </node>
          </node>
          <node concept="3clFbS" id="5gsHVKB0Xwf" role="2LFqv$">
            <node concept="3cpWs8" id="5gsHVKB0Xwh" role="3cqZAp">
              <node concept="3cpWsn" id="5gsHVKB0Xwg" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="attrName" />
                <node concept="3uibUv" id="5gsHVKB0Xwi" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="2OqwBi" id="5gsHVKB1h6i" role="33vP2m">
                  <node concept="37vLTw" id="5gsHVKB1e3I" role="2Oq$k0">
                    <ref role="3cqZAo" node="5gsHVKB0Xw8" resolve="iterator" />
                  </node>
                  <node concept="liA8E" id="5gsHVKB1h6j" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Iterator.next()" resolve="next" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5gsHVKB0Xwk" role="3cqZAp">
              <node concept="d57v9" id="5gsHVKB0Xwl" role="3clFbG">
                <node concept="37vLTw" id="5gsHVKB0Xwm" role="37vLTJ">
                  <ref role="3cqZAo" node="5gsHVKB0Xw1" resolve="text" />
                </node>
                <node concept="3cpWs3" id="5gsHVKB0Xwn" role="37vLTx">
                  <node concept="3cpWs3" id="5gsHVKB0Xwo" role="3uHU7B">
                    <node concept="3cpWs3" id="5gsHVKB0Xwp" role="3uHU7B">
                      <node concept="3cpWs3" id="5gsHVKB0Xwq" role="3uHU7B">
                        <node concept="Xl_RD" id="5gsHVKB0Xwr" role="3uHU7B">
                          <property role="Xl_RC" value=" " />
                        </node>
                        <node concept="37vLTw" id="5gsHVKB0Xws" role="3uHU7w">
                          <ref role="3cqZAo" node="5gsHVKB0Xwg" resolve="attrName" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="5gsHVKB0Xwt" role="3uHU7w">
                        <property role="Xl_RC" value="='" />
                      </node>
                    </node>
                    <node concept="1rXfSq" id="5gsHVKB0Xwu" role="3uHU7w">
                      <ref role="37wK5l" node="5gsHVKB0Xts" resolve="escapeStr" />
                      <node concept="10QFUN" id="5gsHVKB0Xwv" role="37wK5m">
                        <node concept="2OqwBi" id="5gsHVKB1fen" role="10QFUP">
                          <node concept="37vLTw" id="5gsHVKB1e3A" role="2Oq$k0">
                            <ref role="3cqZAo" node="5gsHVKB0XvY" resolve="attributes" />
                          </node>
                          <node concept="liA8E" id="5gsHVKB1feo" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                            <node concept="37vLTw" id="5gsHVKB1fep" role="37wK5m">
                              <ref role="3cqZAo" node="5gsHVKB0Xwg" resolve="attrName" />
                            </node>
                          </node>
                        </node>
                        <node concept="3uibUv" id="5gsHVKB0Xwy" role="10QFUM">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1rGdf3ZzrqH" role="37wK5m">
                        <ref role="3cqZAo" node="5gsHVKB0Xsj" resolve="STD_ESCAPER" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="5gsHVKB0Xw$" role="3uHU7w">
                    <property role="Xl_RC" value="'" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5gsHVKB0Xw_" role="3cqZAp">
          <node concept="d57v9" id="5gsHVKB0XwA" role="3clFbG">
            <node concept="37vLTw" id="5gsHVKB0XwB" role="37vLTJ">
              <ref role="3cqZAo" node="5gsHVKB0Xw1" resolve="text" />
            </node>
            <node concept="Xl_RD" id="5gsHVKB0XwC" role="37vLTx">
              <property role="Xl_RC" value="]" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5gsHVKB0XwD" role="3cqZAp">
          <node concept="37vLTw" id="5gsHVKB0XwE" role="3cqZAk">
            <ref role="3cqZAo" node="5gsHVKB0Xw1" resolve="text" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5gsHVKB0XwF" role="1B3o_S" />
      <node concept="3uibUv" id="5gsHVKB0XwG" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="3UR2Jj" id="5gsHVKC5uQC" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHs_vN" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHs_vO" role="1PaTwD">
          <property role="3oM_SC" value="https://github.com/JetBrains/intellij-community/blob/0e2aa4030ee763c9b0c828f0b5119f4cdcc66f35/java/java-runtime/src/com/intellij/rt/execution/junit/MapSerializerUtil.java" />
        </node>
      </node>
    </node>
  </node>
</model>

