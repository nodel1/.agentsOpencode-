# Agents Configuration

## Overview

This project defines custom agents and subagents to extend OpenCode's capabilities.

## Agents Defined

### git-agent

**Type:** Subagent  
**Skill:** conventional-commits  
**File:** `.opencode/agents/subagent/git-agent.md`

**Purpose:** Handle all git operations with conventional commits enforcement

**Responsibilities:**
- Execute git operations (add, commit, push, pull, branch, merge)
- Validate commit messages against conventional commits format
- Ensure proper git hygiene before operations
- Report git status and branch information

**Workflow:**
1. Load conventional-commits skill
2. Check git status
3. Stage relevant files
4. Validate commit message using conventional format
5. Execute git commit
6. Validate before push

**Error Handling:**
- Report violations with specific feedback
- Provide corrected examples
- Wait for user confirmation

### context-updater

**Type:** Subagent  
**Skill:** conventional-commits  
**File:** `.opencode/agents/subagent/context-updater.md`

**Purpose:** Automatically update context files after git push operations

**Responsibilities:**
- Detect what files changed since last commit
- Map changes to relevant context files
- Update only the context files that need changes
- Report what was updated

**Workflow:**
1. Detect changes via `git diff --name-only HEAD~1..HEAD`
2. Analyze changes and map to context files
3. Update relevant context files
4. Report changes

**Trigger:** Automatically invoked by git-agent after successful push

**Error Handling:**
- Log error but do not block main operation
- Report that context update failed
- Continue with normal flow

## How to Use

### Invoking git-agent

When the user asks to:
- Make a commit
- Push changes
- Any git operation

The core agent will invoke git-agent automatically.

### Agent Communication

- git-agent operates autonomously once invoked
- Returns results to the user via core agent
- Reports errors with actionable feedback

## Adding New Agents

To add a new agent/subagent:

1. Create `.opencode/agents/<type>/<name>.md`
2. Define:
   - Frontmatter (description, mode, skill)
   - Core responsibilities
   - Workflow
   - Error handling
3. Register in skill if needed

For reference, see:
- `.opencode/agents/subagent/git-agent.md`

## Pending / Known Issues

- git-agent and context-updater defined
- More agents  could be added as project expands 




