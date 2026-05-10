# Agents Configuration

## Overview

This project uses:
- `.opencode/agents/` - 144+ VoltAgent agents (main, organized by category)
- `.opencode/subagents/` - Custom OpenCode subagents (git-agent, task-manager)

## Subagents (Custom OpenCode)

### git-agent

**Type:** Subagent  
**Skill:** conventional-commits  
**File:** `.opencode/subagents/git-agent.md`

**Purpose:** Handle all git operations with conventional commits enforcement

**Trigger:** User asks to commit, push, or any git operation

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

### task-manager

**Type:** Subagent  
**Skill:** conventional-commits  
**File:** `.opencode/subagents/task-manager.md`

**Purpose:** Manage the two-tier TODO task tracking system

**Trigger:** User asks to add/complete/list tasks, or session ends

**Responsibilities:**
- Add new tasks to persistent or session boards
- List current tasks by priority/status
- Mark tasks as in-progress or completed
- Review proposed agent tasks
- Clean up at session end

**TODO System:**
| File | Scope |
|------|-------|
| `.opencode/todo.md` | Persistent across sessions |
| `TODO.md` | Session-only (ephemeral) |

**Agent Workflow:**
1. Agent identifies work → writes `[PROPOSED]` to persistent TODO
2. User reviews → converts to `[ ]` or deletes
3. Agent works → marks `[x]` when done

## VoltAgent Orchestrator (Main)

### agent-organizer

**Type:** Meta-orchestration  
**File:** `.opencode/agents/09-meta-orchestration/agent-organizer.md`

**Purpose:** Main orchestrator that discovers and routes to appropriate agents

**Features:**
- Dynamic agent discovery (scans folders on activation)
- Keyword-based routing
- Context-aware orchestration

## How to Use

### Invoking Subagents

The core OpenCode agent invokes subagents automatically based on triggers:

| Subagent | Trigger |
|----------|---------|
| git-agent | "commit", "push", "git operation" |
| task-manager | "add task", "show tasks", "complete task" |

### Agent Communication

- Subagents operate autonomously once invoked
- Return results to the user via core agent
- Report errors with actionable feedback

## Adding New Subagents

To add a new subagent:

1. Create `.opencode/subagents/<name>.md`
2. Define:
   - Frontmatter (description, mode, skill)
   - Core responsibilities
   - Workflow
   - Error handling
3. Add entry to this file

## Pending / Known Issues

- git-agent and task-manager defined in `.opencode/subagents/`
- Using VoltAgent agent-organizer as main orchestrator