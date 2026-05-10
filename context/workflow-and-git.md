# Workflow, Git and Style Rules

## Project Identity

- **Name:** .agentsOpencode- (template de configuración OpenCode)
- **Purpose:** Configuración personal de agentes para OpenCode - un template reusable para otros proyectos
- **Type:** Meta-configuration (no es una app web)

## Tech Stack

| Package | Role |
| ------- | ---- |
| `@opencode-ai/plugin` | v1.4.3 - Core plugin para OpenCode |
| Skills (4 installed) | Ver `context/mcp-and-tooling.md` |

## Folder Structure

```
/
├── .githooks/
│   └── commit-msg              # Validates conventional commits
├── .opencode/
│   ├── agents/                # 144+ VoltAgent agents (by category)
│   ├── subagents/
│   │   ├── git-agent.md       # Git operations + context updates
│   │   └── task-manager.md    # TODO system management
│   ├── skills/                # 4 skills installed
│   ├── todo.md                # Persistent task board
│   └── agent-organizer.md     # Main orchestrator
├── context/                   # 5 context documentation files
└── TODO.md                    # Session scratch pad (ephemeral)
```

## Git Workflow

### Conventional Commits

Follow [conventional-commits](https://www.conventionalcommits.org/) format:

```
<type>(<scope>): <description
```

**Types permitted:**
- `feat` - New feature
- `fix` - Bug fix
- `refactor` - Code restructuring
- `style` - Code style changes
- `test` - Test updates
- `docs` - Documentation changes
- `build` - Build-related changes
- `ops` - Operational changes
- `chore` - Maintenance tasks
- `ci` - CI/CD configuration
- `perf` - Performance improvements
- `revert` - Reverting changes

**Rules:**
- Use imperative present tense ("add" not "added")
- Do not capitalize first letter
- Do not end with period
- Keep description concise (under 72 characters)

### Git Hooks

Only one hook active:
- `.githooks/commit-msg` - Validates conventional commits format

Enabled via: `git config core.hooksPath .githooks`

### Context Auto-Update

After successful push, git-agent automatically updates context files:

1. User asks agent to commit and push
2. git-agent validates message and executes commit
3. git-agent detects changed files
4. git-agent updates relevant context files
5. Report what was updated

**No manual steps needed** when using opencode agent for commits.

## Branch Strategy

- `main` - Production branch
- Feature branches: `feature/<description>` or `fix/<description>`

## AI Communication Style

- Be concise and direct
- No emojis unless explicitly requested
- Focus on the task at hand
- When unsure, ask before assuming

## Commands Available

| Command | Description |
|---------|-------------|
| `opencode` | Run OpenCode agent |
| `rtk <cmd>` | Token-optimized shell command |
| Standard git | git add / commit / push / pull |

## TODO System

Two-tier task tracking:

| File | Scope | Location |
|------|-------|----------|
| `.opencode/todo.md` | Persistent across sessions | `.opencode/` |
| `TODO.md` | Session-only, ephemeral | Root |

**`.opencode/todo.md` - Project Task Board:**
- Persists across sessions (project-wide)
- Agents can propose tasks with `[PROPOSED]` tag
- User reviews and converts to `[ ]` or deletes
- Mark completed tasks with `[x]`

**`TODO.md` - Session Scratch Pad:**
- Temporary notes for current session
- Cleared at end of session
- For quick brainstorms, temporary reminders

**Agent Workflow:**
1. Agent identifies work → writes `[PROPOSED] Task: description`
2. User reviews → converts to `[ ]` or deletes
3. Agent works → marks `[x]` when done

## Last Updated

- 2026-05-10