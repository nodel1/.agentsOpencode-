# Skills and Tools

## Skills Installed

| Skill | Purpose |
|-------|---------|
| `agent-browser` | Browser automation for AI agents |
| `conventional-commits` | Enforce git commit message standards |
| `find-skills` | Discover and install new skills |
| `rtk-token-optimizer` | Reduce LLM token consumption by 60-90% |

### Web Quality Skills (addyosmani/web-quality-skills)

| Skill | Purpose | Use when |
|-------|---------|----------|
| `web-quality-audit` | Comprehensive quality review | "Audit my site", "Quality review" |
| `performance` | Loading speed optimization | "Optimize performance", "Speed up" |
| `core-web-vitals` | LCP, INP, CLS optimizations | "Improve Core Web Vitals", "Fix LCP" |
| `accessibility` | WCAG compliance, a11y | "Improve accessibility", "WCAG audit" |
| `seo` | Search engine optimization | "Optimize for SEO", "Meta tags" |
| `best-practices` | Security, modern APIs | "Apply best practices", "Security audit" |

### Vercel Agent Skills (vercel-labs/agent-skills)

| Skill | Purpose | Use when |
|-------|---------|----------|
| `vercel-react-best-practices` | React/Next.js optimization | "Optimize React", "Performance review" |
| `web-design-guidelines` | UI audit, 100+ rules | "Review UI", "Check accessibility" |
| `vercel-react-native-skills` | React Native best practices | "Build React Native", "Mobile optimization" |
| `vercel-react-view-transitions` | View Transition API | "Add page transitions", "Animate views" |
| `vercel-composition-patterns` | React composition | "Refactor components", "Clean API" |
| `deploy-to-vercel` | Deploy to Vercel | "Deploy my app", "Push live" |

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
Types: feat, fix, refactor, style, test, docs, build, ops, chore, ci, perf, revert

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