# Windows examples

Replace `PROJECT` with the absolute project directory. Replace `PID` with the running `jetbrains.mps.Launcher` pid.

`mps.bat` uses `start "" java …`, so its own exit code is **not** the JVM's. Prefer `mps64.exe` for standalone, and a foreground `java.exe` reconstruct for from-sources.

## From sources — activate a running instance

cmd:

```bat
set PROJECT=C:\work\MPS\myMPS-fix
wmic process where "CommandLine like '%%jetbrains.mps.Launcher%%'" get ProcessId,ExecutablePath,CommandLine
```

PowerShell (safer quoting than cmd):

```powershell
$project = "C:\work\MPS\myMPS-fix"
$p = Get-CimInstance Win32_Process |
  Where-Object { $_.CommandLine -match "jetbrains.mps.Launcher" -and $_.Name -match "java" } |
  Select-Object -First 1
$pid = $p.ProcessId
$java = $p.ExecutablePath
$jcmd = Join-Path (Split-Path $java) "jcmd.exe"
& $jcmd $pid VM.command_line | Set-Content -Encoding utf8 $env:TEMP\mps-jcmd.txt
```

Reconstruct and launch (PowerShell). Rejoin tokens that do not start with `-` (paths like `C:\Program Files\…` and `IntelliJ IDEA.app` analogues). Strip jdwp and `idea_rt.jar` when activating:

```powershell
$project = "C:\work\MPS\myMPS-fix"
$text = Get-Content -Raw $env:TEMP\mps-jcmd.txt

function Get-Field([string]$name, [string[]]$ends) {
  $key = "${name}: "
  $i = $text.IndexOf($key)
  $rest = $text.Substring($i + $key.Length)
  foreach ($e in $ends) {
    $j = $rest.IndexOf($e)
    if ($j -ge 0) { $rest = $rest.Substring(0, $j) }
  }
  return $rest.Trim()
}

$jvmArgs = Get-Field "jvm_args" @("`njava_command:")
$classpath = Get-Field "java_class_path (initial)" @("`nLauncher Type:")
$javaCommand = Get-Field "java_command" @("`njava_class_path", "`nLauncher Type:")

$raw = $jvmArgs.Split(" ", [System.StringSplitOptions]::RemoveEmptyEntries)
$tokens = New-Object System.Collections.Generic.List[string]
foreach ($t in $raw) {
  if ($t.StartsWith("-") -or $tokens.Count -eq 0) { $tokens.Add($t) }
  else { $tokens[$tokens.Count - 1] = $tokens[$tokens.Count - 1] + " " + $t }
}
$filtered = $tokens | Where-Object {
  -not $_.StartsWith("-agentlib:jdwp") -and -not ($_ -like "-javaagent:*idea_rt.jar*")
}

$cmd = @($java) + $filtered + @("-classpath", $classpath, $javaCommand, $project)
$cwd = Join-Path $project "bin"
$proc = Start-Process -FilePath $cmd[0] -ArgumentList $cmd[1..($cmd.Length-1)] `
  -WorkingDirectory $cwd -Wait -PassThru -NoNewWindow
Write-Host "exit" $proc.ExitCode
```

Expect exit `0` in a few seconds. Then call `mps_mcp_list_open_projects` with `projectPath` = `PROJECT`.

cmd one-liner after you already have a reconstructed arg file is not recommended; use PowerShell or a small Python script with the same join/strip rules as the macOS example.

Cold start: IDEA run configuration `MPS` with Program arguments = `%PROJECT%`, working directory `%PROJECT%\bin`.

## Standalone — activate or start

cmd:

```bat
set PROJECT=C:\work\myProject
set MPS_HOME=C:\Program Files\JetBrains\MPS 2024.3
"%MPS_HOME%\bin\mps64.exe" "%PROJECT%"
```

If only the script is on PATH:

```bat
"%MPS_HOME%\bin\mps.bat" "%PROJECT%"
```

`mps.bat` launches `java` asynchronously (`start ""`), so the bat returns immediately even when it starts a **new** IDE. After it returns, check Task Manager / `wmic` for a second `java.exe` with a different `idea.paths.selector`. Prefer `mps64.exe`.

PowerShell:

```powershell
$project = "C:\work\myProject"
$mps = "C:\Program Files\JetBrains\MPS 2024.3\bin\mps64.exe"
& $mps $project
```

Toolbox installs live under `%LOCALAPPDATA%\JetBrains\Toolbox\apps\MPS\…`. Use the exact `mps64.exe` from the running process.

## Sanity checks

cmd:

```bat
wmic process where ProcessId=%PID% get CommandLine | find "idea.paths.selector"
```

PowerShell:

```powershell
(Get-CimInstance Win32_Process -Filter "ProcessId=$pid").CommandLine
# from sources:  -Didea.paths.selector=MPSSRC2026.1
# standalone:    -Didea.paths.selector=MPS2024.3
```
