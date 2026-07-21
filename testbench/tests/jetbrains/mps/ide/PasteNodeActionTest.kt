/*
 * Copyright 2003-2026 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.ide

import com.intellij.testFramework.TestActionEvent
import jetbrains.mps.ide.ThreadUtils
import jetbrains.mps.ide.actions.PasteNode_Action
import jetbrains.mps.ide.datatransfer.CopyPasteUtil
import jetbrains.mps.project.modules.SolutionProducer
import jetbrains.mps.smodel.ModelImports
import jetbrains.mps.smodel.action.SNodeFactoryOperations
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory
import jetbrains.mps.nodeEditor.EditorComponent
import jetbrains.mps.openapi.editor.cells.CellActionType
import jetbrains.mps.openapi.editor.selection.SelectionManager
import org.jetbrains.mps.openapi.model.EditableSModel
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SModelName
import org.jetbrains.mps.openapi.model.SNode
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotSame
import org.junit.Assert.assertSame
import org.junit.Test

class PasteNodeActionTest : ModuleInProjectTest() {
  @Test
  fun pastePreservesExternalRootReference() {
    lateinit var fixtureModel: EditableSModel
    lateinit var destinationModel: EditableSModel
    lateinit var externalTarget: SNode
    lateinit var localTarget: SNode

    invokeInCommand {
      val solutionName = getNewModuleName()
      val solution = SolutionProducer(myProject).create(solutionName, createNewDirInProject())
      val modelRoot = solution.modelRoots.single()
      fixtureModel = modelRoot.createModel(SModelName("$solutionName.fixture")) as EditableSModel
      val sourceModel = modelRoot.createModel(SModelName("$solutionName.source")) as EditableSModel
      destinationModel = modelRoot.createModel(SModelName("$solutionName.destination")) as EditableSModel

      listOf(fixtureModel, sourceModel, destinationModel).forEach {
        ModelImports(it).addUsedLanguage(CLASS_CONCEPT.language)
      }
      ModelImports(sourceModel).addModelImport(fixtureModel.reference)
      ModelImports(destinationModel).addModelImport(fixtureModel.reference)

      externalTarget = createClass(fixtureModel, TARGET_NAME)
      localTarget = createClass(destinationModel, TARGET_NAME)
      val source = createClass(sourceModel, SOURCE_NAME)
      val superclass = SNodeFactoryOperations.createNewNode(sourceModel, CLASSIFIER_TYPE, null)
      superclass.setReferenceTarget(CLASSIFIER_LINK, externalTarget)
      source.addChild(SUPERCLASS_LINK, superclass)

      CopyPasteUtil.putToClipboard(listOf(source), null, SOURCE_NAME, false)
    }

    invokeInCommand {
      val editorComponent = object : EditorComponent(myProject.repository) {}
      try {
        PasteNode_Action().doExecute(
          TestActionEvent.createTestEvent(),
          hashMapOf(
            "project" to myProject,
            "editorComponent" to editorComponent,
            "contextModel" to destinationModel,
          ),
        )
      }
      finally {
        editorComponent.dispose()
      }
    }

    myProject.modelAccess.runReadAction {
      val pastedClass = destinationModel.rootNodes.single { it.getProperty(NAME_PROPERTY) == SOURCE_NAME }
      val classifierType = pastedClass.getChildren(SUPERCLASS_LINK).single()
      val actualTarget = classifierType.getReferenceTarget(CLASSIFIER_LINK)

      assertSame(externalTarget, actualTarget)
      assertNotSame(localTarget, actualTarget)
    }
  }

  private fun createClass(model: SModel, name: String): SNode =
    SNodeFactoryOperations.createNewRootNode(model, CLASS_CONCEPT, null).also {
      it.setProperty(NAME_PROPERTY, name)
    }

  @Test
  fun pasteRemapsInSelectionSelfReference() {
    lateinit var destinationModel: EditableSModel
    lateinit var originalRoot: SNode

    invokeInCommand {
      val solutionName = getNewModuleName()
      val solution = SolutionProducer(myProject).create(solutionName, createNewDirInProject())
      val modelRoot = solution.modelRoots.single()
      val sourceModel = modelRoot.createModel(SModelName("$solutionName.selfRefSource")) as EditableSModel
      destinationModel = modelRoot.createModel(SModelName("$solutionName.selfRefDestination")) as EditableSModel
      listOf(sourceModel, destinationModel).forEach {
        ModelImports(it).addUsedLanguage(CLASS_CONCEPT.language)
      }

      // A root that references itself: a field whose type is the class itself (the reference target is inside the copied tree).
      originalRoot = createClass(sourceModel, SELF_REF_NAME)
      val field = SNodeFactoryOperations.createNewNode(sourceModel, FIELD_DECLARATION, null)
      field.setProperty(NAME_PROPERTY, "selfRef")
      val fieldType = SNodeFactoryOperations.createNewNode(sourceModel, CLASSIFIER_TYPE, null)
      fieldType.setReferenceTarget(CLASSIFIER_LINK, originalRoot)
      field.addChild(TYPE_LINK, fieldType)
      originalRoot.addChild(MEMBER_LINK, field)

      CopyPasteUtil.putToClipboard(listOf(originalRoot), null, SELF_REF_NAME, false)
    }

    invokeInCommand {
      val editorComponent = object : EditorComponent(myProject.repository) {}
      try {
        PasteNode_Action().doExecute(
          TestActionEvent.createTestEvent(),
          hashMapOf(
            "project" to myProject,
            "editorComponent" to editorComponent,
            "contextModel" to destinationModel,
          ),
        )
      }
      finally {
        editorComponent.dispose()
      }
    }

    myProject.modelAccess.runReadAction {
      val pastedRoot = destinationModel.rootNodes.single { it.getProperty(NAME_PROPERTY) == SELF_REF_NAME }
      val field = pastedRoot.getChildren(MEMBER_LINK).single()
      assertEquals(FIELD_DECLARATION, field.concept)
      val fieldType = field.getChildren(TYPE_LINK)
        .single { it.concept == CLASSIFIER_TYPE && it.getReferenceTarget(CLASSIFIER_LINK) != null }
      val actualTarget = fieldType.getReferenceTarget(CLASSIFIER_LINK)

      // The in-selection self-reference must be remapped to the pasted copy, not left pointing at the original source root.
      assertSame(pastedRoot, actualTarget)
      assertNotSame(originalRoot, actualTarget)
    }
  }

  @Test
  fun pasteWithRequiredImportPreservesExternalReference() {
    lateinit var fixtureModel: EditableSModel
    lateinit var destinationModel: EditableSModel
    lateinit var externalTarget: SNode
    lateinit var localTarget: SNode

    invokeInCommand {
      val solutionName = getNewModuleName()
      val solution = SolutionProducer(myProject).create(solutionName, createNewDirInProject())
      val modelRoot = solution.modelRoots.single()
      fixtureModel = modelRoot.createModel(SModelName("$solutionName.refFixture")) as EditableSModel
      val sourceModel = modelRoot.createModel(SModelName("$solutionName.refSource")) as EditableSModel
      destinationModel = modelRoot.createModel(SModelName("$solutionName.refDestination")) as EditableSModel

      listOf(fixtureModel, sourceModel, destinationModel).forEach {
        ModelImports(it).addUsedLanguage(CLASS_CONCEPT.language)
      }
      // Source imports fixture, but destination does NOT import fixture yet.
      ModelImports(sourceModel).addModelImport(fixtureModel.reference)
      // Intentionally NOT importing fixtureModel into destinationModel.

      externalTarget = createClass(fixtureModel, IMPORT_TARGET_NAME)
      localTarget = createClass(destinationModel, IMPORT_TARGET_NAME)
      val source = createClass(sourceModel, IMPORT_SOURCE_NAME)
      val superclass = SNodeFactoryOperations.createNewNode(sourceModel, CLASSIFIER_TYPE, null)
      superclass.setReferenceTarget(CLASSIFIER_LINK, externalTarget)
      source.addChild(SUPERCLASS_LINK, superclass)

      CopyPasteUtil.putToClipboard(listOf(source), null, IMPORT_SOURCE_NAME, false)
    }

    // putToClipboard sets the clipboard contents via a deferred invokeLater (to avoid a write-lock deadlock),
    // so the payload is only observable after the previous command's events are flushed - hence a new command.
    invokeInCommand {
      val pasteNodeData = CopyPasteUtil.getPasteNodeData()

      // The destination must genuinely be missing the import before the paste applies it.
      val importedModels = ModelImports(destinationModel).getImportedModels()
      org.junit.Assert.assertFalse(
        "Destination should not import fixtureModel initially",
        importedModels.any { it == fixtureModel.reference }
      )

      // The paste data must require the fixture model.
      org.junit.Assert.assertTrue(
        "PasteNodeData should require the fixture model",
        pasteNodeData.getNecessaryModels().any { it == fixtureModel.reference }
      )

      // Apply the required imports headlessly (simulating dialog-OK).
      CopyPasteUtil.applyRequiredImports(
        destinationModel,
        pasteNodeData.getNecessaryLanguages(),
        pasteNodeData.getNecessaryModels(),
      )
    }

    // Run the full paste action.
    invokeInCommand {
      val editorComponent = object : EditorComponent(myProject.repository) {}
      try {
        PasteNode_Action().doExecute(
          TestActionEvent.createTestEvent(),
          hashMapOf(
            "project" to myProject,
            "editorComponent" to editorComponent,
            "contextModel" to destinationModel,
          ),
        )
      }
      finally {
        editorComponent.dispose()
      }
    }

    // Verify: destination imports fixture, and pasted reference resolves to externalTarget, not localTarget.
    myProject.modelAccess.runReadAction {
      val importedModels = ModelImports(destinationModel).getImportedModels()
      org.junit.Assert.assertTrue(
        "Destination model should have gained the fixture import after paste",
        importedModels.any { it == fixtureModel.reference }
      )

      val pastedClass = destinationModel.rootNodes.single { it.getProperty(NAME_PROPERTY) == IMPORT_SOURCE_NAME }
      val classifierType = pastedClass.getChildren(SUPERCLASS_LINK).single()
      val actualTarget = classifierType.getReferenceTarget(CLASSIFIER_LINK)

      assertSame(externalTarget, actualTarget)
      assertNotSame(localTarget, actualTarget)
    }
  }

  /**
   * T5 (MPS-39034): the standalone relative-paste cell action (PASTE_AFTER, i.e. [CellAction_PasteNodeRelative],
   * NOT the ordinary $Paste / [PasteNode_Action]) must, for a cross-model external-root reference, add the required
   * import to the destination and keep the pasted reference pointing at the original external root by identity —
   * even when a same-named root already exists in the destination.
   *
   * The destination genuinely lacks the import up front; imports are applied headlessly (simulating the dialog-OK
   * path, exactly as [pasteWithRequiredImportPreservesExternalReference] does) so the action does not open a modal
   * dialog under test, then the cell action is driven through a real editor selection.
   */
  @Test
  fun pasteRelativeWithRequiredImportPreservesExternalReference() {
    lateinit var fixtureModel: EditableSModel
    lateinit var destinationModel: EditableSModel
    lateinit var externalTarget: SNode
    lateinit var localTarget: SNode
    lateinit var destHolder: SNode
    lateinit var anchorField: SNode

    invokeInCommand {
      val solutionName = getNewModuleName()
      val solution = SolutionProducer(myProject).create(solutionName, createNewDirInProject())
      val modelRoot = solution.modelRoots.single()
      fixtureModel = modelRoot.createModel(SModelName("$solutionName.relFixture")) as EditableSModel
      val sourceModel = modelRoot.createModel(SModelName("$solutionName.relSource")) as EditableSModel
      destinationModel = modelRoot.createModel(SModelName("$solutionName.relDestination")) as EditableSModel

      listOf(fixtureModel, sourceModel, destinationModel).forEach {
        ModelImports(it).addUsedLanguage(CLASS_CONCEPT.language)
      }
      // Source imports fixture, but destination does NOT import fixture yet.
      ModelImports(sourceModel).addModelImport(fixtureModel.reference)

      externalTarget = createClass(fixtureModel, REL_TARGET_NAME)
      // Same-named competitor root in the destination.
      localTarget = createClass(destinationModel, REL_TARGET_NAME)

      // The copied node is a class member (a field) whose type references the external root - relative paste
      // (PASTE_AFTER/BEFORE) operates on list elements such as members, not on top-level roots.
      val sourceHolder = createClass(sourceModel, REL_SOURCE_NAME)
      val srcField = SNodeFactoryOperations.createNewNode(sourceModel, FIELD_DECLARATION, null)
      srcField.setProperty(NAME_PROPERTY, REL_FIELD_NAME)
      val srcType = SNodeFactoryOperations.createNewNode(sourceModel, CLASSIFIER_TYPE, null)
      srcType.setReferenceTarget(CLASSIFIER_LINK, externalTarget)
      srcField.addChild(TYPE_LINK, srcType)
      sourceHolder.addChild(MEMBER_LINK, srcField)

      // Destination holder with an anchor member to paste relative to (its type resolves locally, no import needed).
      destHolder = createClass(destinationModel, REL_DEST_HOLDER_NAME)
      anchorField = SNodeFactoryOperations.createNewNode(destinationModel, FIELD_DECLARATION, null)
      anchorField.setProperty(NAME_PROPERTY, "anchorField")
      val anchorType = SNodeFactoryOperations.createNewNode(destinationModel, CLASSIFIER_TYPE, null)
      anchorType.setReferenceTarget(CLASSIFIER_LINK, localTarget)
      anchorField.addChild(TYPE_LINK, anchorType)
      destHolder.addChild(MEMBER_LINK, anchorField)

      CopyPasteUtil.putToClipboard(listOf(srcField), null, REL_FIELD_NAME, false)
    }

    // putToClipboard sets the clipboard contents via a deferred invokeLater (to avoid a write-lock deadlock),
    // so the payload is only observable after the previous command's events are flushed - hence a new command.
    invokeInCommand {
      val pasteNodeData = CopyPasteUtil.getPasteNodeData()

      org.junit.Assert.assertFalse(
        "Destination should not import fixtureModel initially",
        ModelImports(destinationModel).getImportedModels().any { it == fixtureModel.reference }
      )
      org.junit.Assert.assertTrue(
        "PasteNodeData should require the fixture model",
        pasteNodeData.getNecessaryModels().any { it == fixtureModel.reference }
      )

      // Apply the required imports headlessly (simulating dialog-OK).
      CopyPasteUtil.applyRequiredImports(
        destinationModel,
        pasteNodeData.getNecessaryLanguages(),
        pasteNodeData.getNecessaryModels(),
      )
    }

    // Drive the standalone PASTE_AFTER cell action through a real editor selection on the anchor member.
    // Running inside a command satisfies the action's command assertion; the action then defers its actual
    // work via invokeLater + an inner command, which the trailing invokeInCommand flush pumps before asserting.
    val editorComponent = object : EditorComponent(myProject.repository) {}
    try {
      invokeInCommand {
        editorComponent.editNode(destHolder)
        editorComponent.selectionManager.setSelection(anchorField, SelectionManager.FIRST_CELL)
        editorComponent.selectionManager.selection!!.executeAction(CellActionType.PASTE_AFTER)
      }
      invokeInCommand {}
    } finally {
      ThreadUtils.runInUIThreadAndWait { editorComponent.dispose() }
    }

    myProject.modelAccess.runReadAction {
      org.junit.Assert.assertTrue(
        "Destination model should have the fixture import after relative paste",
        ModelImports(destinationModel).getImportedModels().any { it == fixtureModel.reference }
      )

      val pastedField = destHolder.getChildren(MEMBER_LINK).single {
        it.concept == FIELD_DECLARATION && it.getProperty(NAME_PROPERTY) == REL_FIELD_NAME
      }
      val pastedType = pastedField.getChildren(TYPE_LINK)
        .single { it.concept == CLASSIFIER_TYPE && it.getReferenceTarget(CLASSIFIER_LINK) != null }
      val actualTarget = pastedType.getReferenceTarget(CLASSIFIER_LINK)

      assertSame(externalTarget, actualTarget)
      assertNotSame(localTarget, actualTarget)
    }
  }

  companion object {
    private const val SOURCE_NAME = "SourceWithExternalReference"
    private const val TARGET_NAME = "SameNamedTarget"
    private const val SELF_REF_NAME = "SelfReferencingRoot"
    private const val IMPORT_SOURCE_NAME = "ImportSourceWithExternalRef"
    private const val IMPORT_TARGET_NAME = "ImportTargetInFixture"
    private const val REL_SOURCE_NAME = "RelativeSourceWithExternalRef"
    private const val REL_TARGET_NAME = "RelativeTargetInFixture"
    private const val REL_DEST_HOLDER_NAME = "RelativeDestHolder"
    private const val REL_FIELD_NAME = "externalRefField"

    private val CLASS_CONCEPT = MetaAdapterFactory.getConcept(
      0xf3061a5392264cc5uL.toLong(),
      0xa443f952ceaf5816uL.toLong(),
      0xf8c108ca66L,
      "jetbrains.mps.baseLanguage.structure.ClassConcept",
    )
    private val CLASSIFIER_TYPE = MetaAdapterFactory.getConcept(
      0xf3061a5392264cc5uL.toLong(),
      0xa443f952ceaf5816uL.toLong(),
      0x101de48bf9eL,
      "jetbrains.mps.baseLanguage.structure.ClassifierType",
    )
    private val FIELD_DECLARATION = MetaAdapterFactory.getConcept(
      0xf3061a5392264cc5uL.toLong(),
      0xa443f952ceaf5816uL.toLong(),
      0xf8c108ca68L,
      "jetbrains.mps.baseLanguage.structure.FieldDeclaration",
    )
    private val NAME_PROPERTY = MetaAdapterFactory.getProperty(
      0xceab519525ea4f22uL.toLong(),
      0x9b92103b95ca8c0cuL.toLong(),
      0x110396eaaaL,
      0x110396ec04L,
      "name",
    )
    private val SUPERCLASS_LINK = MetaAdapterFactory.getContainmentLink(
      0xf3061a5392264cc5uL.toLong(),
      0xa443f952ceaf5816uL.toLong(),
      0xf8c108ca66L,
      0x10f6353296dL,
      "superclass",
    )
    private val CLASSIFIER_LINK = MetaAdapterFactory.getReferenceLink(
      0xf3061a5392264cc5uL.toLong(),
      0xa443f952ceaf5816uL.toLong(),
      0x101de48bf9eL,
      0x101de490babL,
      "classifier",
    )
    private val MEMBER_LINK = MetaAdapterFactory.getContainmentLink(
      0xf3061a5392264cc5uL.toLong(),
      0xa443f952ceaf5816uL.toLong(),
      0x101d9d3ca30L,
      0x4a9a46de59132803L,
      "member",
    )
    private val TYPE_LINK = MetaAdapterFactory.getContainmentLink(
      0xf3061a5392264cc5uL.toLong(),
      0xa443f952ceaf5816uL.toLong(),
      0x450368d90ce15bc3L,
      0x4ed4d318133c80ceL,
      "type",
    )
  }
}
