package jetbrains.mps.agents.mcp.tools

import com.google.gson.JsonArray
import com.google.gson.JsonObject
import com.intellij.openapi.application.ApplicationManager
import com.intellij.openapi.application.ModalityState
import jetbrains.mps.editor.runtime.HeadlessEditorComponent
import jetbrains.mps.errors.MessageStatus
import jetbrains.mps.nodeEditor.DefaultEditorMessage
import jetbrains.mps.nodeEditor.cells.EditorCell_Basic
import jetbrains.mps.nodeEditor.cells.EditorCell_Property
import jetbrains.mps.openapi.editor.EditorComponent
import jetbrains.mps.openapi.editor.cells.EditorCell
import jetbrains.mps.openapi.editor.cells.EditorCell_Collection
import jetbrains.mps.openapi.editor.cells.EditorCell_Label
import jetbrains.mps.openapi.editor.message.EditorMessageOwner
import jetbrains.mps.openapi.editor.message.SimpleEditorMessage
import jetbrains.mps.smodel.SNodeUtil
import jetbrains.mps.editor.runtime.style.StyleAttributes
import org.jetbrains.mps.openapi.language.SConceptFeature
import org.jetbrains.mps.openapi.language.SContainmentLink
import org.jetbrains.mps.openapi.language.SEnumeration
import org.jetbrains.mps.openapi.language.SProperty
import org.jetbrains.mps.openapi.language.SReferenceLink
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.model.SNodeAccessUtil
import org.jetbrains.mps.openapi.module.SRepository
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Positive-path tests for the editor caret/selection serializers behind
 * `mps_mcp_get_current_editor_root_node` (`source='editor'`): [AbstractNodeOps.caretInfoJsonObject],
 * [AbstractNodeOps.selectionInfoJsonObject], [AbstractNodeOps.cellJsonObject] and
 * [AbstractNodeOps.cellFeatureJsonObject].
 *
 * The serializers are `protected` on [AbstractNodeOps]; [EditorSerializerProbe] exposes them (the same
 * probe-subclass pattern as `ScopeProbe`). Deterministic caret/selection states are produced by driving
 * a [HeadlessEditorComponent] over `jetbrains.mps.lang.structure` nodes (always loaded in the bench) via
 * [jetbrains.mps.openapi.editor.selection.SelectionManager] — the documented, cell-tree-based (not
 * geometry-based) selection API — so the assertions do not depend on a live UI.
 *
 * Coverage: empty skeletons (no editor/cell), a property cell, a reference cell (target reference +
 * concept), a navigation-only reference role (`navigational=true`), a caret in a label, a character
 * (text) range, a whole-node selection, and a multi-node range.
 */
class EditorCaretSelectionSerializerTest : McpIntegrationTestBase() {

    private val probe = EditorSerializerProbe()

    // ── empty skeletons (findings: "empty skeletons") ─────────────────────────────────────

    @Test
    fun `caret is a full empty skeleton for a null editor component`() {
        val caret = probe.caret(null)
        assertFalse("no editor -> caret.present must be false: $caret", caret.get("present").asBoolean)
        assertEquals("", caret.get("cellId").asString)
        assertEquals("", caret.get("cellType").asString)
        assertEquals("", caret.get("nodeReference").asString)
        assertEquals(-1, caret.get("caretPosition").asInt)
        assertEquals(-1, caret.get("selectionStart").asInt)
        assertFalse(caret.get("isBig").asBoolean)
        assertFalse(caret.get("editable").asBoolean)
        assertFalse(caret.get("referenceCell").asBoolean)
        assertFalse(caret.get("selectable").asBoolean)
        assertFalse(caret.get("selected").asBoolean)
        assertEquals(0, caret.get("messages").asJsonArray.size())
        val feature = caret.getAsJsonObject("feature")
        assertEquals("", feature.get("kind").asString)
        assertEquals("", feature.get("targetReference").asString)
        assertEquals("", feature.get("targetConcept").asString)
        assertFalse(feature.get("navigational").asBoolean)
    }

