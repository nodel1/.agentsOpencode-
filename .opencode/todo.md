# OpenCode Persistent Task Board

Project-wide tasks that persist across sessions. Agents can propose work, users approve.

---

## Task Categories

## Completed
- [x] Create AGENTS.md documentation | Agent: opencode | Completed: 2026-05-10
- [x] Create README.md | Agent: opencode | Completed: 2026-05-10
- [x] Update resources-used.txt | Agent: opencode | Completed: 2026-05-10
- [x] Clean up context files | Agent: opencode | Completed: 2026-05-10

## Proposed
<!-- [PROPOSED] tasks go here - user reviews and converts to pending or deletes -->

---

## In Progress
<!-- Currently active tasks -->

---

## Completed
<!-- [x] Tasks that are done -->

---

## Task Format
```
- [ ] Task description | Agent: agent-name | Priority: high/medium/low | Created: YYYY-MM-DD
- [x] Completed task | Agent: agent-name | Completed: YYYY-MM-DD
- [PROPOSED] Proposed task | Agent: agent-name | Reason: why it's needed
```

## Agent Guidelines

### Proposing Tasks
When an agent identifies work that should be done:
1. Add task to "Proposed" section with `[PROPOSED]` prefix
2. Include: what needs to be done, why, and suggested agent/priority
3. User will review and convert to pending or delete

### Updating Tasks
- Mark `[ ]` → `[ ]` (in progress) when starting
- Mark `[ ]` → `[x]` when completed
- Add completion date and agent name when marking done

### Reading Tasks
- On activation, scan this file for:
  - "In Progress" tasks assigned to you
  - "Proposed" tasks you created that need review
  - "High Priority" tasks that need attention