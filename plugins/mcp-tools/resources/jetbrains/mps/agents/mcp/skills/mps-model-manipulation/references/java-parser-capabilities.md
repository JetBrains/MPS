# What `mps_mcp_parse_java_and_insert` Can and Cannot Do

Open before calling the Java parser. The parser understands plain Java plus the Java 8+ syntax MPS recognizes (notably lambdas, which map to `baseLanguage.closures` closures — see `references/java-parser-capabilities/supported.md`); it cannot produce smodel/collection types or most other MPS-specific concept nodes — construct those directly.

One file per section, each self-contained. Read only the files for your job, and when you need more than one, Read them all in one parallel batch.

| Section | File |
|---|---|
| What the Java parser CAN handle | `references/java-parser-capabilities/supported.md` |
| Collection types: MPS concepts for `list<node<X>>` and `new arraylist<node<X>>` | `references/java-parser-capabilities/collection-types.md` |
| What the Java parser CANNOT handle (and how to work around it) | `references/java-parser-capabilities/unsupported-and-workarounds.md` |