    @Test
    fun `selection is a full empty skeleton for a null editor component`() {
        val sel = probe.selection(null)
        assertFalse("no editor -> selection.present must be false: $sel", sel.get("present").asBoolean)
        assertEquals("", sel.get("kind").asString)
        assertEquals("", sel.get("direction").asString)
        assertEquals(0, sel.get("nodeCount").asInt)
        assertEquals(0, sel.get("nodesReturned").asInt)
        assertFalse(sel.get("nodesTruncated").asBoolean)
        assertEquals(0, sel.get("nodes").asJsonArray.size())
        assertEquals(0, sel.get("cellCount").asInt)
        assertEquals(0, sel.get("cellsReturned").asInt)
        assertFalse(sel.get("cellsTruncated").asBoolean)
        assertEquals(0, sel.get("cells").asJsonArray.size())
        assertEquals("", sel.get("text").asString)
    }

    @Test
    fun `cell descriptor is a full empty skeleton for a null cell`() {
        val cell = probe.cell(null)
        assertEquals("", cell.get("cellId").asString)
        assertEquals("", cell.get("cellType").asString)
        assertEquals("", cell.get("nodeReference").asString)
        assertEquals(-1, cell.get("caretPosition").asInt)
        assertFalse(cell.get("editable").asBoolean)
        assertFalse(cell.get("referenceCell").asBoolean)
        assertFalse(cell.get("errorState").asBoolean)
        assertFalse("a null cell is not selectable", cell.get("selectable").asBoolean)
        assertFalse("a null cell is not selected", cell.get("selected").asBoolean)
        assertEquals("a null cell has no messages", 0, cell.get("messages").asJsonArray.size())
        assertEquals("", cell.getAsJsonObject("feature").get("kind").asString)
    }

    // ── real cells (findings: property/reference/navigation cells) ────────────────────────

    @Test
    fun `property cell reports the property feature and value`() {
        val fooRef = createConceptRoot("Foo")
        val cell = inEditor(fooRef) { component, _ ->
            probe.cell(findNamePropertyCell(component, "Foo"))
        }
        assertEquals("Foo", cell.get("nodeName").asString)
        assertEquals("ConceptDeclaration", cell.get("nodeConcept").asString)
        assertTrue("name property cell is a Property cell: $cell", cell.get("cellType").asString.contains("Property"))
        assertTrue("name property cell must be editable: $cell", cell.get("editable").asBoolean)
        assertFalse("a property cell is not a reference cell: $cell", cell.get("referenceCell").asBoolean)
        val feature = cell.getAsJsonObject("feature")
        assertEquals("property", feature.get("kind").asString)
        assertEquals("name", feature.get("name").asString)
        assertEquals("Foo", feature.get("value").asString)
        assertFalse("a property is not a navigation role: $feature", feature.get("navigational").asBoolean)
        assertEquals("", feature.get("targetReference").asString)
        assertEquals("an un-annotated cell reports no messages: $cell", 0, cell.get("messages").asJsonArray.size())
    }

    @Test
    fun `reference cell reports the target reference and concept and is not navigational`() {
        val baseRef = createConceptRoot("Base")
        val fooRef = createConceptRoot("Foo")
        executeCommand {
            val foo = resolveNode(fooRef)
            val extendsLink = foo.concept.referenceLinks.first { it.name == "extends" }
            foo.setReferenceTarget(extendsLink, resolveNode(baseRef))
        }
        val cell = inEditor(fooRef) { component, _ ->
            probe.cell(findCell(component) { it.isReferenceCell && it.sRole is SReferenceLink })
        }
        assertTrue("extends cell must be a reference cell: $cell", cell.get("referenceCell").asBoolean)
        val feature = cell.getAsJsonObject("feature")
        assertEquals("reference", feature.get("kind").asString)
        assertEquals("extends", feature.get("name").asString)
        assertEquals("Base", feature.get("value").asString)
        assertEquals("ConceptDeclaration", feature.get("targetConcept").asString)
        assertTrue("targetReference must be a persistent node ref: $feature", feature.get("targetReference").asString.startsWith("r:"))
        assertFalse("a genuine reference cell is not navigational: $feature", feature.get("navigational").asBoolean)
    }

