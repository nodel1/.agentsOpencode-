---
name: conventional-commits
description: Rules and guidelines for creating standardized git commit messages and pushing. Use this skill WHENEVER the user asks to commit, push, or any git operation.
---

# Conventional Commits + Push Flow

## Commit message structure

```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

### Types

| Type       | When to use                                      | SemVer impact |
| ---------- | ------------------------------------------------ | ------------- |
| `feat`     | Introduces a new feature                         | MINOR         |
| `fix`      | Patches a bug                                    | PATCH         |
| `refactor` | Code change that is neither a fix nor a feature  | —             |
| `chore`    | Tooling, config, dependencies, maintenance       | —             |
| `docs`     | Documentation only                               | —             |
| `style`    | Formatting, whitespace — no logic change         | —             |
| `perf`     | Performance improvement                          | —             |
| `test`     | Adding or fixing tests                           | —             |
| `build`    | Changes to build system or external dependencies | —             |
| `ci`       | CI/CD configuration changes                      | —             |
| `revert`   | Reverts a previous commit                        | —             |

### Breaking changes

- Append `!` after type/scope: `feat(api)!: remove deprecated endpoint`
- OR add footer: `BREAKING CHANGE: <description>`
- `BREAKING CHANGE` MUST be uppercase. Correlates with MAJOR in SemVer.

### Rules

- Type MUST be a noun followed by `:` and a space.
- `feat` MUST be used when adding a new feature.
- `fix` MUST be used for bug fixes.
- Scope is OPTIONAL — a noun in parentheses: `fix(auth): ...`
- Description MUST immediately follow the `type: ` prefix.
- Body is optional — starts one blank line after the description.
- Footers start one blank line after the body. Format: `Token: value` or `Token #value`.
- Footer tokens use `-` instead of spaces (except `BREAKING CHANGE`).
- Types are NOT case-sensitive (but `BREAKING CHANGE` MUST be uppercase).
- Description: use imperative mood, no uppercase first letter, no period at end.

### Examples

```
feat(logs): add admin_email column to audit tables
```

```
fix(storage): use image/png for upload test to avoid MIME restriction
```

```
chore(deps): add pg@8.20.0 as migration tool
```

```
feat(logs)!: restructure LogEntry to include admin identity

BREAKING CHANGE: LogEntry now requires admin_email field in all mappers
```

```
fix: prevent race condition in cache invalidation

Introduce request id and reference to latest request.

Reviewed-by: Z
Refs: #123
```

### Detailed Body Example (MANDATORY for multi-file features)

```
feat(import): add CSV bulk import for clients and projects

Add /import page with 4-step flow (upload, preview, conflict resolution, result)
Add lib/import-api.ts with checkClientConflicts() and importCsvRows() Server Actions
Add components/csv-preview-table.tsx (CsvPreviewTable, ConflictCard, ImportResultSummary)
Add conflict resolution UI: keep existing / overwrite name / create with new slug
Fix createClient() to map SLUG_DUPLICATE same as createProject()
Add papaparse@5.4.1 for CSV parsing (+ @types/papaparse@5.3.14)
Add Importar CSV entry to sidebar
```

---

## Push Flow — MANDATORY STEPS

Every time a push is requested, follow these steps **in order without skipping**:

### Step 1 — Stage all changes

```bash
git add .
```

Always use `git add .` to stage everything unless the user explicitly specifies individual files.

### Step 2 — Inspect the diff

Run `git diff --cached --stat` and `git diff --cached` to understand what is being committed.
Categorize each change by type (feat / fix / chore / refactor / docs / etc.).

### Step 3 — Draft the commit message

Apply Conventional Commits rules:

- Choose the correct `type` based on the nature of the changes.
- Add a `scope` in parentheses if the change is scoped to a specific module/feature.
- Write a concise description in imperative mood (e.g., "add", "fix", "update" — not "added", "fixed").
- Add a body if the change is non-trivial.
- Add `BREAKING CHANGE:` footer if any public API/contract changed.

### Step 4 — ALWAYS ask for confirmation before committing

**NEVER commit or push without explicit user approval.**

Show the user:

```
Staged changes:
  <output of git diff --cached --stat>

Proposed commit message:
  <type>(<scope>): <description>

  <body if any>

  <footers if any>

¿Confirmas este commit y push?
```

Wait for the user to confirm before proceeding.

### Step 5 — Commit

```bash
git commit -m "<type>(<scope>): <description>"
```

If there is a body or footer, use a multi-line commit via heredoc or temp file.

### Step 6 — Push

```bash
git push
```

Only push after the commit succeeds and the user has confirmed.

---

## What NOT to do

- NEVER run `git commit` before showing the proposed message to the user.
- NEVER skip `git add .` — always stage first.
- NEVER use `--no-verify` unless the user explicitly requests it.
- NEVER push to `main` directly — warn the user if on main.
- NEVER amend a commit that has already been pushed.
- NEVER use `git push --force` on main/master.

---
*Referencia basada en la especificación de Conventional Commits 1.0.0*