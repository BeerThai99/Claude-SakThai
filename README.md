# .github-private

Beer's private Claude Code configuration repository.

## Contents

| Path | Purpose |
|------|---------|
| `CLAUDE.md` | Global context and preferences loaded at every Claude Code session |
| `.claude/skills/` | Custom slash commands available across all projects |

## Skills

| Command | Description |
|---------|-------------|
| `/stop-slop-sakthai` | Strip AI writing patterns from prose |

## Adding a Skill

1. Create `.claude/skills/<skill-name>/SKILL.md`
2. Add any reference files under `.claude/skills/<skill-name>/references/`
3. Commit and merge to `main`

The skill is available in Claude Code immediately after merge.
