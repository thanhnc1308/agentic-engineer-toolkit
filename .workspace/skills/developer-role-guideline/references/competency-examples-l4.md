# Competency Examples (Senior Developer (L4))

Use these examples as evidence prompts for Senior Developer (L4) competency calibration.

## Personal Growth

### Growth Mindset (pg1)

- Identified a gap in your own technical area and ran an internal session sharing what you learned.
- Reviewed a junior's PR, identified a teachable pattern, and wrote it up as a team guideline.
- Changed a technical stance you previously held after new evidence emerged and documented the reasoning.

### Feedback & Reflection (pg2)

- Facilitated a team retro where two engineers had conflicting views and helped them reach a shared decision.
- Received critical feedback on a design doc and publicly updated your approach, crediting the feedback in the PR.
- Proactively sought 360 feedback from a PM, a junior dev, and a peer before your performance review cycle.

## Collaboration

### Stakeholder Engagement (col1)

- Led a technical alignment session between two teams with conflicting API contracts and produced a written decision doc.
- Presented a system-level design to stakeholders outside engineering and adjusted the level of detail based on feedback.
- Proactively raised a scope risk to the VP of Engineering with a proposed mitigation plan before it became a missed deadline.

### Mentoring & Multiplying (col2)

- Introduced a shared PR template that cut average review time by 30%.
- Ran a lunch-and-learn on a topic the team had been struggling with (e.g. writing good integration tests).
- Identified a bottleneck in the team's release process and automated a manual step, freeing up ~2 hours per deploy.

## Team Impact

### Team Process Contribution (ti1)

- Identified the team's on-call rotation lacked runbooks and created 5 runbooks for the most common alert types.
- Noticed sprint velocity was inconsistent and introduced story point calibration sessions that improved estimation accuracy.
- Implemented a developer experience improvement (e.g. faster local build) that the whole team uses daily.

### Hiring Involvement (ti2)

- Interviewed 3+ Senior Developer candidates in a quarter with detailed feedback contributing to consistent decisions.
- Identified a candidate was strong in one area but weak in another and clearly articulated the trade-off to the panel.
- Helped calibrate a newer interviewer by debriefing together after a joint interview, explaining your reasoning.

## Dealing with Ambiguity

### Navigating Uncertainty (amb1)

- Took a vague initiative brief and ran a scoping session that produced a problem statement, constraints, and a delivery plan.
- A third-party API changed unexpectedly in production; you diagnosed it, communicated the impact within the hour, and shipped a fix same day.
- Led technical direction on a project where requirements shifted twice, kept the team aligned, and delivered on the revised timeline.

### Decision Making (amb2)

- Owned a build-vs-buy decision, evaluated 3 options, wrote a recommendation doc, and presented it to the engineering lead.
- Made a call to pause a feature mid-sprint due to an emerging security risk, communicated the reasoning, and got team buy-in.
- Disagreed with a direction from a Principal Developer, raised the concern respectfully with data, and documented the outcome.

## Delivery

### Scope of Delivery (del1)

- Designed and delivered a system-level feature spanning 3 microservices, including API contracts, event schema, and rollout strategy.
- Led a cross-team technical design for a shared infrastructure component, got buy-in from 2 partner teams, and oversaw delivery.
- Identified an upcoming feature would create a fan-out performance issue at scale and redesigned the approach before production.

### Technical Vision (del2)

- Contributed a technical section to the team's 6-month planning exercise, including risks, capacity estimates, and phasing.
- Identified two separate roadmap items could share infrastructure and proposed a combined approach that saved 3 weeks of dev time.
- Raised a long-term scalability concern in a quarterly planning session and quantified the cost of not addressing it now vs later.

## Quality

### Code Quality & Testing (qual1)

- Introduced a testing standard (e.g. contract testing for APIs) and created a reusable template that 3+ engineers adopted.
- Set up automated quality gates in CI (e.g. coverage thresholds, linting) that reduced escaped bugs in staging.
- Identified a systemic gap in the team's test coverage through incident review and led a 2-week quality uplift sprint.

### Tech Debt & Legacy (qual2)

- Created a tech debt register for your team's services, triaged items by risk and effort, and got 3 items scheduled next quarter.
- Pushed back on a proposed quick fix that would have increased long-term maintenance cost and proposed a cleaner approach.
- Led a legacy migration by breaking it into safe, reversible phases shipped over 6 weeks with zero downtime.

## Operations

### CI/CD & Pipelines (ops1)

- Audited the team's CI/CD pipelines, identified 3 gaps (e.g. no smoke tests post-deploy), and fixed them within a sprint.
- Defined availability and error budget targets for your team's services and set up a dashboard making SLO status visible in real time.
- Led an incident that revealed a gap in your deployment process and shipped a pipeline improvement within the same week.

### Security & Reliability (ops2)

- Conducted a security review of a new system design and identified 2 issues (e.g. missing auth on an endpoint) before go-live.
- Introduced a team-wide practice of including a security checklist in PRs for any changes touching auth, data storage, or external integrations.
- Led a post-incident review after a security-related issue, identified the root cause, and shipped a fix with a supporting runbook.

## AI/GenAI — Systems Thinking

### Business Context for AI (ai1)

- Wrote a structured AI prompt brief for a multi-service feature including system context, data flow, constraints, and expected outputs.
- Used AI to scaffold a new service and verified the generated code aligned with Go1's architecture patterns and security standards before sharing.
- Identified where AI-assisted development would and wouldn't be appropriate in a project plan and documented the rationale to guide the team.

### Delta Identification (ai2)

- Mapped a complex system change into a sequence of AI-assisted steps, each independently testable, and used this as a delivery plan.
- Identified that an AI-generated design would introduce a circular dependency between two services and restructured the prompt to produce a clean architecture.
- Created a reusable prompt template for a common pattern in your team's codebase that others could use for consistent, high-quality output.

## AI/GenAI — Attention to Detail

### AI Output Validation (ai3)

- Reviewed AI-generated infrastructure code and identified a misconfigured IAM policy that would have granted overly broad permissions.
- Validated AI-generated load-handling logic under simulated peak traffic and found it would cause a cascade failure above 500 RPS.
- Established a team checklist for reviewing AI-generated code covering correctness, security, scalability, observability, and coding standards.

### AI Practice Improvement (ai4)

- Defined the team's AI development standards: what to prompt, how to review output, when not to use AI — merged into the engineering handbook.
- Ran a team retro specifically on AI tool usage, identified 2 pain points, and shipped process improvements that reduced rework by ~40%.
- Introduced a peer review step specifically for AI-generated code in the team's PR process, with a documented rationale and checklist.
