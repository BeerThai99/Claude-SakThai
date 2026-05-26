# Claude-SakThai

Beer's global Claude Code configuration repository. Skills, hooks, and settings defined here apply automatically to every project opened in Claude Code on the web.

## What's inside

| Path | Purpose |
|---|---|
| `CLAUDE.md` | Global context — coding preferences, git workflow, new-repo checklist |
| `.claude/settings.json` | SessionStart hook registration |
| `.claude/hooks/session-start.sh` | Runs on every remote session start |
| `.claude/skills/stop-slop-sakthai/` | `/stop-slop` skill — strips AI writing patterns from prose |
| `.github/workflows/claude.yml` | Triggers Claude Code on `@claude` mentions in PRs and issues |
| `.github/workflows/CI.yml` | Validates repo structure on every push |
| `.github/wai-docbot.yml` | Woden AI Docbot configuration |

## Adding a skill

```bash
npx skills add <github-user>/<repo>
git add skills-lock.json .claude/skills/
git commit -m "Add <skill-name> skill"
```

## Owner

- **GitHub:** [BeerThai99](https://github.com/BeerThai99) (org) · [beernanthasit-hub](https://github.com/beernanthasit-hub) (public)
