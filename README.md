# Claude-SakThai

Beer's private Claude Code configuration repository.

## Contents

| Path | Purpose |
|------|-------|
| `CLAUDE.md` | Global context and preferences loaded at every Claude Code session |
| `.claude/settings.json` | Hook configuration (SessionStart) |
| `.claude/hooks/session-start.sh` | Runs at session start to prepare the remote environment |
| `.claude/skills/` | Custom slash commands available across all projects |

## Skills

| Command | Source |
|---------|--------|
| `/stop-slop` | `beernanthasit-hub/stop-slop-sakthai` |
| `/claude-api`, `/webapp-testing` | `anthropics/skills` |
| `/agent-development`, `/command-development`, `/hook-development`, `/mcp-integration`, `/plugin-settings`, `/plugin-structure`, `/skill-development`, `/writing-hookify-rules` | `anthropics/claude-plugins-public` |
| `/first-run` | `anthropics/claude-quickstarts` |
| `/build-mcp-app`, `/build-mcp-server`, `/claude-automation-recommender`, `/claude-md-improver`, `/frontend-design`, `/session-report` | `anthropics/claude-plugins-public` |

## Adding a Skill

```bash
npx skills add <github-owner/repo>
```

Commit `skills-lock.json` and `.claude/skills/` changes to `main`.

## GitHub Actions

| Workflow | Trigger | Purpose |
|----------|---------|-------|
| `claude.yml` | `@claude` mentions | Claude Code action |
| `CI.yml` | push/PR to main | Validate config, skills sync, hook behaviour |
| `preview.yml` | PR to main | Protected preview validation (requires environment approval) |
| `handle-access-request.yml` | Issue opened/reopened | Acknowledge preview access requests |
