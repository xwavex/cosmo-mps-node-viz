<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3feb4c0e-c254-4fa9-947e-e69eb33db621(CosmoLangVizTools.plugin)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="8" />
    <use id="fe9d76d7-5809-45c9-ae28-a40915b4d6ff" name="jetbrains.mps.lang.checkedName" version="0" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="2" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="ed6d7656-532c-4bc2-81d1-af945aeb8280" name="jetbrains.mps.baseLanguage.blTypes" version="0" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="2" />
  </languages>
  <imports>
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="mxf6" ref="cdf75798-ddc6-498b-8223-98c01399a631/java:org.json(CosmoLangVizTools/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="kkv3" ref="cdf75798-ddc6-498b-8223-98c01399a631/java:dlw.cosmo.lang.graph.viz.interfaces.mps(CosmoLangVizTools/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="ztqj" ref="cdf75798-ddc6-498b-8223-98c01399a631/java:dlw.cosmo.lang.graph.viz(CosmoLangVizTools/)" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="8974276187400029883" name="jetbrains.mps.lang.resources.structure.FileIcon" flags="ng" index="1QGGSu">
        <property id="2756621024541341363" name="file" index="1iqoE4" />
      </concept>
    </language>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1204908117386" name="jetbrains.mps.lang.plugin.structure.Separator" flags="ng" index="2a7GMi" />
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <property id="1213273179528" name="description" index="1WHSii" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
        <child id="8976425910813834639" name="icon" index="3Uehp1" />
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
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="1205679047295" name="jetbrains.mps.lang.plugin.structure.ActionParameterDeclaration" flags="ig" index="2S4$dB" />
      <concept id="1206092561075" name="jetbrains.mps.lang.plugin.structure.ActionParameterReferenceOperation" flags="nn" index="3gHZIF" />
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ng" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153422105332" name="jetbrains.mps.baseLanguage.structure.RemExpression" flags="nn" index="2dk9JS" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
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
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
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
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534436861" name="jetbrains.mps.baseLanguage.structure.FloatType" flags="in" index="10OMs4" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
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
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
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
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1184950988562" name="jetbrains.mps.baseLanguage.structure.ArrayCreator" flags="nn" index="3$_iS1">
        <child id="1184951007469" name="componentType" index="3$_nBY" />
        <child id="1184952969026" name="dimensionExpression" index="3$GQph" />
      </concept>
      <concept id="1184952934362" name="jetbrains.mps.baseLanguage.structure.DimensionExpression" flags="nn" index="3$GHV9">
        <child id="1184953288404" name="expression" index="3$I4v7" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670592366" name="defaultBlock" index="3Kb1Dw" />
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="8064396509828172209" name="jetbrains.mps.baseLanguage.structure.UnaryMinus" flags="nn" index="1ZRNhn" />
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348181" name="jetbrains.mps.lang.access.structure.ExecuteLightweightCommandStatement" flags="nn" index="1QHqEK" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1167227138527" name="jetbrains.mps.baseLanguage.logging.structure.LogStatement" flags="nn" index="34ab3g">
        <property id="1167245565795" name="severity" index="35gtTG" />
        <child id="1167227463056" name="logExpression" index="34bqiv" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
    </language>
  </registry>
  <node concept="sE7Ow" id="5GDu10YZtT4">
    <property role="TrG5h" value="DrawLanguageGraphVisualization" />
    <property role="2uzpH1" value="Draw Node's Language Graph" />
    <property role="1WHSii" value="Draw the selected node's (sub-)AST with focus on the used languages" />
    <node concept="tnohg" id="5GDu10YZtT5" role="tncku">
      <node concept="3clFbS" id="5GDu10YZtT6" role="2VODD2">
        <node concept="3clFbJ" id="5GDu10Z2dj5" role="3cqZAp">
          <node concept="3clFbS" id="5GDu10Z2dj7" role="3clFbx">
            <node concept="34ab3g" id="5GDu10Z2eu3" role="3cqZAp">
              <property role="35gtTG" value="error" />
              <node concept="Xl_RD" id="5GDu10Z2eu5" role="34bqiv">
                <property role="Xl_RC" value="Action Parameter Node is null. Language Graph cannot be generated!" />
              </node>
            </node>
            <node concept="3cpWs6" id="5GDu10Z2ee$" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="5GDu10Z2dOo" role="3clFbw">
            <node concept="2OqwBi" id="5GDu10Z2drQ" role="2Oq$k0">
              <node concept="2WthIp" id="5GDu10Z2drT" role="2Oq$k0" />
              <node concept="3gHZIF" id="5GDu10Z2drV" role="2OqNvi">
                <ref role="2WH_rO" node="5GDu10YZJ0q" resolve="currentNode" />
              </node>
            </node>
            <node concept="3w_OXm" id="5GDu10Z2e9g" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="5GDu10Z2ef4" role="3cqZAp" />
        <node concept="3cpWs8" id="4c4vIOSxLzk" role="3cqZAp">
          <node concept="3cpWsn" id="4c4vIOSxLzl" role="3cpWs9">
            <property role="TrG5h" value="jf" />
            <node concept="3uibUv" id="4c4vIOSxLzm" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JFrame" resolve="JFrame" />
            </node>
            <node concept="2ShNRf" id="4c4vIOSxLAb" role="33vP2m">
              <node concept="1pGfFk" id="4c4vIOSxL_R" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JFrame.&lt;init&gt;(java.lang.String)" resolve="JFrame" />
                <node concept="Xl_RD" id="rpJNsQPyu8" role="37wK5m">
                  <property role="Xl_RC" value="Cosmo's Node's Language Graph Visualization" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4c4vIOSxPpk" role="3cqZAp">
          <node concept="2OqwBi" id="4c4vIOSxQ0k" role="3clFbG">
            <node concept="37vLTw" id="4c4vIOSxPpi" role="2Oq$k0">
              <ref role="3cqZAo" node="4c4vIOSxLzl" resolve="jf" />
            </node>
            <node concept="liA8E" id="4c4vIOSxRXj" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Window.setMinimumSize(java.awt.Dimension):void" resolve="setMinimumSize" />
              <node concept="2ShNRf" id="4c4vIOSxTfd" role="37wK5m">
                <node concept="1pGfFk" id="4c4vIOSy0Sy" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                  <node concept="3cmrfG" id="4c4vIOSy0WI" role="37wK5m">
                    <property role="3cmrfH" value="660" />
                  </node>
                  <node concept="3cmrfG" id="4c4vIOSy1kN" role="37wK5m">
                    <property role="3cmrfH" value="480" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4c4vIOSy4r8" role="3cqZAp">
          <node concept="2OqwBi" id="4c4vIOSy5eg" role="3clFbG">
            <node concept="37vLTw" id="4c4vIOSy4r6" role="2Oq$k0">
              <ref role="3cqZAo" node="4c4vIOSxLzl" resolve="jf" />
            </node>
            <node concept="liA8E" id="4c4vIOSy6eK" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Window.setVisible(boolean):void" resolve="setVisible" />
              <node concept="3clFbT" id="4c4vIOSy6kT" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5GDu10YZRtC" role="3cqZAp" />
        <node concept="3cpWs8" id="5GDu10Z2cX5" role="3cqZAp">
          <node concept="3cpWsn" id="5GDu10Z2cX6" role="3cpWs9">
            <property role="TrG5h" value="hDLGV" />
            <node concept="3uibUv" id="5GDu10Z2cX7" role="1tU5fm">
              <ref role="3uigEE" node="5GDu10YZF74" resolve="Helper_DrawLanguageGraphVisualization" />
            </node>
            <node concept="2ShNRf" id="5GDu10Z2d5i" role="33vP2m">
              <node concept="1pGfFk" id="5GDu10Z2d5b" role="2ShVmc">
                <ref role="37wK5l" node="5GDu10YZSzb" resolve="Helper_DrawLanguageGraphVisualization" />
                <node concept="2OqwBi" id="5GDu10Z2d6z" role="37wK5m">
                  <node concept="2WthIp" id="5GDu10Z2d6A" role="2Oq$k0" />
                  <node concept="3gHZIF" id="5GDu10Z2d6C" role="2OqNvi">
                    <ref role="2WH_rO" node="5GDu10YZJ0q" resolve="currentNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5GDu10Z2eA0" role="3cqZAp" />
        <node concept="3cpWs8" id="5GDu10Z2fjX" role="3cqZAp">
          <node concept="3cpWsn" id="5GDu10Z2fjY" role="3cpWs9">
            <property role="TrG5h" value="viz" />
            <node concept="3uibUv" id="5GDu10Z2fjZ" role="1tU5fm">
              <ref role="3uigEE" to="ztqj:~LanguageGraphViz" resolve="LanguageGraphViz" />
            </node>
            <node concept="2ShNRf" id="5GDu10Z2fxu" role="33vP2m">
              <node concept="1pGfFk" id="5GDu10Z2fxn" role="2ShVmc">
                <ref role="37wK5l" to="ztqj:~LanguageGraphViz.&lt;init&gt;(java.awt.Container,java.io.InputStream,dlw.cosmo.lang.graph.viz.interfaces.mps.MPSLanguageGraphViz)" resolve="LanguageGraphViz" />
                <node concept="2OqwBi" id="5GDu10Z2gcD" role="37wK5m">
                  <node concept="37vLTw" id="5GDu10Z2fyY" role="2Oq$k0">
                    <ref role="3cqZAo" node="4c4vIOSxLzl" resolve="jf" />
                  </node>
                  <node concept="liA8E" id="5GDu10Z2h3V" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~JFrame.getContentPane():java.awt.Container" resolve="getContentPane" />
                  </node>
                </node>
                <node concept="10Nm6u" id="5GDu10Z2hcc" role="37wK5m" />
                <node concept="37vLTw" id="5GDu10Z2hg2" role="37wK5m">
                  <ref role="3cqZAo" node="5GDu10Z2cX6" resolve="hDLGV" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5GDu10Z2m0Y" role="3cqZAp">
          <node concept="3SKdUq" id="5GDu10Z2m10" role="3SKWNk">
            <property role="3SKdUp" value="inject data to display" />
          </node>
        </node>
        <node concept="3clFbF" id="5GDu10Z2h_B" role="3cqZAp">
          <node concept="2OqwBi" id="5GDu10Z2hXy" role="3clFbG">
            <node concept="37vLTw" id="5GDu10Z2h__" role="2Oq$k0">
              <ref role="3cqZAo" node="5GDu10Z2fjY" resolve="viz" />
            </node>
            <node concept="liA8E" id="5GDu10Z2ik2" role="2OqNvi">
              <ref role="37wK5l" to="ztqj:~LanguageGraphViz.setInjectableData(java.lang.String):void" resolve="setInjectableData" />
              <node concept="2OqwBi" id="5GDu10Z2jTR" role="37wK5m">
                <node concept="37vLTw" id="5GDu10Z2j2T" role="2Oq$k0">
                  <ref role="3cqZAo" node="5GDu10Z2cX6" resolve="hDLGV" />
                </node>
                <node concept="liA8E" id="5GDu10Z2lyl" role="2OqNvi">
                  <ref role="37wK5l" node="IDYkYCdQVK" resolve="dataAsJsonString" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5GDu10Z2ouG" role="3cqZAp">
          <node concept="3SKdUq" id="5GDu10Z2ouI" role="3SKWNk">
            <property role="3SKdUp" value="update rendering after new data was set" />
          </node>
        </node>
        <node concept="3clFbF" id="5GDu10Z2mEq" role="3cqZAp">
          <node concept="2OqwBi" id="5GDu10Z2n2T" role="3clFbG">
            <node concept="37vLTw" id="5GDu10Z2mEo" role="2Oq$k0">
              <ref role="3cqZAo" node="5GDu10Z2fjY" resolve="viz" />
            </node>
            <node concept="liA8E" id="5GDu10Z2nr$" role="2OqNvi">
              <ref role="37wK5l" to="ztqj:~LanguageGraphViz.reloadVisualization():void" resolve="reloadVisualization" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2S4$dB" id="5GDu10YZJ0q" role="1NuT2Z">
      <property role="TrG5h" value="currentNode" />
      <node concept="3Tm6S6" id="5GDu10YZJ0r" role="1B3o_S" />
      <node concept="1oajcY" id="5GDu10YZJ0s" role="1oa70y" />
      <node concept="3Tqbb2" id="5GDu10YZFcZ" role="1tU5fm" />
    </node>
    <node concept="1QGGSu" id="rpJNsQPrE$" role="3Uehp1">
      <property role="1iqoE4" value="${module}/langGraphVizicon.png" />
    </node>
  </node>
  <node concept="tC5Ba" id="5GDu10YZtWp">
    <property role="TrG5h" value="CosmoLangVizToolsGroup" />
    <node concept="ftmFs" id="5GDu10YZvs_" role="ftER_">
      <node concept="2a7GMi" id="5GDu10YZCgt" role="ftvYc" />
      <node concept="tCFHf" id="5GDu10YZvsP" role="ftvYc">
        <ref role="tCJdB" node="5GDu10YZtT4" resolve="DrawLanguageGraphVisualization" />
      </node>
      <node concept="2a7GMi" id="5GDu10YZChA" role="ftvYc" />
    </node>
    <node concept="tT9cl" id="5GDu10YZvt4" role="2f5YQi">
      <ref role="tU$_T" to="tprs:1GlxrIveqTo" resolve="DebugActions" />
    </node>
  </node>
  <node concept="2DaZZR" id="5GDu10YZtZr" />
  <node concept="312cEu" id="5GDu10YZF74">
    <property role="TrG5h" value="Helper_DrawLanguageGraphVisualization" />
    <node concept="312cEg" id="IDYkYC2vQA" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="root" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="IDYkYC2v65" role="1B3o_S" />
      <node concept="3Tqbb2" id="IDYkYC2vPs" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="IDYkYC41hh" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="languagesUsed" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="IDYkYC3ZNS" role="1B3o_S" />
      <node concept="3uibUv" id="IDYkYC44EJ" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
        <node concept="3uibUv" id="IDYkYC46W8" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5GDu10YZSjR" role="jymVt" />
    <node concept="3clFbW" id="5GDu10YZSzb" role="jymVt">
      <node concept="3cqZAl" id="5GDu10YZSzc" role="3clF45" />
      <node concept="3clFbS" id="5GDu10YZSze" role="3clF47">
        <node concept="3clFbF" id="IDYkYC453p" role="3cqZAp">
          <node concept="37vLTI" id="IDYkYC45Vu" role="3clFbG">
            <node concept="2ShNRf" id="IDYkYC46uz" role="37vLTx">
              <node concept="1pGfFk" id="IDYkYC46du" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="IDYkYC480w" role="1pMfVU">
                  <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="IDYkYC453n" role="37vLTJ">
              <ref role="3cqZAo" node="IDYkYC41hh" resolve="languagesUsed" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="IDYkYC2x7C" role="3cqZAp">
          <node concept="37vLTI" id="IDYkYC2yaA" role="3clFbG">
            <node concept="37vLTw" id="IDYkYC2yq2" role="37vLTx">
              <ref role="3cqZAo" node="5GDu10YZWJQ" resolve="root" />
            </node>
            <node concept="2OqwBi" id="IDYkYC2xAA" role="37vLTJ">
              <node concept="Xjq3P" id="IDYkYC2x7B" role="2Oq$k0" />
              <node concept="2OwXpG" id="IDYkYC2xNr" role="2OqNvi">
                <ref role="2Oxat5" node="IDYkYC2vQA" resolve="root" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5GDu10YZSpe" role="1B3o_S" />
      <node concept="37vLTG" id="5GDu10YZWJQ" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="5GDu10YZWJP" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5GDu10Z046j" role="jymVt" />
    <node concept="3clFb_" id="5GDu10Z081S" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="generateCompleteLanguageGraph" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5GDu10Z081V" role="3clF47">
        <node concept="3cpWs8" id="IDYkYC3TLH" role="3cqZAp">
          <node concept="3cpWsn" id="IDYkYC3TLI" role="3cpWs9">
            <property role="TrG5h" value="jn" />
            <node concept="3uibUv" id="5GDu10Z0Hgc" role="1tU5fm">
              <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
            </node>
            <node concept="2ShNRf" id="IDYkYC3TLK" role="33vP2m">
              <node concept="1pGfFk" id="5GDu10Z0IFA" role="2ShVmc">
                <ref role="37wK5l" to="mxf6:~JSONObject.&lt;init&gt;()" resolve="JSONObject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="IDYkYC3Uys" role="3cqZAp">
          <node concept="3SKdUq" id="IDYkYC3Uyu" role="3SKWNk">
            <property role="3SKdUp" value="setup meta data" />
          </node>
        </node>
        <node concept="3clFbF" id="IDYkYC3V5f" role="3cqZAp">
          <node concept="2OqwBi" id="IDYkYC3V5g" role="3clFbG">
            <node concept="37vLTw" id="IDYkYC3VWj" role="2Oq$k0">
              <ref role="3cqZAo" node="IDYkYC3TLI" resolve="jn" />
            </node>
            <node concept="liA8E" id="IDYkYC3V5i" role="2OqNvi">
              <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object):org.json.JSONObject" resolve="put" />
              <node concept="Xl_RD" id="IDYkYC3V5j" role="37wK5m">
                <property role="Xl_RC" value="title" />
              </node>
              <node concept="Xl_RD" id="IDYkYC3V5k" role="37wK5m">
                <property role="Xl_RC" value="Language Graph Viz" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="IDYkYC3Vt6" role="3cqZAp" />
        <node concept="3SKdUt" id="IDYkYC5Nmc" role="3cqZAp">
          <node concept="3SKdUq" id="IDYkYC5Nme" role="3SKWNk">
            <property role="3SKdUp" value="start generation" />
          </node>
        </node>
        <node concept="3clFbF" id="IDYkYC5JD3" role="3cqZAp">
          <node concept="2OqwBi" id="IDYkYC5KGJ" role="3clFbG">
            <node concept="37vLTw" id="IDYkYC5JD1" role="2Oq$k0">
              <ref role="3cqZAo" node="IDYkYC3TLI" resolve="jn" />
            </node>
            <node concept="liA8E" id="IDYkYC5LnD" role="2OqNvi">
              <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object):org.json.JSONObject" resolve="put" />
              <node concept="Xl_RD" id="IDYkYC5LFN" role="37wK5m">
                <property role="Xl_RC" value="data" />
              </node>
              <node concept="1rXfSq" id="IDYkYC5Mki" role="37wK5m">
                <ref role="37wK5l" node="5GDu10Z0WAU" resolve="generateLanguageGraph" />
                <node concept="37vLTw" id="IDYkYC5N43" role="37wK5m">
                  <ref role="3cqZAo" node="5GDu10Z08x6" resolve="root" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="IDYkYC5b1d" role="3cqZAp" />
        <node concept="3SKdUt" id="IDYkYC3WgO" role="3cqZAp">
          <node concept="3SKdUq" id="IDYkYC3WgQ" role="3SKWNk">
            <property role="3SKdUp" value="including languages" />
          </node>
        </node>
        <node concept="3clFbH" id="IDYkYC7ngp" role="3cqZAp" />
        <node concept="3cpWs8" id="IDYkYC8yPW" role="3cqZAp">
          <node concept="3cpWsn" id="IDYkYC8yQ2" role="3cpWs9">
            <property role="TrG5h" value="colors" />
            <node concept="3uibUv" id="IDYkYC8yQ4" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
              <node concept="3uibUv" id="IDYkYC9Bdg" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="IDYkYC9CSx" role="33vP2m">
              <node concept="1pGfFk" id="IDYkYC9CIk" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="IDYkYC9CIl" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="IDYkYC3WDb" role="3cqZAp">
          <node concept="3cpWsn" id="IDYkYC3WDc" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="languages" />
            <node concept="3uibUv" id="5GDu10Z0Jv3" role="1tU5fm">
              <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
            </node>
            <node concept="2ShNRf" id="IDYkYC3WDe" role="33vP2m">
              <node concept="1pGfFk" id="5GDu10Z0JXz" role="2ShVmc">
                <ref role="37wK5l" to="mxf6:~JSONObject.&lt;init&gt;()" resolve="JSONObject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="IDYkYC7KLs" role="3cqZAp">
          <node concept="3clFbS" id="IDYkYC7KLu" role="3clFbx">
            <node concept="3cpWs8" id="IDYkYCaE1X" role="3cqZAp">
              <node concept="3cpWsn" id="IDYkYCaE20" role="3cpWs9">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="IDYkYCaE1V" role="1tU5fm" />
                <node concept="3cmrfG" id="IDYkYCaGag" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="IDYkYC5ebU" role="3cqZAp">
              <node concept="2GrKxI" id="IDYkYC5ebW" role="2Gsz3X">
                <property role="TrG5h" value="lang" />
              </node>
              <node concept="37vLTw" id="IDYkYC5eY1" role="2GsD0m">
                <ref role="3cqZAo" node="IDYkYC41hh" resolve="languagesUsed" />
              </node>
              <node concept="3clFbS" id="IDYkYC5ec0" role="2LFqv$">
                <node concept="3cpWs8" id="IDYkYC5fNm" role="3cqZAp">
                  <node concept="3cpWsn" id="IDYkYC5fNn" role="3cpWs9">
                    <property role="3TUv4t" value="false" />
                    <property role="TrG5h" value="jTmpLang" />
                    <node concept="3uibUv" id="5GDu10Z0K9O" role="1tU5fm">
                      <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
                    </node>
                    <node concept="2ShNRf" id="IDYkYC5fNp" role="33vP2m">
                      <node concept="1pGfFk" id="5GDu10Z0KCp" role="2ShVmc">
                        <ref role="37wK5l" to="mxf6:~JSONObject.&lt;init&gt;()" resolve="JSONObject" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="IDYkYCd9hq" role="3cqZAp">
                  <node concept="3cpWsn" id="IDYkYCd9hr" role="3cpWs9">
                    <property role="TrG5h" value="c" />
                    <node concept="3uibUv" id="IDYkYCd9hs" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
                    </node>
                    <node concept="1rXfSq" id="IDYkYCd9Ya" role="33vP2m">
                      <ref role="37wK5l" node="IDYkYCbVCR" resolve="generateRandomColor" />
                      <node concept="10M0yZ" id="IDYkYCdaev" role="37wK5m">
                        <ref role="3cqZAo" to="z60i:~Color.WHITE" resolve="WHITE" />
                        <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="IDYkYCd6HZ" role="3cqZAp">
                  <node concept="3cpWsn" id="IDYkYCd6HY" role="3cpWs9">
                    <property role="3TUv4t" value="false" />
                    <property role="TrG5h" value="hex" />
                    <node concept="3uibUv" id="IDYkYCd6I0" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="2YIFZM" id="IDYkYCd6Ia" role="33vP2m">
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                      <node concept="Xl_RD" id="IDYkYCd6I2" role="37wK5m">
                        <property role="Xl_RC" value="#%02x%02x%02x" />
                      </node>
                      <node concept="2OqwBi" id="IDYkYCdaMu" role="37wK5m">
                        <node concept="37vLTw" id="IDYkYCdaxF" role="2Oq$k0">
                          <ref role="3cqZAo" node="IDYkYCd9hr" resolve="c" />
                        </node>
                        <node concept="liA8E" id="IDYkYCdbn2" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Color.getRed():int" resolve="getRed" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="IDYkYCdc47" role="37wK5m">
                        <node concept="37vLTw" id="IDYkYCdbJN" role="2Oq$k0">
                          <ref role="3cqZAo" node="IDYkYCd9hr" resolve="c" />
                        </node>
                        <node concept="liA8E" id="IDYkYCdcU3" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Color.getGreen():int" resolve="getGreen" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="IDYkYCddAF" role="37wK5m">
                        <node concept="37vLTw" id="IDYkYCddio" role="2Oq$k0">
                          <ref role="3cqZAo" node="IDYkYCd9hr" resolve="c" />
                        </node>
                        <node concept="liA8E" id="IDYkYCdewo" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Color.getBlue():int" resolve="getBlue" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="IDYkYC5fNr" role="3cqZAp">
                  <node concept="2OqwBi" id="IDYkYC5fNs" role="3clFbG">
                    <node concept="37vLTw" id="IDYkYC5fNt" role="2Oq$k0">
                      <ref role="3cqZAo" node="IDYkYC5fNn" resolve="jTmpLang" />
                    </node>
                    <node concept="liA8E" id="IDYkYC5fNu" role="2OqNvi">
                      <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object):org.json.JSONObject" resolve="put" />
                      <node concept="Xl_RD" id="IDYkYC5fNv" role="37wK5m">
                        <property role="Xl_RC" value="color" />
                      </node>
                      <node concept="37vLTw" id="IDYkYCdgcw" role="37wK5m">
                        <ref role="3cqZAo" node="IDYkYCd6HY" resolve="hex" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="IDYkYC5jkC" role="3cqZAp">
                  <node concept="2OqwBi" id="IDYkYC5jsw" role="3clFbG">
                    <node concept="37vLTw" id="IDYkYC5jkA" role="2Oq$k0">
                      <ref role="3cqZAo" node="IDYkYC3WDc" resolve="languages" />
                    </node>
                    <node concept="liA8E" id="IDYkYC5jLb" role="2OqNvi">
                      <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object):org.json.JSONObject" resolve="put" />
                      <node concept="2OqwBi" id="IDYkYC5kvU" role="37wK5m">
                        <node concept="2GrUjf" id="IDYkYC5koV" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="IDYkYC5ebW" resolve="lang" />
                        </node>
                        <node concept="liA8E" id="IDYkYC5lka" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SLanguage.getQualifiedName():java.lang.String" resolve="getQualifiedName" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="IDYkYC5yLb" role="37wK5m">
                        <ref role="3cqZAo" node="IDYkYC5fNn" resolve="jTmpLang" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="IDYkYCaPui" role="3cqZAp">
                  <node concept="3uNrnE" id="IDYkYCaQqP" role="3clFbG">
                    <node concept="37vLTw" id="IDYkYCaQqR" role="2$L3a6">
                      <ref role="3cqZAo" node="IDYkYCaE20" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOSWO" id="IDYkYC81J5" role="3clFbw">
            <node concept="3cmrfG" id="IDYkYC81Tz" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="IDYkYC7OTF" role="3uHU7B">
              <node concept="37vLTw" id="IDYkYC7MHT" role="2Oq$k0">
                <ref role="3cqZAo" node="IDYkYC41hh" resolve="languagesUsed" />
              </node>
              <node concept="liA8E" id="IDYkYC7Roj" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~ArrayList.size():int" resolve="size" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="IDYkYC7s8I" role="3cqZAp" />
        <node concept="3clFbF" id="IDYkYC5Ghp" role="3cqZAp">
          <node concept="2OqwBi" id="IDYkYC5HjG" role="3clFbG">
            <node concept="37vLTw" id="IDYkYC5Ghn" role="2Oq$k0">
              <ref role="3cqZAo" node="IDYkYC3TLI" resolve="jn" />
            </node>
            <node concept="liA8E" id="IDYkYC5I1I" role="2OqNvi">
              <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object):org.json.JSONObject" resolve="put" />
              <node concept="Xl_RD" id="IDYkYC5Ii$" role="37wK5m">
                <property role="Xl_RC" value="languages" />
              </node>
              <node concept="37vLTw" id="IDYkYC5ITL" role="37wK5m">
                <ref role="3cqZAo" node="IDYkYC3WDc" resolve="languages" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="IDYkYC3Tls" role="3cqZAp">
          <node concept="37vLTw" id="IDYkYC5bMX" role="3cqZAk">
            <ref role="3cqZAo" node="IDYkYC3TLI" resolve="jn" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5GDu10Z057b" role="1B3o_S" />
      <node concept="3uibUv" id="5GDu10Z081_" role="3clF45">
        <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
      </node>
      <node concept="37vLTG" id="5GDu10Z08x6" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="5GDu10Z08x5" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="5GDu10Z0iik" role="Sfmx6">
        <ref role="3uigEE" to="mxf6:~JSONException" resolve="JSONException" />
      </node>
    </node>
    <node concept="2tJIrI" id="5GDu10Z0SG4" role="jymVt" />
    <node concept="3clFb_" id="5GDu10Z0WAU" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="generateLanguageGraph" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5GDu10Z0WAX" role="3clF47">
        <node concept="3SKdUt" id="IDYkYC2DGJ" role="3cqZAp">
          <node concept="3SKdUq" id="IDYkYC2DGL" role="3SKWNk">
            <property role="3SKdUp" value="get language" />
          </node>
        </node>
        <node concept="3clFbF" id="IDYkYC2E9t" role="3cqZAp">
          <node concept="2OqwBi" id="IDYkYC2Grf" role="3clFbG">
            <node concept="2OqwBi" id="IDYkYC2G1n" role="2Oq$k0">
              <node concept="2OqwBi" id="IDYkYC2FCD" role="2Oq$k0">
                <node concept="37vLTw" id="IDYkYC2E9r" role="2Oq$k0">
                  <ref role="3cqZAo" node="5GDu10Z0XZK" resolve="root" />
                </node>
                <node concept="2yIwOk" id="IDYkYC2FLr" role="2OqNvi" />
              </node>
              <node concept="liA8E" id="IDYkYC2Gfn" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage():org.jetbrains.mps.openapi.language.SLanguage" resolve="getLanguage" />
              </node>
            </node>
            <node concept="liA8E" id="IDYkYC2GXd" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SLanguage.getQualifiedName():java.lang.String" resolve="getQualifiedName" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="IDYkYC2YxR" role="3cqZAp" />
        <node concept="3cpWs8" id="IDYkYC2Z_R" role="3cqZAp">
          <node concept="3cpWsn" id="IDYkYC2Z_S" role="3cpWs9">
            <property role="TrG5h" value="jn" />
            <node concept="3uibUv" id="5GDu10Z1ixu" role="1tU5fm">
              <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
            </node>
            <node concept="2ShNRf" id="IDYkYC30eZ" role="33vP2m">
              <node concept="1pGfFk" id="5GDu10Z1jJG" role="2ShVmc">
                <ref role="37wK5l" to="mxf6:~JSONObject.&lt;init&gt;()" resolve="JSONObject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="IDYkYC30k4" role="3cqZAp" />
        <node concept="3cpWs8" id="IDYkYC31jb" role="3cqZAp">
          <node concept="3cpWsn" id="IDYkYC31jc" role="3cpWs9">
            <property role="TrG5h" value="name" />
            <node concept="3uibUv" id="IDYkYC31jd" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="Xl_RD" id="IDYkYC31Ld" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="IDYkYC32$k" role="3cqZAp">
          <node concept="3cpWsn" id="IDYkYC32$l" role="3cpWs9">
            <property role="TrG5h" value="language" />
            <node concept="3uibUv" id="IDYkYC32$m" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="10Nm6u" id="IDYkYC33eG" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbH" id="IDYkYC33ff" role="3cqZAp" />
        <node concept="3clFbJ" id="IDYkYC33T3" role="3cqZAp">
          <node concept="3clFbS" id="IDYkYC33T5" role="3clFbx">
            <node concept="3clFbF" id="IDYkYC35gu" role="3cqZAp">
              <node concept="37vLTI" id="IDYkYC35QB" role="3clFbG">
                <node concept="2OqwBi" id="IDYkYC36En" role="37vLTx">
                  <node concept="1PxgMI" id="1BIho7BpYt$" role="2Oq$k0">
                    <node concept="chp4Y" id="1BIho7BpYwj" role="3oSUPX">
                      <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                    </node>
                    <node concept="37vLTw" id="IDYkYC365Z" role="1m5AlR">
                      <ref role="3cqZAo" node="5GDu10Z0XZK" resolve="root" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="IDYkYC36Pc" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="37vLTw" id="IDYkYC35gs" role="37vLTJ">
                  <ref role="3cqZAo" node="IDYkYC31jc" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="IDYkYC34JE" role="3clFbw">
            <node concept="37vLTw" id="IDYkYC34oe" role="2Oq$k0">
              <ref role="3cqZAo" node="5GDu10Z0XZK" resolve="root" />
            </node>
            <node concept="1mIQ4w" id="IDYkYC34XU" role="2OqNvi">
              <node concept="chp4Y" id="IDYkYC350g" role="cj9EA">
                <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="IDYkYC379l" role="9aQIa">
            <node concept="3clFbS" id="IDYkYC379m" role="9aQI4">
              <node concept="3clFbF" id="IDYkYC37ve" role="3cqZAp">
                <node concept="37vLTI" id="IDYkYC383a" role="3clFbG">
                  <node concept="2OqwBi" id="IDYkYC393I" role="37vLTx">
                    <node concept="2OqwBi" id="IDYkYC38$J" role="2Oq$k0">
                      <node concept="37vLTw" id="IDYkYC38iy" role="2Oq$k0">
                        <ref role="3cqZAo" node="5GDu10Z0XZK" resolve="root" />
                      </node>
                      <node concept="2yIwOk" id="IDYkYC38LG" role="2OqNvi" />
                    </node>
                    <node concept="liA8E" id="IDYkYC39H5" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.getName():java.lang.String" resolve="getName" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="IDYkYC37vd" role="37vLTJ">
                    <ref role="3cqZAo" node="IDYkYC31jc" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="IDYkYC30wv" role="3cqZAp" />
        <node concept="3clFbJ" id="IDYkYC3aqL" role="3cqZAp">
          <node concept="3clFbS" id="IDYkYC3aqN" role="3clFbx">
            <node concept="3SKdUt" id="IDYkYC5a9p" role="3cqZAp">
              <node concept="3SKdUq" id="IDYkYC5a9r" role="3SKWNk">
                <property role="3SKdUp" value="store languages" />
              </node>
            </node>
            <node concept="3clFbJ" id="IDYkYC48Q9" role="3cqZAp">
              <node concept="3clFbS" id="IDYkYC48Qb" role="3clFbx">
                <node concept="3clFbF" id="IDYkYC4GCq" role="3cqZAp">
                  <node concept="2OqwBi" id="IDYkYC4HWG" role="3clFbG">
                    <node concept="37vLTw" id="IDYkYC4GCo" role="2Oq$k0">
                      <ref role="3cqZAo" node="IDYkYC41hh" resolve="languagesUsed" />
                    </node>
                    <node concept="liA8E" id="IDYkYC4JLQ" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                      <node concept="2OqwBi" id="IDYkYC4ZwZ" role="37wK5m">
                        <node concept="2OqwBi" id="IDYkYC4Pj3" role="2Oq$k0">
                          <node concept="37vLTw" id="IDYkYC4OOm" role="2Oq$k0">
                            <ref role="3cqZAo" node="5GDu10Z0XZK" resolve="root" />
                          </node>
                          <node concept="2yIwOk" id="IDYkYC4YZx" role="2OqNvi" />
                        </node>
                        <node concept="liA8E" id="IDYkYC59ud" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage():org.jetbrains.mps.openapi.language.SLanguage" resolve="getLanguage" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="IDYkYC4Bbq" role="3clFbw">
                <node concept="2OqwBi" id="IDYkYC4Bbs" role="3fr31v">
                  <node concept="37vLTw" id="IDYkYC4Bbt" role="2Oq$k0">
                    <ref role="3cqZAo" node="IDYkYC41hh" resolve="languagesUsed" />
                  </node>
                  <node concept="liA8E" id="IDYkYC4Bbu" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~ArrayList.contains(java.lang.Object):boolean" resolve="contains" />
                    <node concept="2OqwBi" id="IDYkYC4Bbv" role="37wK5m">
                      <node concept="2OqwBi" id="IDYkYC4Bbw" role="2Oq$k0">
                        <node concept="37vLTw" id="IDYkYC4Bbx" role="2Oq$k0">
                          <ref role="3cqZAo" node="5GDu10Z0XZK" resolve="root" />
                        </node>
                        <node concept="2yIwOk" id="IDYkYC4Bby" role="2OqNvi" />
                      </node>
                      <node concept="liA8E" id="IDYkYC4Bbz" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage():org.jetbrains.mps.openapi.language.SLanguage" resolve="getLanguage" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="IDYkYC3enj" role="3cqZAp">
              <node concept="37vLTI" id="IDYkYC3fg0" role="3clFbG">
                <node concept="2OqwBi" id="IDYkYC3gIN" role="37vLTx">
                  <node concept="2OqwBi" id="IDYkYC3ggz" role="2Oq$k0">
                    <node concept="2OqwBi" id="IDYkYC3fL$" role="2Oq$k0">
                      <node concept="37vLTw" id="IDYkYC3fvn" role="2Oq$k0">
                        <ref role="3cqZAo" node="5GDu10Z0XZK" resolve="root" />
                      </node>
                      <node concept="2yIwOk" id="IDYkYC3fYx" role="2OqNvi" />
                    </node>
                    <node concept="liA8E" id="IDYkYC3gyI" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage():org.jetbrains.mps.openapi.language.SLanguage" resolve="getLanguage" />
                    </node>
                  </node>
                  <node concept="liA8E" id="IDYkYC3hle" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SLanguage.getQualifiedName():java.lang.String" resolve="getQualifiedName" />
                  </node>
                </node>
                <node concept="37vLTw" id="IDYkYC3enh" role="37vLTJ">
                  <ref role="3cqZAo" node="IDYkYC32$l" resolve="language" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="IDYkYC3c$N" role="3clFbw">
            <node concept="2OqwBi" id="IDYkYC3bY7" role="3uHU7B">
              <node concept="2OqwBi" id="IDYkYC3bm_" role="2Oq$k0">
                <node concept="37vLTw" id="IDYkYC3aZ9" role="2Oq$k0">
                  <ref role="3cqZAo" node="5GDu10Z0XZK" resolve="root" />
                </node>
                <node concept="2yIwOk" id="IDYkYC3bGc" role="2OqNvi" />
              </node>
              <node concept="liA8E" id="IDYkYC3chm" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage():org.jetbrains.mps.openapi.language.SLanguage" resolve="getLanguage" />
              </node>
            </node>
            <node concept="10Nm6u" id="IDYkYC3d8L" role="3uHU7w" />
          </node>
        </node>
        <node concept="3clFbH" id="IDYkYC2Do2" role="3cqZAp" />
        <node concept="3clFbF" id="IDYkYC3iQ6" role="3cqZAp">
          <node concept="2OqwBi" id="IDYkYC3jtL" role="3clFbG">
            <node concept="37vLTw" id="IDYkYC3iQ4" role="2Oq$k0">
              <ref role="3cqZAo" node="IDYkYC2Z_S" resolve="jn" />
            </node>
            <node concept="liA8E" id="IDYkYC3jCx" role="2OqNvi">
              <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object):org.json.JSONObject" resolve="put" />
              <node concept="Xl_RD" id="IDYkYC3jRM" role="37wK5m">
                <property role="Xl_RC" value="name" />
              </node>
              <node concept="37vLTw" id="IDYkYC3kgK" role="37wK5m">
                <ref role="3cqZAo" node="IDYkYC31jc" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="IDYkYC3lmJ" role="3cqZAp">
          <node concept="2OqwBi" id="IDYkYC3lmK" role="3clFbG">
            <node concept="37vLTw" id="IDYkYC3lmL" role="2Oq$k0">
              <ref role="3cqZAo" node="IDYkYC2Z_S" resolve="jn" />
            </node>
            <node concept="liA8E" id="IDYkYC3lmM" role="2OqNvi">
              <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object):org.json.JSONObject" resolve="put" />
              <node concept="Xl_RD" id="IDYkYC3lmN" role="37wK5m">
                <property role="Xl_RC" value="languageref" />
              </node>
              <node concept="37vLTw" id="IDYkYC3vkQ" role="37wK5m">
                <ref role="3cqZAo" node="IDYkYC32$l" resolve="language" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="IDYkYC3yBp" role="3cqZAp" />
        <node concept="3SKdUt" id="IDYkYC3zzG" role="3cqZAp">
          <node concept="3SKdUq" id="IDYkYC3zzI" role="3SKWNk">
            <property role="3SKdUp" value="children" />
          </node>
        </node>
        <node concept="3cpWs8" id="IDYkYC3_rr" role="3cqZAp">
          <node concept="3cpWsn" id="IDYkYC3_rs" role="3cpWs9">
            <property role="TrG5h" value="children" />
            <node concept="3uibUv" id="5GDu10Z1lJe" role="1tU5fm">
              <ref role="3uigEE" to="mxf6:~JSONArray" resolve="JSONArray" />
            </node>
            <node concept="2ShNRf" id="IDYkYC3AjG" role="33vP2m">
              <node concept="1pGfFk" id="5GDu10Z1mvQ" role="2ShVmc">
                <ref role="37wK5l" to="mxf6:~JSONArray.&lt;init&gt;()" resolve="JSONArray" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="IDYkYC3D2Q" role="3cqZAp">
          <node concept="2GrKxI" id="IDYkYC3D2S" role="2Gsz3X">
            <property role="TrG5h" value="child" />
          </node>
          <node concept="2OqwBi" id="IDYkYC3Ej2" role="2GsD0m">
            <node concept="37vLTw" id="IDYkYC3DVO" role="2Oq$k0">
              <ref role="3cqZAo" node="5GDu10Z0XZK" resolve="root" />
            </node>
            <node concept="32TBzR" id="IDYkYC3Ewr" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="IDYkYC3D2W" role="2LFqv$">
            <node concept="3clFbF" id="IDYkYC3GbG" role="3cqZAp">
              <node concept="2OqwBi" id="IDYkYC3Gt7" role="3clFbG">
                <node concept="37vLTw" id="IDYkYC3GbF" role="2Oq$k0">
                  <ref role="3cqZAo" node="IDYkYC3_rs" resolve="children" />
                </node>
                <node concept="liA8E" id="IDYkYC3GBh" role="2OqNvi">
                  <ref role="37wK5l" to="mxf6:~JSONArray.put(java.lang.Object):org.json.JSONArray" resolve="put" />
                  <node concept="1rXfSq" id="IDYkYC3H1V" role="37wK5m">
                    <ref role="37wK5l" node="5GDu10Z0WAU" resolve="generateLanguageGraph" />
                    <node concept="2GrUjf" id="IDYkYC3HKE" role="37wK5m">
                      <ref role="2Gs0qQ" node="IDYkYC3D2S" resolve="child" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="IDYkYC3FgA" role="3cqZAp">
          <node concept="3SKdUq" id="IDYkYC3FgC" role="3SKWNk">
            <property role="3SKdUp" value="annotations" />
          </node>
        </node>
        <node concept="3clFbH" id="IDYkYC3igI" role="3cqZAp" />
        <node concept="3clFbF" id="IDYkYC3JHm" role="3cqZAp">
          <node concept="2OqwBi" id="IDYkYC3Kto" role="3clFbG">
            <node concept="37vLTw" id="IDYkYC3JHk" role="2Oq$k0">
              <ref role="3cqZAo" node="IDYkYC2Z_S" resolve="jn" />
            </node>
            <node concept="liA8E" id="IDYkYC3KR6" role="2OqNvi">
              <ref role="37wK5l" to="mxf6:~JSONObject.put(java.lang.String,java.lang.Object):org.json.JSONObject" resolve="put" />
              <node concept="Xl_RD" id="IDYkYC3L7G" role="37wK5m">
                <property role="Xl_RC" value="children" />
              </node>
              <node concept="37vLTw" id="IDYkYC3LIL" role="37wK5m">
                <ref role="3cqZAo" node="IDYkYC3_rs" resolve="children" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="IDYkYC2CjK" role="3cqZAp">
          <node concept="37vLTw" id="IDYkYC3yrp" role="3cqZAk">
            <ref role="3cqZAo" node="IDYkYC2Z_S" resolve="jn" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5GDu10Z0V7X" role="1B3o_S" />
      <node concept="3uibUv" id="5GDu10Z0WAn" role="3clF45">
        <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
      </node>
      <node concept="37vLTG" id="5GDu10Z0XZK" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="5GDu10Z0XZJ" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="5GDu10Z10nI" role="Sfmx6">
        <ref role="3uigEE" to="mxf6:~JSONException" resolve="JSONException" />
      </node>
    </node>
    <node concept="2tJIrI" id="5GDu10Z1sDR" role="jymVt" />
    <node concept="3Tm1VV" id="5GDu10YZF75" role="1B3o_S" />
    <node concept="3uibUv" id="5GDu10Z1pWt" role="EKbjA">
      <ref role="3uigEE" to="kkv3:~MPSLanguageGraphViz" resolve="MPSLanguageGraphViz" />
    </node>
    <node concept="3clFb_" id="5GDu10Z1qM3" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="retrieveDataAsJsonString" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="5GDu10Z1qM4" role="1B3o_S" />
      <node concept="3uibUv" id="5GDu10Z1qM6" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="5GDu10Z1qM7" role="3clF47">
        <node concept="3cpWs6" id="5GDu10Z1A3m" role="3cqZAp">
          <node concept="1rXfSq" id="5GDu10Z1Bcy" role="3cqZAk">
            <ref role="37wK5l" node="IDYkYCdQVK" resolve="dataAsJsonString" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5GDu10Z1qM8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5GDu10Z1usb" role="jymVt" />
    <node concept="3clFb_" id="IDYkYCdQVK" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="dataAsJsonString" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="IDYkYCdQVN" role="3clF47">
        <node concept="3cpWs8" id="IDYkYC60my" role="3cqZAp">
          <node concept="3cpWsn" id="IDYkYC60mz" role="3cpWs9">
            <property role="TrG5h" value="graph" />
            <node concept="3uibUv" id="5GDu10Z1zO4" role="1tU5fm">
              <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
            </node>
            <node concept="10Nm6u" id="IDYkYC6wTd" role="33vP2m" />
          </node>
        </node>
        <node concept="1QHqEK" id="IDYkYC69Nj" role="3cqZAp">
          <node concept="1QHqEC" id="IDYkYC69Nl" role="1QHqEI">
            <node concept="3clFbS" id="IDYkYC69Nn" role="1bW5cS">
              <node concept="SfApY" id="4c4vIOSy77N" role="3cqZAp">
                <node concept="TDmWw" id="4c4vIOSy77O" role="TEbGg">
                  <node concept="3clFbS" id="4c4vIOSy77K" role="TDEfX">
                    <node concept="3SKdUt" id="4c4vIOSy77S" role="3cqZAp">
                      <node concept="3SKdUq" id="4c4vIOSy77R" role="3SKWNk">
                        <property role="3SKdUp" value="TODO Auto-generated catch block" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="4c4vIOSy77L" role="3cqZAp">
                      <node concept="2OqwBi" id="4c4vIOSy77W" role="3clFbG">
                        <node concept="37vLTw" id="4c4vIOSy77V" role="2Oq$k0">
                          <ref role="3cqZAo" node="4c4vIOSy77G" resolve="e" />
                        </node>
                        <node concept="liA8E" id="4c4vIOSy77X" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace():void" resolve="printStackTrace" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="4c4vIOSy77G" role="TDEfY">
                    <property role="3TUv4t" value="false" />
                    <property role="TrG5h" value="e" />
                    <node concept="3uibUv" id="5GDu10Z1$NS" role="1tU5fm">
                      <ref role="3uigEE" to="mxf6:~JSONException" resolve="JSONException" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="4c4vIOSy76j" role="SfCbr">
                  <node concept="3clFbF" id="IDYkYC6v_m" role="3cqZAp">
                    <node concept="37vLTI" id="IDYkYC6vT8" role="3clFbG">
                      <node concept="1rXfSq" id="IDYkYC6whk" role="37vLTx">
                        <ref role="37wK5l" node="5GDu10Z081S" resolve="generateCompleteLanguageGraph" />
                        <node concept="37vLTw" id="IDYkYC6wwH" role="37wK5m">
                          <ref role="3cqZAo" node="IDYkYC2vQA" resolve="root" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="IDYkYC6v_k" role="37vLTJ">
                        <ref role="3cqZAo" node="IDYkYC60mz" resolve="graph" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="IDYkYC6BZ4" role="3cqZAp" />
        <node concept="3clFbJ" id="IDYkYC6ypR" role="3cqZAp">
          <node concept="3clFbS" id="IDYkYC6ypT" role="3clFbx">
            <node concept="3cpWs6" id="IDYkYC6_hH" role="3cqZAp">
              <node concept="2OqwBi" id="IDYkYC6AlK" role="3cqZAk">
                <node concept="37vLTw" id="IDYkYC6_sR" role="2Oq$k0">
                  <ref role="3cqZAo" node="IDYkYC60mz" resolve="graph" />
                </node>
                <node concept="liA8E" id="IDYkYC6BeQ" role="2OqNvi">
                  <ref role="37wK5l" to="mxf6:~JSONObject.toString():java.lang.String" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="IDYkYC6$Rp" role="3clFbw">
            <node concept="10Nm6u" id="IDYkYC6_3k" role="3uHU7w" />
            <node concept="37vLTw" id="IDYkYC6zUw" role="3uHU7B">
              <ref role="3cqZAo" node="IDYkYC60mz" resolve="graph" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="IDYkYC6qqV" role="3cqZAp">
          <node concept="10Nm6u" id="IDYkYC6r4t" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="IDYkYCdN86" role="1B3o_S" />
      <node concept="3uibUv" id="IDYkYCdQTO" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2tJIrI" id="5GDu10Z1vrC" role="jymVt" />
    <node concept="2YIFZL" id="IDYkYC8JP2" role="jymVt">
      <property role="TrG5h" value="hsvToRgb" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="IDYkYC8JP3" role="3clF46">
        <property role="TrG5h" value="hue" />
        <property role="3TUv4t" value="false" />
        <node concept="10OMs4" id="IDYkYC8JP4" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="IDYkYC8JP5" role="3clF46">
        <property role="TrG5h" value="saturation" />
        <property role="3TUv4t" value="false" />
        <node concept="10OMs4" id="IDYkYC8JP6" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="IDYkYC8JP7" role="3clF46">
        <property role="TrG5h" value="value" />
        <property role="3TUv4t" value="false" />
        <node concept="10OMs4" id="IDYkYC8JP8" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="IDYkYC8JP9" role="3clF47">
        <node concept="3cpWs8" id="IDYkYC8JPb" role="3cqZAp">
          <node concept="3cpWsn" id="IDYkYC8JPa" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="h" />
            <node concept="10Oyi0" id="IDYkYC8JPc" role="1tU5fm" />
            <node concept="10QFUN" id="IDYkYC8JPd" role="33vP2m">
              <node concept="1eOMI4" id="IDYkYC8JPh" role="10QFUP">
                <node concept="17qRlL" id="IDYkYC8JPe" role="1eOMHV">
                  <node concept="37vLTw" id="IDYkYC8JPf" role="3uHU7B">
                    <ref role="3cqZAo" node="IDYkYC8JP3" resolve="hue" />
                  </node>
                  <node concept="3cmrfG" id="IDYkYC8JPg" role="3uHU7w">
                    <property role="3cmrfH" value="6" />
                  </node>
                </node>
              </node>
              <node concept="10Oyi0" id="IDYkYC8JPi" role="10QFUM" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="IDYkYC8JPk" role="3cqZAp">
          <node concept="3cpWsn" id="IDYkYC8JPj" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="f" />
            <node concept="10OMs4" id="IDYkYC8JPl" role="1tU5fm" />
            <node concept="3cpWsd" id="IDYkYC8JPm" role="33vP2m">
              <node concept="17qRlL" id="IDYkYC8JPn" role="3uHU7B">
                <node concept="37vLTw" id="IDYkYC8JPo" role="3uHU7B">
                  <ref role="3cqZAo" node="IDYkYC8JP3" resolve="hue" />
                </node>
                <node concept="3cmrfG" id="IDYkYC8JPp" role="3uHU7w">
                  <property role="3cmrfH" value="6" />
                </node>
              </node>
              <node concept="37vLTw" id="IDYkYC8JPq" role="3uHU7w">
                <ref role="3cqZAo" node="IDYkYC8JPa" resolve="h" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="IDYkYC8JPs" role="3cqZAp">
          <node concept="3cpWsn" id="IDYkYC8JPr" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="p" />
            <node concept="10OMs4" id="IDYkYC8JPt" role="1tU5fm" />
            <node concept="17qRlL" id="IDYkYC8JPu" role="33vP2m">
              <node concept="37vLTw" id="IDYkYC8JPv" role="3uHU7B">
                <ref role="3cqZAo" node="IDYkYC8JP7" resolve="value" />
              </node>
              <node concept="1eOMI4" id="IDYkYC8JPz" role="3uHU7w">
                <node concept="3cpWsd" id="IDYkYC8JPw" role="1eOMHV">
                  <node concept="3cmrfG" id="IDYkYC8JPx" role="3uHU7B">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="IDYkYC8JPy" role="3uHU7w">
                    <ref role="3cqZAo" node="IDYkYC8JP5" resolve="saturation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="IDYkYC8JP_" role="3cqZAp">
          <node concept="3cpWsn" id="IDYkYC8JP$" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="q" />
            <node concept="10OMs4" id="IDYkYC8JPA" role="1tU5fm" />
            <node concept="17qRlL" id="IDYkYC8JPB" role="33vP2m">
              <node concept="37vLTw" id="IDYkYC8JPC" role="3uHU7B">
                <ref role="3cqZAo" node="IDYkYC8JP7" resolve="value" />
              </node>
              <node concept="1eOMI4" id="IDYkYC8JPI" role="3uHU7w">
                <node concept="3cpWsd" id="IDYkYC8JPD" role="1eOMHV">
                  <node concept="3cmrfG" id="IDYkYC8JPE" role="3uHU7B">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="17qRlL" id="IDYkYC8JPF" role="3uHU7w">
                    <node concept="37vLTw" id="IDYkYC8JPG" role="3uHU7B">
                      <ref role="3cqZAo" node="IDYkYC8JPj" resolve="f" />
                    </node>
                    <node concept="37vLTw" id="IDYkYC8JPH" role="3uHU7w">
                      <ref role="3cqZAo" node="IDYkYC8JP5" resolve="saturation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="IDYkYC8JPK" role="3cqZAp">
          <node concept="3cpWsn" id="IDYkYC8JPJ" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="t" />
            <node concept="10OMs4" id="IDYkYC8JPL" role="1tU5fm" />
            <node concept="17qRlL" id="IDYkYC8JPM" role="33vP2m">
              <node concept="37vLTw" id="IDYkYC8JPN" role="3uHU7B">
                <ref role="3cqZAo" node="IDYkYC8JP7" resolve="value" />
              </node>
              <node concept="1eOMI4" id="IDYkYC8JPW" role="3uHU7w">
                <node concept="3cpWsd" id="IDYkYC8JPO" role="1eOMHV">
                  <node concept="3cmrfG" id="IDYkYC8JPP" role="3uHU7B">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="17qRlL" id="IDYkYC8JPQ" role="3uHU7w">
                    <node concept="1eOMI4" id="IDYkYC8JPU" role="3uHU7B">
                      <node concept="3cpWsd" id="IDYkYC8JPR" role="1eOMHV">
                        <node concept="3cmrfG" id="IDYkYC8JPS" role="3uHU7B">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="IDYkYC8JPT" role="3uHU7w">
                          <ref role="3cqZAo" node="IDYkYC8JPj" resolve="f" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="IDYkYC8JPV" role="3uHU7w">
                      <ref role="3cqZAo" node="IDYkYC8JP5" resolve="saturation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="IDYkYC8JPY" role="3cqZAp">
          <node concept="37vLTw" id="IDYkYC8JPX" role="3KbGdf">
            <ref role="3cqZAo" node="IDYkYC8JPa" resolve="h" />
          </node>
          <node concept="3clFbS" id="IDYkYC8JPZ" role="3Kb1Dw">
            <node concept="YS8fn" id="IDYkYC8JQW" role="3cqZAp">
              <node concept="2ShNRf" id="IDYkYC8JQZ" role="YScLw">
                <node concept="1pGfFk" id="IDYkYC8JWf" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                  <node concept="3cpWs3" id="IDYkYC8JQL" role="37wK5m">
                    <node concept="3cpWs3" id="IDYkYC8JQM" role="3uHU7B">
                      <node concept="3cpWs3" id="IDYkYC8JQN" role="3uHU7B">
                        <node concept="3cpWs3" id="IDYkYC8JQO" role="3uHU7B">
                          <node concept="3cpWs3" id="IDYkYC8JQP" role="3uHU7B">
                            <node concept="Xl_RD" id="IDYkYC8JQQ" role="3uHU7B">
                              <property role="Xl_RC" value="Something went wrong when converting from HSV to RGB. Input was " />
                            </node>
                            <node concept="37vLTw" id="IDYkYC8JQR" role="3uHU7w">
                              <ref role="3cqZAo" node="IDYkYC8JP3" resolve="hue" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="IDYkYC8JQS" role="3uHU7w">
                            <property role="Xl_RC" value=", " />
                          </node>
                        </node>
                        <node concept="37vLTw" id="IDYkYC8JQT" role="3uHU7w">
                          <ref role="3cqZAo" node="IDYkYC8JP5" resolve="saturation" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="IDYkYC8JQU" role="3uHU7w">
                        <property role="Xl_RC" value=", " />
                      </node>
                    </node>
                    <node concept="37vLTw" id="IDYkYC8JQV" role="3uHU7w">
                      <ref role="3cqZAo" node="IDYkYC8JP7" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="IDYkYC8JQ1" role="3KbHQx">
            <node concept="3cmrfG" id="IDYkYC8JQ0" role="3Kbmr1">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="3clFbS" id="IDYkYC8JQ2" role="3Kbo56">
              <node concept="3cpWs6" id="IDYkYC8JQ3" role="3cqZAp">
                <node concept="1rXfSq" id="IDYkYC8JQ4" role="3cqZAk">
                  <ref role="37wK5l" node="IDYkYC8PHZ" resolve="rgbToString" />
                  <node concept="37vLTw" id="IDYkYC8JQ5" role="37wK5m">
                    <ref role="3cqZAo" node="IDYkYC8JP7" resolve="value" />
                  </node>
                  <node concept="37vLTw" id="IDYkYC8JQ6" role="37wK5m">
                    <ref role="3cqZAo" node="IDYkYC8JPJ" resolve="t" />
                  </node>
                  <node concept="37vLTw" id="IDYkYC8JQ7" role="37wK5m">
                    <ref role="3cqZAo" node="IDYkYC8JPr" resolve="p" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="IDYkYC8JQ9" role="3KbHQx">
            <node concept="3cmrfG" id="IDYkYC8JQ8" role="3Kbmr1">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="3clFbS" id="IDYkYC8JQa" role="3Kbo56">
              <node concept="3cpWs6" id="IDYkYC8JQb" role="3cqZAp">
                <node concept="1rXfSq" id="IDYkYC8JQc" role="3cqZAk">
                  <ref role="37wK5l" node="IDYkYC8PHZ" resolve="rgbToString" />
                  <node concept="37vLTw" id="IDYkYC8JQd" role="37wK5m">
                    <ref role="3cqZAo" node="IDYkYC8JP$" resolve="q" />
                  </node>
                  <node concept="37vLTw" id="IDYkYC8JQe" role="37wK5m">
                    <ref role="3cqZAo" node="IDYkYC8JP7" resolve="value" />
                  </node>
                  <node concept="37vLTw" id="IDYkYC8JQf" role="37wK5m">
                    <ref role="3cqZAo" node="IDYkYC8JPr" resolve="p" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="IDYkYC8JQh" role="3KbHQx">
            <node concept="3cmrfG" id="IDYkYC8JQg" role="3Kbmr1">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="3clFbS" id="IDYkYC8JQi" role="3Kbo56">
              <node concept="3cpWs6" id="IDYkYC8JQj" role="3cqZAp">
                <node concept="1rXfSq" id="IDYkYC8JQk" role="3cqZAk">
                  <ref role="37wK5l" node="IDYkYC8PHZ" resolve="rgbToString" />
                  <node concept="37vLTw" id="IDYkYC8JQl" role="37wK5m">
                    <ref role="3cqZAo" node="IDYkYC8JPr" resolve="p" />
                  </node>
                  <node concept="37vLTw" id="IDYkYC8JQm" role="37wK5m">
                    <ref role="3cqZAo" node="IDYkYC8JP7" resolve="value" />
                  </node>
                  <node concept="37vLTw" id="IDYkYC8JQn" role="37wK5m">
                    <ref role="3cqZAo" node="IDYkYC8JPJ" resolve="t" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="IDYkYC8JQp" role="3KbHQx">
            <node concept="3cmrfG" id="IDYkYC8JQo" role="3Kbmr1">
              <property role="3cmrfH" value="3" />
            </node>
            <node concept="3clFbS" id="IDYkYC8JQq" role="3Kbo56">
              <node concept="3cpWs6" id="IDYkYC8JQr" role="3cqZAp">
                <node concept="1rXfSq" id="IDYkYC8JQs" role="3cqZAk">
                  <ref role="37wK5l" node="IDYkYC8PHZ" resolve="rgbToString" />
                  <node concept="37vLTw" id="IDYkYC8JQt" role="37wK5m">
                    <ref role="3cqZAo" node="IDYkYC8JPr" resolve="p" />
                  </node>
                  <node concept="37vLTw" id="IDYkYC8JQu" role="37wK5m">
                    <ref role="3cqZAo" node="IDYkYC8JP$" resolve="q" />
                  </node>
                  <node concept="37vLTw" id="IDYkYC8JQv" role="37wK5m">
                    <ref role="3cqZAo" node="IDYkYC8JP7" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="IDYkYC8JQx" role="3KbHQx">
            <node concept="3cmrfG" id="IDYkYC8JQw" role="3Kbmr1">
              <property role="3cmrfH" value="4" />
            </node>
            <node concept="3clFbS" id="IDYkYC8JQy" role="3Kbo56">
              <node concept="3cpWs6" id="IDYkYC8JQz" role="3cqZAp">
                <node concept="1rXfSq" id="IDYkYC8JQ$" role="3cqZAk">
                  <ref role="37wK5l" node="IDYkYC8PHZ" resolve="rgbToString" />
                  <node concept="37vLTw" id="IDYkYC8JQ_" role="37wK5m">
                    <ref role="3cqZAo" node="IDYkYC8JPJ" resolve="t" />
                  </node>
                  <node concept="37vLTw" id="IDYkYC8JQA" role="37wK5m">
                    <ref role="3cqZAo" node="IDYkYC8JPr" resolve="p" />
                  </node>
                  <node concept="37vLTw" id="IDYkYC8JQB" role="37wK5m">
                    <ref role="3cqZAo" node="IDYkYC8JP7" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="IDYkYC8JQD" role="3KbHQx">
            <node concept="3cmrfG" id="IDYkYC8JQC" role="3Kbmr1">
              <property role="3cmrfH" value="5" />
            </node>
            <node concept="3clFbS" id="IDYkYC8JQE" role="3Kbo56">
              <node concept="3cpWs6" id="IDYkYC8JQF" role="3cqZAp">
                <node concept="1rXfSq" id="IDYkYC8JQG" role="3cqZAk">
                  <ref role="37wK5l" node="IDYkYC8PHZ" resolve="rgbToString" />
                  <node concept="37vLTw" id="IDYkYC8JQH" role="37wK5m">
                    <ref role="3cqZAo" node="IDYkYC8JP7" resolve="value" />
                  </node>
                  <node concept="37vLTw" id="IDYkYC8JQI" role="37wK5m">
                    <ref role="3cqZAo" node="IDYkYC8JPr" resolve="p" />
                  </node>
                  <node concept="37vLTw" id="IDYkYC8JQJ" role="37wK5m">
                    <ref role="3cqZAo" node="IDYkYC8JP$" resolve="q" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="IDYkYC8JQX" role="1B3o_S" />
      <node concept="3uibUv" id="IDYkYC8JQY" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2tJIrI" id="IDYkYC8H5u" role="jymVt" />
    <node concept="2tJIrI" id="IDYkYC8TPr" role="jymVt" />
    <node concept="2YIFZL" id="IDYkYC90LS" role="jymVt">
      <property role="TrG5h" value="HSVtoRGB" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="IDYkYC90LT" role="3clF46">
        <property role="TrG5h" value="h" />
        <property role="3TUv4t" value="false" />
        <node concept="10OMs4" id="IDYkYC90LU" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="IDYkYC90LV" role="3clF46">
        <property role="TrG5h" value="s" />
        <property role="3TUv4t" value="false" />
        <node concept="10OMs4" id="IDYkYC90LW" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="IDYkYC90LX" role="3clF46">
        <property role="TrG5h" value="v" />
        <property role="3TUv4t" value="false" />
        <node concept="10OMs4" id="IDYkYC90LY" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="IDYkYC90LZ" role="3clF47">
        <node concept="3SKdUt" id="IDYkYC90Qz" role="3cqZAp">
          <node concept="3SKdUq" id="IDYkYC90Qy" role="3SKWNk">
            <property role="3SKdUp" value="H is given on [0-&gt;6] or -1. S and V are given on [0-&gt;1]." />
          </node>
        </node>
        <node concept="3SKdUt" id="IDYkYC90Q_" role="3cqZAp">
          <node concept="3SKdUq" id="IDYkYC90Q$" role="3SKWNk">
            <property role="3SKdUp" value="RGB are each returned on [0-&gt;1]." />
          </node>
        </node>
        <node concept="3cpWs8" id="IDYkYC90M1" role="3cqZAp">
          <node concept="3cpWsn" id="IDYkYC90M0" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="m" />
            <node concept="10OMs4" id="IDYkYC90M2" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="IDYkYC90M4" role="3cqZAp">
          <node concept="3cpWsn" id="IDYkYC90M3" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="n" />
            <node concept="10OMs4" id="IDYkYC90M5" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="IDYkYC90M7" role="3cqZAp">
          <node concept="3cpWsn" id="IDYkYC90M6" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="f" />
            <node concept="10OMs4" id="IDYkYC90M8" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="IDYkYC90Ma" role="3cqZAp">
          <node concept="3cpWsn" id="IDYkYC90M9" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="IDYkYC90Mb" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="IDYkYC90Md" role="3cqZAp">
          <node concept="3cpWsn" id="IDYkYC90Mc" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="hsv" />
            <node concept="10Q1$e" id="IDYkYC90Mf" role="1tU5fm">
              <node concept="10OMs4" id="IDYkYC90Me" role="10Q1$1" />
            </node>
            <node concept="2ShNRf" id="IDYkYC90Mk" role="33vP2m">
              <node concept="3$_iS1" id="IDYkYC90Mi" role="2ShVmc">
                <node concept="3$GHV9" id="IDYkYC90Mj" role="3$GQph">
                  <node concept="3cmrfG" id="IDYkYC90Mh" role="3$I4v7">
                    <property role="3cmrfH" value="3" />
                  </node>
                </node>
                <node concept="10OMs4" id="IDYkYC90Mg" role="3$_nBY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="IDYkYC90Mm" role="3cqZAp">
          <node concept="3cpWsn" id="IDYkYC90Ml" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="rgb" />
            <node concept="10Q1$e" id="IDYkYC90Mo" role="1tU5fm">
              <node concept="10OMs4" id="IDYkYC90Mn" role="10Q1$1" />
            </node>
            <node concept="2ShNRf" id="IDYkYC90Mt" role="33vP2m">
              <node concept="3$_iS1" id="IDYkYC90Mr" role="2ShVmc">
                <node concept="3$GHV9" id="IDYkYC90Ms" role="3$GQph">
                  <node concept="3cmrfG" id="IDYkYC90Mq" role="3$I4v7">
                    <property role="3cmrfH" value="3" />
                  </node>
                </node>
                <node concept="10OMs4" id="IDYkYC90Mp" role="3$_nBY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="IDYkYC90Mu" role="3cqZAp">
          <node concept="37vLTI" id="IDYkYC90Mv" role="3clFbG">
            <node concept="AH0OO" id="IDYkYC90Mw" role="37vLTJ">
              <node concept="37vLTw" id="IDYkYC90Mx" role="AHHXb">
                <ref role="3cqZAo" node="IDYkYC90Mc" resolve="hsv" />
              </node>
              <node concept="3cmrfG" id="IDYkYC90My" role="AHEQo">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="37vLTw" id="IDYkYC90Mz" role="37vLTx">
              <ref role="3cqZAo" node="IDYkYC90LT" resolve="h" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="IDYkYC90M$" role="3cqZAp">
          <node concept="37vLTI" id="IDYkYC90M_" role="3clFbG">
            <node concept="AH0OO" id="IDYkYC90MA" role="37vLTJ">
              <node concept="37vLTw" id="IDYkYC90MB" role="AHHXb">
                <ref role="3cqZAo" node="IDYkYC90Mc" resolve="hsv" />
              </node>
              <node concept="3cmrfG" id="IDYkYC90MC" role="AHEQo">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
            <node concept="37vLTw" id="IDYkYC90MD" role="37vLTx">
              <ref role="3cqZAo" node="IDYkYC90LV" resolve="s" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="IDYkYC90ME" role="3cqZAp">
          <node concept="37vLTI" id="IDYkYC90MF" role="3clFbG">
            <node concept="AH0OO" id="IDYkYC90MG" role="37vLTJ">
              <node concept="37vLTw" id="IDYkYC90MH" role="AHHXb">
                <ref role="3cqZAo" node="IDYkYC90Mc" resolve="hsv" />
              </node>
              <node concept="3cmrfG" id="IDYkYC90MI" role="AHEQo">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
            <node concept="37vLTw" id="IDYkYC90MJ" role="37vLTx">
              <ref role="3cqZAo" node="IDYkYC90LX" resolve="v" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="IDYkYC90MK" role="3cqZAp">
          <node concept="3clFbC" id="IDYkYC90ML" role="3clFbw">
            <node concept="AH0OO" id="IDYkYC90MM" role="3uHU7B">
              <node concept="37vLTw" id="IDYkYC90MN" role="AHHXb">
                <ref role="3cqZAo" node="IDYkYC90Mc" resolve="hsv" />
              </node>
              <node concept="3cmrfG" id="IDYkYC90MO" role="AHEQo">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="1ZRNhn" id="IDYkYC90MP" role="3uHU7w">
              <node concept="3cmrfG" id="IDYkYC90MQ" role="2$L3a6">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="IDYkYC90MS" role="3clFbx">
            <node concept="3clFbF" id="IDYkYC90MT" role="3cqZAp">
              <node concept="37vLTI" id="IDYkYC90MU" role="3clFbG">
                <node concept="AH0OO" id="IDYkYC90MV" role="37vLTJ">
                  <node concept="37vLTw" id="IDYkYC90MW" role="AHHXb">
                    <ref role="3cqZAo" node="IDYkYC90Ml" resolve="rgb" />
                  </node>
                  <node concept="3cmrfG" id="IDYkYC90MX" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
                <node concept="37vLTI" id="IDYkYC90MY" role="37vLTx">
                  <node concept="AH0OO" id="IDYkYC90MZ" role="37vLTJ">
                    <node concept="37vLTw" id="IDYkYC90N0" role="AHHXb">
                      <ref role="3cqZAo" node="IDYkYC90Ml" resolve="rgb" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC90N1" role="AHEQo">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                  <node concept="37vLTI" id="IDYkYC90N2" role="37vLTx">
                    <node concept="AH0OO" id="IDYkYC90N3" role="37vLTJ">
                      <node concept="37vLTw" id="IDYkYC90N4" role="AHHXb">
                        <ref role="3cqZAo" node="IDYkYC90Ml" resolve="rgb" />
                      </node>
                      <node concept="3cmrfG" id="IDYkYC90N5" role="AHEQo">
                        <property role="3cmrfH" value="2" />
                      </node>
                    </node>
                    <node concept="AH0OO" id="IDYkYC90N6" role="37vLTx">
                      <node concept="37vLTw" id="IDYkYC90N7" role="AHHXb">
                        <ref role="3cqZAo" node="IDYkYC90Mc" resolve="hsv" />
                      </node>
                      <node concept="3cmrfG" id="IDYkYC90N8" role="AHEQo">
                        <property role="3cmrfH" value="2" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="IDYkYC90N9" role="3cqZAp">
              <node concept="37vLTw" id="IDYkYC90Na" role="3cqZAk">
                <ref role="3cqZAo" node="IDYkYC90Ml" resolve="rgb" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="IDYkYC90Nb" role="3cqZAp">
          <node concept="37vLTI" id="IDYkYC90Nc" role="3clFbG">
            <node concept="37vLTw" id="IDYkYC90Nd" role="37vLTJ">
              <ref role="3cqZAo" node="IDYkYC90M9" resolve="i" />
            </node>
            <node concept="10QFUN" id="IDYkYC90Ne" role="37vLTx">
              <node concept="1eOMI4" id="IDYkYC90Nj" role="10QFUP">
                <node concept="2YIFZM" id="IDYkYC90QG" role="1eOMHV">
                  <ref role="37wK5l" to="wyt6:~Math.floor(double):double" resolve="floor" />
                  <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                  <node concept="AH0OO" id="IDYkYC90Ng" role="37wK5m">
                    <node concept="37vLTw" id="IDYkYC90Nh" role="AHHXb">
                      <ref role="3cqZAo" node="IDYkYC90Mc" resolve="hsv" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC90Ni" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="10Oyi0" id="IDYkYC90Nk" role="10QFUM" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="IDYkYC90Nl" role="3cqZAp">
          <node concept="37vLTI" id="IDYkYC90Nm" role="3clFbG">
            <node concept="37vLTw" id="IDYkYC90Nn" role="37vLTJ">
              <ref role="3cqZAo" node="IDYkYC90M6" resolve="f" />
            </node>
            <node concept="3cpWsd" id="IDYkYC90No" role="37vLTx">
              <node concept="AH0OO" id="IDYkYC90Np" role="3uHU7B">
                <node concept="37vLTw" id="IDYkYC90Nq" role="AHHXb">
                  <ref role="3cqZAo" node="IDYkYC90Mc" resolve="hsv" />
                </node>
                <node concept="3cmrfG" id="IDYkYC90Nr" role="AHEQo">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="37vLTw" id="IDYkYC90Ns" role="3uHU7w">
                <ref role="3cqZAo" node="IDYkYC90M9" resolve="i" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="IDYkYC90Nt" role="3cqZAp">
          <node concept="3clFbC" id="IDYkYC90Nu" role="3clFbw">
            <node concept="2dk9JS" id="IDYkYC90Nv" role="3uHU7B">
              <node concept="37vLTw" id="IDYkYC90Nw" role="3uHU7B">
                <ref role="3cqZAo" node="IDYkYC90M9" resolve="i" />
              </node>
              <node concept="3cmrfG" id="IDYkYC90Nx" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
            <node concept="3cmrfG" id="IDYkYC90Ny" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbS" id="IDYkYC90N$" role="3clFbx">
            <node concept="3clFbF" id="IDYkYC90N_" role="3cqZAp">
              <node concept="37vLTI" id="IDYkYC90NA" role="3clFbG">
                <node concept="37vLTw" id="IDYkYC90NB" role="37vLTJ">
                  <ref role="3cqZAo" node="IDYkYC90M6" resolve="f" />
                </node>
                <node concept="3cpWsd" id="IDYkYC90NC" role="37vLTx">
                  <node concept="3cmrfG" id="IDYkYC90ND" role="3uHU7B">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="IDYkYC90NE" role="3uHU7w">
                    <ref role="3cqZAo" node="IDYkYC90M6" resolve="f" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="IDYkYC90QB" role="3cqZAp">
              <node concept="3SKdUq" id="IDYkYC90QA" role="3SKWNk">
                <property role="3SKdUp" value="if i is even" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="IDYkYC90NF" role="3cqZAp">
          <node concept="37vLTI" id="IDYkYC90NG" role="3clFbG">
            <node concept="37vLTw" id="IDYkYC90NH" role="37vLTJ">
              <ref role="3cqZAo" node="IDYkYC90M0" resolve="m" />
            </node>
            <node concept="17qRlL" id="IDYkYC90NI" role="37vLTx">
              <node concept="AH0OO" id="IDYkYC90NJ" role="3uHU7B">
                <node concept="37vLTw" id="IDYkYC90NK" role="AHHXb">
                  <ref role="3cqZAo" node="IDYkYC90Mc" resolve="hsv" />
                </node>
                <node concept="3cmrfG" id="IDYkYC90NL" role="AHEQo">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
              <node concept="1eOMI4" id="IDYkYC90NR" role="3uHU7w">
                <node concept="3cpWsd" id="IDYkYC90NM" role="1eOMHV">
                  <node concept="3cmrfG" id="IDYkYC90NN" role="3uHU7B">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="AH0OO" id="IDYkYC90NO" role="3uHU7w">
                    <node concept="37vLTw" id="IDYkYC90NP" role="AHHXb">
                      <ref role="3cqZAo" node="IDYkYC90Mc" resolve="hsv" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC90NQ" role="AHEQo">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="IDYkYC90NS" role="3cqZAp">
          <node concept="37vLTI" id="IDYkYC90NT" role="3clFbG">
            <node concept="37vLTw" id="IDYkYC90NU" role="37vLTJ">
              <ref role="3cqZAo" node="IDYkYC90M3" resolve="n" />
            </node>
            <node concept="17qRlL" id="IDYkYC90NV" role="37vLTx">
              <node concept="AH0OO" id="IDYkYC90NW" role="3uHU7B">
                <node concept="37vLTw" id="IDYkYC90NX" role="AHHXb">
                  <ref role="3cqZAo" node="IDYkYC90Mc" resolve="hsv" />
                </node>
                <node concept="3cmrfG" id="IDYkYC90NY" role="AHEQo">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
              <node concept="1eOMI4" id="IDYkYC90O6" role="3uHU7w">
                <node concept="3cpWsd" id="IDYkYC90NZ" role="1eOMHV">
                  <node concept="3cmrfG" id="IDYkYC90O0" role="3uHU7B">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="17qRlL" id="IDYkYC90O1" role="3uHU7w">
                    <node concept="AH0OO" id="IDYkYC90O2" role="3uHU7B">
                      <node concept="37vLTw" id="IDYkYC90O3" role="AHHXb">
                        <ref role="3cqZAo" node="IDYkYC90Mc" resolve="hsv" />
                      </node>
                      <node concept="3cmrfG" id="IDYkYC90O4" role="AHEQo">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="IDYkYC90O5" role="3uHU7w">
                      <ref role="3cqZAo" node="IDYkYC90M6" resolve="f" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="IDYkYC90O8" role="3cqZAp">
          <node concept="37vLTw" id="IDYkYC90O7" role="3KbGdf">
            <ref role="3cqZAo" node="IDYkYC90M9" resolve="i" />
          </node>
          <node concept="3clFbS" id="IDYkYC90O9" role="3Kb1Dw" />
          <node concept="3KbdKl" id="IDYkYC90Ob" role="3KbHQx">
            <node concept="3cmrfG" id="IDYkYC90Oa" role="3Kbmr1">
              <property role="3cmrfH" value="6" />
            </node>
            <node concept="3clFbS" id="IDYkYC90Oc" role="3Kbo56" />
          </node>
          <node concept="3KbdKl" id="IDYkYC90Oe" role="3KbHQx">
            <node concept="3cmrfG" id="IDYkYC90Od" role="3Kbmr1">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="3clFbS" id="IDYkYC90Of" role="3Kbo56">
              <node concept="3clFbF" id="IDYkYC90Og" role="3cqZAp">
                <node concept="37vLTI" id="IDYkYC90Oh" role="3clFbG">
                  <node concept="AH0OO" id="IDYkYC90Oi" role="37vLTJ">
                    <node concept="37vLTw" id="IDYkYC90Oj" role="AHHXb">
                      <ref role="3cqZAo" node="IDYkYC90Ml" resolve="rgb" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC90Ok" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="AH0OO" id="IDYkYC90Ol" role="37vLTx">
                    <node concept="37vLTw" id="IDYkYC90Om" role="AHHXb">
                      <ref role="3cqZAo" node="IDYkYC90Mc" resolve="hsv" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC90On" role="AHEQo">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="IDYkYC90Oo" role="3cqZAp">
                <node concept="37vLTI" id="IDYkYC90Op" role="3clFbG">
                  <node concept="AH0OO" id="IDYkYC90Oq" role="37vLTJ">
                    <node concept="37vLTw" id="IDYkYC90Or" role="AHHXb">
                      <ref role="3cqZAo" node="IDYkYC90Ml" resolve="rgb" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC90Os" role="AHEQo">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="IDYkYC90Ot" role="37vLTx">
                    <ref role="3cqZAo" node="IDYkYC90M3" resolve="n" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="IDYkYC90Ou" role="3cqZAp">
                <node concept="37vLTI" id="IDYkYC90Ov" role="3clFbG">
                  <node concept="AH0OO" id="IDYkYC90Ow" role="37vLTJ">
                    <node concept="37vLTw" id="IDYkYC90Ox" role="AHHXb">
                      <ref role="3cqZAo" node="IDYkYC90Ml" resolve="rgb" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC90Oy" role="AHEQo">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="IDYkYC90Oz" role="37vLTx">
                    <ref role="3cqZAo" node="IDYkYC90M0" resolve="m" />
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="IDYkYC90O$" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="IDYkYC90OA" role="3KbHQx">
            <node concept="3cmrfG" id="IDYkYC90O_" role="3Kbmr1">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="3clFbS" id="IDYkYC90OB" role="3Kbo56">
              <node concept="3clFbF" id="IDYkYC90OC" role="3cqZAp">
                <node concept="37vLTI" id="IDYkYC90OD" role="3clFbG">
                  <node concept="AH0OO" id="IDYkYC90OE" role="37vLTJ">
                    <node concept="37vLTw" id="IDYkYC90OF" role="AHHXb">
                      <ref role="3cqZAo" node="IDYkYC90Ml" resolve="rgb" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC90OG" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="IDYkYC90OH" role="37vLTx">
                    <ref role="3cqZAo" node="IDYkYC90M3" resolve="n" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="IDYkYC90OI" role="3cqZAp">
                <node concept="37vLTI" id="IDYkYC90OJ" role="3clFbG">
                  <node concept="AH0OO" id="IDYkYC90OK" role="37vLTJ">
                    <node concept="37vLTw" id="IDYkYC90OL" role="AHHXb">
                      <ref role="3cqZAo" node="IDYkYC90Ml" resolve="rgb" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC90OM" role="AHEQo">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                  <node concept="AH0OO" id="IDYkYC90ON" role="37vLTx">
                    <node concept="37vLTw" id="IDYkYC90OO" role="AHHXb">
                      <ref role="3cqZAo" node="IDYkYC90Mc" resolve="hsv" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC90OP" role="AHEQo">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="IDYkYC90OQ" role="3cqZAp">
                <node concept="37vLTI" id="IDYkYC90OR" role="3clFbG">
                  <node concept="AH0OO" id="IDYkYC90OS" role="37vLTJ">
                    <node concept="37vLTw" id="IDYkYC90OT" role="AHHXb">
                      <ref role="3cqZAo" node="IDYkYC90Ml" resolve="rgb" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC90OU" role="AHEQo">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="IDYkYC90OV" role="37vLTx">
                    <ref role="3cqZAo" node="IDYkYC90M0" resolve="m" />
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="IDYkYC90OW" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="IDYkYC90OY" role="3KbHQx">
            <node concept="3cmrfG" id="IDYkYC90OX" role="3Kbmr1">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="3clFbS" id="IDYkYC90OZ" role="3Kbo56">
              <node concept="3clFbF" id="IDYkYC90P0" role="3cqZAp">
                <node concept="37vLTI" id="IDYkYC90P1" role="3clFbG">
                  <node concept="AH0OO" id="IDYkYC90P2" role="37vLTJ">
                    <node concept="37vLTw" id="IDYkYC90P3" role="AHHXb">
                      <ref role="3cqZAo" node="IDYkYC90Ml" resolve="rgb" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC90P4" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="IDYkYC90P5" role="37vLTx">
                    <ref role="3cqZAo" node="IDYkYC90M0" resolve="m" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="IDYkYC90P6" role="3cqZAp">
                <node concept="37vLTI" id="IDYkYC90P7" role="3clFbG">
                  <node concept="AH0OO" id="IDYkYC90P8" role="37vLTJ">
                    <node concept="37vLTw" id="IDYkYC90P9" role="AHHXb">
                      <ref role="3cqZAo" node="IDYkYC90Ml" resolve="rgb" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC90Pa" role="AHEQo">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                  <node concept="AH0OO" id="IDYkYC90Pb" role="37vLTx">
                    <node concept="37vLTw" id="IDYkYC90Pc" role="AHHXb">
                      <ref role="3cqZAo" node="IDYkYC90Mc" resolve="hsv" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC90Pd" role="AHEQo">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="IDYkYC90Pe" role="3cqZAp">
                <node concept="37vLTI" id="IDYkYC90Pf" role="3clFbG">
                  <node concept="AH0OO" id="IDYkYC90Pg" role="37vLTJ">
                    <node concept="37vLTw" id="IDYkYC90Ph" role="AHHXb">
                      <ref role="3cqZAo" node="IDYkYC90Ml" resolve="rgb" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC90Pi" role="AHEQo">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="IDYkYC90Pj" role="37vLTx">
                    <ref role="3cqZAo" node="IDYkYC90M3" resolve="n" />
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="IDYkYC90Pk" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="IDYkYC90Pm" role="3KbHQx">
            <node concept="3cmrfG" id="IDYkYC90Pl" role="3Kbmr1">
              <property role="3cmrfH" value="3" />
            </node>
            <node concept="3clFbS" id="IDYkYC90Pn" role="3Kbo56">
              <node concept="3clFbF" id="IDYkYC90Po" role="3cqZAp">
                <node concept="37vLTI" id="IDYkYC90Pp" role="3clFbG">
                  <node concept="AH0OO" id="IDYkYC90Pq" role="37vLTJ">
                    <node concept="37vLTw" id="IDYkYC90Pr" role="AHHXb">
                      <ref role="3cqZAo" node="IDYkYC90Ml" resolve="rgb" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC90Ps" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="IDYkYC90Pt" role="37vLTx">
                    <ref role="3cqZAo" node="IDYkYC90M0" resolve="m" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="IDYkYC90Pu" role="3cqZAp">
                <node concept="37vLTI" id="IDYkYC90Pv" role="3clFbG">
                  <node concept="AH0OO" id="IDYkYC90Pw" role="37vLTJ">
                    <node concept="37vLTw" id="IDYkYC90Px" role="AHHXb">
                      <ref role="3cqZAo" node="IDYkYC90Ml" resolve="rgb" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC90Py" role="AHEQo">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="IDYkYC90Pz" role="37vLTx">
                    <ref role="3cqZAo" node="IDYkYC90M3" resolve="n" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="IDYkYC90P$" role="3cqZAp">
                <node concept="37vLTI" id="IDYkYC90P_" role="3clFbG">
                  <node concept="AH0OO" id="IDYkYC90PA" role="37vLTJ">
                    <node concept="37vLTw" id="IDYkYC90PB" role="AHHXb">
                      <ref role="3cqZAo" node="IDYkYC90Ml" resolve="rgb" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC90PC" role="AHEQo">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                  <node concept="AH0OO" id="IDYkYC90PD" role="37vLTx">
                    <node concept="37vLTw" id="IDYkYC90PE" role="AHHXb">
                      <ref role="3cqZAo" node="IDYkYC90Mc" resolve="hsv" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC90PF" role="AHEQo">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="IDYkYC90PG" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="IDYkYC90PI" role="3KbHQx">
            <node concept="3cmrfG" id="IDYkYC90PH" role="3Kbmr1">
              <property role="3cmrfH" value="4" />
            </node>
            <node concept="3clFbS" id="IDYkYC90PJ" role="3Kbo56">
              <node concept="3clFbF" id="IDYkYC90PK" role="3cqZAp">
                <node concept="37vLTI" id="IDYkYC90PL" role="3clFbG">
                  <node concept="AH0OO" id="IDYkYC90PM" role="37vLTJ">
                    <node concept="37vLTw" id="IDYkYC90PN" role="AHHXb">
                      <ref role="3cqZAo" node="IDYkYC90Ml" resolve="rgb" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC90PO" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="IDYkYC90PP" role="37vLTx">
                    <ref role="3cqZAo" node="IDYkYC90M3" resolve="n" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="IDYkYC90PQ" role="3cqZAp">
                <node concept="37vLTI" id="IDYkYC90PR" role="3clFbG">
                  <node concept="AH0OO" id="IDYkYC90PS" role="37vLTJ">
                    <node concept="37vLTw" id="IDYkYC90PT" role="AHHXb">
                      <ref role="3cqZAo" node="IDYkYC90Ml" resolve="rgb" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC90PU" role="AHEQo">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="IDYkYC90PV" role="37vLTx">
                    <ref role="3cqZAo" node="IDYkYC90M0" resolve="m" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="IDYkYC90PW" role="3cqZAp">
                <node concept="37vLTI" id="IDYkYC90PX" role="3clFbG">
                  <node concept="AH0OO" id="IDYkYC90PY" role="37vLTJ">
                    <node concept="37vLTw" id="IDYkYC90PZ" role="AHHXb">
                      <ref role="3cqZAo" node="IDYkYC90Ml" resolve="rgb" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC90Q0" role="AHEQo">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                  <node concept="AH0OO" id="IDYkYC90Q1" role="37vLTx">
                    <node concept="37vLTw" id="IDYkYC90Q2" role="AHHXb">
                      <ref role="3cqZAo" node="IDYkYC90Mc" resolve="hsv" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC90Q3" role="AHEQo">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="IDYkYC90Q4" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="IDYkYC90Q6" role="3KbHQx">
            <node concept="3cmrfG" id="IDYkYC90Q5" role="3Kbmr1">
              <property role="3cmrfH" value="5" />
            </node>
            <node concept="3clFbS" id="IDYkYC90Q7" role="3Kbo56">
              <node concept="3clFbF" id="IDYkYC90Q8" role="3cqZAp">
                <node concept="37vLTI" id="IDYkYC90Q9" role="3clFbG">
                  <node concept="AH0OO" id="IDYkYC90Qa" role="37vLTJ">
                    <node concept="37vLTw" id="IDYkYC90Qb" role="AHHXb">
                      <ref role="3cqZAo" node="IDYkYC90Ml" resolve="rgb" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC90Qc" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="AH0OO" id="IDYkYC90Qd" role="37vLTx">
                    <node concept="37vLTw" id="IDYkYC90Qe" role="AHHXb">
                      <ref role="3cqZAo" node="IDYkYC90Mc" resolve="hsv" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC90Qf" role="AHEQo">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="IDYkYC90Qg" role="3cqZAp">
                <node concept="37vLTI" id="IDYkYC90Qh" role="3clFbG">
                  <node concept="AH0OO" id="IDYkYC90Qi" role="37vLTJ">
                    <node concept="37vLTw" id="IDYkYC90Qj" role="AHHXb">
                      <ref role="3cqZAo" node="IDYkYC90Ml" resolve="rgb" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC90Qk" role="AHEQo">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="IDYkYC90Ql" role="37vLTx">
                    <ref role="3cqZAo" node="IDYkYC90M0" resolve="m" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="IDYkYC90Qm" role="3cqZAp">
                <node concept="37vLTI" id="IDYkYC90Qn" role="3clFbG">
                  <node concept="AH0OO" id="IDYkYC90Qo" role="37vLTJ">
                    <node concept="37vLTw" id="IDYkYC90Qp" role="AHHXb">
                      <ref role="3cqZAo" node="IDYkYC90Ml" resolve="rgb" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC90Qq" role="AHEQo">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="IDYkYC90Qr" role="37vLTx">
                    <ref role="3cqZAo" node="IDYkYC90M3" resolve="n" />
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="IDYkYC90Qs" role="3cqZAp" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="IDYkYC90Qt" role="3cqZAp">
          <node concept="37vLTw" id="IDYkYC90Qu" role="3cqZAk">
            <ref role="3cqZAo" node="IDYkYC90Ml" resolve="rgb" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="IDYkYC90Qv" role="1B3o_S" />
      <node concept="10Q1$e" id="IDYkYC90Qx" role="3clF45">
        <node concept="10OMs4" id="IDYkYC90Qw" role="10Q1$1" />
      </node>
    </node>
    <node concept="2tJIrI" id="IDYkYC8VCO" role="jymVt" />
    <node concept="2tJIrI" id="IDYkYC8Xsq" role="jymVt" />
    <node concept="2YIFZL" id="IDYkYC8PHZ" role="jymVt">
      <property role="TrG5h" value="rgbToString" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="IDYkYC8PI0" role="3clF46">
        <property role="TrG5h" value="r" />
        <property role="3TUv4t" value="false" />
        <node concept="10OMs4" id="IDYkYC8PI1" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="IDYkYC8PI2" role="3clF46">
        <property role="TrG5h" value="g" />
        <property role="3TUv4t" value="false" />
        <node concept="10OMs4" id="IDYkYC8PI3" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="IDYkYC8PI4" role="3clF46">
        <property role="TrG5h" value="b" />
        <property role="3TUv4t" value="false" />
        <node concept="10OMs4" id="IDYkYC8PI5" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="IDYkYC8PI6" role="3clF47">
        <node concept="3cpWs8" id="IDYkYC8PI8" role="3cqZAp">
          <node concept="3cpWsn" id="IDYkYC8PI7" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="rs" />
            <node concept="3uibUv" id="IDYkYC8PI9" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2YIFZM" id="IDYkYC8PIL" role="33vP2m">
              <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
              <ref role="37wK5l" to="wyt6:~Integer.toHexString(int):java.lang.String" resolve="toHexString" />
              <node concept="10QFUN" id="IDYkYC8PIb" role="37wK5m">
                <node concept="1eOMI4" id="IDYkYC8PIf" role="10QFUP">
                  <node concept="17qRlL" id="IDYkYC8PIc" role="1eOMHV">
                    <node concept="37vLTw" id="IDYkYC8PId" role="3uHU7B">
                      <ref role="3cqZAo" node="IDYkYC8PI0" resolve="r" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC8PIe" role="3uHU7w">
                      <property role="3cmrfH" value="256" />
                    </node>
                  </node>
                </node>
                <node concept="10Oyi0" id="IDYkYC8PIg" role="10QFUM" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="IDYkYC8PIi" role="3cqZAp">
          <node concept="3cpWsn" id="IDYkYC8PIh" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="gs" />
            <node concept="3uibUv" id="IDYkYC8PIj" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2YIFZM" id="IDYkYC8PIQ" role="33vP2m">
              <ref role="37wK5l" to="wyt6:~Integer.toHexString(int):java.lang.String" resolve="toHexString" />
              <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
              <node concept="10QFUN" id="IDYkYC8PIl" role="37wK5m">
                <node concept="1eOMI4" id="IDYkYC8PIp" role="10QFUP">
                  <node concept="17qRlL" id="IDYkYC8PIm" role="1eOMHV">
                    <node concept="37vLTw" id="IDYkYC8PIn" role="3uHU7B">
                      <ref role="3cqZAo" node="IDYkYC8PI2" resolve="g" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC8PIo" role="3uHU7w">
                      <property role="3cmrfH" value="256" />
                    </node>
                  </node>
                </node>
                <node concept="10Oyi0" id="IDYkYC8PIq" role="10QFUM" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="IDYkYC8PIs" role="3cqZAp">
          <node concept="3cpWsn" id="IDYkYC8PIr" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="bs" />
            <node concept="3uibUv" id="IDYkYC8PIt" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2YIFZM" id="IDYkYC8PIV" role="33vP2m">
              <ref role="37wK5l" to="wyt6:~Integer.toHexString(int):java.lang.String" resolve="toHexString" />
              <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
              <node concept="10QFUN" id="IDYkYC8PIv" role="37wK5m">
                <node concept="1eOMI4" id="IDYkYC8PIz" role="10QFUP">
                  <node concept="17qRlL" id="IDYkYC8PIw" role="1eOMHV">
                    <node concept="37vLTw" id="IDYkYC8PIx" role="3uHU7B">
                      <ref role="3cqZAo" node="IDYkYC8PI4" resolve="b" />
                    </node>
                    <node concept="3cmrfG" id="IDYkYC8PIy" role="3uHU7w">
                      <property role="3cmrfH" value="256" />
                    </node>
                  </node>
                </node>
                <node concept="10Oyi0" id="IDYkYC8PI$" role="10QFUM" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="IDYkYC8PI_" role="3cqZAp">
          <node concept="3cpWs3" id="IDYkYC8PIA" role="3cqZAk">
            <node concept="3cpWs3" id="IDYkYC8PIB" role="3uHU7B">
              <node concept="37vLTw" id="IDYkYC8PIC" role="3uHU7B">
                <ref role="3cqZAo" node="IDYkYC8PI7" resolve="rs" />
              </node>
              <node concept="37vLTw" id="IDYkYC8PID" role="3uHU7w">
                <ref role="3cqZAo" node="IDYkYC8PIh" resolve="gs" />
              </node>
            </node>
            <node concept="37vLTw" id="IDYkYC8PIE" role="3uHU7w">
              <ref role="3cqZAo" node="IDYkYC8PIr" resolve="bs" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="IDYkYC8PIF" role="1B3o_S" />
      <node concept="3uibUv" id="IDYkYC8PIG" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2tJIrI" id="IDYkYCbNXx" role="jymVt" />
    <node concept="3clFb_" id="IDYkYCbVCR" role="jymVt">
      <property role="TrG5h" value="generateRandomColor" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="IDYkYCbVCS" role="3clF46">
        <property role="TrG5h" value="mix" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="IDYkYCbVCT" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="3clFbS" id="IDYkYCbVCU" role="3clF47">
        <node concept="3cpWs8" id="IDYkYCbVCW" role="3cqZAp">
          <node concept="3cpWsn" id="IDYkYCbVCV" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="random" />
            <node concept="3uibUv" id="IDYkYCbVCX" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Random" resolve="Random" />
            </node>
            <node concept="2ShNRf" id="IDYkYCbVDW" role="33vP2m">
              <node concept="1pGfFk" id="IDYkYCbVDY" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~Random.&lt;init&gt;()" resolve="Random" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="IDYkYCbVD0" role="3cqZAp">
          <node concept="3cpWsn" id="IDYkYCbVCZ" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="red" />
            <node concept="10Oyi0" id="IDYkYCbVD1" role="1tU5fm" />
            <node concept="2OqwBi" id="IDYkYCbVE4" role="33vP2m">
              <node concept="37vLTw" id="IDYkYCbVE3" role="2Oq$k0">
                <ref role="3cqZAo" node="IDYkYCbVCV" resolve="random" />
              </node>
              <node concept="liA8E" id="IDYkYCbVE5" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Random.nextInt(int):int" resolve="nextInt" />
                <node concept="3cmrfG" id="IDYkYCbVD3" role="37wK5m">
                  <property role="3cmrfH" value="256" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="IDYkYCbVD5" role="3cqZAp">
          <node concept="3cpWsn" id="IDYkYCbVD4" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="green" />
            <node concept="10Oyi0" id="IDYkYCbVD6" role="1tU5fm" />
            <node concept="2OqwBi" id="IDYkYCbVEb" role="33vP2m">
              <node concept="37vLTw" id="IDYkYCbVEa" role="2Oq$k0">
                <ref role="3cqZAo" node="IDYkYCbVCV" resolve="random" />
              </node>
              <node concept="liA8E" id="IDYkYCbVEc" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Random.nextInt(int):int" resolve="nextInt" />
                <node concept="3cmrfG" id="IDYkYCbVD8" role="37wK5m">
                  <property role="3cmrfH" value="256" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="IDYkYCbVDa" role="3cqZAp">
          <node concept="3cpWsn" id="IDYkYCbVD9" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="blue" />
            <node concept="10Oyi0" id="IDYkYCbVDb" role="1tU5fm" />
            <node concept="2OqwBi" id="IDYkYCbVEi" role="33vP2m">
              <node concept="37vLTw" id="IDYkYCbVEh" role="2Oq$k0">
                <ref role="3cqZAo" node="IDYkYCbVCV" resolve="random" />
              </node>
              <node concept="liA8E" id="IDYkYCbVEj" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Random.nextInt(int):int" resolve="nextInt" />
                <node concept="3cmrfG" id="IDYkYCbVDd" role="37wK5m">
                  <property role="3cmrfH" value="256" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="IDYkYCbVDV" role="3cqZAp">
          <node concept="3SKdUq" id="IDYkYCbVDU" role="3SKWNk">
            <property role="3SKdUp" value="mix the color" />
          </node>
        </node>
        <node concept="3clFbJ" id="IDYkYCbVDe" role="3cqZAp">
          <node concept="3y3z36" id="IDYkYCbVDf" role="3clFbw">
            <node concept="37vLTw" id="IDYkYCbVDg" role="3uHU7B">
              <ref role="3cqZAo" node="IDYkYCbVCS" resolve="mix" />
            </node>
            <node concept="10Nm6u" id="IDYkYCbVDh" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="IDYkYCbVDj" role="3clFbx">
            <node concept="3clFbF" id="IDYkYCbVDk" role="3cqZAp">
              <node concept="37vLTI" id="IDYkYCbVDl" role="3clFbG">
                <node concept="37vLTw" id="IDYkYCbVDm" role="37vLTJ">
                  <ref role="3cqZAo" node="IDYkYCbVCZ" resolve="red" />
                </node>
                <node concept="FJ1c_" id="IDYkYCbVDn" role="37vLTx">
                  <node concept="1eOMI4" id="IDYkYCbVDr" role="3uHU7B">
                    <node concept="3cpWs3" id="IDYkYCbVDo" role="1eOMHV">
                      <node concept="37vLTw" id="IDYkYCbVDp" role="3uHU7B">
                        <ref role="3cqZAo" node="IDYkYCbVCZ" resolve="red" />
                      </node>
                      <node concept="2OqwBi" id="IDYkYCbVEp" role="3uHU7w">
                        <node concept="37vLTw" id="IDYkYCbVEo" role="2Oq$k0">
                          <ref role="3cqZAo" node="IDYkYCbVCS" resolve="mix" />
                        </node>
                        <node concept="liA8E" id="IDYkYCbVEq" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Color.getRed():int" resolve="getRed" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="IDYkYCbVDs" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="IDYkYCbVDt" role="3cqZAp">
              <node concept="37vLTI" id="IDYkYCbVDu" role="3clFbG">
                <node concept="37vLTw" id="IDYkYCbVDv" role="37vLTJ">
                  <ref role="3cqZAo" node="IDYkYCbVD4" resolve="green" />
                </node>
                <node concept="FJ1c_" id="IDYkYCbVDw" role="37vLTx">
                  <node concept="1eOMI4" id="IDYkYCbVD$" role="3uHU7B">
                    <node concept="3cpWs3" id="IDYkYCbVDx" role="1eOMHV">
                      <node concept="37vLTw" id="IDYkYCbVDy" role="3uHU7B">
                        <ref role="3cqZAo" node="IDYkYCbVD4" resolve="green" />
                      </node>
                      <node concept="2OqwBi" id="IDYkYCbVEw" role="3uHU7w">
                        <node concept="37vLTw" id="IDYkYCbVEv" role="2Oq$k0">
                          <ref role="3cqZAo" node="IDYkYCbVCS" resolve="mix" />
                        </node>
                        <node concept="liA8E" id="IDYkYCbVEx" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Color.getGreen():int" resolve="getGreen" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="IDYkYCbVD_" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="IDYkYCbVDA" role="3cqZAp">
              <node concept="37vLTI" id="IDYkYCbVDB" role="3clFbG">
                <node concept="37vLTw" id="IDYkYCbVDC" role="37vLTJ">
                  <ref role="3cqZAo" node="IDYkYCbVD9" resolve="blue" />
                </node>
                <node concept="FJ1c_" id="IDYkYCbVDD" role="37vLTx">
                  <node concept="1eOMI4" id="IDYkYCbVDH" role="3uHU7B">
                    <node concept="3cpWs3" id="IDYkYCbVDE" role="1eOMHV">
                      <node concept="37vLTw" id="IDYkYCbVDF" role="3uHU7B">
                        <ref role="3cqZAo" node="IDYkYCbVD9" resolve="blue" />
                      </node>
                      <node concept="2OqwBi" id="IDYkYCbVEB" role="3uHU7w">
                        <node concept="37vLTw" id="IDYkYCbVEA" role="2Oq$k0">
                          <ref role="3cqZAo" node="IDYkYCbVCS" resolve="mix" />
                        </node>
                        <node concept="liA8E" id="IDYkYCbVEC" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Color.getBlue():int" resolve="getBlue" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="IDYkYCbVDI" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="IDYkYCbVDK" role="3cqZAp">
          <node concept="3cpWsn" id="IDYkYCbVDJ" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="color" />
            <node concept="3uibUv" id="IDYkYCbVDL" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
            </node>
            <node concept="2ShNRf" id="IDYkYCbVED" role="33vP2m">
              <node concept="1pGfFk" id="IDYkYCbVL8" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
                <node concept="37vLTw" id="IDYkYCbVDN" role="37wK5m">
                  <ref role="3cqZAo" node="IDYkYCbVCZ" resolve="red" />
                </node>
                <node concept="37vLTw" id="IDYkYCbVDO" role="37wK5m">
                  <ref role="3cqZAo" node="IDYkYCbVD4" resolve="green" />
                </node>
                <node concept="37vLTw" id="IDYkYCbVDP" role="37wK5m">
                  <ref role="3cqZAo" node="IDYkYCbVD9" resolve="blue" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="IDYkYCbVDQ" role="3cqZAp">
          <node concept="37vLTw" id="IDYkYCbVDR" role="3cqZAk">
            <ref role="3cqZAo" node="IDYkYCbVDJ" resolve="color" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="IDYkYCbVDS" role="1B3o_S" />
      <node concept="3uibUv" id="IDYkYCbVDT" role="3clF45">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
    </node>
    <node concept="2tJIrI" id="IDYkYCbR4T" role="jymVt" />
    <node concept="2tJIrI" id="4JjfDI5IGym" role="jymVt" />
    <node concept="3clFb_" id="4JjfDI5IIhm" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="templateHtmlPath" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4JjfDI5IIhp" role="3clF47">
        <node concept="3cpWs6" id="4JjfDI5IJ5Q" role="3cqZAp">
          <node concept="2OqwBi" id="4JjfDI5ILRO" role="3cqZAk">
            <node concept="2OqwBi" id="4JjfDI5IJyR" role="2Oq$k0">
              <node concept="Xjq3P" id="4JjfDI5IJgv" role="2Oq$k0" />
              <node concept="liA8E" id="4JjfDI5IJNj" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
              </node>
            </node>
            <node concept="liA8E" id="4JjfDI5INNT" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Class.getResourceAsStream(java.lang.String):java.io.InputStream" resolve="getResourceAsStream" />
              <node concept="Xl_RD" id="4JjfDI5IPKi" role="37wK5m">
                <property role="Xl_RC" value="/res/template_LanguageGraphViz.html" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4JjfDI5IHCy" role="1B3o_S" />
      <node concept="3uibUv" id="70gwwj5_IjX" role="3clF45">
        <ref role="3uigEE" to="guwi:~InputStream" resolve="InputStream" />
      </node>
    </node>
    <node concept="2tJIrI" id="5GDu10Z1C42" role="jymVt" />
  </node>
</model>

