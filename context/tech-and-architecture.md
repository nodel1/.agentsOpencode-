# Tech and Architecture

## Project Identity

- **Name:** .agentsOpencode- (OpenCode agent configuration template)
- **Purpose:** Personal agent config, reusable template for other projects
- **Type:** Meta-configuration (not a web application)

## What This Project IS

- OpenCode agent configuration template
- Reusable base for future projects
- Example of agent and skill structuring

## What This Project is NOT

- No web application
- No database
- No APIs or Server Actions
- Just configuration files for agents

## Folder Structure

```
/
├── .githooks/              # Git hooks (commit-msg)
├── .opencode/
│   ├── agents/             # 144+ VoltAgent agents (by category)
│   ├── subagents/          # Custom subagents (git-agent, task-manager)
│   ├── skills/             # 17 skills installed
│   ├── todo.md             # Persistent task board
│   └── agent-organizer.md  # Main orchestrator
├── context/                # Context documentation (4 files)
└── TODO.md                 # Session scratch pad (ephemeral)
```

## Language and Tone

- **Code and comments:** English
- **AI communication:** Direct, concise, no emojis unless requested
- **Commit messages:** Conventional Commits format

## Protocol

When adding new technology, skill, or changing purpose:
1. Update relevant context file
2. Or use `context/index.md` for structure questions
3. After intense sessions, run: "Update our project context files"

## Last Updated

- 2026-05-10