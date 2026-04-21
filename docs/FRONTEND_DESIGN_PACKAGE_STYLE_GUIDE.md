# SakuraLearn Frontend Design, Package, and Style Guide

## 1) Muc tieu

Tai lieu nay mo ta cach to chuc frontend de:
- de mo rong theo module,
- de maintain cho team,
- giam bug logic khi doi API,
- giu UI/UX nhat quan.

Pham vi: React + Vite project trong `sakuralearn-frontend`.

## 2) Nguyen tac kien truc

- Feature-first: uu tien nhom code theo domain (auth, courses, admin) thay vi theo technical layer thuan.
- Thin UI, clear service: component/page chi xu ly render + state UI; service xu ly goi API.
- Route tap trung: path dat trong constants, tranh hardcode lap lai.
- Error handling thong nhat: trich message tu API theo mot utility chung.
- Reuse component nho: cac khoi UI thong bao/trang thai nen dung component chung.

## 3) Cau truc thu muc de xuat

```text
src/
  components/
    common/              # reusable UI component dung chung
    courses/             # component rieng module Course
  constants/
    routes.js            # route constants + route builder
  contexts/              # auth, global state nho
  layouts/               # MainLayout, AuthLayout...
  pages/
    courses/             # CourseList, CourseDetail, LearningView...
    admin/
  routes/
    AppRoutes.jsx
  services/              # API layer theo domain
  utils/                 # helper thuan (formatter, api error parser)
```

## 4) Quy uoc chia package theo module

### 4.1 Pages
- Moi page la 1 entry UI cho route.
- Khong viet logic API phuc tap o page; chi goi service va cap nhat state.
- Neu page > 250-300 dong, tach custom hook.

### 4.2 Services
- Dat ten theo domain: `courseService`, `lessonService`, `progressService`.
- URL endpoint phai map 1-1 voi backend contract.
- Khong trien khai logic render/format trong service.

### 4.3 Components
- `components/common`: thanh phan tai su dung (VD: `StatusMessage`).
- `components/courses`: thanh phan dac thu module hoc tap.

### 4.4 Utils
- `apiError.js`: mot diem trich xuat thong diep loi.
- `formatters.js`: format tien, ngay, duration.

## 5) Quy tac Route

- Dung `ROUTES` tu `src/constants/routes.js` thay hardcode string route.
- Route co tham so dung builder function:
  - `ROUTES.LEARNING(courseId)`
  - `ROUTES.TEACHER_COURSE_EDIT(courseId)`
- Loi ich: de refactor, tranh typo, giam bug dieu huong.

## 6) Quy tac xu ly loi va message

- Dung `getApiErrorMessage(error, fallback)` de parse loi server/client.
- Hien thi message bang component chung (`StatusMessage`) thay `alert` trong flow chinh.
- `alert`/`confirm` chi dung cho thao tac can xac nhan nhanh (xoa, hanh dong nguy hiem).

## 7) Quy tac style va CSS

- Moi page co file CSS cung cap (`CourseDetail.css`, `LearningView.css`...).
- Class naming ro nghia theo block:
  - `course-detail-page`, `learning-sidebar`, `status-pill`.
- Han che inline style, tru dynamic style don gian (VD width progress bar).
- Tai su dung utility class da co (`glass-effect`) de giu consistency.

## 8) Quy tac import

- Thu tu import de de doc:
  1. React / third-party
  2. router / state
  3. services
  4. constants / utils
  5. local components
  6. styles
- Moi lan refactor phai check import thieu/du:
  - icon Lucide,
  - constants moi (`ROUTES`),
  - component chung (`StatusMessage`).

## 9) Checklist code review cho FE Module 2

- API endpoint co trung backend contract khong?
- Route co dung constants khong?
- Co hardcode path string lap lai khong?
- Error co di qua `getApiErrorMessage` khong?
- Co import thua/thieu khong?
- Build local (`npm run build`) pass khong?

## 10) Huong mo rong tiep theo

- Tach custom hooks cho page lon:
  - `useLearningViewData`
  - `useSyllabusManager`
- Them toast system toan cuc (thay message tai cho trong page).
- Them test:
  - service contract test,
  - page interaction test cho flow enroll/complete lesson.

---

Tai lieu nay uu tien practical cho codebase hien tai, co the cap nhat tiep khi mo rong Module 3+.
