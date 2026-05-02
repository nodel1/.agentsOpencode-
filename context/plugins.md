# Plugins

## Overview

This project uses OpenCode plugins to extend the core agent capabilities.

## Plugins Installed

| Plugin | Version | Purpose |
|--------|---------|---------|
| `@opencode-ai/plugin` | 1.4.3 | Core plugin for VS Code - provides AI agent capabilities |

## What This Plugin Provides

- AI agent interactions
- Skill loading system
- Subagent management
- MCP server integration

## Plugin Configuration

Config file: `.opencode/plugins.md` (main configuration)

Additional configuration:
- `.opencode/core.md` - Core agent configuration (pending)
- `.opencode/agents/` - Subagent definitions
- `.opencode/skills/` - Skill definitions

## How Plugins Work

OpenCode plugins extend the base agent through:

1. **Skills** - Reusable capability modules
2. **Subagents** - Specialized agents for specific tasks
3. **MCP Servers** - External tool integrations

## Adding New Plugins

To add a new plugin:

1. Install via npm: `npm install <plugin-name>`
2. Or via OpenCode's plugin system
3. Update this file with the new plugin
4. Configure if needed

## Available Plugins

For a list of available OpenCode plugins, check:
- OpenCode marketplace
- Or ask the agent: "find plugins for X"

## Pending / Known Issues

- Only 1 plugin currently installed
- More plugins can be added as needs evolve
- No custom plugins created yet