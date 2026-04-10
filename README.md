# Agentic Engineer Toolkit

An agentic engineering toolkit for full-stack software development across multiple AI coding agents. Install individual plugins per project to get context-aware skills, rules, agents, and commands.

This repo supports both Claude Code and Codex:

- Claude Code: plugin marketplace + project plugins
- Codex: symlink agents/skills plus command skill directories into `~/.codex` and use `AGENTS.md`

## Installation

### Claude Code (Marketplace)

Add this marketplace to Claude Code:

```bash
/plugin marketplace add thanhnc1308/agentic-engineer-toolkit
```

Then install plugins per project:

```bash
/plugin install <plugin-name>@agentic-engineer-toolkit
```

For local development in this repository, `.workspace/` is the source of truth. Plugins expose content by symlinking into `.workspace/`.

### Codex (Local Workspace)

Codex can use the same workspace content directly:

```bash
./scripts/setup-codex.sh
```

Use [`AGENTS.md`] for Codex project instructions and [`CLAUDE.md`] for Claude Code instructions. Keep both aligned.

## Codex Configuration

### Enable Write Access to `~/.agent-workspace`

1. Open Codex config file:
   - `~/.codex/config.toml`
2. Ensure sandbox mode is `workspace-write`:

```toml
sandbox_mode = "workspace-write"
```

Set writable roots to include only your target path:

```toml
[sandbox_workspace_write]
writable_roots = ["/Users/<your-username>/.agent-workspace"]
```

### Persist Approval for PR Read Commands (`gh`)

To avoid repeated approval prompts for PR read operations, add prefix rules to:

- `~/.codex/rules/default.rules`

```txt
prefix_rule(pattern=["gh", "pr", "diff"], decision="allow")
prefix_rule(pattern=["gh", "pr", "view"], decision="allow")
```

These rules allow read-only PR inspection commands. Write actions (for example comments/reviews via `gh`) should be approved separately.

Use the helper script in this repo for temporary toggling:

```bash
./scripts/toggle-codex-gh-pr-rules.sh enable
./scripts/toggle-codex-gh-pr-rules.sh status
./scripts/toggle-codex-gh-pr-rules.sh disable
```

## Enable Claude Code Write Access to `~/.agent-workspace`

1. Open Claude Code settings file:
   - `~/.claude/settings.json`
2. Add the target directory to `permissions.additionalDirectories`.
3. Allow edits under that path with an `Edit(...)` permission rule.

```json
{
  "permissions": {
    "additionalDirectories": ["/Users/<your-username>/.agent-workspace"],
    "allow": ["Edit(//Users/<your-username>/.agent-workspace/**)"]
  }
}
```

## Adding a New Plugin

### Quick Start

```bash
chmod +x scripts/init-plugin.sh
./scripts/init-plugin.sh <plugin-name>
```

### Manual Steps

1. Create `plugins/<plugin-name>/`.
2. Add `plugins/<plugin-name>/.claude-plugin/plugin.json`.
3. Add any of `skills/`, `commands/`, `agents/`, `rules/` as needed.
4. Register the plugin in `.claude-plugin/marketplace.json`.
5. Run `npm test` and `npm run lint`.

## References

- [superpowers](https://github.com/obra/superpowers)
- [everything-claude-code](https://github.com/affaan-m/everything-claude-code)
- [claudekit-skills](https://github.com/mrgoonie/claudekit-skills)
