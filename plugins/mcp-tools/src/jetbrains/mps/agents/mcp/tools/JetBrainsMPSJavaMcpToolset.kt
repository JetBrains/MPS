package jetbrains.mps.agents.mcp.tools

import jetbrains.mps.agents.mcp.tools.common.*
import jetbrains.mps.agents.mcp.tools.java.*
import jetbrains.mps.agents.mcp.tools.languages.*

import com.google.gson.Gson
import com.google.gson.JsonArray
import com.google.gson.JsonObject
import com.intellij.mcpserver.annotations.McpDescription
import com.intellij.mcpserver.annotations.McpTool
import jetbrains.mps.errors.item.NodeReportItem
import jetbrains.mps.java.core.newparser.*
import jetbrains.mps.lang.smodel.generator.smodelAdapter.NodeCastException
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations
import jetbrains.mps.project.AbstractModule
import jetbrains.mps.project.MPSProject
import jetbrains.mps.smodel.SNodeUtil
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory
import org.jetbrains.mps.openapi.language.SContainmentLink
import org.jetbrains.mps.openapi.model.EditableSModel
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.module.SRepository


// MCP tool methods use snake_case names because they are part of the public MCP protocol
// surface, and they are invoked via reflection by the MCP server framework, so static
// analysis flags them as "never used".
@Suppress("FunctionName", "unused")
class JetBrainsMPSJavaMcpToolset : AbstractNodeOps() {
    // The Java parser -> MPS reference-resolution engine. Kept as a separate collaborator so this
    // toolset stays focused on MCP dispatch, validation, and serialization (see JavaParseResolver).
    private val javaParseResolver = JavaParseResolver()

    companion object {
        data class EffectiveJavaParseSource(val code: String, val featureKind: FeatureKind)

        private val CONSOLE_BL_COMMAND_CONCEPT = MetaAdapterFactory.getConcept(
            0xde1ad86d6e504a02uL.toLong(), 0xb306d4d17f64c375uL.toLong(),
            0x4bd43869e610f3e9L, "jetbrains.mps.console.base.structure.BLCommand"
        )
        private val CONSOLE_BL_COMMAND_BODY_LINK = MetaAdapterFactory.getContainmentLink(
            0xde1ad86d6e504a02uL.toLong(), 0xb306d4d17f64c375uL.toLong(),
            0x4bd43869e610f3e9L, 0x188f8efcef6cea65L, "body"
        )
        private val CONSOLE_BL_EXPRESSION_CONCEPT = MetaAdapterFactory.getConcept(
            0xde1ad86d6e504a02uL.toLong(), 0xb306d4d17f64c375uL.toLong(),
            0x6a40a3596560a9d9L, "jetbrains.mps.console.base.structure.BLExpression"
        )
        private val CONSOLE_BL_EXPRESSION_EXPRESSION_LINK = MetaAdapterFactory.getContainmentLink(
            0xde1ad86d6e504a02uL.toLong(), 0xb306d4d17f64c375uL.toLong(),
            0x6a40a3596560a9d9L, 0x6a40a3596560aa42L, "expression"
        )
        private val STATEMENT_LIST_CONCEPT = MetaAdapterFactory.getConcept(
            0xf3061a5392264cc5uL.toLong(), 0xa443f952ceaf5816uL.toLong(),
            0xf8cc56b200L, "jetbrains.mps.baseLanguage.structure.StatementList"
        )
        private val STATEMENT_LIST_STATEMENT_LINK = MetaAdapterFactory.getContainmentLink(
            0xf3061a5392264cc5uL.toLong(), 0xa443f952ceaf5816uL.toLong(),
            0xf8cc56b200L, 0xf8cc6bf961L, "statement"
        )

        fun effectiveJavaParseSource(code: String, featureKind: FeatureKind, isExpression: Boolean): EffectiveJavaParseSource {
            val effectiveFeatureKind = when (featureKind) {
                FeatureKind.FIELD, FeatureKind.METHOD, FeatureKind.NESTED_CLASS -> FeatureKind.CLASS_CONTENT
                else -> featureKind
            }
            if (!isExpression) {
                return EffectiveJavaParseSource(code, effectiveFeatureKind)
            }

            val stripped = code.trimEnd().trimEnd(';')
            // Plain arithmetic such as "a - b * c" is not a valid Java expression-statement, so parse it through a variable initializer.
            return EffectiveJavaParseSource("Object __mcp_expr__ = $stripped;", FeatureKind.STATEMENTS)
        }
    }

    private sealed class JavaParsePreparation {
        data class Ok(
            val parseResult: JavaParser.JavaParseResult,
            val parsedNodes: List<SNode>
        ) : JavaParsePreparation()

