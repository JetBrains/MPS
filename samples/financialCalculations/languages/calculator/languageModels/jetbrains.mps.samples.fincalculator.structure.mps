<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:87765d2d-a756-4883-9acc-6a42e5bf6c24(jetbrains.mps.samples.fincalculator.structure)">
  <persistence version="9" />
  <languages>
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="4" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="4fqr" ref="r:fa713d69-08ea-4732-b1f2-cb07f9e103ef(jetbrains.mps.execution.util.structure)" />
    <import index="zqge" ref="r:59e90602-6655-4552-86eb-441a42a9a0e4(jetbrains.mps.lang.text.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="3348158742936976480" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ng" index="25R33">
        <property id="1421157252384165432" name="memberId" index="3tVfz5" />
      </concept>
      <concept id="3348158742936976479" name="jetbrains.mps.lang.structure.structure.EnumerationDeclaration" flags="ng" index="25R3W">
        <child id="3348158742936976577" name="members" index="25R1y" />
      </concept>
      <concept id="7862711839422615209" name="jetbrains.mps.lang.structure.structure.DocumentedNodeAnnotation" flags="ng" index="t5JxF">
        <property id="7862711839422615217" name="text" index="t5JxN" />
      </concept>
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="5404671619616246344" name="staticScope" index="2_RsDV" />
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
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
  </registry>
  <node concept="1TIwiD" id="i46Ymgg">
    <property role="19KtqR" value="true" />
    <property role="TrG5h" value="Calculator" />
    <property role="EcuMT" value="1241362555920" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="33wun1DsOh_" role="1TKVEi">
      <property role="IQ2ns" value="3521948432316187749" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="description" />
      <ref role="20lvS9" to="zqge:2cLqkTm6vgh" resolve="Text" />
    </node>
    <node concept="1TJgyj" id="1Oh785uWyUK" role="1TKVEi">
      <property role="IQ2ns" value="2094486643673280176" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="commands" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="1Oh785uWmPg" resolve="Command" />
    </node>
    <node concept="PrWs8" id="i46YoDm" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="1Uo8p4UaOxy" role="PzmwI">
      <ref role="PrY4T" to="4fqr:431DWIovi3l" resolve="IMainClass" />
    </node>
    <node concept="PrWs8" id="3ASi0WxiFmq" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
  </node>
  <node concept="1TIwiD" id="i46Yz6h">
    <property role="TrG5h" value="InputField" />
    <property role="EcuMT" value="1241362608529" />
    <property role="34LRSv" value="input" />
    <property role="R4oN_" value="Allows the user to insert a value of a given value_kind, in BaseLanguage, the Java type of InputField's value is 'double'" />
    <ref role="1TJDcQ" node="1Oh785uWQ0G" resolve="Field" />
    <node concept="PrWs8" id="i46YChP" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="i46ZlEo">
    <property role="TrG5h" value="OutputField" />
    <property role="EcuMT" value="1241362815640" />
    <property role="34LRSv" value="output" />
    <property role="R4oN_" value="A field that displays a calculated value using an expression on input fields and parameters" />
    <ref role="1TJDcQ" node="1Oh785uWQ0G" resolve="Field" />
    <node concept="1TJgyj" id="i470dVI" role="1TKVEi">
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1241363046126" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="1Oh785uWpBP" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="i470n16">
    <property role="TrG5h" value="FieldReference" />
    <property role="2_RsDV" value="4G1g3fIR8JG/none" />
    <property role="EcuMT" value="1241363083334" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="i470soo" role="1TKVEi">
      <property role="20kJfa" value="field" />
      <property role="20lbJX" value="fLJekj4/1" />
      <property role="IQ2ns" value="1241363105304" />
      <ref role="20lvS9" node="1Oh785uWQ0G" resolve="Field" />
    </node>
  </node>
  <node concept="25R3W" id="1Oh785uUtIP">
    <property role="3F6X1D" value="2094486643672734645" />
    <property role="TrG5h" value="ValueKind" />
    <node concept="25R33" id="1Oh785uUtIQ" role="25R1y">
      <property role="3tVfz5" value="2094486643672734646" />
      <property role="TrG5h" value="amount" />
    </node>
    <node concept="25R33" id="1Oh785uUtIR" role="25R1y">
      <property role="3tVfz5" value="2094486643672734647" />
      <property role="TrG5h" value="percent" />
    </node>
    <node concept="25R33" id="23xMseUC677" role="25R1y">
      <property role="3tVfz5" value="2369396721460470215" />
      <property role="TrG5h" value="logical" />
    </node>
    <node concept="25R33" id="23xMseUC67c" role="25R1y">
      <property role="3tVfz5" value="2369396721460470220" />
      <property role="TrG5h" value="textual" />
    </node>
    <node concept="25R33" id="1Oh785uVB3d" role="25R1y">
      <property role="3tVfz5" value="2094486643673034957" />
      <property role="TrG5h" value="numeric" />
    </node>
    <node concept="t5JxF" id="4luVC1jg5Wh" role="lGtFl">
      <property role="t5JxN" value="WHEN creating or updating fincalculator forms THEN set ValueKind explicitly (amount or number)" />
    </node>
  </node>
  <node concept="1TIwiD" id="1Oh785uVCBI">
    <property role="EcuMT" value="2094486643673041390" />
    <property role="TrG5h" value="Parameter" />
    <property role="34LRSv" value="parameter" />
    <property role="R4oN_" value="An input field with a default value" />
    <ref role="1TJDcQ" node="i46Yz6h" resolve="InputField" />
    <node concept="1TJgyi" id="1Oh785uVCBJ" role="1TKVEl">
      <property role="IQ2nx" value="2094486643673041391" />
      <property role="TrG5h" value="default_value" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="1Oh785uWmPf">
    <property role="EcuMT" value="2094486643673230671" />
    <property role="TrG5h" value="EmptyLine" />
    <ref role="1TJDcQ" node="1Oh785uWmPg" resolve="Command" />
  </node>
  <node concept="1TIwiD" id="1Oh785uWmPg">
    <property role="EcuMT" value="2094486643673230672" />
    <property role="TrG5h" value="Command" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="1Oh785uWQ0G">
    <property role="EcuMT" value="2094486643673358380" />
    <property role="TrG5h" value="Field" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" node="1Oh785uWmPg" resolve="Command" />
    <node concept="1TJgyi" id="1Oh785uUtIN" role="1TKVEl">
      <property role="IQ2nx" value="2094486643672734643" />
      <property role="TrG5h" value="value_kind" />
      <ref role="AX2Wp" node="1Oh785uUtIP" resolve="ValueKind" />
    </node>
    <node concept="PrWs8" id="1Oh785uWQ0H" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="49kBZ1Lqm_O">
    <property role="EcuMT" value="4779620959590639988" />
    <property role="TrG5h" value="Logical" />
    <property role="34LRSv" value="logical" />
    <ref role="1TJDcQ" node="1Oh785uWmPg" resolve="Command" />
    <node concept="PrWs8" id="49kBZ1Lqm_P" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="t5JxF" id="4luVC1jgEaA" role="lGtFl">
      <property role="t5JxN" value="A check box input that evaluates to a boolean value true/false. Refered to by instances of 'LogicalReference' in 'Calculation'" />
    </node>
  </node>
  <node concept="1TIwiD" id="49kBZ1LqmAC">
    <property role="EcuMT" value="4779620959590640040" />
    <property role="TrG5h" value="LogicalReference" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="49kBZ1LqmAD" role="1TKVEi">
      <property role="IQ2ns" value="4779620959590640041" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="49kBZ1Lqm_O" resolve="Logical" />
    </node>
  </node>
  <node concept="1TIwiD" id="49kBZ1LqWqc">
    <property role="EcuMT" value="4779620959590794892" />
    <property role="TrG5h" value="Selector" />
    <property role="34LRSv" value="selector" />
    <ref role="1TJDcQ" node="1Oh785uWmPg" resolve="Command" />
    <node concept="1TJgyi" id="4qqfUlqpBmC" role="1TKVEl">
      <property role="IQ2nx" value="5087448708487214504" />
      <property role="TrG5h" value="value_kind" />
      <ref role="AX2Wp" node="1Oh785uUtIP" resolve="ValueKind" />
    </node>
    <node concept="1TJgyj" id="49kBZ1LqWrd" role="1TKVEi">
      <property role="IQ2ns" value="4779620959590794957" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="options" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="49kBZ1LqWqf" resolve="Option" />
    </node>
    <node concept="PrWs8" id="49kBZ1LqWqd" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="t5JxF" id="4luVC1jgEa$" role="lGtFl">
      <property role="t5JxN" value="A drop-down box style input field, options as 'Option' concept instances, set value_kind to the desired type of selector's values" />
    </node>
  </node>
  <node concept="1TIwiD" id="49kBZ1LqWqf">
    <property role="EcuMT" value="4779620959590794895" />
    <property role="TrG5h" value="Option" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="49kBZ1LqWqi" role="1TKVEl">
      <property role="IQ2nx" value="4779620959590794898" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="49kBZ1LqWqg" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="t5JxF" id="4luVC1jgEa_" role="lGtFl">
      <property role="t5JxN" value="An option for Selector" />
    </node>
  </node>
  <node concept="1TIwiD" id="49kBZ1LqWso">
    <property role="EcuMT" value="4779620959590795032" />
    <property role="TrG5h" value="SelectorReference" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="49kBZ1LqWsp" role="1TKVEi">
      <property role="IQ2ns" value="4779620959590795033" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="49kBZ1LqWqc" resolve="Selector" />
    </node>
  </node>
  <node concept="1TIwiD" id="23xMseUt3XP">
    <property role="EcuMT" value="2369396721457577845" />
    <property role="TrG5h" value="Calculation" />
    <property role="34LRSv" value="calculation" />
    <property role="R4oN_" value="Allows for a BaseLanguage calculation to be created as Java (BaseLanguage) statements with a ReturnStatement returning the required result" />
    <ref role="1TJDcQ" node="1Oh785uWmPg" resolve="Command" />
    <node concept="1TJgyj" id="23xMseUtsxB" role="1TKVEi">
      <property role="IQ2ns" value="2369396721457678439" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
    <node concept="1TJgyj" id="23xMseUu328" role="1TKVEi">
      <property role="IQ2ns" value="2369396721457836168" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="returnType" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="23xMseUC67l" resolve="CalculatorType" />
    </node>
    <node concept="PrWs8" id="23xMseUtmRZ" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="23xMseUu2cz" role="PzmwI">
      <ref role="PrY4T" to="tpee:i2fhoOR" resolve="IMethodLike" />
    </node>
  </node>
  <node concept="1TIwiD" id="23xMseUumqB">
    <property role="EcuMT" value="2369396721457915559" />
    <property role="TrG5h" value="CalculationReference" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="23xMseUumqC" role="1TKVEi">
      <property role="IQ2ns" value="2369396721457915560" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="23xMseUt3XP" resolve="Calculation" />
    </node>
  </node>
  <node concept="1TIwiD" id="23xMseUC67i">
    <property role="EcuMT" value="2369396721460470226" />
    <property role="TrG5h" value="NumericType" />
    <property role="34LRSv" value="numeric" />
    <property role="3GE5qa" value="type" />
    <ref role="1TJDcQ" node="23xMseUC67l" resolve="CalculatorType" />
  </node>
  <node concept="1TIwiD" id="23xMseUC67j">
    <property role="EcuMT" value="2369396721460470227" />
    <property role="3GE5qa" value="type" />
    <property role="TrG5h" value="LogicalType" />
    <property role="34LRSv" value="logical" />
    <ref role="1TJDcQ" node="23xMseUC67l" resolve="CalculatorType" />
  </node>
  <node concept="1TIwiD" id="23xMseUC67k">
    <property role="EcuMT" value="2369396721460470228" />
    <property role="3GE5qa" value="type" />
    <property role="TrG5h" value="TextualType" />
    <property role="34LRSv" value="textual" />
    <ref role="1TJDcQ" node="23xMseUC67l" resolve="CalculatorType" />
  </node>
  <node concept="1TIwiD" id="23xMseUC67l">
    <property role="EcuMT" value="2369396721460470229" />
    <property role="3GE5qa" value="type" />
    <property role="TrG5h" value="CalculatorType" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="5c4rtvXPueN">
    <property role="EcuMT" value="5982026979498910643" />
    <property role="TrG5h" value="CalculationValue" />
    <property role="34LRSv" value="value" />
    <property role="R4oN_" value="A simple constant, its type depends on the numeric type of the initializer" />
    <ref role="1TJDcQ" node="1Oh785uWmPg" resolve="Command" />
    <node concept="1TJgyj" id="5c4rtvXPueO" role="1TKVEi">
      <property role="IQ2ns" value="5982026979498910644" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="initializer" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="5c4rtvXPueQ" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="5c4rtvXQ3iH">
    <property role="EcuMT" value="5982026979499062445" />
    <property role="TrG5h" value="CalculationValueReference" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="5c4rtvXQ3iI" role="1TKVEi">
      <property role="IQ2ns" value="5982026979499062446" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5c4rtvXPueN" resolve="CalculationValue" />
    </node>
  </node>
  <node concept="1TIwiD" id="5c4rtvXSJiG">
    <property role="EcuMT" value="5982026979499766956" />
    <property role="TrG5h" value="OutputTable" />
    <property role="34LRSv" value="table" />
    <ref role="1TJDcQ" node="1Oh785uWmPg" resolve="Command" />
    <node concept="1TJgyj" id="5c4rtvXSJiH" role="1TKVEi">
      <property role="IQ2ns" value="5982026979499766957" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="dataSource" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="5c4rtvXTSU5" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
</model>

