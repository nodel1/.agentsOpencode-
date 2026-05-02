---
name: rtk-token-optimizer
description: Integrate RTK (Rust Token Killer) CLI proxy to reduce LLM token consumption by 60-90%. Use this skill WHENEVER executing shell commands (git, npm, cargo, docker, etc.) to minimize costs and context usage.
---

# RTK Token Optimizer

RTK (Rust Token Killer) is a high-performance CLI proxy that reduces LLM token consumption by 60-90% on common development commands. This skill enables agents to use RTK transparently, filtering and compressing command outputs before they reach the LLM context.

## Basic Usage Pattern
Always prefix eligible shell commands with `./rtk.exe` when executing via the terminal (Windows portable mode):

- **Git:** `./rtk.exe git status`, `./rtk.exe git log -n 10`, `./rtk.exe git diff`
- **File Operations:** `./rtk.exe ls .`, `./rtk.exe find . -name "*.md"`, `./rtk.exe grep "pattern" .`
- **Package Managers:** `./rtk.exe npm test`, `./rtk.exe pnpm list`, `./rtk.exe cargo build`
- **Testing:** `./rtk.exe vitest run`, `./rtk.exe pytest`, `./rtk.exe cargo test`
- **Containers:** `./rtk.exe docker ps`, `./rtk.exe kubectl get pods`

**Note:** On Windows portable mode, use `./rtk.exe` prefix. The binary is located in the project root.

## Advanced Features
- `./rtk.exe gain`: Show token savings statistics and money saved.
- `./rtk.exe gain --graph`: Show an ASCII graph of savings over the last 30 days.
- `./rtk.exe discover`: Find commands where RTK would have saved tokens in the past.
- `./rtk.exe init`: Initialize RTK tracking in the project.

## Error Recovery (Tee)
If a command fails and you need the full, unfiltered output, RTK stores it in:
`~/.local/share/rtk/tee/`

## Best Practices
1. **Always Prefix:** Train the habit of adding `rtk` to any command known for verbose output.
2. **Context Management:** Use RTK to keep the context window clean during long-running sessions.
3. **Analytics:** Periodically check `rtk gain` to monitor optimization efficiency.

## Supported Commands & Savings
- Git Operations: 80-92% reduction.
- Testing & Linting: 80-90% reduction (shows failures only).
- Package Lists: 70-90% reduction.