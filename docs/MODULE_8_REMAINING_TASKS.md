# 🌸 MODULE 8: Gamification & Enhancement — Trạng thái & Nhiệm vụ còn lại

> **⚠️ Lệch pha:** `MODULE_8_GAMIFICATION_ENHANCEMENT.md` / Master Spec mô tả XP, badge, pet, quest — **code chỉ có cột `User.xp`, streak và cộng XP đơn giản khi quiz**.  
> **DB:** `badges`, `user_badges`, `xp_transactions` trong V1 — **chưa có entity Java**.

## 1. Đánh giá hiện trạng

| Tính năng | DB V1 | Backend | Frontend |
|-----------|-------|---------|----------|
| XP trên User | ✅ | 🟡 Cộng điểm quiz đơn giản | 🟡 Hiển thị trên dashboard |
| Streak | ✅ cột | ❌ Không policy server | 🟡 UI có thể hiển thị giá trị tĩnh |
| Badges | ✅ | ❌ | ❌ |
| XP events / ledger | ✅ `xp_transactions` | ❌ | ❌ |
| Leaderboard | schema/comments | ❌ | ❌ |
| Daily quests | spec | ❌ | ❌ |
| Comments đa ngôn ngữ | ✅ `comments` | ❌ | ❌ |

## 2. Công việc — Phase 2 (Thiết kế + nền)

- [ ] **XP event model:** `XpTransaction` entity — `source` (LESSON_COMPLETE, QUIZ, SRS_REVIEW, DAILY_LOGIN), `amount`, `user_id`.
- [ ] **Streak policy:** Cập nhật `currentStreak` / `longestStreak` theo ngày `Asia/Ho_Chi_Minh` (cron hoặc on-login).
- [ ] **Badge rules:** JSON hoặc bảng rule — điều kiện unlock (ví dụ: 7 ngày streak, 100 thẻ SRS).
- [ ] Sửa `MODULE_8_GAMIFICATION_ENHANCEMENT.md` — trạng thái Planned.

## 3. Công việc — Phase 3 (Implementation)

### Backend

- [ ] `GamificationService` — `awardXp`, `checkBadges`, `updateStreak`.
- [ ] Hook vào: quiz submit, lesson complete, SRS review complete (không duplicate award).
- [ ] `BadgeController` — list badges, my badges.
- [ ] Optional: `LeaderboardController` (top XP tuần).

### Frontend

- [ ] Dashboard streak + XP với animation khi tăng.
- [ ] Trang **Achievements / Badges**.
- [ ] Daily quest widget (config đơn giản từ admin hoặc static JSON).

## 4. Không làm trong Phase 2 (trừ khi có yêu cầu riêng)

- Virtual pet / building 3D — spec aspirational.
- Kafka cho XP events — dùng DB transaction trước.

## 5. Definition of Done (MVP Gamification)

- [ ] Mọi +XP đi qua `xp_transactions` (audit được).
- [ ] Streak tăng/giảm đúng theo ngày học thực tế (server-side).
- [ ] Ít nhất 5 badge có rule + UI unlock.
- [ ] `DOCS_CODE_CROSS_REFERENCE.md` cập nhật M8 = ✅ MVP.
