# Getting Started

This repo is Beer's central Claude Code configuration store. It provides persistent skills, settings, and a session hook that apply across all projects opened in Claude Code on the web.

## Prerequisites

- A Claude Code account (claude.ai/code)
- Git access to this repository
- `node` + `npx` for managing skills via the skills CLI

## How it works

When a Claude Code web session starts, it clones this repo and runs `.claude/hooks/session-start.sh`. That hook sets up the environment. All skills in `.claude/skills/` are available as slash commands in every session.

## First-time setup

```bash
git clone https://github.com/BeerThai99/Claude-SakThai
cd Claude-SakThai
```

No dependencies to install — this repo is configuration only. Skills are stored as `SKILL.md` files in `.claude/skills/<skill-name>/`.

## Managing skills

Skills are installed and locked via the skills CLI:

```bash
# Add a skill from a GitHub repo
npx skills add anthropics/claude-plugins-public

# Remove a skill
npx skills remove <skill-name>
```

After any change, `skills-lock.json` and `.claude/skills/` must stay in sync — CI enforces this automatically.

## Running CI checks locally

All CI steps are standard Python and bash, so you can run them before pushing:

```bash
# Validate YAML
python3 -c "import yaml; yaml.safe_load(open('.github/workflows/CI.yml'))"

# Test session hook
bash .claude/hooks/session-start.sh
CLAUDE_CODE_REMOTE=true bash .claude/hooks/session-start.sh

# Validate settings.json
python3 -c "import json; s=json.load(open('.claude/settings.json')); print('OK')"

# Check skills sync
python3 -c "
import json, os
lock = json.load(open('skills-lock.json'))
installed = set(os.listdir('.claude/skills'))
locked = set(lock['skills'].keys())
print('Missing:', locked - installed)
print('Extra:', installed - locked)
"
```

## Branch and PR workflow

See [CONTRIBUTING.md](CONTRIBUTING.md).

## Session hook

See [SESSION_START.md](SESSION_START.md).
