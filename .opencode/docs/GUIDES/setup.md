# Setup Guide

**Last Updated:** YYYY-MM-DD

## Prerequisites

- Node.js 18+
- npm / pnpm / yarn
- Git

## Installation

```bash
# Clone the repository
git clone <repository-url>
cd <project-name>

# Install dependencies
npm install

# Or if using pnpm
pnpm install
```

## Development

```bash
# Start development server
npm run dev

# Or if using pnpm
pnpm dev
```

## Build

```bash
# Build for production
npm run build

# Preview production build
npm run preview
```

## Project Structure

```
.
├── src/                # Source code
├── docs/                # Documentation
│   ├── CODEMAPS/       # Architecture codemaps
│   └── GUIDES/         # Setup and usage guides
├── .opencode/          # Agent configuration
│   ├── agents/         # 144+ VoltAgent agents
│   ├── subagents/      # Custom subagents
│   └── skills/         # Skills for development
├── context/            # Agent-only documentation
└── tests/              # Test files (if applicable)
```

## Common Tasks

| Task | Command |
|------|---------|
| Run tests | `npm test` |
| Lint code | `npm run lint` |
| Format code | `npm run format` |
| Type check | `npm run typecheck` |

## Environment Variables

Create a `.env` file based on `.env.example`:

```bash
cp .env.example .env
```

## Troubleshooting

### Dependencies issues

```bash
rm -rf node_modules package-lock.json
npm install
```

### Build errors

Invoke the `build-error-resolver` agent:
```
"fix the build errors"
```

## Related Documentation

- [Codemap Index](./CODEMAPS/INDEX.md)
- [Agent Configuration](../../.opencode/README.md)
