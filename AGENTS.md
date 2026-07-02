# Agent instructions (SakuraLearn)

Before making changes in this repository, read the onboarding pack:

**[`AI đánh giá/README.md`](AI%20đánh%20giá/README.md)** — then files `01` through `06` in that folder.

Quick rules:

- **Truth order:** running code → `HienTrang/PHASE_1_P0_STATUS.md` → `docs/*_REMAINING_TASKS.md` → `docs/00_MASTER_SPECIFICATION.md` (vision only).
- **Module 6 (payment) and Module 8 (gamification)** are not implemented in Java/React — database schema only.
- **Do not edit** applied Flyway migrations (`V1`–`V7`); add forward migrations (`V8+`) only.
- **Frontend:** use `VITE_API_BASE_URL` and `src/services/api.js` — no hardcoded `localhost:8080` fetch.
- **Backlog index:** [`docs/README.md`](docs/README.md).
- **Save chat context:** new chat per task; `@AI đánh giá/README.md` instead of `@Codebase` for overview. Heavy paths excluded in [`.cursorignore`](.cursorignore).
