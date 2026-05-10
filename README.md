# .agentsOpencode-

Personal OpenCode agent configuration template with 144+ specialized agents and 17 skills.

## Features

- **144+ VoltAgent agents** organized by category
- **17 skills** for web quality, React, and general development
- **Custom subagents** for git operations and task management
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
├── subagents/          # Custom: git-agent, task-manager
├── skills/             # 17 skills installed
├── todo.md             # Persistent task board
└── agent-organizer.md  # Main orchestrator

context/                # Context documentation
.githooks/              # Git hooks (commit-msg)
```

## Skills Available (17)

| Category | Skills |
|----------|--------|
| Core (4) | agent-browser, conventional-commits, find-skills, rtk-token-optimizer |
| Web Quality (6) | web-quality-audit, performance, core-web-vitals, accessibility, seo, best-practices |
| Vercel (7) | vercel-react-best-practices, web-design-guidelines, vercel-react-native-skills, vercel-react-view-transitions, vercel-composition-patterns, deploy-to-vercel, vercel-cli-with-tokens |

## Usage

```bash
# Git operations
"commit and push my changes"

# Task management
"add a task: Test the system"
"show my tasks"
"mark task as complete"

# Skills (auto-activate)
"optimize for SEO"
"review my UI"
"deploy to Vercel"
```

## Resources

- [VoltAgent - 144 Claude Code Subagents](https://github.com/VoltAgent/awesome-claude-code-subagents)
- [Web Quality Skills - Addy Osmani](https://github.com/addyosmani/web-quality-skills)
- [Vercel Agent Skills](https://github.com/vercel-labs/agent-skills)
- [Skills.sh - Skills Marketplace](https://skills.sh/)

## License

MIT