        data class Err(val message: String, val code: McpErrorCode? = null) : JavaParsePreparation()
    }

    private suspend fun prepareJavaParseResult(
        mpsProject: MPSProject,
        code: String,
        featureKind: FeatureKind,
        isExpression: Boolean,
        recovery: Boolean,
        contextNodeRefStr: String?
    ): JavaParsePreparation {
        return executeBackgroundRead(mpsProject) {
            val repo = mpsProject.repository
            val contextNode: SNode? = if (!contextNodeRefStr.isNullOrEmpty()) {
                val nr = resolveNodeReferencePreferringProject(mpsProject, contextNodeRefStr)
                nr?.resolve(repo) ?: return@executeBackgroundRead JavaParsePreparation.Err("Context node '$contextNodeRefStr' not found")
            } else null

            val effectiveSource = effectiveJavaParseSource(code, featureKind, isExpression)
            val isConceptBehaviorContext = contextNode != null &&
                SNodeOperations.isInstanceOf(contextNode, BehaviorLanguageMeta.conceptBehaviorConcept)

            // JavaParser.parse's CLASS_CONTENT case always casts its context to Classifier
            // (JavaParser.java, case CLASS_CONTENT), so only a Classifier or a ConceptBehavior
            // (via a detached synthetic Classifier stand-in) is an admissible contextNodeRef here;
            // anything else would surface as an opaque NodeCastException.
            val parseContext: SNode? = if (contextNode != null && effectiveSource.featureKind == FeatureKind.CLASS_CONTENT) {
                when {
                    SNodeOperations.isInstanceOf(contextNode, BaseLanguageMeta.classifierConcept) -> contextNode
                    isConceptBehaviorContext -> {
                        if (featureKind == FeatureKind.FIELD || featureKind == FeatureKind.NESTED_CLASS) {
                            return@executeBackgroundRead JavaParsePreparation.Err(
                                "featureKind '$featureKind' is not supported when contextNodeRef is a " +
                                    "'${contextNode.concept.name}'; ConceptBehavior only supports parsing METHOD/CLASS_CONTENT.",
                                code = McpErrorCode.INVALID_REQUEST
                            )
                        }
                        ConceptBehaviorJavaParseAdapter.createDetachedClassifierContext()
                    }
                    else -> return@executeBackgroundRead JavaParsePreparation.Err(
                        "'contextNodeRef' must resolve to a Classifier (or a ConceptBehavior for " +
                            "METHOD/CLASS_CONTENT), but resolved to a '${contextNode.concept.name}'.",
                        code = McpErrorCode.INVALID_REQUEST
                    )
                }
            } else contextNode

            val parseResult = try {
                JavaParser().parse(effectiveSource.code, effectiveSource.featureKind, parseContext, recovery)
            } catch (e: JavaParseException) {
                return@executeBackgroundRead JavaParsePreparation.Err("Java parsing error: ${e.message}")
            } catch (e: NodeCastException) {
                // Not a parse failure: JavaParser's CLASS_CONTENT case always casts its context to
                // Classifier, so this means contextNodeRef was not an admissible parse context.
                return@executeBackgroundRead JavaParsePreparation.Err(
                    "'contextNodeRef' was not an admissible parse context for featureKind '$featureKind'; " +
                        "it must resolve to a BaseLanguage Classifier, or a ConceptBehavior for METHOD/CLASS_CONTENT.",
                    code = McpErrorCode.INVALID_REQUEST
                )
            }

            var parsedNodes = unwrapExpressionNodes(parseResult.nodes, isExpression)
            if (parsedNodes.isEmpty()) {
                return@executeBackgroundRead JavaParsePreparation.Err(parseResult.errorMsg ?: "Parser returned no nodes")
            }

            if (isConceptBehaviorContext && effectiveSource.featureKind == FeatureKind.CLASS_CONTENT) {
                when (
                    val converted = ConceptBehaviorJavaParseAdapter.convertParsedMembersForConceptBehavior(parsedNodes, contextNode)
                ) {
                    is ConceptBehaviorJavaParseAdapter.ConceptBehaviorConversion.Ok -> parsedNodes = converted.nodes
                    is ConceptBehaviorJavaParseAdapter.ConceptBehaviorConversion.Err ->
                        return@executeBackgroundRead JavaParsePreparation.Err(converted.message, code = McpErrorCode.INVALID_REQUEST)
                }
            }

            JavaParsePreparation.Ok(parseResult, parsedNodes)
        }
    }