    @Test
    fun `a reference role on a non-reference cell is reported as navigational`() {
        // Mirrors the runtime NAVIGATABLE_SREFERENCE case (e.g. a `this` keyword whose constant cell
        // carries a reference it only navigates to): EditorCell.getSRole() returns a reference link on a
        // cell whose isReferenceCell() is false. Reproduced here by setting the role on a constant cell,
        // since jetbrains.mps.lang.structure editors do not use NAVIGATABLE_SREFERENCE.
        val baseRef = createConceptRoot("Base")
        val fooRef = createConceptRoot("Foo")
        executeCommand {
            val foo = resolveNode(fooRef)
            val extendsLink = foo.concept.referenceLinks.first { it.name == "extends" }
            foo.setReferenceTarget(extendsLink, resolveNode(baseRef))
        }
        val feature = inEditor(fooRef) { component, node ->
            val extendsLink = node.concept.referenceLinks.first { it.name == "extends" }
            val keyword = findCell(component) {
                it is EditorCell_Label && !it.isEditable && !it.isReferenceCell && !it.text.isNullOrEmpty()
            }
            keyword.setSRole(extendsLink)
            probe.cellFeature(keyword)
        }
        assertEquals("reference", feature.get("kind").asString)
        assertTrue("a reference role on a non-reference cell must be navigational: $feature", feature.get("navigational").asBoolean)
        assertEquals("extends", feature.get("name").asString)
        assertEquals("Base", feature.get("value").asString)
        assertEquals("ConceptDeclaration", feature.get("targetConcept").asString)
    }

    @Test
    fun `an unresolved reference keeps the raw target reference with empty target concept and value`() {
        val baseRef = createConceptRoot("Base")
        val fooRef = createConceptRoot("Foo")
        executeCommand {
            val foo = resolveNode(fooRef)
            val base = resolveNode(baseRef)
            val extendsLink = foo.concept.referenceLinks.first { it.name == "extends" }
            foo.setReferenceTarget(extendsLink, base)
            // Delete the target, leaving foo.extends dangling: the stored pointer remains but no longer
            // resolves to a node (reference != null, targetNode == null) — the "unresolved" case.
            base.delete()
        }
        val feature = inEditor(fooRef) { component, node ->
            val extendsLink = node.concept.referenceLinks.first { it.name == "extends" }
            // Force the (now dangling) extends role onto a stable keyword cell of Foo — the same
            // technique the navigational test uses — so the assertion does not depend on how MPS renders
            // a broken reference cell. The resolver reads foo.getReference(extends), whose target is gone.
            val keyword = findCell(component) {
                it is EditorCell_Label && !it.isEditable && !it.isReferenceCell && !it.text.isNullOrEmpty()
            }
            keyword.setSRole(extendsLink)
            probe.cellFeature(keyword)
        }
        assertEquals("reference", feature.get("kind").asString)
        assertEquals("extends", feature.get("name").asString)
        // The target no longer resolves: no value and no target concept, but the raw pointer is kept.
        assertEquals("", feature.get("value").asString)
        assertEquals("", feature.get("targetConcept").asString)
        assertEquals("", feature.get("targetConceptReference").asString)
        assertTrue(
            "a dangling reference must keep its raw target reference: $feature",
            feature.get("targetReference").asString.startsWith("r:"),
        )
    }

    // ── caret and selection region (findings: text ranges, node ranges) ───────────────────

    @Test
    fun `caret in a property label reports present and the property feature`() {
        val fooRef = createConceptRoot("Foo")
        val caret = inEditor(fooRef) { component, _ ->
            val nameCell = findNamePropertyCell(component, "Foo")
            component.selectionManager.setSelection(nameCell, 1)
            probe.caret(component)
        }
        assertTrue("caret must be present after placing it in a cell: $caret", caret.get("present").asBoolean)
        assertEquals("Foo", caret.get("nodeName").asString)
        assertTrue("caret must have a non-negative caret position: $caret", caret.get("caretPosition").asInt >= 0)
        assertEquals("property", caret.getAsJsonObject("feature").get("kind").asString)
    }

    @Test
    fun `a character range inside a label cell is reported as a text selection`() {
        val fooRef = createConceptRoot("Foo")
        val sel = inEditor(fooRef) { component, _ ->
            val nameCell = findNamePropertyCell(component, "Foo")
            component.selectionManager.setSelection(nameCell, 3, 0, 3)
            probe.selection(component)
        }
        assertTrue("a character range must be a present selection: $sel", sel.get("present").asBoolean)
        assertEquals("text", sel.get("kind").asString)
        assertEquals("Foo", sel.get("text").asString)
        assertTrue("a text selection reports its cell: $sel", sel.get("cellCount").asInt >= 1)
        assertTrue(sel.get("direction").asString in setOf("LEFT", "RIGHT", "NONE"))
    }

