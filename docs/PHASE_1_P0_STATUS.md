# SakuraLearn Phase 1 P0 Status

Last updated: 2026-05-17

This document is the current truth map for Phase 1 P0. It does not replace the older roadmap documents; it records what is now verified in code after the P0 hardening pass.

## P0 Completed

- SRS calculation was extracted from `NotebookService` into `SrsCalculatorService`.
- SRS now has focused unit tests for first review, second review, later review, failed review reset, ease-factor floor, and invalid quality.
- Notebook folder access now checks ownership before reading folder items, adding an item to a folder, adding custom items, and filtering SRS cards by folder.
- Flashcard review ownership now returns a dedicated forbidden error instead of a generic runtime failure.
- Learning progress now requires course enrollment before updating access, block progress, lesson completion, block progress reads, and completed lesson reads.
- Negative media resume timestamps are rejected.
- User-generated review content, notebook notes, folder names, folder descriptions, and custom notebook fields are sanitized with a shared `TextSanitizer`.
- Backend test profile no longer tries to auto-create a PostgreSQL-specific schema in H2.
- Maven wrapper was patched so it runs correctly on the current PowerShell environment.

## Verified Tests

Backend command:

```powershell
cd sakuralearn-backend
.\mvnw.cmd test
```

Result:

```text
Tests run: 12, Failures: 0, Errors: 0, Skipped: 0
```

Covered areas:

- Spring context smoke test.
- SRS calculator logic.
- Text sanitizer.
- Notebook ownership checks.
- Progress enrollment guard and course progress recalculation.

## Phase 1 Truth Map

Module 1 - Auth and identity:

- Status: implemented core flow.
- P0 status: stable enough for MVP demo.
- Remaining after P0: broader auth integration tests and production token-storage hardening.

Module 2 - Course and lesson management:

- Status: implemented core CRUD, lesson blocks, publishing basics, AI syllabus backend pieces.
- P0 status: usable for demo.
- Remaining after P0: approval workflow `DRAFT -> PENDING -> PUBLISHED` and AI syllabus frontend polish.

Module 3 - Learning experience and progress:

- Status: implemented learning view, block progress, resume timestamp, lesson/course progress.
- P0 status: hardened with enrollment checks and progress tests.
- Remaining after P0: richer personal notes UI and video/audio completion threshold policy.

Module 4 - Dictionary and notebook:

- Status: implemented dictionary browsing/search, notebook folders, saved items.
- P0 status: notebook folder ownership is now enforced.
- Remaining after P0: batch hydration to reduce N+1 queries and better search indexing.

Module 5 - SRS:

- Status: implemented SM-2 style review, daily limit, review UI.
- P0 status: calculator extracted and tested.
- Remaining after P0: optional FSRS upgrade and review insights.

Module 6 - Monetization and notification:

- Status: planned/partially represented in docs and schema, not verified as a complete application module.
- P0 status: not part of Phase 1 release gate.
- Next step: implement payment state machine, VNPay sandbox, IPN idempotency, and notification table/UI in Phase 2 or Phase 3.

Module 7 - Administration and analytics:

- Status: user management, dashboard statistics, and audit logging foundation exist.
- P0 status: enough for basic admin demo, not full analytics.
- Next step: admin audit log viewer, quick actions, and course moderation.

Module 8 - Gamification:

- Status: XP/streak fields and small XP trigger exist, but not a complete gamification engine.
- P0 status: not a Phase 1 blocker.
- Next step: define XP events, streak server policy, badge rules, and daily quests.

## Release Recommendation

Phase 1 can move toward beta demo after one manual demo pass:

1. Login.
2. Open course list.
3. Enroll in a course.
4. Learn a lesson.
5. Save progress with resume timestamp.
6. Search dictionary.
7. Save item to notebook.
8. Review item through SRS.

Do not market Module 6 or Module 8 as complete until their code-level workflows exist.
