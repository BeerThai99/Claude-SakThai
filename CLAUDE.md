# Claude Configuration

This is Beer's private Claude Code configuration repository.
It stores persistent skills, settings, and context that apply across all projects.

## This Repository

`BeerThai99/Claude-SakThai` is the central store for:
- **Skills** — reusable slash commands under `.claude/skills/`
- **Global settings** — permissions and hooks under `.claude/settings.json`
- **Session hook** — `.claude/hooks/session-start.sh` runs at session start in remote environments
- **This file** — context and preferences Claude should always carry

When working on any project, this repo's skills and this CLAUDE.md are the baseline.

## Owner

- **Name:** Beer (Nanthasit)
- **Email:** beernanthasit@gmail.com
- **GitHub:** BeerThai99 (private org), beernanthasit-hub (public)

## Available Skills

| Skill | Command | Source |
|-------|---------|--------|
| agent-development | `/agent-development` | `anthropics/claude-plugins-public` |
| build-mcp-app | `/build-mcp-app` | `anthropics/claude-plugins-public` |
| build-mcp-server | `/build-mcp-server` | `anthropics/claude-plugins-public` |
| claude-api | `/claude-api` | `anthropics/skills` |
| claude-automation-recommender | `/claude-automation-recommender` | `anthropics/claude-plugins-public` |
| claude-md-improver | `/claude-md-improver` | `anthropics/claude-plugins-public` |
| command-development | `/command-development` | `anthropics/claude-plugins-public` |
| first-run | `/first-run` | `anthropics/claude-quickstarts` |
| frontend-design | `/frontend-design` | `anthropics/claude-plugins-public` |
| hook-development | `/hook-development` | `anthropics/claude-plugins-public` |
| mcp-integration | `/mcp-integration` | `anthropics/claude-plugins-public` |
| plugin-settings | `/plugin-settings` | `anthropics/claude-plugins-public` |
| plugin-structure | `/plugin-structure` | `anthropics/claude-plugins-public` |
| session-report | `/session-report` | `anthropics/claude-plugins-public` |
| skill-development | `/skill-development` | `anthropics/claude-plugins-public` |
| stop-slop | `/stop-slop` | `beernanthasit-hub/stop-slop-sakthai` (custom) |
| webapp-testing | `/webapp-testing` | `anthropics/skills` |
| writing-hookify-rules | `/writing-hookify-rules` | `anthropics/claude-plugins-public` |

### Adding New Skills

Use the skills CLI:

```bash
npx skills add <github-owner/repo>
```

Commit the updated `skills-lock.json` and `.claude/skills/` changes to `main`.

## Coding Preferences

- **No unnecessary comments** — only add comments when the WHY is non-obvious
- **No emojis** unless explicitly requested
- **No backwards-compat shims** — delete unused code outright
- **Minimal abstractions** — don't abstract beyond what the current task requires
- **Security first** — no command injection, XSS, SQL injection, or OWASP top-10 issues
- **No new files unless required** — prefer editing existing files
- **No half-finished code** — don't leave TODOs or placeholder implementations
- **No feature flags** — change the code directly
- **Test at system boundaries** — only validate user input and external API responses; trust internal code

## Languages & Tools

- Prefer TypeScript over JavaScript for new projects
- Python for scripting and data tasks
- No framework lock-in — use what the project already has
- Prefer `pnpm` over `npm` when both are available

## Git Workflow

- Develop on feature branches: `claude/<description>-<id>`
- Always push and open a draft PR after completing work
- Commit messages: concise, present tense, explain the *why* not the *what*
- Never force-push to `main`
- Never skip pre-commit hooks (`--no-verify`)
- Prefer small, focused commits over large ones

## New Repository Checklist

When starting work in a new repo, do these first:

1. Read existing `CLAUDE.md` if present — follow its conventions
2. If no `CLAUDE.md` exists, run `/init` to generate one
3. Check for `.claude/settings.json` — note any allowed/denied commands
4. Run `/fewer-permission-prompts` after the first session to reduce friction
5. Before any UI change, start the dev server and verify in a browser
6. Check `package.json` / `pyproject.toml` / `Makefile` for project-specific scripts

## Writing & Prose

When drafting any written content (docs, commit messages, PR descriptions, comments):
- Apply stop-slop rules: no throat-clearing, no adverbs, no passive voice
- State the point directly — no "Here's the thing:" openers
- No em-dashes, no three-item lists, no binary contrasts ("not X, but Y")
- Run `/stop-slop-sakthai` on any longer prose before publishing

## PR & Review Behaviour

- Create PRs as drafts by default
- Post comments on GitHub only when a reply is genuinely needed
- Watch PRs for CI failures and review comments; fix small issues autonomously
- Ask before making changes that are architecturally significant or ambiguous
- Stop watching a PR the moment the user asks

## Session Behaviour

- Work autonomously on clearly scoped tasks; ask when scope is ambiguous
- Confirm before destructive operations (force push, `rm -rf`, branch deletion, etc.)
- Keep responses short — one or two sentences per update, longer only when the content demands it
- Never narrate internal reasoning; state results and decisions directly