    @Test
    fun `selecting a whole node is reported as a node selection`() {
        val fooRef = createConceptRoot("Foo")
        val sel = inEditor(fooRef) { component, _ ->
            // The root cell is the whole-node ("big") cell of the edited node.
            component.selectionManager.setSelection(component.rootCell)
            probe.selection(component)
        }
        assertTrue("a whole-node selection must be present: $sel", sel.get("present").asBoolean)
        assertEquals("nodes", sel.get("kind").asString)
        assertTrue("a node selection reports its node(s): $sel", sel.get("nodeCount").asInt >= 1)
        assertTrue("a node selection reports its cell(s): $sel", sel.get("cellCount").asInt >= 1)
        assertEquals("Foo", sel.get("nodes").asJsonArray.get(0).asJsonObject.get("name").asString)
    }

    @Test
    fun `a multi-node range is reported as a node selection with several nodes`() {
        val fooRef = createConceptRoot("Foo")
        executeCommand {
            val foo = resolveNode(fooRef)
            val linkRole = foo.concept.containmentLinks.first { it.name == "linkDeclaration" }
            for (i in 0 until 2) {
                val decl = jetbrains.mps.smodel.SNode(SNodeUtil.concept_LinkDeclaration)
                decl.setProperty(SNodeUtil.property_LinkDeclaration_role, "child$i")
                foo.addChild(linkRole, decl)
            }
        }
        val sel = inEditor(fooRef) { component, node ->
            val linkRole = node.concept.containmentLinks.first { it.name == "linkDeclaration" }
            val decls = node.getChildren(linkRole).toList()
            val range = component.selectionManager.createRangeSelection(decls[0], decls[1])
            component.selectionManager.setSelection(range)
            probe.selection(component)
        }
        assertTrue("a multi-node range must be present: $sel", sel.get("present").asBoolean)
        assertEquals("nodes", sel.get("kind").asString)
        assertTrue("a multi-node range must report >= 2 nodes: $sel", sel.get("nodeCount").asInt >= 2)
        assertTrue("a multi-node range must report >= 2 cells: $sel", sel.get("cellCount").asInt >= 2)
        assertTrue(
            "every returned multi-node selection cell must report selected=true: $sel",
            sel.getAsJsonArray("cells").all { it.asJsonObject.get("selected").asBoolean }
        )
    }

    // ── semantic vs contextual node (findings: nested RefCell projection) ──────────────────

    @Test
    fun `a cell whose contextual node differs from its semantic node reads the feature from the contextual node`() {
        val baseRef = createConceptRoot("Base")
        val fooRef = createConceptRoot("Foo")
        val cell = inEditor(baseRef) { component, _ ->
            // A real property cell over Base's own `name` (contextual == semantic == Base) ...
            val nameCell = findNamePropertyCell(component, "Base")
            // ... re-pointed like a nested RefCell projection: keep the contextual node (Base) but set the
            // semantic node to Foo, exactly as SReferenceCellProvider.setSemanticNodeToCells does.
            (nameCell as EditorCell_Basic).setSemanticNode(resolveNode(fooRef))
            probe.cell(nameCell)
        }
        // Semantic node (used for selection) is Foo; contextual node (feature source) is Base; they differ.
        assertEquals("Foo", cell.get("nodeName").asString)
        assertEquals("Base", cell.get("contextualNodeName").asString)
        assertTrue(
            "semantic and contextual references must differ: $cell",
            cell.get("nodeReference").asString != cell.get("contextualNodeReference").asString
        )
        val feature = cell.getAsJsonObject("feature")
        assertEquals("property", feature.get("kind").asString)
        assertEquals("name", feature.get("name").asString)
        // The value and its source-node reference come from the contextual target (Base), not from Foo.
        assertEquals("Base", feature.get("value").asString)
        assertEquals(cell.get("contextualNodeReference").asString, feature.get("valueNodeReference").asString)
        // Unambiguous concept identity is present for both nodes and the declaring concept.
        assertTrue("nodeConceptQualifiedName present: $cell", cell.get("nodeConceptQualifiedName").asString.isNotEmpty())
        assertTrue("nodeConceptReference present: $cell", cell.get("nodeConceptReference").asString.isNotEmpty())
        assertTrue("contextualNodeConceptReference present: $cell", cell.get("contextualNodeConceptReference").asString.isNotEmpty())
        assertTrue("declaredInConceptReference present: $feature", feature.get("declaredInConceptReference").asString.isNotEmpty())
    }

