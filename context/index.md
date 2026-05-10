# Context Documentation

This folder contains documentation files that help agents understand the project state.

## Documentation Structure

This template has two documentation systems:

### `context/` — Agent-Only Documentation
For AI agents to understand the project structure, skills, and workflows.

| File | Purpose |
|------|---------|
| `agents.md` | Agent configuration, subagent definitions, skills list |
| `tech-and-architecture.md` | Project identity, folder structure |
| `mcp-and-tooling.md` | Skills installed, tools available, commands |
| `workflow-and-git.md` | Git workflow, conventional commits, TODO system |

### `docs/` — Human Documentation
For developers to understand the codebase architecture and setup.

```
docs/
├── CODEMAPS/       # Generated architecture maps
│   ├── INDEX.md    # Overview of all areas
│   ├── frontend.md # Frontend structure
│   ├── backend.md   # API/routes structure
│   └── database.md  # DB schema (if applicable)
└── GUIDES/
    └── setup.md    # How to run the project
```

## When to Update

- New skill added → Update `mcp-and-tooling.md`
- New agent created → Update `agents.md`
- Folder structure changed → Update `tech-and-architecture.md`
- Git workflow changed → Update `workflow-and-git.md`
- New features/changes → Update `docs/CODEMAPS/*.md`

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

## Task Tracking

See `workflow-and-git.md` for the TODO system:
- `.opencode/todo.md` - Persistent tasks
- `TODO.md` - Session scratch pad