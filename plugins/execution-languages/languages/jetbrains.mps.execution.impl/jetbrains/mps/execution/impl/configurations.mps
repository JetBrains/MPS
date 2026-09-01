<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c10c60c4-8193-4b28-a3f2-372a46125628(jetbrains.mps.execution.impl.configurations)">
  <persistence version="9" />
  <languages>
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="y8sq" ref="86441d7a-e194-42da-81a5-2161ec62a379/java:jetbrains.mps.plugins(MPS.Workbench/)" />
    <import index="zjj4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution.impl(MPS.IDEA/)" />
    <import index="dj99" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution.configurations(MPS.IDEA/)" />
    <import index="1m72" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.components(MPS.IDEA/)" />
    <import index="3v5a" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution(MPS.IDEA/)" />
    <import index="v7ux" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.content(MPS.IDEA/)" />
    <import index="cjdg" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution.ui(MPS.IDEA/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="9ti4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.extensions(MPS.IDEA/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="3qmy" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.classloading(MPS.Core/)" />
    <import index="3a50" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide(MPS.Platform/)" />
    <import index="v27p" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.startup(MPS.IDEA/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
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
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
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
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
      <concept id="5085607816302529296" name="jetbrains.mps.baseLanguage.javadoc.structure.IHoldCommentLines" flags="ngI" index="1VezTd">
        <child id="5085607816302529587" name="commentBody" index="1Vez_I" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
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
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="312cEu" id="4tDMPuHdxCU">
    <property role="TrG5h" value="RunConfigurationsStateManager" />
    <node concept="3Tm1VV" id="4tDMPuHd$Py" role="1B3o_S" />
    <node concept="3uibUv" id="3L9OXzBsIt$" role="EKbjA">
      <ref role="3uigEE" to="y8sq:~PluginReloadingListener" resolve="PluginReloadingListener" />
    </node>
    <node concept="312cEg" id="4tDMPuHd$PD" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4tDMPuHd$PE" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
      <node concept="3Tm6S6" id="4tDMPuHd$PF" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="7rvPfCBwHFd" role="jymVt">
      <property role="TrG5h" value="myState" />
      <property role="3TUv4t" value="true" />
      <node concept="2ShNRf" id="1xg2vZttduT" role="33vP2m">
        <node concept="1pGfFk" id="1xg2vZttqbL" role="2ShVmc">
          <ref role="37wK5l" node="7rvPfCBwHCw" resolve="RunConfigurationsStateManager.RunConfigurationsState" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7rvPfCBwHFe" role="1B3o_S" />
      <node concept="3uibUv" id="7rvPfCBwHFj" role="1tU5fm">
        <ref role="3uigEE" node="7rvPfCBwHCu" resolve="RunConfigurationsStateManager.RunConfigurationsState" />
      </node>
    </node>
    <node concept="2tJIrI" id="4tfwdmbGe9O" role="jymVt" />
    <node concept="3clFbW" id="4tDMPuHd$PO" role="jymVt">
      <node concept="3Tm1VV" id="4tDMPuHd$PP" role="1B3o_S" />
      <node concept="3cqZAl" id="4tDMPuHd$PQ" role="3clF45" />
      <node concept="37vLTG" id="4tDMPuHd$PR" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="4tDMPuHd$PS" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="4tDMPuHd$PT" role="3clF47">
        <node concept="3SKdUt" id="6CxxZgRrnuC" role="3cqZAp">
          <node concept="1PaTwC" id="6CxxZgRrnuD" role="1aUNEU">
            <node concept="3oM_SD" id="1QLX2Gg5rmB" role="1PaTwD">
              <property role="3oM_SC" value="PluginLoaderRegistry" />
            </node>
            <node concept="3oM_SD" id="6CxxZgRrnLf" role="1PaTwD">
              <property role="3oM_SC" value="publishes" />
            </node>
            <node concept="3oM_SD" id="6CxxZgRrnLw" role="1PaTwD">
              <property role="3oM_SC" value="events" />
            </node>
            <node concept="3oM_SD" id="6CxxZgRrnLU" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="6CxxZgRrnMd" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6CxxZgRrnMp" role="1PaTwD">
              <property role="3oM_SC" value="bus," />
            </node>
            <node concept="3oM_SD" id="1QLX2Gg5rqQ" role="1PaTwD">
              <property role="3oM_SC" value="app-wide" />
            </node>
            <node concept="3oM_SD" id="1QLX2Gg5rs4" role="1PaTwD">
              <property role="3oM_SC" value="topic," />
            </node>
            <node concept="3oM_SD" id="1QLX2Gg5ru9" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="1QLX2Gg5ruj" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="1QLX2Gg5ryD" role="1PaTwD">
              <property role="3oM_SC" value="listener" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1QLX2Gg5rAp" role="3cqZAp">
          <node concept="1PaTwC" id="1QLX2Gg5rAq" role="1aUNEU">
            <node concept="3oM_SD" id="1QLX2Gg5rAr" role="1PaTwD">
              <property role="3oM_SC" value="works" />
            </node>
            <node concept="3oM_SD" id="1QLX2Gg5rAM" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="1QLX2Gg5rJt" role="1PaTwD">
              <property role="3oM_SC" value="per-project" />
            </node>
            <node concept="3oM_SD" id="1QLX2Gg5rKB" role="1PaTwD">
              <property role="3oM_SC" value="basis." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4tDMPuHd$PU" role="3cqZAp">
          <node concept="37vLTI" id="4tDMPuHd$PV" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuTBS" role="37vLTJ">
              <ref role="3cqZAo" node="4tDMPuHd$PD" resolve="myProject" />
            </node>
            <node concept="37vLTw" id="2BHiRxghftO" role="37vLTx">
              <ref role="3cqZAo" node="4tDMPuHd$PR" resolve="project" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1QLX2Gg5DHP" role="3cqZAp">
          <node concept="1PaTwC" id="1QLX2Gg5DHQ" role="1aUNEU">
            <node concept="3oM_SD" id="1QLX2Gg5DHR" role="1PaTwD">
              <property role="3oM_SC" value="XXX" />
            </node>
            <node concept="3oM_SD" id="1QLX2Gg5DNc" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="1QLX2Gg5DUv" role="1PaTwD">
              <property role="3oM_SC" value="wonder" />
            </node>
            <node concept="3oM_SD" id="1QLX2Gg5DVp" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="1QLX2Gg5DVI" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="1QLX2Gg5DY0" role="1PaTwD">
              <property role="3oM_SC" value="could" />
            </node>
            <node concept="3oM_SD" id="1QLX2Gg5DYX" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="1QLX2Gg5E1O" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="1QLX2Gg5E1X" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="1QLX2Gg5E3d" role="1PaTwD">
              <property role="3oM_SC" value="part" />
            </node>
            <node concept="3oM_SD" id="1QLX2Gg5E3o" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="1QLX2Gg5E4E" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="1QLX2Gg5E5X" role="1PaTwD">
              <property role="3oM_SC" value="regular" />
            </node>
            <node concept="3oM_SD" id="1QLX2Gg5E8B" role="1PaTwD">
              <property role="3oM_SC" value="MPS" />
            </node>
            <node concept="3oM_SD" id="1QLX2Gg5EaM" role="1PaTwD">
              <property role="3oM_SC" value="plugin" />
            </node>
            <node concept="3oM_SD" id="1QLX2Gg5Eis" role="1PaTwD">
              <property role="3oM_SC" value="(with" />
            </node>
            <node concept="3oM_SD" id="1QLX2Gg5EiX" role="1PaTwD">
              <property role="3oM_SC" value="MPS-managed" />
            </node>
            <node concept="3oM_SD" id="1QLX2Gg5Ek5" role="1PaTwD">
              <property role="3oM_SC" value="classloader)?" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6Xt9YaLMhCb" role="3cqZAp">
          <node concept="1PaTwC" id="6Xt9YaLMhCc" role="1aUNEU">
            <node concept="3oM_SD" id="6Xt9YaLMhCd" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMhHk" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMhHm" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMhHB" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMhIX" role="1PaTwD">
              <property role="3oM_SC" value="strongly" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMhKN" role="1PaTwD">
              <property role="3oM_SC" value="suggest" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMhNu" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMhOO" role="1PaTwD">
              <property role="3oM_SC" value="go" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMhQq" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMhQr" role="1PaTwD">
              <property role="3oM_SC" value="way," />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMhRx" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMhRy" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMhSS" role="1PaTwD">
              <property role="3oM_SC" value="listener" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMhST" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMhUf" role="1PaTwD">
              <property role="3oM_SC" value="invoked" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMhVP" role="1PaTwD">
              <property role="3oM_SC" value="w/o" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMi0l" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMi2r" role="1PaTwD">
              <property role="3oM_SC" value="contract" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMi3x" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMi4B" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6Xt9YaLMibC" role="3cqZAp">
          <node concept="1PaTwC" id="6Xt9YaLMibi" role="1aUNEU">
            <node concept="3oM_SD" id="6Xt9YaLMibh" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMikE" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMikG" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMikX" role="1PaTwD">
              <property role="3oM_SC" value="afterLoaded/beforeUnloaded" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMino" role="1PaTwD">
              <property role="3oM_SC" value="ordering." />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMiq3" role="1PaTwD">
              <property role="3oM_SC" value="As" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMirp" role="1PaTwD">
              <property role="3oM_SC" value="it's" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMirE" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMit0" role="1PaTwD">
              <property role="3oM_SC" value="MB" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMith" role="1PaTwD">
              <property role="3oM_SC" value="listener," />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMivW" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMqm$" role="1PaTwD">
              <property role="3oM_SC" value="could" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMqnU" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMqob" role="1PaTwD">
              <property role="3oM_SC" value="beforeUnloaded" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMqrV" role="1PaTwD">
              <property role="3oM_SC" value="first," />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMqF6" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6Xt9YaLMqt$" role="3cqZAp">
          <node concept="1PaTwC" id="6Xt9YaLMqti" role="1aUNEU">
            <node concept="3oM_SD" id="6Xt9YaLMqth" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMqyO" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMqyQ" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMqA$" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMqCa" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMqGs" role="1PaTwD">
              <property role="3oM_SC" value="just" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMqLi" role="1PaTwD">
              <property role="3oM_SC" value="being" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMqGH" role="1PaTwD">
              <property role="3oM_SC" value="initialized" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMqMS" role="1PaTwD">
              <property role="3oM_SC" value="(see" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMqOe" role="1PaTwD">
              <property role="3oM_SC" value="#collectDescriptorsForDispose())" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4tfwdmbG7Wy" role="jymVt" />
    <node concept="3clFb_" id="1s_TLxa97VH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="afterPluginsLoaded" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="1s_TLxa97VI" role="1B3o_S" />
      <node concept="3cqZAl" id="1s_TLxa97VJ" role="3clF45" />
      <node concept="3clFbS" id="1s_TLxa97VK" role="3clF47">
        <node concept="3SKdUt" id="4sfB6SDPPET" role="3cqZAp">
          <node concept="1PaTwC" id="4sfB6SDPPEU" role="1aUNEU">
            <node concept="3oM_SD" id="4sfB6SDPPEW" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="4sfB6SDPPGd" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="4sfB6SDPPLp" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="4sfB6SDPPM_" role="1PaTwD">
              <property role="3oM_SC" value="executed" />
            </node>
            <node concept="3oM_SD" id="4sfB6SDPPPa" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="4sfB6SDPPQo" role="1PaTwD">
              <property role="3oM_SC" value="&quot;later&quot;," />
            </node>
            <node concept="3oM_SD" id="4sfB6SDPPSZ" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="4sfB6SDPPTf" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="4sfB6SDPPUw" role="1PaTwD">
              <property role="3oM_SC" value="check" />
            </node>
            <node concept="3oM_SD" id="4sfB6SDPQ6x" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="4sfB6SDPQ7W" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="4sfB6SDPQ9g" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="4sfB6SDPQaH" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="4sfB6SDPQb3" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="4sfB6SDPQcq" role="1PaTwD">
              <property role="3oM_SC" value="yet" />
            </node>
            <node concept="3oM_SD" id="4sfB6SDPQcM" role="1PaTwD">
              <property role="3oM_SC" value="closed" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4tDMPuHd$Q9" role="3cqZAp">
          <node concept="3clFbS" id="4tDMPuHd$Qd" role="3clFbx">
            <node concept="3cpWs6" id="4tDMPuHd$Qe" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="4tDMPuHd$Qa" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxeuq92" role="2Oq$k0">
              <ref role="3cqZAo" node="4tDMPuHd$PD" resolve="myProject" />
            </node>
            <node concept="liA8E" id="4tDMPuHd$Qc" role="2OqNvi">
              <ref role="37wK5l" to="1m72:~ComponentManager.isDisposed()" resolve="isDisposed" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4sfB6SDPOyl" role="3cqZAp" />
        <node concept="3clFbJ" id="73XTMBc05tN" role="3cqZAp">
          <node concept="3clFbS" id="73XTMBc05tP" role="3clFbx">
            <node concept="3clFbF" id="7rvPfCBwHFM" role="3cqZAp">
              <node concept="2OqwBi" id="7rvPfCBwHFU" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeukog" role="2Oq$k0">
                  <ref role="3cqZAo" node="7rvPfCBwHFd" resolve="myState" />
                </node>
                <node concept="liA8E" id="7rvPfCBwHFZ" role="2OqNvi">
                  <ref role="37wK5l" node="1xg2vZtrX1Z" resolve="restoreState" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="3SAibIi_zhV" role="3clFbw">
            <node concept="2OqwBi" id="73XTMBc0gxC" role="3uHU7w">
              <node concept="37vLTw" id="73XTMBc0gxD" role="2Oq$k0">
                <ref role="3cqZAo" node="4tDMPuHd$PD" resolve="myProject" />
              </node>
              <node concept="liA8E" id="73XTMBc0gxE" role="2OqNvi">
                <ref role="37wK5l" to="4nm9:~Project.isInitialized()" resolve="isInitialized" />
              </node>
            </node>
            <node concept="2OqwBi" id="73XTMBc0b5U" role="3uHU7B">
              <node concept="37vLTw" id="73XTMBc0b5V" role="2Oq$k0">
                <ref role="3cqZAo" node="4tDMPuHd$PD" resolve="myProject" />
              </node>
              <node concept="liA8E" id="73XTMBc0b5W" role="2OqNvi">
                <ref role="37wK5l" to="4nm9:~Project.isOpen()" resolve="isOpen" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="73XTMBc0spD" role="9aQIa">
            <node concept="3clFbS" id="73XTMBc0spE" role="9aQI4">
              <node concept="3SKdUt" id="3SAibIi_xn3" role="3cqZAp">
                <node concept="1PaTwC" id="3SAibIi_xn4" role="1aUNEU">
                  <node concept="3oM_SD" id="3SAibIi_xn5" role="1PaTwD">
                    <property role="3oM_SC" value="would" />
                  </node>
                  <node concept="3oM_SD" id="3SAibIi_ymx" role="1PaTwD">
                    <property role="3oM_SC" value="be" />
                  </node>
                  <node concept="3oM_SD" id="3SAibIi_ymz" role="1PaTwD">
                    <property role="3oM_SC" value="nice" />
                  </node>
                  <node concept="3oM_SD" id="3SAibIi_ymW" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="3SAibIi_ymX" role="1PaTwD">
                    <property role="3oM_SC" value="postpone" />
                  </node>
                  <node concept="3oM_SD" id="3SAibIi_ATX" role="1PaTwD">
                    <property role="3oM_SC" value="init," />
                  </node>
                  <node concept="3oM_SD" id="3SAibIi_AUQ" role="1PaTwD">
                    <property role="3oM_SC" value="yet" />
                  </node>
                  <node concept="3oM_SD" id="3SAibIi_AVf" role="1PaTwD">
                    <property role="3oM_SC" value="didn't" />
                  </node>
                  <node concept="3oM_SD" id="3SAibIi_AXo" role="1PaTwD">
                    <property role="3oM_SC" value="find" />
                  </node>
                  <node concept="3oM_SD" id="3SAibIi_AY1" role="1PaTwD">
                    <property role="3oM_SC" value="proper" />
                  </node>
                  <node concept="3oM_SD" id="3SAibIi_AYU" role="1PaTwD">
                    <property role="3oM_SC" value="mechanism" />
                  </node>
                </node>
              </node>
              <node concept="1X3_iC" id="s2eN1ssFWn" role="lGtFl">
                <property role="3V$3am" value="statement" />
                <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                <node concept="3clFbF" id="73XTMBc0i1B" role="8Wnug">
                  <node concept="2OqwBi" id="73XTMBc0mwL" role="3clFbG">
                    <node concept="2YIFZM" id="73XTMBc0kpU" role="2Oq$k0">
                      <ref role="37wK5l" to="v27p:~StartupManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                      <ref role="1Pybhc" to="v27p:~StartupManager" resolve="StartupManager" />
                      <node concept="37vLTw" id="73XTMBc0Dxc" role="37wK5m">
                        <ref role="3cqZAo" node="4tDMPuHd$PD" resolve="myProject" />
                      </node>
                    </node>
                    <node concept="liA8E" id="73XTMBc0nm3" role="2OqNvi">
                      <ref role="37wK5l" to="v27p:~StartupManager.runAfterOpened(java.lang.Runnable)" resolve="runAfterOpened" />
                      <node concept="1bVj0M" id="73XTMBc0obB" role="37wK5m">
                        <node concept="3clFbS" id="73XTMBc0obE" role="1bW5cS">
                          <node concept="3clFbF" id="73XTMBc0plp" role="3cqZAp">
                            <node concept="2OqwBi" id="73XTMBc0qiU" role="3clFbG">
                              <node concept="37vLTw" id="73XTMBc0plo" role="2Oq$k0">
                                <ref role="3cqZAo" node="7rvPfCBwHFd" resolve="myState" />
                              </node>
                              <node concept="liA8E" id="73XTMBc0rz_" role="2OqNvi">
                                <ref role="37wK5l" node="1xg2vZtrX1Z" resolve="restoreState" />
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
      <node concept="2AHcQZ" id="3tYsUK_UvWB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="2dPl3A21des" role="3clF46">
        <property role="TrG5h" value="contributors" />
        <node concept="3uibUv" id="2dPl3A21der" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="2dPl3A21ey3" role="11_B2D">
            <ref role="3uigEE" to="y8sq:~PluginContributor" resolve="PluginContributor" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4tfwdmbGcY4" role="jymVt" />
    <node concept="3clFb_" id="1s_TLxa97VL" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="beforePluginsUnloaded" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="2dPl3A21gq5" role="3clF46">
        <property role="TrG5h" value="contributors" />
        <node concept="3uibUv" id="2dPl3A21gq6" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="2dPl3A21gq7" role="11_B2D">
            <ref role="3uigEE" to="y8sq:~PluginContributor" resolve="PluginContributor" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1s_TLxa97VM" role="1B3o_S" />
      <node concept="3cqZAl" id="1s_TLxa97VN" role="3clF45" />
      <node concept="3clFbS" id="1s_TLxa97VO" role="3clF47">
        <node concept="3SKdUt" id="7rb2_bmZzVr" role="3cqZAp">
          <node concept="1PaTwC" id="7rb2_bmZzVs" role="1aUNEU">
            <node concept="3oM_SD" id="7rb2_bmZ$HD" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="7rb2_bmZ$HF" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7rb2_bmZtsK" role="3cqZAp">
          <node concept="3clFbS" id="7rb2_bmZtsO" role="3clFbx">
            <node concept="3cpWs6" id="7rb2_bmZtsP" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="7rb2_bmZtsL" role="3clFbw">
            <node concept="37vLTw" id="7rb2_bmZtsM" role="2Oq$k0">
              <ref role="3cqZAo" node="4tDMPuHd$PD" resolve="myProject" />
            </node>
            <node concept="liA8E" id="7rb2_bmZtsN" role="2OqNvi">
              <ref role="37wK5l" to="1m72:~ComponentManager.isDisposed()" resolve="isDisposed" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7rb2_bmZsuW" role="3cqZAp" />
        <node concept="3clFbF" id="4sfB6SDPRak" role="3cqZAp">
          <node concept="1rXfSq" id="4sfB6SDPRal" role="3clFbG">
            <ref role="37wK5l" node="4tfwdmbGEtd" resolve="disposeRunContentDescriptors" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_UvWC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4tfwdmbFQg9" role="jymVt" />
    <node concept="3clFb_" id="4tfwdmbGEtd" role="jymVt">
      <property role="TrG5h" value="disposeRunContentDescriptors" />
      <node concept="3Tm6S6" id="4tfwdmbGEte" role="1B3o_S" />
      <node concept="3cqZAl" id="4tfwdmbGEtf" role="3clF45" />
      <node concept="3clFbS" id="4tfwdmbGEs6" role="3clF47">
        <node concept="3SKdUt" id="1DdwxBFHgsG" role="3cqZAp">
          <node concept="1PaTwC" id="1DdwxBFHgsH" role="1aUNEU">
            <node concept="3oM_SD" id="1DdwxBFHgsJ" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="1DdwxBFHgz3" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="1DdwxBFHgz6" role="1PaTwD">
              <property role="3oM_SC" value="EDT" />
            </node>
            <node concept="3oM_SD" id="1DdwxBFHgzi" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1DdwxBFHgzn" role="1PaTwD">
              <property role="3oM_SC" value="access" />
            </node>
            <node concept="3oM_SD" id="1DdwxBFHgzH" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1DdwxBFHgzO" role="1PaTwD">
              <property role="3oM_SC" value="descriptors" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1DdwxBFHenQ" role="3cqZAp">
          <node concept="2YIFZM" id="1DdwxBFHeHy" role="3clFbG">
            <ref role="37wK5l" to="3a50:~ThreadUtils.assertEDT()" resolve="assertEDT" />
            <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
          </node>
        </node>
        <node concept="3clFbH" id="1DdwxBFHeKh" role="3cqZAp" />
        <node concept="3cpWs8" id="4tfwdmbGEs7" role="3cqZAp">
          <node concept="3cpWsn" id="4tfwdmbGEs8" role="3cpWs9">
            <property role="TrG5h" value="descriptors" />
            <property role="3TUv4t" value="true" />
            <node concept="_YKpA" id="4tfwdmbGEs9" role="1tU5fm">
              <node concept="3uibUv" id="4tfwdmbGEsa" role="_ZDj9">
                <ref role="3uigEE" to="cjdg:~RunContentDescriptor" resolve="RunContentDescriptor" />
              </node>
            </node>
            <node concept="1rXfSq" id="4tfwdmbGEsb" role="33vP2m">
              <ref role="37wK5l" node="3PIszklmnto" resolve="collectDescriptorsToDispose" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="4r$i1_a$4pn" role="3cqZAp">
          <node concept="3clFbS" id="4r$i1_a$4ps" role="2LFqv$">
            <node concept="3cpWs8" id="4r$i1_a$4pt" role="3cqZAp">
              <node concept="3cpWsn" id="4r$i1_a$4pu" role="3cpWs9">
                <property role="TrG5h" value="attachedContent" />
                <node concept="3uibUv" id="4r$i1_a$4pv" role="1tU5fm">
                  <ref role="3uigEE" to="v7ux:~Content" resolve="Content" />
                </node>
                <node concept="2OqwBi" id="4r$i1_a$4pw" role="33vP2m">
                  <node concept="2GrUjf" id="4r$i1_a$4q9" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="4r$i1_a$4q8" resolve="descriptor" />
                  </node>
                  <node concept="liA8E" id="4r$i1_a$4py" role="2OqNvi">
                    <ref role="37wK5l" to="cjdg:~RunContentDescriptor.getAttachedContent()" resolve="getAttachedContent" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4r$i1_a$4pz" role="3cqZAp">
              <node concept="3clFbC" id="4r$i1_a$4p$" role="3clFbw">
                <node concept="37vLTw" id="4r$i1_a$4p_" role="3uHU7B">
                  <ref role="3cqZAo" node="4r$i1_a$4pu" resolve="attachedContent" />
                </node>
                <node concept="10Nm6u" id="4r$i1_a$4pA" role="3uHU7w" />
              </node>
              <node concept="3clFbJ" id="4r$i1_a$4pB" role="9aQIa">
                <node concept="3clFbC" id="4r$i1_a$4pC" role="3clFbw">
                  <node concept="2OqwBi" id="4r$i1_a$4pD" role="3uHU7B">
                    <node concept="37vLTw" id="4r$i1_a$4pE" role="2Oq$k0">
                      <ref role="3cqZAo" node="4r$i1_a$4pu" resolve="attachedContent" />
                    </node>
                    <node concept="liA8E" id="4r$i1_a$4pF" role="2OqNvi">
                      <ref role="37wK5l" to="v7ux:~Content.getManager()" resolve="getManager" />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="4r$i1_a$4pG" role="3uHU7w" />
                </node>
                <node concept="9aQIb" id="4r$i1_a$4pH" role="9aQIa">
                  <node concept="3clFbS" id="4r$i1_a$4pI" role="9aQI4">
                    <node concept="3clFbF" id="4r$i1_a$4pJ" role="3cqZAp">
                      <node concept="2OqwBi" id="4r$i1_a$4pK" role="3clFbG">
                        <node concept="2OqwBi" id="4r$i1_a$4pL" role="2Oq$k0">
                          <node concept="37vLTw" id="4r$i1_a$4pM" role="2Oq$k0">
                            <ref role="3cqZAo" node="4r$i1_a$4pu" resolve="attachedContent" />
                          </node>
                          <node concept="liA8E" id="4r$i1_a$4pN" role="2OqNvi">
                            <ref role="37wK5l" to="v7ux:~Content.getManager()" resolve="getManager" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4r$i1_a$4pO" role="2OqNvi">
                          <ref role="37wK5l" to="v7ux:~ContentManager.removeContent(com.intellij.ui.content.Content,boolean)" />
                          <node concept="37vLTw" id="6vUEXPkxBTf" role="37wK5m">
                            <ref role="3cqZAo" node="4r$i1_a$4pu" resolve="attachedContent" />
                          </node>
                          <node concept="3clFbT" id="4r$i1_a$4pP" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="4r$i1_a$4pQ" role="3clFbx">
                  <node concept="RRSsy" id="4r$i1_a$4pR" role="3cqZAp">
                    <property role="RRSoG" value="gZ5fksE/warn" />
                    <node concept="3cpWs3" id="4r$i1_a$4pS" role="RRSoy">
                      <node concept="3cpWs3" id="4r$i1_a$4pT" role="3uHU7B">
                        <node concept="Xl_RD" id="4r$i1_a$4pU" role="3uHU7B">
                          <property role="Xl_RC" value="Manager of attached content of descriptor " />
                        </node>
                        <node concept="2OqwBi" id="4r$i1_a$4pV" role="3uHU7w">
                          <node concept="2GrUjf" id="4r$i1_a$4qa" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="4r$i1_a$4q8" resolve="descriptor" />
                          </node>
                          <node concept="liA8E" id="4r$i1_a$4pX" role="2OqNvi">
                            <ref role="37wK5l" to="cjdg:~RunContentDescriptor.getDisplayName()" resolve="getDisplayName" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="4r$i1_a$4pY" role="3uHU7w">
                        <property role="Xl_RC" value=" is null." />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="4r$i1_a$4pZ" role="3clFbx">
                <node concept="RRSsy" id="4r$i1_a$4q0" role="3cqZAp">
                  <property role="RRSoG" value="gZ5fksE/warn" />
                  <node concept="3cpWs3" id="4r$i1_a$4q1" role="RRSoy">
                    <node concept="3cpWs3" id="4r$i1_a$4q2" role="3uHU7B">
                      <node concept="Xl_RD" id="4r$i1_a$4q3" role="3uHU7B">
                        <property role="Xl_RC" value="Attached content of descriptor " />
                      </node>
                      <node concept="2OqwBi" id="4r$i1_a$4q4" role="3uHU7w">
                        <node concept="2GrUjf" id="4r$i1_a$4qb" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="4r$i1_a$4q8" resolve="descriptor" />
                        </node>
                        <node concept="liA8E" id="4r$i1_a$4q6" role="2OqNvi">
                          <ref role="37wK5l" to="cjdg:~RunContentDescriptor.getDisplayName()" resolve="getDisplayName" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="4r$i1_a$4q7" role="3uHU7w">
                      <property role="Xl_RC" value=" is null." />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="4r$i1_a$4pr" role="2GsD0m">
            <ref role="3cqZAo" node="4tfwdmbGEs8" resolve="descriptors" />
          </node>
          <node concept="2GrKxI" id="4r$i1_a$4q8" role="2Gsz3X">
            <property role="TrG5h" value="descriptor" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4tfwdmbGoJi" role="jymVt" />
    <node concept="3clFb_" id="4tfwdmbGnyj" role="jymVt">
      <property role="TrG5h" value="clearAllRunConfigurations" />
      <node concept="3Tm6S6" id="4tfwdmbGnyk" role="1B3o_S" />
      <node concept="3cqZAl" id="4tfwdmbGnyl" role="3clF45" />
      <node concept="3clFbS" id="4tfwdmbGnyc" role="3clF47">
        <node concept="3clFbF" id="4tfwdmbGnyd" role="3cqZAp">
          <node concept="2OqwBi" id="4tfwdmbGnye" role="3clFbG">
            <node concept="1rXfSq" id="4tfwdmbGnyf" role="2Oq$k0">
              <ref role="37wK5l" node="4tDMPuHd$TR" resolve="getRunManager" />
            </node>
            <node concept="liA8E" id="4tfwdmbGnyg" role="2OqNvi">
              <ref role="37wK5l" to="zjj4:~RunManagerImpl.clearAll()" resolve="clearAll" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4tfwdmbGpVf" role="jymVt" />
    <node concept="3clFb_" id="3PIszklmnto" role="jymVt">
      <property role="TrG5h" value="collectDescriptorsToDispose" />
      <node concept="3Tm6S6" id="3PIszklmntp" role="1B3o_S" />
      <node concept="_YKpA" id="3PIszklmntq" role="3clF45">
        <node concept="3uibUv" id="3PIszklmntr" role="_ZDj9">
          <ref role="3uigEE" to="cjdg:~RunContentDescriptor" resolve="RunContentDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="3PIszklmnts" role="3clF47">
        <node concept="3cpWs8" id="3PIszklmnub" role="3cqZAp">
          <node concept="3cpWsn" id="3PIszklmntl" role="3cpWs9">
            <property role="TrG5h" value="descriptors" />
            <property role="3TUv4t" value="true" />
            <node concept="_YKpA" id="3PIszklmnuc" role="1tU5fm">
              <node concept="3uibUv" id="3PIszklmnud" role="_ZDj9">
                <ref role="3uigEE" to="cjdg:~RunContentDescriptor" resolve="RunContentDescriptor" />
              </node>
            </node>
            <node concept="2ShNRf" id="3PIszklmnue" role="33vP2m">
              <node concept="Tc6Ow" id="3PIszklmnuf" role="2ShVmc">
                <node concept="3uibUv" id="3PIszklmnug" role="HW$YZ">
                  <ref role="3uigEE" to="cjdg:~RunContentDescriptor" resolve="RunContentDescriptor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3PIszklmntE" role="3cqZAp" />
        <node concept="3SKdUt" id="6Xt9YaLMiA5" role="3cqZAp">
          <node concept="1PaTwC" id="6Xt9YaLMiA6" role="1aUNEU">
            <node concept="3oM_SD" id="6Xt9YaLMiA7" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMk16" role="1PaTwD">
              <property role="3oM_SC" value="listener" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMk2t" role="1PaTwD">
              <property role="3oM_SC" value="could" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMk2I" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMk3O" role="1PaTwD">
              <property role="3oM_SC" value="beforePluginsUnloaded" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMk6Z" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMk8P" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMk8Q" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMkbx" role="1PaTwD">
              <property role="3oM_SC" value="yet" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMkbM" role="1PaTwD">
              <property role="3oM_SC" value="initialized" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMkfM" role="1PaTwD">
              <property role="3oM_SC" value="project." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6Xt9YaLMkk1" role="3cqZAp">
          <node concept="1PaTwC" id="6Xt9YaLMkk2" role="1aUNEU">
            <node concept="3oM_SD" id="6Xt9YaLMkk3" role="1PaTwD">
              <property role="3oM_SC" value="IDEA" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMlJr" role="1PaTwD">
              <property role="3oM_SC" value="starts" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMlM7" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMlM8" role="1PaTwD">
              <property role="3oM_SC" value="open" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMlNu" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMlNv" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMlP5" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMlP6" role="1PaTwD">
              <property role="3oM_SC" value="closing" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMlQc" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMlQt" role="1PaTwD">
              <property role="3oM_SC" value="previous" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMlS3" role="1PaTwD">
              <property role="3oM_SC" value="one." />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMlT9" role="1PaTwD">
              <property role="3oM_SC" value="MPS" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMlTq" role="1PaTwD">
              <property role="3oM_SC" value="notices" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMlV0" role="1PaTwD">
              <property role="3oM_SC" value="close" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMlW6" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6Xt9YaLMmTo" role="3cqZAp">
          <node concept="1PaTwC" id="6Xt9YaLMmTp" role="1aUNEU">
            <node concept="3oM_SD" id="6Xt9YaLMmTq" role="1PaTwD">
              <property role="3oM_SC" value="discards" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMo3a" role="1PaTwD">
              <property role="3oM_SC" value="plugins," />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMo6m" role="1PaTwD">
              <property role="3oM_SC" value="sending" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMo7G" role="1PaTwD">
              <property role="3oM_SC" value="notification" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMo9y" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMoaS" role="1PaTwD">
              <property role="3oM_SC" value="MB." />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMoaT" role="1PaTwD">
              <property role="3oM_SC" value="IDEA" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMocf" role="1PaTwD">
              <property role="3oM_SC" value="instantiates" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMop6" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMop7" role="1PaTwD">
              <property role="3oM_SC" value="notifies" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMogf" role="1PaTwD">
              <property role="3oM_SC" value="RCSM" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMoiU" role="1PaTwD">
              <property role="3oM_SC" value="listener" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMoqt" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6Xt9YaLMowo" role="3cqZAp">
          <node concept="1PaTwC" id="6Xt9YaLMow6" role="1aUNEU">
            <node concept="3oM_SD" id="6Xt9YaLMow5" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMorN" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMorO" role="1PaTwD">
              <property role="3oM_SC" value="new" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMota" role="1PaTwD">
              <property role="3oM_SC" value="project," />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMq1v" role="1PaTwD">
              <property role="3oM_SC" value="triggering" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMq6k" role="1PaTwD">
              <property role="3oM_SC" value="unnecessary" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMqdK" role="1PaTwD">
              <property role="3oM_SC" value="init" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMq7U" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="6Xt9YaLMq8b" role="1PaTwD">
              <property role="3oM_SC" value="RunManager" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="28wk7WLf9k8" role="3cqZAp">
          <node concept="3cpWsn" id="28wk7WLf9k9" role="3cpWs9">
            <property role="TrG5h" value="runManager" />
            <node concept="3uibUv" id="28wk7WLf91w" role="1tU5fm">
              <ref role="3uigEE" to="3v5a:~RunManager" resolve="RunManager" />
            </node>
            <node concept="2YIFZM" id="28wk7WLf9ka" role="33vP2m">
              <ref role="37wK5l" to="3v5a:~RunManager.getInstanceIfCreated(com.intellij.openapi.project.Project)" resolve="getInstanceIfCreated" />
              <ref role="1Pybhc" to="3v5a:~RunManagerEx" resolve="RunManagerEx" />
              <node concept="37vLTw" id="28wk7WLf9kb" role="37wK5m">
                <ref role="3cqZAo" node="4tDMPuHd$PD" resolve="myProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="28wk7WLff25" role="3cqZAp">
          <node concept="3clFbS" id="28wk7WLff27" role="3clFbx">
            <node concept="3cpWs6" id="28wk7WLfjpM" role="3cqZAp">
              <node concept="37vLTw" id="28wk7WLgeXN" role="3cqZAk">
                <ref role="3cqZAo" node="3PIszklmntl" resolve="descriptors" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="28wk7WLfhpi" role="3clFbw">
            <node concept="10Nm6u" id="28wk7WLfizO" role="3uHU7w" />
            <node concept="37vLTw" id="28wk7WLfgbN" role="3uHU7B">
              <ref role="3cqZAo" node="28wk7WLf9k9" resolve="runManager" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="28wk7WLgje_" role="3cqZAp" />
        <node concept="3cpWs8" id="3PIszklmntt" role="3cqZAp">
          <node concept="3cpWsn" id="3PIszklmnth" role="3cpWs9">
            <property role="TrG5h" value="executionManager" />
            <node concept="3uibUv" id="3PIszklmntu" role="1tU5fm">
              <ref role="3uigEE" to="3v5a:~ExecutionManager" resolve="ExecutionManager" />
            </node>
            <node concept="2YIFZM" id="3RDARv$SsGq" role="33vP2m">
              <ref role="37wK5l" to="3v5a:~ExecutionManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
              <ref role="1Pybhc" to="3v5a:~ExecutionManager" resolve="ExecutionManager" />
              <node concept="37vLTw" id="3RDARv$StRr" role="37wK5m">
                <ref role="3cqZAo" node="4tDMPuHd$PD" resolve="myProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3PIszklmntz" role="3cqZAp">
          <node concept="3cpWsn" id="3PIszklmntk" role="3cpWs9">
            <property role="TrG5h" value="contentManager" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="3PIszklmnt$" role="1tU5fm">
              <ref role="3uigEE" to="cjdg:~RunContentManagerImpl" resolve="RunContentManagerImpl" />
            </node>
            <node concept="10QFUN" id="3PIszklmnt_" role="33vP2m">
              <node concept="2OqwBi" id="3PIszklmntA" role="10QFUP">
                <node concept="37vLTw" id="3GM_nagTzqr" role="2Oq$k0">
                  <ref role="3cqZAo" node="3PIszklmnth" resolve="executionManager" />
                </node>
                <node concept="liA8E" id="3PIszklmntC" role="2OqNvi">
                  <ref role="37wK5l" to="3v5a:~ExecutionManager.getContentManager()" resolve="getContentManager" />
                </node>
              </node>
              <node concept="3uibUv" id="3PIszklmntD" role="10QFUM">
                <ref role="3uigEE" to="cjdg:~RunContentManagerImpl" resolve="RunContentManagerImpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="28wk7WLf5BP" role="3cqZAp" />
        <node concept="3cpWs8" id="1xg2vZttK97" role="3cqZAp">
          <node concept="3cpWsn" id="1xg2vZttK98" role="3cpWs9">
            <property role="TrG5h" value="allConfigurationsList" />
            <node concept="A3Dl8" id="1xg2vZttLg0" role="1tU5fm">
              <node concept="3uibUv" id="1xg2vZttLg2" role="A3Ik2">
                <ref role="3uigEE" to="dj99:~RunConfiguration" resolve="RunConfiguration" />
              </node>
            </node>
            <node concept="2OqwBi" id="1xg2vZttK99" role="33vP2m">
              <node concept="37vLTw" id="28wk7WLglNn" role="2Oq$k0">
                <ref role="3cqZAo" node="28wk7WLf9k9" resolve="runManager" />
              </node>
              <node concept="liA8E" id="1xg2vZttK9b" role="2OqNvi">
                <ref role="37wK5l" to="3v5a:~RunManager.getAllConfigurationsList()" resolve="getAllConfigurationsList" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3PIszklmntF" role="3cqZAp">
          <node concept="3cpWsn" id="3PIszklmntn" role="3cpWs9">
            <property role="TrG5h" value="reloadableConfigurationNames" />
            <property role="3TUv4t" value="true" />
            <node concept="2OqwBi" id="3PIszklmntG" role="33vP2m">
              <node concept="2OqwBi" id="3PIszklmntH" role="2Oq$k0">
                <node concept="2OqwBi" id="3PIszklmntI" role="2Oq$k0">
                  <node concept="37vLTw" id="1xg2vZttK9c" role="2Oq$k0">
                    <ref role="3cqZAo" node="1xg2vZttK98" resolve="allConfigurationsList" />
                  </node>
                  <node concept="3zZkjj" id="3PIszklmntO" role="2OqNvi">
                    <node concept="1bVj0M" id="3PIszklmntP" role="23t8la">
                      <node concept="3clFbS" id="3PIszklmntQ" role="1bW5cS">
                        <node concept="3clFbF" id="3PIszklmntR" role="3cqZAp">
                          <node concept="2ZW3vV" id="3PIszklmntS" role="3clFbG">
                            <node concept="3uibUv" id="5SEQQjTcj2y" role="2ZW6by">
                              <ref role="3uigEE" to="3qmy:~ModuleClassLoader" resolve="ModuleClassLoader" />
                            </node>
                            <node concept="2OqwBi" id="3PIszklmntU" role="2ZW6bz">
                              <node concept="2OqwBi" id="3PIszklmntV" role="2Oq$k0">
                                <node concept="37vLTw" id="2BHiRxghiDT" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5W7E4fV0Xke" resolve="it" />
                                </node>
                                <node concept="liA8E" id="3PIszklmntX" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                                </node>
                              </node>
                              <node concept="liA8E" id="3PIszklmntY" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~Class.getClassLoader()" resolve="getClassLoader" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0Xke" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0Xkf" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3$u5V9" id="3PIszklmnu0" role="2OqNvi">
                  <node concept="1bVj0M" id="3PIszklmnu1" role="23t8la">
                    <node concept="3clFbS" id="3PIszklmnu2" role="1bW5cS">
                      <node concept="3clFbF" id="3PIszklmnu3" role="3cqZAp">
                        <node concept="2OqwBi" id="3PIszklmnu4" role="3clFbG">
                          <node concept="37vLTw" id="2BHiRxglK$8" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0Xkg" resolve="it" />
                          </node>
                          <node concept="liA8E" id="3PIszklmnu6" role="2OqNvi">
                            <ref role="37wK5l" to="dj99:~RunProfile.getName()" resolve="getName" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0Xkg" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0Xkh" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="3PIszklmnu8" role="2OqNvi" />
            </node>
            <node concept="_YKpA" id="3PIszklmnu9" role="1tU5fm">
              <node concept="3uibUv" id="4r$i1_azpf7" role="_ZDj9">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="4r$i1_a$2xD" role="3cqZAp">
          <node concept="3clFbS" id="4r$i1_a$2xK" role="2LFqv$">
            <node concept="3clFbJ" id="4r$i1_a$2xL" role="3cqZAp">
              <node concept="3clFbS" id="4r$i1_a$2xM" role="3clFbx">
                <node concept="3clFbF" id="4r$i1_a$2xN" role="3cqZAp">
                  <node concept="2OqwBi" id="4r$i1_a$2xO" role="3clFbG">
                    <node concept="37vLTw" id="4r$i1_a$2xP" role="2Oq$k0">
                      <ref role="3cqZAo" node="3PIszklmntl" resolve="descriptors" />
                    </node>
                    <node concept="TSZUe" id="4r$i1_a$2xQ" role="2OqNvi">
                      <node concept="2GrUjf" id="4r$i1_a$2xZ" role="25WWJ7">
                        <ref role="2Gs0qQ" node="4r$i1_a$2xY" resolve="descriptor" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4r$i1_a$2xS" role="3clFbw">
                <node concept="37vLTw" id="4r$i1_a$2xT" role="2Oq$k0">
                  <ref role="3cqZAo" node="3PIszklmntn" resolve="reloadableConfigurationNames" />
                </node>
                <node concept="3JPx81" id="4r$i1_a$2xU" role="2OqNvi">
                  <node concept="2OqwBi" id="4r$i1_a$2xV" role="25WWJ7">
                    <node concept="2GrUjf" id="4r$i1_a$2y0" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="4r$i1_a$2xY" resolve="descriptor" />
                    </node>
                    <node concept="liA8E" id="4r$i1_a$2xX" role="2OqNvi">
                      <ref role="37wK5l" to="cjdg:~RunContentDescriptor.getDisplayName()" resolve="getDisplayName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4r$i1_a$2xH" role="2GsD0m">
            <node concept="37vLTw" id="4r$i1_a$2xI" role="2Oq$k0">
              <ref role="3cqZAo" node="3PIszklmntk" resolve="contentManager" />
            </node>
            <node concept="liA8E" id="4r$i1_a$2xJ" role="2OqNvi">
              <ref role="37wK5l" to="cjdg:~RunContentManagerImpl.getAllDescriptors()" resolve="getAllDescriptors" />
            </node>
          </node>
          <node concept="2GrKxI" id="4r$i1_a$2xY" role="2Gsz3X">
            <property role="TrG5h" value="descriptor" />
          </node>
        </node>
        <node concept="3cpWs6" id="3PIszklmnu$" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTt__" role="3cqZAk">
            <ref role="3cqZAo" node="3PIszklmntl" resolve="descriptors" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1cXeJmohuXl" role="jymVt" />
    <node concept="3clFb_" id="4tDMPuHd$TR" role="jymVt">
      <property role="TrG5h" value="getRunManager" />
      <node concept="3uibUv" id="3EiAnuiIIQ6" role="3clF45">
        <ref role="3uigEE" to="zjj4:~RunManagerImpl" resolve="RunManagerImpl" />
      </node>
      <node concept="3Tm6S6" id="4tDMPuHd$TS" role="1B3o_S" />
      <node concept="3clFbS" id="4tDMPuHd$TU" role="3clF47">
        <node concept="3cpWs6" id="4tDMPuHd$TV" role="3cqZAp">
          <node concept="10QFUN" id="4tDMPuHd$TW" role="3cqZAk">
            <node concept="3uibUv" id="3EiAnuiIIQ7" role="10QFUM">
              <ref role="3uigEE" to="zjj4:~RunManagerImpl" resolve="RunManagerImpl" />
            </node>
            <node concept="2YIFZM" id="4tDMPuHd$TX" role="10QFUP">
              <ref role="1Pybhc" to="3v5a:~RunManagerEx" resolve="RunManagerEx" />
              <ref role="37wK5l" to="3v5a:~RunManagerEx.getInstanceEx(com.intellij.openapi.project.Project)" resolve="getInstanceEx" />
              <node concept="37vLTw" id="2BHiRxeuogT" role="37wK5m">
                <ref role="3cqZAo" node="4tDMPuHd$PD" resolve="myProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4tfwdmbGMGU" role="jymVt" />
    <node concept="312cEu" id="7rvPfCBwHCu" role="jymVt">
      <property role="TrG5h" value="RunConfigurationsState" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm6S6" id="7rvPfCBwHCB" role="1B3o_S" />
      <node concept="3clFbW" id="7rvPfCBwHCw" role="jymVt">
        <node concept="3cqZAl" id="7rvPfCBwHCx" role="3clF45" />
        <node concept="3Tm1VV" id="7rvPfCBwHCy" role="1B3o_S" />
        <node concept="3clFbS" id="7rvPfCBwHCz" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="4tfwdmbFN9Y" role="jymVt" />
      <node concept="3clFb_" id="1xg2vZtrX1Z" role="jymVt">
        <property role="TrG5h" value="restoreState" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3clFbS" id="1xg2vZtrX20" role="3clF47">
          <node concept="3cpWs8" id="1xg2vZtrX29" role="3cqZAp">
            <node concept="3cpWsn" id="1xg2vZtrX28" role="3cpWs9">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="rm" />
              <node concept="3uibUv" id="1xg2vZtrX2a" role="1tU5fm">
                <ref role="3uigEE" to="3v5a:~RunManager" resolve="RunManager" />
              </node>
              <node concept="2YIFZM" id="73XTMBc0Lfc" role="33vP2m">
                <ref role="37wK5l" to="3v5a:~RunManager.getInstanceIfCreated(com.intellij.openapi.project.Project)" resolve="getInstanceIfCreated" />
                <ref role="1Pybhc" to="3v5a:~RunManagerEx" resolve="RunManagerEx" />
                <node concept="37vLTw" id="73XTMBc0Lfd" role="37wK5m">
                  <ref role="3cqZAo" node="4tDMPuHd$PD" resolve="myProject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="73XTMBc0FyC" role="3cqZAp">
            <node concept="3clFbS" id="73XTMBc0FyE" role="3clFbx">
              <node concept="3cpWs6" id="73XTMBc1haJ" role="3cqZAp" />
            </node>
            <node concept="3fqX7Q" id="73XTMBc1gek" role="3clFbw">
              <node concept="2ZW3vV" id="73XTMBc1gem" role="3fr31v">
                <node concept="3uibUv" id="73XTMBc1gen" role="2ZW6by">
                  <ref role="3uigEE" to="zjj4:~RunManagerImpl" resolve="RunManagerImpl" />
                </node>
                <node concept="37vLTw" id="73XTMBc1geo" role="2ZW6bz">
                  <ref role="3cqZAo" node="1xg2vZtrX28" resolve="rm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="73XTMBc1mhp" role="3cqZAp">
            <node concept="3cpWsn" id="73XTMBc1mhq" role="3cpWs9">
              <property role="TrG5h" value="runManager" />
              <node concept="3uibUv" id="73XTMBc1lsw" role="1tU5fm">
                <ref role="3uigEE" to="zjj4:~RunManagerImpl" resolve="RunManagerImpl" />
              </node>
              <node concept="10QFUN" id="73XTMBc1mhr" role="33vP2m">
                <node concept="3uibUv" id="73XTMBc1mhs" role="10QFUM">
                  <ref role="3uigEE" to="zjj4:~RunManagerImpl" resolve="RunManagerImpl" />
                </node>
                <node concept="37vLTw" id="73XTMBc1mht" role="10QFUP">
                  <ref role="3cqZAo" node="1xg2vZtrX28" resolve="rm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6jU6GOqHdWV" role="3cqZAp">
            <node concept="3cpWsn" id="6jU6GOqHdWW" role="3cpWs9">
              <property role="TrG5h" value="selectedConfigurationId" />
              <node concept="17QB3L" id="6jU6GOqHghR" role="1tU5fm" />
              <node concept="1rXfSq" id="PTeMHU5Coq" role="33vP2m">
                <ref role="37wK5l" node="PTeMHU5Com" resolve="getSelectedConfigurationId" />
                <node concept="37vLTw" id="73XTMBc1mhu" role="37wK5m">
                  <ref role="3cqZAo" node="73XTMBc1mhq" resolve="runManager" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1xg2vZtrX21" role="3cqZAp">
            <node concept="1rXfSq" id="1xg2vZtrX22" role="3clFbG">
              <ref role="37wK5l" node="4tfwdmbGnyj" resolve="clearAllRunConfigurations" />
            </node>
          </node>
          <node concept="3clFbF" id="1xg2vZtrX23" role="3cqZAp">
            <node concept="2OqwBi" id="1xg2vZtrX24" role="3clFbG">
              <node concept="37vLTw" id="6jU6GOqHdq$" role="2Oq$k0">
                <ref role="3cqZAo" node="73XTMBc1mhq" resolve="runManager" />
              </node>
              <node concept="liA8E" id="1xg2vZtrX26" role="2OqNvi">
                <ref role="37wK5l" to="zjj4:~RunManagerImpl.initializeConfigurationTypes(java.util.List)" resolve="initializeConfigurationTypes" />
                <node concept="2OqwBi" id="1xg2vZtrXFX" role="37wK5m">
                  <node concept="10M0yZ" id="1xg2vZtrXFW" role="2Oq$k0">
                    <ref role="1PxDUh" to="dj99:~ConfigurationType" resolve="ConfigurationType" />
                    <ref role="3cqZAo" to="dj99:~ConfigurationType.CONFIGURATION_TYPE_EP" resolve="CONFIGURATION_TYPE_EP" />
                  </node>
                  <node concept="liA8E" id="1xg2vZtrXFY" role="2OqNvi">
                    <ref role="37wK5l" to="9ti4:~ExtensionPointName.getExtensionList()" resolve="getExtensionList" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="79c7v7kJevm" role="3cqZAp">
            <node concept="2OqwBi" id="79c7v7kJeBu" role="3clFbG">
              <node concept="37vLTw" id="79c7v7kJevg" role="2Oq$k0">
                <ref role="3cqZAo" node="73XTMBc1mhq" resolve="runManager" />
              </node>
              <node concept="liA8E" id="79c7v7kJeSK" role="2OqNvi">
                <ref role="37wK5l" to="zjj4:~RunManagerImpl.reloadSchemes()" resolve="reloadSchemes" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6jU6GOqHixX" role="3cqZAp">
            <node concept="3clFbS" id="6jU6GOqHixZ" role="3clFbx">
              <node concept="3cpWs8" id="6jU6GOqHgSt" role="3cqZAp">
                <node concept="3cpWsn" id="6jU6GOqHgSu" role="3cpWs9">
                  <property role="TrG5h" value="toSelect" />
                  <node concept="3uibUv" id="6jU6GOqHgSn" role="1tU5fm">
                    <ref role="3uigEE" to="3v5a:~RunnerAndConfigurationSettings" resolve="RunnerAndConfigurationSettings" />
                  </node>
                  <node concept="2OqwBi" id="6jU6GOqHgSv" role="33vP2m">
                    <node concept="37vLTw" id="6jU6GOqHgSw" role="2Oq$k0">
                      <ref role="3cqZAo" node="73XTMBc1mhq" resolve="runManager" />
                    </node>
                    <node concept="liA8E" id="6jU6GOqHgSx" role="2OqNvi">
                      <ref role="37wK5l" to="zjj4:~RunManagerImpl.getConfigurationById(java.lang.String)" resolve="getConfigurationById" />
                      <node concept="37vLTw" id="6jU6GOqHgSy" role="37wK5m">
                        <ref role="3cqZAo" node="6jU6GOqHdWW" resolve="selectedConfigurationId" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6jU6GOqHdxL" role="3cqZAp">
                <node concept="2OqwBi" id="6jU6GOqHelA" role="3clFbG">
                  <node concept="37vLTw" id="6jU6GOqHedH" role="2Oq$k0">
                    <ref role="3cqZAo" node="1xg2vZtrX28" resolve="rm" />
                  </node>
                  <node concept="liA8E" id="6jU6GOqHeAI" role="2OqNvi">
                    <ref role="37wK5l" to="3v5a:~RunManager.setSelectedConfiguration(com.intellij.execution.RunnerAndConfigurationSettings)" resolve="setSelectedConfiguration" />
                    <node concept="37vLTw" id="6jU6GOqHhjH" role="37wK5m">
                      <ref role="3cqZAo" node="6jU6GOqHgSu" resolve="toSelect" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="6jU6GOqHiS6" role="3clFbw">
              <node concept="10Nm6u" id="6jU6GOqHiSZ" role="3uHU7w" />
              <node concept="37vLTw" id="6jU6GOqHiGg" role="3uHU7B">
                <ref role="3cqZAo" node="6jU6GOqHdWW" resolve="selectedConfigurationId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="1xg2vZtrX2Z" role="1B3o_S" />
        <node concept="3cqZAl" id="1xg2vZtrX30" role="3clF45" />
      </node>
      <node concept="2tJIrI" id="PTeMHU5CMz" role="jymVt" />
      <node concept="3clFb_" id="PTeMHU5Com" role="jymVt">
        <property role="TrG5h" value="getSelectedConfigurationId" />
        <node concept="3Tm6S6" id="PTeMHU5Con" role="1B3o_S" />
        <node concept="17QB3L" id="PTeMHU5Coo" role="3clF45" />
        <node concept="37vLTG" id="PTeMHU5Coh" role="3clF46">
          <property role="TrG5h" value="runManager" />
          <node concept="3uibUv" id="PTeMHU5Coi" role="1tU5fm">
            <ref role="3uigEE" to="zjj4:~RunManagerImpl" resolve="RunManagerImpl" />
          </node>
        </node>
        <node concept="3clFbS" id="PTeMHU5CnR" role="3clF47">
          <node concept="3cpWs8" id="PTeMHU5CnU" role="3cqZAp">
            <node concept="3cpWsn" id="PTeMHU5CnV" role="3cpWs9">
              <property role="TrG5h" value="selectedConfiguration" />
              <node concept="3uibUv" id="PTeMHU5CnW" role="1tU5fm">
                <ref role="3uigEE" to="3v5a:~RunnerAndConfigurationSettings" resolve="RunnerAndConfigurationSettings" />
              </node>
              <node concept="2OqwBi" id="PTeMHU5CnX" role="33vP2m">
                <node concept="37vLTw" id="PTeMHU5Coj" role="2Oq$k0">
                  <ref role="3cqZAo" node="PTeMHU5Coh" resolve="runManager" />
                </node>
                <node concept="liA8E" id="PTeMHU5CnZ" role="2OqNvi">
                  <ref role="37wK5l" to="zjj4:~RunManagerImpl.getSelectedConfiguration()" resolve="getSelectedConfiguration" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="PTeMHU5Co0" role="3cqZAp">
            <node concept="3cpWsn" id="PTeMHU5Co1" role="3cpWs9">
              <property role="TrG5h" value="selectedConfigurationId" />
              <node concept="17QB3L" id="PTeMHU5Co2" role="1tU5fm" />
              <node concept="10Nm6u" id="PTeMHU5Co3" role="33vP2m" />
            </node>
          </node>
          <node concept="3clFbJ" id="PTeMHU5Co4" role="3cqZAp">
            <node concept="3clFbS" id="PTeMHU5Co5" role="3clFbx">
              <node concept="3clFbF" id="PTeMHU5Co6" role="3cqZAp">
                <node concept="37vLTI" id="PTeMHU5Co7" role="3clFbG">
                  <node concept="2OqwBi" id="PTeMHU5Co8" role="37vLTx">
                    <node concept="37vLTw" id="PTeMHU5Co9" role="2Oq$k0">
                      <ref role="3cqZAo" node="PTeMHU5CnV" resolve="selectedConfiguration" />
                    </node>
                    <node concept="liA8E" id="PTeMHU5Coa" role="2OqNvi">
                      <ref role="37wK5l" to="3v5a:~RunnerAndConfigurationSettings.getUniqueID()" resolve="getUniqueID" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="PTeMHU5Cob" role="37vLTJ">
                    <ref role="3cqZAo" node="PTeMHU5Co1" resolve="selectedConfigurationId" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="PTeMHU5Coc" role="3clFbw">
              <node concept="10Nm6u" id="PTeMHU5Cod" role="3uHU7w" />
              <node concept="37vLTw" id="PTeMHU5Coe" role="3uHU7B">
                <ref role="3cqZAo" node="PTeMHU5CnV" resolve="selectedConfiguration" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="PTeMHU5Cof" role="3cqZAp">
            <node concept="37vLTw" id="PTeMHU5Cog" role="3cqZAk">
              <ref role="3cqZAo" node="PTeMHU5Co1" resolve="selectedConfigurationId" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="PTeMHU5D4C" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="3UR2Jj" id="1mC8n7NOa9R" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsBKm" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBKn" role="1PaTwD">
          <property role="3oM_SC" value="This" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKo" role="1PaTwD">
          <property role="3oM_SC" value="piece" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKp" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKq" role="1PaTwD">
          <property role="3oM_SC" value="code" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKr" role="1PaTwD">
          <property role="3oM_SC" value="allows" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKs" role="1PaTwD">
          <property role="3oM_SC" value="us" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKt" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKu" role="1PaTwD">
          <property role="3oM_SC" value="create" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKv" role="1PaTwD">
          <property role="3oM_SC" value="reloadable" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKw" role="1PaTwD">
          <property role="3oM_SC" value="(!)" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKx" role="1PaTwD">
          <property role="3oM_SC" value="run" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKy" role="1PaTwD">
          <property role="3oM_SC" value="configurations" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKz" role="1PaTwD">
          <property role="3oM_SC" value="within" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBK$" role="1PaTwD">
          <property role="3oM_SC" value="MPS." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBK_" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBKA" role="1PaTwD">
          <property role="3oM_SC" value="It" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKB" role="1PaTwD">
          <property role="3oM_SC" value="listens" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKC" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKD" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKE" role="1PaTwD">
          <property role="3oM_SC" value="project" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKF" role="1PaTwD">
          <property role="3oM_SC" value="plugins" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKG" role="1PaTwD">
          <property role="3oM_SC" value="manager" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKH" role="1PaTwD">
          <property role="3oM_SC" value="because" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKI" role="1PaTwD">
          <property role="3oM_SC" value="we" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKJ" role="1PaTwD">
          <property role="3oM_SC" value="use" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKK" role="1PaTwD">
          <property role="3oM_SC" value="custom" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKL" role="1PaTwD">
          <property role="3oM_SC" value="project" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKM" role="1PaTwD">
          <property role="3oM_SC" value="plugins" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKN" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKO" role="1PaTwD">
          <property role="3oM_SC" value="register" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKP" role="1PaTwD">
          <property role="3oM_SC" value="custom" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKQ" role="1PaTwD">
          <property role="3oM_SC" value="'before'" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKR" role="1PaTwD">
          <property role="3oM_SC" value="tasks" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKS" role="1PaTwD">
          <property role="3oM_SC" value="(like" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKT" role="1PaTwD">
          <property role="3oM_SC" value="'make'" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKU" role="1PaTwD">
          <property role="3oM_SC" value="etc.)" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBKV" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBKW" role="1PaTwD">
          <property role="3oM_SC" value="It" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKX" role="1PaTwD">
          <property role="3oM_SC" value="saves" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKY" role="1PaTwD">
          <property role="3oM_SC" value="all" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBKZ" role="1PaTwD">
          <property role="3oM_SC" value="run" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBL0" role="1PaTwD">
          <property role="3oM_SC" value="configurations" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBL1" role="1PaTwD">
          <property role="3oM_SC" value="at" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBL2" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBL3" role="1PaTwD">
          <property role="3oM_SC" value="plugin" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBL4" role="1PaTwD">
          <property role="3oM_SC" value="unload" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBL5" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBL6" role="1PaTwD">
          <property role="3oM_SC" value="then" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBL7" role="1PaTwD">
          <property role="3oM_SC" value="restores" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBL8" role="1PaTwD">
          <property role="3oM_SC" value="them" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBL9" role="1PaTwD">
          <property role="3oM_SC" value="at" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLa" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLb" role="1PaTwD">
          <property role="3oM_SC" value="plugin" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLc" role="1PaTwD">
          <property role="3oM_SC" value="load" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLd" role="1PaTwD">
          <property role="3oM_SC" value="event" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLe" role="1PaTwD">
          <property role="3oM_SC" value="" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBLf" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBLg" role="1PaTwD">
          <property role="3oM_SC" value="Currently" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLh" role="1PaTwD">
          <property role="3oM_SC" value="before" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLi" role="1PaTwD">
          <property role="3oM_SC" value="tasks" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLj" role="1PaTwD">
          <property role="3oM_SC" value="are" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLk" role="1PaTwD">
          <property role="3oM_SC" value="saved" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLl" role="1PaTwD">
          <property role="3oM_SC" value="but" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLm" role="1PaTwD">
          <property role="3oM_SC" value="not" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLn" role="1PaTwD">
          <property role="3oM_SC" value="loaded" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLo" role="1PaTwD">
          <property role="3oM_SC" value="(they" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLp" role="1PaTwD">
          <property role="3oM_SC" value="are" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLq" role="1PaTwD">
          <property role="3oM_SC" value="loaded" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLr" role="1PaTwD">
          <property role="3oM_SC" value="from" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLs" role="1PaTwD">
          <property role="3oM_SC" value="template" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLt" role="1PaTwD">
          <property role="3oM_SC" value="configurations)" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLu" role="1PaTwD">
          <property role="3oM_SC" value="due" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLv" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLw" role="1PaTwD">
          <property role="3oM_SC" value="change" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLx" role="1PaTwD">
          <property role="3oM_SC" value="in" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLy" role="1PaTwD">
          <property role="3oM_SC" value="IDEA" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLz" role="1PaTwD">
          <property role="3oM_SC" value="api" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBL$" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBL_" role="1PaTwD">
          <property role="3oM_SC" value="FIX" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLA" role="1PaTwD">
          <property role="3oM_SC" value="need" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLB" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLC" role="1PaTwD">
          <property role="3oM_SC" value="try" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLD" role="1PaTwD">
          <property role="3oM_SC" value="creating" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLE" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLF" role="1PaTwD">
          <property role="3oM_SC" value="special" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLG" role="1PaTwD">
          <property role="3oM_SC" value="proxy" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLH" role="1PaTwD">
          <property role="3oM_SC" value="class" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLI" role="1PaTwD">
          <property role="3oM_SC" value="which" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLJ" role="1PaTwD">
          <property role="3oM_SC" value="wraps" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLK" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLL" role="1PaTwD">
          <property role="3oM_SC" value="MPS-owned" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLM" role="1PaTwD">
          <property role="3oM_SC" value="classes" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLN" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLO" role="1PaTwD">
          <property role="3oM_SC" value="turns" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLP" role="1PaTwD">
          <property role="3oM_SC" value="them" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLQ" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLR" role="1PaTwD">
          <property role="3oM_SC" value="IDEA" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLS" role="1PaTwD">
          <property role="3oM_SC" value="while" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLT" role="1PaTwD">
          <property role="3oM_SC" value="delegating" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLU" role="1PaTwD">
          <property role="3oM_SC" value="all" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLV" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLW" role="1PaTwD">
          <property role="3oM_SC" value="method" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBLX" role="1PaTwD">
          <property role="3oM_SC" value="invocations" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBLY" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBLZ" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBM0" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBM1" role="1PaTwD">
          <property role="3oM_SC" value="right" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBM2" role="1PaTwD">
          <property role="3oM_SC" value="class." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBM3" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBM4" role="1PaTwD">
          <property role="3oM_SC" value="Another" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBM5" role="1PaTwD">
          <property role="3oM_SC" value="possibility" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBM6" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBM7" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBM8" role="1PaTwD">
          <property role="3oM_SC" value="create" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBM9" role="1PaTwD">
          <property role="3oM_SC" value="some" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMa" role="1PaTwD">
          <property role="3oM_SC" value="kind" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMb" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMc" role="1PaTwD">
          <property role="3oM_SC" value="extension" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMd" role="1PaTwD">
          <property role="3oM_SC" value="point" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMe" role="1PaTwD">
          <property role="3oM_SC" value="in" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMf" role="1PaTwD">
          <property role="3oM_SC" value="IDEA" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMg" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMh" role="1PaTwD">
          <property role="3oM_SC" value="make" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMi" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMj" role="1PaTwD">
          <property role="3oM_SC" value="configurations" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMk" role="1PaTwD">
          <property role="3oM_SC" value="reloadable." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBMl" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBMm" role="1PaTwD">
          <property role="3oM_SC" value="However" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMn" role="1PaTwD">
          <property role="3oM_SC" value="I" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMo" role="1PaTwD">
          <property role="3oM_SC" value="see" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMp" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMq" role="1PaTwD">
          <property role="3oM_SC" value="first" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMr" role="1PaTwD">
          <property role="3oM_SC" value="scenario" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMs" role="1PaTwD">
          <property role="3oM_SC" value="as" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMt" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMu" role="1PaTwD">
          <property role="3oM_SC" value="much" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMv" role="1PaTwD">
          <property role="3oM_SC" value="better" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMw" role="1PaTwD">
          <property role="3oM_SC" value="choice" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMx" role="1PaTwD">
          <property role="3oM_SC" value="(if" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMy" role="1PaTwD">
          <property role="3oM_SC" value="it" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMz" role="1PaTwD">
          <property role="3oM_SC" value="works)" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBM$" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBM_" role="1PaTwD">
          <property role="3oM_SC" value="&lt;p&gt;" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsBMA" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsBMB" role="1PaTwD">
          <property role="3oM_SC" value="Note," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMC" role="1PaTwD">
          <property role="3oM_SC" value="this" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMD" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBME" role="1PaTwD">
          <property role="3oM_SC" value="not" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMF" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMG" role="1PaTwD">
          <property role="3oM_SC" value="service/component," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMH" role="1PaTwD">
          <property role="3oM_SC" value="rather" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMI" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMJ" role="1PaTwD">
          <property role="3oM_SC" value="project" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMK" role="1PaTwD">
          <property role="3oM_SC" value="listener" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBML" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMM" role="1PaTwD">
          <property role="3oM_SC" value="an" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMN" role="1PaTwD">
          <property role="3oM_SC" value="application-wide" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsBMO" role="1PaTwD">
          <property role="3oM_SC" value="topic" />
        </node>
      </node>
    </node>
  </node>
</model>

