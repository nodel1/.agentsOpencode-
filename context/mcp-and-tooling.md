# Skills and Tools

## Skills Installed

| Skill | Purpose |
|-------|---------|
| `agent-browser` | Browser automation for AI agents |
| `conventional-commits` | Enforce git commit message standards |
| `find-skills` | Discover and install new skills |
| `rtk-token-optimizer` | Reduce LLM token consumption by 60-90% |

## How Skills Work

### rtk-token-optimizer
CLI proxy that wraps shell commands to reduce token usage:
- **Always prefix commands with `rtk`**
- Works with: git, npm, cargo, docker, pnpm, pytest, jest, vitest, etc.
- Savings: 60-90% token reduction on common operations

### agent-browser
Browser automation for web interaction:
- Navigate pages, fill forms, click buttons, take screenshots
- Extract data, test web apps, automate Electron apps
- Triggered by: "open a website", "fill out a form", "scrape data"

### conventional-commits
Auto-loaded for git operations. Enforces format:
```
<type>(<scope>): <description
```
Types: feat, fix, refactor, style, test, docs, build, ops, chore

### find-skills
Triggered when user asks: "how do I do X", "find a skill for X"

## OpenCode Plugin

- **Plugin:** `@opencode-ai/plugin` v1.4.3
- **Purpose:** Core plugin providing AI agent capabilities

## Commands Available

| Command | Description |
|---------|-------------|
| `opencode` | Run OpenCode agent |
| `rtk <cmd>` | Token-optimized shell command |
| `git push-context` | Git push with pending tracking (Windows) |

## Optimization Strategies

1. Use `rtk` prefix for all shell commands
2. Keep context files updated and concise
3. Leverage existing skills before adding new ones

## Git Hooks

Hooks in `.githooks/` directory:
- `commit-msg` - Validates conventional commits format
- `post-push.bat` - Windows post-push hook

Enabled via: `git config core.hooksPath .githooks`