    // ── child / containment feature (findings: refNodeList cells) ─────────────────────────

    @Test
    fun `a containment cell reports a child feature`() {
        val fooRef = createConceptRoot("Foo")
        val cell = inEditor(fooRef) { component, _ ->
            probe.cell(findCell(component) { probe.feature(it) is SContainmentLink })
        }
        val feature = cell.getAsJsonObject("feature")
        assertEquals("child", feature.get("kind").asString)
        assertTrue("a child feature reports its role name: $feature", feature.get("name").asString.isNotEmpty())
        assertEquals("", feature.get("value").asString)
    }

    // ── cell interaction flags (findings: selectable / selected) ──────────────────────────

    @Test
    fun `a real property cell is selectable and its selected flag tracks the cell selection`() {
        val fooRef = createConceptRoot("Foo")
        val unselected = inEditor(fooRef) { component, _ ->
            probe.cell(findNamePropertyCell(component, "Foo"))
        }
        assertTrue("a real editor cell is selectable: $unselected", unselected.get("selectable").asBoolean)
        assertFalse("an unselected cell reports selected=false: $unselected", unselected.get("selected").asBoolean)

        val selected = inEditor(fooRef) { component, _ ->
            val nameCell = findNamePropertyCell(component, "Foo")
            nameCell.setSelected(true)
            probe.cell(nameCell)
        }
        assertTrue("selecting a cell flips selected=true: $selected", selected.get("selected").asBoolean)

        val deselected = inEditor(fooRef) { component, _ ->
            val nameCell = findNamePropertyCell(component, "Foo")
            nameCell.setSelected(true)
            nameCell.setSelected(false)
            probe.cell(nameCell)
        }
        assertFalse("deselecting a cell flips selected=false: $deselected", deselected.get("selected").asBoolean)
    }

    // ── editor messages on a cell (findings: compact messages array) ──────────────────────

    @Test
    fun `messages map status, message and priority and skip blank messages`() {
        val owner = object : EditorMessageOwner {}
        val messages = listOf<SimpleEditorMessage>(
            DefaultEditorMessage(null, MessageStatus.ERROR, null, "boom", owner),
            DefaultEditorMessage(null, MessageStatus.WARNING, null, "   ", owner), // blank -> skipped
            DefaultEditorMessage(null, MessageStatus.OK, null, "just so you know", owner),
        )
        val array = probe.messages(messages)
        assertEquals("a blank message must be skipped: $array", 2, array.size())
        val first = array.get(0).asJsonObject
        assertEquals("error", first.get("status").asString)
        assertEquals("boom", first.get("message").asString)
        assertEquals(0, first.get("priority").asInt)
        val second = array.get(1).asJsonObject
        assertEquals("OK maps to the shared info severity: $array", "info", second.get("status").asString)
        assertEquals("just so you know", second.get("message").asString)
    }

    @Test
    fun `messages are capped per cell`() {
        val owner = object : EditorMessageOwner {}
        val cap = probe.maxCellMessages()
        val messages = (0 until cap + 3).map<Int, SimpleEditorMessage> {
            DefaultEditorMessage(null, MessageStatus.ERROR, null, "m$it", owner)
        }
        val array = probe.messages(messages)
        assertEquals("messages must be capped at $cap: $array", cap, array.size())
    }

    @Test
    fun `no messages yields an empty array`() {
        assertEquals(0, probe.messages(emptyList()).size())
    }

    // ── bounded selection (findings: capped arrays with total-vs-returned counts) ──────────

