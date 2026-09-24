## Minimal file-generating-concept blueprint

File-generating concept skeleton for `mps_mcp_insert_root_node_from_json`. Add the body via follow-up calls to `mps_mcp_update_node` when the JSON gets large.

```json
{
  "concept": "jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration",
  "properties": [{ "name": "name", "value": "MyFile_TextGen" }],
  "references": [
    { "role": "conceptDeclaration", "target": "<MyFile-concept-node-ref>" }
  ],
  "children": [
    { "role": "extension", "nodes": [
      { "concept": "jetbrains.mps.lang.textGen.structure.ExtensionDeclaration",
        "children": [
          { "role": "body", "nodes": [
            { "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
              "children": [
                { "role": "statement", "nodes": [
                  { "concept": "jetbrains.mps.baseLanguage.structure.ReturnStatement",
                    "children": [
                      { "role": "expression", "nodes": [
                        { "concept": "jetbrains.mps.baseLanguage.structure.StringLiteral",
                          "properties": [{ "name": "value", "value": "xml" }] }
                      ]}
                    ]
                  }
                ]}
              ]
            }
          ]}
        ]
      }
    ]},
    { "role": "textGenBlock", "nodes": [
      { "concept": "jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration",
        "children": [
          { "role": "body", "nodes": [
            { "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
              "children": [
                { "role": "statement", "nodes": [
                  { "concept": "jetbrains.mps.lang.textGen.structure.AppendOperation",
                    "children": [
                      { "role": "part", "nodes": [
                        { "concept": "jetbrains.mps.lang.textGen.structure.NodeAppendPart",
                          "children": [
                            { "role": "value", "nodes": [
                              { "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
                                "children": [
                                  { "role": "operand", "nodes": [
                                    { "concept": "jetbrains.mps.lang.textGen.structure.NodeParameter" }
                                  ]},
                                  { "role": "operation", "nodes": [
                                    { "concept": "jetbrains.mps.lang.smodel.structure.SLinkAccess",
                                      "references": [
                                        { "role": "link", "target": "<document-link-declaration-node-ref>" }
                                      ]
                                    }
                                  ]}
                                ]
                              }
                            ]}
                          ]
                        }
                      ]}
                    ]
                  }
                ]}
              ]
            }
          ]}
        ]
      }
    ]}
  ]
}
```
