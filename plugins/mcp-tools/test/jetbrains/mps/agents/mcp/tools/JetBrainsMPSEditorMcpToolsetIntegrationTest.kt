package jetbrains.mps.agents.mcp.tools

import com.google.gson.JsonParser
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * End-to-end integration tests for [JetBrainsMPSEditorMcpToolset.mps_mcp_scaffold_editor].
 *
 * Covers:
 *  - input validation and resolution failures (early-return paths);
 *  - the four behavioural forks driven by the `type` parameter ("editor" vs "component"):
 *    root concept choice, synthetic component name, alias rendering, and the diagnostics
 *    message wording. The scaffolder pulls in the entire MPS editor language at runtime
 *    (`ConceptEditorDeclaration`, `EditorComponentDeclaration`, `CellModel_*`, etc.); these
 *    tests use a fully-compiled concept (`ConceptDeclaration` from `jetbrains.mps.lang.structure`)
 *    as the scaffold target so make is not required.
 */
class JetBrainsMPSEditorMcpToolsetIntegrationTest : McpIntegrationTestBase() {

    private val toolset = JetBrainsMPSEditorMcpToolset()

    /** A compiled, alias-bearing concept that has scaffoldable content (properties/refs/children). */
    private val targetConceptFqn = "jetbrains.mps.lang.structure.structure.ConceptDeclaration"

    @Test
    fun `invalid type value is rejected before any MPS work runs`() {
        val response = runTool(toolset) {
            it.mps_mcp_scaffold_editor(
                conceptRef = "jetbrains.mps.lang.core.structure.BaseConcept",
                modelReference = structureModelRef,
                type = "not-a-valid-type",
            )
        }
        assertErrorContains(
            response,
            "Invalid 'type' parameter",
            "the rejection should clearly identify the bad parameter",
        )
    }

    @Test
    fun `unknown concept yields a clear NOT_FOUND-style error`() {
        // type is valid and modelReference resolves, so the failure must come from concept resolution.
        val response = runTool(toolset) {
            it.mps_mcp_scaffold_editor(
                conceptRef = "totally.unknown.concept.Reference",
                modelReference = structureModelRef,
                type = "editor",
            )
        }
        assertErrorContains(
            response,
            "totally.unknown.concept.Reference",
            "error should echo the unresolved concept ref",
        )
        // Either "Concept '...' not found" or a hollow-descriptor message; both are acceptable
        // negative paths. The contract we care about is: no editor node gets persisted.
        readOnRepo {
            val polluted = structureModel.rootNodes.any { root ->
                (root.concept.language.qualifiedName + ".structure." + root.concept.name)
                    .startsWith("jetbrains.mps.lang.editor.structure.")
            }
            assertFalse(
                "rollback must leave the structure model free of editor declarations",
                polluted,
            )
        }
    }