    @Test
    fun `a selection larger than the cap is truncated with totals preserved`() {
        val cap = probe.maxSelectionItems()
        val total = cap + 5
        val fooRef = createConceptRoot("Foo")
        executeCommand {
            val foo = resolveNode(fooRef)
            val linkRole = foo.concept.containmentLinks.first { it.name == "linkDeclaration" }
            for (i in 0 until total) {
                val decl = jetbrains.mps.smodel.SNode(SNodeUtil.concept_LinkDeclaration)
                decl.setProperty(SNodeUtil.property_LinkDeclaration_role, "child$i")
                foo.addChild(linkRole, decl)
            }
        }
        val sel = inEditor(fooRef) { component, node ->
            val linkRole = node.concept.containmentLinks.first { it.name == "linkDeclaration" }
            val decls = node.getChildren(linkRole).toList()
            val range = component.selectionManager.createRangeSelection(decls.first(), decls.last())
            component.selectionManager.setSelection(range)
            probe.selection(component)
        }
        // Node totals are deterministic; the array is capped and truncation is flagged.
        assertEquals(total, sel.get("nodeCount").asInt)
        assertEquals(cap, sel.get("nodesReturned").asInt)
        assertEquals(cap, sel.get("nodes").asJsonArray.size())
        assertTrue("nodes must be truncated: $sel", sel.get("nodesTruncated").asBoolean)
        // Cell counts depend on editor internals, so assert consistency rather than an exact total.
        assertEquals(sel.get("cellsReturned").asInt, sel.get("cells").asJsonArray.size())
        assertTrue("cellsReturned must be within the cap: $sel", sel.get("cellsReturned").asInt <= cap)
        assertEquals(sel.get("cellCount").asInt > cap, sel.get("cellsTruncated").asBoolean)
    }

    @Test
    fun `a small selection is not truncated and returns all items`() {
        val fooRef = createConceptRoot("Foo")
        executeCommand {
            val foo = resolveNode(fooRef)
            val linkRole = foo.concept.containmentLinks.first { it.name == "linkDeclaration" }
            for (i in 0 until 2) {
                val decl = jetbrains.mps.smodel.SNode(SNodeUtil.concept_LinkDeclaration)
                decl.setProperty(SNodeUtil.property_LinkDeclaration_role, "child$i")
                foo.addChild(linkRole, decl)
            }
        }
        val sel = inEditor(fooRef) { component, node ->
            val linkRole = node.concept.containmentLinks.first { it.name == "linkDeclaration" }
            val decls = node.getChildren(linkRole).toList()
            val range = component.selectionManager.createRangeSelection(decls[0], decls[1])
            component.selectionManager.setSelection(range)
            probe.selection(component)
        }
        assertFalse("a small selection must not truncate nodes: $sel", sel.get("nodesTruncated").asBoolean)
        assertFalse("a small selection must not truncate cells: $sel", sel.get("cellsTruncated").asBoolean)
        assertEquals(sel.get("nodeCount").asInt, sel.get("nodesReturned").asInt)
        assertEquals(sel.get("cellCount").asInt, sel.get("cellsReturned").asInt)
    }

    // ── final editor-state augmentation (findings: addEditorState helper) ──────────────────

    @Test
    fun `addEditorState on a null editor yields empty skeletons and bigCellSelected false`() {
        val state = probe.editorState(null)
        assertFalse("no editor -> no selectedNodeReference: $state", state.has("selectedNodeReference"))
        assertFalse("no editor -> bigCellSelected must be false: $state", state.get("bigCellSelected").asBoolean)
        assertFalse(state.getAsJsonObject("caret").get("present").asBoolean)
        assertFalse(state.getAsJsonObject("selection").get("present").asBoolean)
    }

    @Test
    fun `addEditorState reports a caret but no whole-node selection for a caret in a property cell`() {
        val fooRef = createConceptRoot("Foo")
        val state = inEditor(fooRef) { component, _ ->
            component.selectionManager.setSelection(findNamePropertyCell(component, "Foo"), 1)
            probe.editorState(component)
        }
        assertTrue("a caret selects its cell's node: $state", state.has("selectedNodeReference"))
        assertFalse("a bare caret is not a whole-node selection: $state", state.get("bigCellSelected").asBoolean)
        assertTrue("caret must be present: $state", state.getAsJsonObject("caret").get("present").asBoolean)
        assertFalse("a bare caret is not a selection region: $state", state.getAsJsonObject("selection").get("present").asBoolean)
    }

    @Test
    fun `addEditorState reports bigCellSelected for a whole-node selection`() {
        val fooRef = createConceptRoot("Foo")
        val state = inEditor(fooRef) { component, _ ->
            component.selectionManager.setSelection(component.rootCell)
            probe.editorState(component)
        }
        assertTrue("selecting the root (big) cell must set bigCellSelected: $state", state.get("bigCellSelected").asBoolean)
        assertTrue("a whole-node selection selects a node: $state", state.has("selectedNodeReference"))
        val selection = state.getAsJsonObject("selection")
        assertTrue("a whole-node selection is a region: $state", selection.get("present").asBoolean)
        assertEquals("nodes", selection.get("kind").asString)
    }

    // ── enum property value (findings: enum literal name resolution) ─────────────────────

