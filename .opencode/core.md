---
description: Core agent configuration for OpenCode
mode: core
---

# Core Agent Configuration

## Overview

This is the core agent configuration for the .agentsOpencode- template project.

## Purpose

Provide AI agent capabilities for managing git operations, browser automation, and general development tasks using OpenCode.

## Capabilities

### Available Skills

- **conventional-commits** - Git commit standards enforcement
- **agent-browser** - Browser automation
- **find-skills** - Skill discovery
- **rtk-token-optimizer** - Token optimization for shell commands

### Available Agents

- **git-agent** - Handles git operations with conventional commits

## Behavior Rules

1. Be concise and direct in responses
2. No emojis unless explicitly requested
3. Focus on the specific task at hand
4. Ask before assuming uncertainty
5. Use conventional commits for all git operations

## Context Files

The agent uses these context files:
- `context/workflow-and-git.md` - Workflow and stack
- `context/tech-and-architecture.md` - Project purpose
- `context/api-and-data.md` - API/data info
- `context/mcp-and-tooling.md` - Skills and tooling
- `context/agents.md` - Agent configs
- `context/plugins.md` - Plugin list

## Default Actions

When requested to make commits:
1. Load conventional-commits skill
2. Check git status
3. Stage files
4. Validate message
5. Commit and push if requested

When asked about project:
- Reference context files for accurate info

## Notes

This is a meta-configuration project (not a web app).
No database, APIs, or traditional application architecture.