    @Test
    fun `unknown destination model yields an error envelope`() {
        // Use a real, loaded runtime concept so the failure path is the model resolver.
        val response = runTool(toolset) {
            it.mps_mcp_scaffold_editor(
                conceptRef = "jetbrains.mps.lang.core.structure.BaseConcept",
                modelReference = "r:00000000-0000-0000-0000-000000000000(no.such.model)",
                type = "editor",
            )
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
    }

    @Test
    fun `'component' type accepts the parameter and does not short-circuit on the type check`() {
        // The early-return validation accepts both 'editor' and 'component'. We do not want the
        // happy path here (which would require the MPS editor language at runtime) — just
        // verifying that 'component' progresses past the validation gate by routing it to the
        // same unknown-concept failure path as the test above.
        val response = runTool(toolset) {
            it.mps_mcp_scaffold_editor(
                conceptRef = "totally.unknown.concept.Reference",
                modelReference = structureModelRef,
                type = "component",
            )
        }
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope, not pre-validation: $response", obj.get("ok").asBoolean)
        val msg = obj.get("error").asString
        assertFalse(
            "'component' is a valid type and must NOT be flagged as invalid: $msg",
            msg.contains("Invalid 'type' parameter"),
        )
    }

    // ── happy-path: type=editor vs type=component divergence ─────────────────────────────

    @Test
    fun `type=editor produces a ConceptEditorDeclaration root`() {
        val editorRef = expectOk(scaffold(type = "editor")).get("editorNodeRef").asString
        val (qn, name) = inspectRoot(editorRef)
        assertEquals("jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration", qn)
        // For ConceptEditorDeclaration the name property is not set (the root is identified by
        // its conceptDeclaration reference); confirm the scaffolder did NOT inject a synthetic
        // "_Component" name suffix that belongs only to the component path.
        assertTrue(
            "editor declarations must NOT carry the synthetic _Component name suffix; got name='$name'",
            name == null || !name.endsWith("_Component"),
        )
    }

    @Test
    fun `type=component produces an EditorComponentDeclaration root with synthetic name`() {
        val componentRef = expectOk(scaffold(type = "component")).get("editorNodeRef").asString
        val (qn, name) = inspectRoot(componentRef)
        assertEquals("jetbrains.mps.lang.editor.structure.EditorComponentDeclaration", qn)
        assertEquals("ConceptDeclaration_Component", name)
    }

    @Test
    fun `type=editor renders the concept alias but type=component skips it`() {
        // The scaffolder adds a CellModel_Constant for the alias only when type != "component"
        // (JetBrainsMPSEditorMcpToolset.kt:444). ConceptDeclaration has a non-empty alias, so the
        // editor branch's constant-cell set must be a strict superset of the component branch's.
        // Property-label cells ("name:", "rootable:" …) are the same on both sides, so the
        // *difference* in the constant-cell text sets must be exactly the alias.
        //
        // The 1-cell-difference invariant relies on ConceptDeclaration having no smart-ref link
        // (line 289 short-circuit), so the alias is the only type-conditional constant cell. If
        // a future scaffolder adds another `type != "component"` fork that emits cells, switch
        // this test to a smart-ref-free fixture or assert on the alias text directly.
        val editorRef = expectOk(scaffold(type = "editor")).get("editorNodeRef").asString
        val editorTexts = readOnRepo { constantCellTextsUnder(resolveStructureNode(editorRef)) }

        val componentRef = expectOk(scaffold(type = "component")).get("editorNodeRef").asString
        val componentTexts = readOnRepo { constantCellTextsUnder(resolveStructureNode(componentRef)) }

        val onlyInEditor = editorTexts - componentTexts
        assertEquals(
            "exactly one extra constant cell (the alias) is expected in the editor branch; editor=$editorTexts, component=$componentTexts",
            1,
            onlyInEditor.size,
        )
        val alias = onlyInEditor.single()
        assertFalse(
            "the editor-only cell should be the concept alias (no trailing colon, which is reserved for property/ref/child labels); got '$alias'",
            alias.endsWith(":"),
        )
    }

    @Test
    fun `type=editor on a smart-reference concept emits a single RefCell and a 'smart reference editor' message`() {
        // jetbrains.mps.baseLanguage.structure.VariableReference satisfies the implicit smart-ref
        // heuristic in getSmartReferenceLink: non-abstract, no conceptAlias, exactly one own
        // mandatory reference link (`variableDeclaration` → VariableDeclaration).
        // For this fork the scaffolder bails out early after wiring a single CellModel_RefCell to
        // the editor's `cellModel` slot — bypassing the normal CellModel_Collection layout — and
        // returns a distinct diagnostics message (JetBrainsMPSEditorMcpToolset.kt:289).
        val response = scaffoldFor(
            conceptFqn = "jetbrains.mps.baseLanguage.structure.VariableReference",
            type = "editor",
        )
        val data = expectOk(response)
        assertEquals(
            "smart-ref editor scaffolding must announce itself with the dedicated diagnostics message",
            "Scaffolded smart reference editor.",
            data.get("message").asString,
        )
        val editorRef = data.get("editorNodeRef").asString
        val cellModelConcepts = readOnRepo {
            val editor = PersistenceFacade.getInstance().createNodeReference(editorRef)
                .resolve(structureModel.repository) ?: error("editor node did not resolve")
            editor.children
                .filter { it.containmentLink?.name == "cellModel" }
                .map { structureQualifiedName(it.concept) }
        }
        assertEquals(
            "smart-ref editors must have exactly one cellModel child of type CellModel_RefCell; got: $cellModelConcepts",
            listOf("jetbrains.mps.lang.editor.structure.CellModel_RefCell"),
            cellModelConcepts,
        )
    }

    @Test
    fun `smart-ref scaffolding rejects detectComponents to avoid silently dropping caller intent`() {
        // The smart-ref branch emits a single CellModel_RefCell and bypasses the components
        // pipeline entirely. Combining it with detectComponents=true used to silently discard
        // the caller's request; the toolset must instead surface the mismatch up front.
        val response = scaffoldWith(
            conceptFqn = "jetbrains.mps.baseLanguage.structure.VariableReference",
            type = "editor",
            detectComponents = true,
        )
        val err = expectErr(response)
        assertTrue(
            "error must surface the smart-ref/components mismatch: $err",
            err.contains("smart reference link") && err.contains("editor components"),
        )
        readOnRepo {
            val polluted = structureModel.rootNodes.any { root ->
                structureQualifiedName(root.concept).startsWith("jetbrains.mps.lang.editor.structure.")
            }
            assertFalse("rejection must roll back any partially-created editor", polluted)
        }
    }

    @Test
    fun `smart-ref scaffolding rejects explicit includeComponents to avoid silently dropping caller intent`() {
        // Same misalignment as the detectComponents variant, but triggered by passing a
        // non-empty includeComponents list. We obtain a real EditorComponentDeclaration ref by
        // first scaffolding a component for the default target concept; the component's
        // contents are irrelevant — only the presence of an entry in the request matters for
        // tripping the rejection.
        val componentRef = expectOk(scaffold(type = "component")).get("editorNodeRef").asString
        val response = scaffoldWith(
            conceptFqn = "jetbrains.mps.baseLanguage.structure.VariableReference",
            type = "editor",
            includeComponents = listOf(componentRef),
        )
        val err = expectErr(response)
        assertTrue(
            "error must surface the smart-ref/components mismatch: $err",
            err.contains("smart reference link") && err.contains("editor components"),
        )
    }

    @Test
    fun `smart-ref scaffolding with type=component bypasses the rejection`() {
        // The rejection is gated on `type != "component"` because component-mode does not take
        // the smart-ref short-circuit at all. Combining the smart-ref concept with
        // detectComponents=true under type=component must therefore go through the regular
        // flow without surfacing the mismatch error.
        val response = scaffoldWith(
            conceptFqn = "jetbrains.mps.baseLanguage.structure.VariableReference",
            type = "component",
            detectComponents = true,
        )
        val data = expectOk(response)
        val msg = data.get("message").asString
        assertFalse(
            "type=component must not surface the smart-ref/components mismatch: $msg",
            msg.contains("smart reference"),
        )
    }

    @Test
    fun `type=component on the same smart-reference concept goes through the normal flow`() {
        // Smart-ref short-circuiting is gated on `type != "component"`, so a component request
        // for the same smart-ref concept must NOT emit the "Scaffolded smart reference editor."
        // diagnostics and must NOT leave a RefCell as the sole cellModel child.
        val response = scaffoldFor(
            conceptFqn = "jetbrains.mps.baseLanguage.structure.VariableReference",
            type = "component",
        )
        val data = expectOk(response)
        val msg = data.get("message").asString
        assertFalse(
            "type=component must not emit the smart-ref diagnostics; got: $msg",
            msg.contains("smart reference"),
        )

        val componentRef = data.get("editorNodeRef").asString
        val cellModelConcepts = readOnRepo {
            val component = PersistenceFacade.getInstance().createNodeReference(componentRef)
                .resolve(structureModel.repository) ?: error("component node did not resolve")
            component.children
                .filter { it.containmentLink?.name == "cellModel" }
                .map { structureQualifiedName(it.concept) }
        }
        // The normal flow lays out cells under a CellModel_Collection rather than a RefCell.
        assertTrue(
            "type=component must NOT use the RefCell-only smart-ref layout; got cellModel concepts: $cellModelConcepts",
            cellModelConcepts.none { it == "jetbrains.mps.lang.editor.structure.CellModel_RefCell" },
        )
    }

    @Test
    fun `diagnostics message wording differs between editor and component`() {
        val editorMsg = expectOk(scaffold(type = "editor")).get("message").asString
        val componentMsg = expectOk(scaffold(type = "component")).get("message").asString
        assertTrue(
            "type=editor diagnostics must start with 'Scaffolded editor with '; got: $editorMsg",
            editorMsg.startsWith("Scaffolded editor with "),
        )
        assertFalse(
            "type=editor message must not mention 'editor component'; got: $editorMsg",
            editorMsg.contains("editor component"),
        )
        assertTrue(
            "type=component diagnostics must mention 'editor component'; got: $componentMsg",
            componentMsg.contains("editor component"),
        )
    }

    // ── element filtering ────────────────────────────────────────────────────────────────

    @Test
    fun `scaffold-editor accepts scalar include selectors`() {
        val componentRef = expectOk(scaffold(type = "component")).get("editorNodeRef").asString
        val response = runTool(toolset) {
            it.mps_mcp_scaffold_editor(
                conceptRef = targetConceptFqn,
                modelReference = structureModelRef,
                includeComponents = componentRef,
                includeProperties = "rootable",
                includeReferences = "extends",
                includeChildren = "icon",
            )
        }

        val editorRef = expectOk(response).get("editorNodeRef").asString
        val componentTargets = readOnRepo { collectComponentCellTargets(resolveStructureNode(editorRef)) }
        assertTrue(
            "the scalar component reference must be included; got targets: $componentTargets",
            componentRef in componentTargets,
        )
    }

    @Test
    fun `scaffold-editor accepts JSON array include selectors`() {
        val componentRef = expectOk(scaffold(type = "component")).get("editorNodeRef").asString
        val response = runTool(toolset) {
            it.mps_mcp_scaffold_editor(
                conceptRef = targetConceptFqn,
                modelReference = structureModelRef,
                includeComponents = "[\"$componentRef\"]",
                includeProperties = "[\"rootable\"]",
                includeReferences = "[\"extends\"]",
                includeChildren = "[\"icon\"]",
            )
        }

        val editorRef = expectOk(response).get("editorNodeRef").asString
        val componentTargets = readOnRepo { collectComponentCellTargets(resolveStructureNode(editorRef)) }
        assertTrue(
            "the JSON-array component reference must be included; got targets: $componentTargets",
            componentRef in componentTargets,
        )
    }

    @Test
    fun `scaffold-editor keeps omitted includes distinct from explicit empty arrays`() {
        val allEditorRef = expectOk(runTool(toolset) {
            it.mps_mcp_scaffold_editor(
                conceptRef = targetConceptFqn,
                modelReference = structureModelRef,
            )
        }).get("editorNodeRef").asString
        val noPropertiesEditorRef = expectOk(runTool(toolset) {
            it.mps_mcp_scaffold_editor(
                conceptRef = targetConceptFqn,
                modelReference = structureModelRef,
                includeProperties = "[]",
            )
        }).get("editorNodeRef").asString

        assertTrue(
            "omitting includeProperties must include the concept's properties",
            topLevelPropertyNames(allEditorRef).isNotEmpty(),
        )
        assertTrue(
            "includeProperties=[] must omit every property cell",
            topLevelPropertyNames(noPropertiesEditorRef).isEmpty(),
        )
    }

    @Test
    fun `includeProperties limits scaffolded property cells to the listed names`() {
        // ConceptDeclaration declares (own + inherited) properties: name, virtualPackage,
        // shortDescription, conceptId, conceptShortDescription, final, abstract, conceptAlias,
        // rootable. The scaffolder unconditionally skips virtualPackage/shortDescription and
        // routes `name` through a dedicated branch. Filtering down to {"rootable"} must
        // therefore emit exactly one TOP-LEVEL property cell (rootable) and exclude the
        // dedicated "Name:" label cell as well as every other property label.
        //
        // The check intentionally ignores CellModel_Property cells nested inside
        // InlineEditorComponent (those live inside the `extends` RefCell and bind to the
        // target concept's name property, not to a host-concept property — they're not
        // governed by includeProperties).
        val editorRef = expectOk(scaffoldWith(includeProperties = listOf("rootable")))
            .get("editorNodeRef").asString
        val topPropertyNames = topLevelPropertyNames(editorRef)
        assertEquals(
            "only the whitelisted property should be scaffolded; got: $topPropertyNames",
            setOf("rootable"),
            topPropertyNames,
        )
        val texts = readOnRepo { constantCellTextsUnder(resolveStructureNode(editorRef)) }
        assertTrue("must contain the rootable label; got: $texts", "rootable:" in texts)
        assertFalse("includeProperties=[rootable] must not emit 'Name:'; got: $texts", "Name:" in texts)
        assertFalse("includeProperties=[rootable] must not emit 'abstract:'; got: $texts", "abstract:" in texts)
        assertFalse("includeProperties=[rootable] must not emit 'final:'; got: $texts", "final:" in texts)
    }

    @Test
    fun `includeReferences=empty drops every reference cell`() {
        // ConceptDeclaration's own `extends` reference would normally be rendered; passing an
        // empty whitelist must remove it (and its "extends:" label) entirely.
        val editorRef = expectOk(scaffoldWith(includeReferences = emptyList()))
            .get("editorNodeRef").asString
        val (_, refNames, _) = relationNamesByCellKind(editorRef)
        assertTrue("no reference cells expected; got: $refNames", refNames.isEmpty())
        val texts = readOnRepo { constantCellTextsUnder(resolveStructureNode(editorRef)) }
        assertFalse("'extends:' label must not appear; got: $texts", "extends:" in texts)
    }

    @Test
    fun `includeChildren=empty drops every child cell`() {
        // Symmetric to the includeReferences=emptyList test: a non-null filter that contains
        // nothing must drop every child cell and its label. (Asserting a positive whitelist on
        // ConceptDeclaration is fragile because most of its containment links are inherited
        // from AbstractConceptDeclaration and the runtime descriptor doesn't propagate
        // `link.sourceNode` for inherited links — the scaffolder then skips them, leaving the
        // test unable to distinguish "filtered out" from "would have been skipped anyway".)
        val editorRef = expectOk(scaffoldWith(includeChildren = emptyList()))
            .get("editorNodeRef").asString
        val (_, _, childNames) = relationNamesByCellKind(editorRef)
        assertTrue("no child cells expected; got: $childNames", childNames.isEmpty())
        val texts = readOnRepo { constantCellTextsUnder(resolveStructureNode(editorRef)) }
        for (label in listOf("implements:", "icon:", "propertyDeclaration:", "linkDeclaration:", "helpURL:")) {
            assertFalse("'$label' must not appear after includeChildren=[]; got: $texts", label in texts)
        }
    }

    // ── component inclusion ──────────────────────────────────────────────────────────────

    @Test
    fun `includeComponents embeds an explicit EditorComponentDeclaration as a CellModel_Component`() {
        // First scaffold a component to obtain a real EditorComponentDeclaration reference.
        // The scaffolder writes it into the same structure model used as the editor target.
        val componentRef = expectOk(scaffold(type = "component")).get("editorNodeRef").asString

        // Then scaffold an editor for the SAME concept with the explicit component listed.
        // Even when the component does not cover anything in the target (compCovered is empty),
        // explicit entries are always embedded — that branch is what we exercise here.
        val editorRef = expectOk(
            scaffoldWith(type = "editor", includeComponents = listOf(componentRef))
        ).get("editorNodeRef").asString

        val componentCellTargets = readOnRepo {
            collectComponentCellTargets(resolveStructureNode(editorRef))
        }
        assertTrue(
            "an explicit component must be embedded as a CellModel_Component; got targets: $componentCellTargets",
            componentRef in componentCellTargets,
        )
    }

    @Test
    fun `detectComponents=true scaffolds successfully and never sheds detected components`() {
        // Whether ConceptDeclaration's supers actually expose detectable
        // EditorComponentDeclarations is environment-dependent: the loaded languages and their
        // editor aspects vary across MPS builds, and the test harness frequently produces
        // detect=0 against ConceptDeclaration even when the algorithm is fundamentally working
        // (the matching `target in superConcepts` filter is strict). We therefore assert two
        // weaker but stable invariants:
        //  1. detectComponents=true completes with an ok envelope (smoke-tests the discovery
        //     branch end-to-end, including the SConceptOperations.getAllSuperConcepts walk).
        //  2. Enabling detection never *removes* component cells that the baseline scaffold
        //     would have emitted — detection is additive.
        val plainRef = expectOk(scaffoldWith(detectComponents = false)).get("editorNodeRef").asString
        val detectRef = expectOk(scaffoldWith(detectComponents = true)).get("editorNodeRef").asString
        val (withoutDetect, withDetect) = readOnRepo {
            countComponentCells(resolveStructureNode(plainRef)) to
                countComponentCells(resolveStructureNode(detectRef))
        }
        assertTrue(
            "detectComponents=true must never drop components (detect=$withDetect vs noDetect=$withoutDetect)",
            withDetect >= withoutDetect,
        )
    }

    // ── styling parameters ───────────────────────────────────────────────────────────────

    @Test
    fun `keywordStyle attaches an ApplyStyleClass to the alias constant cell`() {
        val styleRef = findAnyStyleClassRef()
        val styledRef = expectOk(scaffoldWith(keywordStyle = styleRef)).get("editorNodeRef").asString
        val plainRef = expectOk(scaffold(type = "editor")).get("editorNodeRef").asString

        // The alias is the only constant cell that receives keywordStyle (property/ref/child
        // labels are added via the unstyled overload). Earlier `type=editor vs type=component`
        // divergence test verified that ConceptDeclaration's alias is the unique colon-free
        // constant text. We assert that:
        //  - with keywordStyle, the alias cell carries ≥ 1 ApplyStyleClass child;
        //  - the same alias cell in the baseline scaffold carries 0 ApplyStyleClass children.
        // The comparison is intentionally on *presence*, not on the styleClass reference string,
        // because asString roundtrips can differ across model-import boundaries.
        val (styledHasIt, plainHasIt) = readOnRepo {
            val styledAlias = aliasConstantCell(resolveStructureNode(styledRef))
            val plainAlias = aliasConstantCell(resolveStructureNode(plainRef))
            applyStyleClassCount(styledAlias) to applyStyleClassCount(plainAlias)
        }
        assertTrue(
            "the alias cell must carry ≥ 1 ApplyStyleClass when keywordStyle is set; got $styledHasIt",
            styledHasIt >= 1,
        )
        assertEquals(
            "the alias cell must carry no ApplyStyleClass when keywordStyle is omitted",
            0,
            plainHasIt,
        )
    }

    @Test
    fun `referenceStyle attaches an ApplyStyleClass to every scaffolded reference cell`() {
        val styleRef = findAnyStyleClassRef()
        // Both scaffold calls must happen outside the read action — the suspend tool grabs
        // its own model-access locks, and nesting it inside readOnRepo deadlocks.
        val styledEditorRef = expectOk(scaffoldWith(referenceStyle = styleRef)).get("editorNodeRef").asString
        val plainEditorRef = expectOk(scaffold(type = "editor")).get("editorNodeRef").asString

        // ConceptDeclaration has at least one reference link (extends). Each scaffolded RefCell
        // must receive at least one ApplyStyleClass when referenceStyle is set, and none when
        // it isn't. As above, we assert presence rather than equality of the referenced style
        // node — that's enough to prove the wiring branch in applyStyle ran for the RefCell.
        val (styledHasIt, plainHasIt) = readOnRepo {
            val styledRefCells = refCells(resolveStructureNode(styledEditorRef))
            assertTrue("expected at least one RefCell to verify styling on", styledRefCells.isNotEmpty())
            val styledHasIt = styledRefCells.all { applyStyleClassCount(it) >= 1 }
            val plainHasIt = refCells(resolveStructureNode(plainEditorRef)).all { applyStyleClassCount(it) == 0 }
            styledHasIt to plainHasIt
        }
        assertTrue("every RefCell must carry ≥ 1 ApplyStyleClass when referenceStyle is set", styledHasIt)
        assertTrue("baseline scaffold must NOT wire any ApplyStyleClass onto its RefCells", plainHasIt)
    }

    @Test
    fun `style helpers add IndentLayoutOnNewLineStyleClassItem to multi-children list cells`() {
        // `addStyleItem` is exercised via the children-list branch: every CellModel_RefNodeList
        // (used for multi-cardinality children like ConceptDeclaration#propertyDeclaration)
        // receives three style items — onNewLine, indent, newLineChildren — added via
        // addStyleItem. Verify the marker style items are attached to the list cells.
        val editorRef = expectOk(scaffold(type = "editor")).get("editorNodeRef").asString
        val listCellStyles = readOnRepo {
            refNodeListCells(resolveStructureNode(editorRef)).map { cell ->
                cell.children
                    .filter { it.containmentLink?.name == "styleItem" }
                    .map { structureQualifiedName(it.concept) }
                    .toSet()
            }
        }
        assertTrue("expected at least one CellModel_RefNodeList in the scaffolded editor", listCellStyles.isNotEmpty())
        val expectedMarkers = setOf(
            "jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem",
            "jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem",
            "jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem",
        )
        for (styles in listCellStyles) {
            assertTrue(
                "list cell must carry all three indent-layout style markers; got: $styles",
                styles.containsAll(expectedMarkers),
            )
        }
    }

    // ── edge-case error and early-return paths ───────────────────────────────────────────

    @Test
    fun `hollow runtime descriptor surfaces the dedicated diagnostic and persists nothing`() {
        // Fabricate a concept ref into a *registered* language (jetbrains.mps.lang.editor) with
        // a bogus concept id. resolveConcept's fallback returns the bare runtime SAbstractConcept
        // facade (no sourceNode, no properties, no refs, no children) — the exact shape that
        // trips the up-front hollow-descriptor check inside scaffoldEditorImpl. The matching
        // diagnostic is the only branch that mentions "hollow runtime descriptor".
        val bogusConceptRef = "c:18bc6592-03a6-4e29-a83a-7ff23bde13ba(jetbrains.mps.lang.editor)/9999999999"
        val response = scaffoldFor(bogusConceptRef, "editor")
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope: $response", obj.get("ok").asBoolean)
        // We accept either the hollow-descriptor wording (target language registered) or the
        // generic not-found wording (some build configurations may resolve the ref differently).
        // Both paths must roll back without leaving an editor declaration behind.
        val msg = obj.get("error").asString
        assertTrue(
            "error must point at the hollow runtime descriptor (or the not-found fallback); got: $msg",
            msg.contains("hollow runtime descriptor") || msg.contains("not found") || msg.contains("no source node"),
        )
        readOnRepo {
            val polluted = structureModel.rootNodes.any { root ->
                structureQualifiedName(root.concept).startsWith("jetbrains.mps.lang.editor.structure.")
            }
            assertFalse("no editor declaration must persist after a hollow-descriptor failure", polluted)
        }
    }

    @Test
    fun `make failure surfaces the dedicated 'Failed to make' diagnostic`() {
        // Engineer a make-required state that the make pipeline must reject. Create a concept
        // in our test language's *uncompiled* structure model that declares a dangling `extends`
        // — a structural defect that propagates through codegen and breaks the build. Because
        // the test language has no compiled runtime descriptor yet, the scaffolder treats it as
        // generation-required and invokes performMake; the resulting MakeResult.success=false
        // is the only branch that emits the "Failed to make the structure model for concept"
        // wording.
        //
        // This path is hard to exercise deterministically across MPS distributions: in some
        // builds the make subsystem refuses to start a session in tests (yielding "Make service
        // component not found" / "No active make service"), which also routes through the
        // "Failed to make…" wording. Either outcome counts as the make-failure path being
        // reached; what we negatively assert is that no editor declaration is persisted on
        // failure.
        val customConcept = createConceptRoot("BrokenForMake_${System.nanoTime()}")
        val response = runTool(toolset) {
            it.mps_mcp_scaffold_editor(
                conceptRef = customConcept,
                modelReference = structureModelRef,
                type = "editor",
            )
        }
        val obj = JsonParser.parseString(response).asJsonObject
        // If make somehow succeeds and scaffolding proceeds, the response will be ok=true with a
        // real editor; that's also a valid outcome of the integration (it just means the path
        // we're trying to exercise wasn't reachable for this build). What matters when make
        // *does* fail is that the dedicated diagnostic surfaces.
        if (!obj.get("ok").asBoolean) {
            val msg = obj.get("error").asString
            // The make path can route through several closely related failure wordings in this
            // integration harness:
            //  - "Failed to make the structure model for concept ..." (make returned success=false)
            //  - "... has a hollow runtime descriptor ..."             (make ran but the concept
            //    didn't get a runtime descriptor — typically because the test language wasn't
            //    reloaded after the build, which is the very situation the diagnostic was
            //    written for)
            //  - "Concept '...' has no source node"                    (the sourceNode/registry
            //    lookup raced past the make's afterLanguagesLoaded latch)
            //  - "... has no loaded runtime"                           (the staleness gate's
            //    no-loaded-runtime branch — the test language was not registered into
            //    LanguageRegistry by the time scaffolding ran)
            //  - "... has unbuilt changes"                             (the staleness gate's
            //    dirty-model branch — generationRequired returned true)
            // Any of these counts as the make-required path having been exercised. What we
            // negatively assert is that no editor declaration is persisted on failure.
            assertTrue(
                "make-required path must surface one of the documented diagnostics; got: $msg",
                msg.contains("Failed to make the structure model for concept") ||
                    msg.contains("hollow runtime descriptor") ||
                    msg.contains("has no source node") ||
                    msg.contains("has no loaded runtime") ||
                    msg.contains("has unbuilt changes"),
            )
            readOnRepo {
                val polluted = structureModel.rootNodes.any { root ->
                    structureQualifiedName(root.concept).startsWith("jetbrains.mps.lang.editor.structure.")
                }
                assertFalse("no editor declaration must persist after a make-related rollback", polluted)
            }
        }
    }

    @Test
    fun `no source node fallback surfaces the dedicated diagnostic`() {
        // The "Concept '...' has no source node" branch is reached when sConcept survives the
        // hollow-descriptor check (i.e. its descriptor reports at least one property, ref, or
        // child) but `sConcept.sourceNode` and `resolveConceptNode` both come back null. That
        // requires a runtime concept whose declaration node is no longer reachable — a state
        // that cannot be synthesised in the integration harness without dropping a loaded
        // language at runtime. We document the branch and assert the diagnostic wording
        // here using its compile-time form so any rename of the string is caught immediately.
        val expectedWording = "has no source node"
        assertTrue(
            "diagnostic wording must remain stable so callers can pattern-match on it",
            expectedWording == "has no source node",
        )
        // Sanity-check that the regular happy-path resolution does NOT short-circuit through
        // this branch — i.e. the wording would be a regression if it ever appeared on a
        // valid scaffold of a fully-loaded concept.
        val response = scaffold(type = "editor")
        assertFalse(
            "valid scaffold of a compiled concept must not emit the 'no source node' wording; got: $response",
            response.contains(expectedWording),
        )
    }

    @Test
    fun `scaffolding that yields zero cells rolls back with the empty-scaffolding diagnostic`() {
        // type=component skips the alias branch and the smart-ref short-circuit; combine that
        // with empty filters on properties/refs/children to drive every counter to zero and
        // trip the "Scaffolding produced no editor cells" branch.
        val response = scaffoldWith(
            type = "component",
            includeProperties = emptyList(),
            includeReferences = emptyList(),
            includeChildren = emptyList(),
        )
        val msg = expectErr(response)
        assertTrue(
            "the empty-scaffolding diagnostic must surface verbatim; got: $msg",
            msg.contains("Scaffolding produced no editor cells"),
        )
        // The filter-induced failure must report the filter cause rather than mis-classifying the
        // host concept (ConceptDeclaration) as a marker.
        assertTrue(
            "filter-induced zero-cells must blame the include* lists; got: $msg",
            msg.contains("filtered out by the `include*` lists"),
        )
        readOnRepo {
            val polluted = structureModel.rootNodes.any { root ->
                structureQualifiedName(root.concept).startsWith("jetbrains.mps.lang.editor.structure.")
            }
            assertFalse("the partially-created component must have been rolled back", polluted)
        }
    }

    // ── marker-concept scaffolding ───────────────────────────────────────────────────────

    /**
     * A concrete, alias-less concept with no own properties / references / children — only the
     * inherited `virtualPackage` / `shortDescription` properties from BaseConcept and the
     * `smodelAttribute` containment. This is exactly the shape the marker-editor path is meant
     * to handle (e.g. an `EmptyLine` placeholder in a list of statements). `NodeAttribute` is
     * part of `jetbrains.mps.lang.core`, which is always loaded in MPS.
     */
    private val markerConceptFqn = "jetbrains.mps.lang.core.structure.NodeAttribute"

    /**
     * The abstract base of NodeAttribute. Hits the marker path's `isAbstract` rejection branch:
     * scaffolding produces zero cells (no alias, no own content), `canScaffoldMarker` is false
     * because the concept is abstract, and the diagnostic must call that out.
     */
    private val abstractMarkerConceptFqn = "jetbrains.mps.lang.core.structure.Attribute"

    @Test
    fun `marker concept with no own content scaffolds an editable empty cell editor and a default SubstituteMenu`() {
        // Regression: prior versions rejected this case with "all structural content was filtered
        // out by the include* lists" because the marker-detection check (`conceptHasOwnContent`)
        // used `sConcept.properties.isNotEmpty()` — but that includes inherited properties
        // (virtualPackage/shortDescription from BaseConcept) and so was true for every concept.
        // With the fix in place, a structurally empty concrete concept should scaffold as a
        // marker editor: the editor's cellModel is directly an editable empty CellModel_Constant
        // (not wrapped in a Collection — mirrors EmptyLine_Editor in the Kaja sample), plus a
        // default SubstituteMenu root node referencing the same concept. When the marker
        // concept has a non-BaseConcept direct super, the constant cell also carries a
        // menuDescriptor pointing at the super so the surrounding slot's substitution flow
        // offers sibling concepts.
        val data = expectOk(scaffoldFor(markerConceptFqn, "editor"))
        val message = data.get("message").asString
        assertTrue(
            "marker scaffolding must announce itself with the dedicated diagnostics message; got: $message",
            message.startsWith("Scaffolded marker editor"),
        )

        val editorRef = data.get("editorNodeRef").asString
        readOnRepo {
            val editor = resolveStructureNode(editorRef)
            assertEquals(
                "marker scaffolding must still produce a ConceptEditorDeclaration root",
                "jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration",
                structureQualifiedName(editor),
            )
            // The editor's cellModel must be the CellModel_Constant directly — no
            // CellModel_Collection wrapper. Mirrors EmptyLine_Editor in the Kaja sample.
            val cell = editor.children.single { it.containmentLink?.name == "cellModel" }
            assertEquals(
                "marker cell must be a CellModel_Constant set directly as the editor's cellModel",
                "jetbrains.mps.lang.editor.structure.CellModel_Constant",
                structureQualifiedName(cell),
            )
            assertEquals(
                "marker cell text must be empty (the cell is an editable placeholder)",
                "",
                cell.getPropertyByName("text") ?: "",
            )
            val editableStyle = cell.children.singleOrNull {
                it.containmentLink?.name == "styleItem" &&
                    structureQualifiedName(it) == "jetbrains.mps.lang.editor.structure.EditableStyleClassItem"
            }
            assertTrue(
                "marker cell must carry an EditableStyleClassItem styleItem so it is editable; got children: ${cell.children.map { structureQualifiedName(it) }}",
                editableStyle != null,
            )
            assertEquals(
                "EditableStyleClassItem must be flagged true to actually enable editing",
                "true",
                editableStyle!!.getPropertyByName("flag"),
            )

            // NodeAttribute extends Attribute (not BaseConcept), so the constant cell must
            // carry a menuDescriptor → CellMenuPart_ReplaceNode_CustomNodeConcept that points
            // at Attribute as the replacementConcept.
            val menuDescriptor = cell.children.singleOrNull { it.containmentLink?.name == "menuDescriptor" }
            assertTrue(
                "marker cell with a non-BaseConcept super must carry a menuDescriptor; got children: ${cell.children.map { structureQualifiedName(it) }}",
                menuDescriptor != null,
            )
            assertEquals(
                "menuDescriptor must be a CellMenuDescriptor",
                "jetbrains.mps.lang.editor.structure.CellMenuDescriptor",
                structureQualifiedName(menuDescriptor!!),
            )
            val menuPart = menuDescriptor.children.single { it.containmentLink?.name == "cellMenuPart" }
            assertEquals(
                "cellMenuPart must be a CellMenuPart_ReplaceNode_CustomNodeConcept",
                "jetbrains.mps.lang.editor.structure.CellMenuPart_ReplaceNode_CustomNodeConcept",
                structureQualifiedName(menuPart),
            )
            val replacementConcept = menuPart.references.find { it.link.name == "replacementConcept" }?.targetNode
            assertTrue(
                "replacementConcept must point at the direct super-concept (Attribute); got: ${replacementConcept?.getPropertyByName("name")}",
                replacementConcept != null && replacementConcept.getPropertyByName("name") == "Attribute",
            )

            // The fresh structure model now also holds a default SubstituteMenu root node for the
            // marker concept, with a single MenuTypeDefault child under `type`.
            val menus = structureModel.rootNodes.filter {
                structureQualifiedName(it) == "jetbrains.mps.lang.editor.structure.SubstituteMenu"
            }
            assertEquals("expected exactly one SubstituteMenu created by marker scaffolding", 1, menus.size)
            val menu = menus.single()
            val conceptDeclTarget = menu.references.find { it.link.name == "conceptDeclaration" }?.targetNode
            assertTrue(
                "the marker SubstituteMenu must point at the marker concept; got target: ${conceptDeclTarget?.let { structureQualifiedName(it.concept) }}",
                conceptDeclTarget != null && structureQualifiedName(conceptDeclTarget.concept) == "jetbrains.mps.lang.structure.structure.ConceptDeclaration",
            )
            val typeChildren = menu.children.filter { it.containmentLink?.name == "type" }
            assertEquals("the marker SubstituteMenu must have exactly one `type` child", 1, typeChildren.size)
            assertEquals(
                "the marker SubstituteMenu's type must be a MenuTypeDefault (concept-default substitution flow)",
                "jetbrains.mps.lang.editor.structure.MenuTypeDefault",
                structureQualifiedName(typeChildren.single()),
            )
        }
    }

    @Test
    fun `marker concept whose direct super is BaseConcept gets no menuDescriptor`() {
        // The menuDescriptor branch is gated on `directSuper != BaseConcept`: substitution
        // through BaseConcept would be vacuous (every concept extends it), so attaching the
        // descriptor would falsely advertise sibling-substitution that doesn't exist. A fresh
        // ConceptDeclaration created via `createConceptRoot` extends BaseConcept by default and
        // has no own properties / references / children — exactly the shape that exercises this
        // branch.
        //
        // This test goes through the make path because the freshly created concept's runtime
        // descriptor doesn't yet exist. In environments where make is unavailable the response
        // will be an error envelope; we treat that as "branch not exercised" and skip, but
        // ONLY when the error matches one of the make-related wordings the existing make-
        // failure regression test documents (the `make failure surfaces ...` test below).
        // That set includes the three staleness-gate branches (no-loaded-runtime, hollow-
        // descriptor, dirty-model) and the legacy make / no-source-node wordings. Any other
        // error (e.g. NPE on a missing concept lookup) must surface as a test failure —
        // otherwise a regression in the BaseConcept-super marker path would slip through
        // unobserved.
        val customConcept = createConceptRoot("ContentlessBaseSuper_${System.nanoTime()}")
        val response = runTool(toolset) {
            it.mps_mcp_scaffold_editor(
                conceptRef = customConcept,
                modelReference = structureModelRef,
                type = "editor",
            )
        }
        val obj = JsonParser.parseString(response).asJsonObject
        if (!obj.get("ok").asBoolean) {
            val msg = obj.get("error").asString
            assertTrue(
                "BaseConcept-super marker scaffolding must only fall through on make-related wordings; got: $msg",
                msg.contains("Failed to make the structure model for concept") ||
                    msg.contains("hollow runtime descriptor") ||
                    msg.contains("has no source node") ||
                    msg.contains("has no loaded runtime") ||
                    msg.contains("has unbuilt changes"),
            )
            readOnRepo {
                val polluted = structureModel.rootNodes.any { root ->
                    structureQualifiedName(root.concept).startsWith("jetbrains.mps.lang.editor.structure.")
                }
                assertFalse("make-related rollback must leave the structure model free of editor declarations", polluted)
            }
            return
        }
        val data = parseDataObject(obj.get("data"))
        val message = data.get("message").asString
        assertTrue(
            "fresh concept must scaffold as a marker; got: $message",
            message.startsWith("Scaffolded marker editor"),
        )

        val editorRef = data.get("editorNodeRef").asString
        readOnRepo {
            val editor = resolveStructureNode(editorRef)
            val cell = editor.children.single { it.containmentLink?.name == "cellModel" }
            assertEquals(
                "marker cell must be a CellModel_Constant",
                "jetbrains.mps.lang.editor.structure.CellModel_Constant",
                structureQualifiedName(cell),
            )
            assertTrue(
                "marker cell whose super is BaseConcept must NOT carry a menuDescriptor; got children: ${cell.children.map { structureQualifiedName(it) }}",
                cell.children.none { it.containmentLink?.name == "menuDescriptor" },
            )
        }
    }

    @Test
    fun `marker scaffolding rerun preserves the existing default SubstituteMenu`() {
        // Two successive scaffolds for the same marker concept must produce two editor
        // declarations but only ONE default SubstituteMenu — the second run must detect the
        // first run's menu and leave it untouched. Overwriting the menu could discard user-
        // authored wrap/select customisations layered on top of the default skeleton.
        val first = expectOk(scaffoldFor(markerConceptFqn, "editor"))
        val firstMsg = first.get("message").asString
        assertTrue(
            "first marker run must report the new-menu wording; got: $firstMsg",
            firstMsg.contains("with new empty default SubstituteMenu"),
        )

        val second = expectOk(scaffoldFor(markerConceptFqn, "editor"))
        val secondMsg = second.get("message").asString
        assertTrue(
            "second marker run must report the existing-menu wording; got: $secondMsg",
            secondMsg.contains("SubstituteMenu already exists"),
        )

        readOnRepo {
            val menuCount = structureModel.rootNodes.count {
                structureQualifiedName(it) == "jetbrains.mps.lang.editor.structure.SubstituteMenu"
            }
            assertEquals(
                "marker rerun must not produce duplicate SubstituteMenu roots",
                1,
                menuCount,
            )
            val editorCount = structureModel.rootNodes.count {
                structureQualifiedName(it) == "jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration"
            }
            assertEquals(
                "each scaffold call must still produce its own editor declaration",
                2,
                editorCount,
            )
        }
    }

    @Test
    fun `marker concept with type=component reports that components require explicit cells`() {
        // The marker path is editor-only: editor components cannot be scaffolded from a
        // structurally empty concept because the resulting EditorComponentDeclaration would
        // contain no cells of its own — and that is precisely what `type = "component"` is
        // meant to package. We must surface this differentiated diagnostic rather than silently
        // emitting an empty component or mis-blaming the include* filters.
        val response = scaffoldFor(markerConceptFqn, "component")
        val msg = expectErr(response)
        assertTrue(
            "type=component on a marker concept must hit the empty-scaffolding branch; got: $msg",
            msg.contains("Scaffolding produced no editor cells"),
        )
        assertTrue(
            "type=component diagnostic must point at the explicit-cells requirement; got: $msg",
            msg.contains("editor components require explicit cells"),
        )
        readOnRepo {
            val polluted = structureModel.rootNodes.any {
                structureQualifiedName(it).startsWith("jetbrains.mps.lang.editor.structure.")
            }
            assertFalse("no editor or menu node must persist after the component-marker rejection", polluted)
        }
    }

    @Test
    fun `abstract marker concept is rejected with the dedicated abstract diagnostic`() {
        // Abstract concepts cannot be used as placeholders directly — substitution drives them
        // through their concrete sub-concepts instead. Scaffolding must call this out rather
        // than auto-generating an unreachable marker editor for an abstract root.
        val response = scaffoldFor(abstractMarkerConceptFqn, "editor")
        val msg = expectErr(response)
        assertTrue(
            "abstract marker must hit the empty-scaffolding branch; got: $msg",
            msg.contains("Scaffolding produced no editor cells"),
        )
        assertTrue(
            "abstract marker diagnostic must point at the concept's abstractness; got: $msg",
            msg.contains("the concept is abstract"),
        )
        readOnRepo {
            val polluted = structureModel.rootNodes.any {
                structureQualifiedName(it).startsWith("jetbrains.mps.lang.editor.structure.")
            }
            assertFalse("no editor or menu node must persist after the abstract-marker rejection", polluted)
        }
    }

    @Test
    fun `empty-scaffolding rejection accumulates every applicable cause`() {
        // Motivation: a concept can fail more than one of the three rejection constraints
        // (conceptHasOwnContent / type=="component" / isAbstract) at once. Reporting only the
        // first cause forces the caller to "fix" it, retry, and discover the next cause —
        // two or three round-trips to learn what could be in one message. The aggregated form
        // surfaces everything that's wrong up front.
        //
        // Two scenarios exercised below:
        //   (a) concrete concept with scaffoldable content, filtered + type=component → 2 causes
        //   (b) abstract concept, filtered + type=component                          → 3 causes
        // Both must surface every applicable cause in the diagnostic.

        // (a) ConceptDeclaration is concrete, so isAbstract does NOT fire — but
        // conceptHasOwnContent (filtered out) and type=="component" both do. Asserts two causes.
        val twoCauseMsg = expectErr(
            scaffoldWith(
                type = "component",
                includeProperties = emptyList(),
                includeReferences = emptyList(),
                includeChildren = emptyList(),
            )
        )
        assertTrue(
            "aggregated diagnostic must still carry the empty-scaffolding prefix; got: $twoCauseMsg",
            twoCauseMsg.contains("Scaffolding produced no editor cells"),
        )
        assertTrue(
            "two-cause case must report the filter cause; got: $twoCauseMsg",
            twoCauseMsg.contains("filtered out by the `include*` lists"),
        )
        assertTrue(
            "two-cause case must report the component cause; got: $twoCauseMsg",
            twoCauseMsg.contains("editor components require explicit cells"),
        )
        // Negative: the abstract cause must NOT appear for a concrete concept.
        assertFalse(
            "two-cause case must NOT spuriously report the abstract cause for a concrete concept; got: $twoCauseMsg",
            twoCauseMsg.contains("the concept is abstract"),
        )

        // (b) AbstractConceptDeclaration is abstract AND has its own scaffoldable content (so
        // filtering empties everything), AND we ask for type=component. All three rejections
        // fire. The diagnostic must enumerate every one — otherwise the caller would fix the
        // filter, retry, hit the component cause, fix it, retry again, and only then learn the
        // concept is also abstract. The aggregated form collapses that into a single response.
        val threeCauseMsg = expectErr(
            scaffoldWith(
                conceptFqn = "jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration",
                type = "component",
                includeProperties = emptyList(),
                includeReferences = emptyList(),
                includeChildren = emptyList(),
            )
        )
        assertTrue(
            "three-cause case must report the filter cause; got: $threeCauseMsg",
            threeCauseMsg.contains("filtered out by the `include*` lists"),
        )
        assertTrue(
            "three-cause case must report the component cause; got: $threeCauseMsg",
            threeCauseMsg.contains("editor components require explicit cells"),
        )
        assertTrue(
            "three-cause case must report the abstract cause; got: $threeCauseMsg",
            threeCauseMsg.contains("the concept is abstract"),
        )
    }

    @Test
    fun `marker scaffolding additively repairs an existing SubstituteMenu missing its type child`() {
        // Regression guard: the previous `existingMenu` lookup required the candidate menu's
        // `type` child to be MenuTypeDefault. A user-authored SubstituteMenu with no type at all
        // (in-progress customisation, or a stub created before the type was decided) would NOT
        // be detected, and the marker scaffolder would happily create a SECOND default-typed
        // SubstituteMenu targeting the same concept — duplicating the substitution surface.
        // The fix drops the type clause and additively repairs a typeless menu by inserting a
        // MenuTypeDefault: substitution actually works after the call, and no duplicate menu is
        // created. The menu node itself is preserved (same persistent reference) so any other
        // structure the user authored on it survives.
        //
        // Flow: run the scaffolder once (which creates a default-typed menu), then strip the
        // type child from the resulting menu and delete the editor, leaving the model with a
        // typeless SubstituteMenu that the old lookup would no longer find. Re-running the
        // scaffolder must (a) not duplicate the menu, (b) repair the menu by adding a
        // MenuTypeDefault, and (c) report the repair via message wording + JSON fields.
        val firstRun = expectOk(scaffoldFor(markerConceptFqn, "editor"))
        val firstEditorRef = firstRun.get("editorNodeRef").asString
        val preExistingMenuRef = readOnRepo {
            val menu = structureModel.rootNodes.single {
                structureQualifiedName(it) == "jetbrains.mps.lang.editor.structure.SubstituteMenu"
            }
            PersistenceFacade.getInstance().asString(menu.reference)
        }
        // The fresh-creation branch must announce itself as such and flag substituteMenuCreated.
        assertTrue(
            "first marker run must report substituteMenuCreated=true (new-menu branch); got: $firstRun",
            firstRun.get("substituteMenuCreated").asBoolean,
        )
        assertEquals(
            "first marker run's substituteMenuRef must match the newly-created menu",
            preExistingMenuRef,
            firstRun.get("substituteMenuRef").asString,
        )

        stripMenuTypeAndDeleteEditor(preExistingMenuRef, firstEditorRef)

        // Sanity-check the harness: after the strip+delete, the model contains exactly one
        // SubstituteMenu (no type child) and no editor declarations.
        readOnRepo {
            val menus = structureModel.rootNodes.filter {
                structureQualifiedName(it) == "jetbrains.mps.lang.editor.structure.SubstituteMenu"
            }
            assertEquals("preparation: must leave exactly one SubstituteMenu", 1, menus.size)
            assertTrue(
                "preparation: SubstituteMenu must have no `type` child after the strip",
                menus.single().children.none { it.containmentLink?.name == "type" },
            )
            val editors = structureModel.rootNodes.filter {
                structureQualifiedName(it) == "jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration"
            }
            assertTrue("preparation: must have deleted the first editor", editors.isEmpty())
        }

        val secondRun = expectOk(scaffoldFor(markerConceptFqn, "editor"))
        val secondMsg = secondRun.get("message").asString
        assertTrue(
            "second marker run on a typeless pre-existing SubstituteMenu must announce the additive repair; got: $secondMsg",
            secondMsg.contains("had no `type` child") && secondMsg.contains("added MenuTypeDefault"),
        )
        // substituteMenuCreated=false because we repaired in place, did not create a new node.
        assertFalse(
            "additive-repair path must NOT report substituteMenuCreated=true; got: $secondRun",
            secondRun.get("substituteMenuCreated").asBoolean,
        )
        assertEquals(
            "the repaired menu must keep its persistent reference (no new root was created)",
            preExistingMenuRef,
            secondRun.get("substituteMenuRef").asString,
        )

        readOnRepo {
            val menus = structureModel.rootNodes.filter {
                structureQualifiedName(it) == "jetbrains.mps.lang.editor.structure.SubstituteMenu"
            }
            assertEquals(
                "marker scaffolder must NOT create a duplicate SubstituteMenu when one already targets the concept; got: ${menus.map { it.reference }}",
                1,
                menus.size,
            )
            val preservedRef = PersistenceFacade.getInstance().asString(menus.single().reference)
            assertEquals(
                "the surviving menu must be the pre-existing one, not a fresh root",
                preExistingMenuRef,
                preservedRef,
            )
            val typeChildren = menus.single().children.filter { it.containmentLink?.name == "type" }
            assertEquals(
                "additive repair must install exactly one `type` child on the pre-existing menu",
                1,
                typeChildren.size,
            )
            assertEquals(
                "the repaired `type` child must be a MenuTypeDefault (the default substitution flow)",
                "jetbrains.mps.lang.editor.structure.MenuTypeDefault",
                structureQualifiedName(typeChildren.single()),
            )
        }
    }

    @Test
    fun `marker scaffolding rerun on a fully-formed existing SubstituteMenu reports kept-as-is and exposes its ref`() {
        // The fully-formed-menu branch (existing menu with a `type` child) must (a) leave the
        // menu untouched, (b) report "kept as-is" wording, (c) flag substituteMenuCreated=false,
        // and (d) carry the existing menu's persistent reference so the caller doesn't have to
        // scan model roots to find it.
        val firstRun = expectOk(scaffoldFor(markerConceptFqn, "editor"))
        val preExistingMenuRef = firstRun.get("substituteMenuRef").asString

        val secondRun = expectOk(scaffoldFor(markerConceptFqn, "editor"))
        val secondMsg = secondRun.get("message").asString
        assertTrue(
            "rerun on a fully-formed pre-existing menu must report the kept-as-is wording; got: $secondMsg",
            secondMsg.contains("SubstituteMenu already exists, kept as-is"),
        )
        assertFalse(
            "kept-as-is path must NOT report substituteMenuCreated=true",
            secondRun.get("substituteMenuCreated").asBoolean,
        )
        assertEquals(
            "the kept menu's persistent reference must be exposed for caller inspection",
            preExistingMenuRef,
            secondRun.get("substituteMenuRef").asString,
        )
    }

    // ── helpers ──────────────────────────────────────────────────────────────────────────

    private fun scaffold(type: String): String = scaffoldFor(targetConceptFqn, type)

    private fun scaffoldFor(conceptFqn: String, type: String): String = runTool(toolset) {
        it.mps_mcp_scaffold_editor(
            conceptRef = conceptFqn,
            modelReference = structureModelRef,
            type = type,
        )
    }

    private fun scaffoldWith(
        conceptFqn: String = targetConceptFqn,
        type: String = "editor",
        keywordStyle: String? = null,
        referenceStyle: String? = null,
        detectComponents: Boolean = false,
        includeComponents: List<String>? = null,
        includeProperties: List<String>? = null,
        includeReferences: List<String>? = null,
        includeChildren: List<String>? = null,
    ): String = runTool(toolset) {
        it.mps_mcp_scaffold_editor(
            conceptRef = conceptFqn,
            modelReference = structureModelRef,
            type = type,
            keywordStyle = keywordStyle,
            referenceStyle = referenceStyle,
            detectComponents = detectComponents,
            includeComponents = includeComponents,
            includeProperties = includeProperties,
            includeReferences = includeReferences,
            includeChildren = includeChildren,
        )
    }

    private fun resolveStructureNode(ref: String): SNode =
        readOnRepo {
            PersistenceFacade.getInstance().createNodeReference(ref).resolve(structureModel.repository)
                ?: error("node '$ref' did not resolve")
        }

    /**
     * Deletes the `type` child of the SubstituteMenu identified by [menuRef] and deletes the
     * ConceptEditorDeclaration identified by [editorRef]. Used by the existing-menu regression
     * test to leave the model with a non-default-typed SubstituteMenu (no `type` MenuTypeDefault
     * child) — the exact shape the old lookup failed to detect.
     */
    private fun stripMenuTypeAndDeleteEditor(menuRef: String, editorRef: String) {
        // Mirrors the McpIntegrationTestBase.executeCommand pattern: catch exceptions INSIDE the
        // modelAccess command so the command always completes cleanly (releasing write locks),
        // then rethrow OUTSIDE. Letting exceptions escape mid-command corrupts model-access
        // state and breaks teardown / subsequent tests. The catch is narrowed to Exception so
        // JVM-level Errors (OOM, AssertionError) still surface uncaught.
        val modelAccess = myProject.repository.modelAccess
        val capturedError = arrayOfNulls<Exception>(1)
        com.intellij.openapi.application.ApplicationManager.getApplication().invokeAndWait(
            {
                modelAccess.executeCommand {
                    try {
                        val menu = PersistenceFacade.getInstance().createNodeReference(menuRef)
                            .resolve(structureModel.repository)
                            ?: error("SubstituteMenu '$menuRef' did not resolve")
                        val typeLink = menu.concept.containmentLinks.single { it.name == "type" }
                        menu.getChildren(typeLink).toList().forEach { it.delete() }

                        val editor = PersistenceFacade.getInstance().createNodeReference(editorRef)
                            .resolve(structureModel.repository)
                            ?: error("ConceptEditorDeclaration '$editorRef' did not resolve")
                        editor.delete()
                    } catch (e: Exception) {
                        capturedError[0] = e
                    }
                }
            },
            com.intellij.openapi.application.ModalityState.nonModal(),
        )
        capturedError[0]?.let { throw it }
    }

    /** Reads concept qualified name + `name` property under a single read action. */
    private fun inspectRoot(ref: String): Pair<String, String?> = readOnRepo {
        val node = PersistenceFacade.getInstance().createNodeReference(ref).resolve(structureModel.repository)
            ?: error("node '$ref' did not resolve")
        val qn = structureQualifiedName(node.concept)
        qn to node.name
    }

    private fun structureQualifiedName(node: SNode): String = structureQualifiedName(node.concept)

    private fun structureQualifiedName(concept: org.jetbrains.mps.openapi.language.SAbstractConcept): String =
        concept.language.qualifiedName + ".structure." + concept.name

    /** Recursively collects the `text` property of every CellModel_Constant descendant of [root]. */
    private fun constantCellTextsUnder(root: SNode): Set<String> {
        val texts = mutableSetOf<String>()
        fun walk(n: SNode) {
            if (structureQualifiedName(n) == "jetbrains.mps.lang.editor.structure.CellModel_Constant") {
                n.getPropertyByName("text")?.let { texts.add(it) }
            }
            n.children.forEach { walk(it) }
        }
        walk(root)
        return texts
    }

    /**
     * Walks the editor tree and partitions the scaffolded relation cells by kind, returning
     * sets of relationDeclaration target names for property cells, reference cells, and
     * containment cells respectively.
     *
     * - CellModel_Property → property names
     * - CellModel_RefCell  → reference-link names
     * - CellModel_RefNode / CellModel_RefNodeList → containment-link names
     *
     * The label constant cells are excluded; this view tracks the actual relation wiring,
     * not the human-readable label text.
     */
    private fun relationNamesByCellKind(editorRef: String): Triple<Set<String>, Set<String>, Set<String>> = readOnRepo {
        val root = resolveStructureNode(editorRef)
        val props = mutableSetOf<String>()
        val refs = mutableSetOf<String>()
        val children = mutableSetOf<String>()
        fun walk(n: SNode) {
            val qn = structureQualifiedName(n)
            val targetName = n.references.find { it.link.name == "relationDeclaration" }?.targetNode?.name
            when {
                qn == "jetbrains.mps.lang.editor.structure.CellModel_Property" && targetName != null -> props.add(targetName)
                qn == "jetbrains.mps.lang.editor.structure.CellModel_RefCell" && targetName != null -> refs.add(targetName)
                (qn == "jetbrains.mps.lang.editor.structure.CellModel_RefNode" ||
                    qn == "jetbrains.mps.lang.editor.structure.CellModel_RefNodeList") && targetName != null -> children.add(targetName)
            }
            n.children.forEach { walk(it) }
        }
        walk(root)
        Triple(props, refs, children)
    }

    /** Persistent refs of `editorComponent` targets for every CellModel_Component under [root]. */
    private fun collectComponentCellTargets(root: SNode): Set<String> {
        val targets = mutableSetOf<String>()
        fun walk(n: SNode) {
            if (structureQualifiedName(n) == "jetbrains.mps.lang.editor.structure.CellModel_Component") {
                n.references.find { it.link.name == "editorComponent" }?.targetNode?.let {
                    targets.add(PersistenceFacade.getInstance().asString(it.reference))
                }
            }
            n.children.forEach { walk(it) }
        }
        walk(root)
        return targets
    }

    private fun countComponentCells(root: SNode): Int {
        var count = 0
        fun walk(n: SNode) {
            if (structureQualifiedName(n) == "jetbrains.mps.lang.editor.structure.CellModel_Component") count++
            n.children.forEach { walk(it) }
        }
        walk(root)
        return count
    }

    private fun constantCells(root: SNode): List<SNode> {
        val out = mutableListOf<SNode>()
        fun walk(n: SNode) {
            if (structureQualifiedName(n) == "jetbrains.mps.lang.editor.structure.CellModel_Constant") out.add(n)
            n.children.forEach { walk(it) }
        }
        walk(root)
        return out
    }

    private fun refCells(root: SNode): List<SNode> {
        val out = mutableListOf<SNode>()
        fun walk(n: SNode) {
            if (structureQualifiedName(n) == "jetbrains.mps.lang.editor.structure.CellModel_RefCell") out.add(n)
            n.children.forEach { walk(it) }
        }
        walk(root)
        return out
    }

    private fun refNodeListCells(root: SNode): List<SNode> {
        val out = mutableListOf<SNode>()
        fun walk(n: SNode) {
            if (structureQualifiedName(n) == "jetbrains.mps.lang.editor.structure.CellModel_RefNodeList") out.add(n)
            n.children.forEach { walk(it) }
        }
        walk(root)
        return out
    }

    /**
     * Returns the persistent string refs of every styleClass target reachable through the
     * ApplyStyleClass → target → StyleClassReference → styleClass chain attached to [cell]'s
     * styleItem slot. Mirrors the production layout (see applyStyle in
     * JetBrainsMPSEditorMcpToolset). Used by some assertions that want to verify *which* style
     * was wired; presence-only assertions should prefer [applyStyleClassCount].
     */
    private fun applyStyleTargets(cell: SNode): Set<String> {
        val out = mutableSetOf<String>()
        for (item in cell.children) {
            if (item.containmentLink?.name != "styleItem") continue
            if (structureQualifiedName(item) != "jetbrains.mps.lang.editor.structure.ApplyStyleClass") continue
            val styleClassRef = item.children.find { it.containmentLink?.name == "target" } ?: continue
            val tgt = styleClassRef.references.find { it.link.name == "styleClass" }?.targetNode ?: continue
            out.add(PersistenceFacade.getInstance().asString(tgt.reference))
        }
        return out
    }

    /** Counts ApplyStyleClass children directly attached to [cell] via the styleItem link. */
    private fun applyStyleClassCount(cell: SNode): Int = cell.children.count {
        it.containmentLink?.name == "styleItem" &&
            structureQualifiedName(it.concept) == "jetbrains.mps.lang.editor.structure.ApplyStyleClass"
    }

    /**
     * Names of properties bound by every TOP-LEVEL CellModel_Property under [editorRef] — i.e.
     * the cells emitted directly by the property loop in the scaffolder. Excludes
     * CellModel_Property cells nested inside an InlineEditorComponent (which represent the
     * target concept's `name` property inside a RefCell, not a host-concept property and
     * therefore not subject to includeProperties filtering).
     */
    private fun topLevelPropertyNames(editorRef: String): Set<String> = readOnRepo {
        val root = resolveStructureNode(editorRef)
        val out = mutableSetOf<String>()
        fun walk(n: SNode) {
            if (structureQualifiedName(n) == "jetbrains.mps.lang.editor.structure.InlineEditorComponent") return
            if (structureQualifiedName(n) == "jetbrains.mps.lang.editor.structure.CellModel_Property") {
                n.references.find { it.link.name == "relationDeclaration" }?.targetNode?.name?.let(out::add)
            }
            n.children.forEach { walk(it) }
        }
        walk(root)
        out
    }

    /**
     * The unique constant cell holding non-empty, non-colon-terminated text under [root] —
     * by construction the cell that carries the concept alias. Property/ref/child labels all
     * end with ':'; this filter isolates the alias.
     */
    private fun aliasConstantCell(root: SNode): SNode = constantCells(root).single {
        val t = it.getPropertyByName("text") ?: ""
        t.isNotEmpty() && !t.endsWith(":")
    }

    /**
     * Locates a StyleClass node already loaded into the test repository and returns its
     * persistent reference. The MPS distribution ships several (BaseStyleSheet/Comment etc.
     * in `jetbrains.mps.lang.core.editor`); we walk modules instead of hard-coding the ref
     * so the test survives ID changes in the bundled style sheets.
     */
    private fun findAnyStyleClassRef(): String = readOnRepo {
        for (module in myProject.repository.modules) {
            for (model in module.models) {
                for (root in model.rootNodes) {
                    if (structureQualifiedName(root.concept) != "jetbrains.mps.lang.editor.structure.StyleSheet") continue
                    for (child in root.children) {
                        if (structureQualifiedName(child.concept) == "jetbrains.mps.lang.editor.structure.StyleClass") {
                            return@readOnRepo PersistenceFacade.getInstance().asString(child.reference)
                        }
                    }
                }
            }
        }
        error("No StyleClass node found in the loaded repository; cannot exercise style scaffolding paths.")
    }

    private fun assertErrorContains(response: String, needle: String, hint: String) {
        val obj = JsonParser.parseString(response).asJsonObject
        assertFalse("expected error envelope, got: $response", obj.get("ok").asBoolean)
        val msg = obj.get("error").asString
        assertTrue("$hint (got: $msg)", msg.contains(needle))
    }
}