    private fun unwrapExpressionNodes(nodes: List<SNode>, isExpression: Boolean): List<SNode> {
        if (!isExpression) {
            return nodes
        }
        return nodes.map { node ->
            val extracted = when {
                SNodeOperations.isInstanceOf(node, BaseLanguageMeta.localVariableDeclarationStatementConcept) -> {
                    // Unwrap: LocalVariableDeclarationStatement -> LocalVariableDeclaration -> initializer.
                    val varDecl = node.children.firstOrNull()
                    when {
                        varDecl == null -> null
                        SNodeOperations.isInstanceOf(varDecl, BaseLanguageMeta.variableDeclarationConcept) ->
                            varDecl.getChildren(BaseLanguageMeta.initializerLink).firstOrNull()
                        else -> varDecl.children.lastOrNull()
                    }
                }

                SNodeOperations.isInstanceOf(node, BaseLanguageMeta.expressionStatementConcept) ->
                    node.getChildren(BaseLanguageMeta.expressionLink).firstOrNull()

                else -> null
            }
            // JavaParser returns the wrapper statement detached (JavaParser.java:150), but the
            // initializer/expression we pull out of it is still attached to that transient wrapper.
            // addChild()/insertChildBefore()/addRootNode() assert the incoming node has no parent
            // (replaceWithAnother detaches it for us via SNodeUtil), so detach it the same way the
            // parser detaches its top-level statements. Falls back to the original node when
            // unwrapping fails.
            if (extracted != null) {
                SNodeOperations.deleteNode(extracted)
                extracted
            } else {
                node
            }
        }
    }

    // Structural guard: a node may only be placed in a containment role whose declared target
    // concept it conforms to. Both `child` (parent.addChild) and `replace`
    // (SNodeOperations.replaceWithAnother) attach parser output directly without validating the
    // concept against the role, so a mismatch (e.g. an Expression into the `member` role, or a
    // ClassConcept into a statement slot) silently corrupts the model and only surfaces later in
    // check_root_node_problems. Returns an actionable message when the node does not fit, else null.
    private fun roleAssignabilityError(node: SNode, link: SContainmentLink, parent: SNode): String? {
        val target = link.targetConcept
        if (node.concept.isSubConceptOf(target)) return null
        return "Concept '${node.concept.name}' cannot be placed in role '${link.name}' of " +
                "'${parent.concept.name}': the role expects '${target.name}' or a subconcept. " +
                "Check that 'featureKind' matches the target role (for example, EXPRESSION targets an " +
                "expression-bearing role, not 'member')."
    }

    // Best-effort: only the inserted nodes are undone. Other in-memory mutations on the failure
    // path — the ModelImports updates from resolveIteratively and the JDK dependency staged below —
    // are not reverted; neither is persisted, since model.save() and the module-side save() run
    // only on success.
    private fun finalizeInsertedNodes(
        model: EditableSModel,
        repo: SRepository,
        inserted: List<SNode>,
        featureKind: FeatureKind,
        doImportLang: Boolean,
        doResolveRefs: Boolean,
        parseResult: JavaParser.JavaParseResult,
        persist: Boolean = true,
        rollbackInsertedNodes: () -> Unit
    ) {
        try {
            javaParseResolver.resolveIteratively(model, repo, inserted, featureKind, doImportLang, doResolveRefs, parseResult)
            if (persist) {
                // d1: stage the JDK dependency addition here (after resolveIteratively succeeds).
                // ensureJDKDependency now only returns the Dependency (or null) without mutating.
                // Both add and setChanged() happen exclusively on the success path, immediately
                // before the saves. On any failure the descriptor remains untouched.
                val jdkDep = javaParseResolver.ensureJDKDependency(model)
                if (jdkDep != null) {
                    val module = model.module as? AbstractModule
                    module?.moduleDescriptor?.dependencies?.add(jdkDep)
                    module?.setChanged()
                }
                model.save()
                (model.module as? AbstractModule)?.save()
            }
        } catch (e: Exception) {
            // The rollback is best-effort: its delete arm already swallows per-node failures via
            // safelyRollbackNodes, but the mode-specific restore arm (re-attaching a displaced or
            // replaced node) is bespoke and could still throw. Guard the whole call so a failing
            // rollback can never replace the original failure `e` that the caller needs to surface.
            try {
                rollbackInsertedNodes()
            } catch (rollbackEx: Throwable) {
                rethrowIfCancellation(rollbackEx)
                if (rollbackEx is Error) throw rollbackEx
                logger.warn("Rollback after a failed insert threw; preserving the original failure", rollbackEx)
            }
            throw e
        }
    }

