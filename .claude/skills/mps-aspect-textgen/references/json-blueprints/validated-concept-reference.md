## Validated concept reference (from xml textgen)

**Root:**
- `ConceptTextGenDeclaration` — `c:b83431fe-5c8f-40bc-8a36-65e25f4dd253/1233670071145`
  - Reference `conceptDeclaration` → `ConceptDeclaration` (cardinality 1)
  - Children: `extension` (`ExtensionDeclaration`), `encoding` (`EncodingDeclarationBase`), `filename` (`FilenameFunction`), `filePath` (`FilePathSpec`), `layout` (`TextUnitLayout`), `contextObjects` (`UnitContextObject`), `textGenBlock` (`GenerateTextDeclaration`)

**Body wrappers (each holds a `body` child = `StatementList`):**
- `jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration` — the main textgen body
- `jetbrains.mps.lang.textGen.structure.ExtensionDeclaration` — returns string

**Statements / parts:**
- `AppendOperation` — child role `part` (0..n, ordered)
- `ConstantStringAppendPart` — property `value`
- `NodeAppendPart` — property `withIndent` (boolean); child `value` (any Expression; common: `DotExpression`, `StaticMethodCall`, `SPropertyAccess`)
- `CollectionAppendPart` — properties `withSeparator` (boolean), `separator` (string when inline); child `list` (Expression yielding list<node<>>), optional child `separator` (Expression)
- `NewLineAppendPart` — no children
- `IndentBufferOperation` — no children
- `WithIndentOperation` — child `body` (`StatementList`)
- `IncreaseDepthOperation` — no children; unconditional `depth++`
- `DecreaseDepthOperation` — no children; unconditional `depth--`
- `BinaryWriteOperation` — child `value` (Expression of type `byte[]`); alias `write`; exclusive with text appends in the same rule
- `FoundErrorOperation` — optional child `message` (Expression); aborts generation of the current file
- `NodeParameter` — the implicit `node` variable; no properties or children

**Language-level / file-level:**
- `LanguageTextGenDeclaration` — the base text gen component; holds `UnitContextDeclaration`s, `OperationDeclaration`s, `UtilityMethodDeclaration`s; one per textgen model; conventionally named `<LanguageName>TextGen`
- `UnitContextDeclaration` — context-object type (lives in `LanguageTextGenDeclaration`); constructor either no-arg or one-arg taking the root concept instance
- `UnitContextObject` — per-concept binding of a context object (child of `ConceptTextGenDeclaration.contextObjects`); assigns a local name and a `UnitContextDeclaration` type
- `TextUnitLayout` — composes the output file from named regions; children declare areas (e.g. `HEADER`, `IMPORTS`, `SEPARATOR`, `BODY`); areas may have a separator joining appended pieces
