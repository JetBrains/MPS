# Skills over MCP: implementation handoff

Status: implementation plan, prepared 2026-09-15. Native skills RPCs are not yet
implemented. The accompanying catalog-locality changes prepare the bundled content
for individual-file delivery; they do not enable the protocol.

## Outcome and scope

Serve the Projectional Agent Toolkit's bundled skills directly through MCP, with
metadata discovery, complete file manifests, and lazy client retrieval. A client
with Skills support should be able to load MPS instructions without installing
anything into a checkout. Keep the existing initializer as an explicit local export
for clients that need filesystem skills.

This plan covers the Kotlin MCP plugin, its bundled Markdown catalog, platform
integration requirements, and validation. It does not authorize changes to a
separate IntelliJ platform checkout, publishing, commits, or deletion of installed
skills. The request that produced this plan explicitly prohibited committing.
The agent executing it must follow the then-current user request and repository
rules rather than treating this document as authorization for external actions.

## Instructions for the implementing lead agent

1. Read the repository [AGENTS.md](../../../AGENTS.md) and its mandatory rule files,
   especially [tools](../../../.agents/tools.md),
   [workflow](../../../.agents/workflow.md), and
   [quality gates](../../../.agents/quality-gates.md). Load the MPS workflow skill
   for project/tooling boundaries and the relevant code/skill authoring guidance.
2. Inspect the working tree and preserve existing changes. Recheck this plan's
   baseline against the actual plugin, SDK binaries, and available platform APIs.
   The console skill description was already corrected before this handoff; do not
   replace that user change with the earlier, overlong description.
3. Verify the protocol sources below and record the revision/profile actually
   implemented. Separate mandatory wire behavior from the MPS choices in this plan.
4. Begin with catalog preparation/refactoring, which can be completed independently
   of a new platform build. Establish the platform dependency before attempting
   native RPC registration. Keep each phase reviewable and validate its exit criteria.
5. When a required platform API is unavailable, finish independent catalog work,
   document the concrete missing API/dependency, and hand off that dependency.
   Do not disguise tool calls as native RPC support or mutate platform internals
   through reflection to bypass the missing API.
6. Before declaring completion, run the protocol and packaging checks below, review
   compatibility behavior, and report the supported client/protocol profiles and
   any remaining limitations. Never report stub-context tests as transport tests.

The source of truth for this feature is plain Kotlin and packaged skill content.
Do not inspect or edit raw MPS model XML. If packaging changes require a build-model
change, use the MPS distribution/build skills and MPS tools; generated Ant files are
not the source of truth.

## Protocol sources and the correction to the original overview