    @Test
    fun `enum property cell reports the enum literal name as the feature value`() {
        val fooRef = createConceptRoot("Foo")
        executeCommand {
            val foo = resolveNode(fooRef)
            val linkRole = foo.concept.containmentLinks.first { it.name == "linkDeclaration" }
            val decl = jetbrains.mps.smodel.SNode(SNodeUtil.concept_LinkDeclaration)
            decl.setProperty(SNodeUtil.property_LinkDeclaration_role, "child")
            // Set sourceCardinality to the 0..n (MULTIPLE) enum literal. An enum property is persisted
            // as "<id>/<name>" (not the bare literal name), so a raw-string set would not round-trip to a
            // literal; set the resolved SEnumerationLiteral through the enum-aware setPropertyValue API.
            val sourceCardinalityProp = decl.concept.properties.first { it.name == "sourceCardinality" }
            val cardinality = sourceCardinalityProp.type as SEnumeration
            SNodeAccessUtil.setPropertyValue(decl, sourceCardinalityProp, cardinality.getLiteral("_0__n"))
            foo.addChild(linkRole, decl)
        }
        val cell = inEditor(fooRef) { component, _ ->
            probe.cell(findCell(component) {
                it is EditorCell_Property &&
                    (probe.feature(it) as? SProperty)?.name == "sourceCardinality"
            })
        }
        assertTrue("sourceCardinality cell should be a Property cell: $cell",
            cell.get("cellType").asString.contains("Property"))
        val feature = cell.getAsJsonObject("feature")
        assertEquals("property", feature.get("kind").asString)
        assertEquals("sourceCardinality", feature.get("name").asString)
        assertEquals("_0__n", feature.get("value").asString)
    }

    // ── real NAVIGATABLE_SREFERENCE (findings: style-attribute-based navigation role) ────

    @Test
    fun `a cell with NAVIGATABLE_SREFERENCE style attribute is reported as navigational`() {
        // Tests the real NAVIGATABLE_SREFERENCE mechanism: EditorCell_Basic.getSRole() checks
        // StyleAttributes.NAVIGATABLE_SREFERENCE before falling back to mySRole. When this
        // style attribute holds a reference link and isReferenceCell is false, the feature
        // is serialized as navigational=true — the same code path used by MPS editors for
        // keyword cells that navigate to a reference target without editing it.
        val baseRef = createConceptRoot("Base")
        val fooRef = createConceptRoot("Foo")
        executeCommand {
            val foo = resolveNode(fooRef)
            val extendsLink = foo.concept.referenceLinks.first { it.name == "extends" }
            foo.setReferenceTarget(extendsLink, resolveNode(baseRef))
        }
        val feature = inEditor(fooRef) { component, node ->
            val extendsLink = node.concept.referenceLinks.first { it.name == "extends" }
            val keyword = findCell(component) {
                it is EditorCell_Label && !it.isEditable && !it.isReferenceCell && !it.text.isNullOrEmpty()
            }
            // Set the NAVIGATABLE_SREFERENCE style attribute — the mechanism MPS editors use
            // for keyword cells (e.g. constructor invocations) that navigate to a reference.
            keyword.style.set(StyleAttributes.NAVIGATABLE_SREFERENCE, extendsLink)
            probe.cellFeature(keyword)
        }
        assertEquals("reference", feature.get("kind").asString)
        assertTrue("NAVIGATABLE_SREFERENCE on a non-reference cell must be navigational: $feature",
            feature.get("navigational").asBoolean)
        assertEquals("extends", feature.get("name").asString)
        assertEquals("Base", feature.get("value").asString)
        assertEquals("ConceptDeclaration", feature.get("targetConcept").asString)
    }

    // ── helpers ───────────────────────────────────────────────────────────────────────────

    /**
     * Resolves [ref], builds a headless editor over it, and runs [block] with the live component and the
     * resolved node, returning the (detached) JSON [block] produces. Runs inside a **read action on the
     * EDT** — the exact context `mps_mcp_print_node`'s `showNodeAppearance` uses to drive a headless
     * editor. The block only reads the model and mutates editor state (caret / selection / cell role),
     * never the model, so a read action suffices; any model mutations happen in a prior [executeCommand].
     */
    private fun inEditor(ref: String, block: (HeadlessEditorComponent, SNode) -> JsonObject): JsonObject {
        var out: JsonObject? = null
        val error = arrayOfNulls<Throwable>(1)
        ApplicationManager.getApplication().invokeAndWait({
            myProject.repository.modelAccess.runReadAction {
                try {
                    val node = resolveNode(ref)
                    out = probe.withEditor(myProject.repository, node) { component -> block(component, node) }
                } catch (e: Throwable) {
                    error[0] = e
                }
            }
        }, ModalityState.nonModal())
        error[0]?.let { throw it }
        return checkNotNull(out) { "editor block did not run" }
    }

