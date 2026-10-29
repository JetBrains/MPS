You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.recipes` (Recipe with name, servings, difficulty and a list of Steps; Step with text and
minutes) and the solution `mcp.study.kitchen`. MPS is running with the MCP server enabled and this
project open. Follow CLAUDE.md and the MPS skills.

Task: add editor tests for the Recipe editor and run them. The tests also run headless on CI.

1. Create a solution `mcp.study.recipes.editortests` with a `@tests` model
   `mcp.study.recipes.editortests`.
2. Add one EditorTestCase per behaviour below. Each test must fail if the behaviour it tests broke.
   a. TypeRecipeName: typing `Pancakes` into the empty name of a Recipe sets the name, and the caret
      ends at the end of the name.
   b. UndoStepText: typing into a Step's text and then undoing leaves the Recipe exactly as before.
   c. RedoStepText: typing into a Step's text, undoing and redoing leaves the typed text.
   d. CopyPasteStep: copying the only Step of a Recipe and pasting it after itself gives two equal
      Steps.
   e. DeleteEmptyStep: a Recipe has two Steps and the second one's text is empty; a single Backspace
      in that empty text removes the second Step, leaving only the first. The test must pass with
      any deletion setting of the IDE.
   f. ReflectiveEditorApplicability: on a Step, the "Show Reflective Editor" action is enabled and
      the "Show Regular Editor" action is not; neither is invoked.
3. Create a run configuration for the test model and run it via the MCP run-configuration tool.
4. Done when all six tests pass in that run configuration.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
