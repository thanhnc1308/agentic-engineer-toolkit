# Competency Examples (Developer (L3))

Use these examples as evidence prompts for Developer (L3) competency calibration.

## Personal Growth

### Growth Mindset (pg1)

- Completed a course on a new framework (e.g. Go, Kafka, React) and applied it in a PR within the same sprint.
- Tried a new AI coding tool (e.g. Cursor, Copilot) and shared a Slack post on what worked and what didn't.
- Read a post-incident review and proactively applied a lesson to your own service without being asked.

### Feedback & Reflection (pg2)

- Raised a concern in a design session, suggested an alternative, then committed fully once the team decided.
- Asked for specific feedback after a code review — e.g. 'Was my naming clear? Is there a pattern I'm missing?'
- After a retro action item, followed up the next sprint to report on progress rather than waiting to be asked.

## Collaboration

### Stakeholder Engagement (col1)

- Attended a cross-team sync and flagged a dependency risk early, allowing the PM to adjust the timeline.
- Wrote a clear Slack update to a partner team explaining a breaking API change and what they needed to do.
- Asked a PM clarifying questions before starting work and documented the answers in the ticket to avoid rework.

### Mentoring & Multiplying (col2)

- Paired with a graduate developer for a week to help them ship their first production feature independently.
- Wrote a how-to guide for setting up the local dev environment after noticing it was slowing down new starters.
- Participated as an active interviewer and submitted structured feedback within 24 hours.

## Team Impact

### Team Process Contribution (ti1)

- Presented a completed feature at the fortnightly engineering demo with a clear before/after customer impact explanation.
- Raised a retro action about unclear ticket acceptance criteria and followed up with a template the team adopted.
- Came to backlog refinement with estimates and questions prepared, reducing the session time for the whole team.

### Hiring Involvement (ti2)

- Conducted a technical interview and submitted structured written feedback with a hire/no-hire recommendation.
- Shadowed two senior developer interviews to calibrate your assessment approach before leading independently.
- Contributed a new coding question to the interview question bank based on a real problem from the team's codebase.

## Dealing with Ambiguity

### Navigating Uncertainty (amb1)

- Started work on a partially defined ticket by documenting assumptions and confirming with the PM before building.
- Hit a blocker with an external dependency and unblocked yourself by finding a workaround while escalating the root cause.
- A requirement changed mid-sprint and you re-estimated, updated the ticket, and communicated the impact without waiting.

### Decision Making (amb2)

- Disagreed with a proposed solution, clearly stated your reasoning, then committed fully and positively once the team decided.
- Escalated a production risk to your tech lead within the same day rather than trying to resolve it alone.
- Made a call on an implementation approach independently and documented the trade-offs in the PR description.

## Delivery

### Scope of Delivery (del1)

- Shipped a new API endpoint end-to-end — including schema, validation, tests, logging, and documentation — with no rework needed.
- Identified your feature change would affect a consumer team's integration and proactively reached out before merging.
- Phased a large feature into smaller PRs so the team could review and ship incrementally, getting value to staging 2 weeks earlier.

### Technical Vision (del2)

- In backlog refinement, flagged that two upcoming tickets had a shared dependency and suggested doing them in sequence.
- Connected a technical task back to a customer outcome in your sprint demo — e.g. 'This reduces load time by 40%.'
- Asked the PM about the 3-month roadmap before starting an architectural decision to ensure the approach wouldn't need reversing.

## Quality

### Code Quality & Testing (qual1)

- Submitted a PR with unit and integration tests covering the happy path and 2+ edge cases with no major coverage comments.
- Refactored a function to be more testable (e.g. dependency injection) even though it wasn't in scope for the ticket.
- Caught a logic bug in someone else's PR by tracing through test cases and noting a missing scenario.

### Tech Debt & Legacy (qual2)

- While working on a legacy module, identified a repeated anti-pattern and cleaned it up across the file.
- Raised a tech debt ticket with a clear description of the risk and estimated effort, making it easy to prioritise.
- Replaced a deprecated library in a service you were already working in, documented the change, and updated the relevant tests.

## Operations

### CI/CD & Pipelines (ops1)

- Added structured logging to a new endpoint using the team's standard logger, including correlation IDs, so requests were traceable.
- Noticed the CI pipeline was running redundant steps and raised a ticket (or fixed it) that cut build time by 20%.
- Created an alarm for a new service metric (e.g. error rate > 1%) and tested it triggered correctly before going to production.

### Security & Reliability (ops2)

- Identified and fixed a potential SQL injection vulnerability during self-review before the PR was submitted for code review.
- Ensured secrets were stored in the secrets manager rather than environment variables when setting up a new integration.
- Ran a dependency audit and raised a ticket for a high-severity CVE found in a third-party package.

## AI/GenAI — Systems Thinking

### Business Context for AI (ai1)

- When using an AI coding tool, provided a detailed prompt including the existing data model, constraints, and acceptance criteria — output required minimal rework.
- Before using AI to generate a new module, reviewed existing codebase conventions and included them explicitly in your prompt context.
- Caught an AI suggestion that would have violated a team coding standard and corrected the prompt to produce a compliant result.

### Delta Identification (ai2)

- Broke a feature into discrete steps before prompting an AI tool, resulting in smaller, reviewable outputs rather than one large unverifiable block.
- Identified that AI-generated code was solving the wrong problem before merging and re-prompted with a corrected spec.
- Used AI to generate a diff between two approaches and used that to make a clearer recommendation in a design discussion.

## AI/GenAI — Attention to Detail

### AI Output Validation (ai3)

- Reviewed AI-generated code line by line, caught a missing null check that would have caused a runtime error in production.
- Tested an AI-generated function against 5 edge cases (not just the happy path) before including it in a PR.
- Identified that AI-generated code was technically correct but used an inefficient O(n²) approach and replaced it with O(n).

### AI Practice Improvement (ai4)

- Saved a well-crafted prompt in the team's shared prompt library with context on when to use it and what quality to expect.
- Experimented with 3 different prompt approaches for the same task, compared outputs, and documented the best-performing approach.
- Noticed AI was consistently producing a specific type of error and updated your prompt template to prevent it.