    // Outcome of one insert mode. A validation failure (bad position, role mismatch, unresolvable
    // target, …) is returned as a pre-formatted [Err]; unexpected failures during mutation or
    // post-processing are thrown and handled by the caller's withMpsProject/toolFailure boundary.
    private sealed class InsertOutcome {
        data class Ok(val inserted: List<SNode>, val warnings: List<String> = emptyList()) : InsertOutcome()
        data class Err(val json: String) : InsertOutcome()
    }

    private fun wrapAsConsoleCommand(parsedNodes: List<SNode>, request: JavaParseInsertRequest): InsertOutcome {
        if (request.isExpression) {
            if (parsedNodes.size != 1) {
                return InsertOutcome.Err(errJson(
                    "Console expression insertion requires exactly one parsed expression, but the input parsed into ${parsedNodes.size} nodes.",
                    McpErrorCode.INVALID_REQUEST
                ))
            }
            val command = SConceptOperations.createNewNode(CONSOLE_BL_EXPRESSION_CONCEPT)
            val expression = parsedNodes.first()
            roleAssignabilityError(expression, CONSOLE_BL_EXPRESSION_EXPRESSION_LINK, command)?.let {
                return InsertOutcome.Err(errJson(it, McpErrorCode.INVALID_REQUEST))
            }
            command.addChild(CONSOLE_BL_EXPRESSION_EXPRESSION_LINK, expression)
            return InsertOutcome.Ok(listOf(command))
        }

        if (request.featureKind != FeatureKind.STATEMENTS) {
            return InsertOutcome.Err(errJson(
                "insert.mode 'console' supports featureKind EXPRESSION or STATEMENTS. " +
                    "Use child/replace with a parentRef/targetRef inside the current console command to insert '${request.featureKindText}' into an existing console node.",
                McpErrorCode.INVALID_REQUEST
            ))
        }

        val statementList = SConceptOperations.createNewNode(STATEMENT_LIST_CONCEPT)
        for (node in parsedNodes) {
            roleAssignabilityError(node, STATEMENT_LIST_STATEMENT_LINK, statementList)?.let {
                return InsertOutcome.Err(errJson(it, McpErrorCode.INVALID_REQUEST))
            }
        }
        for (node in parsedNodes) {
            statementList.addChild(STATEMENT_LIST_STATEMENT_LINK, node)
        }

        val command = SConceptOperations.createNewNode(CONSOLE_BL_COMMAND_CONCEPT)
        command.addChild(CONSOLE_BL_COMMAND_BODY_LINK, statementList)
        return InsertOutcome.Ok(listOf(command))
    }

    private fun insertAsRoot(
        mpsProject: MPSProject,
        parsedNodes: List<SNode>,
        parseResult: JavaParser.JavaParseResult,
        request: JavaParseInsertRequest
    ): InsertOutcome {
        val repo = mpsProject.repository
        val insertTarget = request.insert
        val modelRefStr = checkNotNull(insertTarget.modelRef)
        val model = when (val r = resolveEditableModel(mpsProject, modelRefStr)) {
            is EditableModelResolution.Ok -> r.model
            is EditableModelResolution.Err -> return InsertOutcome.Err(r.errJson)
        }

        val inserted = mutableListOf<SNode>()
        for (n in parsedNodes) {
            model.addRootNode(n)
            if (insertTarget.virtualPackage != null) {
                n.setProperty(SNodeUtil.property_BaseConcept_virtualPackage, insertTarget.virtualPackage)
            }
            inserted.add(n)
        }

        finalizeInsertedNodes(
            model,
            repo,
            inserted,
            request.featureKind,
            request.importUsedLanguages,
            request.resolveReferences,
            parseResult
        ) {
            // Roots were attached via model.addRootNode; node.delete() (inside safelyRollbackNodes)
            // detaches a root from its model — the same undo the language-structure toolset relies on.
            safelyRollbackNodes(inserted.asReversed())
        }
        return InsertOutcome.Ok(inserted)
    }

