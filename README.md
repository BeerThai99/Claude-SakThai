# Claude-SakThai

Beer's private Claude Code configuration repository.

## Contents

| Path | Purpose |
|------|---------|
| `CLAUDE.md` | Global context and preferences loaded at every Claude Code session |
| `.claude/settings.json` | Hook configuration (SessionStart) |
| `.claude/hooks/session-start.sh` | Runs at session start to prepare the remote environment |
| `.claude/skills/` | Custom slash commands available across all projects |

## Skills

| Command | Description |
|---------|-------------|
| `/stop-slop-sakthai` | Strip AI writing patterns from prose |

## Adding a Skill

1. Create `.claude/skills/<skill-name>/SKILL.md`
2. Add reference files under `.claude/skills/<skill-name>/references/`
3. Commit and merge to `main`

## GitHub Actions

| Workflow | Trigger | Purpose |
|----------|---------|---------|
| `claude.yml` | `@claude` mentions | Claude Code action |
| `CI.yml` | push/PR to main | Validate YAML and check required files |
| `main.yml` | push | Verify session hook is executable |
