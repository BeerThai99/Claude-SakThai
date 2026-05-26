# Security Policy

## Reporting a Vulnerability

This is a private configuration repository. If you find a sensitive credential,
token, or secret accidentally committed, contact the owner directly:

- **Email:** beernanthasit@gmail.com
- **GitHub:** [@BeerThai99](https://github.com/BeerThai99)

Do not open a public issue for security concerns.

## Scope

This repository contains Claude Code configuration files (skills, CLAUDE.md,
workflow definitions). No application code or user data is stored here.

## Audit Log

| Date | Action | Details |
|------|--------|---------|
| 2026-05-26 | Repository created | Initial `.github-private` setup |
| 2026-05-26 | Skill added | `stop-slop-sakthai` — AI writing pattern removal |
| 2026-05-26 | CLAUDE.md added | Global Claude Code configuration |
| 2026-05-26 | Workflows fixed | Removed invalid `.yml`, fixed `main.yml` broken action reference |
| 2026-05-26 | Security policy added | This file |
| 2026-05-26 | Replaced Copilot with Claude | Removed `copilot-setup-steps.yml`; Claude Code handled by `claude.yml` |
| 2026-05-26 | Hardened CI | Replaced boilerplate workflows with YAML validation and required-file checks |
| 2026-05-26 | Fixed docbot config | Corrected `wai-docbot.yml` docs folder from `_docs` to `docs` |
| 2026-05-26 | Updated README | Reflects repo rename to `Claude-SakThai` and documents all contents |