    private fun insertAsChild(
        mpsProject: MPSProject,
        parsedNodes: List<SNode>,
        parseResult: JavaParser.JavaParseResult,
        request: JavaParseInsertRequest
    ): InsertOutcome {
        val repo = mpsProject.repository
        val insertTarget = request.insert
        val parentRefStr = checkNotNull(insertTarget.parentRef)
        val roleName = checkNotNull(insertTarget.role)
        val (parent, model, console) = when (
            val r = resolveEditableNodeAllowingConsole(mpsProject, parentRefStr, { "Parent node '$it' not found" })
        ) {
            is ConsoleAwareResolution.Ok -> Triple(r.node, r.model, r.console)
            is ConsoleAwareResolution.Err -> return InsertOutcome.Err(r.errJson)
        }
        val link = parent.concept.containmentLinks.find { it.name == roleName }
            ?: return InsertOutcome.Err(errJson(
                "Child role '$roleName' not found in concept '${parent.concept.name}'",
                McpErrorCode.NOT_FOUND
            ))

        // Validate concept/role compatibility BEFORE mutating so a mismatch fails
        // cleanly without a partial insert.
        for (n in parsedNodes) {
            roleAssignabilityError(n, link, parent)?.let {
                return InsertOutcome.Err(errJson(it, McpErrorCode.INVALID_REQUEST))
            }
        }

        val inserted = mutableListOf<SNode>()

        // A single-cardinality role (0..1 / 1) holds at most one child, but
        // parent.addChild / insertChildBefore append regardless of cardinality
        // (cardinality is a structure-checker constraint, not an API guard).
        // Appending into an occupied role would yield two children and fail
        // validation with "Only one child is allowed in the role '<role>'", so we
        // overwrite the existing occupant instead — consistent with the sibling
        // mps_mcp_update_node, which also replaces the child of a single-cardinality
        // role. A multi-node input cannot fit one slot, so that case is still
        // rejected (like 'replace' mode's single-node requirement).
        var displaced: SNode? = null
        if (!link.isMultiple) {
            if (parsedNodes.size > 1) {
                return InsertOutcome.Err(errJson(
                    "Role '${link.name}' of '${parent.concept.name}' has single " +
                            "cardinality but the input parsed into ${parsedNodes.size} " +
                            "top-level nodes. Supply a single feature/expression, or target " +
                            "a multi-cardinality role.",
                    McpErrorCode.INVALID_REQUEST
                ))
            }
            val requestedPos = insertTarget.position
            if (requestedPos != null && requestedPos != -1 && requestedPos != 0) {
                return InsertOutcome.Err(errJson(
                    "position $requestedPos is not applicable to single-cardinality " +
                            "role '${link.name}' (only -1 or 0 are allowed)",
                    McpErrorCode.INVALID_REQUEST
                ))
            }
            // All validation is done; this delete is the first mutation, so no early
            // return below can leave the occupant destroyed. The finalize rollback
            // re-attaches it if resolution fails before the model is persisted.
            displaced = parent.getChildren(link).firstOrNull()
            displaced?.let { SNodeOperations.deleteNode(it) }
        }

        // Resolve where the (possibly multiple) parsed nodes land via the shared rule — null/-1
        // append, >= child-count clamps to an append, < -1 is rejected — keeping this tool
        // consistent with mps_mcp_update_node ADD CHILD and the move ops. The response reports each
        // inserted node's actual landing index (see below), so a caller that overshoots can still
        // see where it landed.
        when (val resolved = resolveInsertIndex(link.name, insertTarget.position, parent.getChildren(link).toList().size)) {
            is InsertIndex.Invalid -> return InsertOutcome.Err(errJson(resolved.message, McpErrorCode.INVALID_REQUEST))
            InsertIndex.Append -> {
                for (n in parsedNodes) {
                    parent.addChild(link, n)
                    inserted.add(n)
                }
            }
            is InsertIndex.At -> {
                // Insert the parsed nodes consecutively starting at the resolved index, advancing
                // per node. Re-reading children each iteration keeps the clamp correct as the role
                // grows.
                var index = resolved.index
                for (n in parsedNodes) {
                    val children = parent.getChildren(link).toList()
                    val effectiveIndex = if (index > children.size) children.size else index
                    val anchor = if (effectiveIndex < children.size) children[effectiveIndex] else null
                    parent.insertChildBefore(link, n, anchor)
                    inserted.add(n)
                    index = effectiveIndex + 1
                }
            }
        }

        finalizeInsertedNodes(
            model,
            repo,
            inserted,
            request.featureKind,
            request.importUsedLanguages,
            request.resolveReferences,
            parseResult,
            persist = (console == null)
        ) {
            safelyRollbackNodes(inserted.asReversed())
            // Restore the single-cardinality occupant we overwrote, if finalize
            // failed before persisting (mirrors the 'replace' branch's rollback).
            displaced?.let {
                if (it.parent == null) parent.addChild(link, it)
            }
        }
        // For a console target the import refresh is gated on importUsedLanguages, exactly like the
        // model-side imports in finalizeInsertedNodes — otherwise it would re-add the used languages
        // resolveIteratively just suppressed (see persistOrRefreshConsole).
        val importWarning = if (console != null) {
            persistOrRefreshConsole(model, console, refreshImports = request.importUsedLanguages)
        } else null
        return InsertOutcome.Ok(inserted, warnings = listOfNotNull(importWarning))
    }

