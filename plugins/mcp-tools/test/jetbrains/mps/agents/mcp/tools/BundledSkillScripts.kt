package jetbrains.mps.agents.mcp.tools

/**
 * The helper scripts, and their example inputs, that the skill catalog ships (remedy R5 of the
 * skill-script automation study).
 *
 * One list, read by every test that pins them, so that enrolling a new script is a single edit:
 * [jetbrains.mps.agents.mcp.tools.unit.SkillScriptsPackagingTest] checks the catalog against this
 * list in both directions — a listed file that stopped shipping and a shipped file nobody listed
 * both fail — and [jetbrains.mps.agents.mcp.tools.integration.SkillScriptsDriftTest] runs
 * `--list-tools` on everything named here.
 *
 * Paths are relative to the skills root and always use `/`.
 */
internal object BundledSkillScripts {

    /** Skills that own a `scripts/` directory. */
    val SKILLS = listOf(
        "mps-mcp-workflow",
        "mps-node-editing",
        "mps-language-analysis",
        "mps-project-management",
    )

    val SCRIPTS = listOf(
        "mps-mcp-workflow/scripts/mps_dump.py",
        "mps-node-editing/scripts/table_to_bulk_insert.py",
        "mps-language-analysis/scripts/concept_shape.py",
        "mps-project-management/scripts/new_project_migration_xml.py",
    )

    /**
     * Scripts that drive MPS from the outside instead of calling it. They satisfy the
     * `--list-tools` contract with an empty list, so they have no tool name that can drift.
     */
    val SCRIPTS_WITHOUT_TOOL_DEPENDENCIES = setOf(
        "mps-project-management/scripts/new_project_migration_xml.py",
    )

    /** Every non-`.py` file under a `scripts/` directory: the inputs the docs walk through. */
    val EXAMPLES = listOf(
        "mps-mcp-workflow/scripts/examples/get_concept_details_courses.json",
        "mps-mcp-workflow/scripts/examples/get_project_structure_model_roots.json",
        "mps-mcp-workflow/scripts/examples/get_project_structure_node_deep.json",
        "mps-mcp-workflow/scripts/examples/print_node_deep.json",
        "mps-mcp-workflow/scripts/examples/print_node_shallow.json",
        "mps-node-editing/scripts/examples/courses.csv",
        "mps-node-editing/scripts/examples/courses.map.json",
    )
}
