<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:859d015f-fa11-470e-bdcb-c22d5dd4be40(jetbrains.mps.kotlin.smodel.plugin)">
  <persistence version="9" />
  <languages>
    <use id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension" version="2" />
    <use id="c7d5b9dd-a05f-4be2-bc73-f2e16994cc67" name="jetbrains.mps.baseLanguage.lightweightdsl" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="90d" ref="r:421d64ed-8024-497f-aeab-8bddeb389dd2(jetbrains.mps.lang.extension.methods)" />
    <import index="ytke" ref="r:a3b52644-55d6-4bce-97d6-5a2f84c2b78b(jetbrains.mps.kotlin.baseLanguage.runtime.plugin)" />
    <import index="d5k6" ref="r:e9005ea6-e4e0-4b7f-8b34-6e6513630cda(jetbrains.mps.kotlin.baseLanguage.typeConversion)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
    <import index="hcm8" ref="r:72a7bf00-0175-42ca-b99b-fe8519b6a16f(jetbrains.mps.kotlin.structure)" implicit="true" />
    <import index="hez" ref="r:b038209d-51a9-4919-b6e5-4fafce96fa00(jetbrains.mps.kotlin.behavior)" implicit="true" />
    <import index="vzxy" ref="r:e4815086-4c30-49cb-8870-1731d8a054ca(jetbrains.mps.kotlin.smodel.structure)" implicit="true" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" implicit="true" />
    <import index="5m2i" ref="r:13d34207-1d05-4df8-92a6-7cde496142db(jetbrains.mps.kotlin.javaRefs.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ngI" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension">
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
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
        <child id="1595412875168045827" name="initValue" index="28nt2d" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="8182547171709752110" name="jetbrains.mps.lang.quotation.structure.NodeBuilderExpression" flags="nn" index="36biLy">
        <child id="8182547171709752112" name="expression" index="36biLW" />
      </concept>
      <concept id="8182547171709614739" name="jetbrains.mps.lang.quotation.structure.NodeBuilderRef" flags="nn" index="36bGnv">
        <reference id="8182547171709614741" name="target" index="36bGnp" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
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
  </registry>
  <node concept="1lYeZD" id="117xv0QCP1J">
    <property role="TrG5h" value="SModelConverters" />
    <ref role="1lYe$Y" to="ytke:77yS8CrUyOS" resolve="JavaToKtConverters" />
    <node concept="3Tm1VV" id="117xv0QCP1K" role="1B3o_S" />
    <node concept="312cEg" id="117xv0QDBjW" role="jymVt">
      <property role="TrG5h" value="engine" />
      <node concept="3Tm6S6" id="117xv0QDBjX" role="1B3o_S" />
      <node concept="3uibUv" id="117xv0QD4OR" role="1tU5fm">
        <ref role="3uigEE" to="d5k6:4mCQDm_lBRO" resolve="TypeConverterEngine" />
        <node concept="3Tqbb2" id="117xv0QD4OS" role="11_B2D">
          <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
        </node>
        <node concept="3Tqbb2" id="117xv0QD4OT" role="11_B2D">
          <ref role="ehGHo" to="hcm8:2yYXHtl6Jh1" resolve="IType" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="117xv0QCP1L" role="jymVt" />
    <node concept="3clFb_" id="398EB8$ppGw" role="jymVt">
      <property role="TrG5h" value="asConceptProjection" />
      <node concept="3clFbS" id="398EB8$ppGz" role="3clF47">
        <node concept="3cpWs6" id="398EB8$pril" role="3cqZAp">
          <node concept="2OqwBi" id="398EB8$putv" role="3cqZAk">
            <node concept="3zqWPK" id="70OdufORfQe" role="2OqNvi">
              <ref role="37wK5l" to="hez:2gj5XQXIqKf" resolve="asInvariantProjection" />
            </node>
            <node concept="2pJPEk" id="398EB8$prTY" role="2Oq$k0">
              <node concept="2pJPED" id="398EB8$prU0" role="2pJPEn">
                <ref role="2pJxaS" to="vzxy:28CvMylqxbi" resolve="ConceptType" />
                <node concept="2pIpSj" id="398EB8$psw4" role="2pJxcM">
                  <ref role="2pIpSl" to="vzxy:28CvMylqxTD" resolve="concept" />
                  <node concept="36biLy" id="398EB8$psLL" role="28nt2d">
                    <node concept="37vLTw" id="398EB8$psOc" role="36biLW">
                      <ref role="3cqZAo" node="398EB8$pqD6" resolve="conceptNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="398EB8$pgYr" role="1B3o_S" />
      <node concept="3Tqbb2" id="398EB8$pp_q" role="3clF45">
        <ref role="ehGHo" to="hcm8:2yYXHtl6Jfb" resolve="ITypeProjection" />
      </node>
      <node concept="37vLTG" id="398EB8$pqD6" role="3clF46">
        <property role="TrG5h" value="conceptNode" />
        <node concept="3Tqbb2" id="398EB8$pqD5" role="1tU5fm">
          <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="398EB8$pfYZ" role="jymVt" />
    <node concept="q3mfD" id="117xv0QCPjD" role="jymVt">
      <property role="TrG5h" value="activate" />
      <ref role="2VtyIY" to="90d:3zLwYDe0CPy" resolve="activate" />
      <node concept="3Tm1VV" id="117xv0QCPjF" role="1B3o_S" />
      <node concept="3clFbS" id="117xv0QCPjH" role="3clF47">
        <node concept="3clFbF" id="117xv0QDAp1" role="3cqZAp">
          <node concept="37vLTI" id="117xv0QDAp3" role="3clFbG">
            <node concept="2ShNRf" id="117xv0QD4OW" role="37vLTx">
              <node concept="1pGfFk" id="117xv0QD4OX" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="d5k6:4mCQDm_lBUS" resolve="TypeConverterEngine" />
              </node>
            </node>
            <node concept="37vLTw" id="117xv0QDAp7" role="37vLTJ">
              <ref role="3cqZAo" node="117xv0QDBjW" resolve="engine" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="117xv0QD5ka" role="3cqZAp">
          <node concept="2OqwBi" id="117xv0QD5E6" role="3clFbG">
            <node concept="37vLTw" id="117xv0QD5k8" role="2Oq$k0">
              <ref role="3cqZAo" node="117xv0QDBjW" resolve="engine" />
            </node>
            <node concept="liA8E" id="117xv0QD6PI" role="2OqNvi">
              <ref role="37wK5l" to="d5k6:4mCQDm_lEqa" resolve="declareMapping" />
              <node concept="35c_gC" id="117xv0QD6Xq" role="37wK5m">
                <ref role="35c_gD" to="tp25:gzTqbfa" resolve="SNodeType" />
              </node>
              <node concept="1bVj0M" id="117xv0QD7mW" role="37wK5m">
                <node concept="3clFbS" id="117xv0QD7mY" role="1bW5cS">
                  <node concept="3cpWs6" id="117xv0QDsUD" role="3cqZAp">
                    <node concept="2pJPEk" id="117xv0QDsUE" role="3cqZAk">
                      <node concept="2pJPED" id="117xv0QDsUF" role="2pJPEn">
                        <ref role="2pJxaS" to="vzxy:75chmMYrBI9" resolve="NodeType" />
                        <node concept="2pIpSj" id="117xv0QDsUG" role="2pJxcM">
                          <ref role="2pIpSl" to="vzxy:Aa0Z14hqUI" resolve="projection" />
                          <node concept="36biLy" id="117xv0QDsUH" role="28nt2d">
                            <node concept="1rXfSq" id="398EB8$p$03" role="36biLW">
                              <ref role="37wK5l" node="398EB8$ppGw" resolve="asConceptProjection" />
                              <node concept="2OqwBi" id="117xv0QDsUO" role="37wK5m">
                                <node concept="1PxgMI" id="117xv0QDsUP" role="2Oq$k0">
                                  <property role="1BlNFB" value="true" />
                                  <node concept="chp4Y" id="117xv0QDsUQ" role="3oSUPX">
                                    <ref role="cht4Q" to="tp25:gzTqbfa" resolve="SNodeType" />
                                  </node>
                                  <node concept="37vLTw" id="117xv0QDsUR" role="1m5AlR">
                                    <ref role="3cqZAo" node="117xv0QD82C" resolve="it" />
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="117xv0QDsUS" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp25:g$ehGDh" resolve="concept" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="117xv0QD82C" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="117xv0QD82D" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="398EB8$p$QV" role="3cqZAp" />
        <node concept="3clFbF" id="117xv0QDtJw" role="3cqZAp">
          <node concept="2OqwBi" id="117xv0QDu47" role="3clFbG">
            <node concept="37vLTw" id="117xv0QDtJu" role="2Oq$k0">
              <ref role="3cqZAo" node="117xv0QDBjW" resolve="engine" />
            </node>
            <node concept="liA8E" id="117xv0QDuZe" role="2OqNvi">
              <ref role="37wK5l" to="d5k6:4mCQDm_lEqa" resolve="declareMapping" />
              <node concept="35c_gC" id="117xv0QDvdI" role="37wK5m">
                <ref role="35c_gD" to="tp25:5MFgGQnlLNI" resolve="SConceptType" />
              </node>
              <node concept="1bVj0M" id="117xv0QDw3W" role="37wK5m">
                <node concept="gl6BB" id="117xv0QDwS0" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="117xv0QDwS1" role="1tU5fm" />
                </node>
                <node concept="3clFbS" id="117xv0QDw3Y" role="1bW5cS">
                  <node concept="3cpWs6" id="117xv0QDxWz" role="3cqZAp">
                    <node concept="2pJPEk" id="117xv0QDyiV" role="3cqZAk">
                      <node concept="2pJPED" id="117xv0QDyiX" role="2pJPEn">
                        <ref role="2pJxaS" to="vzxy:28CvMylqxbi" resolve="ConceptType" />
                        <node concept="2pIpSj" id="117xv0QDyWw" role="2pJxcM">
                          <ref role="2pIpSl" to="vzxy:28CvMylqxTD" resolve="concept" />
                          <node concept="36biLy" id="117xv0QDz98" role="28nt2d">
                            <node concept="2OqwBi" id="117xv0QDzGM" role="36biLW">
                              <node concept="1PxgMI" id="117xv0QDzsK" role="2Oq$k0">
                                <property role="1BlNFB" value="true" />
                                <node concept="chp4Y" id="117xv0QDzwC" role="3oSUPX">
                                  <ref role="cht4Q" to="tp25:5MFgGQnlLNI" resolve="SConceptType" />
                                </node>
                                <node concept="37vLTw" id="117xv0QDza5" role="1m5AlR">
                                  <ref role="3cqZAo" node="117xv0QDwS0" resolve="it" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="117xv0QD$qC" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp25:5MFgGQnlLNJ" resolve="conceptDeclaration" />
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
        <node concept="3clFbH" id="398EB8$p54C" role="3cqZAp" />
        <node concept="3clFbF" id="398EB8$p6A9" role="3cqZAp">
          <node concept="2OqwBi" id="398EB8$p71Q" role="3clFbG">
            <node concept="37vLTw" id="398EB8$p6A7" role="2Oq$k0">
              <ref role="3cqZAo" node="117xv0QDBjW" resolve="engine" />
            </node>
            <node concept="liA8E" id="398EB8$p8OM" role="2OqNvi">
              <ref role="37wK5l" to="d5k6:4mCQDm_lEqa" resolve="declareMapping" />
              <node concept="35c_gC" id="398EB8$p9st" role="37wK5m">
                <ref role="35c_gD" to="tp25:6qMaajUPFau" resolve="SNodePointerType" />
              </node>
              <node concept="1bVj0M" id="398EB8$pbHl" role="37wK5m">
                <node concept="3clFbS" id="398EB8$pbHn" role="1bW5cS">
                  <node concept="3cpWs6" id="398EB8$pdGt" role="3cqZAp">
                    <node concept="2pJPEk" id="398EB8$pezk" role="3cqZAk">
                      <node concept="2pJPED" id="398EB8$pezm" role="2pJPEn">
                        <ref role="2pJxaS" to="vzxy:398EB8$lmoS" resolve="NodeReferenceType" />
                        <node concept="2pIpSj" id="398EB8$pfrV" role="2pJxcM">
                          <ref role="2pIpSl" to="vzxy:Aa0Z14hqUI" resolve="projection" />
                          <node concept="36biLy" id="398EB8$pwVo" role="28nt2d">
                            <node concept="1rXfSq" id="398EB8$pwY$" role="36biLW">
                              <ref role="37wK5l" node="398EB8$ppGw" resolve="asConceptProjection" />
                              <node concept="2OqwBi" id="398EB8$pyKK" role="37wK5m">
                                <node concept="1PxgMI" id="398EB8$py4y" role="2Oq$k0">
                                  <property role="1BlNFB" value="true" />
                                  <node concept="chp4Y" id="398EB8$py8F" role="3oSUPX">
                                    <ref role="cht4Q" to="tp25:6qMaajUPFau" resolve="SNodePointerType" />
                                  </node>
                                  <node concept="37vLTw" id="398EB8$px0h" role="1m5AlR">
                                    <ref role="3cqZAo" node="398EB8$pciq" resolve="it" />
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="398EB8$pzPb" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp25:6qMaajUPFaH" resolve="concept" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="398EB8$pciq" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="398EB8$pcir" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="Aa0Z14o7xY" role="3cqZAp" />
        <node concept="3SKdUt" id="Aa0Z14ofhC" role="3cqZAp">
          <node concept="1PaTwC" id="Aa0Z14ofhD" role="1aUNEU">
            <node concept="3oM_SD" id="Aa0Z14ogjL" role="1PaTwD">
              <property role="3oM_SC" value="No" />
            </node>
            <node concept="3oM_SD" id="Aa0Z14ogjN" role="1PaTwD">
              <property role="3oM_SC" value="concept" />
            </node>
            <node concept="3oM_SD" id="Aa0Z14ogjQ" role="1PaTwD">
              <property role="3oM_SC" value="equivalent" />
            </node>
            <node concept="3oM_SD" id="Aa0Z14ogjU" role="1PaTwD">
              <property role="3oM_SC" value="-&gt;" />
            </node>
            <node concept="3oM_SD" id="Aa0Z14ogjZ" role="1PaTwD">
              <property role="3oM_SC" value="BaseConcept" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Aa0Z14o5HP" role="3cqZAp">
          <node concept="2OqwBi" id="Aa0Z14o5HQ" role="3clFbG">
            <node concept="37vLTw" id="Aa0Z14o5HR" role="2Oq$k0">
              <ref role="3cqZAo" node="117xv0QDBjW" resolve="engine" />
            </node>
            <node concept="liA8E" id="Aa0Z14o5HS" role="2OqNvi">
              <ref role="37wK5l" to="d5k6:4mCQDm_lEqa" resolve="declareMapping" />
              <node concept="35c_gC" id="Aa0Z14o5HT" role="37wK5m">
                <ref role="35c_gD" to="tp25:1YRcO3NA_w5" resolve="AggregationLinkType" />
              </node>
              <node concept="1bVj0M" id="Aa0Z14o5HU" role="37wK5m">
                <node concept="3clFbS" id="Aa0Z14o5HV" role="1bW5cS">
                  <node concept="3cpWs6" id="Aa0Z14o5HW" role="3cqZAp">
                    <node concept="2pJPEk" id="Aa0Z14o5HX" role="3cqZAk">
                      <node concept="2pJPED" id="Aa0Z14o5HY" role="2pJPEn">
                        <ref role="2pJxaS" to="vzxy:Aa0Z14eqNd" resolve="AggregationLinkType" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="Aa0Z14o5I7" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="Aa0Z14o5I8" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Aa0Z14o6BX" role="3cqZAp">
          <node concept="2OqwBi" id="Aa0Z14o6BY" role="3clFbG">
            <node concept="37vLTw" id="Aa0Z14o6BZ" role="2Oq$k0">
              <ref role="3cqZAo" node="117xv0QDBjW" resolve="engine" />
            </node>
            <node concept="liA8E" id="Aa0Z14o6C0" role="2OqNvi">
              <ref role="37wK5l" to="d5k6:4mCQDm_lEqa" resolve="declareMapping" />
              <node concept="35c_gC" id="Aa0Z14o6C1" role="37wK5m">
                <ref role="35c_gD" to="tp25:1YRcO3NA_wL" resolve="AssociationLinkType" />
              </node>
              <node concept="1bVj0M" id="Aa0Z14o6C2" role="37wK5m">
                <node concept="3clFbS" id="Aa0Z14o6C3" role="1bW5cS">
                  <node concept="3cpWs6" id="Aa0Z14o6C4" role="3cqZAp">
                    <node concept="2pJPEk" id="Aa0Z14o6C5" role="3cqZAk">
                      <node concept="2pJPED" id="Aa0Z14o6C6" role="2pJPEn">
                        <ref role="2pJxaS" to="vzxy:Aa0Z14ft08" resolve="ReferenceLinkType" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="Aa0Z14o6Cf" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="Aa0Z14o6Cg" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7e2hTccYpDH" role="3cqZAp" />
        <node concept="3clFbF" id="7e2hTccYrYT" role="3cqZAp">
          <node concept="2OqwBi" id="7e2hTccYuio" role="3clFbG">
            <node concept="37vLTw" id="7e2hTccYrYR" role="2Oq$k0">
              <ref role="3cqZAo" node="117xv0QDBjW" resolve="engine" />
            </node>
            <node concept="liA8E" id="7e2hTccYv1p" role="2OqNvi">
              <ref role="37wK5l" to="d5k6:4mCQDm_lEqa" resolve="declareMapping" />
              <node concept="35c_gC" id="7e2hTccYvEB" role="37wK5m">
                <ref role="35c_gD" to="tp25:i2ZThgx" resolve="SEnumerationMemberType" />
              </node>
              <node concept="1bVj0M" id="7e2hTccYxMo" role="37wK5m">
                <node concept="3clFbS" id="7e2hTccYxMq" role="1bW5cS">
                  <node concept="3cpWs6" id="7e2hTccYyvd" role="3cqZAp">
                    <node concept="2pJPEk" id="7e2hTccZNQC" role="3cqZAk">
                      <node concept="2pJPED" id="7e2hTccZNQE" role="2pJPEn">
                        <ref role="2pJxaS" to="5m2i:6zWVWr21w3P" resolve="JavaClassType" />
                        <node concept="2pIpSj" id="7e2hTccZNSx" role="2pJxcM">
                          <ref role="2pIpSl" to="5m2i:6zWVWr21w5T" resolve="javaClass" />
                          <node concept="36bGnv" id="7e2hTccZQav" role="28nt2d">
                            <ref role="36bGnp" to="c17a:~SEnumerationLiteral" resolve="SEnumerationLiteral" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="7e2hTccYy45" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="7e2hTccYy46" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="117xv0QCPjK" role="3clF45" />
    </node>
    <node concept="3tTeZs" id="117xv0QCP1N" role="jymVt">
      <property role="3tTeZt" value="deactivate" />
      <ref role="3tTeZr" to="90d:3zLwYDe0BDO" resolve="deactivate" />
    </node>
    <node concept="2tJIrI" id="117xv0QCP1O" role="jymVt" />
    <node concept="q3mfD" id="117xv0QCP1P" role="jymVt">
      <property role="TrG5h" value="get" />
      <ref role="2VtyIY" to="90d:3zLwYDe0svr" resolve="get" />
      <node concept="3Tm1VV" id="117xv0QCP1R" role="1B3o_S" />
      <node concept="3clFbS" id="117xv0QCP1T" role="3clF47">
        <node concept="3cpWs6" id="117xv0QDfY7" role="3cqZAp">
          <node concept="37vLTw" id="117xv0QDg7H" role="3cqZAk">
            <ref role="3cqZAo" node="117xv0QDBjW" resolve="engine" />
          </node>
        </node>
      </node>
      <node concept="q3mfm" id="117xv0QCP1U" role="3clF45">
        <ref role="q3mfh" to="90d:3zLwYDe0sv$" />
        <ref role="1QQUv3" node="117xv0QCP1P" resolve="get" />
      </node>
    </node>
  </node>
</model>

