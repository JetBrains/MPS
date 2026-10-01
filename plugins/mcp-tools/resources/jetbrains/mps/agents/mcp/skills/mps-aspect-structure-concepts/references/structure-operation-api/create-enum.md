#### `CREATE_ENUM`
In a single call creates a new `EnumerationDeclaration` with a provided set of enum values in the specified structure model.

Parameters:
```
{
  "structureModelRef": "Structure model: persistent model reference (preferred) or the model's long/short name as a fallback. Names that match more than one model resolve to the first match in repository iteration order.",
  "enumName": "Name of the enumeration",
  "valuesJson": "The JSON array of enum values (max 4KB) OR an absolute path to a TEMPORARY file (inside the system temp directory) containing it. Ordinary input files are never deleted; only a temporary JSON file this toolset created may be cleaned up after reading (and only when 'dryRun' is false). Format: [{\"enumName\": \"val1\", \"enumPresentation\": \"Val 1\"}, ...]",
  "defaultEnumName": "The enumName that should be used as default (optional; null is the same as omission)",
  "dryRun": "Optional: if true, only validate input without mutating the model. Default: false."
}
```
