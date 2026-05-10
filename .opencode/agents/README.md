# VoltAgent - 144 Claude Code Subagents

This folder contains 144 specialized agents for various development tasks.

## Categories

| Category | Count | Description |
|----------|-------|-------------|
| 01-core-development | 11 | Backend, frontend, fullstack, mobile |
| 02-language-specialists | 31 | Language/framework experts |
| 03-infrastructure | 17 | DevOps, cloud, Kubernetes |
| 04-quality-security | 16 | Testing, security, code review |
| 05-data-ai | 13 | ML, data engineering, AI |
| 06-developer-experience | 15 | Tooling, documentation, DX |
| 07-specialized-domains | 13 | Blockchain, IoT, fintech, gaming |
| 08-business-product | 12 | Product management, business analysis |
| 09-meta-orchestration | 11 | Multi-agent coordination |
| 10-research-analysis | 8 | Research and analysis |

## Quick Selection Guide

Need help with... | Use this agent |
|----------------|----------------|
| Write TypeScript | `02-language-specialists/typescript-developer.md` |
| Debug Python | `02-language-specialists/python-debugger.md` |
| Deploy to AWS | `03-infrastructure/aws-deployer.md` |
| Security audit | `04-quality-security/security-auditor.md` |
| Write tests | `04-quality-security/test-writer.md` |
| React component | `02-language-specialists/react-developer.md` |
| CI/CD pipeline | `03-infrastructure/ci-cd-engineer.md` |
| API design | `01-core-development/api-designer.md` |
| Code review | `04-quality-security/code-reviewer.md` |
| Database design | `01-core-development/database-architect.md` |

## Subagent File Format

```yaml
---
name: agent-name
description: When this agent should be invoked
tools: Read, Write, Edit, Bash, Glob, Grep
---

You are a [role description]...
```

### Tool Assignment by Role Type

- **Read-only** (reviewers): `Read, Grep, Glob`
- **Research** (analysts): `Read, Grep, Glob, WebFetch, WebSearch`
- **Code writers**: `Read, Write, Edit, Bash, Glob, Grep`
- **Documentation**: `Read, Write, Edit, Glob, Grep, WebFetch, WebSearch`

## Usage

Agents are loaded by the orchestrator based on keywords and context. The main orchestrator is in:

`.opencode/agents/09-meta-orchestration/agent-organizer.md`

## Resources

- [VoltAgent Repository](https://github.com/VoltAgent/awesome-claude-code-subagents)
- [Claude Code Documentation](https://docs.claude.ai/)