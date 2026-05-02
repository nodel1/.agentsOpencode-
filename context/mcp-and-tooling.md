# MCP and Tooling

## Overview

This project uses OpenCode's built-in MCP (Model Context Protocol) and custom skills to extend the agent's capabilities.

## Skills Installed

| Skill | Purpose | When to Use |
|-------|---------|-------------|
| `conventional-commits` | Enforce git commit message standards | Cuando el usuario pide hacer commits |
| `agent-browser` | Browser automation for AI agents | Cuando necesitas interactuar con sitios web, automatizar acciones en el navegador, hacer tests E2E, o scrapear datos |
| `find-skills` | Discover and install new skills | Cuando el usuario pregunta "how do I do X" o busca funcionalidad |
| `rtk-token-optimizer` | Reduce LLM token consumption by 60-90% | Al ejecutar comandos shell (git, npm, cargo, docker) |

## How Skills Work

### conventional-commits

Loaded automatically when executing git operations. Provides:
- Commit message validation
- Type options (feat, fix, refactor, etc.)
- Format rules enforcement

### agent-browser

Browser automation skills include:
- Navigate pages
- Fill forms
- Click buttons
- Take screenshots
- Extract data
- Test web apps
- Automate Electron desktop apps

Triggered by requests like:
- "open a website"
- "fill out a form"
- "click a button"
- "take a screenshot"
- "scrape data from a page"
- "test this web app"
- "login to a site"

### find-skills

Used when user needs functionality that might exist as an installable skill:
- "how do I do X"
- "find a skill for X"
- "is there a skill that can..."

### rtk-token-optimizer

RTK (Rust Token Killer) integrates as CLI proxy:
- Wraps git, npm, cargo, docker commands
- Reduces token usage by 60-90%
- Optimizes context usage

## OpenCode Configuration

Plugin installed: `@opencode-ai/plugin` v1.4.3

Configuration files:
- `opencode.json` - MCP server configs (if exists)
- `.opencode/` - Core and agent configurations

## MCP Tools Available

Based on skills installed:
- Git operations (via conventional-commits)
- Browser automation (via agent-browser)
- Shell command optimization (via rtk-token-optimizer)
- Skill discovery (via find-skills)

## Optimization Strategies

1. **Token saving:** Use rtk-token-optimizer for shell commands
2. **Context efficiency:** Keep context files updated and concise
3. **Skill reusability:** Leverage existing skills before adding new ones

## Pending / Known Issues

- No custom MCP servers configured
- No database connections via MCP
- Skills may be expanded for future project needs