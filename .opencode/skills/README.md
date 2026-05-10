# Skills - 31 Agent Skills

This folder contains specialized skills that extend agent capabilities.

## Skill Sources

| Source | Count | Skills |
|-------|-------|--------|
| [affaan-m/everything-claude-code](https://github.com/affaan-m/everything-claude-code) | 16 | git-workflow, codebase-onboarding, tdd-workflow, code-tour, api-design, docker-patterns, click-path-audit, deployment-patterns, deep-research, frontend-patterns, backend-patterns, nextjs-turbopack, django-patterns, laravel-patterns, nestjs-patterns, springboot-patterns, flutter-dart-code-review |
| [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills) | 7 | vercel-react-best-practices, web-design-guidelines, vercel-react-native-skills, vercel-react-view-transitions, vercel-composition-patterns, deploy-to-vercel, vercel-cli-with-tokens |
| [addyosmani/web-quality-skills](https://github.com/addyosmani/web-quality-skills) | 4 | web-quality-audit, performance, core-web-vitals, best-practices |
| [vercel-labs/agent-browser](https://github.com/vercel-labs/agent-browser) | 1 | agent-browser |
| [rtk-ai/rtk](https://github.com/rtk-ai/rtk) | 1 | rtk-token-optimizer |
| [skills.sh](https://skills.sh/) | 2 | find-skills, conventional-commits |

## Available Skills

### Core Skills (4)

| Skill | Source | Purpose | Trigger |
|-------|--------|---------|---------|
| `agent-browser` | vercel-labs | Browser automation | "open website", "scrape data" |
| `rtk-token-optimizer` | rtk-ai | Token optimization (60-90% savings) | All shell commands |
| `find-skills` | skills.sh | Discover/install skills | "find a skill for X" |
| `conventional-commits` | skills.sh | Git commit standards | Git operations |

### Web Quality Skills (4)

| Skill | Purpose | Trigger |
|-------|---------|---------|
| `web-quality-audit` | Comprehensive quality review | "audit my site", "quality review" |
| `performance` | Loading speed optimization | "optimize performance", "speed up" |
| `core-web-vitals` | LCP, INP, CLS specifics | "improve Core Web Vitals", "fix LCP" |
| `best-practices` | Security, modern APIs | "apply best practices", "security audit" |

### Vercel Skills (7)

| Skill | Purpose | Trigger |
|-------|---------|---------|
| `vercel-react-best-practices` | React/Next.js optimization | "optimize React", "performance review" |
| `web-design-guidelines` | UI audit | "review UI", "check accessibility" |
| `vercel-react-native-skills` | React Native best practices | "build React Native", "mobile" |
| `vercel-react-view-transitions` | View Transition API | "add page transitions", "animate views" |
| `vercel-composition-patterns` | React composition patterns | "refactor components", "clean API" |
| `deploy-to-vercel` | Deploy to Vercel | "deploy my app", "push live" |
| `vercel-cli-with-tokens` | Vercel CLI integration | Vercel operations |

### Development Patterns - Alta Priority (6)

| Skill | Purpose | Trigger |
|-------|---------|---------|
| `git-workflow` | Git strategies, branching, conflict resolution | "setup git workflow", "resolve conflicts" |
| `codebase-onboarding` | Dev onboarding guides | "create onboarding guide", "onboard new dev" |
| `tdd-workflow` | Test-driven development | "setup TDD", "write tests first" |
| `code-tour` | Interactive code tours | "generate code tour", "explore codebase" |
| `api-design` | API design patterns | "design API", "REST endpoints" |
| `docker-patterns` | Container workflows | "setup Docker", "containerize app" |

### Development Patterns - Media Priority (5)

| Skill | Purpose | Trigger |
|-------|---------|---------|
| `click-path-audit` | UI interaction bugs | "find interaction bugs", "audit clicks" |
| `deployment-patterns` | Deployment strategies | "deploy strategy", "CI/CD setup" |
| `deep-research` | Research & analysis | "research X", "analyze topic" |
| `frontend-patterns` | Frontend architecture | "frontend architecture", "React patterns" |
| `backend-patterns` | Backend architecture | "backend design", "API structure" |

### Framework-Specific Skills (6)

| Skill | Framework | Trigger |
|-------|-----------|---------|
| `nextjs-turbopack` | Next.js | "optimize Next.js", "use turbopack" |
| `django-patterns` | Django | "Django architecture", "Django best practices" |
| `laravel-patterns` | Laravel | "Laravel patterns", "Eloquent queries" |
| `nestjs-patterns` | NestJS | "NestJS architecture", "Modules setup" |
| `springboot-patterns` | Spring Boot | "Spring Boot patterns", "Java backend" |
| `flutter-dart-code-review` | Flutter | "review Flutter code", "Dart patterns" |

## Adding New Skills

```bash
# Using npx skills
npx skills add <owner/repo>

# Example
npx skills add affaan-m/everything-claude-code

# Or specific skill
npx skills add addyosmani/web-quality-skills
```

## Skills Installation Location

Skills should be installed directly to `.opencode/skills/`:
```bash
npx skills add <owner/repo> --target .opencode/skills/
```

## Resources

- [Skills.sh - Skills Marketplace](https://skills.sh/)
- [everything-claude-code](https://github.com/affaan-m/everything-claude-code)
- [Web Quality Skills](https://github.com/addyosmani/web-quality-skills)
- [Vercel Agent Skills](https://github.com/vercel-labs/agent-skills)
- [Agent Browser](https://github.com/vercel-labs/agent-browser)