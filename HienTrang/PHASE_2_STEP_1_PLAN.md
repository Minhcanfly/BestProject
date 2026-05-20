# Phase 2 - Step 1: Chuẩn Hóa API Contract & Validation

> **Nguyên tắc**: Không refactor vì thích, refactor vì có lý do kỹ thuật rõ ràng.  
> **Phạm vi**: Chỉ thay đổi layer Controller + DTO + Exception. **Không** sửa Service/Repository.

---

## 🔍 Kết Quả Audit (19 Controllers, 16 Request DTOs)

### Vấn đề 1: Return type `ResponseEntity<?>` tràn lan (Nghiêm trọng - SOLID: Liskov)

**Hiện trạng**: 14/19 controllers dùng `ResponseEntity<?>` (wildcard). Đây là anti-pattern vì:
- Frontend/client không biết response trả gì nếu chỉ đọc API contract.
- Swagger/OpenAPI sinh documentation vô nghĩa (trả về `Object`).
- Vi phạm **Liskov Substitution Principle**: method signature không phản ánh đúng kiểu trả về thực tế.

**Controllers bị ảnh hưởng**:
| Controller | Số endpoint `<?>` | Ghi chú |
|:---|:---:|:---|
| AuthController | 6/6 | Trả `Map.of(...)`, `AuthResponse`, `TokenRefreshResponse` lẫn lộn |
| CourseController | 7/7 | Toàn bộ wildcard |
| NotebookController | 10/10 | Toàn bộ wildcard |
| LessonController | 4/4 | Toàn bộ wildcard |
| LessonBlockController | 4/5 | |
| DictionaryController | 0/11 | ✅ Đã typed tốt nhưng trả **Entity trực tiếp** |
| ReviewController | 4/4 | Toàn bộ wildcard |
| QuizController | 3/3 | Toàn bộ wildcard |
| ProfileController | 2/2 | Còn check `userDetails == null` thủ công |
| ProgressController | 2/6 | Một phần đã typed |
| AdminUserController | 2/4 | `updateStatus/Roles` wildcard |

### Vấn đề 2: Entity lộ trực tiếp ra API Response (Nghiêm trọng - Security + SRP)

**Hiện trạng**: `DictionaryController` trả thẳng `Kanji`, `Vocabulary`, `GrammarPoint` entity ra response.

```java
// ❌ Hiện tại
public ResponseEntity<Page<Kanji>> getKanji(...)
public ResponseEntity<Vocabulary> getVocabDetail(...)
```

**Rủi ro**:
- Lộ internal DB field (id strategy, timestamps, lazy-loaded relations).
- Nếu entity thêm field mới → API tự động trả thêm data, break contract ngầm.
- Vi phạm **Single Responsibility**: Entity vừa map DB vừa làm API response.

### Vấn đề 3: `Map<String, String>` làm Request Body (Clean Code violation)

**Hiện trạng**: `NotebookController` dùng raw `Map` ở 2 endpoint:
```java
// ❌ addCustomItem: nhận Map<String, String> body
// ❌ updateNote: nhận Map<String, String> body
```

**Vấn đề**: Không validate được, không document được, dễ lỗi runtime do typo key.

### Vấn đề 4: Success response không thống nhất

**Hiện trạng**: Các endpoint write trả về 3 kiểu khác nhau:
```java
// Kiểu 1: Body rỗng
return ResponseEntity.ok().build();

// Kiểu 2: Map tùy hứng
return ResponseEntity.ok(Map.of("message", "User registered successfully!"));

// Kiểu 3: String thuần
return ResponseEntity.ok("Syllabus generated successfully for course: " + id);
```

### Vấn đề 5: Request DTO thiếu validation (Nghiêm trọng)

| DTO | Thiếu gì |
|:---|:---|
| `QuizRequest` | Không có `@NotBlank title`, `@NotNull type`, `@NotEmpty questions`, thiếu `@Valid` ở controller |
| `QuizQuestionRequest` | Không validation nào cả |
| `QuizSubmissionRequest` | Không có `@NotEmpty answers` |
| `LessonBlockProgressRequest` | Không validate `lastTimestamp >= 0` (đã fix P0 ở service, nhưng chưa có DTO validation) |
| `NotebookFolderRequest` | `@NotBlank name` có nhưng thiếu `@Size` |
| `AddToNotebookRequest` | Thiếu message cho `@NotNull` |
| `SRSReviewRequest` | `quality` là primitive `int` → không validate `@NotNull` được |