    private fun insertAsReplace(
        mpsProject: MPSProject,
        parsedNodes: List<SNode>,
        parseResult: JavaParser.JavaParseResult,
        request: JavaParseInsertRequest
    ): InsertOutcome {
        val repo = mpsProject.repository
        val targetRefStr = checkNotNull(request.insert.targetRef)
        val (targetNode, model, console) = when (
            val r = resolveEditableNodeAllowingConsole(mpsProject, targetRefStr, { "Target node '$it' not found" })
        ) {
            is ConsoleAwareResolution.Ok -> Triple(r.node, r.model, r.console)
            is ConsoleAwareResolution.Err -> return InsertOutcome.Err(r.errJson)
        }

        // Replace expects exactly one top-level node; multiple parsed nodes
        // cannot be substituted into a single containment slot, so reject up
        // front instead of silently dropping the trailing nodes.
        if (parsedNodes.size > 1) {
            return InsertOutcome.Err(errJson(
                "Replace mode requires exactly one top-level parsed node, " +
                        "but the input parsed into ${parsedNodes.size}. Use 'child' or " +
                        "'root' mode for multi-node insertions, or supply a single " +
                        "feature/expression here.",
                McpErrorCode.INVALID_REQUEST
            ))
        }

        val newNode = parsedNodes.first()
        val parent = targetNode.parent
            ?: return InsertOutcome.Err(errJson(
                "Target node '$targetRefStr' is a root; root replacement not supported via 'replace' mode",
                McpErrorCode.INVALID_REQUEST
            ))
        // f: getContainmentLink() should be non-null for any non-root node, but
        // surfacing it as a structured error is safer than crashing on `!!` if the
        // platform invariant ever changes (e.g. transient detachment during a
        // concurrent edit).
        val link = targetNode.containmentLink
            ?: return InsertOutcome.Err(errJson(
                "Target node '$targetRefStr' has no containment link",
                McpErrorCode.INVALID_REQUEST
            ))
        // Validate concept/role compatibility BEFORE the swap so an incompatible
        // replacement cannot corrupt the AST.
        roleAssignabilityError(newNode, link, parent)?.let {
            return InsertOutcome.Err(errJson(it, McpErrorCode.INVALID_REQUEST))
        }
        // g1: Capture the exact index of targetNode in its parent's role list
        // BEFORE the replace. On rollback we put targetNode back at that index,
        // which preserves order even if siblings were moved or removed between
        // the failed mutation and the rollback. nextSibling-based recovery (the
        // prior approach) misbehaves if the sibling itself was relocated.
        val originalIndex = parent.getChildren(link).toList().indexOf(targetNode)
        SNodeOperations.replaceWithAnother(targetNode, newNode)
        val inserted = mutableListOf(newNode)

        finalizeInsertedNodes(
            model,
            repo,
            inserted,
            request.featureKind,
            request.importUsedLanguages,
            request.resolveReferences,
            parseResult,
            persist = (console == null)
        ) {
            safelyRollbackNodes(inserted)
            if (targetNode.parent == null) {
                val currentChildren = parent.getChildren(link).toList()
                if (originalIndex in currentChildren.indices) {
                    parent.insertChildBefore(link, targetNode, currentChildren[originalIndex])
                } else {
                    parent.addChild(link, targetNode)
                }
            }
        }
        // Gate the console import refresh on importUsedLanguages (see insertAsChild / persistOrRefreshConsole).
        val importWarning = if (console != null) {
            persistOrRefreshConsole(model, console, refreshImports = request.importUsedLanguages)
        } else null
        return InsertOutcome.Ok(inserted, warnings = listOfNotNull(importWarning))
    }

