# .agentsOpencode-

Personal OpenCode agent configuration template with 144+ specialized agents and 17 skills.

## Features

- **144+ VoltAgent agents** organized by category
- **17 skills** for web quality, React, and general development
- **5 custom subagents** for git, tasks, planning, docs, and build errors
- **Two-tier TODO system** for persistent and session tasks
- **Conventional commits** enforcement

## Quick Start

```bash
# Clone as template
git clone https://github.com/nodel1/.agentsOpencode- your-project
cd your-project
```

## Project Structure

```
.opencode/
├── agents/             # 144+ VoltAgent agents
├── subagents/          # Custom: git-agent, task-manager, planner, build-error-resolver, doc-updater
├── skills/             # 17 skills installed
├── docs/               # Documentation system
│   ├── CODEMAPS/       # Architecture codemaps
│   └── GUIDES/         # Setup and usage guides
├── todo.md             # Persistent task board
└── agent-organizer.md  # Main orchestrator

context/                # Agent-only documentation
docs/                   # Human documentation (generated from src/)
.githooks/              # Git hooks (commit-msg)
```

## Skills Available (17)

| Category | Skills |
|----------|--------|
| Core (4) | agent-browser, conventional-commits, find-skills, rtk-token-optimizer |
| Web Quality (6) | web-quality-audit, performance, core-web-vitals, accessibility, seo, best-practices |
| Vercel (7) | vercel-react-best-practices, web-design-guidelines, vercel-react-native-skills, vercel-react-view-transitions, vercel-composition-patterns, deploy-to-vercel, vercel-cli-with-tokens |

## Custom Subagents (5)

| Subagent | Purpose | Trigger |
|----------|---------|---------|
| git-agent | Git operations + context updates | "commit", "push" |
| task-manager | TODO system management | "add task", "show tasks" |
| planner | Complex feature planning | "plan feature", "architecture" |
| build-error-resolver | Build/type error fixes | "build failed", "fix errors" |
| doc-updater | Documentation & codemaps | "update docs", "generate codemap" |

*3 subagents from [affaan-m/everything-claude-code](https://github.com/affaan-m/everything-claude-code)*

## Usage

```bash
# Git operations
"commit and push my changes"

# Task management
"add a task: Test the system"
"show my tasks"
"mark task as complete"

# Planning
"plan a new feature: User authentication"

# Build errors
"fix the build errors"

# Documentation
"update docs" or "generate codemap"
```

## Resources

- [VoltAgent - 144 Claude Code Subagents](https://github.com/VoltAgent/awesome-claude-code-subagents)
- [everything-claude-code - affaan-m](https://github.com/affaan-m/everything-claude-code)
- [Web Quality Skills - Addy Osmani](https://github.com/addyosmani/web-quality-skills)
- [Vercel Agent Skills](https://github.com/vercel-labs/agent-skills)
- [Skills.sh - Skills Marketplace](https://skills.sh/)

## License

MIT - See [LICENSE](LICENSE)