### Vấn đề 6: Inline auth check thay vì dùng Security (Clean Code)

```java
// ❌ ProfileController: check thủ công
if (userDetails == null) {
    return ResponseEntity.status(401).body(Map.of("error", "Unauthorized"));
}
```
Spring Security đã xử lý 401 rồi nếu endpoint có `@PreAuthorize("isAuthenticated()")`.

### Vấn đề 7: Inline FQCN imports (Code smell)

```java
// ❌ NotebookController line 70
@Valid @RequestBody com.sakuralearn...NotebookFolderRequest request

// ❌ AuthController line 42
@org.springframework.security.core.annotation.AuthenticationPrincipal ...
```

---

## 🛠️ Kế Hoạch Triển Khai (5 Tasks, làm tuần tự)

### Task 1: Tạo `ApiResponse<T>` wrapper thống nhất
**File mới**: `dto/response/ApiResponse.java`

```java
// Response thống nhất cho toàn bộ API
public class ApiResponse<T> {
    private boolean success;
    private String message;
    private T data;
    private LocalDateTime timestamp;
}
```

- Mọi endpoint trả `ResponseEntity<ApiResponse<T>>`.
- Write endpoint trả `ApiResponse<Void>` với message.
- Giữ nguyên `ErrorResponse` cho lỗi (đã tốt rồi).

### Task 2: Tạo DTO cho Dictionary (thay thế Entity response)
**Files mới**:
- `dto/response/KanjiResponse.java`
- `dto/response/VocabularyResponse.java`
- `dto/response/GrammarResponse.java`

### Task 3: Bổ sung Request DTO mới + Validation
**Files mới**:
- `dto/request/CustomNotebookItemRequest.java` (thay `Map<String, String>`)
- `dto/request/UpdateNoteRequest.java` (thay `Map<String, String>`)

**Files sửa** (thêm validation):
- `QuizRequest.java`: thêm `@NotBlank`, `@NotNull`, `@Valid`
- `QuizQuestionRequest.java`: thêm `@NotBlank`, `@NotNull`
- `QuizSubmissionRequest.java`: thêm `@NotEmpty`
- `NotebookFolderRequest.java`: thêm `@Size`
- `AddToNotebookRequest.java`: thêm messages
- `SRSReviewRequest.java`: đổi `int` → `Integer` + `@NotNull`
- `LessonBlockProgressRequest.java`: thêm `@PositiveOrZero`

### Task 4: Refactor Controllers
Ưu tiên theo thứ tự:
1. **AuthController**: typed return, dùng `ApiResponse`, bỏ inline check, fix FQCN.
2. **CourseController**: typed return.
3. **NotebookController**: dùng DTO mới, typed return, fix FQCN.
4. **DictionaryController**: dùng Response DTO thay Entity.
5. **ProfileController**: bỏ inline null check, thêm `@PreAuthorize`.
6. **LessonController**, **LessonBlockController**, **ReviewController**.
7. **QuizController**: thêm `@Valid`, typed return.
8. **ProgressController**, **SRSController**.
9. **AdminUserController**: typed return.

### Task 5: Cập nhật GlobalExceptionHandler
- Bổ sung handler cho `ConstraintViolationException` (validation trên `@RequestParam`).
- Bổ sung handler cho `HttpMessageNotReadableException` (malformed JSON).
- Bổ sung handler cho `MissingServletRequestParameterException`.
- Không để `RuntimeException` handler leak stacktrace ra client (hiện tại đang `ex.getMessage()` → có thể lộ internal info).

---

## 📋 Thứ Tự Thực Hiện

```
Task 1 (ApiResponse) → Task 2 (Dictionary DTOs) → Task 3 (Request DTOs)
                                                        ↓
                                              Task 4 (Refactor Controllers)
                                                        ↓
                                              Task 5 (Exception Handler)
```

> [!IMPORTANT]
> Mỗi task phải đảm bảo compile thành công trước khi chuyển sang task tiếp. Không batch tất cả rồi mới test.

---

## ⚠️ Quy Tắc Không Được Vi Phạm

1. **Không sửa Service layer** - Scope chỉ là Controller + DTO + Exception.
2. **Không thay đổi URL path** - Frontend đang chạy, đổi path = break.
3. **Không đổi tên field trong Response** - Frontend đang binding, đổi field = break.
4. **Giữ nguyên logic auth/RBAC** - Chỉ chuyển từ inline check sang annotation.

---

# 🏗️ PHẦN 2: DESIGN PATTERN AUDIT

