# Software Requirements Specification (SRS) - SakuraLearn
**Version:** 1.0 (Draft)
**Language:** English / 日本語 (Japanese)

---

## 1. Introduction (はじめに)
**EN:** SakuraLearn is a production-grade Japanese Language Learning Management System (LMS) that supports 3 common roles: Student, Teacher, and Admin. Wait, it also supports real-time quiz and payment.
**JP:** SakuraLearn（サクララーン）は、学生、教師、管理者の3つのロールをサポートする、本番環境レベルの日本語学習管理システム（LMS）です。リアルタイムのクイズ機能とVNPayによる決済機能を提供します。

## 2. Overall Description (全体の説明)
### 2.1 User Roles (ユーザーロール)
* **Student (学生 - Gakusei):** Can register, enroll in courses, study lessons, take real-time quizzes, and make payments.
  コースへの登録、レッスンの学習、リアルタイムクイズの受験、および支払いができます。
* **Teacher (教師 - Kyōshi):** Can create and manage courses, lessons, and quizzes. Can track student progress.
  コース、レッスン、クイズの作成と管理ができます。学生の学習進捗を追跡できます。
* **Admin (管理者 - Kanrisha):** Can manage users, oversee courses, and monitor system health.
  ユーザー管理、コースの監視、システムの健全性の監視ができます。

## 3. Core Features (主要機能)
### 3.1 Authentication & Authorization (認証と認可)
* **EN:** Users can register/login using email and password. The system generates a JWT access token and a refresh token.
* **JP:** ユーザーはメールアドレスとパスワードを使用して登録/ログインできます。システムはJWTアクセストークンとリフレッシュトークンを生成します。

### 3.2 Course Management (コース管理)
* **EN:** Teachers can perform CRUD operations on courses and lessons.
* **JP:** 教師はコースとレッスンに対してCRUD（作成、読み込み、更新、削除）操作を行うことができます。

### 3.3 Real-time Quiz (リアルタイムクイズ)
* **EN:** Students can take quizzes with real-time feedback via WebSocket.
* **JP:** 学生はWebSocketを介して、リアルタイムのフィードバックを受けながらクイズに解答できます。

### 3.4 Payment (決済)
* **EN:** Integration with VNPay sandbox for course purchasing.
* **JP:** コース購入のため、VNPay（ベトナムの決済システム）のサンドボックスと連携します。