- [Current Skills documentation](https://modelcontextprotocol.io/extensions/skills/overview)
- [SEP-2640, Final design record](https://modelcontextprotocol.io/seps/2640-skills-extension)
- [2026-07-28 server discovery](https://modelcontextprotocol.io/specification/2026-07-28/server/discover)
- [2026-07-28 Resources](https://modelcontextprotocol.io/specification/2026-07-28/server/resources)
- [2026-07-28 caching](https://modelcontextprotocol.io/specification/2026-07-28/server/utilities/caching)
- [Agent Skills file format](https://agentskills.io/specification)

The original analysis also used two research notes in the author's sibling
MPS_insights checkout: “Skills over MCP: technical overview and implementation
guide” and “MPS MCP skill initialization and refresh protocol.” They are background
material, not dependencies an implementing agent must have locally.

As checked on 2026-09-15, SEP-2640 is Final. The current published profile advertises
`resources` and `extensions["io.modelcontextprotocol/skills"]` through
`server/discover`; the older overview's `initialize` example is not the current
2026-07-28 discovery flow. Modern requests carry the required protocol-version,
client-info, and client-capabilities `_meta` entries.

The historical SEP leaves caching fields on `skills/get` open. The current Skills
page requires `resultType: "complete"`, `ttlMs`, and `cacheScope` on both list and
get results. Target a named, tested profile, initially 2026-07-28 as documented by
the current Skills page. Support for older handshake-based clients must use the
platform's compatibility path; adding modern fields to an old SDK result does not
implement the modern base protocol.

## Existing implementation and integration points

| Component | Existing behavior | Planned change |
| --- | --- | --- |
| [JetBrainsMPSInitMcpToolset](../src/jetbrains/mps/agents/mcp/tools/JetBrainsMPSInitMcpToolset.kt) | Finds classpath skill folders, handles directory/JAR resources, copies into two host trees, and creates absent guides. Existing incoming names abort the install. | Extract read-only catalog loading; retain explicit export and its default no-overwrite contract. |
| [Plugin registration](../META-INF/plugin.xml) | Depends on `com.intellij.mcpServer` and registers `mcpToolset` extensions. | Register a skills/resource provider through a supported platform API once available. |
| [SDK library configuration](../../../.idea/libraries/idea_mcpserver.xml) | Supplies the platform MCP plugin and Kotlin SDK from bundled JARs. | Consume a compatible platform/SDK build; do not add a second, incompatible copy of the SDK to the MPS plugin. |
| [AbstractOps](../src/jetbrains/mps/agents/mcp/tools/AbstractOps.kt) | Returns tool-specific JSON strings with `ok`/`data` or `ok`/`error`. | Keep existing tool semantics; native skills/resource methods use protocol DTOs and JSON-RPC errors. |
| [AgentConfigRootResolver](../src/jetbrains/mps/agents/mcp/tools/AgentConfigRootResolver.kt) and [project toolset](../src/jetbrains/mps/agents/mcp/tools/JetBrainsMPSProjectMcpToolset.kt) | Distinguish the open project from the repository root used for installation. | Continue using them for exports and project tools; bundled skill reads need neither path. |
| [Bundled workflow skill](../resources/jetbrains/mps/agents/mcp/skills/mps-mcp-workflow/SKILL.md) and [guide template](../resources/jetbrains/mps/agents/mcp/templates/AGENTS_template.md) | Describe local discovery, initialization, and manual refresh. | Document native discovery/loading and explicit filesystem export as separate workflows. |
| [Integration test base](../test/jetbrains/mps/agents/mcp/tools/McpIntegrationTestBase.kt) | Invokes Kotlin methods with a stubbed MCP coroutine context. | Retain these tests and add real protocol-boundary coverage. |

At analysis time the bundle had 31 skills and 265 Markdown files, totaling
1,367,610 bytes before locality copies and the description correction. Recompute
these values after catalog preparation; do not hard-code them in production or
tests. The bundled SDK's `ServerCapabilities` lacked `extensions`, and
`ReadResourceResult` contained only content and metadata. The inspected sibling
platform source explicitly set `resources = null`. Its source version is not proof
of the exact bundled binary version: verify both during implementation.

## Phase 1: retain and integrate catalog locality checks

The accompanying content pass localizes shared references, replaces sibling-file
dependencies with explicit same-origin companion loading, and supplies origin
guidance in every entry point. Preserve that work and revalidate it rather than
repeating the migration. Build/manifest integration of these checks is still pending.

The preparation adds
[validate_skill_catalog.py](../scripts/validate_skill_catalog.py). Run it from the
repository root, without third-party Python packages:

```sh
python3 plugins/mcp-tools/scripts/validate_skill_catalog.py --self-test plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills
```

It is a locality and shared-copy check, not a full Agent Skills metadata validator
or a native manifest generator. Integrate it, or equivalent tested checks, into
the final packaging/manifest pipeline. Expand its regression cases when adding
new reference syntax or shared files.

Audit every skill, including supporting references and plain/backticked instructions.
A file inside a sibling skill cannot be included in the consuming skill's manifest
under its sibling URI. An array manifest contains only files within that skill root.

- Supporting-file references must resolve inside the consuming skill. Package a
  regular-file copy of shared documentation there when it is needed as supporting
  content. Localize links in that copied document transitively.
- Keep a maintainable relationship between canonical shared documents and copies.
  Retain or add a repeatable locality/copy-consistency check, and verify that a
  canonical edit cannot silently leave stale copies. Do not use symlinks as the
  packaging mechanism.
- Companion skills remain separate skills. Route their activation through the
  host's skill-loading facility with the originating server identity retained.
  For a filesystem-loaded skill, use the corresponding local catalog. Merely
  reading another entry point does not activate it or grant its permissions.
- Do not invent a host tool name, assume support that is not present, or resolve a
  companion by an ambiguous global name. Discovery determines its actual URI in
  the same origin. The namespace proposed below is for the future provider.
- Preserve progressive disclosure: local copies make references available, but do
  not require loading every reference or every companion skill for every task.
- Keep descriptions within Agent Skills limits, including the user's console fix.
  Preserve the technical guidance, names, and supported frontmatter fields.

Exit: all bundled local links resolve within the appropriate skill root; explicit
companion loads preserve origin; shared copies are consistent; the locality check
passes with meaningful negative cases. Run these checks on the final packaged
content before computing manifests, not only on the authoring tree.

## Phase 2: extract a read-only catalog

Introduce a plugin-local `BundledSkillCatalog` (proposed name) independent of MPS
projects, model access, and the EDT. Reuse it from the initializer and the eventual
native provider. Keep transport-specific DTOs outside its loading/validation logic.

For each snapshot retain:

- skill entry-point URI and the complete YAML frontmatter represented as JSON;
- every resource's canonical URI, MIME type, raw bytes, SHA-256 digest, and byte size;
- directory metadata if optional directory reading will be supported, including
  empty directories;
- an internal snapshot identity for consistent pagination and invalidation.

Use a safe YAML parser that handles block scalars and validates field types. Preserve
all authored fields, including the existing `type` field; do not project the result
down to name/description or silently truncate it. Reject malformed or non-JSON-
representable metadata rather than constructing arbitrary YAML objects.

The catalog is small enough for an immutable byte snapshot. Compute the frontmatter,
digest, and size from the same bytes later returned by the resource handler. Keep
UTF-8 and newline handling explicit; do not normalize or decorate served text.
Future binary resources use the standard blob representation and hashes of decoded
raw content, not hashes of their base64 encoding.

Refactor the existing directory/JAR helper so no filesystem `Path` escapes a closed
JAR filesystem. Serialize snapshot construction or otherwise handle concurrent JAR
access safely; close only filesystems owned by the loader. Rebuild the snapshot on
plugin reload, and define a development-resource invalidation path. Atomically
publish a complete validated snapshot rather than mutating entries in place.

Validate directory/name matching, required frontmatter, all file membership, unique
URIs, link locality, and exact sizes/digests. Fail build validation for malformed
bundled skills. Log a precise runtime catalog-loading failure and do not advertise
an unusable skills provider. Complete manifests cover every packaged file exactly
once, including nested skills' files when present. The interoperability bounds are
512 resources and 16 MiB per skill, not per catalog.

Exit: plain tests cover development directories and a real packaged-JAR fixture,
including nested files, malformed skills, byte identity, shared-copy drift, and
catalog replacement. Initializer behavior still passes its existing tests.

## Phase 3: obtain the platform extension/SDK support

The platform must expose a supported way for plugins to contribute resource and
skill providers. `MpsSkillsProvider` and the extension point are proposed names,
not existing APIs that an agent may assume are callable.

The platform owns modern base-protocol support, discovery/version negotiation,
request `_meta` validation, authorization, JSON-RPC dispatch/serialization, transport
lifecycle, and legacy compatibility. The provider supplies catalog entries and file
content. Apply the same request authorization policy to resource/skill handlers as
appropriate for the server; tool filtering alone does not govern new RPCs.

Produce a concrete upstream API/dependency request if this boundary is missing.
Identify the minimum platform build and SDK revision needed, how providers register,
how their capabilities are composed, how unsupported methods fail, and how unload or
reload removes handlers. Do not fork the server transport inside the MPS plugin or
replace application services as an implicit workaround.

Exit: a supported platform build can expose the extension and dispatch native
methods, with legacy tools still usable. Until then, Phase 2 can ship independently,
but the feature must not be described as native Skills support.

## Phase 4: implement the native provider

Use stable resource identifiers such as
`skill://jetbrains/mps/mps-aspect-editor/SKILL.md`. The final directory segment must
match the skill's name. The prefix is organizational, not a network address or an
authority claim. Do not encode the active project, an absolute machine path, or a
release number into the URI. Changes at a stable URI produce new manifests.

| Operation | Required behavior |
| --- | --- |
| `server/discover` | Platform advertises `resources: {}` and `extensions["io.modelcontextprotocol/skills"]: {}` when the provider is available. Add `directoryRead: true` only if implemented. |
| `skills/list` | Deterministic metadata-only listing. Each skill entry contains its entry-point URI, complete frontmatter, and complete `{uri,digest,size}` file array. Paginate only between entries. |
| `skills/get` | Exact entry-point lookup independent of listing. No pagination; unknown/non-entry-point URI returns JSON-RPC `-32602`. |
| `resources/list` | Required by base Resources support. Return the catalog's file metadata without downloading contents to the client. Paginate as needed. |
| `resources/read` | Return the requested file as ordinary MCP resource content. No numbered lines, truncation, JSON-string tool envelope, or server-local temporary path. |
| `resources/directory/read` | Optional. Return every direct child with ordinary resource metadata, paginate, and type child directories as `inode/directory`. Support the skill root and all directories, including empty ones. |

Do not register `skills/list` or `skills/get` as `@McpTool` methods: `tools/call` is
not the native protocol. Keep the existing tool surface and its error envelopes
unchanged. Native unknown skill/resource/directory errors use `-32602`; unexpected
server failures use `-32603`, with safe messages.

For the selected modern profile, include `resultType: "complete"`, `ttlMs`, and
`cacheScope` on list/get and cacheable base-protocol results. Start with a documented
60-second TTL and `private` scope; any switch to `public` must account for content,
authorization, and version differences. Keep scope consistent across pages. Bind
opaque cursors to the snapshot and request scope, reject stale/invalid cursors, and
let the client restart listing rather than mixing snapshots. There is no Skills-
specific list-changed notification to invent.

Resolve requests through an exact catalog URI index. Reject traversal, encoded path
separators, unsupported URI forms, and symlink escapes. Do not delegate arbitrary
URIs to general filesystem tools. Serve complete static manifests, not `dynamic`.
Hash only after all localization/copy steps, and serve precisely that snapshot.

Bundled discovery/read operations must work without an open project and with several
projects open. They need no nonstandard `projectPath` parameter or model lock. Keep
project-local/generated DSL skills outside this provider's initial scope.

Exit: real protocol tests exercise all advertised operations, metadata/caching,
errors, pagination, lifecycle, and project-independent behavior.

## Phase 5: update discovery and compatibility guidance

Update the bundled workflow skill, the initializer's description, the guide template,
the initialization test scenario, and the public Projectional Agent Toolkit help
topic consistently. Describe two routes:

1. A host with Skills support discovers the catalog and loads selected skills from
   the connected server. Absence of local skill folders does not mean initialization
   is missing. No checkout write is required.
2. A client that needs filesystem skills can explicitly request the existing export.
   Preserve collision/no-overwrite behavior and existing guides. Project routing
   (`mpsProjectBaseDirectory`) and install destination (`agentConfigRoot`) remain
   distinct; neither becomes a requirement for reading the bundled remote catalog.

Host applications own activation, consent, origin qualification, integrity checking,
and verified caches. An ordinary resource read does not activate a skill. The server
must not copy remote content into local skill discovery trees as an automatic cache
or fallback, grant permissions from frontmatter, or execute a retrieved script.
Legacy exported skills are explicit local installations, not a hidden remote cache.
Do not delete or silently prefer existing local customizations when a server connects.

Public documentation is an external deliverable: prepare a reviewable update and
follow the user’s publishing authority. Do not silently claim it was updated when
only repository prose changed. The separate
[script automation study](skill-script-automation-study.md) remains independent;
native resource transport does not imply permission to execute future skill scripts.

Exit: a supported client loads a skill and a supporting reference lazily without
initialization; an older client still has a clear explicit export workflow; guides
and tool descriptions do not send either client down the wrong route.

## Optional later phase: managed local export refresh

This is compatibility work, not a prerequisite for native delivery. Keep the
initializer's default semantics. If a real updater is requested, add a distinct
refresh operation or an explicit mode with a non-mutating plan first.

Record owned relative paths, per-file hashes, bundle identity, and transaction state
outside skill discovery roots. Compare current bytes with the previous managed
snapshot before replacing/removing files. Report local modifications and deletions;
do not silently adopt legacy installs without state. Reconcile the two host trees
independently. Name prefixes and the current incoming collision list cannot prove
ownership, especially for retired or renamed skills.

Bind apply to the planned configuration-root identity and recheck preconditions.
Stage on the same filesystem; use no-overwrite creation for new files and a
journal/backup for recoverable multi-directory updates. Keep guide merges separate.
Remove broad prefix-based deletion instructions when replacing the refresh workflow.
Test failures, concurrent edits, symlink boundaries, and recovery before enabling
destructive updates. The present task does not authorize running such an updater.

## Validation and completion checklist

- Catalog content: all metadata valid, preserved verbatim as JSON, complete unique
  manifests, root entry included, byte counts/digests exact, localization and shared
  copies validated before hashing. Cover nested skills and the documented limits.
- Retrieval: UTF-8/newline fidelity, all packaged resource types, no truncation or
  temp paths, unknown/invalid URI errors, containment and symlink rejection.
- Discovery: actual capability advertisement, required request `_meta`, modern
  result/cache serialization, independent get, multi-page listing without split
  entries, invalid/stale cursors, zero and multiple open projects.
- Lifecycle: manifest/read consistency, changes/additions/removals on reload,
  concurrent reads, and handler cleanup. Client refresh must observe new digests;
  do not claim a server test proves host approval revocation.
- Packaging: build/read the plugin JAR and compare its served catalog with the
  validated staging output. Do not rely solely on development classpath resources.
- Compatibility: existing initializer collision/guide/root tests, tool invocation
  on legacy clients, explicit export with custom local skills preserved, and a
  Skills-capable host smoke test with origin-aware companion loading.

Use JDK 25 and the repository's existing IDEA build/test tooling for Kotlin changes.
Run focused catalog unit tests first, then the affected module diagnostics/build.
For tests requiring an MPS environment use the existing
`McpToolsIntegrationTestSuite` run configuration; individual integration classes
may otherwise fail with null environment/project state. Do not run multiple MPS
suites concurrently. Add a real client/server protocol fixture through the platform
test infrastructure; the existing stub-context helper cannot substitute for it.

Markdown-only preparation does not require a JVM build. Execute any new or changed
catalog validation scripts and their meaningful negative cases. Documentation and
content checks should include `git diff --check`. Report which gates ran and which
were unavailable; a unit-test result is not evidence of wire or packaging support.

Complete the native feature only when the platform dependency is available, the
provider is advertised and exercised over a real transport, a packaged bundle is
validated, legacy behavior is preserved, and a supported host can lazily load a
skill and its references. Keep the managed updater explicitly optional.
