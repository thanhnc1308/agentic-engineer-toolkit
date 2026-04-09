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

## Available Plugins

| Plugin            | Category  | Description                                                                         |
| ----------------- | --------- | ----------------------------------------------------------------------------------- |
| `eng-toolkit`     | Workflow  | Full-stack workflow for planning, implementation, review, testing, and verification |
| `typescript`      | Language  | TypeScript conventions, type safety, and refactoring patterns                       |
| `nestjs`          | Framework | NestJS architecture, dependency-injection patterns, and module organization         |
| `nextjs`          | Framework | Next.js App Router architecture, patterns, and best practices                       |
| `agentic-helpers` | Tools     | Cross-platform helper tools, commands, and support agents                           |
| `git`             | Tools     | Git workflow commands with Conventional Commits conventions                         |

## Commands

### eng-toolkit

| Command        | Description                                           |
| -------------- | ----------------------------------------------------- |
| `/brainstorm`  | Start a brainstorming workflow                        |
| `/plan`        | Create a structured implementation plan               |
| `/research`    | Run guided research workflow                          |
| `/debug`       | Perform structured debugging                          |
| `/fix`         | Execute a bug-fix workflow                            |
| `/fix-test`    | Diagnose and repair failing tests                     |
| `/fix-ci`      | Diagnose and repair CI failures                       |
| `/test`        | Run test-focused workflow                             |
| `/refactor`    | Safely refactor with verification                     |
| `/verify`      | Verify work before completion                         |
| `/review-pr`   | Review pull requests with specialized review workflow |
| `/tech-design` | Produce technical design artifacts                    |
| `/cook`        | Transform intent into actionable implementation steps |

### git

| Command             | Description                                    |
| ------------------- | ---------------------------------------------- |
| `/git-cm`           | Stage changes and create a conventional commit |
| `/git-pr`           | Create a draft pull request                    |
| `/setup-pre-commit` | Configure local pre-commit automation          |

### agentic-helpers

| Command                         | Description                                               |
| ------------------------------- | --------------------------------------------------------- |
| `/create-plugin`                | Guided end-to-end plugin creation workflow                |
| `/generate-default-permissions` | Create secure default project permissions for Claude Code |
| `/learn`                        | Extract reusable patterns from current session            |
| `/revise-claude-md`             | Update `CLAUDE.md` with session learnings                 |
| `/sessions`                     | Manage session history and aliases                        |
| `/use-mcp`                      | Execute tasks via MCP tools using the `mcp-manager` flow  |

## Recommended Sets

### General Development

```bash
/plugin install eng-toolkit@agentic-engineer-toolkit
/plugin install git@agentic-engineer-toolkit
/plugin install agentic-helpers@agentic-engineer-toolkit
```

### NestJS Project

```bash
/plugin install eng-toolkit@agentic-engineer-toolkit
/plugin install nestjs@agentic-engineer-toolkit
/plugin install typescript@agentic-engineer-toolkit
/plugin install git@agentic-engineer-toolkit
```

### Next.js Project

```bash
/plugin install eng-toolkit@agentic-engineer-toolkit
/plugin install nextjs@agentic-engineer-toolkit
/plugin install typescript@agentic-engineer-toolkit
/plugin install git@agentic-engineer-toolkit
```

## Local Development

```bash
./scripts/setup-claude.sh
./scripts/setup-codex.sh
npm run lint
npm test
```

`.workspace/` is the canonical dev environment for both tools.

### Validation Scripts

- `node scripts/ci/validate-agents.js`
- `node scripts/ci/validate-commands.js`
- `node scripts/ci/validate-rules.js`
- `node scripts/ci/validate-skills.js`
- `node scripts/ci/validate-hooks.js`
- `node scripts/ci/validate-plugin-json.js`
- `node scripts/ci/validate-symlinks.js`

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