> **Nguyên tắc**: Pattern phải giải quyết vấn đề thực tế trong code, không áp pattern vì "cho đẹp CV".
> **Phạm vi**: Toàn bộ backend (Service, Config, Controller, Entity).

---

## ✅ Các Pattern ĐÃ CÓ trong Codebase (Cần ghi nhận)

### 1. Strategy Pattern — `AiSyllabusServiceImpl.selectModel()`
**Vị trí**: [AiSyllabusServiceImpl.java](file:///d:/BestProject/sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/AiSyllabusServiceImpl.java#L98-L104)

```java
private ChatModel selectModel(AiModelProvider provider) {
    return switch (provider) {
        case GEMINI_PRO -> geminiChatModel;
        case GROK_1 -> grokChatModel;
        default -> gpt4oChatModel;
    };
}
```

**Đánh giá**: Đã áp dụng đúng tư tưởng Strategy (chọn thuật toán tại runtime). Tuy nhiên đang dùng `switch` hardcode thay vì một `Map<AiModelProvider, ChatModel>` → có thể cải thiện để tuân thủ **Open/Closed Principle**.

### 2. Adapter Pattern — `FileStorageService` interface
**Vị trí**: [FileStorageService.java](file:///d:/BestProject/sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/FileStorageService.java)

```java
public interface FileStorageService {
    String uploadFile(MultipartFile file, String folder);
    void deleteFile(String fileUrl);
    InputStream getFileStream(String objectName);
    // ...
}
```

**Đánh giá**: ✅ **Adapter Pattern chuẩn**. Interface trừu tượng hóa storage provider. Hiện tại implement bằng MinIO, nhưng có thể swap sang S3, Local, GCS mà không đổi service layer. Đây là điểm kiến trúc tốt nhất của project.

### 3. Template Method Pattern — `DictionaryService.search*()`
**Vị trí**: [DictionaryService.java](file:///d:/BestProject/sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/DictionaryService.java#L87-L109)

```java
public Page<Kanji> searchKanji(String query, Pageable pageable) {
    String processedQuery = query;
    if (RomajiConverter.isRomaji(query)) {
        processedQuery = RomajiConverter.toHiragana(query);
    }
    return kanjiRepository.searchKanji(processedQuery, pageable);
}
```

**Đánh giá**: 3 method `searchKanji`, `searchVocab`, `searchGrammar` có **cùng cấu trúc** (check romaji → convert → query). Đây là ứng viên hoàn hảo cho Template Method hoặc trích thành helper.

### 4. Builder Pattern — Entity + DTO
**Đánh giá**: ✅ Sử dụng `@Builder` (Lombok) nhất quán trên Entity và Response DTO. Đã tốt.

### 5. Singleton Pattern — Spring Beans
**Đánh giá**: ✅ Tất cả `@Service`, `@Repository`, `@Configuration` đều là Singleton theo mặc định của Spring IoC. Không cần thay đổi.

---

## 🔴 Các Pattern CẦN ÁP DỤNG (Vấn đề thực tế)

### Vấn đề 8: Thiếu Strategy Pattern cho Item Hydration (Quan trọng nhất)
**Vị trí**: [NotebookService.java](file:///d:/BestProject/sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/NotebookService.java#L88-L117) + [line 398-427](file:///d:/BestProject/sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/NotebookService.java#L398-L427)

**Hiện trạng**: Logic hydration (đổ dữ liệu chi tiết cho notebook item / flashcard) bị **lặp 2 lần** trong cùng 1 class với `switch(itemType)` giống hệt nhau:

```java
// Lặp lần 1: getFolderItems() line 88-115
switch (entry.getItemType()) {
    case KANJI: kanjiRepository.findById(...) → builder.word/reading/meaning
    case VOCAB: vocabularyRepository.findById(...) → builder.word/reading/meaning
    case GRAMMAR: grammarPointRepository.findById(...) → builder.word/reading/meaning
    case CUSTOM: ...
}

// Lặp lần 2: mapToResponse() line 398-427  ← GIỐNG HỆT
switch (card.getItemType()) { ... }
```

**Vi phạm**: **Open/Closed Principle** + **DRY**. Mỗi khi thêm `ItemType` mới (ví dụ `SENTENCE`), phải sửa **2 chỗ**.

**Giải pháp — Strategy Pattern**: Tạo `ItemHydrator` interface + 4 implementation:

```java
public interface ItemHydrator {
    ItemType supports();
    HydratedItem hydrate(UUID itemId);
}

@Service class KanjiHydrator implements ItemHydrator { ... }
@Service class VocabHydrator implements ItemHydrator { ... }
@Service class GrammarHydrator implements ItemHydrator { ... }
@Service class CustomHydrator implements ItemHydrator { ... }
```

Sau đó dùng `ItemHydratorRegistry` (một `Map<ItemType, ItemHydrator>`) để dispatch.

### Vấn đề 9: Thiếu Factory Pattern cho AI Model selection
**Vị trí**: [AiSyllabusServiceImpl.java](file:///d:/BestProject/sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/impl/AiSyllabusServiceImpl.java#L37-L44) + [AiConfig.java](file:///d:/BestProject/sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/config/AiConfig.java)

**Hiện trạng**: `AiSyllabusServiceImpl` inject **3 ChatModel beans trực tiếp** bằng `@Qualifier`, rồi `switch` thủ công để chọn.

```java
@Qualifier("gpt4oChatModel") private final ChatModel gpt4oChatModel;
@Qualifier("geminiChatModel") private final ChatModel geminiChatModel;
@Qualifier("grokChatModel") private final ChatModel grokChatModel;

// rồi switch thủ công
```

**Vi phạm**: **Open/Closed Principle**. Thêm model mới (Claude, Llama) → phải sửa 3 file: `AiConfig`, `AiSyllabusServiceImpl`, `AiModelProvider`.

**Giải pháp — Factory + Registry Pattern**: Tạo `ChatModelFactory`:

```java
@Component
public class ChatModelFactory {
    private final Map<AiModelProvider, ChatModel> models;

    public ChatModelFactory(List<ChatModel> chatModels, ...) {
        // auto-register từ Spring beans
    }

    public ChatModel getModel(AiModelProvider provider) {
        return models.getOrDefault(provider, models.get(AiModelProvider.GPT_4O));
    }
}
```

### Vấn đề 10: DictionaryService search lặp code — Template Method
**Vị trí**: [DictionaryService.java](file:///d:/BestProject/sakuralearn-backend/src/main/java/com/sakuralearn/sakuralearn_backend/service/DictionaryService.java#L87-L121)

**Hiện trạng**: 4 search methods có **cùng pattern**:
1. Check if romaji → convert to hiragana.
2. Call repository search.

**Vi phạm**: **DRY**. Logic romaji conversion bị copy-paste 4 lần.

**Giải pháp — Extract private helper (đơn giản nhất)**:

```java
private String preprocessSearchQuery(String query) {
    return RomajiConverter.isRomaji(query)
        ? RomajiConverter.toHiragana(query)
        : query;
}
```

### Vấn đề 11: Observer Pattern cho Domain Events (Chuẩn bị cho Phase 2-3)
**Hiện trạng**: Khi notebook item được tạo, code gọi trực tiếp `addToSRS()` trong cùng method. Khi user enroll course, code tạo enrollment trực tiếp. Chưa có cơ chế decouple giữa "action xảy ra" và "side effects".

```java
// NotebookService.addToNotebook() line 173
addToSRS(userId, itemType, itemId); // ← Coupling trực tiếp
```

**Khi nào cần**: Khi Phase 2-3 thêm Notification, Gamification (XP), Audit log cho mọi action → nếu gọi trực tiếp sẽ biến mỗi method thành "monster method".

**Giải pháp — Spring Application Events (Observer)**:

```java
// Publish event
applicationEventPublisher.publishEvent(new NotebookItemCreatedEvent(userId, itemType, itemId));

// Listener 1: SRS
@EventListener
public void onNotebookItemCreated(NotebookItemCreatedEvent event) { ... }

// Listener 2: Notification (Phase 2)
// Listener 3: XP (Phase 3)
```

> [!NOTE]
> Chưa implement ngay. Ghi nhận ở đây để khi làm Notification/Gamification thì áp dụng, tránh refactor lại.

### Vấn đề 12: Proxy Pattern qua AOP cho Ownership Check
**Hiện trạng**: Ownership check (IDOR prevention) bị **lặp thủ công** ở rất nhiều service methods:

```java
// NotebookService — lặp ở 6 methods
if (!folder.getUser().getId().equals(userId)) {
    throw new ForbiddenException("You do not have permission...");
}

// CourseServiceImpl — lặp ở 3 methods
private void checkCourseOwnership(Course course, UUID userId, boolean isAdmin) { ... }
```

**Giải pháp — Custom Annotation + AOP Proxy**:

```java
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface CheckOwnership {
    String entityParam();      // tên param chứa entity ID
    Class<?> entityType();     // Entity class
}

// Sử dụng
@CheckOwnership(entityParam = "folderId", entityType = NotebookFolder.class)
public void updateFolder(UUID userId, UUID folderId, ...) { ... }
```

> [!WARNING]
> Pattern này mạnh nhưng phức tạp. Chỉ nên implement nếu ownership check xuất hiện ở **>10 methods**. Hiện tại (~6-8 chỗ) vẫn chấp nhận được với helper method.

### Vấn đề 13: Command Pattern cho Admin Actions (Chuẩn bị cho Module 7)
**Hiện trạng**: Admin actions (block user, update roles, delete course) đang gọi service trực tiếp. Chưa có audit trail rõ ràng "ai làm gì, lúc nào".

**Khi nào cần**: Khi Module 7 (Admin Dashboard) yêu cầu undo/redo hoặc audit log chi tiết cho mỗi admin action.

**Giải pháp — Command Pattern**:

```java
public interface AdminCommand {
    void execute();
    void undo();  // optional
    String describe();
}

// Mỗi action là 1 Command
public class BlockUserCommand implements AdminCommand { ... }
public class UpdateRolesCommand implements AdminCommand { ... }
```

> [!NOTE]
> Ghi nhận cho Phase 2 Module 7. Chưa implement ngay.

---

## 📊 Tổng Hợp Design Patterns

| Pattern | Trạng thái | Vị trí / Đề xuất | Ưu tiên |
|:---|:---:|:---|:---:|
| **Singleton** | ✅ Có sẵn | Spring IoC quản lý | — |
| **Builder** | ✅ Có sẵn | Lombok `@Builder` trên Entity/DTO | — |
| **Adapter** | ✅ Có sẵn | `FileStorageService` (MinIO ↔ S3) | — |
| **Strategy** (AI) | ⚠️ Sơ khai | `selectModel()` — cần nâng lên Factory/Registry | 🟡 P2 |
| **Strategy** (Hydration) | 🔴 Thiếu | `NotebookService` switch×2 — cần `ItemHydrator` | 🔴 P1 |
| **Template Method** | ⚠️ Code lặp | `DictionaryService.search*()` — extract helper | 🟢 P0 |
| **Factory** | 🔴 Thiếu | `ChatModelFactory` cho AI model selection | 🟡 P2 |
| **Observer** | 🔴 Thiếu | Spring Events cho Notebook→SRS, Enroll→Progress | 🟡 P2 |
| **Proxy** (AOP) | 🔴 Thiếu | Ownership check annotation | 🟠 P3 |
| **Command** | 🔴 Thiếu | Admin actions (Module 7) | 🟠 P3 |

---

## 🛠️ Task Bổ Sung (Thêm vào Kế Hoạch Phase 2 Step 1)

### Task 6: Refactor DictionaryService search — Extract Helper (5 phút)
Trích `preprocessSearchQuery()` để loại bỏ code lặp romaji conversion ở 4 methods.

### Task 7: Tạo `ItemHydrator` Strategy cho NotebookService (30 phút)
Tạo interface + 4 implementations. Thay thế 2 switch blocks trong `NotebookService`.

### Task 8: Tạo `ChatModelFactory` cho AI Service (15 phút)
Thay thế 3 `@Qualifier` inject + switch bằng Factory + Registry pattern.

---

## 📋 Thứ Tự Thực Hiện Tổng Hợp (Cập nhật)

```
Task 1 (ApiResponse)  →  Task 2 (Dictionary DTOs)  →  Task 3 (Request DTOs)
                                                            ↓
                                                  Task 4 (Refactor Controllers)
                                                            ↓
                                                  Task 5 (Exception Handler)
                                                            ↓
                                                  Task 6 (Search Helper - Template Method)
                                                            ↓
                                                  Task 7 (ItemHydrator - Strategy)
                                                            ↓
                                                  Task 8 (ChatModelFactory - Factory)
```

> [!IMPORTANT]
> Task 6-7-8 thuộc **Service layer**. Cập nhật lại quy tắc: Phase 2 Step 1 cho phép refactor service **chỉ khi** mục đích là áp dụng Design Pattern, không thêm/sửa business logic.

> [!NOTE]
> **Observer** (Spring Events) và **Command** (Admin) ghi nhận cho các bước tiếp theo của Phase 2 (Notification, Admin Dashboard). Không triển khai trong Step 1.
