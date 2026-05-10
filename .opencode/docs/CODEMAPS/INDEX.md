# Project Codemaps

**Last Updated:** YYYY-MM-DD

## Overview

This directory contains architectural documentation generated from the actual codebase structure.

## Codemaps

| Area | Description | Last Updated |
|------|-------------|--------------|
| [frontend](./frontend.md) | Frontend structure and components | YYYY-MM-DD |
| [backend](./backend.md) | API routes and server logic | YYYY-MM-DD |
| [database](./database.md) | Database schema and models | YYYY-MM-DD |

## Project Structure

```
src/
├── components/        # UI components
├── pages/             # Page routes (if applicable)
├── api/               # API routes (if applicable)
├── lib/               # Utilities and helpers
├── hooks/             # Custom hooks (if applicable)
└── types/             # TypeScript types
```

## How Codemaps are Generated

1. **Analyze** — doc-updater scans the source directory
2. **Map** — Extracts exports, imports, and dependencies
3. **Document** — Generates markdown with architecture overview
4. **Update** — Timestamps and validates paths

## Related Documentation

- [Setup Guide](../GUIDES/setup.md)
- [CONTEXT files](../../context/) — Agent-only documentation

**Remember**: Codemaps reflect the actual codebase state. Always verify against source.
