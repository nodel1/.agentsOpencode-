# API Layer and Data Model

## Overview

This project does **NOT** have a traditional API layer. It is a meta-configuration project for OpenCode agents.

## What Applies

- OpenCode plugin como la capa de integración principal
- Commands disponibles a través del plugin de OpenCode

## What Does NOT Apply

- No hay Server Actions
- No hay REST API
- No hay GraphQL
- No hay base de datos
- No hay Supabase

## Architecture Pattern

**No architecture pattern needed** - Este proyecto solo contiene:
- Archivos de configuración de OpenCode
- Skills para agentes
- Documentación de contexto

## Data Models

None - no hay modelos de datos en este proyecto.

## CRUD Operations

None - no hay operaciones CRUD en este proyecto.

## If You Add a Web App Later

When expanding this template to include a web application, document here:
- Server Actions pattern (recommended for Next.js)
- API endpoints if REST is preferred
- Database schema and types
- Environment variables

For a reference implementation, see the fusion-backoffice project which uses:
- Server Actions in `lib/api.ts`
- Supabase for data storage
- TypeScript with strict mode