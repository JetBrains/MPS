You are working in the current folder, which contains an empty JetBrains MPS project. MPS is
running with the MCP server enabled and this project open. Follow CLAUDE.md and the MPS skills.

Task: a small DSL for survey forms, editors that behave like a text editor, and editor tests.

1. Language `mcp.study.survey`. Concepts: root `Survey` (name; string `intro`; children
   `tags: Tag[0..n]`, `sections: Section[1..n]`); `Tag` (name); `Section` (string `title`;
   children `questions: Question[0..n]`); abstract `Question` (string `text`; boolean
   `required`) with `TextQuestion` (alias `ask`), `ScaleQuestion` (alias `rate`; int `min`,
   int `max`) and `ChoiceQuestion` (alias `choose`; children `options: Option[1..n]`); `Option`
   (string `label`; reference `skipTo: Question[0..1]`).
2. Editors, one per concept, so that a survey reads:

     survey Onboarding
     tags: hr, remote
       section Basics (3 questions)
         ask Your role? *
         rate Satisfaction? from 1 to 5
         choose Office days?
           - none
           - some -> skip to Your role
           - all

   Tags are separated by `, `; the intro is edited in the Inspector only; the count after a
   section title is computed and not editable; a question's keyword is the concept's alias, and
   keyword, text, `?` and the `*` marker are written once and shared by the three question
   editors; `*` shows only when the question is required; keywords are bold dark blue and `*` is
   red, both from one style sheet; options go one per line, indented; `-> skip to <question>`
   shows the target's text and appears only when a target is set; a section with no questions
   shows the hint `<add a question>` in place of the list, and the hint vanishes as soon as the
   user types a question keyword there.
3. Editing behaviour:
   a. On the hint or in an empty question slot, typing `ask`, `rate` or `choose` creates that
      question; so does picking it from Ctrl+Space. Ctrl+Space there also offers `yes/no`,
      described as "choice with Yes and No": a choice question with options `Yes` and `No`, the
      caret in its text.
   b. Ctrl+Space on the keyword of an existing question offers `toggle required`, which flips
      the `*`, and still offers the other question kinds; switching the kind keeps the text and
      the required flag.
   c. A new option is labelled `Option <n>`, n its 1-based position, however it is created:
      Enter after an option, or picking it from Ctrl+Space in a question's empty option list.
   d. With the caret right after a question's `?`, typing the keyword of any question kind (also
      of kinds a later extension of the language adds) inserts a new empty question of that kind
      right after it, caret in its text. Typing the whole keyword applies it; a prefix alone
      applies nothing, and completing it with Ctrl+Space does.
   e. Within one survey, copying an option and pasting it into a section's question list
      creates a choice question holding that option.
4. Solution `mcp.study.survey.tests`, `@tests` model `mcp.study.survey.tests@tests`, editor tests:
   `yes/no`; `toggle required` and `rate` both offered on an `ask` keyword; switching kind keeps
   text and `*`; numbering by Enter and by Ctrl+Space in an empty option list; the whole keyword after `?`; a prefix completed with Ctrl+Space;
   the paste. Each test must fail if its behaviour broke; a completion test checks what the menu
   offers before it types. Tests must run headless on CI, so they must not need IDE-only services (no CI build to set up). Create a run configuration and run it.
5. Done when: the language makes without errors, every test passes in one run, and
   `mps_mcp_check_root_node_problems` reports no errors on the language's and the test model.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
