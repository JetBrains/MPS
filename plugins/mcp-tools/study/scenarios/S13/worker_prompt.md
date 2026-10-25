You are working in the current folder, which contains a JetBrains MPS project with the robot
language `jetbrains.mps.samples.Kaja` (scripts for a robot that steps, turns, picks and drops
marks, with `if`, `while`, `repeat` and routines) and the solution `jetbrains.mps.samples.Kaja.sandbox`
with model `Kaja.sandbox.sandbox`. The language reports "Unreachable command" errors from its
dataflow aspect. MPS is running with the MCP server enabled and this project open. Follow
CLAUDE.md and the MPS skills.

Task: the reachability check is wrong in two ways. Fix the language's dataflow builders.

1. In script `Reachability`, the `step` in the `else` branch is reported as unreachable, and so are
   commands in the `else` branches of routines in `Dog`, `MarkSniffer`, `Maze` and library `Common`.
   They can all run.
2. In script `Reachability`, the `drop` inside `repeat 0 times` can never run, but it is not reported.
3. Change only the dataflow aspect of `jetbrains.mps.samples.Kaja`, then rebuild the language.

Done when: the language builds; in `Reachability` the `drop` is reported as an unreachable command
and `turnLeft`, `step` and `pick` are not; and no other script or library in the sandbox model has an
"Unreachable command" error.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
