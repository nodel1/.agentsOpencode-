# Tech Stack and Architecture

## Project Identity

- **Name:** .agentsOpencode- (template de configuración OpenCode)
- **Purpose:** Configuración personal de agentes para OpenCode - un template reusable para otros proyectos
- **Academic context:** N/A (no es un proyecto académico)
- **Current phase:** Setup inicial

## Core Values (in priority order)

1. **Reusabilidad** — La configuración debe servir como base para otros proyectos
2. **Simplicidad** — Mantener las cosas simples, sin sobreingeniería
3. **Documentación** — Mantener el contexto actualizado para que los agentes no-alucinen

## What This Project IS

- Un template de configuración para OpenCode
- Una base reusable para proyectos futuros
- Un ejemplo de cómo estructurar agentes y skills

## What This Project is NOT

- No es una aplicación web
- No es un SaaS
- No tiene base de datos
- No tiene APIs públicas

## Architecture Pattern

This is a **meta-configuration project** - no tiene arquitectura de aplicación tradicional.

- No hay Next.js, React, ni framework web
- No hay base de datos
- No hay Server Actions ni APIs REST
- Solo archivos de configuración y skills para agentes

## TypeScript

No aplica - este proyecto no tiene código TypeScript.

## Styling

No aplica - este proyecto no tiene UI.

## Language and Tone

- **Code and comments:** English
- **AI communication:** Direct, concise, no emojis unless requested
- **Commit messages:** Conventional Commits format (see `context/workflow-and-git.md`)

## Protocols

- Cuando añadas una nueva tecnología, actualiza `workflow-and-git.md`
- Cuando añadas un nuevo skill, actualiza `mcp-and-tooling.md`
- Cuando cambies el propósito del proyecto, actualiza este archivo
- Después de sesiones intense, ejecuta: "Update our project context files based on the changes we just made"

## Pending / Known Issues

- `core.md` pendiente de crear - archivo maestro de configuración
- Skills podrían expandirse según necesidades de futuros proyectos