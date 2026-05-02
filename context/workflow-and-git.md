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
├── .opencode/
│   ├── agents/
│   │   └── subagent/
│   │       ├── git-agent.md
│   │       └── context-updater.md
│   ├── skills/
│   │   ├── agent-browser/
│   │   ├── conventional-commits/
│   │   ├── find-skills/
│   │   └── rtk-token-optimizer/
│   ├── plugins.md
│   └── core.md
├── context/
│   ├── workflow-and-git.md
│   ├── tech-and-architecture.md
│   ├── api-and-data.md
│   ├── mcp-and-tooling.md
│   ├── agents.md
│   └── plugins.md
└── README.md
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
1. Make your changes and push with `git push`
2. Then run: `.githooks\run-pending.ps1` or `powershell -File .githooks\run-pending.ps1`
3. Or ask: "Update our context files based on the changes we just made"

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

## Pending / Known Issues

- No TypeScript/linting setup (not a code project)
- No automated tests
- Context files are up-to-date (see context/ folder)
- Context-updater runs only through git-agent, not direct bash push