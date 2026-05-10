# Skills - 17 Agent Skills

This folder contains specialized skills that extend agent capabilities.

## Skill Sources

| Source | Count | Skills |
|--------|-------|--------|
| Built-in OpenCode | 4 | agent-browser, conventional-commits, find-skills, rtk-token-optimizer |
| addyosmani/web-quality-skills | 6 | web-quality-audit, performance, core-web-vitals, accessibility, seo, best-practices |
| vercel-labs/agent-skills | 7 | vercel-react-best-practices, web-design-guidelines, vercel-react-native-skills, vercel-react-view-transitions, vercel-composition-patterns, deploy-to-vercel, vercel-cli-with-tokens |

## Available Skills

### Core Skills
| Skill | Purpose | Trigger |
|-------|---------|---------|
| `agent-browser` | Browser automation | "open website", "scrape data", "test web app" |
| `conventional-commits` | Git commit standards | Git operations |
| `find-skills` | Discover/install skills | "find a skill for X" |
| `rtk-token-optimizer` | Token optimization (60-90% savings) | All shell commands (use `rtk` prefix) |

### Web Quality Skills
| Skill | Purpose | Trigger |
|-------|---------|---------|
| `web-quality-audit` | Comprehensive quality review | "audit my site", "quality review" |
| `performance` | Loading speed optimization | "optimize performance", "speed up" |
| `core-web-vitals` | LCP, INP, CLS specifics | "improve Core Web Vitals", "fix LCP" |
| `accessibility` | WCAG compliance | "improve accessibility", "WCAG audit" |
| `seo` | Search engine optimization | "optimize for SEO", "meta tags" |
| `best-practices` | Security, modern APIs | "apply best practices", "security audit" |

### Vercel Skills
| Skill | Purpose | Trigger |
|-------|---------|---------|
| `vercel-react-best-practices` | React/Next.js optimization (40+ rules) | "optimize React", "performance review" |
| `web-design-guidelines` | UI audit (100+ rules) | "review UI", "check accessibility" |
| `vercel-react-native-skills` | React Native best practices | "build React Native", "mobile optimization" |
| `vercel-react-view-transitions` | View Transition API | "add page transitions", "animate views" |
| `vercel-composition-patterns` | React composition patterns | "refactor components", "clean API" |
| `deploy-to-vercel` | Deploy to Vercel | "deploy my app", "push live" |
| `vercel-cli-with-tokens` | Vercel CLI integration | Vercel operations |

## Adding New Skills

```bash
# Using npx skills
npx skills add <owner/repo>

# Example
npx skills add vercel-labs/agent-skills
```

Skills will be installed to `.agents/skills/` - move to this folder after.

## Resources

- [Skills.sh - Skills Marketplace](https://skills.sh/)
- [VoltAgent Skills](https://github.com/VoltAgent/awesome-claude-code-subagents)
- [Web Quality Skills](https://github.com/addyosmani/web-quality-skills)
- [Vercel Agent Skills](https://github.com/vercel-labs/agent-skills)