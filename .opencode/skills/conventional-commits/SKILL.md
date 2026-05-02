---
name: conventional-commits
description: Rules and guidelines for creating standardized git commit messages. Use this skill WHENEVER the user asks you to commit code, write a commit message, or do a git push.
---

# Conventional Commit Messages

See how a minor change to your commit message style can make a difference. 

<pre>
git commit -m"<b>&lt;type&gt;</b>(<b>&lt;optional scope&gt;</b>): <b>&lt;description&gt;</b>" \
  -m"<b>&lt;optional body&gt;</b>" \
  -m"<b>&lt;optional footer&gt;</b>"
</pre>

## Commit Message Formats

### Types
- Changes relevant to the API or UI:
    - `feat` Commits that add, adjust or remove a feature to/of/from the API or UI
    - `fix` Commits that fix an API or UI bug of a preceded `feat` commit
- `refactor` Commits that rewrite or restructure code without altering API or UI behavior
    - `perf` Commits are special type of `refactor` commits that specifically improve performance
- `style` Commits that address code style (e.g., white-space, formatting, missing semi-colons) and do not affect application behavior
- `test` Commits that add missing tests or correct existing ones
- `docs` Commits that exclusively affect documentation
- `build` Commits that affect build-related components such as build tools, dependencies, project version, ...
- `ops` Commits that affect operational aspects like infrastructure (IaC), deployment scripts, CI/CD pipelines, backups, monitoring, or recovery procedures, ...
- `chore` Commits that represent tasks like initial commit, modifying `.gitignore`, ...

### Breaking Changes Indicator
- A commit that introduce breaking changes **must** be indicated by an `!` before the `:` in the subject line e.g. `feat(api)!: remove status endpoint`

### Description
The `description` contains a concise description of the change. 
- The description is a **mandatory** part
- Use the imperative, present tense: "change" not "changed" nor "changes"
- **Do not** capitalize the first letter
- **Do not** end the description with a period (`.`)

### Examples
- `feat: add email notifications on new direct messages`
- `fix(shopping-cart): prevent order an empty shopping cart`
- `build: update dependencies`
- `style: remove empty line`

---
*Referencia basada en la especificación de Conventional Commits 1.0.0*