    private fun resolveNode(ref: String): SNode =
        checkNotNull(PersistenceFacade.getInstance().createNodeReference(ref).resolve(myProject.repository)) {
            "Could not resolve node reference: $ref"
        }

    /**
     * Locates the editable `name` property cell of the node presented as [expectedText] — a real
     * [EditorCell_Property] whose projected role is the `name` [SProperty] and whose displayed text equals
     * [expectedText]. Centralizes the (previously duplicated, fragile) name-cell lookup on a stable
     * semantic locator so a run failure surfaces the full cell tree via [findCell] rather than a bare miss.
     */
    private fun findNamePropertyCell(component: HeadlessEditorComponent, expectedText: String): EditorCell_Label =
        findCell(component) {
            it is EditorCell_Property && (probe.feature(it) as? SProperty)?.name == "name" && it.text == expectedText
        } as EditorCell_Label

    private fun findCell(component: HeadlessEditorComponent, predicate: (EditorCell) -> Boolean): EditorCell {
        val cells = allCells(component.rootCell)
        return cells.firstOrNull(predicate) ?: error(
            "No editor cell matched the predicate in the cell tree.\n" +
                "Available cells (${cells.size}):\n" + cells.joinToString("\n") { describeCell(it) }
        )
    }

    /** Rich per-cell diagnostics used when [findCell] misses, so the actual available cells are visible. */
    private fun describeCell(cell: EditorCell): String {
        val label = cell as? EditorCell_Label
        val role = probe.feature(cell)
        val roleKind = when (role) {
            is SProperty -> "property"
            is SReferenceLink -> "reference"
            is SContainmentLink -> "child"
            null -> "none"
            else -> role.javaClass.simpleName
        }
        val text = if (label != null) " text=\"${label.text}\" editable=${label.isEditable}" else ""
        return "  - ${cell.javaClass.simpleName} id=${cell.cellId}$text" +
            " ref=${cell.isReferenceCell} big=${cell.isBig}" +
            " sNode=${cell.sNode?.concept?.name} ctxNode=${cell.contextualNode?.concept?.name}" +
            " role=[$roleKind name=${role?.name} owner=${role?.owner?.name}]"
    }

    private fun allCells(root: EditorCell): List<EditorCell> {
        val out = ArrayList<EditorCell>()
        fun visit(cell: EditorCell) {
            out.add(cell)
            if (cell is EditorCell_Collection) {
                for (child in cell) visit(child)
            }
        }
        visit(root)
        return out
    }
}

/**
 * Exposes the protected editor caret/selection serializers of [AbstractNodeOps] for direct testing, plus
 * a [withEditor] wrapper around the protected `withHeadlessEditor` lifecycle. Lives in the same package as
 * the toolsets so the protected members are visible (same pattern as `ScopeProbe`).
 */
private class EditorSerializerProbe : AbstractNodeOps() {
    fun caret(component: EditorComponent?): JsonObject = caretInfoJsonObject(component)
    fun selection(component: EditorComponent?): JsonObject = selectionInfoJsonObject(component)
    fun cell(cell: EditorCell?): JsonObject = cellJsonObject(cell)
    fun cellFeature(cell: EditorCell?): JsonObject = cellFeatureJsonObject(cell)
    fun feature(cell: EditorCell?): SConceptFeature? = cellProjectedFeature(cell)
    fun editorState(component: EditorComponent?): JsonObject = addEditorState(JsonObject(), component)
    fun maxSelectionItems(): Int = selectionItemLimit
    fun maxCellMessages(): Int = cellMessageLimit
    fun messages(messages: List<SimpleEditorMessage>): JsonArray = messagesJsonArray(messages)

    fun <T> withEditor(repo: SRepository, node: SNode, block: (HeadlessEditorComponent) -> T): T =
        withHeadlessEditor(repo, node) { ctx -> block(ctx.editorComponent as HeadlessEditorComponent) }
}
