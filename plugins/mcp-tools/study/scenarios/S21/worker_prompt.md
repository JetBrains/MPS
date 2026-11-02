You are working in the current folder, which contains an empty JetBrains MPS project. MPS is
running with the MCP server enabled and this project open. Follow CLAUDE.md and the MPS skills.

Task: a small DSL for shell commands and a generator that emits a fluent Java API per shell.

1. Language `mcp.study.shell` with a generator. Concepts: root `Shell` (name; children
   `builtins: Command[1..n]`); root `Extension` (name; reference `shell: Shell`; children
   `commands: Command[1..n]`); `Command` (name; boolean `hidden`; children `args: Arg[0..n]`);
   `Arg` (name; `kind: ArgKind`, enum TEXT, NUMBER). Minimal editors.
2. Solution `mcp.study.shelldemo`, model `mcp.study.shelldemo.shells`: Shell `Dev` (builtins:
   `help` with arg `topic` TEXT; `quit` with no args); Extension `git` (shell Dev; commands:
   `commit` with arg `message` TEXT; `status` with no args); Extension `docker` (shell Dev;
   commands: `status` with arg `service` TEXT; `scale` with args `service` TEXT and `replicas`
   NUMBER; `prune`, hidden, no args).
3. Generator, package `mcp.study.shell.out`. Every Shell becomes `public class <Name>Shell` with:
   a. `private final java.util.List<String> log = new java.util.ArrayList<String>();`
   b. for every command two methods that come from ONE template declaration taking two string
      parameters, `source` and `name`:
      - `public <Name>Shell <m>(<params>) { log.add("<source>:<command name>"); log.add(
        String.valueOf(<param>)); ... return this; }` with one `String`/`int` parameter per arg
        (TEXT → `String`, NUMBER → `int`: the parameter type is the arg copied with `$COPY_SRC$`
        and reduced by one rule on Arg whose in-line switch has a NUMBER case and `String` as
        its default) and one `log.add(String.valueOf(<param>))` line per arg, in order;
      - `public String[] <m>Args(<params>) { return new String[]{String.valueOf(<param>), ...}; }`
        with the same parameters.
      Inside each method the parameter references must be resolved through a mapping label
      written on the parameter's loop; both methods register their parameters under the same
      label, so the reference must pick the parameter of its own method.
      `<m>` is the `name` argument. The shell's own commands pass the command name. Woven
      commands pass a name the generator makes unique within the shell class (two extensions
      may both define `status`; never number names by hand).
   c. The shell's own commands are produced inside the class template by a `$LOOP$` over the
      commands that calls that template (`$CALL$`) with `"core"` and the command name. Commands
      of every Extension that references the shell are woven into the class by one weaving rule
      on Extension whose weave template loops over the extension's non-hidden commands and calls
      the same template (`$CALL$`) with the extension's name and the unique name; the rule finds the shell class
      through a mapping label on the rule that maps the Shell. Woven methods go after `log` and
      before the shell's own methods. Locate that position through one mapping label set on both template
      fragments (keyed by the command), not by a member name or position.
   d. `public String[] commands() { return new String[]{"help", "quit"}; }` listing the shell's
      own command names, and `public String usage() { return "help topic; quit"; }` — the
      commands joined by `"; "`, each followed by its arg names separated by spaces; the list of
      own commands is computed once in the template by one `$VAR$` and used by both methods. When the shell
      has no command with arguments, `usage()` instead returns `"no arguments"` — one `$IF$` with
      an alternative.
   e. A hidden command produces no methods and reports the generator warning
      "hidden command <name> skipped in <shell>".
4. Make the language and the solution.
5. Done when: both modules make without errors, the generated Java compiles, `DevShell.java` has
   the members above (own methods `help`, `helpArgs`, `quit`, `quitArgs`; woven `commit…`,
   `status…` twice with distinct names, `scale…`; nothing for `prune`), the warning for `prune`
   was reported by the make, and `mps_mcp_check_root_node_problems` reports no errors on the
   generator's template model.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
