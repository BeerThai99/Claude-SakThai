# Claude Configuration

This is Beer's private Claude Code configuration repository.
It stores persistent skills, settings, and context that apply across all projects.

## This Repository

`beerthai99/.github-private` is the central store for:
- **Skills** — reusable slash commands under `.claude/skills/`
- **Global settings** — permissions and hooks under `.claude/settings.json` (when created)
- **This file** — context and preferences Claude should always carry

When working on any project, this repo's skills and this CLAUDE.md are the baseline.

## Owner

- **Name:** Beer (Nanthasit)
- **Email:** beernanthasit@gmail.com
- **GitHub:** BeerThai99 (private org), beernanthasit-hub (public)

## Available Skills

| Skill | Command | Purpose |
|-------|---------|---------|
| stop-slop-sakthai | `/stop-slop-sakthai` | Strip AI writing patterns from prose |

### Adding New Skills

Place a `SKILL.md` under `.claude/skills/<skill-name>/` and commit to `main`.
Reference files go in `.claude/skills/<skill-name>/references/`.

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
