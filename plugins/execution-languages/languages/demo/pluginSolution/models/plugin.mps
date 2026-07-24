<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3efdf908-9d74-483a-b1cf-495292800da4(jetbrains.mps.execution.demo.pluginSolution.plugin)">
  <persistence version="9" />
  <languages>
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="-1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="fbc14279-5e2a-4c87-a5d1-5f7061e6c456" name="jetbrains.mps.debugger.api.lang" version="-1" />
    <use id="f3347d8a-0e79-4f35-8ac9-1574f25c986f" name="jetbrains.mps.execution.commands" version="-1" />
    <use id="22e72e4c-0f69-46ce-8403-6750153aa615" name="jetbrains.mps.execution.configurations" version="2" />
    <use id="756e911c-3f1f-4a48-bdf5-a2ceb91b723c" name="jetbrains.mps.execution.settings" version="-1" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="6" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="-1" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="4" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="awpe" ref="r:5a505993-793e-4b2d-84cf-271f9dde39b3(jetbrains.mps.execution.lib)" />
    <import index="f1er" ref="r:b2897562-8c8f-4b0e-a52e-5dedfbf1b862(jetbrains.mps.execution.demo.structure)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="go48" ref="r:fc6b4266-fe93-4e02-bc36-aebff4c903c3(jetbrains.mps.baseLanguage.execution.api)" />
    <import index="xk9i" ref="r:49e49752-a85e-4d81-811e-1dc850a8e4cd(jetbrains.mps.execution.lib.ui)" />
    <import index="mcvh" ref="r:4032b78d-911f-4395-b88c-ccb50cb24300(jetbrains.mps.debugger.java.api.settings)" />
    <import index="eva" ref="r:a1b1112d-dd34-4046-a6a3-811fd290d232(jetbrains.mps.execution.configurations.pluginSolution.plugin)" />
    <import index="z2i8" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.icons(MPS.IDEA/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
  </imports>
  <registry>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="8974276187400029883" name="jetbrains.mps.lang.resources.structure.FileIcon" flags="ng" index="1QGGSu" />
    </language>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="5023285075122009364" name="jetbrains.mps.lang.plugin.structure.IdeaInitializerDescriptor" flags="ng" index="9BnSX">
        <property id="5023285075122009369" name="version" index="9BnSK" />
        <property id="5023285075122009368" name="descripttion" index="9BnSL" />
        <property id="5023285075122009371" name="vendor" index="9BnSM" />
        <property id="5023285075122009373" name="ideaVersion" index="9BnSO" />
        <property id="5023285075122009372" name="vendorUrl" index="9BnSP" />
        <property id="5023285075122009366" name="id" index="9BnSZ" />
      </concept>
    </language>
    <language id="f3347d8a-0e79-4f35-8ac9-1574f25c986f" name="jetbrains.mps.execution.commands">
      <concept id="856705193941281780" name="jetbrains.mps.execution.commands.structure.CommandBuilderExpression" flags="nn" index="2LYoGx">
        <reference id="6129022259108621329" name="commandPart" index="3rFKlk" />
        <child id="856705193941281781" name="argument" index="2LYoGw" />
      </concept>
      <concept id="856705193941281764" name="jetbrains.mps.execution.commands.structure.CommandParameterAssignment" flags="ng" index="2LYoGL">
        <reference id="856705193941281765" name="parameterDeclaration" index="2LYoGK" />
        <child id="856705193941281766" name="value" index="2LYoGN" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="22e72e4c-0f69-46ce-8403-6750153aa615" name="jetbrains.mps.execution.configurations">
      <concept id="7684700299064179245" name="jetbrains.mps.execution.configurations.structure.Project_Parameter" flags="nn" index="21ER0p" />
      <concept id="7301162575811126385" name="jetbrains.mps.execution.configurations.structure.NodeSource" flags="ng" index="2nMXjs">
        <reference id="7301162575811126914" name="concept" index="2nMXoJ" />
      </concept>
      <concept id="4366236229294149030" name="jetbrains.mps.execution.configurations.structure.RunConfigurationProducerPart" flags="ng" index="2w4N4h">
        <child id="7301162575811113551" name="source" index="2nMwby" />
        <child id="3642991921657904774" name="create" index="30xZXv" />
      </concept>
      <concept id="4366236229294149059" name="jetbrains.mps.execution.configurations.structure.Create_ConceptFunction" flags="in" index="2w4N5O" />
      <concept id="4366236229294105349" name="jetbrains.mps.execution.configurations.structure.RunConfigurationProducer" flags="ng" index="2w4XYM">
        <child id="4366236229294149036" name="produce" index="2w4N4r" />
        <child id="4366236229294139631" name="configuration" index="2w4Pho" />
      </concept>
      <concept id="946964771156870353" name="jetbrains.mps.execution.configurations.structure.StartProcessHandlerStatement" flags="nn" index="yIgYw" />
      <concept id="6550182048787537880" name="jetbrains.mps.execution.configurations.structure.BeforeTaskCall" flags="ng" index="yYvg6">
        <reference id="6550182048787537881" name="beforeTask" index="yYvg7" />
        <child id="5475888311765521408" name="parameter" index="1ZwhtC" />
      </concept>
      <concept id="7806358006983614956" name="jetbrains.mps.execution.configurations.structure.RunConfigurationExecutor" flags="ng" index="RBi3j">
        <child id="6720907903633293832" name="debuggerConfiguration" index="1TqfgD" />
      </concept>
      <concept id="7806358006983738927" name="jetbrains.mps.execution.configurations.structure.ConfigurationFromExecutorReference" flags="nn" index="RBKsg" />
      <concept id="3642991921658122718" name="jetbrains.mps.execution.configurations.structure.RunConfigurationCreator" flags="nn" index="30w_07">
        <reference id="3642991921658122719" name="configuration" index="30w_06" />
        <child id="529406319400385974" name="configurationName" index="uV2A8" />
      </concept>
      <concept id="3642991921657904775" name="jetbrains.mps.execution.configurations.structure.Source_ConceptFunctionParameter" flags="nn" index="30xZXu" />
      <concept id="2401501559171392633" name="jetbrains.mps.execution.configurations.structure.AbstractRunConfigurationExecutor" flags="ng" index="3wDJM8">
        <property id="5925077313451868299" name="canRun" index="35f5FB" />
        <property id="1931462339887551644" name="configurationName" index="3gLNDv" />
        <child id="6550182048787537895" name="beforeTask" index="yYvgT" />
        <child id="7945003362267213473" name="execute" index="35uJNn" />
      </concept>
      <concept id="2401501559171345993" name="jetbrains.mps.execution.configurations.structure.RunConfiguration" flags="ng" index="3wDVqS">
        <reference id="2401501559171353314" name="configurationKind" index="3wDP8j" />
      </concept>
      <concept id="2401501559171345994" name="jetbrains.mps.execution.configurations.structure.RunConfigurationKind" flags="ng" index="3wDVqV">
        <child id="7966814097310618131" name="icon" index="1bitO_" />
      </concept>
      <concept id="6139196002333163564" name="jetbrains.mps.execution.configurations.structure.ExecuteConfiguration_Function" flags="in" index="3CCWSg" />
      <concept id="4816403309550879744" name="jetbrains.mps.execution.configurations.structure.DebuggerSettings_Parameter" flags="nn" index="3E78_a" />
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ngI" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL">
        <child id="1205770614681" name="actualArgument" index="2XxRq1" />
      </concept>
    </language>
    <language id="756e911c-3f1f-4a48-bdf5-a2ceb91b723c" name="jetbrains.mps.execution.settings">
      <concept id="946964771156067216" name="jetbrains.mps.execution.settings.structure.Configuration_Parameter" flags="nn" index="yHkzx" />
      <concept id="946964771156066611" name="jetbrains.mps.execution.settings.structure.EditorPropertyReference" flags="nn" index="yHkD2" />
      <concept id="946964771156066610" name="jetbrains.mps.execution.settings.structure.EditorPropertyDeclaration" flags="ng" index="yHkD3" />
      <concept id="946964771156066614" name="jetbrains.mps.execution.settings.structure.ResetFrom_Function" flags="ig" index="yHkD7" />
      <concept id="946964771156066621" name="jetbrains.mps.execution.settings.structure.SettingsEditor" flags="ng" index="yHkDc">
        <child id="946964771156066624" name="resetFrom" index="yHkCL" />
        <child id="946964771156066626" name="propertyDeclaration" index="yHkCN" />
        <child id="946964771156066623" name="applyTo" index="yHkDe" />
        <child id="946964771156066622" name="createEditor" index="yHkDf" />
      </concept>
      <concept id="946964771156066594" name="jetbrains.mps.execution.settings.structure.IPersistentPropertyHolder" flags="ngI" index="yHkDj">
        <child id="946964771156066595" name="persistentProperty" index="yHkDi" />
      </concept>
      <concept id="946964771156066597" name="jetbrains.mps.execution.settings.structure.CheckProperties_Function" flags="ig" index="yHkDk" />
      <concept id="946964771156066601" name="jetbrains.mps.execution.settings.structure.ApplyTo_Function" flags="ig" index="yHkDo" />
      <concept id="946964771156066606" name="jetbrains.mps.execution.settings.structure.EditorOperationCall" flags="nn" index="yHkDv">
        <reference id="946964771156066609" name="editorOperationDeclaration" index="yHkD0" />
        <child id="946964771156066607" name="arguments" index="yHkDu" />
      </concept>
      <concept id="946964771156066582" name="jetbrains.mps.execution.settings.structure.PersistentConfigurationTemplateInitializer" flags="nn" index="yHkDB">
        <reference id="946964771156066583" name="template" index="yHkDA" />
        <child id="946964771156066584" name="parameter" index="yHkDD" />
      </concept>
      <concept id="946964771156066585" name="jetbrains.mps.execution.settings.structure.PersistentPropertyDeclaration" flags="ng" index="yHkDC" />
      <concept id="946964771156066588" name="jetbrains.mps.execution.settings.structure.EditorExpression" flags="nn" index="yHkDH">
        <reference id="946964771156066589" name="persistentPropertyDeclaration" index="yHkDG" />
      </concept>
      <concept id="946964771156066591" name="jetbrains.mps.execution.settings.structure.CheckProperitesOperation" flags="nn" index="yHkDI" />
      <concept id="946964771156066566" name="jetbrains.mps.execution.settings.structure.CreateEditor_Function" flags="ig" index="yHkDR" />
      <concept id="946964771156066574" name="jetbrains.mps.execution.settings.structure.PersistentPropertyReferenceOperation" flags="nn" index="yHkDZ">
        <reference id="946964771156066575" name="variableDeclaration" index="yHkDY" />
      </concept>
      <concept id="946964771156066336" name="jetbrains.mps.execution.settings.structure.PersistentConfiguration" flags="ng" index="yHkHh">
        <child id="946964771156066337" name="editor" index="yHkHg" />
        <child id="946964771156066338" name="checkProperties" index="yHkHj" />
      </concept>
      <concept id="946964771156066332" name="jetbrains.mps.execution.settings.structure.PersistentConfigurationType" flags="in" index="yHkHH">
        <reference id="946964771156066333" name="persistentConfiguration" index="yHkHG" />
      </concept>
      <concept id="946964771156066557" name="jetbrains.mps.execution.settings.structure.TemplatePersistentConfigurationType" flags="in" index="yHkIc" />
      <concept id="946964771156905617" name="jetbrains.mps.execution.settings.structure.PersistentConfigurationAssistent" flags="ngI" index="yIonw">
        <reference id="946964771156905618" name="configuration" index="yIonz" />
      </concept>
    </language>
    <language id="fbc14279-5e2a-4c87-a5d1-5f7061e6c456" name="jetbrains.mps.debugger.api.lang">
      <concept id="1104094430779068753" name="jetbrains.mps.debugger.api.lang.structure.DebuggerReference" flags="nn" index="3Qg5_p">
        <property id="1104094430779068757" name="debuggerName" index="3Qg5_t" />
      </concept>
      <concept id="6720907903633266421" name="jetbrains.mps.debugger.api.lang.structure.DebuggerConfiguration" flags="ng" index="1Tq63k">
        <child id="6720907903633266913" name="getSettings" index="1Tq6V0" />
        <child id="6720907903633266912" name="debugger" index="1Tq6V1" />
      </concept>
      <concept id="6720907903633266914" name="jetbrains.mps.debugger.api.lang.structure.GetDebuggerSettings_Function" flags="in" index="1Tq6V3" />
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
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
    </language>
  </registry>
  <node concept="2w4XYM" id="3aewtBM35jt">
    <node concept="2w4N4h" id="3aewtBM35mf" role="2w4N4r">
      <node concept="2w4N5O" id="3aewtBM35mh" role="30xZXv">
        <node concept="3clFbS" id="3aewtBM35mi" role="2VODD2">
          <node concept="3clFbJ" id="c$6sEbBqlR" role="3cqZAp">
            <node concept="3clFbS" id="c$6sEbBqlS" role="3clFbx">
              <node concept="3cpWs6" id="c$6sEbBqm3" role="3cqZAp">
                <node concept="10Nm6u" id="c$6sEbBqm7" role="3cqZAk" />
              </node>
            </node>
            <node concept="3fqX7Q" id="c$6sEbBqm1" role="3clFbw">
              <node concept="2OqwBi" id="c$6sEbBqlW" role="3fr31v">
                <node concept="30xZXu" id="c$6sEbBqlV" role="2Oq$k0" />
                <node concept="3TrcHB" id="c$6sEbBqm0" role="2OqNvi">
                  <ref role="3TsBF5" to="f1er:4hBeuoVTWJ4" resolve="valid" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="toP3SpHcg0" role="3cqZAp">
            <node concept="3cpWsn" id="toP3SpHcg1" role="3cpWs9">
              <property role="TrG5h" value="configuration" />
              <node concept="yHkHH" id="toP3SpHcg2" role="1tU5fm">
                <ref role="yHkHG" node="7_KnczRZH5x" resolve="Demo Application" />
              </node>
              <node concept="2ShNRf" id="toP3SpHcg3" role="33vP2m">
                <node concept="30w_07" id="toP3SpHcg4" role="2ShVmc">
                  <ref role="30w_06" node="7_KnczRZH5x" resolve="Demo Application" />
                  <node concept="3cpWs3" id="toP3SpHo3a" role="uV2A8">
                    <node concept="2OqwBi" id="toP3SpHuFf" role="3uHU7w">
                      <node concept="30xZXu" id="toP3SpHuFe" role="2Oq$k0" />
                      <node concept="3TrcHB" id="2eOtvO7hK6h" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="toP3SpHo39" role="3uHU7B">
                      <property role="Xl_RC" value="SomeNode " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="toP3SpHcg7" role="3cqZAp">
            <node concept="2OqwBi" id="toP3SpHfQr" role="3clFbG">
              <node concept="2OqwBi" id="toP3SpHcg9" role="2Oq$k0">
                <node concept="37vLTw" id="toP3SpHcg8" role="2Oq$k0">
                  <ref role="3cqZAo" node="toP3SpHcg1" resolve="configuration" />
                </node>
                <node concept="yHkDZ" id="toP3SpHfQq" role="2OqNvi">
                  <ref role="yHkDY" node="6QEmc2ZbXxU" resolve="node" />
                </node>
              </node>
              <node concept="2XshWL" id="toP3SpHfQv" role="2OqNvi">
                <ref role="2WH_rO" to="awpe:7byHRlLC1QG" resolve="setNode" />
                <node concept="30xZXu" id="toP3SpHfQw" role="2XxRq1" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="toP3SpHfQN" role="3cqZAp">
            <node concept="37vLTw" id="toP3SpHfQP" role="3cqZAk">
              <ref role="3cqZAo" node="toP3SpHcg1" resolve="configuration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2nMXjs" id="3uNEAUKvazB" role="2nMwby">
        <ref role="2nMXoJ" to="f1er:4hBeuoVSNq4" resolve="SomeConcept" />
      </node>
    </node>
    <node concept="yHkHH" id="3aewtBM35ju" role="2w4Pho">
      <ref role="yHkHG" node="7_KnczRZH5x" resolve="Demo Application" />
    </node>
  </node>
  <node concept="3wDVqV" id="7_KnczRZH5v">
    <property role="TrG5h" value="Demo" />
    <node concept="1QGGSu" id="6tW99mzVdaD" role="1bitO_" />
  </node>
  <node concept="3wDVqS" id="7_KnczRZH5x">
    <property role="TrG5h" value="Demo Application" />
    <ref role="3wDP8j" node="7_KnczRZH5v" resolve="Demo" />
    <node concept="yHkDc" id="7_KnczRZH5y" role="yHkHg">
      <node concept="yHkD3" id="2TPT8ohCk2o" role="yHkCN">
        <property role="TrG5h" value="label" />
        <node concept="3uibUv" id="2TPT8ohCk2q" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JLabel" resolve="JLabel" />
        </node>
      </node>
      <node concept="yHkDR" id="49dn6DllYe9" role="yHkDf">
        <node concept="3clFbS" id="49dn6DllYea" role="2VODD2">
          <node concept="3clFbF" id="2TPT8ohCk2s" role="3cqZAp">
            <node concept="37vLTI" id="2TPT8ohCk2v" role="3clFbG">
              <node concept="2ShNRf" id="2TPT8ohCk2y" role="37vLTx">
                <node concept="1pGfFk" id="2TPT8ohCk2z" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                  <node concept="Xl_RD" id="1gqKYqdHuNr" role="37wK5m">
                    <property role="Xl_RC" value="Select some node:" />
                  </node>
                </node>
              </node>
              <node concept="yHkD2" id="2TPT8ohCk2u" role="37vLTJ">
                <ref role="3cqZAo" node="2TPT8ohCk2o" resolve="label" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6PDbr4S3wIG" role="3cqZAp">
            <node concept="3cpWsn" id="6PDbr4S3wIH" role="3cpWs9">
              <property role="TrG5h" value="nodeChooser" />
              <node concept="3uibUv" id="7byHRlLCklF" role="1tU5fm">
                <ref role="3uigEE" to="xk9i:7byHRlLC1T4" resolve="NodeByConceptChooser" />
              </node>
              <node concept="2OqwBi" id="6PDbr4S3wIJ" role="33vP2m">
                <node concept="yHkDv" id="7byHRlLCklM" role="2OqNvi">
                  <ref role="yHkD0" to="awpe:7byHRlLC1R$" />
                </node>
                <node concept="yHkDH" id="6PDbr4S3wIK" role="2Oq$k0">
                  <ref role="yHkDG" node="6QEmc2ZbXxU" resolve="node" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1kS6Xt3lhWw" role="3cqZAp">
            <node concept="3cpWsn" id="1kS6Xt3lhWx" role="3cpWs9">
              <property role="TrG5h" value="panel" />
              <node concept="3uibUv" id="1kS6Xt3lhWy" role="1tU5fm">
                <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
              </node>
              <node concept="2ShNRf" id="1kS6Xt3lhWz" role="33vP2m">
                <node concept="1pGfFk" id="1kS6Xt3lhW$" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
                  <node concept="2ShNRf" id="2TPT8ohCk2Z" role="37wK5m">
                    <node concept="1pGfFk" id="2TPT8ohCk31" role="2ShVmc">
                      <ref role="37wK5l" to="z60i:~BorderLayout.&lt;init&gt;()" resolve="BorderLayout" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2TPT8ohCk2Q" role="3cqZAp">
            <node concept="2OqwBi" id="2TPT8ohCk2S" role="3clFbG">
              <node concept="37vLTw" id="2TPT8ohCk2R" role="2Oq$k0">
                <ref role="3cqZAo" node="1kS6Xt3lhWx" resolve="panel" />
              </node>
              <node concept="liA8E" id="2TPT8ohCk2W" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="yHkD2" id="2TPT8ohCk2X" role="37wK5m">
                  <ref role="3cqZAo" node="2TPT8ohCk2o" resolve="label" />
                </node>
                <node concept="10M0yZ" id="2TPT8ohCk33" role="37wK5m">
                  <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                  <ref role="3cqZAo" to="z60i:~BorderLayout.NORTH" resolve="NORTH" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6PDbr4S3wIO" role="3cqZAp">
            <node concept="2OqwBi" id="6PDbr4S3wIQ" role="3clFbG">
              <node concept="37vLTw" id="6PDbr4S3wIP" role="2Oq$k0">
                <ref role="3cqZAo" node="1kS6Xt3lhWx" resolve="panel" />
              </node>
              <node concept="liA8E" id="6PDbr4S3xe1" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="6PDbr4S3xe2" role="37wK5m">
                  <ref role="3cqZAo" node="6PDbr4S3wIH" resolve="nodeChooser" />
                </node>
                <node concept="10M0yZ" id="6PDbr4S3xe7" role="37wK5m">
                  <ref role="3cqZAo" to="z60i:~BorderLayout.CENTER" resolve="CENTER" />
                  <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="1kS6Xt3lhWr" role="3cqZAp">
            <node concept="37vLTw" id="1kS6Xt3lhW_" role="3cqZAk">
              <ref role="3cqZAo" node="1kS6Xt3lhWx" resolve="panel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="yHkD7" id="49dn6DllYeb" role="yHkCL">
        <node concept="3clFbS" id="49dn6DllYec" role="2VODD2">
          <node concept="3clFbF" id="15x49rVoIed" role="3cqZAp">
            <node concept="2OqwBi" id="15x49rVoIej" role="3clFbG">
              <node concept="yHkDH" id="15x49rVoIee" role="2Oq$k0">
                <ref role="yHkDG" node="6QEmc2ZbXxU" resolve="node" />
              </node>
              <node concept="yHkDv" id="15x49rVoIes" role="2OqNvi">
                <ref role="yHkD0" to="awpe:7byHRlLC1RR" />
                <node concept="2OqwBi" id="15x49rVoOBh" role="yHkDu">
                  <node concept="yHkzx" id="15x49rVoOBg" role="2Oq$k0" />
                  <node concept="yHkDZ" id="15x49rVoOBn" role="2OqNvi">
                    <ref role="yHkDY" node="6QEmc2ZbXxU" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="yHkDo" id="49dn6DllYed" role="yHkDe">
        <node concept="3clFbS" id="49dn6DllYee" role="2VODD2">
          <node concept="3clFbF" id="15x49rVoOBy" role="3cqZAp">
            <node concept="2OqwBi" id="15x49rVoOBC" role="3clFbG">
              <node concept="yHkDH" id="15x49rVoOBz" role="2Oq$k0">
                <ref role="yHkDG" node="6QEmc2ZbXxU" resolve="node" />
              </node>
              <node concept="yHkDv" id="15x49rVoOBM" role="2OqNvi">
                <ref role="yHkD0" to="awpe:7byHRlLC1S0" />
                <node concept="2OqwBi" id="15x49rVoOBU" role="yHkDu">
                  <node concept="yHkzx" id="15x49rVoOBS" role="2Oq$k0" />
                  <node concept="yHkDZ" id="15x49rVoOBZ" role="2OqNvi">
                    <ref role="yHkDY" node="6QEmc2ZbXxU" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="yHkDC" id="6QEmc2ZbXxU" role="yHkDi">
      <property role="TrG5h" value="node" />
      <node concept="yHkIc" id="6QEmc2ZbXxW" role="1tU5fm">
        <ref role="yHkHG" to="awpe:7byHRlLC1PU" resolve="NodeByConcept" />
      </node>
      <node concept="2ShNRf" id="1gqKYqdH3Ua" role="33vP2m">
        <node concept="yHkDB" id="1gqKYqdHuLT" role="2ShVmc">
          <ref role="yHkDA" to="awpe:7byHRlLC1PU" resolve="NodeByConcept" />
          <node concept="35c_gC" id="_dGddVTBEz" role="yHkDD">
            <ref role="35c_gD" to="f1er:4hBeuoVSNq4" resolve="SomeConcept" />
          </node>
          <node concept="1bVj0M" id="1gqKYqdHuMU" role="yHkDD">
            <node concept="3clFbS" id="1gqKYqdHuMV" role="1bW5cS">
              <node concept="3clFbF" id="1gqKYqdHuMW" role="3cqZAp">
                <node concept="2OqwBi" id="1gqKYqdHuMX" role="3clFbG">
                  <node concept="1PxgMI" id="1gqKYqdHuMY" role="2Oq$k0">
                    <node concept="37vLTw" id="1gqKYqdHuMZ" role="1m5AlR">
                      <ref role="3cqZAo" node="1gqKYqdHuN1" resolve="node" />
                    </node>
                    <node concept="chp4Y" id="714IaVdGZ88" role="3oSUPX">
                      <ref role="cht4Q" to="f1er:4hBeuoVSNq4" resolve="SomeConcept" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="1gqKYqdHuN0" role="2OqNvi">
                    <ref role="3TsBF5" to="f1er:4hBeuoVTWJ4" resolve="valid" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="1gqKYqdHuN1" role="1bW2Oz">
              <property role="TrG5h" value="node" />
              <node concept="3Tqbb2" id="1gqKYqdHuN2" role="1tU5fm" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="yHkDk" id="Q7FI0Q1SLw" role="yHkHj">
      <node concept="3clFbS" id="Q7FI0Q1SLx" role="2VODD2">
        <node concept="3clFbF" id="1gqKYqdGzZL" role="3cqZAp">
          <node concept="2OqwBi" id="4AWjvCLCD7I" role="3clFbG">
            <node concept="yHkDI" id="qCQmZS5Y8L" role="2OqNvi" />
            <node concept="2OqwBi" id="1gqKYqdGzZN" role="2Oq$k0">
              <node concept="2WthIp" id="1gqKYqdGzZM" role="2Oq$k0" />
              <node concept="yHkDZ" id="1gqKYqdG$cx" role="2OqNvi">
                <ref role="yHkDY" node="6QEmc2ZbXxU" resolve="node" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="RBi3j" id="6LlKjXrMlSE">
    <property role="35f5FB" value="true" />
    <property role="3gLNDv" value="configuration" />
    <ref role="yIonz" node="7_KnczRZH5x" resolve="Demo Application" />
    <node concept="yYvg6" id="5FAUXTS7S0j" role="yYvgT">
      <ref role="yYvg7" to="eva:4KDfkUwMkVJ" resolve="MakeNodePointers" />
      <node concept="2ShNRf" id="4JYgQwOwgAW" role="1ZwhtC">
        <node concept="Tc6Ow" id="4JYgQwOwmi7" role="2ShVmc">
          <node concept="2OqwBi" id="4JYgQwOwmib" role="HW$Y0">
            <node concept="2OqwBi" id="4JYgQwOwmic" role="2Oq$k0">
              <node concept="RBKsg" id="4JYgQwOwmid" role="2Oq$k0" />
              <node concept="yHkDZ" id="4JYgQwOwmie" role="2OqNvi">
                <ref role="yHkDY" node="6QEmc2ZbXxU" resolve="node" />
              </node>
            </node>
            <node concept="2XshWL" id="2c12Gd8$How" role="2OqNvi">
              <ref role="2WH_rO" to="awpe:7byHRlLC1Qg" resolve="getNodeRef" />
            </node>
          </node>
          <node concept="3uibUv" id="4nJlMvOC6J6" role="HW$YZ">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1Tq63k" id="2UfNeFBlnmP" role="1TqfgD">
      <node concept="3Qg5_p" id="2UfNeFBlyV7" role="1Tq6V1">
        <property role="3Qg5_t" value="Java" />
      </node>
      <node concept="1Tq6V3" id="2UfNeFBlyV8" role="1Tq6V0">
        <node concept="3clFbS" id="2UfNeFBlyV9" role="2VODD2">
          <node concept="3clFbF" id="2UfNeFBlzgc" role="3cqZAp">
            <node concept="2ShNRf" id="2UfNeFBlzgd" role="3clFbG">
              <node concept="1pGfFk" id="2UfNeFBlzgf" role="2ShVmc">
                <ref role="37wK5l" to="mcvh:2Y$mRnICm$u" resolve="LocalConnectionSettings" />
                <node concept="3clFbT" id="2UfNeFBlzgg" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3CCWSg" id="6LlKjXrMlSF" role="35uJNn">
      <node concept="3clFbS" id="6LlKjXrMlSH" role="2VODD2">
        <node concept="yIgYw" id="3JJKGt$tmBS" role="3cqZAp">
          <node concept="2LYoGx" id="4izwdH0x37T" role="3cqZAk">
            <ref role="3rFKlk" to="go48:14R2qyOBxeG" resolve="java" />
            <node concept="2LYoGL" id="4izwdH0x37U" role="2LYoGw">
              <ref role="2LYoGK" to="go48:14R2qyOBxeT" resolve="programParameter" />
              <node concept="Xl_RD" id="4izwdH0x37V" role="2LYoGN">
                <property role="Xl_RC" value="Julia" />
              </node>
            </node>
            <node concept="2LYoGL" id="4izwdH0x37W" role="2LYoGw">
              <ref role="2LYoGK" to="go48:14R2qyOBxeV" resolve="virtualMachineParameter" />
              <node concept="2OqwBi" id="4izwdH0x37X" role="2LYoGN">
                <node concept="3E78_a" id="4izwdH0x37Y" role="2Oq$k0" />
                <node concept="liA8E" id="4izwdH0x37Z" role="2OqNvi">
                  <ref role="37wK5l" to="mcvh:2Y$mRnICmnN" resolve="getCommandLine" />
                  <node concept="3clFbT" id="4izwdH0x380" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2LYoGL" id="4izwdH0x381" role="2LYoGw">
              <ref role="2LYoGK" to="go48:14R2qyOBxeH" resolve="nodePointer" />
              <node concept="2OqwBi" id="4izwdH0x382" role="2LYoGN">
                <node concept="2OqwBi" id="4izwdH0x383" role="2Oq$k0">
                  <node concept="yHkDZ" id="4izwdH0x384" role="2OqNvi">
                    <ref role="yHkDY" node="6QEmc2ZbXxU" resolve="node" />
                  </node>
                  <node concept="RBKsg" id="4izwdH0x385" role="2Oq$k0" />
                </node>
                <node concept="2XshWL" id="2c12Gd8$Hou" role="2OqNvi">
                  <ref role="2WH_rO" to="awpe:7byHRlLC1Qg" resolve="getNodeRef" />
                </node>
              </node>
            </node>
            <node concept="2LYoGL" id="1CVOLqONYFJ" role="2LYoGw">
              <ref role="2LYoGK" to="go48:1CVOLqONYr_" resolve="repository" />
              <node concept="2YIFZM" id="1CVOLqOO23Y" role="2LYoGN">
                <ref role="37wK5l" to="alof:~ProjectHelper.getProjectRepository(com.intellij.openapi.project.Project)" resolve="getProjectRepository" />
                <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                <node concept="21ER0p" id="1CVOLqOO24B" role="37wK5m" />
              </node>
            </node>
            <node concept="2LYoGL" id="3KU19GSx8WA" role="2LYoGw">
              <ref role="2LYoGK" to="go48:3KU19GSx31$" resolve="project" />
              <node concept="2YIFZM" id="2wXnDyl82Ub" role="2LYoGN">
                <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
                <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                <node concept="21ER0p" id="2wXnDyl82Vb" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="9BnSX" id="6xlwZbnmJ_V">
    <property role="9BnSZ" value="a" />
    <property role="9BnSP" value="a" />
    <property role="9BnSL" value="a" />
    <property role="9BnSM" value="a" />
    <property role="TrG5h" value="a" />
    <property role="9BnSO" value="261.1" />
    <property role="9BnSK" value="a" />
  </node>
  <node concept="2DaZZR" id="6dAEaqvbGv_" />
</model>

