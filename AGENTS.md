# Agents Configuration

## Overview

This project uses:
- `.opencode/agents/` - 144+ VoltAgent agents (main, organized by 10 categories)
- `.opencode/subagents/` - 5 Custom OpenCode subagents
- `.opencode/skills/` - 31 skills installed

## Skill Sources

| Source | Count | Skills |
|--------|-------|--------|
| [affaan-m/everything-claude-code](https://github.com/affaan-m/everything-claude-code) | 16 | git-workflow, codebase-onboarding, tdd-workflow, code-tour, api-design, docker-patterns, click-path-audit, deployment-patterns, deep-research, frontend-patterns, backend-patterns, nextjs-turbopack, django-patterns, laravel-patterns, nestjs-patterns, springboot-patterns, flutter-dart-code-review |
| [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills) | 7 | vercel-react-best-practices, web-design-guidelines, vercel-react-native-skills, vercel-react-view-transitions, vercel-composition-patterns, deploy-to-vercel, vercel-cli-with-tokens |
| [addyosmani/web-quality-skills](https://github.com/addyosmani/web-quality-skills) | 4 | web-quality-audit, performance, core-web-vitals, best-practices |
| [vercel-labs/agent-browser](https://github.com/vercel-labs/agent-browser) | 1 | agent-browser |
| [rtk-ai/rtk](https://github.com/rtk-ai/rtk) | 1 | rtk-token-optimizer |
| [skills.sh](https://skills.sh/) | 2 | find-skills, conventional-commits |

## Custom Subagents

### git-agent

**Type:** Subagent  
**Skill:** conventional-commits  
**File:** `.opencode/subagents/git-agent.md`

**Purpose:** Handle all git operations with conventional commits enforcement

**Trigger:** User asks to commit, push, or any git operation

**Responsibilities:**
- Execute git operations (add, commit, push, pull, branch, merge)
- Validate commit messages against conventional commits format
- Ensure proper git hygiene before operations
- Report git status and branch information
- Auto-update context files after push

**Workflow:**
1. Load conventional-commits skill
2. Check git status
3. Stage relevant files
4. Validate commit message using conventional format
5. Execute git commit
6. Validate before push
7. Detect changed files and update context

**Error Handling:**
- Report violations with specific feedback
- Provide corrected examples
- Wait for user confirmation

### planner

**Type:** Subagent  
**Source:** [affaan-m/everything-claude-code](https://github.com/affaan-m/everything-claude-code)  
**File:** `.opencode/subagents/planner.md`

**Purpose:** Expert planning specialist for complex features and refactoring

**Trigger:** User asks to plan feature, implement architecture, or complex refactoring

**Responsibilities:**
- Analyze requirements and create detailed implementation plans
- Break down complex features into manageable steps
- Identify dependencies and potential risks
- Suggest optimal implementation order

### build-error-resolver

**Type:** Subagent  
**Source:** [affaan-m/everything-claude-code](https://github.com/affaan-m/everything-claude-code)  
**File:** `.opencode/subagents/build-error-resolver.md`

**Purpose:** Build and TypeScript error resolution with minimal changes

**Trigger:** Build fails or type errors occur

**Responsibilities:**
- Fix TypeScript errors with minimal diffs
- Resolve build compilation failures
- Fix dependency and configuration issues
- No architecture changes - only error fixes

### doc-updater

**Type:** Subagent  
**Source:** [affaan-m/everything-claude-code](https://github.com/affaan-m/everything-claude-code)  
**File:** `.opencode/subagents/doc-updater.md`

**Purpose:** Documentation and codemap generation

**Trigger:** User asks to update docs, generate codemaps, or refresh documentation

**Responsibilities:**
- Generate architectural codemaps
- Update READMEs and guides from code
- Track dependencies across modules
- Keep docs in sync with codebase

### task-manager

**Type:** Subagent  
**Skill:** conventional-commits  
**File:** `.opencode/subagents/task-manager.md`

**Purpose:** Manage the two-tier TODO task tracking system

**Trigger:** User asks to add/complete/list tasks, or session ends

**Responsibilities:**
- Add new tasks to persistent or session boards
- List current tasks by priority/status
- Mark tasks as in-progress or completed
- Review proposed agent tasks
- Clean up at session end

**TODO System:**
| File | Scope |
|------|-------|
| `.opencode/todo.md` | Persistent across sessions |
| `TODO.md` | Session-only (ephemeral) |

**Agent Workflow:**
1. Agent identifies work → writes `[PROPOSED]` to persistent TODO
2. User reviews → converts to `[ ]` or deletes
3. Agent works → marks `[x]` when done

## VoltAgent Orchestrator (Main)

### agent-organizer

**Type:** Meta-orchestration  
**File:** `.opencode/agents/09-meta-orchestration/agent-organizer.md`

**Purpose:** Main orchestrator that discovers and routes to appropriate agents

**Features:**
- Dynamic agent discovery (scans folders on activation)
- Keyword-based routing
- Context-aware orchestration

## How to Use

### Invoking Subagents

The core OpenCode agent invokes subagents automatically based on triggers:

| Subagent | Trigger |
|----------|---------|
| git-agent | "commit", "push", "git operation" |
| task-manager | "add task", "show tasks", "complete task" |
| planner | "plan feature", "implement architecture", "complex refactoring" |
| build-error-resolver | "build failed", "type error", "fix errors" |
| doc-updater | "update docs", "generate codemap", "refresh documentation" |

### Agent Communication

- Subagents operate autonomously once invoked
- Return results to the user via core agent
- Report errors with actionable feedback

## Adding New Subagents

To add a new subagent:

1. Create `.opencode/subagents/<name>.md`
2. Define:
   - Frontmatter (description, mode, skill)
   - Core responsibilities
   - Workflow
   - Error handling
3. Add entry to this file

## Adding New Skills

```bash
# Install from skills.sh
npx skills add <owner/repo>

# Example
npx skills add addyosmani/web-quality-skills
```

After installation:
1. Update `context/mcp-and-tooling.md` with the new skill
2. Document source in `resources-used.txt`
3. Move skill folder if needed (skills go in `.opencode/skills/`)

## Skills Available (31)

| Skill | Source | Purpose |
|-------|--------|---------|
| agent-browser | [vercel-labs](https://github.com/vercel-labs/agent-browser) | Browser automation |
| api-design | [affaan-m](https://github.com/affaan-m/everything-claude-code) | API design patterns |
| backend-patterns | [affaan-m](https://github.com/affaan-m/everything-claude-code) | Backend architecture |
| best-practices | [addyosmani](https://github.com/addyosmani/web-quality-skills) | Security, APIs |
| click-path-audit | [affaan-m](https://github.com/affaan-m/everything-claude-code) | UI interaction bugs |
| codebase-onboarding | [affaan-m](https://github.com/affaan-m/everything-claude-code) | Dev onboarding guides |
| code-tour | [affaan-m](https://github.com/affaan-m/everything-claude-code) | Interactive code tours |
| conventional-commits | [skills.sh](https://skills.sh/) | Git commit standards |
| core-web-vitals | [addyosmani](https://github.com/addyosmani/web-quality-skills) | LCP, INP, CLS |
| deep-research | [affaan-m](https://github.com/affaan-m/everything-claude-code) | Research & analysis |
| deployment-patterns | [affaan-m](https://github.com/affaan-m/everything-claude-code) | Deployment strategies |
| deploy-to-vercel | [vercel-labs](https://github.com/vercel-labs/agent-skills) | Vercel deployment |
| django-patterns | [affaan-m](https://github.com/affaan-m/everything-claude-code) | Django architecture |
| docker-patterns | [affaan-m](https://github.com/affaan-m/everything-claude-code) | Container workflows |
| find-skills | [skills.sh](https://skills.sh/) | Discover skills |
| flutter-dart-code-review | [affaan-m](https://github.com/affaan-m/everything-claude-code) | Flutter review |
| frontend-patterns | [affaan-m](https://github.com/affaan-m/everything-claude-code) | Frontend architecture |
| git-workflow | [affaan-m](https://github.com/affaan-m/everything-claude-code) | Git strategies |
| laravel-patterns | [affaan-m](https://github.com/affaan-m/everything-claude-code) | Laravel architecture |
| nestjs-patterns | [affaan-m](https://github.com/affaan-m/everything-claude-code) | NestJS patterns |
| nextjs-turbopack | [affaan-m](https://github.com/affaan-m/everything-claude-code) | Next.js optimization |
| performance | [addyosmani](https://github.com/addyosmani/web-quality-skills) | Speed optimization |
| rtk-token-optimizer | [rtk-ai](https://github.com/rtk-ai/rtk) | Token optimization |
| springboot-patterns | [affaan-m](https://github.com/affaan-m/everything-claude-code) | Spring Boot patterns |
| tdd-workflow | [affaan-m](https://github.com/affaan-m/everything-claude-code) | TDD methodology |
| vercel-cli-with-tokens | [vercel-labs](https://github.com/vercel-labs/agent-skills) | Vercel CLI |
| vercel-composition-patterns | [vercel-labs](https://github.com/vercel-labs/agent-skills) | React patterns |
| vercel-react-best-practices | [vercel-labs](https://github.com/vercel-labs/agent-skills) | React/Next.js |
| vercel-react-native-skills | [vercel-labs](https://github.com/vercel-labs/agent-skills) | React Native |
| vercel-react-view-transitions | [vercel-labs](https://github.com/vercel-labs/agent-skills) | View transitions |
| web-design-guidelines | [vercel-labs](https://github.com/vercel-labs/agent-skills) | UI audit |
| web-quality-audit | [addyosmani](https://github.com/addyosmani/web-quality-skills) | Full quality review |

## Last Updated

- 2026-05-10