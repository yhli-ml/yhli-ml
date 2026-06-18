# Project Rules for Codex

Before starting work:

- Read `AGENTS.md`, `README_WORKFLOW.md`, `RUNS.md`, and `DECISIONS.md`.
- If `CODEX_HISTORY.md` exists, read it to continue prior Codex context.
- Confirm the current directory is the project root.
- Review the relevant files before modifying code.

Safety rules:

- Do not modify data files, result files, secrets, credentials, private keys, tokens, or sensitive configuration values.
- Do not move, delete, or rename files unless the task explicitly requires it.
- Do not run long jobs directly on an unconfirmed remote server.
- Long jobs must be launched through the workflow defined by this project.

After making changes:

- Show `git status`.
- Show a concise `git diff` summary.
- Report tests or checks that were run.
- Record important runs in `RUNS.md` when relevant.
- Record durable decisions in `DECISIONS.md` when relevant.
