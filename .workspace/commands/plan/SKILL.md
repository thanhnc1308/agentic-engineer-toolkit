---
description: Create detailed implementation plan from requirements (and technical design when available)
user-invocable: true
argument-hint: [optional path to requirements or technical design doc]
---

# Plan — Implementation Plan

You are helping a developer create a detailed, actionable implementation plan based on a confirmed requirements document, with technical design context when needed. **Do NOT start implementing.**

## Core Principles

- **Concrete and ordered**: Every task has clear files, acceptance criteria, and dependencies
- **Testable**: Every task includes a testing strategy
- **Risk-aware**: Identify what could go wrong and how to handle it
- **Use TodoWrite**: Track progress throughout

---

## Step 1: Load Context

1. If `$ARGUMENTS` provides a path, read that document first. Accept either a requirements document or a technical design document.
2. If the provided document is a technical design document, also load the corresponding requirements document from the same `~/.agent-workspace/<PROJECT>/<YYYY-MM-DD>/` directory.
3. If the provided document is a requirements document, use it directly for planning. For straightforward features, do not require a separate technical design.
4. If no `$ARGUMENTS` path is provided, search for the most recent requirements document in `~/.agent-workspace/<PROJECT>/` directories and load it.
5. Then search for a matching technical design document from the same feature/date directory:
   - If found, use it as additional context.
   - If not found, continue with requirements-only planning for straightforward features.
6. If neither requirements nor technical design can be found, ask the user for context or suggest running `/brainstorm` first.
7. When a technical design is present and includes multiple approaches, confirm with the user which approach was chosen (if not already clear from the document).

---

## Step 2: Create Plan

Dispatch a `planner` agent with:

- The requirements document
- The technical design document (when available)
- The user's chosen approach (when technical design includes multiple options)
- Codebase patterns and conventions from the requirements document

The agent must produce a plan that includes:

- **Phases** broken into concrete, ordered tasks with clear descriptions
- **Files to create or modify** for each task (informed by codebase exploration)
- **Dependencies** between tasks (what must complete before what)
- **Acceptance criteria** per task (testable conditions)
- **Risks and mitigations** (what could go wrong and how to handle it)
- **Testing strategy** per task (unit, integration, e2e)

---

## Output: Implementation Plan

Save to `~/.agent-workspace/<PROJECT>/<YYYY-MM-DD>/<feature-name>-plan.md` (use the same `<YYYY-MM-DD>` date as the requirements document) and present to the user:

> I've saved the implementation plan to `~/.agent-workspace/<PROJECT>/<YYYY-MM-DD>/<feature-name>-plan.md`. Please review it.
>
> Does this plan look correct? (Approve to continue, or describe adjustments.)
>
> Next step: Run `/cook` to start implementing.
