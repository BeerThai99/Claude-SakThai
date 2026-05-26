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

| Command | Source |
|---------|--------|
| `/stop-slop` | `beernanthasit-hub/stop-slop-sakthai` |
| `/algorithmic-art`, `/brand-guidelines`, `/canvas-design`, `/claude-api`, `/doc-coauthoring`, `/docx`, `/frontend-design`, `/internal-comms`, `/mcp-builder`, `/pdf`, `/pptx`, `/skill-creator`, `/slack-gif-creator`, `/template-skill`, `/theme-factory`, `/web-artifacts-builder`, `/webapp-testing`, `/xlsx` | `anthropics/skills` |
| `/agent-development`, `/command-development`, `/hook-development`, `/mcp-integration`, `/plugin-settings`, `/plugin-structure`, `/skill-development`, `/writing-hookify-rules`, `/claude-opus-4-5-migration` | `anthropics/claude-code` |
| `/first-run` | `anthropics/claude-quickstarts` |
| `/access`, `/build-mcp-app`, `/build-mcp-server`, `/build-mcpb`, `/cardputer-buddy`, `/claude-automation-recommender`, `/claude-md-improver`, `/configure`, `/m5-onboard`, `/math-olympiad`, `/playground`, `/session-report` | `anthropics/claude-plugins-public` |

## Adding a Skill

```bash
npx skills add <github-owner/repo>
```

Commit `skills-lock.json` and `.claude/skills/` changes to `main`.

## GitHub Actions

| Workflow | Trigger | Purpose |
|----------|---------|---------|
| `claude.yml` | `@claude` mentions | Claude Code action |
| `CI.yml` | push/PR to main | Validate YAML and check required files |
| `main.yml` | push | Verify session hook is executable |