    private fun insertAsConsoleCommand(
        mpsProject: MPSProject,
        parsedNodes: List<SNode>,
        parseResult: JavaParser.JavaParseResult,
        request: JavaParseInsertRequest
    ): InsertOutcome {
        val console = when (val r = resolveConsoleEditableTab(mpsProject.project)) {
            is ConsoleResolution.Ok -> r
            is ConsoleResolution.Err -> return InsertOutcome.Err(r.errJson)
        }
        val model = console.consoleModel as? EditableSModel
            ?: return InsertOutcome.Err(errJson("The MPS Console model is not editable", McpErrorCode.NOT_EDITABLE))

        val command = when (val wrapped = wrapAsConsoleCommand(parsedNodes, request)) {
            is InsertOutcome.Ok -> wrapped.inserted.single()
            is InsertOutcome.Err -> return wrapped
        }
        val previousCommand = currentConsoleCommand(console.consoleModel)
        insertConsoleCommand(console.tab, command)?.let { detail ->
            return InsertOutcome.Err(errJson(
                "Failed to insert the command into the MPS Console: $detail",
                McpErrorCode.INTERNAL_ERROR
            ))
        }

        finalizeInsertedNodes(
            model,
            mpsProject.repository,
            listOf(command),
            request.featureKind,
            request.importUsedLanguages,
            request.resolveReferences,
            parseResult,
            persist = false
        ) {
            safelyRollbackNodes(listOf(command))
            previousCommand?.let { insertConsoleCommand(console.tab, it) }
        }

        // Honour postProcess.importUsedLanguages: when the caller opted out, skip the post-resolution
        // import refresh so we don't re-add the used languages resolveIteratively suppressed — symmetric
        // with the child/replace console paths and the project modes. (insertCommand above performs its
        // own pre-resolution addNodeImports; that is the console's structural-import step and is left as
        // is, mirroring the sibling mps_mcp_insert_console_command_from_json, which always imports.)
        val importWarning = if (request.importUsedLanguages) {
            addConsoleNodeImports(console.tab, command)
                ?.let { "Failed to update MPS Console imports after insertion: $it" }
        } else null
        val activateWarning = warningMessageOrRethrow {
            console.tab.javaClass.getMethod("activate").invoke(console.tab)
        }
        val selectWarning = warningMessageOrRethrow {
            console.tab.javaClass.getMethod("selectNode", SNode::class.java).invoke(console.tab, command)
        }
        return InsertOutcome.Ok(listOf(command), warnings = listOfNotNull(importWarning, activateWarning, selectWarning))
    }

    // After a successful insert, re-run the standard node checkers on the affected root(s) and collect
    // the error/warning problems that fall within the inserted subtree(s). This makes input that maps
    // to a structurally valid node but does not type-check at the destination — most notably a Java 8
    // lambda, which the parser maps to a jetbrains.mps.baseLanguage.closures ClosureLiteral that only
    // type-checks against a matching functional-type target — visible in the response instead of
    // silently leaving the model in an error state. Best-effort: any checker failure is swallowed so
    // it can never turn a successful, already-persisted insert into a tool error.
    private fun collectInsertedProblems(
        mpsProject: MPSProject,
        repo: SRepository,
        inserted: List<SNode>
    ): JsonArray {
        return try {
            // Check each affected root once, then report only the problems that fall within each
            // inserted node's own subtree.
            val problemsByRoot = HashMap<SNode, Map<SNode, List<NodeReportItem>>>()
            val result = JsonArray()
            for (node in inserted) {
                val root = node.containingRoot
                val problems = problemsByRoot.getOrPut(root) { runRootCheckers(mpsProject, root, repo) }
                result.addAll(subtreeProblemsJsonArray(node, problems))
            }
            result
        } catch (e: Exception) {
            rethrowIfCancellation(e)
            logger.warn("Post-insert problem check failed; reporting no problems", e)
            JsonArray()
        }
    }

    // Builds the success envelope shared by all three insert modes. Each inserted node carries its
    // actual landing index within the parent role, so callers see where a node ended up — in
    // particular when an out-of-range `position` was clamped to an append. Index is omitted for
    // roots (no containment role). The `problems` array carries any type/structure errors or warnings
    // the checkers found within the inserted nodes' subtrees (empty when the insert type-checks).
    private fun parseInsertSuccessJson(
        mpsProject: MPSProject,
        inserted: List<SNode>,
        parseResult: JavaParser.JavaParseResult,
        problems: JsonArray,
        warnings: List<String> = emptyList()
    ): String {
        val langs = parseResult.languages?.map { it.qualifiedName } ?: emptyList()
        val insertedInfos = inserted.map { nodeInfoJsonObjectWithIndex(it, mpsProject) }
        val gson = Gson()
        val data = JsonObject().apply {
            add("inserted", gson.toJsonTree(insertedInfos))
            addProperty("package", parseResult.getPackage())
            add("languages", gson.toJsonTree(langs))
            add("problems", problems)
            addProperty("errorMsg", parseResult.errorMsg)
        }
        return okJson(data, warnings = warnings)
    }

