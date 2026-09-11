# Root Cause Analysis Template

Present to the user:

```
## Root Cause Analysis — <issue ID>

### Problem Summary
<1–2 sentence description of what goes wrong and why>

### Code Path
<Numbered list of the key steps, with file:line references>

### Root Cause
<What exactly causes the failure — a missing null check, wrong assumption,
 API misuse, race condition, platform behaviour change, etc.>

### Platform Involvement
<Is a platform API behaving unexpectedly? A platform change relevant? Or is
 it entirely within MPS code?>

### Affected Versions
<Which versions are likely affected and why>
```
