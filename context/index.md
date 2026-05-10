# Context Documentation

This folder contains documentation files that help agents understand the project state.

## Files

| File | Purpose |
|------|---------|
| `agents.md` | Agent configuration, subagent definitions, triggers |
| `tech-and-architecture.md` | Project identity, folder structure, tech overview |
| `mcp-and-tooling.md` | Skills installed, tools available, commands |
| `workflow-and-git.md` | Git workflow, conventional commits, TODO system |

## How to Use

Agents read these files to understand:
- What this project is and does
- What agents and skills are available
- How to work with git and commits
- Current project state and tasks

## Updating Context

After significant changes:
1. Identify which file(s) need updates
2. Update with new information
3. Keep format consistent with existing file
4. Use English for all content

## When to Update

- New skill added → Update `mcp-and-tooling.md`
- New agent created → Update `agents.md`
- Folder structure changed → Update `tech-and-architecture.md`
- Git workflow changed → Update `workflow-and-git.md`

## Task Tracking

See `workflow-and-git.md` for the TODO system:
- `.opencode/todo.md` - Persistent tasks
- `TODO.md` - Session scratch pad