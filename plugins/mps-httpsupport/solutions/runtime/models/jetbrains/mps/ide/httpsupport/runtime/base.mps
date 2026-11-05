<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:11b7cdb2-cc58-456e-bb9a-ce45b78edd2f(jetbrains.mps.ide.httpsupport.runtime.base)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
  </languages>
  <imports>
    <import index="4h87" ref="r:05ff02e5-9836-4ae9-a454-eab43fa58c8f(jetbrains.mps.ide.httpsupport.manager.plugin)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="3a50" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide(MPS.Platform/)" />
    <import index="9xw8" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:io.netty.handler.codec.http(MPS.IDEA/)" />
    <import index="bipv" ref="r:4f311e3a-83a9-4138-8c56-4228082416a9(jetbrains.mps.ide.httpsupport.manager)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690331492" name="jetbrains.mps.baseLanguage.javadoc.structure.DeprecatedBlockDocTag" flags="ng" index="TZ5HI" />
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
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
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
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
    </language>
  </registry>
  <node concept="312cEu" id="21vgRr5_Ua2">
    <property role="TrG5h" value="HttpRequestHandlerBase" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="21vgRr5_Ubl" role="jymVt" />
    <node concept="312cEg" id="21vgRr5_VfW" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="request" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="21vgRr5_Uik" role="1B3o_S" />
      <node concept="3uibUv" id="21vgRr5_VfO" role="1tU5fm">
        <ref role="3uigEE" to="4h87:6GArDv5HYVM" resolve="HttpRequest" />
      </node>
    </node>
    <node concept="3Tm1VV" id="21vgRr5_Ua3" role="1B3o_S" />
    <node concept="3uibUv" id="21vgRr5_UbT" role="EKbjA">
      <ref role="3uigEE" to="4h87:7IkZ1uxyiq5" resolve="IHttpRequestHandler" />
    </node>
    <node concept="2tJIrI" id="21vgRr5_VN9" role="jymVt" />
    <node concept="3clFbW" id="3D_I_vuD$tS" role="jymVt">
      <node concept="37vLTG" id="7Zu713oVSRi" role="3clF46">
        <property role="TrG5h" value="request" />
        <node concept="3uibUv" id="7Zu713oVSUk" role="1tU5fm">
          <ref role="3uigEE" to="4h87:6GArDv5HYVM" resolve="HttpRequest" />
        </node>
      </node>
      <node concept="3cqZAl" id="3D_I_vuD$tT" role="3clF45" />
      <node concept="3Tm1VV" id="3D_I_vuD$tU" role="1B3o_S" />
      <node concept="3clFbS" id="3D_I_vuD$tW" role="3clF47">
        <node concept="3clFbF" id="3D_I_vuD$u0" role="3cqZAp">
          <node concept="37vLTI" id="3D_I_vuD$u2" role="3clFbG">
            <node concept="37vLTw" id="3D_I_vuD_T5" role="37vLTx">
              <ref role="3cqZAo" node="7Zu713oVSRi" resolve="request" />
            </node>
            <node concept="2OqwBi" id="3D_I_vuEMrR" role="37vLTJ">
              <node concept="Xjq3P" id="3D_I_vuEMp2" role="2Oq$k0" />
              <node concept="2OwXpG" id="3D_I_vuEMyC" role="2OqNvi">
                <ref role="2Oxat5" node="21vgRr5_VfW" resolve="request" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3D_I_vuDFR6" role="jymVt" />
    <node concept="3clFb_" id="5ftzK$drgX_" role="jymVt">
      <property role="TrG5h" value="getQueryPrefix" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5ftzK$drgXC" role="3clF47">
        <node concept="3clFbF" id="7Zu713oTYAP" role="3cqZAp">
          <node concept="10Nm6u" id="7Zu713oTYAO" role="3clFbG" />
        </node>
      </node>
      <node concept="3Tmbuc" id="5ftzK$dreWC" role="1B3o_S" />
      <node concept="_YKpA" id="5fiBL1fFUV4" role="3clF45">
        <node concept="3uibUv" id="5fiBL1fGR5h" role="_ZDj9">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="2AHcQZ" id="7Zu713oTYKS" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
        <node concept="2B6LJw" id="7Zu713oVzJJ" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~Deprecated.forRemoval()" resolve="forRemoval" />
          <node concept="3clFbT" id="7Zu713oVzLl" role="2B70Vg">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="7Zu713oVzYQ" role="lGtFl">
        <node concept="TZ5HI" id="7Zu713oVzYT" role="3nqlJM">
          <node concept="1PaTwC" id="1E1X3WHsC0v" role="1Vez_I">
            <node concept="3oM_SD" id="1E1X3WHsC0w" role="1PaTwD">
              <property role="3oM_SC" value="handled" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsC0x" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsC0y" role="1PaTwD">
              <property role="3oM_SC" value="handler" />
            </node>
            <node concept="3oM_SD" id="1E1X3WHsC0z" role="1PaTwD">
              <property role="3oM_SC" value="factory" />
            </node>
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsC0t" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsC0u" role="1PaTwD">
            <property role="3oM_SC" value="" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Zu713oSgUd" role="jymVt" />
  </node>
  <node concept="312cEu" id="3OrGkZCn9ZQ">
    <property role="TrG5h" value="HttpSupportUtil" />
    <node concept="2tJIrI" id="3OrGkZCna0s" role="jymVt" />
    <node concept="2YIFZL" id="3OrGkZCna1q" role="jymVt">
      <property role="TrG5h" value="getProjectByName" />
      <node concept="3uibUv" id="3OrGkZCnaq1" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3Tm1VV" id="3OrGkZCna1t" role="1B3o_S" />
      <node concept="3clFbS" id="3OrGkZCna1u" role="3clF47">
        <node concept="3cpWs8" id="76_s2Q_cZ2g" role="3cqZAp">
          <node concept="3cpWsn" id="76_s2Q_cZ2h" role="3cpWs9">
            <property role="TrG5h" value="projectManager" />
            <node concept="3uibUv" id="76_s2Q_cYX2" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~ProjectManager" resolve="ProjectManager" />
            </node>
            <node concept="2OqwBi" id="76_s2Q_cZ2i" role="33vP2m">
              <node concept="2OqwBi" id="76_s2Q_cZ2j" role="2Oq$k0">
                <node concept="2YIFZM" id="76_s2Q_cZ2k" role="2Oq$k0">
                  <ref role="37wK5l" to="3a50:~MPSCoreComponents.getInstance()" resolve="getInstance" />
                  <ref role="1Pybhc" to="3a50:~MPSCoreComponents" resolve="MPSCoreComponents" />
                </node>
                <node concept="liA8E" id="76_s2Q_cZ2l" role="2OqNvi">
                  <ref role="37wK5l" to="3a50:~MPSCoreComponents.getPlatform()" resolve="getPlatform" />
                </node>
              </node>
              <node concept="liA8E" id="76_s2Q_cZ2m" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="76_s2Q_cZ2n" role="37wK5m">
                  <ref role="3VsUkX" to="z1c3:~ProjectManager" resolve="ProjectManager" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="76_s2Q_cZJM" role="3cqZAp">
          <node concept="3clFbS" id="76_s2Q_cZJO" role="3clFbx">
            <node concept="RRSsy" id="76_s2Q_d0QZ" role="3cqZAp">
              <property role="RRSoG" value="gZ5fh_4/error" />
              <node concept="Xl_RD" id="76_s2Q_d0R1" role="RRSoy">
                <property role="Xl_RC" value="component not found: ProjectManager" />
              </node>
              <node concept="2ShNRf" id="76_s2Q_d30t" role="RRSow">
                <node concept="1pGfFk" id="76_s2Q_d8gB" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;()" resolve="RuntimeException" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="76_s2Q_d8IM" role="3cqZAp">
              <node concept="10Nm6u" id="76_s2Q_d8LJ" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="76_s2Q_d0mq" role="3clFbw">
            <node concept="10Nm6u" id="76_s2Q_d0yN" role="3uHU7w" />
            <node concept="37vLTw" id="76_s2Q_d03Z" role="3uHU7B">
              <ref role="3cqZAo" node="76_s2Q_cZ2h" resolve="projectManager" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2lt1tUBvYwR" role="3cqZAp">
          <node concept="3cpWsn" id="2lt1tUBvYwU" role="3cpWs9">
            <property role="TrG5h" value="openedProjects" />
            <node concept="_YKpA" id="2lt1tUBvX_i" role="1tU5fm">
              <node concept="3uibUv" id="2lt1tUBvYnU" role="_ZDj9">
                <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
              </node>
            </node>
            <node concept="2OqwBi" id="2lt1tUBvYwV" role="33vP2m">
              <node concept="liA8E" id="2lt1tUBvVdB" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~ProjectManager.getOpenedProjects()" resolve="getOpenedProjects" />
              </node>
              <node concept="37vLTw" id="76_s2Q_cZ2o" role="2Oq$k0">
                <ref role="3cqZAo" node="76_s2Q_cZ2h" resolve="projectManager" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2lt1tUBvLoe" role="3cqZAp">
          <node concept="3clFbS" id="2lt1tUBvLog" role="3clFbx">
            <node concept="3cpWs6" id="2lt1tUBvjmK" role="3cqZAp">
              <node concept="10Nm6u" id="2lt1tUBvBIR" role="3cqZAk" />
            </node>
          </node>
          <node concept="2OqwBi" id="2lt1tUBvMch" role="3clFbw">
            <node concept="37vLTw" id="2lt1tUBvYO_" role="2Oq$k0">
              <ref role="3cqZAo" node="2lt1tUBvYwU" resolve="openedProjects" />
            </node>
            <node concept="1v1jN8" id="2lt1tUBvMEC" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="40BYgt0aOWr" role="3cqZAp" />
        <node concept="3cpWs8" id="7CAL8BWhz_" role="3cqZAp">
          <node concept="3cpWsn" id="7CAL8BWhzA" role="3cpWs9">
            <property role="TrG5h" value="project" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="7CAL8BWhzB" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
            <node concept="2OqwBi" id="7CAL8BWhzC" role="33vP2m">
              <node concept="37vLTw" id="2lt1tUBvYRY" role="2Oq$k0">
                <ref role="3cqZAo" node="2lt1tUBvYwU" resolve="openedProjects" />
              </node>
              <node concept="1z4cxt" id="7CAL8BWhzI" role="2OqNvi">
                <node concept="1bVj0M" id="7CAL8BWhzJ" role="23t8la">
                  <node concept="3clFbS" id="7CAL8BWhzK" role="1bW5cS">
                    <node concept="3clFbF" id="7CAL8BWhzL" role="3cqZAp">
                      <node concept="2OqwBi" id="7CAL8BWhzM" role="3clFbG">
                        <node concept="2OqwBi" id="7CAL8BWhzN" role="2Oq$k0">
                          <node concept="37vLTw" id="7CAL8BWhzO" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0Xpa" resolve="it" />
                          </node>
                          <node concept="liA8E" id="7CAL8BWhzP" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~Project.getName()" resolve="getName" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7CAL8BWhzQ" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                          <node concept="37vLTw" id="3OrGkZCoA_r" role="37wK5m">
                            <ref role="3cqZAo" node="3OrGkZCnarH" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0Xpa" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0Xpb" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7CAL8BWhzW" role="3cqZAp">
          <node concept="3clFbS" id="7CAL8BWhzX" role="3clFbx">
            <node concept="3clFbF" id="602uc2JOxod" role="3cqZAp">
              <node concept="37vLTI" id="602uc2JOxt7" role="3clFbG">
                <node concept="2OqwBi" id="602uc2JOxKq" role="37vLTx">
                  <node concept="37vLTw" id="2lt1tUBvYXc" role="2Oq$k0">
                    <ref role="3cqZAo" node="2lt1tUBvYwU" resolve="openedProjects" />
                  </node>
                  <node concept="1uHKPH" id="602uc2JOyBo" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="602uc2JOxoc" role="37vLTJ">
                  <ref role="3cqZAo" node="7CAL8BWhzA" resolve="project" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="388YWwvSVPS" role="3cqZAp">
              <node concept="3clFbS" id="388YWwvSVPU" role="3clFbx">
                <node concept="RRSsy" id="3jYQuSB36UC" role="3cqZAp">
                  <property role="RRSoG" value="gZ5fksE/warn" />
                  <node concept="3cpWs3" id="602uc2JODyb" role="RRSoy">
                    <node concept="Xl_RD" id="602uc2JODyt" role="3uHU7w">
                      <property role="Xl_RC" value="' instead." />
                    </node>
                    <node concept="3cpWs3" id="602uc2JOC13" role="3uHU7B">
                      <node concept="3cpWs3" id="7CAL8BWt7f" role="3uHU7B">
                        <node concept="3cpWs3" id="7CAL8BWt7g" role="3uHU7B">
                          <node concept="Xl_RD" id="7CAL8BWt7h" role="3uHU7B">
                            <property role="Xl_RC" value="Can't find project '" />
                          </node>
                          <node concept="37vLTw" id="3OrGkZCoAMH" role="3uHU7w">
                            <ref role="3cqZAo" node="3OrGkZCnarH" resolve="name" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7CAL8BWt7j" role="3uHU7w">
                          <property role="Xl_RC" value="'. Using '" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="40BYgt0drvr" role="3uHU7w">
                        <node concept="37vLTw" id="602uc2JOCi2" role="2Oq$k0">
                          <ref role="3cqZAo" node="7CAL8BWhzA" resolve="project" />
                        </node>
                        <node concept="liA8E" id="40BYgt0drCI" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getName()" resolve="getName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="388YWwvSXMy" role="3clFbw">
                <node concept="10Nm6u" id="388YWwvSXNB" role="3uHU7w" />
                <node concept="37vLTw" id="388YWwvSVVS" role="3uHU7B">
                  <ref role="3cqZAo" node="7CAL8BWhzA" resolve="project" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7CAL8BWh$4" role="3clFbw">
            <node concept="10Nm6u" id="7CAL8BWh$5" role="3uHU7w" />
            <node concept="37vLTw" id="7CAL8BWh$6" role="3uHU7B">
              <ref role="3cqZAo" node="7CAL8BWhzA" resolve="project" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4yQMaPlIkes" role="3cqZAp">
          <node concept="37vLTw" id="4yQMaPlIkW3" role="3cqZAk">
            <ref role="3cqZAo" node="7CAL8BWhzA" resolve="project" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3OrGkZCnarH" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="3OrGkZCnarG" role="1tU5fm" />
        <node concept="2AHcQZ" id="2QtnklMNu3n" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1lOPnOXMciq" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="388YWwvSVwn" role="jymVt" />
    <node concept="2YIFZL" id="388YWwvSPVf" role="jymVt">
      <property role="TrG5h" value="getSomeProject" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="388YWwvSPVi" role="3clF47">
        <node concept="3cpWs8" id="76_s2Q_d9yd" role="3cqZAp">
          <node concept="3cpWsn" id="76_s2Q_d9ye" role="3cpWs9">
            <property role="TrG5h" value="projectManager" />
            <node concept="3uibUv" id="76_s2Q_d9yf" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~ProjectManager" resolve="ProjectManager" />
            </node>
            <node concept="2OqwBi" id="76_s2Q_d9yg" role="33vP2m">
              <node concept="2OqwBi" id="76_s2Q_d9yh" role="2Oq$k0">
                <node concept="2YIFZM" id="76_s2Q_d9yi" role="2Oq$k0">
                  <ref role="37wK5l" to="3a50:~MPSCoreComponents.getInstance()" resolve="getInstance" />
                  <ref role="1Pybhc" to="3a50:~MPSCoreComponents" resolve="MPSCoreComponents" />
                </node>
                <node concept="liA8E" id="76_s2Q_d9yj" role="2OqNvi">
                  <ref role="37wK5l" to="3a50:~MPSCoreComponents.getPlatform()" resolve="getPlatform" />
                </node>
              </node>
              <node concept="liA8E" id="76_s2Q_d9yk" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="76_s2Q_d9yl" role="37wK5m">
                  <ref role="3VsUkX" to="z1c3:~ProjectManager" resolve="ProjectManager" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="76_s2Q_d9ym" role="3cqZAp">
          <node concept="3clFbS" id="76_s2Q_d9yn" role="3clFbx">
            <node concept="RRSsy" id="76_s2Q_d9yo" role="3cqZAp">
              <property role="RRSoG" value="gZ5fh_4/error" />
              <node concept="Xl_RD" id="76_s2Q_d9yp" role="RRSoy">
                <property role="Xl_RC" value="component not found: ProjectManager" />
              </node>
              <node concept="2ShNRf" id="76_s2Q_d9yq" role="RRSow">
                <node concept="1pGfFk" id="76_s2Q_d9yr" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;()" resolve="RuntimeException" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="76_s2Q_d9ys" role="3cqZAp">
              <node concept="10Nm6u" id="76_s2Q_d9yt" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="76_s2Q_d9yu" role="3clFbw">
            <node concept="10Nm6u" id="76_s2Q_d9yv" role="3uHU7w" />
            <node concept="37vLTw" id="76_s2Q_d9yw" role="3uHU7B">
              <ref role="3cqZAo" node="76_s2Q_d9ye" resolve="projectManager" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="388YWwvSQAZ" role="3cqZAp">
          <node concept="3cpWsn" id="388YWwvSQB2" role="3cpWs9">
            <property role="TrG5h" value="openedProjects" />
            <node concept="_YKpA" id="388YWwvSQAV" role="1tU5fm">
              <node concept="3uibUv" id="388YWwvSQBz" role="_ZDj9">
                <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
              </node>
            </node>
            <node concept="2OqwBi" id="388YWwvSQ51" role="33vP2m">
              <node concept="37vLTw" id="76_s2Q_d9mA" role="2Oq$k0">
                <ref role="3cqZAo" node="76_s2Q_d9ye" resolve="projectManager" />
              </node>
              <node concept="liA8E" id="388YWwvSQ81" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~ProjectManager.getOpenedProjects()" resolve="getOpenedProjects" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="388YWwvSQ0I" role="3cqZAp">
          <node concept="2OqwBi" id="388YWwvSRfu" role="3cqZAk">
            <node concept="37vLTw" id="388YWwvSQNe" role="2Oq$k0">
              <ref role="3cqZAo" node="388YWwvSQB2" resolve="openedProjects" />
            </node>
            <node concept="1uHKPH" id="388YWwvSRzl" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="388YWwvSPPY" role="1B3o_S" />
      <node concept="3uibUv" id="388YWwvSPUZ" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="2AHcQZ" id="388YWwvSYnf" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="40BYgt03WsI" role="jymVt" />
    <node concept="2YIFZL" id="40BYgt03Wy3" role="jymVt">
      <property role="TrG5h" value="parseInt" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="40BYgt03Wy6" role="3clF47">
        <node concept="3J1_TO" id="40BYgt03W_A" role="3cqZAp">
          <node concept="3clFbS" id="40BYgt03W_B" role="1zxBo7">
            <node concept="3cpWs6" id="40BYgt03WP0" role="3cqZAp">
              <node concept="2YIFZM" id="40BYgt03WSE" role="3cqZAk">
                <ref role="37wK5l" to="wyt6:~Integer.valueOf(java.lang.String)" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                <node concept="37vLTw" id="40BYgt03WUU" role="37wK5m">
                  <ref role="3cqZAo" node="40BYgt03W$r" resolve="str" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="40BYgt03W_C" role="1zxBo5">
            <node concept="XOnhg" id="40BYgt03W_D" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="xvs04dHQmM" role="1tU5fm">
                <node concept="3uibUv" id="40BYgt03WA4" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~NumberFormatException" resolve="NumberFormatException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="40BYgt03W_F" role="1zc67A">
              <node concept="3cpWs6" id="40BYgt03WN$" role="3cqZAp">
                <node concept="10Nm6u" id="40BYgt03WOe" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="40BYgt03Ww5" role="1B3o_S" />
      <node concept="3uibUv" id="40BYgt03WxU" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
      </node>
      <node concept="37vLTG" id="40BYgt03W$r" role="3clF46">
        <property role="TrG5h" value="str" />
        <node concept="17QB3L" id="40BYgt03W$q" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="40BYgt03XlQ" role="jymVt" />
    <node concept="2YIFZL" id="40BYgt03X4h" role="jymVt">
      <property role="TrG5h" value="parseLong" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="40BYgt03X4k" role="3clF47">
        <node concept="3J1_TO" id="40BYgt03X8i" role="3cqZAp">
          <node concept="3clFbS" id="40BYgt03X8j" role="1zxBo7">
            <node concept="3cpWs6" id="40BYgt03X8k" role="3cqZAp">
              <node concept="2YIFZM" id="40BYgt03Xj5" role="3cqZAk">
                <ref role="37wK5l" to="wyt6:~Long.valueOf(java.lang.String)" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
                <node concept="37vLTw" id="40BYgt03Xj6" role="37wK5m">
                  <ref role="3cqZAo" node="40BYgt03X7M" resolve="str" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="40BYgt03X8n" role="1zxBo5">
            <node concept="XOnhg" id="40BYgt03X8o" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="xvs04dHQmO" role="1tU5fm">
                <node concept="3uibUv" id="40BYgt03X8p" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~NumberFormatException" resolve="NumberFormatException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="40BYgt03X8q" role="1zc67A">
              <node concept="3cpWs6" id="40BYgt03X8r" role="3cqZAp">
                <node concept="10Nm6u" id="40BYgt03X8s" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="40BYgt03X0G" role="1B3o_S" />
      <node concept="3uibUv" id="40BYgt03X47" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Long" resolve="Long" />
      </node>
      <node concept="37vLTG" id="40BYgt03X7M" role="3clF46">
        <property role="TrG5h" value="str" />
        <node concept="17QB3L" id="40BYgt03X7L" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="40BYgt03Xps" role="jymVt" />
    <node concept="2YIFZL" id="40BYgt03Yvj" role="jymVt">
      <property role="TrG5h" value="parseFloat" />
      <node concept="3uibUv" id="40BYgt03Yzx" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Float" resolve="Float" />
      </node>
      <node concept="3Tm1VV" id="40BYgt03Yvm" role="1B3o_S" />
      <node concept="3clFbS" id="40BYgt03Yvn" role="3clF47">
        <node concept="3J1_TO" id="40BYgt03Y_S" role="3cqZAp">
          <node concept="3clFbS" id="40BYgt03Y_T" role="1zxBo7">
            <node concept="3cpWs6" id="40BYgt03Y_U" role="3cqZAp">
              <node concept="2YIFZM" id="40BYgt03Y_V" role="3cqZAk">
                <ref role="1Pybhc" to="wyt6:~Float" resolve="Float" />
                <ref role="37wK5l" to="wyt6:~Float.valueOf(java.lang.String)" resolve="valueOf" />
                <node concept="37vLTw" id="40BYgt03Y_W" role="37wK5m">
                  <ref role="3cqZAo" node="40BYgt03Y_c" resolve="str" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="40BYgt03Y_X" role="1zxBo5">
            <node concept="XOnhg" id="40BYgt03Y_Y" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="xvs04dHQmQ" role="1tU5fm">
                <node concept="3uibUv" id="40BYgt03Y_Z" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~NumberFormatException" resolve="NumberFormatException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="40BYgt03YA0" role="1zc67A">
              <node concept="3cpWs6" id="40BYgt03YA1" role="3cqZAp">
                <node concept="10Nm6u" id="40BYgt03YA2" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="40BYgt03Y_c" role="3clF46">
        <property role="TrG5h" value="str" />
        <node concept="17QB3L" id="40BYgt03Y_b" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="40BYgt03Yno" role="jymVt" />
    <node concept="2YIFZL" id="40BYgt03XwF" role="jymVt">
      <property role="TrG5h" value="parseDouble" />
      <node concept="3uibUv" id="40BYgt03X$z" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Double" resolve="Double" />
      </node>
      <node concept="3Tm1VV" id="40BYgt03XwI" role="1B3o_S" />
      <node concept="3clFbS" id="40BYgt03XwJ" role="3clF47">
        <node concept="3J1_TO" id="40BYgt03XF7" role="3cqZAp">
          <node concept="3clFbS" id="40BYgt03XF8" role="1zxBo7">
            <node concept="3cpWs6" id="40BYgt03XF9" role="3cqZAp">
              <node concept="2YIFZM" id="40BYgt03XQg" role="3cqZAk">
                <ref role="37wK5l" to="wyt6:~Double.valueOf(java.lang.String)" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~Double" resolve="Double" />
                <node concept="37vLTw" id="40BYgt03XQh" role="37wK5m">
                  <ref role="3cqZAo" node="40BYgt03XEA" resolve="str" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="40BYgt03XFc" role="1zxBo5">
            <node concept="XOnhg" id="40BYgt03XFd" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="xvs04dHQmS" role="1tU5fm">
                <node concept="3uibUv" id="40BYgt03XFe" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~NumberFormatException" resolve="NumberFormatException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="40BYgt03XFf" role="1zc67A">
              <node concept="3cpWs6" id="40BYgt03XFg" role="3cqZAp">
                <node concept="10Nm6u" id="40BYgt03XFh" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="40BYgt03XEA" role="3clF46">
        <property role="TrG5h" value="str" />
        <node concept="17QB3L" id="40BYgt03XE_" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1_yOWEXenCM" role="jymVt" />
    <node concept="2YIFZL" id="1_yOWEXenNM" role="jymVt">
      <property role="TrG5h" value="getURL" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="1_yOWEXenNP" role="3clF47">
        <node concept="3clFbF" id="1_yOWEXeru9" role="3cqZAp">
          <node concept="1rXfSq" id="1_yOWEXeru8" role="3clFbG">
            <ref role="37wK5l" node="1_yOWEXeo7V" resolve="getURL" />
            <node concept="2OqwBi" id="1_yOWEXeryk" role="37wK5m">
              <node concept="37vLTw" id="1_yOWEXervJ" role="2Oq$k0">
                <ref role="3cqZAo" node="1_yOWEXenSk" resolve="node" />
              </node>
              <node concept="liA8E" id="1_yOWEXerFU" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1_yOWEXenJ6" role="1B3o_S" />
      <node concept="3uibUv" id="1_yOWEXenNq" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="1_yOWEXenSk" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="1_yOWEXenSj" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="1_yOWEXeo7V" role="jymVt">
      <property role="TrG5h" value="getURL" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="1_yOWEXeo7W" role="3clF47">
        <node concept="3cpWs8" id="40BYgt09xeA" role="3cqZAp">
          <node concept="3cpWsn" id="40BYgt09xeB" role="3cpWs9">
            <property role="TrG5h" value="encoder" />
            <node concept="3uibUv" id="40BYgt09xeC" role="1tU5fm">
              <ref role="3uigEE" to="9xw8:~QueryStringEncoder" resolve="QueryStringEncoder" />
            </node>
            <node concept="2ShNRf" id="40BYgt09xfY" role="33vP2m">
              <node concept="1pGfFk" id="40BYgt09xx3" role="2ShVmc">
                <ref role="37wK5l" to="9xw8:~QueryStringEncoder.&lt;init&gt;(java.lang.String)" resolve="QueryStringEncoder" />
                <node concept="3cpWs3" id="6frl3mWbpGn" role="37wK5m">
                  <node concept="3cpWs3" id="1_yOWEXevB1" role="3uHU7B">
                    <node concept="2YIFZM" id="37EBbA_INC4" role="3uHU7w">
                      <ref role="37wK5l" to="bipv:3BwRxVwW$fn" resolve="getCurrentPort" />
                      <ref role="1Pybhc" to="bipv:37EBbA_INx3" resolve="MPSInternalPort" />
                    </node>
                    <node concept="Xl_RD" id="32YxhLfg7Xx" role="3uHU7B">
                      <property role="Xl_RC" value="http://127.0.0.1:" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="1_yOWEXevTK" role="3uHU7w">
                    <property role="Xl_RC" value="/node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1_yOWEXewBY" role="3cqZAp">
          <node concept="2OqwBi" id="1_yOWEXewEC" role="3clFbG">
            <node concept="37vLTw" id="1_yOWEXewBW" role="2Oq$k0">
              <ref role="3cqZAo" node="40BYgt09xeB" resolve="encoder" />
            </node>
            <node concept="liA8E" id="1_yOWEXewIM" role="2OqNvi">
              <ref role="37wK5l" to="9xw8:~QueryStringEncoder.addParam(java.lang.String,java.lang.String)" resolve="addParam" />
              <node concept="Xl_RD" id="1_yOWEXewUV" role="37wK5m">
                <property role="Xl_RC" value="ref" />
              </node>
              <node concept="2OqwBi" id="1_yOWEXezUU" role="37wK5m">
                <node concept="2YIFZM" id="1_yOWEXezRz" role="2Oq$k0">
                  <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                  <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                </node>
                <node concept="liA8E" id="1_yOWEXe$ul" role="2OqNvi">
                  <ref role="37wK5l" to="dush:~PersistenceFacade.asString(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="asString" />
                  <node concept="37vLTw" id="1_yOWEXe$xG" role="37wK5m">
                    <ref role="3cqZAo" node="1_yOWEXeo83" resolve="nodeRef" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1_yOWEXe$E4" role="3cqZAp">
          <node concept="2OqwBi" id="1_yOWEXe$Ls" role="3cqZAk">
            <node concept="37vLTw" id="1_yOWEXe$HB" role="2Oq$k0">
              <ref role="3cqZAo" node="40BYgt09xeB" resolve="encoder" />
            </node>
            <node concept="liA8E" id="1_yOWEXe$QX" role="2OqNvi">
              <ref role="37wK5l" to="9xw8:~QueryStringEncoder.toString()" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1_yOWEXeo81" role="1B3o_S" />
      <node concept="3uibUv" id="1_yOWEXeo82" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="1_yOWEXeo83" role="3clF46">
        <property role="TrG5h" value="nodeRef" />
        <node concept="3uibUv" id="1_yOWEXeoeJ" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_yOWEXenZh" role="jymVt" />
    <node concept="2tJIrI" id="1_yOWEXeo3y" role="jymVt" />
    <node concept="3Tm1VV" id="3OrGkZCn9ZR" role="1B3o_S" />
  </node>
</model>

