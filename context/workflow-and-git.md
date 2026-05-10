# Workflow, Git and Style Rules

## Project Identity

- **Name:** .agentsOpencode- (template de configuración OpenCode)
- **Purpose:** Configuración personal de agentes para OpenCode - un template reusable para otros proyectos
- **Type:** Meta-configuration (no es una app web)

## Tech Stack

| Package                  | Role                                      |
| ------------------------ | ----------------------------------------- |
| `@opencode-ai/plugin`   | 1.4.3 | Core plugin para OpenCode |
| Skills (4 instalados)   | Ver `context/mcp-and-tooling.md` |

## Folder Structure

```
/
├── .githooks/
│   ├── commit-msg
│   ├── post-push.bat
│   └── run-pending.ps1
├── .opencode/
│   ├── agents-old/
│   │   └── subagent/
│   │       ├── git-agent.md
│   │       ├── context-updater.md
│   │       └── task-manager.md    ← New: handles TODO system
│   ├── skills/
│   └── core.md
├── context/
│   └── ...
└── TODO.md               ← Session scratch pad (ephemeral)
```

## Git Workflow

### Conventional Commits

Follow [conventional-commits](https://www.conventionalcommits.org/) format:

```
<type>(<scope>): <description>
```

Types permitted:
- `feat` - New feature
- `fix` - Bug fix
- `refactor` - Code restructuring
- `style` - Code style changes
- `test` - Test updates
- `docs` - Documentation changes
- `build` - Build-related changes
- `ops` - Operational changes
- `chore` - Maintenance tasks

Rules:
- Use imperative present tense ("add" not "added")
- Do not capitalize first letter
- Do not end with period
- Keep description concise (under 72 characters)

### Git Hooks

Git hooks are configured in `.githooks/` directory and enabled via `git config core.hooksPath .githooks`.

Current hooks:
- `commit-msg` - Validates conventional commits format
- `post-push.bat` - Windows hook (requires manual testing)

### Context Update Workflow

The context-updater subagent updates context files automatically when using the git-agent.

**Automatic (via agent):**
1. User asks agent to commit and push
2. git-agent executes commit and push
3. git-agent invokes context-updater
4. context-updater updates context files

**Manual (via bash):**
1. Make your changes and commit
2. Then run: `git push-context` (instead of `git push`)
3. This runs the pending script automatically

### Branch Strategy

- `main` - Production branch
- Feature branches: `feature/<description>` or `fix/<description>`

## AI Communication Style

- Be concise and direct
- No emojis unless explicitly requested
- Focus on the task at hand
- When unsure, ask before assuming

## Commands Available

| Command        | Description                           |
| -------------- | -------------------------------------- |
| `opencode`    | Run OpenCode agent                    |
| Standard git  | git add / commit / push / pull        |

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

## Pending / Known Issues

- No TypeScript/linting setup (not a code project)
- No automated tests
- Context files are up-to-date (see context/ folder)
- Use `git push-context` for bash pushes to auto-track pending updates
- Last context update: 2026-05-10