# Session Start Hook

`.claude/hooks/session-start.sh` runs automatically at the beginning of every Claude Code web session. It is registered in `.claude/settings.json` under the `SessionStart` hook type.

## What it does

```bash
#!/bin/bash
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

echo "Session environment ready."
```

- `set -euo pipefail` — any error, unset variable, or pipe failure aborts the script immediately.
- The `CLAUDE_CODE_REMOTE` guard ensures the hook only runs in remote web sessions, not in local CLI sessions where it would be a no-op anyway.
- The `echo` line confirms startup in the session transcript.

## How the hook is registered

`.claude/settings.json`:

```json
{
  "hooks": {
    "SessionStart": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "$CLAUDE_PROJECT_DIR/.claude/hooks/session-start.sh"
          }
        ]
      }
    ]
  }
}
```

`$CLAUDE_PROJECT_DIR` is set by Claude Code to the root of the cloned repo.

## Extending the hook

When this repo gains dependencies, add install commands inside the `CLAUDE_CODE_REMOTE` block:

```bash
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# Install Node dependencies if package.json exists
if [ -f package.json ]; then
  npm ci --silent
fi

# Install Python dependencies if requirements.txt exists
if [ -f requirements.txt ]; then
  pip install -q -r requirements.txt
fi

echo "Session environment ready."
```

Keep the hook fast — it runs on every session start. Avoid heavy operations; use cached installs where possible.

## CI validation

Two CI checks cover this hook:

1. **File presence + executability** — `CI.yml` asserts the script exists and has the executable bit set.
2. **Functional test** — `CI.yml` runs the script in both code paths and asserts the correct output and exit code.
