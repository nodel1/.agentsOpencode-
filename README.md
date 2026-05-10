# .agentsOpencode-

Personal OpenCode agent configuration template with 144+ specialized agents and 31 skills.

## Features

- **144+ VoltAgent agents** organized by category (10 categories)
- **31 skills** for web quality, React, deployment, and development patterns
- **5 custom subagents** for git, tasks, planning, docs, and build errors
- **Two-tier TODO system** for persistent and session tasks
- **Conventional commits** enforcement
- **Dynamic agent discovery** - auto-scans on activation

## Quick Start

```bash
# Clone as template
git clone https://github.com/nodel1/.agentsOpencode- your-project
cd your-project
```

## Project Structure

```
.opencode/
├── agents/             # 144+ VoltAgent agents (10 categories)
├── subagents/          # Custom: git-agent, task-manager, planner, build-error-resolver, doc-updater
├── skills/             # 31 skills installed
├── docs/               # Documentation system
│   ├── CODEMAPS/       # Architecture codemaps
│   └── GUIDES/         # Setup and usage guides
├── todo.md             # Persistent task board
└── agent-organizer.md  # Main orchestrator

context/                # Agent-only documentation
docs/                   # Human documentation
.githooks/              # Git hooks (commit-msg)
```

## Skills Available (31)

| Category | Count | Skills |
|----------|-------|--------|
| **Core** | 4 | agent-browser, conventional-commits, find-skills, rtk-token-optimizer |
| **Web Quality** | 4 | web-quality-audit, performance, core-web-vitals, best-practices |
| **Vercel** | 7 | vercel-react-best-practices, web-design-guidelines, vercel-react-native-skills, vercel-react-view-transitions, vercel-composition-patterns, deploy-to-vercel, vercel-cli-with-tokens |
| **Development** | 16 | git-workflow, codebase-onboarding, tdd-workflow, code-tour, api-design, docker-patterns, click-path-audit, deployment-patterns, deep-research, frontend-patterns, backend-patterns, nextjs-turbopack, django-patterns, laravel-patterns, nestjs-patterns, springboot-patterns, flutter-dart-code-review |

### Skills by Priority

**ALTA PRIORITY:**
| Skill | Purpose |
|-------|---------|
| git-workflow | Git strategies, branching, conflict resolution |
| codebase-onboarding | Dev onboarding guides |
| tdd-workflow | Test-driven development |
| code-tour | Interactive code tours |
| api-design | API design patterns |
| docker-patterns | Container workflows |

**MEDIA PRIORITY:**
| Skill | Purpose |
|-------|---------|
| click-path-audit | UI interaction bugs |
| deployment-patterns | Deployment strategies |
| deep-research | Research & analysis |
| frontend-patterns | Frontend architecture |
| backend-patterns | Backend architecture |

**FRAMEWORK-SPECIFIC:**
| Skill | Framework |
|-------|-----------|
| nextjs-turbopack | Next.js |
| django-patterns | Django |
| laravel-patterns | Laravel |
| nestjs-patterns | NestJS |
| springboot-patterns | Spring Boot |
| flutter-dart-code-review | Flutter |

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

## Skills Usage Examples

```bash
# Code quality
"audit my project with web-quality-audit"
"improve Core Web Vitals"

# Development
"help me set up TDD workflow"
"generate a code tour"
"create onboarding guide for new devs"

# Frameworks
"optimize my Next.js app with turbopack"
"review my Django patterns"

# Deployment
"deploy to Vercel"
"setup Docker for my project"
```

## Resources

| Source | Count | Links |
|--------|-------|-------|
| VoltAgent | 144 agents | [GitHub](https://github.com/VoltAgent/awesome-claude-code-subagents) |
| everything-claude-code | 55 agents + 200 skills | [GitHub](https://github.com/affaan-m/everything-claude-code) |
| Web Quality Skills | 4 skills | [GitHub](https://github.com/addyosmani/web-quality-skills) |
| Vercel Agent Skills | 7 skills | [GitHub](https://github.com/vercel-labs/agent-skills) |
| Skills.sh | Marketplace | [Website](https://skills.sh/) |

## License

MIT - See [LICENSE](LICENSE)