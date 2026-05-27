# Contributing

This is a private configuration repository. Direct pushes to `main` are blocked. All changes go through pull requests.

## Who can contribute

Anyone can fork this repo and open a pull request. Merging requires approval from @BeerThai99 (enforced via `CODEOWNERS` and branch protection on `main`).

## Branch naming

Use the pattern `claude/<short-description>-<id>` for feature branches:

```
claude/add-new-skill-xyz
claude/fix-session-hook-abc
```

## Opening a pull request

1. Fork the repo (or create a branch if you have write access).
2. Make your changes on a feature branch.
3. Push and open a PR targeting `main`.
4. CI runs automatically — all checks must pass before review.
5. @BeerThai99 reviews and merges.

## Preview environment

The **Preview** workflow runs inside a protected GitHub Environment and requires explicit approval before it starts. This lets the repo owner verify what a PR would do before CI touches the live config.

To trigger preview validation on your PR, the workflow runs automatically — but it will wait for an approved reviewer to allow the environment deployment. If you need preview access as a regular contributor, file a [Preview Access Request](https://github.com/BeerThai99/Claude-SakThai/issues/new?template=preview-access-request.yml).

## What CI checks

All checks are in `.github/workflows/CI.yml`:

| Check | What fails |
|-------|-----------|
| YAML validation | Malformed workflow files |
| Required files | Missing `settings.json`, `session-start.sh`, or `stop-slop/SKILL.md` |
| Skills sync | `skills-lock.json` out of sync with `.claude/skills/` |
| Session hook behavior | Hook exits non-zero or prints unexpected output |
| `settings.json` structure | Invalid JSON or missing hook keys |
| Skills entry schema | Missing fields, bad `source` format, wrong hash length, missing local `SKILL.md` |
| CLAUDE.md drift | Skills table in `CLAUDE.md` doesn't match `skills-lock.json` |

Run checks locally before pushing — see [GETTING_STARTED.md](GETTING_STARTED.md).

## Commit messages

- Present tense, concise, explain the *why* not the *what*
- No emoji unless the content demands it
- One focused commit per logical change; avoid WIP commits on PR branches