    @McpTool
    @McpDescription(
        """
        Parses Java code with the MPS `JavaParser` and inserts the result as MPS nodes — as project model root(s), as a child in a given role, as a replacement of an existing node, or into the current MPS Console input. `insert.mode:"console"` replaces the current console input command without executing it: `EXPRESSION` is wrapped as a `BLExpression`, and `STATEMENTS` as a `BLCommand` block. For `mode:"child"` or `mode:"replace"`, if the `parentRef`/`targetRef` resolves to a node inside the current MPS Console input command it is edited in place without saving; console history and stale console references are rejected; nodes outside the selected project are rejected. `CLASS_STUB` is rejected; root insertion always appends and rejects a `position` other than `-1`/absent; replace mode requires exactly one top-level parsed node; child insertion into a single-cardinality role overwrites the existing occupant (consistent with `mps_mcp_update_node`); into a multi-cardinality role a `position` past the child count is clamped to an append (not rejected) and each inserted node reports its actual `index`. `featureKind` `FIELD`/`METHOD`/`NESTED_CLASS` are all parsed as class members (the kind is advisory; what a node may be placed where is validated against the target role, not the kind). For `METHOD`/`CLASS_CONTENT`, `contextNodeRef` may instead be a `ConceptBehavior`: parsed methods convert to `ConceptMethodDeclaration` and belong in the `method` role. Unrecognized keys in `parameters` (including `dryRun`, which is not supported) are rejected. Java 8+ constructs the MPS parser recognizes are accepted and mapped to the corresponding BaseLanguage extension — most notably lambda expressions, which become `jetbrains.mps.baseLanguage.closures` closures (the closures language is auto-imported when `postProcess.importUsedLanguages` is on); like any closure, a lambda only type-checks against a matching functional-type target. Every success envelope carries a `problems` array (each entry has `severity`, `message`, node `reference`, `concept`) listing the type-system errors/warnings found within the inserted nodes — empty when the insert type-checks — so a successful insert never silently leaves the model in an ERROR state. See `mps-baselanguage/references/parse-java-tips.md` for the `parameters` JSON schema (`code`, `featureKind`, `insert.mode`, `postProcess`), the `problems` response field, and the per-mode required fields.
        """
    )
    suspend fun mps_mcp_parse_java_and_insert(
        @McpDescription("Parameters as a JSON object — sent as real JSON or as its string form. See the description above.") parameters: JsonOrText
    ): String = mps_mcp_parse_java_and_insert(parameters.text)

    /**
     * Internal string-typed entry point for [mps_mcp_parse_java_and_insert]; the [JsonOrText]
     * overload above is the registered `@McpTool`, so a client may send the `parameters` object
     * either as real JSON or as its string form (see [JsonOrText]). Retained for in-process
     * callers and tests, which have no wire shape to decode.
     */
    suspend fun mps_mcp_parse_java_and_insert(parameters: String): String = withMpsProject("Parsing Java and inserting nodes") { mpsProject ->
        val request = try {
            parseJavaParseInsertRequest(parameters)
        } catch (e: ToolInputJsonException) {
            return@withMpsProject invalidJson(e.message)
        } catch (e: ToolInputSchemaException) {
            return@withMpsProject errJson(e.message, McpErrorCode.INVALID_REQUEST)
        }

        val parsedJava = when (
            val preparation = prepareJavaParseResult(
                mpsProject,
                request.code,
                request.featureKind,
                request.isExpression,
                request.recovery,
                request.contextNodeRef
            )
        ) {
            is JavaParsePreparation.Ok -> preparation
            is JavaParsePreparation.Err -> return@withMpsProject errJson(preparation.message, preparation.code)
        }

        // The insert + post-process runs under one write command. Validation failures return a
        // coded InsertOutcome.Err; unexpected exceptions during mutation or post-processing
        // propagate to withMpsProject's toolFailure boundary, which logs them as INTERNAL_ERROR.
        // finalizeInsertedNodes rolls back the inserted nodes on any throw before the model is
        // persisted.
        executeShortCommandOnEdt(mpsProject) {
            val repo = mpsProject.repository
            val parseResult = parsedJava.parseResult
            val parsedNodes = parsedJava.parsedNodes

            val outcome = when (request.insert.mode) {
                "root" -> insertAsRoot(mpsProject, parsedNodes, parseResult, request)
                "child" -> insertAsChild(mpsProject, parsedNodes, parseResult, request)
                "replace" -> insertAsReplace(mpsProject, parsedNodes, parseResult, request)
                "console" -> insertAsConsoleCommand(mpsProject, parsedNodes, parseResult, request)
                // Unreachable in practice: parseJavaParseInsertRequest already rejects unknown
                // modes. Kept as a defensive fallback.
                else -> InsertOutcome.Err(
                    errJson("Unknown insert.mode '${request.insert.mode}'", McpErrorCode.INVALID_REQUEST)
                )
            }

            when (outcome) {
                is InsertOutcome.Ok -> {
                    val problems = collectInsertedProblems(mpsProject, repo, outcome.inserted)
                    parseInsertSuccessJson(mpsProject, outcome.inserted, parseResult, problems, outcome.warnings)
                }
                is InsertOutcome.Err -> outcome.json
            }
        }
    }

}
