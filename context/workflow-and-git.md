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
│   │       └── git-agent.md
│   ├── skills/
│   │   ├── agent-browser/
│   │   ├── conventional-commits/
│   │   ├── find-skills/
│   │   └── rtk-token-optimizer/
│   ├── plugins.md
│   └── core.md (pendiente de crear)
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

No pre-commit hooks configured yet (lefthook not installed in this project).

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
- `core.md` not yet created (baseline configuration)