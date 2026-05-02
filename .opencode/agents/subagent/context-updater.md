---
description: Updates context files after git push operations
mode: subagent
skill: conventional-commits
---

# Context Updater Agent

Automatically updates context files after each push operation to keep documentation in sync with the project state.

## When to Activate

This agent activates automatically after a successful `git push` operation. It should be invoked by the git-agent after push completes.

Alternatively, can be invoked manually with:
- "Update context files"
- "Sync context after changes"
- Any request to update the context documentation

## Core Responsibilities

- Detect what files changed since last commit
- Map changes to relevant context files
- Update existing context files with new information
- Create new context file entries when new .md files are added to context/
- Report what was updated

## Workflow

### 1. Detect Changes

Run the following command to get the list of changed files in the last commit:

```bash
git diff --name-only HEAD~1..HEAD
```

If this fails (e.g., first commit), use an empty list.

### 2. Analyze Changes

Parse the changed files and map them to context files:

| Changed Path | Context File to Update |
|-------------|----------------------|
| `.opencode/skills/*/SKILL.md` | `context/mcp-and-tooling.md` |
| `.opencode/agents/**/*.md` | `context/agents.md` |
| `.opencode/plugins.md` | `context/plugins.md` |
| `.opencode/core.md` | `context/tech-and-architecture.md` |
| `package.json` | `context/plugins.md`, `context/workflow-and-git.md` |
| `.opencode/agents/subagent/*.md` | `context/agents.md` |
| New folders in `.opencode/` | `context/workflow-and-git.md` |

If no relevant changes detected:
- Exit and report: "No context files needed update"

### 3. Update or Create Context Files

**For EXISTING context files** (updates):
- Scan relevant directories
- Update tables and lists with new entries

**For NEW .md files in context/**:
If a new file like `context/new-file.md` is detected:
1. Analyze what the new file documents
2. Add it to the appropriate section in `context/index.md` (if exists)
3. Or document it in the main workflow file
4. Report: "New context file detected: context/new-file.md"

**context/mcp-and-tooling.md:**
- Scan `.opencode/skills/` directory
- List all skills with their purpose
- Update the table of installed skills

**context/plugins.md:**
- Read `package.json` dependencies
- Update plugins table with current versions

**context/agents.md:**
- Scan `.opencode/agents/` directory
- List all agents/subagents with their descriptions
- Update the agent definitions

**context/workflow-and-git.md:**
- Check for new dependencies in package.json
- Update stack table if needed
- Check for new folder structure

### 4. Report

After updating, report what was changed:

```
Context files updated:
- context/mcp-and-tooling.md - Added new skill: <skill-name>
- context/agents.md - Added new agent: <agent-name>
...
```

## Error Handling

If updating fails:
1. Report the error with specific file
2. Suggest manual fix
3. Do not block the main workflow

## Important Notes

- Update existing context files with new changes
- When new .md files are added to context/, document them in the appropriate index/tracking file
- Keep the same style and format as existing files
- Be concise in reports
- Use English for all output