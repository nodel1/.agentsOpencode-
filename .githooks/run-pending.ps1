# post-push manual script
# Run this after `git push` to record changes for context-updater

$ErrorActionPreference = "Stop"

$z40 = "0000000000000000000000000000000000000000"
$PENDING_FILE = "context/pending-updates.md"

# Create context folder if needed
if (!(Test-Path "context")) {
    New-Item -ItemType Directory -Path "context" -Force | Out-Null
}

# Get last commit changes
$changedFiles = git diff --name-only HEAD~1..HEAD 2>$null
if (!$changedFiles) {
    $changedFiles = "no files"
}

# Get timestamp
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm"

# Create header if file doesn't exist
if (!(Test-Path $PENDING_FILE)) {
    @"
# Pending Context Updates

_Note: Managed by git hooks. Run 'opencode' to process._
"@ | Out-File -FilePath $PENDING_FILE -Encoding UTF8
}

# Build the new entry
$entry = @"

## Push [$timestamp]
**Status:** pending_agent_review
**Changed files:**
$changedFiles
---
"@

# Append to accumulate
Add-Content -Path $PENDING_FILE -Value $entry

Write-Host "Context changes recorded in $PENDING_FILE" -ForegroundColor Green
Write-Host "Run 'opencode' and ask to update context files when ready." -ForegroundColor Yellow