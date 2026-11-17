<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1ce92b75-a0c5-43f1-a14e-cfe3b58c497c(jetbrains.mps.samples.fincalculator.sandbox.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="26b3d6d5-b99a-4ed6-83be-d2ea6f3627c2" name="jetbrains.mps.samples.fincalculator" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
  </languages>
  <imports>
    <import index="npo5" ref="r:346759f7-f6a3-4d42-a3a1-c8d7b36649d7(jetbrains.mps.samples.fincalculator.support.runtime)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
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
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534513062" name="jetbrains.mps.baseLanguage.structure.DoubleType" flags="in" index="10P55v" />
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
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
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
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
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
      <concept id="2535923850359206929" name="jetbrains.mps.lang.text.structure.Text" flags="nn" index="1Pa9Pv">
        <child id="2535923850359210936" name="lines" index="1PaQFQ" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="26b3d6d5-b99a-4ed6-83be-d2ea6f3627c2" name="jetbrains.mps.samples.fincalculator">
      <concept id="1241362555920" name="jetbrains.mps.samples.fincalculator.structure.Calculator" flags="ng" index="6YmkL">
        <child id="2094486643673280176" name="commands" index="13SN8L" />
        <child id="3521948432316187749" name="description" index="1p$NOl" />
      </concept>
      <concept id="1241362608529" name="jetbrains.mps.samples.fincalculator.structure.InputField" flags="ng" index="6Yz2K" />
      <concept id="1241362815640" name="jetbrains.mps.samples.fincalculator.structure.OutputField" flags="ng" index="6ZlIT">
        <child id="1241363046126" name="expression" index="70dZf" />
      </concept>
      <concept id="1241363083334" name="jetbrains.mps.samples.fincalculator.structure.FieldReference" flags="nn" index="70n5B">
        <reference id="1241363105304" name="field" index="70ssT" />
      </concept>
      <concept id="2369396721460470227" name="jetbrains.mps.samples.fincalculator.structure.LogicalType" flags="ng" index="2qgqwg" />
      <concept id="2369396721460470226" name="jetbrains.mps.samples.fincalculator.structure.NumericType" flags="ng" index="2qgqwh" />
      <concept id="2369396721457577845" name="jetbrains.mps.samples.fincalculator.structure.Calculation" flags="ng" index="2q_vqQ">
        <child id="2369396721457678439" name="body" index="2q_06$" />
        <child id="2369396721457836168" name="returnType" index="2qAv_b" />
      </concept>
      <concept id="2369396721457915559" name="jetbrains.mps.samples.fincalculator.structure.CalculationReference" flags="ng" index="2qAaX$">
        <reference id="2369396721457915560" name="target" index="2qAaXF" />
      </concept>
      <concept id="5982026979498910643" name="jetbrains.mps.samples.fincalculator.structure.CalculationValue" flags="ng" index="2IOoT$">
        <child id="5982026979498910644" name="initializer" index="2IOoTz" />
      </concept>
      <concept id="5982026979499062445" name="jetbrains.mps.samples.fincalculator.structure.CalculationValueReference" flags="ng" index="2IR5_U">
        <reference id="5982026979499062446" name="target" index="2IR5_T" />
      </concept>
      <concept id="5982026979499766956" name="jetbrains.mps.samples.fincalculator.structure.OutputTable" flags="ng" index="2ITD_V">
        <child id="5982026979499766957" name="dataSource" index="2ITD_U" />
      </concept>
      <concept id="4779620959590640040" name="jetbrains.mps.samples.fincalculator.structure.LogicalReference" flags="ng" index="Nfvpo">
        <reference id="4779620959590640041" name="target" index="Nfvpp" />
      </concept>
      <concept id="4779620959590639988" name="jetbrains.mps.samples.fincalculator.structure.Logical" flags="ng" index="Nfvq4" />
      <concept id="4779620959590795032" name="jetbrains.mps.samples.fincalculator.structure.SelectorReference" flags="ng" index="NfPzC">
        <reference id="4779620959590795033" name="target" index="NfPzD" />
      </concept>
      <concept id="4779620959590794892" name="jetbrains.mps.samples.fincalculator.structure.Selector" flags="ng" index="NfP_W">
        <property id="5087448708487214504" name="value_kind" index="sZ4Cd" />
        <child id="4779620959590794957" name="options" index="NfP$X" />
      </concept>
      <concept id="4779620959590794895" name="jetbrains.mps.samples.fincalculator.structure.Option" flags="ng" index="NfP_Z">
        <property id="4779620959590794898" name="value" index="NfP_y" />
      </concept>
      <concept id="2094486643673230671" name="jetbrains.mps.samples.fincalculator.structure.EmptyLine" flags="ng" index="13S77e" />
      <concept id="2094486643673358380" name="jetbrains.mps.samples.fincalculator.structure.Field" flags="ng" index="13SBMH">
        <property id="2094486643672734643" name="value_kind" index="13YcsM" />
      </concept>
      <concept id="2094486643673041390" name="jetbrains.mps.samples.fincalculator.structure.Parameter" flags="ng" index="13ZTlJ">
        <property id="2094486643673041391" name="default_value" index="13ZTlI" />
      </concept>
    </language>
  </registry>
  <node concept="6YmkL" id="i47cz03">
    <property role="TrG5h" value="Salary" />
    <node concept="13S77e" id="1Oh785uWG59" role="13SN8L" />
    <node concept="6Yz2K" id="1Oh785uY8lI" role="13SN8L">
      <property role="TrG5h" value="Design Hours" />
      <property role="13YcsM" value="1Oh785uVB3d/other" />
    </node>
    <node concept="6Yz2K" id="1Oh785uY8mm" role="13SN8L">
      <property role="TrG5h" value="Implementatiion Hours" />
      <property role="13YcsM" value="1Oh785uVB3d/other" />
    </node>
    <node concept="6Yz2K" id="1Oh785uY8nH" role="13SN8L">
      <property role="TrG5h" value="Design Rate" />
      <property role="13YcsM" value="1Oh785uUtIQ/amount" />
    </node>
    <node concept="6Yz2K" id="1Oh785v1JiM" role="13SN8L">
      <property role="TrG5h" value="Implementation Rate" />
      <property role="13YcsM" value="1Oh785uUtIQ/amount" />
    </node>
    <node concept="Nfvq4" id="49kBZ1LqVSA" role="13SN8L">
      <property role="TrG5h" value="student" />
    </node>
    <node concept="13ZTlJ" id="1Oh785uY8p3" role="13SN8L">
      <property role="TrG5h" value="Income tax rate" />
      <property role="13YcsM" value="1Oh785uUtIR/percent" />
      <property role="13ZTlI" value="23" />
    </node>
    <node concept="13S77e" id="1Oh785uYgJh" role="13SN8L" />
    <node concept="6ZlIT" id="1Oh785uYgHt" role="13SN8L">
      <property role="TrG5h" value="Gross Salary" />
      <property role="13YcsM" value="1Oh785uUtIQ/amount" />
      <node concept="3cpWs3" id="1Oh785uYgHP" role="70dZf">
        <node concept="17qRlL" id="1Oh785uYgHQ" role="3uHU7w">
          <node concept="70n5B" id="23xMseUOf7D" role="3uHU7w">
            <ref role="70ssT" node="1Oh785v1JiM" resolve="Implementation Rate" />
          </node>
          <node concept="70n5B" id="1Oh785uYgHS" role="3uHU7B">
            <ref role="70ssT" node="1Oh785uY8mm" resolve="Implementatiion Hours" />
          </node>
        </node>
        <node concept="17qRlL" id="1Oh785uYgHT" role="3uHU7B">
          <node concept="70n5B" id="1Oh785uYgHU" role="3uHU7w">
            <ref role="70ssT" node="1Oh785uY8nH" resolve="Design Rate" />
          </node>
          <node concept="70n5B" id="1Oh785uYgHV" role="3uHU7B">
            <ref role="70ssT" node="1Oh785uY8lI" resolve="Design Hours" />
          </node>
        </node>
      </node>
    </node>
    <node concept="6ZlIT" id="1Oh785uYgJO" role="13SN8L">
      <property role="TrG5h" value="Net Salary" />
      <property role="13YcsM" value="1Oh785uUtIQ/amount" />
      <node concept="3cpWsd" id="1Oh785uYhb8" role="70dZf">
        <node concept="1eOMI4" id="1Oh785uYhbk" role="3uHU7w">
          <node concept="17qRlL" id="1Oh785uYhbU" role="1eOMHV">
            <node concept="70n5B" id="1Oh785uYhcd" role="3uHU7w">
              <ref role="70ssT" node="1Oh785uYgHt" resolve="Gross Salary" />
            </node>
            <node concept="FJ1c_" id="3d_iy$r4kaP" role="3uHU7B">
              <node concept="70n5B" id="1Oh785uYhbv" role="3uHU7B">
                <ref role="70ssT" node="1Oh785uY8p3" resolve="Income tax rate" />
              </node>
              <node concept="1eOMI4" id="3d_iy$r4mSi" role="3uHU7w">
                <node concept="3K4zz7" id="3d_iy$r4n7H" role="1eOMHV">
                  <node concept="3cmrfG" id="3d_iy$r4n8h" role="3K4E3e">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="3cmrfG" id="3d_iy$r4n8K" role="3K4GZi">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="Nfvpo" id="3d_iy$r4mSD" role="3K4Cdx">
                    <ref role="Nfvpp" node="49kBZ1LqVSA" resolve="student" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="70n5B" id="1Oh785uYgKa" role="3uHU7B">
          <ref role="70ssT" node="1Oh785uYgHt" resolve="Gross Salary" />
        </node>
      </node>
    </node>
    <node concept="13S77e" id="49kBZ1L_S3p" role="13SN8L" />
    <node concept="13S77e" id="49kBZ1LA3l0" role="13SN8L" />
    <node concept="13S77e" id="49kBZ1LBCxO" role="13SN8L" />
    <node concept="13S77e" id="4qqfUlqs72k" role="13SN8L" />
    <node concept="13S77e" id="49kBZ1LBQFx" role="13SN8L" />
    <node concept="13S77e" id="1Oh785v2nYQ" role="13SN8L" />
    <node concept="13S77e" id="49kBZ1LuGPS" role="13SN8L" />
    <node concept="13S77e" id="1Oh785v07nm" role="13SN8L" />
    <node concept="1Pa9Pv" id="33wun1Dvjxk" role="1p$NOl">
      <node concept="1PaTwC" id="33wun1Dvjxl" role="1PaQFQ">
        <node concept="3oM_SD" id="33wun1Dvjxn" role="1PaTwD">
          <property role="3oM_SC" value="Calculates" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvjxo" role="1PaTwD">
          <property role="3oM_SC" value="gross" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvjxp" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvjxq" role="1PaTwD">
          <property role="3oM_SC" value="net" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvjxr" role="1PaTwD">
          <property role="3oM_SC" value="salary" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvjxs" role="1PaTwD">
          <property role="3oM_SC" value="from" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvjxt" role="1PaTwD">
          <property role="3oM_SC" value="design" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvjxu" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvjxv" role="1PaTwD">
          <property role="3oM_SC" value="implementation" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvjxw" role="1PaTwD">
          <property role="3oM_SC" value="hours" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvjxx" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvjxy" role="1PaTwD">
          <property role="3oM_SC" value="hourly" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvjxz" role="1PaTwD">
          <property role="3oM_SC" value="rates," />
        </node>
        <node concept="3oM_SD" id="33wun1Dvjx$" role="1PaTwD">
          <property role="3oM_SC" value="applying" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvjx_" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="33wun1DvjxA" role="1PaTwD">
          <property role="3oM_SC" value="income" />
        </node>
        <node concept="3oM_SD" id="33wun1DvjxB" role="1PaTwD">
          <property role="3oM_SC" value="tax" />
        </node>
        <node concept="3oM_SD" id="33wun1DvjxC" role="1PaTwD">
          <property role="3oM_SC" value="rate" />
        </node>
        <node concept="3oM_SD" id="33wun1DvjxD" role="1PaTwD">
          <property role="3oM_SC" value="with" />
        </node>
        <node concept="3oM_SD" id="33wun1DvjxE" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="33wun1DvjxF" role="1PaTwD">
          <property role="3oM_SC" value="student" />
        </node>
        <node concept="3oM_SD" id="33wun1DvjxG" role="1PaTwD">
          <property role="3oM_SC" value="tax" />
        </node>
        <node concept="3oM_SD" id="33wun1DvjxH" role="1PaTwD">
          <property role="3oM_SC" value="discount." />
        </node>
      </node>
    </node>
  </node>
  <node concept="6YmkL" id="4qqfUlqtbKd">
    <property role="TrG5h" value="Mortgage Evaluation" />
    <node concept="6Yz2K" id="4qqfUlqtfOt" role="13SN8L">
      <property role="TrG5h" value="total monthly income" />
      <property role="13YcsM" value="1Oh785uUtIQ/amount" />
    </node>
    <node concept="6Yz2K" id="4qqfUlqtfS9" role="13SN8L">
      <property role="TrG5h" value="total monthly spendings" />
      <property role="13YcsM" value="1Oh785uUtIQ/amount" />
    </node>
    <node concept="6Yz2K" id="4qqfUlqth3F" role="13SN8L">
      <property role="TrG5h" value="monthly payments towards other loans" />
      <property role="13YcsM" value="1Oh785uUtIQ/amount" />
    </node>
    <node concept="NfP_W" id="4qqfUlqtglD" role="13SN8L">
      <property role="TrG5h" value="education" />
      <property role="sZ4Cd" value="1Oh785uVB3d/other" />
      <node concept="NfP_Z" id="4qqfUlqtgou" role="NfP$X">
        <property role="TrG5h" value="high school" />
        <property role="NfP_y" value="0" />
      </node>
      <node concept="NfP_Z" id="4qqfUlqtgrt" role="NfP$X">
        <property role="TrG5h" value="university" />
        <property role="NfP_y" value="1" />
      </node>
      <node concept="NfP_Z" id="4qqfUlqtgtB" role="NfP$X">
        <property role="TrG5h" value="PhD" />
        <property role="NfP_y" value="2" />
      </node>
    </node>
    <node concept="Nfvq4" id="4qqfUlqtgcD" role="13SN8L">
      <property role="TrG5h" value="other properties in possesion" />
    </node>
    <node concept="Nfvq4" id="4qqfUlqtgFx" role="13SN8L">
      <property role="TrG5h" value="retired" />
    </node>
    <node concept="Nfvq4" id="4qqfUlqtgKr" role="13SN8L">
      <property role="TrG5h" value="known history of paying back a mortgage" />
    </node>
    <node concept="6Yz2K" id="4qqfUlqtg5H" role="13SN8L">
      <property role="TrG5h" value="load amount" />
      <property role="13YcsM" value="1Oh785uUtIQ/amount" />
    </node>
    <node concept="13S77e" id="23xMseUu1j4" role="13SN8L" />
    <node concept="2q_vqQ" id="23xMseUtJwq" role="13SN8L">
      <property role="TrG5h" value="isInBalance" />
      <node concept="3clFbS" id="23xMseUtJws" role="2q_06$">
        <node concept="3cpWs6" id="23xMseUu2bZ" role="3cqZAp">
          <node concept="3eOSWO" id="23xMseU$hFI" role="3cqZAk">
            <node concept="2YIFZM" id="23xMseU$K$4" role="3uHU7w">
              <ref role="37wK5l" to="npo5:23xMseU$Jzz" resolve="balanceThreashhold" />
              <ref role="1Pybhc" to="npo5:23xMseU$JuM" resolve="SimulationFunctions" />
            </node>
            <node concept="3cpWsd" id="23xMseUu2c1" role="3uHU7B">
              <node concept="3cpWsd" id="23xMseUu2c3" role="3uHU7B">
                <node concept="70n5B" id="23xMseUu2c4" role="3uHU7B">
                  <ref role="70ssT" node="4qqfUlqtfOt" resolve="total monthly income" />
                </node>
                <node concept="70n5B" id="23xMseUu2c5" role="3uHU7w">
                  <ref role="70ssT" node="4qqfUlqtfS9" resolve="total monthly spendings" />
                </node>
              </node>
              <node concept="70n5B" id="23xMseUu2c2" role="3uHU7w">
                <ref role="70ssT" node="4qqfUlqth3F" resolve="monthly payments towards other loans" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2qgqwg" id="23xMseUCfXQ" role="2qAv_b" />
    </node>
    <node concept="13S77e" id="23xMseUu1iz" role="13SN8L" />
    <node concept="2q_vqQ" id="23xMseUuFDz" role="13SN8L">
      <property role="TrG5h" value="backupValue" />
      <node concept="3clFbS" id="23xMseUuFD_" role="2q_06$">
        <node concept="3cpWs6" id="23xMseUuFJA" role="3cqZAp">
          <node concept="17qRlL" id="23xMseUuHcq" role="3cqZAk">
            <node concept="70n5B" id="23xMseUuHcO" role="3uHU7w">
              <ref role="70ssT" node="4qqfUlqtfOt" resolve="total monthly income" />
            </node>
            <node concept="3cmrfG" id="23xMseUuGLh" role="3uHU7B">
              <property role="3cmrfH" value="12" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2qgqwh" id="23xMseUCg14" role="2qAv_b" />
    </node>
    <node concept="13S77e" id="23xMseUuFJD" role="13SN8L" />
    <node concept="2q_vqQ" id="23xMseUuFL8" role="13SN8L">
      <property role="TrG5h" value="isRisky" />
      <node concept="3clFbS" id="23xMseUuFLa" role="2q_06$">
        <node concept="3clFbJ" id="23xMseUuGvX" role="3cqZAp">
          <node concept="3clFbS" id="23xMseUuGvZ" role="3clFbx">
            <node concept="3cpWs6" id="23xMseUuGEi" role="3cqZAp">
              <node concept="3clFbT" id="23xMseUuGES" role="3cqZAk" />
            </node>
          </node>
          <node concept="1eOMI4" id="23xMseUuGwK" role="3clFbw">
            <node concept="Nfvpo" id="23xMseUuGDZ" role="1eOMHV">
              <ref role="Nfvpp" node="4qqfUlqtgKr" resolve="known history of paying back a mortgage" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="23xMseUuFMU" role="3cqZAp">
          <node concept="3clFbC" id="23xMseUuG4z" role="3clFbw">
            <node concept="3cmrfG" id="23xMseUuG4P" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="NfPzC" id="23xMseUuFN6" role="3uHU7B">
              <ref role="NfPzD" node="4qqfUlqtglD" resolve="education" />
            </node>
          </node>
          <node concept="3clFbS" id="23xMseUuFMW" role="3clFbx">
            <node concept="3cpWs6" id="23xMseUuGg0" role="3cqZAp">
              <node concept="3clFbT" id="23xMseUuGgk" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="23xMseUuGgY" role="3cqZAp">
          <node concept="3clFbS" id="23xMseUuGh0" role="3clFbx">
            <node concept="3cpWs6" id="23xMseUuGus" role="3cqZAp">
              <node concept="3clFbT" id="23xMseUuGuy" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="23xMseUuGsO" role="3clFbw">
            <node concept="3fqX7Q" id="23xMseUuGtl" role="3uHU7w">
              <node concept="Nfvpo" id="23xMseUuGtT" role="3fr31v">
                <ref role="Nfvpp" node="4qqfUlqtgcD" resolve="other properties in possesion" />
              </node>
            </node>
            <node concept="Nfvpo" id="23xMseUuGhz" role="3uHU7B">
              <ref role="Nfvpp" node="4qqfUlqtgFx" resolve="retired" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="23xMseUuGFj" role="3cqZAp">
          <node concept="3clFbT" id="23xMseUuGHY" role="3cqZAk" />
        </node>
      </node>
      <node concept="2qgqwg" id="23xMseUCgh8" role="2qAv_b" />
    </node>
    <node concept="13S77e" id="23xMseUuFIT" role="13SN8L" />
    <node concept="2q_vqQ" id="23xMseUuHt8" role="13SN8L">
      <property role="TrG5h" value="accept" />
      <node concept="3clFbS" id="23xMseUuHta" role="2q_06$">
        <node concept="3clFbJ" id="23xMseUuHwf" role="3cqZAp">
          <node concept="1Wc70l" id="23xMseUuHFF" role="3clFbw">
            <node concept="3eOSWO" id="23xMseUuHXV" role="3uHU7w">
              <node concept="3cmrfG" id="23xMseUuHXY" role="3uHU7w">
                <property role="3cmrfH" value="100000" />
              </node>
              <node concept="2qAaX$" id="23xMseUuHGb" role="3uHU7B">
                <ref role="2qAaXF" node="23xMseUuFDz" resolve="backupValue" />
              </node>
            </node>
            <node concept="2qAaX$" id="23xMseUuHwr" role="3uHU7B">
              <ref role="2qAaXF" node="23xMseUtJwq" resolve="isInBalance" />
            </node>
          </node>
          <node concept="3clFbS" id="23xMseUuHwh" role="3clFbx">
            <node concept="3cpWs6" id="23xMseUuIec" role="3cqZAp">
              <node concept="3clFbT" id="23xMseUuIew" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="23xMseUuIfc" role="3cqZAp">
          <node concept="3clFbS" id="23xMseUuIfe" role="3clFbx">
            <node concept="3cpWs6" id="23xMseUuINw" role="3cqZAp">
              <node concept="3clFbT" id="23xMseUuIO1" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="23xMseUuIJZ" role="3clFbw">
            <node concept="3fqX7Q" id="23xMseUuILq" role="3uHU7w">
              <node concept="2qAaX$" id="23xMseUuIMq" role="3fr31v">
                <ref role="2qAaXF" node="23xMseUuFL8" resolve="isRisky" />
              </node>
            </node>
            <node concept="1Wc70l" id="23xMseUuIrD" role="3uHU7B">
              <node concept="3fqX7Q" id="23xMseUuIfN" role="3uHU7B">
                <node concept="2qAaX$" id="23xMseUuIgb" role="3fr31v">
                  <ref role="2qAaXF" node="23xMseUtJwq" resolve="isInBalance" />
                </node>
              </node>
              <node concept="3eOSWO" id="23xMseUuIIo" role="3uHU7w">
                <node concept="2qAaX$" id="23xMseUuIsq" role="3uHU7B">
                  <ref role="2qAaXF" node="23xMseUuFDz" resolve="backupValue" />
                </node>
                <node concept="70n5B" id="23xMseUuIJa" role="3uHU7w">
                  <ref role="70ssT" node="4qqfUlqtg5H" resolve="load amount" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="23xMseUuIP3" role="3cqZAp">
          <node concept="3clFbT" id="23xMseUuIQc" role="3cqZAk" />
        </node>
      </node>
      <node concept="2qgqwg" id="23xMseUCgjB" role="2qAv_b" />
    </node>
    <node concept="13S77e" id="23xMseUuHuZ" role="13SN8L" />
    <node concept="6ZlIT" id="23xMseUt3Xk" role="13SN8L">
      <property role="TrG5h" value="accepted" />
      <property role="13YcsM" value="23xMseUC677/logical" />
      <node concept="2qAaX$" id="23xMseUCD54" role="70dZf">
        <ref role="2qAaXF" node="23xMseUuHt8" resolve="accept" />
      </node>
    </node>
    <node concept="13S77e" id="4qqfUlqtfDn" role="13SN8L" />
    <node concept="1Pa9Pv" id="33wun1DvkpY" role="1p$NOl">
      <node concept="1PaTwC" id="33wun1DvkpZ" role="1PaQFQ">
        <node concept="3oM_SD" id="33wun1Dvkq1" role="1PaTwD">
          <property role="3oM_SC" value="Evaluates" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvkq2" role="1PaTwD">
          <property role="3oM_SC" value="whether" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvkq3" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvkq4" role="1PaTwD">
          <property role="3oM_SC" value="mortgage" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvkq5" role="1PaTwD">
          <property role="3oM_SC" value="application" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvkq6" role="1PaTwD">
          <property role="3oM_SC" value="is" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvkq7" role="1PaTwD">
          <property role="3oM_SC" value="accepted" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvkq8" role="1PaTwD">
          <property role="3oM_SC" value="based" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvkq9" role="1PaTwD">
          <property role="3oM_SC" value="on" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvkqa" role="1PaTwD">
          <property role="3oM_SC" value="monthly" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvkqb" role="1PaTwD">
          <property role="3oM_SC" value="income," />
        </node>
        <node concept="3oM_SD" id="33wun1Dvkqc" role="1PaTwD">
          <property role="3oM_SC" value="spending," />
        </node>
        <node concept="3oM_SD" id="33wun1Dvkqd" role="1PaTwD">
          <property role="3oM_SC" value="existing" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvkqe" role="1PaTwD">
          <property role="3oM_SC" value="loan" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvkqf" role="1PaTwD">
          <property role="3oM_SC" value="payments," />
        </node>
        <node concept="3oM_SD" id="33wun1Dvkqg" role="1PaTwD">
          <property role="3oM_SC" value="requested" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvkqh" role="1PaTwD">
          <property role="3oM_SC" value="loan" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvkqi" role="1PaTwD">
          <property role="3oM_SC" value="amount," />
        </node>
        <node concept="3oM_SD" id="33wun1Dvkqj" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvkqk" role="1PaTwD">
          <property role="3oM_SC" value="applicant" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvkql" role="1PaTwD">
          <property role="3oM_SC" value="risk" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvkqm" role="1PaTwD">
          <property role="3oM_SC" value="profile." />
        </node>
      </node>
    </node>
  </node>
  <node concept="6YmkL" id="4qqfUlqtbL4">
    <property role="TrG5h" value="Mortgage Simulation" />
    <node concept="6Yz2K" id="5c4rtvXS1jJ" role="13SN8L">
      <property role="TrG5h" value="Loan ammount" />
      <property role="13YcsM" value="1Oh785uUtIQ/amount" />
    </node>
    <node concept="6Yz2K" id="5c4rtvXS1jP" role="13SN8L">
      <property role="TrG5h" value="Interest rate" />
      <property role="13YcsM" value="1Oh785uUtIR/percent" />
    </node>
    <node concept="6Yz2K" id="5c4rtvXS1jX" role="13SN8L">
      <property role="TrG5h" value="Monthly payment" />
      <property role="13YcsM" value="1Oh785uUtIQ/amount" />
    </node>
    <node concept="13S77e" id="5c4rtvXSiEY" role="13SN8L" />
    <node concept="2IOoT$" id="5c4rtvXSiFr" role="13SN8L">
      <property role="TrG5h" value="result" />
      <node concept="2YIFZM" id="5c4rtvXSj9C" role="2IOoTz">
        <ref role="37wK5l" to="npo5:5c4rtvXSiRh" resolve="simulateMortgage" />
        <ref role="1Pybhc" to="npo5:23xMseU$JuM" resolve="SimulationFunctions" />
        <node concept="70n5B" id="5c4rtvXSjac" role="37wK5m">
          <ref role="70ssT" node="5c4rtvXS1jJ" resolve="Loan ammount" />
        </node>
        <node concept="70n5B" id="5c4rtvXSjbv" role="37wK5m">
          <ref role="70ssT" node="5c4rtvXS1jP" resolve="Interest rate" />
        </node>
        <node concept="70n5B" id="5c4rtvXSjcX" role="37wK5m">
          <ref role="70ssT" node="5c4rtvXS1jX" resolve="Monthly payment" />
        </node>
      </node>
    </node>
    <node concept="13S77e" id="5c4rtvXSiFF" role="13SN8L" />
    <node concept="2q_vqQ" id="5c4rtvXS_$n" role="13SN8L">
      <property role="TrG5h" value="accumulated interest" />
      <node concept="3clFbS" id="5c4rtvXS_$p" role="2q_06$">
        <node concept="3clFbJ" id="5c4rtvXS_Qi" role="3cqZAp">
          <node concept="3eOSWO" id="5c4rtvXSBJ9" role="3clFbw">
            <node concept="3cmrfG" id="5c4rtvXSBJc" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="5c4rtvXSAfq" role="3uHU7B">
              <node concept="2IR5_U" id="5c4rtvXS_Qu" role="2Oq$k0">
                <ref role="2IR5_T" node="5c4rtvXSiFr" resolve="result" />
              </node>
              <node concept="liA8E" id="5c4rtvXSAY6" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5c4rtvXS_Qk" role="3clFbx">
            <node concept="3cpWs6" id="5c4rtvXSBWs" role="3cqZAp">
              <node concept="2YIFZM" id="5c4rtvXSGwG" role="3cqZAk">
                <ref role="37wK5l" to="wyt6:~Math.round(double)" resolve="round" />
                <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                <node concept="2OqwBi" id="5c4rtvXSCkm" role="37wK5m">
                  <node concept="2OqwBi" id="5c4rtvXSBWw" role="2Oq$k0">
                    <node concept="2IR5_U" id="5c4rtvXSBWx" role="2Oq$k0">
                      <ref role="2IR5_T" node="5c4rtvXSiFr" resolve="result" />
                    </node>
                    <node concept="liA8E" id="5c4rtvXSBWy" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                      <node concept="3cpWsd" id="5c4rtvXSBWz" role="37wK5m">
                        <node concept="3cmrfG" id="5c4rtvXSBW$" role="3uHU7w">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="2OqwBi" id="5c4rtvXSBW_" role="3uHU7B">
                          <node concept="2IR5_U" id="5c4rtvXSBWA" role="2Oq$k0">
                            <ref role="2IR5_T" node="5c4rtvXSiFr" resolve="result" />
                          </node>
                          <node concept="liA8E" id="5c4rtvXSBWB" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OwXpG" id="5c4rtvXSCJU" role="2OqNvi">
                    <ref role="2Oxat5" to="npo5:5c4rtvXSfpx" resolve="accumulatedInterest" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5c4rtvXSD6p" role="9aQIa">
            <node concept="3clFbS" id="5c4rtvXSD6q" role="9aQI4">
              <node concept="3cpWs6" id="5c4rtvXSDmm" role="3cqZAp">
                <node concept="3cmrfG" id="5c4rtvXSDJc" role="3cqZAk">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2qgqwh" id="5c4rtvXS_Q4" role="2qAv_b" />
    </node>
    <node concept="6ZlIT" id="5c4rtvXSiF9" role="13SN8L">
      <property role="TrG5h" value="Number of months" />
      <property role="13YcsM" value="1Oh785uVB3d/numeric" />
      <node concept="2OqwBi" id="5c4rtvXSjuq" role="70dZf">
        <node concept="2IR5_U" id="5c4rtvXSjdL" role="2Oq$k0">
          <ref role="2IR5_T" node="5c4rtvXSiFr" resolve="result" />
        </node>
        <node concept="liA8E" id="5c4rtvXSkdD" role="2OqNvi">
          <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
        </node>
      </node>
    </node>
    <node concept="6ZlIT" id="5c4rtvXSygq" role="13SN8L">
      <property role="TrG5h" value="Accumulated interest" />
      <property role="13YcsM" value="1Oh785uVB3d/numeric" />
      <node concept="2qAaX$" id="5c4rtvXSE9R" role="70dZf">
        <ref role="2qAaXF" node="5c4rtvXS_$n" resolve="accumulated interest" />
      </node>
    </node>
    <node concept="2ITD_V" id="5c4rtvXT5IU" role="13SN8L">
      <property role="TrG5h" value="Overview" />
      <node concept="2ShNRf" id="5c4rtvXTz77" role="2ITD_U">
        <node concept="1pGfFk" id="5c4rtvXTzch" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" to="npo5:5c4rtvXTaqD" resolve="SimulationFunctions.MortgageDataWrapper" />
          <node concept="2IR5_U" id="5c4rtvXTzcv" role="37wK5m">
            <ref role="2IR5_T" node="5c4rtvXSiFr" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1Pa9Pv" id="33wun1DvliB" role="1p$NOl">
      <node concept="1PaTwC" id="33wun1DvliC" role="1PaQFQ">
        <node concept="3oM_SD" id="33wun1DvliE" role="1PaTwD">
          <property role="3oM_SC" value="Simulates" />
        </node>
        <node concept="3oM_SD" id="33wun1DvliF" role="1PaTwD">
          <property role="3oM_SC" value="mortgage" />
        </node>
        <node concept="3oM_SD" id="33wun1DvliG" role="1PaTwD">
          <property role="3oM_SC" value="repayment" />
        </node>
        <node concept="3oM_SD" id="33wun1DvliH" role="1PaTwD">
          <property role="3oM_SC" value="over" />
        </node>
        <node concept="3oM_SD" id="33wun1DvliI" role="1PaTwD">
          <property role="3oM_SC" value="time" />
        </node>
        <node concept="3oM_SD" id="33wun1DvliJ" role="1PaTwD">
          <property role="3oM_SC" value="from" />
        </node>
        <node concept="3oM_SD" id="33wun1DvliK" role="1PaTwD">
          <property role="3oM_SC" value="loan" />
        </node>
        <node concept="3oM_SD" id="33wun1DvliL" role="1PaTwD">
          <property role="3oM_SC" value="amount," />
        </node>
        <node concept="3oM_SD" id="33wun1DvliM" role="1PaTwD">
          <property role="3oM_SC" value="interest" />
        </node>
        <node concept="3oM_SD" id="33wun1DvliN" role="1PaTwD">
          <property role="3oM_SC" value="rate," />
        </node>
        <node concept="3oM_SD" id="33wun1DvliO" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="33wun1DvliP" role="1PaTwD">
          <property role="3oM_SC" value="monthly" />
        </node>
        <node concept="3oM_SD" id="33wun1DvliQ" role="1PaTwD">
          <property role="3oM_SC" value="payment," />
        </node>
        <node concept="3oM_SD" id="33wun1DvliR" role="1PaTwD">
          <property role="3oM_SC" value="reporting" />
        </node>
        <node concept="3oM_SD" id="33wun1DvliS" role="1PaTwD">
          <property role="3oM_SC" value="repayment" />
        </node>
        <node concept="3oM_SD" id="33wun1DvliT" role="1PaTwD">
          <property role="3oM_SC" value="duration," />
        </node>
        <node concept="3oM_SD" id="33wun1DvliU" role="1PaTwD">
          <property role="3oM_SC" value="accumulated" />
        </node>
        <node concept="3oM_SD" id="33wun1DvliV" role="1PaTwD">
          <property role="3oM_SC" value="interest," />
        </node>
        <node concept="3oM_SD" id="33wun1DvliW" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="33wun1DvliX" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="33wun1DvliY" role="1PaTwD">
          <property role="3oM_SC" value="monthly" />
        </node>
        <node concept="3oM_SD" id="33wun1DvliZ" role="1PaTwD">
          <property role="3oM_SC" value="overview" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvlj0" role="1PaTwD">
          <property role="3oM_SC" value="table." />
        </node>
      </node>
    </node>
  </node>
  <node concept="6YmkL" id="4qqfUlqtfyV">
    <property role="TrG5h" value="Tax Form" />
    <node concept="6Yz2K" id="23xMseUOoCX" role="13SN8L">
      <property role="TrG5h" value="Gross income from employment" />
      <property role="13YcsM" value="1Oh785uUtIQ/amount" />
    </node>
    <node concept="6Yz2K" id="23xMseUOoD5" role="13SN8L">
      <property role="TrG5h" value="Gross income from renting out" />
      <property role="13YcsM" value="1Oh785uUtIQ/amount" />
    </node>
    <node concept="6Yz2K" id="23xMseUOoDE" role="13SN8L">
      <property role="TrG5h" value="Capital gains" />
      <property role="13YcsM" value="1Oh785uUtIQ/amount" />
    </node>
    <node concept="6Yz2K" id="23xMseUOoGN" role="13SN8L">
      <property role="TrG5h" value="Capital loss in previous year" />
      <property role="13YcsM" value="1Oh785uUtIQ/amount" />
    </node>
    <node concept="6Yz2K" id="23xMseUOpx8" role="13SN8L">
      <property role="TrG5h" value="Paid towards taxes" />
      <property role="13YcsM" value="1Oh785uUtIQ/amount" />
    </node>
    <node concept="13S77e" id="5c4rtvXL$SV" role="13SN8L" />
    <node concept="NfP_W" id="23xMseUOoM5" role="13SN8L">
      <property role="TrG5h" value="Level of disability" />
      <property role="sZ4Cd" value="1Oh785uUtIQ/amount" />
      <node concept="NfP_Z" id="23xMseUOoOk" role="NfP$X">
        <property role="TrG5h" value="None" />
        <property role="NfP_y" value="20" />
      </node>
      <node concept="NfP_Z" id="23xMseUOoQb" role="NfP$X">
        <property role="TrG5h" value="Light" />
        <property role="NfP_y" value="50" />
      </node>
      <node concept="NfP_Z" id="23xMseUOoSl" role="NfP$X">
        <property role="TrG5h" value="Modest" />
        <property role="NfP_y" value="70" />
      </node>
      <node concept="NfP_Z" id="23xMseUOoYj" role="NfP$X">
        <property role="TrG5h" value="High" />
        <property role="NfP_y" value="100" />
      </node>
    </node>
    <node concept="13S77e" id="5c4rtvXLMic" role="13SN8L" />
    <node concept="NfP_W" id="23xMseUOp04" role="13SN8L">
      <property role="TrG5h" value="Number of children" />
      <property role="sZ4Cd" value="1Oh785uUtIQ/amount" />
      <node concept="NfP_Z" id="23xMseUOp3r" role="NfP$X">
        <property role="TrG5h" value="0" />
        <property role="NfP_y" value="0" />
      </node>
      <node concept="NfP_Z" id="23xMseUOp4I" role="NfP$X">
        <property role="TrG5h" value="1" />
        <property role="NfP_y" value="15" />
      </node>
      <node concept="NfP_Z" id="23xMseUOp62" role="NfP$X">
        <property role="TrG5h" value="2" />
        <property role="NfP_y" value="30" />
      </node>
      <node concept="NfP_Z" id="23xMseUOp7n" role="NfP$X">
        <property role="TrG5h" value="3 or more" />
        <property role="NfP_y" value="50" />
      </node>
    </node>
    <node concept="13S77e" id="23xMseUOpt0" role="13SN8L" />
    <node concept="6ZlIT" id="23xMseUOpTe" role="13SN8L">
      <property role="TrG5h" value="Taxable income" />
      <property role="13YcsM" value="1Oh785uUtIQ/amount" />
      <node concept="2qAaX$" id="23xMseUPxn8" role="70dZf">
        <ref role="2qAaXF" node="23xMseUPwk6" resolve="calculateNonNegativeIncome" />
      </node>
    </node>
    <node concept="6ZlIT" id="23xMseUOq$G" role="13SN8L">
      <property role="TrG5h" value="Taxable capital income" />
      <property role="13YcsM" value="1Oh785uUtIQ/amount" />
      <node concept="2YIFZM" id="23xMseUOqEd" role="70dZf">
        <ref role="37wK5l" to="wyt6:~Math.max(double,double)" resolve="max" />
        <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
        <node concept="3cpWsd" id="23xMseUOqST" role="37wK5m">
          <node concept="70n5B" id="23xMseUOqTD" role="3uHU7w">
            <ref role="70ssT" node="23xMseUOoGN" resolve="Capital loss in previous year" />
          </node>
          <node concept="70n5B" id="23xMseUOqEL" role="3uHU7B">
            <ref role="70ssT" node="23xMseUOoDE" resolve="Capital gains" />
          </node>
        </node>
        <node concept="3cmrfG" id="23xMseUOrr_" role="37wK5m">
          <property role="3cmrfH" value="0" />
        </node>
      </node>
    </node>
    <node concept="13S77e" id="5c4rtvXRZ_w" role="13SN8L" />
    <node concept="NfP_W" id="23xMseUOpi2" role="13SN8L">
      <property role="TrG5h" value="Living area" />
      <property role="sZ4Cd" value="1Oh785uUtIR/percent" />
      <node concept="NfP_Z" id="23xMseUOplc" role="NfP$X">
        <property role="TrG5h" value="City" />
        <property role="NfP_y" value="3" />
      </node>
      <node concept="NfP_Z" id="23xMseUOpnK" role="NfP$X">
        <property role="TrG5h" value="Town" />
        <property role="NfP_y" value="2" />
      </node>
      <node concept="NfP_Z" id="23xMseUOpp4" role="NfP$X">
        <property role="TrG5h" value="Rural" />
        <property role="NfP_y" value="1" />
      </node>
    </node>
    <node concept="2IOoT$" id="5c4rtvXQ2VL" role="13SN8L">
      <property role="TrG5h" value="base tax rate" />
      <node concept="3cmrfG" id="5c4rtvXQ3fU" role="2IOoTz">
        <property role="3cmrfH" value="15" />
      </node>
    </node>
    <node concept="6ZlIT" id="5c4rtvXRR1k" role="13SN8L">
      <property role="TrG5h" value="Base tax" />
      <property role="13YcsM" value="1Oh785uUtIR/percent" />
      <node concept="2IR5_U" id="5c4rtvXRR45" role="70dZf">
        <ref role="2IR5_T" node="5c4rtvXQ2VL" resolve="base tax rate" />
      </node>
    </node>
    <node concept="13ZTlJ" id="23xMseUOpaO" role="13SN8L">
      <property role="TrG5h" value="Church tax rate increment" />
      <property role="13YcsM" value="1Oh785uUtIR/percent" />
      <property role="13ZTlI" value="0" />
    </node>
    <node concept="6ZlIT" id="23xMseUOqf$" role="13SN8L">
      <property role="TrG5h" value="Applied tax rate" />
      <property role="13YcsM" value="1Oh785uUtIR/percent" />
      <node concept="3cpWs3" id="5c4rtvXRT3C" role="70dZf">
        <node concept="70n5B" id="5c4rtvXRT8r" role="3uHU7w">
          <ref role="70ssT" node="23xMseUOpaO" resolve="Church tax rate increment" />
        </node>
        <node concept="3cpWs3" id="23xMseUOqwG" role="3uHU7B">
          <node concept="2IR5_U" id="5c4rtvXQrcZ" role="3uHU7B">
            <ref role="2IR5_T" node="5c4rtvXQ2VL" resolve="base tax rate" />
          </node>
          <node concept="NfPzC" id="23xMseUOqxj" role="3uHU7w">
            <ref role="NfPzD" node="23xMseUOpi2" resolve="Living area" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13S77e" id="5c4rtvXRZ3I" role="13SN8L" />
    <node concept="2q_vqQ" id="23xMseUPwk6" role="13SN8L">
      <property role="TrG5h" value="calculateNonNegativeIncome" />
      <node concept="3clFbS" id="23xMseUPwk8" role="2q_06$">
        <node concept="3cpWs8" id="23xMseUPwNf" role="3cqZAp">
          <node concept="3cpWsn" id="23xMseUPwNi" role="3cpWs9">
            <property role="TrG5h" value="v" />
            <node concept="10P55v" id="23xMseUPwNe" role="1tU5fm" />
            <node concept="3cpWsd" id="23xMseUPwNy" role="33vP2m">
              <node concept="NfPzC" id="23xMseUPwNz" role="3uHU7w">
                <ref role="NfPzD" node="23xMseUOp04" resolve="Number of children" />
              </node>
              <node concept="3cpWsd" id="23xMseUPwN$" role="3uHU7B">
                <node concept="70n5B" id="23xMseUPwN_" role="3uHU7B">
                  <ref role="70ssT" node="23xMseUOoCX" resolve="Gross income from employment" />
                </node>
                <node concept="NfPzC" id="23xMseUPwNA" role="3uHU7w">
                  <ref role="NfPzD" node="23xMseUOoM5" resolve="Level of disability" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="23xMseUPwOi" role="3cqZAp">
          <node concept="3clFbS" id="23xMseUPwOk" role="3clFbx">
            <node concept="3clFbF" id="23xMseUPxlf" role="3cqZAp">
              <node concept="37vLTI" id="23xMseUPxlu" role="3clFbG">
                <node concept="3cmrfG" id="23xMseUPxlD" role="37vLTx">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="23xMseUPxld" role="37vLTJ">
                  <ref role="3cqZAo" node="23xMseUPwNi" resolve="v" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="23xMseUPx67" role="3clFbw">
            <node concept="3cmrfG" id="23xMseUPx6a" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="23xMseUPwOD" role="3uHU7B">
              <ref role="3cqZAo" node="23xMseUPwNi" resolve="v" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="23xMseUPxmf" role="3cqZAp">
          <node concept="37vLTw" id="5c4rtvXROVX" role="3cqZAk">
            <ref role="3cqZAo" node="23xMseUPwNi" resolve="v" />
          </node>
        </node>
      </node>
      <node concept="2qgqwh" id="23xMseUPwqr" role="2qAv_b" />
    </node>
    <node concept="13S77e" id="23xMseUPwqD" role="13SN8L" />
    <node concept="6ZlIT" id="23xMseUOpuA" role="13SN8L">
      <property role="TrG5h" value="Income tax" />
      <property role="13YcsM" value="1Oh785uUtIQ/amount" />
      <node concept="17qRlL" id="23xMseUOpR8" role="70dZf">
        <node concept="1eOMI4" id="23xMseUOsbW" role="3uHU7B">
          <node concept="3cpWs3" id="23xMseUOsfG" role="1eOMHV">
            <node concept="70n5B" id="23xMseUOsgD" role="3uHU7w">
              <ref role="70ssT" node="23xMseUOoD5" resolve="Gross income from renting out" />
            </node>
            <node concept="3cpWs3" id="23xMseUOsdC" role="3uHU7B">
              <node concept="70n5B" id="23xMseUOsen" role="3uHU7B">
                <ref role="70ssT" node="23xMseUOpTe" resolve="Taxable income" />
              </node>
              <node concept="70n5B" id="23xMseUOpD9" role="3uHU7w">
                <ref role="70ssT" node="23xMseUOq$G" resolve="Taxable capital income" />
              </node>
            </node>
          </node>
        </node>
        <node concept="70n5B" id="23xMseUOsje" role="3uHU7w">
          <ref role="70ssT" node="23xMseUOqf$" resolve="Applied tax rate" />
        </node>
      </node>
    </node>
    <node concept="6ZlIT" id="23xMseUOsNA" role="13SN8L">
      <property role="TrG5h" value="Tax balance to pay" />
      <property role="13YcsM" value="1Oh785uUtIQ/amount" />
      <node concept="3cpWsd" id="23xMseUOtbX" role="70dZf">
        <node concept="70n5B" id="23xMseUOtc$" role="3uHU7w">
          <ref role="70ssT" node="23xMseUOpx8" resolve="Paid towards taxes" />
        </node>
        <node concept="70n5B" id="23xMseUOsXZ" role="3uHU7B">
          <ref role="70ssT" node="23xMseUOpuA" resolve="Income tax" />
        </node>
      </node>
    </node>
    <node concept="1Pa9Pv" id="33wun1Dvmc$" role="1p$NOl">
      <node concept="1PaTwC" id="33wun1Dvmc_" role="1PaQFQ">
        <node concept="3oM_SD" id="33wun1DvmcB" role="1PaTwD">
          <property role="3oM_SC" value="Computes" />
        </node>
        <node concept="3oM_SD" id="33wun1DvmcC" role="1PaTwD">
          <property role="3oM_SC" value="taxable" />
        </node>
        <node concept="3oM_SD" id="33wun1DvmcD" role="1PaTwD">
          <property role="3oM_SC" value="employment" />
        </node>
        <node concept="3oM_SD" id="33wun1DvmcE" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="33wun1DvmcF" role="1PaTwD">
          <property role="3oM_SC" value="capital" />
        </node>
        <node concept="3oM_SD" id="33wun1DvmcG" role="1PaTwD">
          <property role="3oM_SC" value="income," />
        </node>
        <node concept="3oM_SD" id="33wun1DvmcH" role="1PaTwD">
          <property role="3oM_SC" value="applies" />
        </node>
        <node concept="3oM_SD" id="33wun1DvmcI" role="1PaTwD">
          <property role="3oM_SC" value="deductions" />
        </node>
        <node concept="3oM_SD" id="33wun1DvmcJ" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="33wun1DvmcK" role="1PaTwD">
          <property role="3oM_SC" value="disability" />
        </node>
        <node concept="3oM_SD" id="33wun1DvmcL" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="33wun1DvmcM" role="1PaTwD">
          <property role="3oM_SC" value="children" />
        </node>
        <node concept="3oM_SD" id="33wun1DvmcN" role="1PaTwD">
          <property role="3oM_SC" value="along" />
        </node>
        <node concept="3oM_SD" id="33wun1DvmcO" role="1PaTwD">
          <property role="3oM_SC" value="with" />
        </node>
        <node concept="3oM_SD" id="33wun1DvmcP" role="1PaTwD">
          <property role="3oM_SC" value="location" />
        </node>
        <node concept="3oM_SD" id="33wun1DvmcQ" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="33wun1DvmcR" role="1PaTwD">
          <property role="3oM_SC" value="church" />
        </node>
        <node concept="3oM_SD" id="33wun1DvmcS" role="1PaTwD">
          <property role="3oM_SC" value="tax" />
        </node>
        <node concept="3oM_SD" id="33wun1DvmcT" role="1PaTwD">
          <property role="3oM_SC" value="rates," />
        </node>
        <node concept="3oM_SD" id="33wun1DvmcU" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="33wun1DvmcV" role="1PaTwD">
          <property role="3oM_SC" value="determines" />
        </node>
        <node concept="3oM_SD" id="33wun1DvmcW" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="33wun1DvmcX" role="1PaTwD">
          <property role="3oM_SC" value="final" />
        </node>
        <node concept="3oM_SD" id="33wun1DvmcY" role="1PaTwD">
          <property role="3oM_SC" value="tax" />
        </node>
        <node concept="3oM_SD" id="33wun1DvmcZ" role="1PaTwD">
          <property role="3oM_SC" value="balance" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvmd0" role="1PaTwD">
          <property role="3oM_SC" value="due." />
        </node>
      </node>
    </node>
  </node>
  <node concept="6YmkL" id="4qqfUlqtf$d">
    <property role="TrG5h" value="Simple Investment" />
    <node concept="6Yz2K" id="4qqfUlqthek" role="13SN8L">
      <property role="TrG5h" value="Downpayment" />
      <property role="13YcsM" value="1Oh785uUtIQ/amount" />
    </node>
    <node concept="6Yz2K" id="4qqfUlqthgW" role="13SN8L">
      <property role="TrG5h" value="Monthly payment" />
      <property role="13YcsM" value="1Oh785uUtIQ/amount" />
    </node>
    <node concept="6Yz2K" id="4qqfUlqthm8" role="13SN8L">
      <property role="TrG5h" value="Length of the investment" />
      <property role="13YcsM" value="1Oh785uVB3d/other" />
    </node>
    <node concept="13S77e" id="4qqfUlqtjuu" role="13SN8L" />
    <node concept="13ZTlJ" id="4qqfUlqthrL" role="13SN8L">
      <property role="TrG5h" value="Initial fee" />
      <property role="13YcsM" value="1Oh785uUtIQ/amount" />
      <property role="13ZTlI" value="0" />
    </node>
    <node concept="13ZTlJ" id="4qqfUlqthvK" role="13SN8L">
      <property role="TrG5h" value="Monthly fee" />
      <property role="13YcsM" value="1Oh785uUtIQ/amount" />
      <property role="13ZTlI" value="0" />
    </node>
    <node concept="13ZTlJ" id="4qqfUlqth$c" role="13SN8L">
      <property role="TrG5h" value="Inflation" />
      <property role="13YcsM" value="1Oh785uUtIR/percent" />
      <property role="13ZTlI" value="3" />
    </node>
    <node concept="13ZTlJ" id="4qqfUlqthAY" role="13SN8L">
      <property role="TrG5h" value="Interest" />
      <property role="13YcsM" value="1Oh785uUtIR/percent" />
      <property role="13ZTlI" value="5" />
    </node>
    <node concept="13S77e" id="4qqfUlqtjvn" role="13SN8L" />
    <node concept="6ZlIT" id="4qqfUlqthF3" role="13SN8L">
      <property role="TrG5h" value="Nominal profit" />
      <property role="13YcsM" value="1Oh785uUtIQ/amount" />
      <node concept="2YIFZM" id="23xMseUOl41" role="70dZf">
        <ref role="37wK5l" to="npo5:23xMseUOgsh" resolve="compoundInterest" />
        <ref role="1Pybhc" to="npo5:23xMseU$JuM" resolve="SimulationFunctions" />
        <node concept="3cpWsd" id="23xMseUOlhz" role="37wK5m">
          <node concept="70n5B" id="23xMseUOlhU" role="3uHU7w">
            <ref role="70ssT" node="4qqfUlqthrL" resolve="Initial fee" />
          </node>
          <node concept="70n5B" id="23xMseUOl4e" role="3uHU7B">
            <ref role="70ssT" node="4qqfUlqthek" resolve="Downpayment" />
          </node>
        </node>
        <node concept="3cpWsd" id="23xMseUOljy" role="37wK5m">
          <node concept="70n5B" id="23xMseUOlk8" role="3uHU7w">
            <ref role="70ssT" node="4qqfUlqthvK" resolve="Monthly fee" />
          </node>
          <node concept="70n5B" id="23xMseUOliQ" role="3uHU7B">
            <ref role="70ssT" node="4qqfUlqthgW" resolve="Monthly payment" />
          </node>
        </node>
        <node concept="70n5B" id="23xMseUOll_" role="37wK5m">
          <ref role="70ssT" node="4qqfUlqthm8" resolve="Length of the investment" />
        </node>
        <node concept="70n5B" id="23xMseUOlvR" role="37wK5m">
          <ref role="70ssT" node="4qqfUlqthAY" resolve="Interest" />
        </node>
      </node>
    </node>
    <node concept="6ZlIT" id="4qqfUlqthPj" role="13SN8L">
      <property role="TrG5h" value="Nominal amount" />
      <property role="13YcsM" value="1Oh785uUtIQ/amount" />
      <node concept="3cpWs3" id="4qqfUlqti$C" role="70dZf">
        <node concept="17qRlL" id="4qqfUlqtj7t" role="3uHU7w">
          <node concept="70n5B" id="4qqfUlqtjmI" role="3uHU7w">
            <ref role="70ssT" node="4qqfUlqthm8" resolve="Length of the investment" />
          </node>
          <node concept="1eOMI4" id="4qqfUlqti_t" role="3uHU7B">
            <node concept="3cpWsd" id="4qqfUlqtiB_" role="1eOMHV">
              <node concept="70n5B" id="4qqfUlqtiCs" role="3uHU7w">
                <ref role="70ssT" node="4qqfUlqthvK" resolve="Monthly fee" />
              </node>
              <node concept="70n5B" id="4qqfUlqtiAc" role="3uHU7B">
                <ref role="70ssT" node="4qqfUlqthgW" resolve="Monthly payment" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWsd" id="4qqfUlqtiDZ" role="3uHU7B">
          <node concept="70n5B" id="4qqfUlqtiF4" role="3uHU7w">
            <ref role="70ssT" node="4qqfUlqthrL" resolve="Initial fee" />
          </node>
          <node concept="3cpWs3" id="4qqfUlqtikK" role="3uHU7B">
            <node concept="70n5B" id="4qqfUlqthSW" role="3uHU7B">
              <ref role="70ssT" node="4qqfUlqthF3" resolve="Nominal profit" />
            </node>
            <node concept="70n5B" id="4qqfUlqtiln" role="3uHU7w">
              <ref role="70ssT" node="4qqfUlqthek" resolve="Downpayment" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="6ZlIT" id="4qqfUlqthMg" role="13SN8L">
      <property role="TrG5h" value="Real profit" />
      <property role="13YcsM" value="1Oh785uUtIQ/amount" />
      <node concept="3cpWsd" id="23xMseUOmWn" role="70dZf">
        <node concept="17qRlL" id="23xMseUOmZR" role="3uHU7w">
          <node concept="70n5B" id="23xMseUOn0L" role="3uHU7w">
            <ref role="70ssT" node="4qqfUlqthm8" resolve="Length of the investment" />
          </node>
          <node concept="17qRlL" id="23xMseUOmYc" role="3uHU7B">
            <node concept="70n5B" id="23xMseUOmWY" role="3uHU7B">
              <ref role="70ssT" node="4qqfUlqthPj" resolve="Nominal amount" />
            </node>
            <node concept="70n5B" id="23xMseUOmYS" role="3uHU7w">
              <ref role="70ssT" node="4qqfUlqth$c" resolve="Inflation" />
            </node>
          </node>
        </node>
        <node concept="70n5B" id="23xMseUOmIo" role="3uHU7B">
          <ref role="70ssT" node="4qqfUlqthF3" resolve="Nominal profit" />
        </node>
      </node>
    </node>
    <node concept="6ZlIT" id="4qqfUlqtjpe" role="13SN8L">
      <property role="TrG5h" value="Real amount" />
      <property role="13YcsM" value="1Oh785uUtIQ/amount" />
      <node concept="3cpWsd" id="4qqfUlqtjtj" role="70dZf">
        <node concept="70n5B" id="4qqfUlqtjse" role="3uHU7B">
          <ref role="70ssT" node="4qqfUlqthPj" resolve="Nominal amount" />
        </node>
        <node concept="17qRlL" id="23xMseUOnhY" role="3uHU7w">
          <node concept="70n5B" id="23xMseUOnjj" role="3uHU7w">
            <ref role="70ssT" node="4qqfUlqthm8" resolve="Length of the investment" />
          </node>
          <node concept="17qRlL" id="23xMseUOnfV" role="3uHU7B">
            <node concept="70n5B" id="23xMseUOn2f" role="3uHU7B">
              <ref role="70ssT" node="4qqfUlqthPj" resolve="Nominal amount" />
            </node>
            <node concept="70n5B" id="23xMseUOnh2" role="3uHU7w">
              <ref role="70ssT" node="4qqfUlqth$c" resolve="Inflation" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1Pa9Pv" id="33wun1Dvneo" role="1p$NOl">
      <node concept="1PaTwC" id="33wun1Dvnep" role="1PaQFQ">
        <node concept="3oM_SD" id="33wun1Dvner" role="1PaTwD">
          <property role="3oM_SC" value="Estimates" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvnes" role="1PaTwD">
          <property role="3oM_SC" value="nominal" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvnet" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvneu" role="1PaTwD">
          <property role="3oM_SC" value="inflation-adjusted" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvnev" role="1PaTwD">
          <property role="3oM_SC" value="investment" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvnew" role="1PaTwD">
          <property role="3oM_SC" value="profit" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvnex" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvney" role="1PaTwD">
          <property role="3oM_SC" value="total" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvnez" role="1PaTwD">
          <property role="3oM_SC" value="amount" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvne$" role="1PaTwD">
          <property role="3oM_SC" value="from" />
        </node>
        <node concept="3oM_SD" id="33wun1Dvne_" role="1PaTwD">
          <property role="3oM_SC" value="initial" />
        </node>
        <node concept="3oM_SD" id="33wun1DvneA" role="1PaTwD">
          <property role="3oM_SC" value="downpayment," />
        </node>
        <node concept="3oM_SD" id="33wun1DvneB" role="1PaTwD">
          <property role="3oM_SC" value="monthly" />
        </node>
        <node concept="3oM_SD" id="33wun1DvneC" role="1PaTwD">
          <property role="3oM_SC" value="contributions," />
        </node>
        <node concept="3oM_SD" id="33wun1DvneD" role="1PaTwD">
          <property role="3oM_SC" value="fees," />
        </node>
        <node concept="3oM_SD" id="33wun1DvneE" role="1PaTwD">
          <property role="3oM_SC" value="interest" />
        </node>
        <node concept="3oM_SD" id="33wun1DvneF" role="1PaTwD">
          <property role="3oM_SC" value="rate," />
        </node>
        <node concept="3oM_SD" id="33wun1DvneG" role="1PaTwD">
          <property role="3oM_SC" value="inflation," />
        </node>
        <node concept="3oM_SD" id="33wun1DvneH" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="33wun1DvneI" role="1PaTwD">
          <property role="3oM_SC" value="investment" />
        </node>
        <node concept="3oM_SD" id="33wun1DvneJ" role="1PaTwD">
          <property role="3oM_SC" value="duration." />
        </node>
      </node>
    </node>
  </node>
</model>

